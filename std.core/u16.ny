// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    u16.ny
/// \brief   Implementation of the class u16, Unsigned integer with width of exactly 16 bits
/// \ingroup std.core
/// \important THIS FILE IS AUTOMATICALLY GENERATED (see `nsl-core-generator.cpp`)




/// \brief   Unsigned integer with width of exactly 16 bits
/// \ingroup std.core
public class u16
{
	operator new;
	operator new (self pod: __u16);
	operator new (self pod: __u8);


	operator ++self: ref u16
	{
		pod = !!nany_inc_u16(pod);
		return self;
	}

	operator self++: ref u16
	{
		var tmp = self;
		pod = !!nany_inc_u16(pod);
		return tmp;
	}

	operator --self: ref u16
	{
		pod = !!nany_dec_u16(pod);
		return self;
	}

	operator self--: ref u16
	{
		var tmp = self;
		pod = !!nany_dec_u16(pod);
		return tmp;
	}


	operator += (cref x: u16): ref u16
	{
		pod = !!nany_add_u16_u16(pod, x.pod);
		return self;
	}

	operator += (cref x: __u16): ref u16
	{
		pod = !!nany_add_u16_u16(pod, x);
		return self;
	}

	operator += (cref x: u8): ref u16
	{
		pod = !!nany_add_u16_u8(pod, x.pod);
		return self;
	}

	operator += (cref x: __u8): ref u16
	{
		pod = !!nany_add_u16_u8(pod, x);
		return self;
	}


	operator -= (cref x: u16): ref u16
	{
		pod = !!nany_sub_u16_u16(pod, x.pod);
		return self;
	}

	operator -= (cref x: __u16): ref u16
	{
		pod = !!nany_sub_u16_u16(pod, x);
		return self;
	}

	operator -= (cref x: u8): ref u16
	{
		pod = !!nany_sub_u16_u8(pod, x.pod);
		return self;
	}

	operator -= (cref x: __u8): ref u16
	{
		pod = !!nany_sub_u16_u8(pod, x);
		return self;
	}


	operator *= (cref x: u16): ref u16
	{
		pod = !!nany_mult_u16_u16(pod, x.pod);
		return self;
	}

	operator *= (cref x: __u16): ref u16
	{
		pod = !!nany_mult_u16_u16(pod, x);
		return self;
	}

	operator *= (cref x: u8): ref u16
	{
		pod = !!nany_mult_u16_u8(pod, x.pod);
		return self;
	}

	operator *= (cref x: __u8): ref u16
	{
		pod = !!nany_mult_u16_u8(pod, x);
		return self;
	}


	operator /= (cref x: u16): ref u16
	{
		pod = !!nany_div_u16_u16(pod, x.pod);
		return self;
	}

	operator /= (cref x: __u16): ref u16
	{
		pod = !!nany_div_u16_u16(pod, x);
		return self;
	}

	operator /= (cref x: u8): ref u16
	{
		pod = !!nany_div_u16_u8(pod, x.pod);
		return self;
	}

	operator /= (cref x: __u8): ref u16
	{
		pod = !!nany_div_u16_u8(pod, x);
		return self;
	}


	//! The real integer representation
	var pod: __u16 = 0u16;
}









public operator == (a: __u16, b: __u16): bool
	-> !!nany_is_equal_u16__u16(a, b);

public operator == (cref a: u16, cref b: u16): bool
	-> a.pod == b.pod;

public operator == (cref a: u16, cref b: __u16): bool
	-> a.pod == b;

public operator == (cref a: __u16, cref b: u16): bool
	-> a == b.pod;


public operator == (a: __u16, b: __u8): bool
	-> !!nany_is_equal_u16__u8(a, b);

public operator == (cref a: u16, cref b: u8): bool
	-> a.pod == b.pod;

public operator == (cref a: u16, cref b: __u8): bool
	-> a.pod == b;

public operator == (cref a: __u16, cref b: u8): bool
	-> a == b.pod;




public operator != (a: __u16, b: __u16): bool
	-> !!nany_is_not_equal_u16__u16(a, b);

public operator != (cref a: u16, cref b: u16): bool
	-> a.pod != b.pod;

public operator != (cref a: u16, cref b: __u16): bool
	-> a.pod != b;

public operator != (cref a: __u16, cref b: u16): bool
	-> a != b.pod;


public operator != (a: __u16, b: __u8): bool
	-> !!nany_is_not_equal_u16__u8(a, b);

public operator != (cref a: u16, cref b: u8): bool
	-> a.pod != b.pod;

public operator != (cref a: u16, cref b: __u8): bool
	-> a.pod != b;

public operator != (cref a: __u16, cref b: u8): bool
	-> a != b.pod;




public operator < (a: __u16, b: __u16): bool
	-> !!nany_is_less_u16__u16(a, b);

public operator < (cref a: u16, cref b: u16): bool
	-> a.pod < b.pod;

public operator < (cref a: u16, cref b: __u16): bool
	-> a.pod < b;

public operator < (cref a: __u16, cref b: u16): bool
	-> a < b.pod;


public operator < (a: __u16, b: __u8): bool
	-> !!nany_is_less_u16__u8(a, b);

public operator < (cref a: u16, cref b: u8): bool
	-> a.pod < b.pod;

public operator < (cref a: u16, cref b: __u8): bool
	-> a.pod < b;

public operator < (cref a: __u16, cref b: u8): bool
	-> a < b.pod;




public operator <= (a: __u16, b: __u16): bool
	-> !!nany_is_less_or_equal_u16__u16(a, b);

public operator <= (cref a: u16, cref b: u16): bool
	-> a.pod <= b.pod;

public operator <= (cref a: u16, cref b: __u16): bool
	-> a.pod <= b;

public operator <= (cref a: __u16, cref b: u16): bool
	-> a <= b.pod;


public operator <= (a: __u16, b: __u8): bool
	-> !!nany_is_less_or_equal_u16__u8(a, b);

public operator <= (cref a: u16, cref b: u8): bool
	-> a.pod <= b.pod;

public operator <= (cref a: u16, cref b: __u8): bool
	-> a.pod <= b;

public operator <= (cref a: __u16, cref b: u8): bool
	-> a <= b.pod;




public operator > (a: __u16, b: __u16): bool
	-> !!nany_is_greater_u16__u16(a, b);

public operator > (cref a: u16, cref b: u16): bool
	-> a.pod > b.pod;

public operator > (cref a: u16, cref b: __u16): bool
	-> a.pod > b;

public operator > (cref a: __u16, cref b: u16): bool
	-> a > b.pod;


public operator > (a: __u16, b: __u8): bool
	-> !!nany_is_greater_u16__u8(a, b);

public operator > (cref a: u16, cref b: u8): bool
	-> a.pod > b.pod;

public operator > (cref a: u16, cref b: __u8): bool
	-> a.pod > b;

public operator > (cref a: __u16, cref b: u8): bool
	-> a > b.pod;




public operator >= (a: __u16, b: __u16): bool
	-> !!nany_is_greater_or_equal_u16__u16(a, b);

public operator >= (cref a: u16, cref b: u16): bool
	-> a.pod >= b.pod;

public operator >= (cref a: u16, cref b: __u16): bool
	-> a.pod >= b;

public operator >= (cref a: __u16, cref b: u16): bool
	-> a >= b.pod;


public operator >= (a: __u16, b: __u8): bool
	-> !!nany_is_greater_or_equal_u16__u8(a, b);

public operator >= (cref a: u16, cref b: u8): bool
	-> a.pod >= b.pod;

public operator >= (cref a: u16, cref b: __u8): bool
	-> a.pod >= b;

public operator >= (cref a: __u16, cref b: u8): bool
	-> a >= b.pod;




public operator + (cref a: u16, cref b): u16
	-> (new a) += b;

public operator + (cref a: __u16, cref b: u16): u16
	-> (new u16(a)) += b;

public operator + (cref a: __u8, cref b: u16): u16
	-> (new u16(a)) += b;



public operator - (cref a: u16, cref b): u16
	-> (new a) -= b;

public operator - (cref a: __u16, cref b: u16): u16
	-> (new u16(a)) -= b;

public operator - (cref a: __u8, cref b: u16): u16
	-> (new u16(a)) -= b;



public operator * (cref a: u16, cref b): u16
	-> (new a) *= b;

public operator * (cref a: __u16, cref b: u16): u16
	-> (new u16(a)) *= b;

public operator * (cref a: __u8, cref b: u16): u16
	-> (new u16(a)) *= b;



public operator / (cref a: u16, cref b): u16
	-> (new a) /= b;

public operator / (cref a: __u16, cref b: u16): u16
	-> (new u16(a)) /= b;

public operator / (cref a: __u8, cref b: u16): u16
	-> (new u16(a)) /= b;