namespace std.math;



public func min(ref a, ref b): ref
{
	var x = if a < b then a else b;
}


public func max(ref a, ref b): ref
	-> if a < b then b else a;




// -*- mode: nany;-*-
// vim: set filetype=nany:
