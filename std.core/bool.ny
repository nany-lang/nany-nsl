// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
// \file    bool.ny
// \brief   Implementation of the class bool
// \ingroup std.core




// \brief   Boolean datatype
// \ingroup std.core
class bool
{
	operator new;
	operator new(self pod: __bool) {}

	var pod: __bool = __false;
}



[[shortcircuit: __false, builtinalias: and]]
public operator and (a: __bool, b: __bool): __bool;

[[shortcircuit: __false, builtinalias: and]]
public operator and (cref a: bool, cref b: bool): ref bool;

[[shortcircuit: __false, builtinalias: and]]
public operator and (a: __bool, cref b: bool): ref bool;

[[shortcircuit: __false, builtinalias: and]]
public operator and (cref a: bool, b: __bool): ref bool;



[[shortcircuit: __true, builtinalias: or]]
public operator or (a: __bool, b: __bool): __bool;

[[shortcircuit: __true, builtinalias: or]]
public operator or (cref a: bool, cref b: bool): ref bool;

[[shortcircuit: __true, builtinalias: or]]
public operator or (a: __bool, cref b: bool): ref bool;

[[shortcircuit: __true, builtinalias: or]]
public operator or (cref a: bool, b: __bool): ref bool;
