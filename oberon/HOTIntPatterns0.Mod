MODULE HOTIntPatterns0;	(** prk  **)

VAR
	c: SHORTINT;

PROCEDURE Test1*;	(*Stength Reduction*)
VAR a, b, c: LONGINT;
BEGIN
	b := 7;
	a := b * 1;	ASSERT(a = 7, 100);
	a := b * 2;	ASSERT(a = 14, 101);
	a := b * 3;	ASSERT(a = 21, 102);
	a := b * 4;	ASSERT(a = 28, 103);
END Test1;

PROCEDURE Test2*;	(*Stength Reduction*)
VAR a, b, c: LONGINT;
BEGIN
	b := 12;
	a := b DIV 1;	ASSERT(a = 12, 100);
	a := b DIV 2;	ASSERT(a = 6, 101);
	a := b DIV 3;	ASSERT(a = 4, 102);
	a := b DIV 4;	ASSERT(a = 3, 103)
END Test2;

PROCEDURE Test3*;
VAR  i: LONGINT; a: ARRAY 1 OF CHAR;
BEGIN
	c := 0; i := 0;
	a[i] := CHR((c DIV 100) MOD 10 + ORD("0"));
	ASSERT(a[0] = "0");
END Test3;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test3
END Test;


END HOTIntPatterns0.
