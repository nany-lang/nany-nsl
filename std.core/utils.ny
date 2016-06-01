// Nany - https://nany.io
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
//
/// \file    utils.ny
/// \brief   Misc
/// \ingroup std.core



//! Abort the program if assertion is false
#[builtinalias: assert] public func assert(expr: cref bool);

//! Abort the program if assertion is false
#[builtinalias: assert, suggest: false] public func assert(expr: __bool);




// -*- mode: nany;-*-
// vim: set filetype=nany:
