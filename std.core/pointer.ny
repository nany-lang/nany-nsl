// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
// \file    pointer.ny
// \brief   Raw pointer
// \ingroup std.core




/*!
** \brief Wraps a raw pointer
*/
class pointer<:T:>
{
	typedef ValueType: T;

	operator new;
	operator new(p: __pointer)
	{
		pod = p;
	}

	operator new(ref object: T)
	{
		pod = !!pointer(object);
	}


	func nil: ref bool
		-> new bool(pod == null);

	func get: ref
	{
		assert(pod != null);
		return !!__reinterpret(pod, #[__nanyc_synthetic] T);
	}

	/*!
	** \brief Reset the inner pointer to null
	*/
	func reset
	{
		pod = null;
	}

	func reset(p: __pointer)
	{
		pod = p;
	}

	func reset(ref object: T)
	{
		pod = !!pointer(object);
	}

	func reset(ref ptr)
	{
		pod = ptr.pod;
	}


	func addressof: ref u64
		-> new u64(!!__reinterpret(pod, #[__nanyc_synthetic] __u64));



	operator += (count): ref
	{
		pod = !!add(pod, count * !!sizeof(#[__nanyc_synthetic] T));
		return self;
	}

	operator -= (count): ref
	{
		pod = !!sub(pod, count * !!sizeof(#[__nanyc_synthetic] T));
		return self;
	}

	operator *= (count): ref
	{
		pod = !!mul(pod, count * !!sizeof(T));
		return self;
	}

	operator /= (count): ref
	{
		pod = !!div(pod, count * !!sizeof(T));
		return self;
	}


internal:
	var pod: __pointer = null;

} // class pointer





#[__nanyc_builtinalias: not, nosuggest]
public operator not (a: __pointer): __bool;

public operator not (cref p: pointer): bool
	-> not p.pod;


#[__nanyc_builtinalias: gt]public operator > (a: cref pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: gt, nosuggest] public operator > (a: cref pointer, b: __pointer): ref bool;
#[__nanyc_builtinalias: gt, nosuggest] public operator > (a: __pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: gt, nosuggest] public operator > (a: __pointer, b: __pointer): __bool;

#[__nanyc_builtinalias: gte] public operator >= (a: cref pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: gte, nosuggest] public operator >= (a: cref pointer, b: __pointer): ref bool;
#[__nanyc_builtinalias: gte, nosuggest] public operator >= (a: __pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: gte, nosuggest] public operator >= (a: __pointer, b: __pointer): __bool;

#[__nanyc_builtinalias: lt] public operator < (a: cref pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: lt, nosuggest] public operator < (a: cref pointer, b: __pointer): ref bool;
#[__nanyc_builtinalias: lt, nosuggest] public operator < (a: __pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: lt, nosuggest] public operator < (a: __pointer, b: __pointer): __bool;

#[__nanyc_builtinalias: lte] public operator <= (a: cref pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: lte, nosuggest] public operator <= (a: cref pointer, b: __pointer): ref bool;
#[__nanyc_builtinalias: lte, nosuggest] public operator <= (a: __pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: lte, nosuggest] public operator <= (a: __pointer, b: __pointer): __bool;



#[__nanyc_builtinalias: eq] public operator == (a: cref pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: eq, nosuggest] public operator == (a: cref pointer, b: __pointer): ref bool;
#[__nanyc_builtinalias: eq, nosuggest] public operator == (a: __pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: eq, nosuggest] public operator == (a: __pointer, b: __pointer): __bool;

#[__nanyc_builtinalias: neq] public operator != (a: cref pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: neq, nosuggest] public operator != (a: cref pointer, b: __pointer): ref bool;
#[__nanyc_builtinalias: neq, nosuggest] public operator != (a: __pointer, b: cref pointer): ref bool;
#[__nanyc_builtinalias: neq, nosuggest] public operator != (a: __pointer, b: __pointer): __bool;






// -*- mode: nany;-*-
// vim: set filetype=nany:
