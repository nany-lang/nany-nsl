// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \brief   Extra utilities
/// \ingroup std.core



/*!
** \brief Abort the program if assertion is false
*/
#[__nanyc_builtinalias: assert]
public func assert(expr: cref bool);

/*!
** \brief Abort the program if assertion is false
*/
#[__nanyc_builtinalias: assert, nosuggest]
public func assert(expr: __bool);




/*!
** \brief Print a string to stdout
*/
public func print(cref text: string)
	-> !!yuni.string.cout(text.pod);

/*!
** \brief Print to stdout any value convertible to a string
*/
public func print(cref value)
	-> !!yuni.string.cout((new string(value)).pod);




public operator + (cref lhs, cref rhs): any
	-> (new typeof(lhs) (lhs)) += rhs;

public operator - (cref lhs, cref rhs): any
	-> (new typeof(lhs) (lhs)) -= rhs;

public operator * (cref lhs, cref rhs): any
	-> (new typeof(lhs) (lhs)) *= rhs;

public operator / (cref lhs, cref rhs): any
	-> (new typeof(lhs) (lhs)) /= rhs;





// -*- mode: nany;-*-
// vim: set filetype=nany:
