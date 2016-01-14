


class string
{
	operator new;

	operator dispose
	{
		!!yuni.string.delete(pod);
	}

	operator clone
	{
	}


	//! Get the size of the string
	func size
		-> !!yuni.string.size(pod);


	//! Reset the content from another string
	func assign(cref text: string)
	{
		!!yuni.string.assign(p, text.pod);
	}


private:
	var pod: __pointer = !!yuni.string.new();
}
