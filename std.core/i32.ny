// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    i32.ny
/// \brief   Implementation of the class i32, Signed integer with width of exactly 32 bits
/// \ingroup std.core
/// \important THIS FILE IS AUTOMATICALLY GENERATED (see `nsl-core-generator.cpp`)




/// \brief   Signed integer with width of exactly 32 bits
/// \ingroup std.core
public class i32
{
	operator new;

	operator new (self cref pod: i32);
	operator new (self cref pod: i16);
	operator new (self cref pod: i8);
	operator new (self cref pod: u16);
	operator new (self cref pod: u8);

	#[nosuggest] operator new (self pod: __i32);
	#[nosuggest] operator new (self pod: __i16);
	#[nosuggest] operator new (self pod: __i8);
	#[nosuggest] operator new (self pod: __u16);
	#[nosuggest] operator new (self pod: __u8);



	operator ++self: ref i32
	{
		pod = !!inc(pod);
		return self;
	}

	operator self++: ref i32
	{
		ref tmp = new i32(pod);
		pod = !!inc(pod);
		return tmp;
	}

	operator --self: ref i32
	{
		pod = !!dec(pod);
		return self;
	}

	operator self--: ref i32
	{
		ref tmp = new i32(pod);
		pod = !!dec(pod);
		return tmp;
	}


	operator += (cref x: i32): ref i32
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	#[nosuggest] operator += (x: __i32): ref i32
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: i16): ref i32
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	#[nosuggest] operator += (x: __i16): ref i32
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: i8): ref i32
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	#[nosuggest] operator += (x: __i8): ref i32
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: u16): ref i32
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	#[nosuggest] operator += (x: __u16): ref i32
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: u8): ref i32
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	#[nosuggest] operator += (x: __u8): ref i32
	{
		pod = !!add(pod, x);
		return self;
	}



	operator -= (cref x: i32): ref i32
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	#[nosuggest] operator -= (x: __i32): ref i32
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: i16): ref i32
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	#[nosuggest] operator -= (x: __i16): ref i32
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: i8): ref i32
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	#[nosuggest] operator -= (x: __i8): ref i32
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: u16): ref i32
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	#[nosuggest] operator -= (x: __u16): ref i32
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: u8): ref i32
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	#[nosuggest] operator -= (x: __u8): ref i32
	{
		pod = !!sub(pod, x);
		return self;
	}



	operator *= (cref x: i32): ref i32
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	#[nosuggest] operator *= (x: __i32): ref i32
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: i16): ref i32
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	#[nosuggest] operator *= (x: __i16): ref i32
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: i8): ref i32
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	#[nosuggest] operator *= (x: __i8): ref i32
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: u16): ref i32
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	#[nosuggest] operator *= (x: __u16): ref i32
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: u8): ref i32
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	#[nosuggest] operator *= (x: __u8): ref i32
	{
		pod = !!imul(pod, x);
		return self;
	}



	operator /= (cref x: i32): ref i32
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	#[nosuggest] operator /= (x: __i32): ref i32
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: i16): ref i32
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	#[nosuggest] operator /= (x: __i16): ref i32
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: i8): ref i32
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	#[nosuggest] operator /= (x: __i8): ref i32
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: u16): ref i32
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	#[nosuggest] operator /= (x: __u16): ref i32
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: u8): ref i32
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	#[nosuggest] operator /= (x: __u8): ref i32
	{
		pod = !!idiv(pod, x);
		return self;
	}



private:
	var pod = 0__i32;

} // class i32









#[builtinalias: igt] public operator > (a: cref i32, b: cref i32): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: cref i32, b: __i32): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: __i32, b: cref i32): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: __i32, b: __i32): __bool;
#[builtinalias: igt] public operator > (a: cref i32, b: cref i16): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: cref i32, b: __i16): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: __i32, b: cref i16): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: __i32, b: __i16): __bool;
#[builtinalias: igt] public operator > (a: cref i32, b: cref i8): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: cref i32, b: __i8): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: __i32, b: cref i8): ref bool;
#[builtinalias: igt, nosuggest] public operator > (a: __i32, b: __i8): __bool;

#[builtinalias: igte] public operator >= (a: cref i32, b: cref i32): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: cref i32, b: __i32): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: __i32, b: cref i32): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: __i32, b: __i32): __bool;
#[builtinalias: igte] public operator >= (a: cref i32, b: cref i16): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: cref i32, b: __i16): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: __i32, b: cref i16): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: __i32, b: __i16): __bool;
#[builtinalias: igte] public operator >= (a: cref i32, b: cref i8): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: cref i32, b: __i8): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: __i32, b: cref i8): ref bool;
#[builtinalias: igte, nosuggest] public operator >= (a: __i32, b: __i8): __bool;

#[builtinalias: ilt] public operator < (a: cref i32, b: cref i32): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: cref i32, b: __i32): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: __i32, b: cref i32): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: __i32, b: __i32): __bool;
#[builtinalias: ilt] public operator < (a: cref i32, b: cref i16): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: cref i32, b: __i16): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: __i32, b: cref i16): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: __i32, b: __i16): __bool;
#[builtinalias: ilt] public operator < (a: cref i32, b: cref i8): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: cref i32, b: __i8): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: __i32, b: cref i8): ref bool;
#[builtinalias: ilt, nosuggest] public operator < (a: __i32, b: __i8): __bool;

#[builtinalias: ilte] public operator <= (a: cref i32, b: cref i32): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: cref i32, b: __i32): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: __i32, b: cref i32): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: __i32, b: __i32): __bool;
#[builtinalias: ilte] public operator <= (a: cref i32, b: cref i16): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: cref i32, b: __i16): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: __i32, b: cref i16): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: __i32, b: __i16): __bool;
#[builtinalias: ilte] public operator <= (a: cref i32, b: cref i8): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: cref i32, b: __i8): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: __i32, b: cref i8): ref bool;
#[builtinalias: ilte, nosuggest] public operator <= (a: __i32, b: __i8): __bool;





#[builtinalias: eq] public operator == (a: cref i32, b: cref i32): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: cref i32, b: __i32): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: __i32, b: cref i32): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: __i32, b: __i32): __bool;
#[builtinalias: eq] public operator == (a: cref i32, b: cref i16): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: cref i32, b: __i16): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: __i32, b: cref i16): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: __i32, b: __i16): __bool;
#[builtinalias: eq] public operator == (a: cref i32, b: cref i8): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: cref i32, b: __i8): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: __i32, b: cref i8): ref bool;
#[builtinalias: eq, nosuggest] public operator == (a: __i32, b: __i8): __bool;

#[builtinalias: neq] public operator != (a: cref i32, b: cref i32): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: cref i32, b: __i32): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: __i32, b: cref i32): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: __i32, b: __i32): __bool;
#[builtinalias: neq] public operator != (a: cref i32, b: cref i16): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: cref i32, b: __i16): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: __i32, b: cref i16): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: __i32, b: __i16): __bool;
#[builtinalias: neq] public operator != (a: cref i32, b: cref i8): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: cref i32, b: __i8): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: __i32, b: cref i8): ref bool;
#[builtinalias: neq, nosuggest] public operator != (a: __i32, b: __i8): __bool;





#[builtinalias: add] public operator + (a: cref i32, b: cref i32): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: cref i32, b: __i32): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: __i32, b: cref i32): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: __i32, b: __i32): __i32;

#[builtinalias: add] public operator + (a: cref i32, b: cref i16): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: cref i32, b: __i16): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: __i32, b: cref i16): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: __i32, b: __i16): __i32;

#[builtinalias: add] public operator + (a: cref i32, b: cref i8): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: cref i32, b: __i8): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: __i32, b: cref i8): ref i32;
#[builtinalias: add, nosuggest] public operator + (a: __i32, b: __i8): __i32;


#[builtinalias: sub] public operator - (a: cref i32, b: cref i32): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: cref i32, b: __i32): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: __i32, b: cref i32): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: __i32, b: __i32): __i32;

#[builtinalias: sub] public operator - (a: cref i32, b: cref i16): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: cref i32, b: __i16): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: __i32, b: cref i16): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: __i32, b: __i16): __i32;

#[builtinalias: sub] public operator - (a: cref i32, b: cref i8): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: cref i32, b: __i8): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: __i32, b: cref i8): ref i32;
#[builtinalias: sub, nosuggest] public operator - (a: __i32, b: __i8): __i32;


#[builtinalias: idiv] public operator / (a: cref i32, b: cref i32): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: cref i32, b: __i32): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: __i32, b: cref i32): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: __i32, b: __i32): __i32;

#[builtinalias: idiv] public operator / (a: cref i32, b: cref i16): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: cref i32, b: __i16): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: __i32, b: cref i16): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: __i32, b: __i16): __i32;

#[builtinalias: idiv] public operator / (a: cref i32, b: cref i8): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: cref i32, b: __i8): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: __i32, b: cref i8): ref i32;
#[builtinalias: idiv, nosuggest] public operator / (a: __i32, b: __i8): __i32;


#[builtinalias: imul] public operator * (a: cref i32, b: cref i32): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: cref i32, b: __i32): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: __i32, b: cref i32): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: __i32, b: __i32): __i32;

#[builtinalias: imul] public operator * (a: cref i32, b: cref i16): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: cref i32, b: __i16): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: __i32, b: cref i16): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: __i32, b: __i16): __i32;

#[builtinalias: imul] public operator * (a: cref i32, b: cref i8): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: cref i32, b: __i8): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: __i32, b: cref i8): ref i32;
#[builtinalias: imul, nosuggest] public operator * (a: __i32, b: __i8): __i32;






#[builtinalias: and] public operator and (a: cref i32, b: cref i32): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: cref i32, b: __i32): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: __i32, b: cref i32): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: __i32, b: __i32): __i32;

#[builtinalias: and] public operator and (a: cref i32, b: cref i16): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: cref i32, b: __i16): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: __i32, b: cref i16): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: __i32, b: __i16): __i32;

#[builtinalias: and] public operator and (a: cref i32, b: cref i8): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: cref i32, b: __i8): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: __i32, b: cref i8): ref i32;
#[builtinalias: and, nosuggest] public operator and (a: __i32, b: __i8): __i32;


#[builtinalias: or] public operator or (a: cref i32, b: cref i32): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: cref i32, b: __i32): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: __i32, b: cref i32): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: __i32, b: __i32): __i32;

#[builtinalias: or] public operator or (a: cref i32, b: cref i16): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: cref i32, b: __i16): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: __i32, b: cref i16): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: __i32, b: __i16): __i32;

#[builtinalias: or] public operator or (a: cref i32, b: cref i8): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: cref i32, b: __i8): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: __i32, b: cref i8): ref i32;
#[builtinalias: or, nosuggest] public operator or (a: __i32, b: __i8): __i32;


#[builtinalias: xor] public operator xor (a: cref i32, b: cref i32): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: cref i32, b: __i32): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: __i32, b: cref i32): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: __i32, b: __i32): __i32;

#[builtinalias: xor] public operator xor (a: cref i32, b: cref i16): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: cref i32, b: __i16): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: __i32, b: cref i16): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: __i32, b: __i16): __i32;

#[builtinalias: xor] public operator xor (a: cref i32, b: cref i8): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: cref i32, b: __i8): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: __i32, b: cref i8): ref i32;
#[builtinalias: xor, nosuggest] public operator xor (a: __i32, b: __i8): __i32;






// -*- mode: nany;-*-
// vim: set filetype=nany: