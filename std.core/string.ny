


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

	operator new (self pod: __pointer); // should not be used


	operator dispose
	{
		!!yuni.string.delete(pod);
	}

	operator clone(cref rhs: string)
	{
		!!yuni.string.append.string(pod, rhs.pod);
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

	[[suggest: false]] func append(cstring: __pointer, size: __u64)
	{
		!!yuni.string.append.cstring(pod, cstring, size);
	}

	[[suggest: false]] func append(cstring: __pointer, cref size: u64)
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

	[[suggest: false]] func append(cref n: __i8)
	{
		!!yuni.string.append.i8(pod, n);
	}

	[[suggest: false]] func append(cref n: __i16)
	{
		!!yuni.string.append.i16(pod, n);
	}

	[[suggest: false]] func append(cref n: __i32)
	{
		!!yuni.string.append.i32(pod, n);
	}

	[[suggest: false]] func append(cref n: __i64)
	{
		!!yuni.string.append.i64(pod, n);
	}

	[[suggest: false]] func append(cref n: __u8)
	{
		!!yuni.string.append.u8(pod, n);
	}

	[[suggest: false]] func append(cref n: __u16)
	{
		!!yuni.string.append.u16(pod, n);
	}

	[[suggest: false]] func append(cref n: __u32)
	{
		!!yuni.string.append.u32(pod, n);
	}

	[[suggest: false]] func append(cref n: __u64)
	{
		!!yuni.string.append.u64(pod, n);
	}


	operator += (cref n): ref
	{
		append(n);
		return self;
	}

private:
	var pod: __pointer = !!yuni.string.new();
}




public operator + (cref s: string, cref t: string): ref string
	-> (new string(s)) += t;


public func print(cref text: string)
{
	!!yuni.string.cout(text.pod);
}
