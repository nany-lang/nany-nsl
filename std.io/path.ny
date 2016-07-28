// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

namespace std.io.path;



/*!
** \brief Make the path absolute and normalize it
*/
public func canonicalize(cref path: string): ref string
	-> normalize(absolute(path));

/*!
** \brief Make the path absolute and normalize it
*/
public func canonicalize(cref path: string, cref root: string): ref string
	-> normalize(absolute(path, root));

/*!
** \brief Get the absolute path
*/
public func absolute(cref path: string): ref string
	-> if isAbsolute(path)
		then new string(path)
		else ((std.io.folder.current += '/') += path);

/*!
** \brief Get the absolute path (with a given root path)
*/
public func absolute(cref path: string, cref root: string): ref string
	-> if isAbsolute(path)
		then new string(path)
		else ((new string(root) += '/') += path);


public func isAbsolute(cref path: string): bool
	-> path.first == '/';


public func isRelative(cref path: string): bool
	-> path.first != '/';



/*!
** \brief Simplifies a pth by removing all navigation elements
*/
public func normalize(cref path: string): ref string
{
	// if the input path is 1 ascii long, nothing really to
	// (it can be empty or '/' or '.' or whatever)
	if path.size <= 1u then
		return new string(path);

	ref np = new string;
	var pathWasAbsolute = (path.at(0u) == '/');

	if pathWasAbsolute then
		np += '/';

	for part in path:split('/') do
	{
		if part.size == 0u then
		{
			// multiple slashes - like './'
		}
		else if part.size == 1u then
		{
			if part != '.' then // current folder
				np << part << '/';
		}
		else if part.size == 2u then
		{
			if part != ".." or np.empty then
			{
				// "../" must be preserved for relative paths (np.empty)
				np << part << '/';
			}
			else
			{
				// go back to parent folder
				if pathWasAbsolute then
				{
					assert(not np.empty);
					// try to remove the last part (ignore the final slash)
					if np.size > 1u then
					{
						var li = np.lastIndex(offset: np.size - 2u, ascii: '/');
						if li < np.size then
							np.truncate(li + 1u);
						else
							np.assign('/');
					}
					else
						np.assign('/');
				}
				else
				{
					// go back to the parent. if the last part of the normalized
					// path is "..", the new part should be appended instead
					if np.size > 1u then
					{
						var li = np.lastIndex(offset: np.size - 2u, ascii: '/');
						if li < np.size then
						{
							li += 1u;
							if (np.size - 1u - li != 2u) or (np.at(li) != '.') or (np.at(li + 1u) != '.') then
								np.truncate(li);
							else
								np += "../";
						}
						else
						{
							if np != "../" then
								np.clear();
							else
								np += "../";
						}
					}
					else
						np.clear();
				}
			}
		}
		else
			np << part << '/';
	}

	if not np.empty then
	{
		if np.size != 1u and np.last == '/' then
			np.removeLastAscii();
	}
	else
		np += '.';

	return np;
}






// -*- mode: nany;-*-
// vim: set filetype=nany:
