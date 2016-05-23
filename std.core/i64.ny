// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    i64.ny
/// \brief   Implementation of the class i64, Signed integer with width of exactly 64 bits
/// \ingroup std.core
/// \important THIS FILE IS AUTOMATICALLY GENERATED (see `nsl-core-generator.cpp`)




/// \brief   Signed integer with width of exactly 64 bits
/// \ingroup std.core
public class i64
{
	operator new;

	operator new (self cref pod: i64);
	operator new (self cref pod: i32);
	operator new (self cref pod: i16);
	operator new (self cref pod: i8);
	operator new (self cref pod: u32);
	operator new (self cref pod: u16);
	operator new (self cref pod: u8);

	[[suggest: false]] operator new (self pod: __i64);
	[[suggest: false]] operator new (self pod: __i32);
	[[suggest: false]] operator new (self pod: __i16);
	[[suggest: false]] operator new (self pod: __i8);
	[[suggest: false]] operator new (self pod: __u32);
	[[suggest: false]] operator new (self pod: __u16);
	[[suggest: false]] operator new (self pod: __u8);



	operator ++self: ref i64
	{
		pod = !!inc(pod);
		return self;
	}

	operator self++: ref i64
	{
		ref tmp = new i64(pod);
		pod = !!inc(pod);
		return tmp;
	}

	operator --self: ref i64
	{
		pod = !!dec(pod);
		return self;
	}

	operator self--: ref i64
	{
		ref tmp = new i64(pod);
		pod = !!dec(pod);
		return tmp;
	}


	operator += (cref x: i64): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __i64): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: i32): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __i32): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: i16): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __i16): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: i8): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __i8): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: u32): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __u32): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: u16): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __u16): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}

	operator += (cref x: u8): ref i64
	{
		pod = !!add(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator += (x: __u8): ref i64
	{
		pod = !!add(pod, x);
		return self;
	}



	operator -= (cref x: i64): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __i64): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: i32): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __i32): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: i16): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __i16): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: i8): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __i8): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: u32): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __u32): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: u16): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __u16): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}

	operator -= (cref x: u8): ref i64
	{
		pod = !!sub(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator -= (x: __u8): ref i64
	{
		pod = !!sub(pod, x);
		return self;
	}



	operator *= (cref x: i64): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __i64): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: i32): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __i32): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: i16): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __i16): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: i8): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __i8): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: u32): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __u32): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: u16): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __u16): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}

	operator *= (cref x: u8): ref i64
	{
		pod = !!imul(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator *= (x: __u8): ref i64
	{
		pod = !!imul(pod, x);
		return self;
	}



	operator /= (cref x: i64): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __i64): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: i32): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __i32): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: i16): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __i16): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: i8): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __i8): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: u32): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __u32): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: u16): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __u16): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}

	operator /= (cref x: u8): ref i64
	{
		pod = !!idiv(pod, x.pod);
		return self;
	}

	[[suggest: false]] operator /= (x: __u8): ref i64
	{
		pod = !!idiv(pod, x);
		return self;
	}



private:
	var pod = 0__i64;

} // class i64









[[builtinalias: igt]] public operator > (a: cref i64, b: cref i64): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: cref i64, b: __i64): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: cref i64): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: __i64): __bool;
[[builtinalias: igt]] public operator > (a: cref i64, b: cref i32): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: cref i64, b: __i32): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: cref i32): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: __i32): __bool;
[[builtinalias: igt]] public operator > (a: cref i64, b: cref i16): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: cref i64, b: __i16): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: cref i16): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: __i16): __bool;
[[builtinalias: igt]] public operator > (a: cref i64, b: cref i8): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: cref i64, b: __i8): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: cref i8): ref bool;
[[builtinalias: igt, suggest: false]] public operator > (a: __i64, b: __i8): __bool;

[[builtinalias: igte]] public operator >= (a: cref i64, b: cref i64): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: cref i64, b: __i64): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: cref i64): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: __i64): __bool;
[[builtinalias: igte]] public operator >= (a: cref i64, b: cref i32): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: cref i64, b: __i32): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: cref i32): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: __i32): __bool;
[[builtinalias: igte]] public operator >= (a: cref i64, b: cref i16): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: cref i64, b: __i16): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: cref i16): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: __i16): __bool;
[[builtinalias: igte]] public operator >= (a: cref i64, b: cref i8): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: cref i64, b: __i8): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: cref i8): ref bool;
[[builtinalias: igte, suggest: false]] public operator >= (a: __i64, b: __i8): __bool;

[[builtinalias: ilt]] public operator < (a: cref i64, b: cref i64): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: cref i64, b: __i64): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: cref i64): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: __i64): __bool;
[[builtinalias: ilt]] public operator < (a: cref i64, b: cref i32): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: cref i64, b: __i32): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: cref i32): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: __i32): __bool;
[[builtinalias: ilt]] public operator < (a: cref i64, b: cref i16): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: cref i64, b: __i16): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: cref i16): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: __i16): __bool;
[[builtinalias: ilt]] public operator < (a: cref i64, b: cref i8): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: cref i64, b: __i8): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: cref i8): ref bool;
[[builtinalias: ilt, suggest: false]] public operator < (a: __i64, b: __i8): __bool;

[[builtinalias: ilte]] public operator <= (a: cref i64, b: cref i64): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: cref i64, b: __i64): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: cref i64): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: __i64): __bool;
[[builtinalias: ilte]] public operator <= (a: cref i64, b: cref i32): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: cref i64, b: __i32): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: cref i32): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: __i32): __bool;
[[builtinalias: ilte]] public operator <= (a: cref i64, b: cref i16): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: cref i64, b: __i16): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: cref i16): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: __i16): __bool;
[[builtinalias: ilte]] public operator <= (a: cref i64, b: cref i8): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: cref i64, b: __i8): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: cref i8): ref bool;
[[builtinalias: ilte, suggest: false]] public operator <= (a: __i64, b: __i8): __bool;





[[builtinalias: eq]] public operator == (a: cref i64, b: cref i64): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: cref i64, b: __i64): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: cref i64): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: __i64): __bool;
[[builtinalias: eq]] public operator == (a: cref i64, b: cref i32): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: cref i64, b: __i32): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: cref i32): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: __i32): __bool;
[[builtinalias: eq]] public operator == (a: cref i64, b: cref i16): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: cref i64, b: __i16): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: cref i16): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: __i16): __bool;
[[builtinalias: eq]] public operator == (a: cref i64, b: cref i8): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: cref i64, b: __i8): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: cref i8): ref bool;
[[builtinalias: eq, suggest: false]] public operator == (a: __i64, b: __i8): __bool;

[[builtinalias: neq]] public operator != (a: cref i64, b: cref i64): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: cref i64, b: __i64): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: cref i64): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: __i64): __bool;
[[builtinalias: neq]] public operator != (a: cref i64, b: cref i32): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: cref i64, b: __i32): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: cref i32): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: __i32): __bool;
[[builtinalias: neq]] public operator != (a: cref i64, b: cref i16): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: cref i64, b: __i16): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: cref i16): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: __i16): __bool;
[[builtinalias: neq]] public operator != (a: cref i64, b: cref i8): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: cref i64, b: __i8): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: cref i8): ref bool;
[[builtinalias: neq, suggest: false]] public operator != (a: __i64, b: __i8): __bool;





[[builtinalias: add]] public operator + (a: cref i64, b: cref i64): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: cref i64, b: __i64): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: cref i64): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: __i64): __i64;

[[builtinalias: add]] public operator + (a: cref i64, b: cref i32): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: cref i64, b: __i32): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: cref i32): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: __i32): __i64;

[[builtinalias: add]] public operator + (a: cref i64, b: cref i16): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: cref i64, b: __i16): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: cref i16): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: __i16): __i64;

[[builtinalias: add]] public operator + (a: cref i64, b: cref i8): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: cref i64, b: __i8): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: cref i8): ref i64;
[[builtinalias: add, suggest: false]] public operator + (a: __i64, b: __i8): __i64;


[[builtinalias: sub]] public operator - (a: cref i64, b: cref i64): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: cref i64, b: __i64): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: cref i64): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: __i64): __i64;

[[builtinalias: sub]] public operator - (a: cref i64, b: cref i32): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: cref i64, b: __i32): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: cref i32): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: __i32): __i64;

[[builtinalias: sub]] public operator - (a: cref i64, b: cref i16): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: cref i64, b: __i16): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: cref i16): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: __i16): __i64;

[[builtinalias: sub]] public operator - (a: cref i64, b: cref i8): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: cref i64, b: __i8): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: cref i8): ref i64;
[[builtinalias: sub, suggest: false]] public operator - (a: __i64, b: __i8): __i64;


[[builtinalias: idiv]] public operator / (a: cref i64, b: cref i64): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: cref i64, b: __i64): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: cref i64): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: __i64): __i64;

[[builtinalias: idiv]] public operator / (a: cref i64, b: cref i32): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: cref i64, b: __i32): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: cref i32): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: __i32): __i64;

[[builtinalias: idiv]] public operator / (a: cref i64, b: cref i16): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: cref i64, b: __i16): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: cref i16): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: __i16): __i64;

[[builtinalias: idiv]] public operator / (a: cref i64, b: cref i8): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: cref i64, b: __i8): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: cref i8): ref i64;
[[builtinalias: idiv, suggest: false]] public operator / (a: __i64, b: __i8): __i64;


[[builtinalias: imul]] public operator * (a: cref i64, b: cref i64): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: cref i64, b: __i64): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: cref i64): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: __i64): __i64;

[[builtinalias: imul]] public operator * (a: cref i64, b: cref i32): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: cref i64, b: __i32): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: cref i32): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: __i32): __i64;

[[builtinalias: imul]] public operator * (a: cref i64, b: cref i16): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: cref i64, b: __i16): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: cref i16): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: __i16): __i64;

[[builtinalias: imul]] public operator * (a: cref i64, b: cref i8): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: cref i64, b: __i8): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: cref i8): ref i64;
[[builtinalias: imul, suggest: false]] public operator * (a: __i64, b: __i8): __i64;






[[builtinalias: and]] public operator and (a: cref i64, b: cref i64): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: cref i64, b: __i64): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: cref i64): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: __i64): __i64;

[[builtinalias: and]] public operator and (a: cref i64, b: cref i32): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: cref i64, b: __i32): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: cref i32): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: __i32): __i64;

[[builtinalias: and]] public operator and (a: cref i64, b: cref i16): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: cref i64, b: __i16): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: cref i16): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: __i16): __i64;

[[builtinalias: and]] public operator and (a: cref i64, b: cref i8): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: cref i64, b: __i8): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: cref i8): ref i64;
[[builtinalias: and, suggest: false]] public operator and (a: __i64, b: __i8): __i64;


[[builtinalias: or]] public operator or (a: cref i64, b: cref i64): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: cref i64, b: __i64): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: cref i64): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: __i64): __i64;

[[builtinalias: or]] public operator or (a: cref i64, b: cref i32): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: cref i64, b: __i32): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: cref i32): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: __i32): __i64;

[[builtinalias: or]] public operator or (a: cref i64, b: cref i16): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: cref i64, b: __i16): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: cref i16): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: __i16): __i64;

[[builtinalias: or]] public operator or (a: cref i64, b: cref i8): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: cref i64, b: __i8): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: cref i8): ref i64;
[[builtinalias: or, suggest: false]] public operator or (a: __i64, b: __i8): __i64;


[[builtinalias: xor]] public operator xor (a: cref i64, b: cref i64): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: cref i64, b: __i64): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: cref i64): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: __i64): __i64;

[[builtinalias: xor]] public operator xor (a: cref i64, b: cref i32): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: cref i64, b: __i32): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: cref i32): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: __i32): __i64;

[[builtinalias: xor]] public operator xor (a: cref i64, b: cref i16): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: cref i64, b: __i16): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: cref i16): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: __i16): __i64;

[[builtinalias: xor]] public operator xor (a: cref i64, b: cref i8): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: cref i64, b: __i8): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: cref i8): ref i64;
[[builtinalias: xor, suggest: false]] public operator xor (a: __i64, b: __i8): __i64;






// -*- mode: nany;-*-
// vim: set filetype=nany: