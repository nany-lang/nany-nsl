// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    native.ny
/// \ingroup std.io.native

namespace std.io.native.file;



/*!
** \brief Test if a node exists and is a file
*/
public func exists(cref filename: string): bool
	-> new bool(!!nanyc.io.file.exists(filename.pod));


/*!
** \brief Get the size of the file
** \return The size in bytes of the target file, 0 if failed
*/
public func size(cref filename: string): u64
	-> new u64(!!nanyc.io.file.size(filename.pod));


/*!
** \brief Load an entire file in memory
**
** \param filename An os-dependant path to the file
** \return The content of the file, empty if empty
*/
public func load(cref filename: string): ref string
	-> new string(pod: !!nanyc.io.file.load(filename.pod));


/*!
** \brief Set the content of the file from a string
**
** \param filename An os-dependant path to the file
** \param content Any string
** \return True if the operation succeeded, false otherwise
*/
public func save(cref filename: string, cref content: string): bool
	-> new bool(!!nanyc.io.file.save(filename.pod, content.pod));


/*!
** \brief Append the content of a string to a file
**
** \param filename An os-dependant path to the file
** \param content Any string
** \return True if the operation succeeded, false otherwise
*/
public func append(cref filename: string, cref content: string): bool
	-> new bool(!!nanyc.io.file.append(filename.pod, content.pod));


/*!
** \brief Delete a file
**
** \param filename An os-dependant path to the file
** \return True if a file has been deleted, false otherwise
** \note The file is removed from the disk, and not moved to the trash
*/
public func erase(cref filename: string): bool
	-> new bool(!!nanyc.io.file.erase(filename.pod));
