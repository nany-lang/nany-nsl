// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    i16.ny
/// \brief   Implementation of the class i16, Signed integer with width of exactly 16 bits
/// \ingroup std.core
/// \important THIS FILE IS AUTOMATICALLY GENERATED (see `nsl-core-generator.cpp`)




/// \brief   Signed integer with width of exactly 16 bits
/// \ingroup std.core
public class i16
{
	operator new;
	operator new (self pod: __i16);
	operator new (self pod: __i8);
	operator new (self pod: __u8);


	operator ++self: ref i16
	{
		pod = !!nany_inc_i16(pod);
		return self;
	}

	operator self++: ref i16
	{
		var tmp = self;
		pod = !!nany_inc_i16(pod);
		return tmp;
	}

	operator --self: ref i16
	{
		pod = !!nany_dec_i16(pod);
		return self;
	}

	operator self--: ref i16
	{
		var tmp = self;
		pod = !!nany_dec_i16(pod);
		return tmp;
	}


	operator += (cref x: i16): ref i16
	{
		pod = !!nany_add_i16_i16(pod, x.pod);
		return self;
	}

	operator += (cref x: __i16): ref i16
	{
		pod = !!nany_add_i16_i16(pod, x);
		return self;
	}

	operator += (cref x: i8): ref i16
	{
		pod = !!nany_add_i16_i8(pod, x.pod);
		return self;
	}

	operator += (cref x: __i8): ref i16
	{
		pod = !!nany_add_i16_i8(pod, x);
		return self;
	}

	operator += (cref x: u8): ref i16
	{
		pod = !!nany_add_i16_u8(pod, x.pod);
		return self;
	}

	operator += (cref x: __u8): ref i16
	{
		pod = !!nany_add_i16_u8(pod, x);
		return self;
	}


	operator -= (cref x: i16): ref i16
	{
		pod = !!nany_sub_i16_i16(pod, x.pod);
		return self;
	}

	operator -= (cref x: __i16): ref i16
	{
		pod = !!nany_sub_i16_i16(pod, x);
		return self;
	}

	operator -= (cref x: i8): ref i16
	{
		pod = !!nany_sub_i16_i8(pod, x.pod);
		return self;
	}

	operator -= (cref x: __i8): ref i16
	{
		pod = !!nany_sub_i16_i8(pod, x);
		return self;
	}

	operator -= (cref x: u8): ref i16
	{
		pod = !!nany_sub_i16_u8(pod, x.pod);
		return self;
	}

	operator -= (cref x: __u8): ref i16
	{
		pod = !!nany_sub_i16_u8(pod, x);
		return self;
	}


	operator *= (cref x: i16): ref i16
	{
		pod = !!nany_mult_i16_i16(pod, x.pod);
		return self;
	}

	operator *= (cref x: __i16): ref i16
	{
		pod = !!nany_mult_i16_i16(pod, x);
		return self;
	}

	operator *= (cref x: i8): ref i16
	{
		pod = !!nany_mult_i16_i8(pod, x.pod);
		return self;
	}

	operator *= (cref x: __i8): ref i16
	{
		pod = !!nany_mult_i16_i8(pod, x);
		return self;
	}

	operator *= (cref x: u8): ref i16
	{
		pod = !!nany_mult_i16_u8(pod, x.pod);
		return self;
	}

	operator *= (cref x: __u8): ref i16
	{
		pod = !!nany_mult_i16_u8(pod, x);
		return self;
	}


	operator /= (cref x: i16): ref i16
	{
		pod = !!nany_div_i16_i16(pod, x.pod);
		return self;
	}

	operator /= (cref x: __i16): ref i16
	{
		pod = !!nany_div_i16_i16(pod, x);
		return self;
	}

	operator /= (cref x: i8): ref i16
	{
		pod = !!nany_div_i16_i8(pod, x.pod);
		return self;
	}

	operator /= (cref x: __i8): ref i16
	{
		pod = !!nany_div_i16_i8(pod, x);
		return self;
	}

	operator /= (cref x: u8): ref i16
	{
		pod = !!nany_div_i16_u8(pod, x.pod);
		return self;
	}

	operator /= (cref x: __u8): ref i16
	{
		pod = !!nany_div_i16_u8(pod, x);
		return self;
	}


	//! The real integer representation
	var pod: __i16 = 0i16;
}









public operator == (a: __i16, b: __i16): bool
	-> !!nany_is_equal_i16__i16(a, b);

public operator == (cref a: i16, cref b: i16): bool
	-> a.pod == b.pod;

public operator == (cref a: i16, cref b: __i16): bool
	-> a.pod == b;

public operator == (cref a: __i16, cref b: i16): bool
	-> a == b.pod;


public operator == (a: __i16, b: __i8): bool
	-> !!nany_is_equal_i16__i8(a, b);

public operator == (cref a: i16, cref b: i8): bool
	-> a.pod == b.pod;

public operator == (cref a: i16, cref b: __i8): bool
	-> a.pod == b;

public operator == (cref a: __i16, cref b: i8): bool
	-> a == b.pod;



public operator == (a: __i16, b: __u8): bool
	-> !!nany_is_equal_i16__u8(a, b);

public operator == (cref a: i16, cref b: u8): bool
	-> a.pod == b.pod;

public operator == (cref a: i16, cref b: __u8): bool
	-> a.pod == b;

public operator == (cref a: __i16, cref b: u8): bool
	-> a == b.pod;




public operator != (a: __i16, b: __i16): bool
	-> !!nany_is_not_equal_i16__i16(a, b);

public operator != (cref a: i16, cref b: i16): bool
	-> a.pod != b.pod;

public operator != (cref a: i16, cref b: __i16): bool
	-> a.pod != b;

public operator != (cref a: __i16, cref b: i16): bool
	-> a != b.pod;


public operator != (a: __i16, b: __i8): bool
	-> !!nany_is_not_equal_i16__i8(a, b);

public operator != (cref a: i16, cref b: i8): bool
	-> a.pod != b.pod;

public operator != (cref a: i16, cref b: __i8): bool
	-> a.pod != b;

public operator != (cref a: __i16, cref b: i8): bool
	-> a != b.pod;



public operator != (a: __i16, b: __u8): bool
	-> !!nany_is_not_equal_i16__u8(a, b);

public operator != (cref a: i16, cref b: u8): bool
	-> a.pod != b.pod;

public operator != (cref a: i16, cref b: __u8): bool
	-> a.pod != b;

public operator != (cref a: __i16, cref b: u8): bool
	-> a != b.pod;




public operator < (a: __i16, b: __i16): bool
	-> !!nany_is_less_i16__i16(a, b);

public operator < (cref a: i16, cref b: i16): bool
	-> a.pod < b.pod;

public operator < (cref a: i16, cref b: __i16): bool
	-> a.pod < b;

public operator < (cref a: __i16, cref b: i16): bool
	-> a < b.pod;


public operator < (a: __i16, b: __i8): bool
	-> !!nany_is_less_i16__i8(a, b);

public operator < (cref a: i16, cref b: i8): bool
	-> a.pod < b.pod;

public operator < (cref a: i16, cref b: __i8): bool
	-> a.pod < b;

public operator < (cref a: __i16, cref b: i8): bool
	-> a < b.pod;



public operator < (a: __i16, b: __u8): bool
	-> !!nany_is_less_i16__u8(a, b);

public operator < (cref a: i16, cref b: u8): bool
	-> a.pod < b.pod;

public operator < (cref a: i16, cref b: __u8): bool
	-> a.pod < b;

public operator < (cref a: __i16, cref b: u8): bool
	-> a < b.pod;




public operator <= (a: __i16, b: __i16): bool
	-> !!nany_is_less_or_equal_i16__i16(a, b);

public operator <= (cref a: i16, cref b: i16): bool
	-> a.pod <= b.pod;

public operator <= (cref a: i16, cref b: __i16): bool
	-> a.pod <= b;

public operator <= (cref a: __i16, cref b: i16): bool
	-> a <= b.pod;


public operator <= (a: __i16, b: __i8): bool
	-> !!nany_is_less_or_equal_i16__i8(a, b);

public operator <= (cref a: i16, cref b: i8): bool
	-> a.pod <= b.pod;

public operator <= (cref a: i16, cref b: __i8): bool
	-> a.pod <= b;

public operator <= (cref a: __i16, cref b: i8): bool
	-> a <= b.pod;



public operator <= (a: __i16, b: __u8): bool
	-> !!nany_is_less_or_equal_i16__u8(a, b);

public operator <= (cref a: i16, cref b: u8): bool
	-> a.pod <= b.pod;

public operator <= (cref a: i16, cref b: __u8): bool
	-> a.pod <= b;

public operator <= (cref a: __i16, cref b: u8): bool
	-> a <= b.pod;




public operator > (a: __i16, b: __i16): bool
	-> !!nany_is_greater_i16__i16(a, b);

public operator > (cref a: i16, cref b: i16): bool
	-> a.pod > b.pod;

public operator > (cref a: i16, cref b: __i16): bool
	-> a.pod > b;

public operator > (cref a: __i16, cref b: i16): bool
	-> a > b.pod;


public operator > (a: __i16, b: __i8): bool
	-> !!nany_is_greater_i16__i8(a, b);

public operator > (cref a: i16, cref b: i8): bool
	-> a.pod > b.pod;

public operator > (cref a: i16, cref b: __i8): bool
	-> a.pod > b;

public operator > (cref a: __i16, cref b: i8): bool
	-> a > b.pod;



public operator > (a: __i16, b: __u8): bool
	-> !!nany_is_greater_i16__u8(a, b);

public operator > (cref a: i16, cref b: u8): bool
	-> a.pod > b.pod;

public operator > (cref a: i16, cref b: __u8): bool
	-> a.pod > b;

public operator > (cref a: __i16, cref b: u8): bool
	-> a > b.pod;




public operator >= (a: __i16, b: __i16): bool
	-> !!nany_is_greater_or_equal_i16__i16(a, b);

public operator >= (cref a: i16, cref b: i16): bool
	-> a.pod >= b.pod;

public operator >= (cref a: i16, cref b: __i16): bool
	-> a.pod >= b;

public operator >= (cref a: __i16, cref b: i16): bool
	-> a >= b.pod;


public operator >= (a: __i16, b: __i8): bool
	-> !!nany_is_greater_or_equal_i16__i8(a, b);

public operator >= (cref a: i16, cref b: i8): bool
	-> a.pod >= b.pod;

public operator >= (cref a: i16, cref b: __i8): bool
	-> a.pod >= b;

public operator >= (cref a: __i16, cref b: i8): bool
	-> a >= b.pod;



public operator >= (a: __i16, b: __u8): bool
	-> !!nany_is_greater_or_equal_i16__u8(a, b);

public operator >= (cref a: i16, cref b: u8): bool
	-> a.pod >= b.pod;

public operator >= (cref a: i16, cref b: __u8): bool
	-> a.pod >= b;

public operator >= (cref a: __i16, cref b: u8): bool
	-> a >= b.pod;




public operator + (cref a: i16, cref b): i16
	-> (new a) += b;

public operator + (cref a: __i16, cref b: i16): i16
	-> (new i16(a)) += b;

public operator + (cref a: __i8, cref b: i16): i16
	-> (new i16(a)) += b;


public operator + (cref a: __u8, cref b: i16): i16
	-> (new i16(a)) += b;



public operator - (cref a: i16, cref b): i16
	-> (new a) -= b;

public operator - (cref a: __i16, cref b: i16): i16
	-> (new i16(a)) -= b;

public operator - (cref a: __i8, cref b: i16): i16
	-> (new i16(a)) -= b;


public operator - (cref a: __u8, cref b: i16): i16
	-> (new i16(a)) -= b;



public operator * (cref a: i16, cref b): i16
	-> (new a) *= b;

public operator * (cref a: __i16, cref b: i16): i16
	-> (new i16(a)) *= b;

public operator * (cref a: __i8, cref b: i16): i16
	-> (new i16(a)) *= b;


public operator * (cref a: __u8, cref b: i16): i16
	-> (new i16(a)) *= b;



public operator / (cref a: i16, cref b): i16
	-> (new a) /= b;

public operator / (cref a: __i16, cref b: i16): i16
	-> (new i16(a)) /= b;

public operator / (cref a: __i8, cref b: i16): i16
	-> (new i16(a)) /= b;


public operator / (cref a: __u8, cref b: i16): i16
	-> (new i16(a)) /= b;