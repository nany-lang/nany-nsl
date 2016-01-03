class bool
{
	operator new {}
	operator new(self builtin: __bool) {}

	var builtin = __false;
}



[[shortcircuit: __false, builtinalias: and]]
public operator and (a: __bool, b: __bool): __bool;

[[shortcircuit: __false, builtinalias: and]]
public operator and (cref a: bool, cref b: bool): __bool;


[[shortcircuit: __true, builtinalias: or]]
public operator or (a: __bool, b: __bool): __bool;

[[shortcircuit: __true, builtinalias: or]]
public operator or (cref a: bool, cref b: bool): __bool;
