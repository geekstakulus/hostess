MODULE HOTSysBuiltIn0FOR;	(** prk  **)


IMPORT
		SYSTEM, Texts;

PROCEDURE TestAddresses*;
CONST  c1 = 12563478H;  c2 = 78563412H;
VAR adr, i, j: LONGINT; 
BEGIN
	adr := SYSTEM.ADR(i);
	
	i := c1;
	SYSTEM.GET(adr, j);
	ASSERT(j = c1, 100);
	
	j := c2;
	SYSTEM.PUT(adr, j);
	ASSERT(i = c2, 101);
END TestAddresses;

PROCEDURE TestCopy*;
CONST
	c01 = "Test1";  c02 = "123";	(* <= 8 *)
	c10 = "12345678"; c10a = "1234567";		(* > 8 *)
	c11 = "testTEST";  c11a = "testTES";
VAR a, b: ARRAY 8 OF CHAR; c: ARRAY 16 OF CHAR;
BEGIN
	(* src <= dst *)
	COPY(c01, a);  ASSERT(a = c01, 110);
	b := c02;  COPY(b, a);  ASSERT(a = c02, 111);
	
	(* src > dst *)
	COPY(c10, a);  ASSERT(a = c10a, 202);
	c := c11;  COPY(c, a);  ASSERT(a = c11a, 203);
END TestCopy;

PROCEDURE TestMove*;
VAR  a, b: LONGINT;
BEGIN
	a := 27;
	SYSTEM.MOVE(SYSTEM.ADR(a), SYSTEM.ADR(b), 4);	ASSERT(b = a, 120);
	a := 31;
	SYSTEM.MOVE(SYSTEM.ADR(a), SYSTEM.ADR(b), 4);	ASSERT(b = a, 121);
END TestMove;

PROCEDURE TestPort;
VAR  ofs: LONGINT;  c: CHAR;
BEGIN
	SYSTEM.PORTOUT(70H, 8FX);
	SYSTEM.PORTOUT(70H, CHR(ofs));
	SYSTEM.PORTIN(71H, c);
END TestPort;

PROCEDURE TestInt;
BEGIN
	SYSTEM.CLI;
	SYSTEM.STI
END TestInt;

PROCEDURE TestGet*;
VAR  x, val: LONGINT;  s: SHORTINT;  i: INTEGER;  l: LONGINT;
BEGIN
	x := SYSTEM.ADR(val);
	val := 12345678H;
	s := SYSTEM.GET8(x);	ASSERT(s = 78H, 130);
	i := SYSTEM.GET16(x);	ASSERT(i = 5678H, 131);
	l := SYSTEM.GET32(x);	ASSERT(l = 12345678H, 132);
	
	SYSTEM.PUT16(x, s);	ASSERT(val = 12340078H, 133);
	SYSTEM.PUT32(x, s);	ASSERT(val = 78H, 134);
END TestGet;

PROCEDURE TestTypeCode*;
VAR l: LONGINT;
BEGIN
	l := SYSTEM.TYPECODE(Texts.Text);
END TestTypeCode;

PROCEDURE TestReg*;
CONST  av = 1;  bv = 2;  cv = 3;  dv = 4;
VAR a, b, c, d: LONGINT;
BEGIN
	SYSTEM.PUTREG(SYSTEM.EAX, SYSTEM.VAL(LONGINT, av));
	SYSTEM.PUTREG(SYSTEM.EBX, SYSTEM.VAL(LONGINT, bv));
	SYSTEM.PUTREG(SYSTEM.ECX, SYSTEM.VAL(LONGINT, cv));
	SYSTEM.PUTREG(SYSTEM.EDX, SYSTEM.VAL(LONGINT, dv));

	SYSTEM.GETREG(SYSTEM.EAX, a);
	SYSTEM.GETREG(SYSTEM.EBX, b);  
	SYSTEM.GETREG(SYSTEM.ECX, c);  
	SYSTEM.GETREG(SYSTEM.EDX, d); 
	ASSERT(a=av, 140);
	ASSERT(b=bv, 141);
	ASSERT(c=cv, 142);
	ASSERT(d=dv, 143);
END TestReg;

PROCEDURE Test1*;
TYPE	Pixel = ARRAY 4 OF CHAR;  Mega = ARRAY 36 OF CHAR;
VAR pix, pix2: Pixel;  x: LONGINT;  meg, meg2: Mega;
BEGIN
	pix2[0] := 04X; pix2[1] := 08X; pix2[2] := 10X; pix2[3] := 12X;
	x := SYSTEM.ADR(pix2);
	pix :=  SYSTEM.VAL(Pixel, SYSTEM.GET32(x));
	ASSERT(pix[0] = 04X, 150);
	ASSERT(pix[1] = 08X, 151);
	ASSERT(pix[2] = 10X, 152);
	ASSERT(pix[3] = 12X, 153);
	
	FOR x := 0 TO 35 DO  meg2[x] := CHR(x)  END;
	meg := meg2;
	FOR x := 0 TO 35 DO
		ASSERT(meg[x] = meg2[x], 154)
	END
END Test1;

PROCEDURE Test*;
BEGIN
	TestAddresses;  TestCopy;  TestMove;  TestGet;  TestTypeCode;	TestReg;
	Test1;
END Test;



END HOTSysBuiltIn0FOR.
