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
	{
		append(value);
	}

	operator new (cstring: __pointer, size: __u32)
	{
		append(cstring, size);
	}

	operator new (cstring: __pointer, cref size: u32)
	{
		append(cstring, size.pod);
	}

	operator dispose
	{
		std.memory.dispose(m_cstr, 0__u64 + m_capacity);
	}

	operator clone(cref rhs: string)
	{
		 append(rhs);
	}
	//@}


	//! Empty the string
	func clear
	{
		m_size = 0__u32;
	}


	//! Get the size of the string
	var size
		-> new u64(m_size);

	//! Get if the string is empty
	var empty
		-> new bool(m_size == 0__u32);

	//! Get the size of the string (in bytes)
	var size
		-> new u32(m_size);

	//! Get the capacity of the string (in bytes)
	var capacity
		-> new u32(m_capacity);


	//! Get the first character, \0 if empty
	var first
		-> new std.Ascii(if m_size != 0__u32 then !!load.u8(m_cstr) else 0__u8);

	//! Get the last character, \0 if empty
	var last
		-> new std.Ascii(if m_size != 0__u32 then !!load.u8(m_cstr + m_size - 1) else 0__u8);


	/*!
	** \brief Increase the capacity of the container if necessary
	*/
	func reserve(size: u32)
	{
		if m_capacity < size.pod then
			doGrow(size);
	}

	func shrink
		-> doShrink();


	//! Assign a new value to the string
	func assign(cref text)
	{
		m_size = 0__u32;
		append(text);
	}

	#[nosuggest] func assign(cstring: __pointer, size: __u32)
	{
		m_size = 0__u32;
		append(cstring, size);
	}

	//! Extend the string by appending a C-string
	func assign(cstring: __pointer, cref size: u32)
	{
		m_size = 0__u32;
		append(cstring, size.pod);
	}

	//! Extend the string by appending another string
	func append(cref text: string)
		-> append(text.m_cstr, text.m_size);

	//! Extend the string by appending a C-string
	#[nosuggest] func append(cstring: __pointer, size: __u32)
	{
		if size != 0__u32 then
		{
			var oldsize = m_size;
			var newsize = oldsize + size;
			if m_capacity < newsize then
				doGrow(newsize);
			std.memory.copy(m_cstr + oldsize, cstring, 0__u64 + size);
			m_size = newsize;
		}
	}

	//! Extend the string by appending a C-string
	func append(cstring: __pointer, cref size: u32)
		-> append(cstring, size.pod);

	//! Extend the string by appending an ascii
	func append(cref ascii: std.Ascii)
	{
		var oldsize = m_size;
		var newsize = oldsize + 1__u32;
		if m_capacity < newsize then
			doGrow(newsize);
		!!store.u8(m_cstr + oldsize, ascii.asU8);
		m_size = newsize;
	}

	func append(cref n: i8)
		-> append(n.pod);

	func append(cref n: i16)
		-> append(n.pod);

	func append(cref n: i32)
		-> append(n.pod);

	func append(cref n: i64)
		-> append(n.pod);

	func append(cref n: u8)
		-> append(n.pod);

	func append(cref n: u16)
		-> append(n.pod);

	func append(cref n: u32)
		-> append(n.pod);

	func append(cref n: u64)
		-> append(n.pod);

	func append(cref n: f32)
		-> append(n.pod);

	func append(cref n: f64)
		-> append(n.pod);

	func append(cref n: bool)
		-> append(n.pod);


	//	#[nosuggest] func append(n: void)
	//		-> append("<void>");

	#[nosuggest] func append(n: __pointer)
	{
		if n != null then
		{
			if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
			m_size = m_size + !!nanyc.string.append.ptr(m_cstr + m_size, n);
		}
		else
			append("0x0");
	}

	#[nosuggest] func append(n: __i8)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.i8(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __i16)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.i16(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __i32)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.i32(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __i64)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.i64(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u8)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.u8(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u16)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.u16(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u32)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.u32(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u64)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.u64(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __f32)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.f32(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __f64)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!nanyc.string.append.f64(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __bool)
		-> append(if n then "true" else "false");


	/*!
	** \brief Remove whitespace from both sides of the string
	*/
	func trim
	{
		trimRight();
		trimLeft(); // from the left, if something remains
	}

	/*!
	** \brief Remove whitespace from the right side of the string
	*/
	func trimRight
	{
		var size = new u32(m_size);
		if size != 0u32 then
		{
			var p = m_cstr;
			var ascii = new std.Ascii;
			do
			{
				size -= 1u;
				ascii.asU8 = !!load.u8(p + size.pod);

				if not ascii.isBlank then
				{
					m_size = size.pod + 1__u32;
					return;
				}
				if size == 0u32 then
				{
					m_size = 0__u32;
					return;
				}
			}
			while __true;
		}
	}

	/*!
	** \brief Remove whitespace from the left side of the string
	*/
	func trimLeft
	{
		var size = new u32(m_size);
		if size != 0u32 then
		{
			var i = 0u32;
			var p = m_cstr;
			var ascii = new std.Ascii;
			do
			{
				ascii.asU8 = !!load.u8(p + i.pod);

				if not ascii.isBlank then
				{
					if i != 0u then
					{
						m_size = m_size - i.pod;
						std.memory.copyOverlap(m_cstr, m_cstr + i.pod, 0__u64 + m_size);
					}
					return;
				}

				if (i += 1u) == size then
				{
					m_size = 0__u32;
					return;
				}
			}
			while __true;
		}
	}


	operator += (cref n): ref string
	{
		append(n);
		return self;
	}


private:
	//! Increase the inner storage
	func doGrow(newsize: __u32)
	{
		var oldcapa = new u32(m_capacity);
		var newcapa = oldcapa;
		do
		{
			newcapa = (if newcapa < 64u then 64u
				else (if newcapa < 4096u then newcapa * 2u else newcapa += 4096u));
		}
		while newcapa < newsize;

		// create a new array
		m_capacity = newcapa.pod;
		m_cstr = std.memory.reallocate(m_cstr, 0u64 + oldcapa, 0u64 + newcapa);
	}


	func doShrink
	{
		if m_size == 0__u32 then
		{
			std.memory.dispose(m_cstr, 0__u64 + m_capacity);
			m_capacity = 0__u32;
			m_cstr = null;
		}
	}


internal:
	// note: u32 by default to have a consistent behavior accross all operating systems
	// note: currently `__u32` instead of `u32` due to the lack of optimizations by the compiler

	//! The current size of the container
	var m_size = 0__u32;
	//! The current capacity of the container
	var m_capacity = 0__u32;
	//! Contents, not zero-terminated
	var m_cstr: __pointer = null;

} // class string






public operator == (cref s1: string, cref s2: string): bool
	-> (s1.size == s2.size)
	and (s1.empty or std.memory.equals(s1.m_cstr, s2.m_cstr, 0__u64 + s1.m_size));

public operator != (cref s1: string, cref s2: string): bool
	-> (s1.size != s2.size)
	or (not s1.empty and not std.memory.equals(s1.m_cstr, s2.m_cstr, 0__u64 + s1.m_size));

public operator << (cref s: string, cref value): ref string
	-> s += value;



// -*- mode: nany;-*-
// vim: set filetype=nany:
