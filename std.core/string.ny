


class string
{
	operator new;

	operator new (cref value)
	{
		append(value);
	}

	operator new (cstring: __pointer, size: __u64)
	{
		!!yuni.string.append.cstring(pod, cstring, size);
	}

	operator new (cstring: __pointer, cref size: u64)
	{
		!!yuni.string.append.cstring(pod, cstring, size.pod);
	}

	operator dispose
	{
		!!yuni.string.delete(pod);
	}

	operator clone(cref rhs: string)
	{
		!!yuni.string.assign(pod, rhs.pod);
	}


	func clear
	{
		!!yuni.string.clear(pod);
	}

	//! Get the size of the string
	func size: ref
		-> new u64(!!yuni.string.size(pod));


	func assign(cref text)
	{
		!!yuni.string.clear(pod);
		append(text);
	}


	func append(cref text: string)
	{
		!!yuni.string.append.string(pod, text.pod);
	}

	func append(cstring: __pointer, size: __u64)
	{
		!!yuni.string.append.cstring(pod, cstring, size);
	}

	func append(cstring: __pointer, cref size: u64)
	{
		!!yuni.string.append.cstring(pod, cstring, size.pod);
	}

	func append(cref n: i8)
	{
		!!yuni.string.append.i8(pod, n.pod);
	}

	func append(cref n: i16)
	{
		!!yuni.string.append.i16(pod, n.pod);
	}

	func append(cref n: i32)
	{
		!!yuni.string.append.i32(pod, n.pod);
	}

	func append(cref n: i64)
	{
		!!yuni.string.append.i64(pod, n.pod);
	}

	func append(cref n: u8)
	{
		!!yuni.string.append.u8(pod, n.pod);
	}

	func append(cref n: u16)
	{
		!!yuni.string.append.u16(pod, n.pod);
	}

	func append(cref n: u32)
	{
		!!yuni.string.append.u32(pod, n.pod);
	}

	func append(cref n: u64)
	{
		!!yuni.string.append.u64(pod, n.pod);
	}



private:
	var pod: __pointer = !!yuni.string.new();
}
