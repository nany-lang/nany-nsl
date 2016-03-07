// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    native.ny
/// \ingroup std.io.native

namespace std.io.native;



/*!
** \brief Test if a node exists, whatver its type (file, folder...)
*/
public func exists(cref filename: string): bool
	-> new bool(!!yuni.io.exists(filename.pod));
