// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \brief   String implementation
/// \ingroup std.core



/*!
** \brief UTF-8 encoded sequences of characters
*/
class string
{
	//! \name Constructors
	//@{
	operator new;

	operator new (cref value)
		-> append(value);

	operator new (cstring: __pointer, size: __u64)
		-> !!yuni.string.append.cstring(pod, cstring, size);

	operator new (cstring: __pointer, cref size: u64)
		-> !!yuni.string.append.cstring(pod, cstring, size.pod);

	operator new (self pod: __pointer); // should not be used


	operator dispose
		-> !!yuni.string.delete(pod);

	operator clone(cref rhs: string)
	{
		pod = !!yuni.string.new();
		!!yuni.string.append.string(pod, rhs.pod);
	}
	//@}


	//! Empty the string
	func clear
		-> !!yuni.string.clear(pod);


	//! Get the size of the string
	func size: ref
		-> new u64(!!yuni.string.size(pod));


	//! Assign a new value to the string
	func assign(cref text)
	{
		!!yuni.string.clear(pod);
		append(text);
	}


	//! Extend the string by appending another string
	func append(cref text: string)
		-> !!yuni.string.append.string(pod, text.pod);

	//! Extend the string by appending a C-string
	#[nosuggest] func append(cstring: __pointer, size: __u64)
		-> !!yuni.string.append.cstring(pod, cstring, size);

	//! Extend the string by appending a C-string
	#[nosuggest] func append(cstring: __pointer, cref size: u64)
		-> !!yuni.string.append.cstring(pod, cstring, size.pod);

	func append(cref n: i8)
		-> !!yuni.string.append.i8(pod, n.pod);

	func append(cref n: i16)
		-> !!yuni.string.append.i16(pod, n.pod);

	func append(cref n: i32)
		-> !!yuni.string.append.i32(pod, n.pod);

	func append(cref n: i64)
		-> !!yuni.string.append.i64(pod, n.pod);

	func append(cref n: u8)
		-> !!yuni.string.append.u8(pod, n.pod);

	func append(cref n: u16)
		-> !!yuni.string.append.u16(pod, n.pod);

	func append(cref n: u32)
		-> !!yuni.string.append.u32(pod, n.pod);

	func append(cref n: u64)
		-> !!yuni.string.append.u64(pod, n.pod);

	#[nosuggest] func append(n: void)
		-> append("<void>");

	#[nosuggest] func append(n: __pointer)
		-> !!yuni.string.append.ptr(pod, n);

	#[nosuggest] func append(n: __i8)
		-> !!yuni.string.append.i8(pod, n);

	#[nosuggest] func append(n: __i16)
		-> !!yuni.string.append.i16(pod, n);

	#[nosuggest] func append(n: __i32)
		-> !!yuni.string.append.i32(pod, n);

	#[nosuggest] func append(n: __i64)
		-> !!yuni.string.append.i64(pod, n);

	#[nosuggest] func append(n: __u8)
		-> !!yuni.string.append.u8(pod, n);

	#[nosuggest] func append(n: __u16)
		-> !!yuni.string.append.u16(pod, n);

	#[nosuggest] func append(n: __u32)
		-> !!yuni.string.append.u32(pod, n);

	#[nosuggest] func append(n: __u64)
		-> !!yuni.string.append.u64(pod, n);

	#[nosuggest] func append(n: __bool)
		-> append(if n then "true" else "false");

	func append(cref n: bool)
		-> append(if n then "true" else "false");


	operator += (cref n): ref
	{
		append(n);
		return self;
	}


internal:
	//! Internal Yuni::String
	var pod: __pointer = !!yuni.string.new();

} // class string






// -*- mode: nany;-*-
// vim: set filetype=nany:
