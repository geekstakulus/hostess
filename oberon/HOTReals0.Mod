MODULE HOTReals0;	(** prk  **)


PROCEDURE Test0;
VAR x, y: REAL;  w, z: LONGREAL; s: SHORTINT; i: INTEGER; l: LONGINT;
BEGIN
	y := x;
	z := w;
	y := s;
	y := i;
	y := l;
	z := s;
	z := i;
	z := l;
	l := ENTIER(x);
	l := ENTIER(z);
END Test0;

PROCEDURE Test1;
VAR x, y, z: REAL;
BEGIN
	z := x+y;
	z := x-y;
	z := x-(y-z);
END Test1;

PROCEDURE Test2;
VAR x, y, z: REAL;
BEGIN
	z := x*y;
	z := x/y;
	z := x/(z+y);
END Test2;

PROCEDURE Test3;
VAR  x: REAL;  y: LONGREAL;
BEGIN
	x := 0;
	x := 1.2;
	y := 4.5;
	y := 4.5;
END Test3;

PROCEDURE Test4;
VAR  x, z: REAL; y: LONGREAL;
	PROCEDURE f(): REAL;
	VAR z: REAL;
	BEGIN	RETURN z;
	END f;
BEGIN
	x := f();
	y := f();
	x := x+f();
	x := x+z+f()+x+z;
END Test4;

PROCEDURE Test5;
VAR x, y: REAL;  z: LONGREAL;
	PROCEDURE f(local: REAL);
	BEGIN
	END f;
	
	PROCEDURE g(local: LONGREAL);
	BEGIN
	END g;
BEGIN
	f(x);
	f(x+y);
	g(z);
	g(z+z);
END Test5;

PROCEDURE Test6;
VAR x, y: REAL;
BEGIN
	IF x < y THEN HALT(99) END;
	IF (x+x) < y THEN HALT(99) END;
	IF (x+x) < (y+y) THEN HALT(99) END;
	
	ASSERT(x = y);
END Test6;

PROCEDURE Test7*;
VAR r: REAL;

	PROCEDURE P(lr: LONGREAL);
	BEGIN
		ASSERT(r = lr);
	END P;
	
BEGIN
	r := 0; P(r);
	r := 1; P(r);
	r := 2; P(r);
	r := 0.5; P(r)
END Test7;

PROCEDURE Test8*;
VAR  x, y: REAL;
BEGIN
	x := 1;
	y := 2;
	ASSERT(x < y);
END Test8;

PROCEDURE Test9*;
VAR x0, x1: REAL;
BEGIN
	x0 := 1; x1 := 2;
	ASSERT(x0-x1 = -1, 100);	(*ST - Mem *)
	ASSERT(x0 - (x1+x1) = -3, 101);	(* ST(0) - ST(i) *)
	ASSERT((x0+x0) - (x1 + x1) = -2, 102);	(* ST(i) - ST(0) *)
END Test9;

PROCEDURE Test*;
BEGIN
	Test7; Test8; Test9
END Test;


END HOTReals0.
