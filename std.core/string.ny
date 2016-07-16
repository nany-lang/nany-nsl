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


	//! Get if the string is empty
	var empty
		-> new bool(m_size == 0__u32);

	//! Get if the string is empty or contains only blank characters
	var blank
		-> isBlank();

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
		!!store.u8(m_cstr + oldsize, ascii.asU8.pod);
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
			m_size = m_size + !!__nanyc.string.append.ptr(m_cstr + m_size, n);
		}
		else
			append("0x0");
	}

	#[nosuggest] func append(n: __i8)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.i8(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __i16)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.i16(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __i32)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.i32(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __i64)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.i64(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u8)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.u8(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u16)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.u16(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u32)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.u32(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __u64)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.u64(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __f32)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.f32(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __f64)
	{
		if m_capacity < m_size + 64__u32 then doGrow(m_size + 64__u32);
		m_size = m_size + !!__nanyc.string.append.f64(m_cstr + m_size, n);
	}

	#[nosuggest] func append(n: __bool)
		-> append(if n then "true" else "false");


	/*!
	** \brief Fill the string with a given pattern
	*/
	func fill(cref ascii: std.Ascii)
	{
		if m_size != 0__u32 then
			std.memory.fill(m_cstr, 0__u64 + m_size, ascii.asU8.pod);
	}


	/*!
	** \brief Get if the string contains a given ascii
	*/
	func contains(cref ascii: std.Ascii): bool
	{
		if m_size != 0__u32 then
		{
			var i = 0u;
			var size = m_size;
			var needle = ascii.asU8.pod;
			do
			{
				if needle == !!load.u8(m_cstr + i.pod) then
					return true;
			}
			while (i += 1u) < size;
		}
		return false;
	}


	/*!
	** \brief Get the number of ascii
	*/
	func count(cref ascii: std.Ascii): u32
	{
		var c = 0u;
		if m_size != 0__u32 then
		{
			var i = 0u;
			var size = m_size;
			var needle = ascii.asU8.pod;
			do
			{
				if needle == !!load.u8(m_cstr + i.pod) then
					c += 1u;
			}
			while (i += 1u) < size;
		}
		return c;
	}


	/*!
	** \brief Determines whether the string begins with the characters of another string
	*/
	func startsWith(cref prefix: string): bool
	{
		return (m_size != 0__u32 and prefix.m_size <= m_size)
			and std.memory.equals(m_cstr, prefix.m_cstr, 0__u64 + prefix.m_size);
	}


	/*!
	** \brief Determines whether the string ends with the characters of another string
	*/
	func endsWith(cref suffix: string): bool
	{
		var fsize = suffix.m_size;
		return (m_size != 0__u32 and fsize <= m_size)
			and std.memory.equals(m_cstr + m_size - fsize, prefix.m_cstr, 0__u64 + fsize);
	}


	/*!
	** \brief Remove the 'count' ascii from the end of the string
	*/
	func chop(ascii: u32)
	{
		if ascii != 0u then
		{
			var size = m_size;
			if size >= ascii.pod then
				m_size = size - ascii.pod;
			else
				m_size = 0__u32;
		}
	}


	/*!
	** \brief Remove the 'count' ascii from the begining of the string
	*/
	func consume(ascii: u32)
	{
		if ascii != 0u then
		{
			var size = m_size;
			if size > ascii.pod then
			{
				size = size - ascii.pod;
				std.memory.copyOverlap(m_cstr, m_cstr + ascii.pod, 0__u64 + size);
				m_size = size;
			}
			else
				m_size = 0__u32;
		}
	}


	/*!
	** \brief Reduce the size of the string
	*/
	func truncate(ascii: u32)
	{
		if m_size > ascii.pod then
			m_size = ascii.pod;
	}


	/*!
	** \brief Remove last ascii if any
	*/
	func removeLastAscii
	{
		var size = m_size;
		if size != 0__u32 then
			m_size = size - 1__u32;
	}


	/*!
	** \brief Remove whitespace from both sides of the string
	*/
	func trim
		-> trim(func (cref ascii) -> ascii.isBlank);

	/*!
	** \brief Remove all ascii matching the predicate from both sides of the string
	*/
	func trim(cref predicate)
	{
		trimRight(predicate);
		trimLeft(predicate);
	}


	/*!
	** \brief Remove whitespace from the right side of the string
	*/
	func trimRight
		-> trimRight(func (cref ascii) -> ascii.isBlank);


	/*!
	** \brief Remove whitespace from the left side of the string
	*/
	func trimLeft
		-> trimLeft(func (cref ascii) -> ascii.isBlank);


	/*!
	** \brief Remove all ascii matching the predicate from the left side of the string
	*/
	func trimLeft(cref predicate)
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

				if not predicate(ascii) then
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

	/*!
	** \brief Remove all ascii matching the predicate from the right side of the string
	*/
	func trimRight(cref predicate)
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

				if not predicate(ascii) then
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
	** \brief Get the ascii at offset 'i' (without any check)
	*/
	func at(cref i: u32): ref std.Ascii
	{
		assert(i < m_size);
		return new std.Ascii(!!load.u8(m_cstr + i.pod));
	}


	/*!
	** \brief Extend the string by appending a value (see 'append')
	** \return self
	*/
	operator += (cref n): ref string
	{
		append(n);
		return self;
	}


	/*!
	** \brief Get the ascii at offset 'i' ('\0' if 'i' is out of bound)
	*/
	operator [] (cref i: u32)
		-> new std.Ascii(if i < m_size then !!load.u8(m_cstr + i.pod) else 0__u8);



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


	func isBlank: bool
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
					return false;

				if (i += 1u) == size then
					return true;
			}
			while __true;
		}
		return true;
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
