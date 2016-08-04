// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

namespace std.io.file;



/*!
** \brief Get if a node exists and is a file
*/
public func exists(cref path: string): bool
	-> new bool(!!__nanyc_io_file_exists(path.m_cstr, path.size.pod));


/*!
** \brief Get if a file is empty (size is zero)
*/
public func empty(cref path: string): ref bool
	-> (std.io.file.size(path) == 0u64);

/*!
** \brief Get the size (in bytes) of a file
*/
public func size(cref path: string): u64
	-> new u64(!!__nanyc_io_file_size(path.m_cstr, path.size.pod));


/*!
** \brief Resize a file in bytes
*/
public func resize(cref path: string, size: u64): bool
	-> new bool(!!__nanyc_io_file_resize(path.m_cstr, path.size.pod, size.pod));


//! Copy a file and its content to another location
//public func copy(cref path: string, cref to: string): bool
//	-> new bool(!!__nanyc_io_file_copy(path.m_cstr, path.size.pod, to.m_cstr, to.size.pod, __false));


//! Move a file and its content to another location
//public func move(cref path: string, cref to: string): bool
//	-> new bool(!!__nanyc_io_file_move(path.m_cstr, path.size.pod, to.m_cstr, to.size.pod, __false));


//! Remove the file
public func erase(cref path: string): bool
	-> new bool(!!__nanyc_io_file_erase(path.m_cstr, path.size.size));


//! Truncate a file
public func clear(cref path: string): bool
	-> std.io.file.resize(path, 0u64);


//! Read the content of a file in memory
public func read(cref path: string): ref string
{
	ref content = new string;
	// this intrinsic returns a pointer of a special per-thread struct
	var ptr = !!__nanyc_io_file_get_contents(path.m_cstr, path.size.pod);
	if ptr != null then
	{
		var size = !!load.u64(ptr);
		if size != 0__u64 then
		{
			var capacity = !!load.u64(ptr + 8__u32);
			var newptr   = !!load.ptr(ptr + 16__u32);
			// avoid false asserts when the memory checker is active
			!!__nanyc_memchecker_hold(newptr, capacity);

			// this func should return a std.Clob (which has 64bits size)
			if (capacity < 4294967295__u32)
			{
				content.adopt(newptr,
					!!__reinterpret(size, #[__nanyc_synthetic] __u32),
					!!__reinterpret(capacity, #[__nanyc_synthetic] __u32));
			}
			else
				std.memory.dispose(newptr, capacity);
		}
	}
	//else
	//   error
	return content;
}


//! Write the content to a file
public func rewrite(cref path: string, cref content: string): bool
{
	var r = !!__nanyc_io_file_set_contents(path.m_cstr, path.size.pod, content.m_cstr, content.size.pod, __false);
	return new bool(r);
}


//! Append the content to a file
public func append(cref path: string, cref content: string): bool
{
	var r = !!__nanyc_io_file_set_contents(path.m_cstr, path.size.pod, content.m_cstr, content.size.pod, __true);
	return new bool(r);
}


public func open(cref ro: string): ref std.io.File
	-> new std.io.File(ro: ro);


public func open(cref rw: string): ref std.io.File
	-> new std.io.File(rw: rw);


public func open(cref rw: string, truncate: bool): ref std.io.File
	-> new std.io.File(rw: rw, truncate: truncate);


public func open(cref rw: string, append: bool): ref std.io.File
	-> new std.io.File(rw: rw, append: append);


public func open(cref wo: string): ref std.io.File
	-> new std.io.File(wo: wo);


public func open(cref wo: string, truncate: bool): ref std.io.File
	-> new std.io.File(wo: wo, truncate: truncate);


public func open(cref wo: string, append: bool): ref std.io.File
	-> new std.io.File(wo: wo, append: append);








// -*- mode: nany;-*-
// vim: set filetype=nany:
