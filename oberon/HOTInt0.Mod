MODULE HOTInt0;	(** prk  **)

VAR
	a = 1;
	b = 100;
	c = 10000;
	d = 1000000;
	
	ha = 1H;
	hb = 100H;
	hc = 10000H;
	hd = 0FFFFFFFFH;

PROCEDURE CheckS(a, b: SHORTINT);
BEGIN  ASSERT(a = b)
END CheckS;

PROCEDURE CheckI(a, b: INTEGER);
BEGIN  ASSERT(a = b)
END CheckI;

PROCEDURE CheckL(a, b: LONGINT);
BEGIN  ASSERT(a = b)
END CheckL;

PROCEDURE Test0*;	(*SHORTINT tests*)
VAR  a, b, c: SHORTINT;
BEGIN
	CheckS(1, 1);
	CheckS(-1, -1);
	a := 13; b := 13;
	CheckS(a, b); CheckS(a, 13); CheckS(13, a);
	
	a := 7;  b := -3;
	
	c := a + b;
	CheckS(c, 4); CheckS(c, a + b);
	
	c := a - b;
	CheckS(c, 10); CheckS(c, a - b);
	
	c := a * b;
	CheckS(c, -21); CheckS(c, a * b);
	
	b := 3;  (* DIV MOD defined only for positive integers *)
	c := a DIV b;
	CheckS(c, 2); CheckS(c, a DIV b);
	
	c := a MOD b;
	CheckS(c, 1); CheckS(c a, MOD b);
END Test0;

PROCEDURE Test1*;	(*INTEGER tests*)
VAR  a, b, c: INTEGER;
BEGIN
	CheckI(1, 1);
	CheckI(-1, -1);
	a := 13; b := 13;
	CheckI(a, b); CheckI(a, 13); CheckI(13, a);
	
	a := 7;  b := -3;
	
	c := a + b;
	CheckI(c, 4); CheckI(c, a + b);
	
	c := a - b;
	CheckI(c, 10); CheckI(c, a - b);
	
	c := a * b;
	CheckI(c, -21); CheckI(c, a * b);
	
	b := 3;  (* DIV MOD defined only for positive integers *)
	c := a DIV b;
	CheckI(c, 2); CheckI(c, a DIV b);
	
	c := a MOD b;
	CheckI(c, 1); CheckI(c a, MOD b);
END Test1;

PROCEDURE Test2*;	(*LONGINT tests*)
VAR  a, b, c: LONGINT;
BEGIN
	CheckL(1, 1);
	CheckL(-1, -1);
	a := 13; b := 13;
	CheckL(a, b); CheckL(a, 13); CheckL(13, a);
	
	a := 7;  b := -3;
	
	c := a + b;
	CheckL(c, 4); CheckL(c, a + b);
	
	c := a - b;
	CheckL(c, 10); CheckL(c, a - b);
	
	c := a * b;
	CheckL(c, -21); CheckL(c, a * b);
	
	b := 3;  (* DIV MOD defined only for positive integers *)
	c := a DIV b;
	CheckL(c, 2); CheckL(c, a DIV b);
	
	c := a MOD b;
	CheckL(c, 1); CheckL(c a, MOD b);
END Test2;

PROCEDURE Test3*;	(*conversions*)
VAR s: SHORTINT; i: INTEGER; l: LONGINT;
BEGIN
	s := 2; i := 3; l := 5;
	
	i := s;
	CheckI(s, i);
	CheckL(s, i);
	
	l := i
	CheckL(i, l);
	l := s;
	CheckL(s, l)
END Test3;

PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2; Test3;
END Test;

END HOTInt0.
