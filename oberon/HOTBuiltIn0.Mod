MODULE HOTBuiltIn0;	(** prk  **)

PROCEDURE TestCAPCHR*;
VAR  i: LONGINT;
BEGIN
	ASSERT( CAP("a") = "A" );
	i := ORD("a");
	WHILE i <= ORD("z") DO
		ASSERT( CAP( CHR(i) ) = CHR( i - ORD("a") + ORD("A") ) );
		INC(i)
	END
END TestCAPCHR;

PROCEDURE TestODD*;
VAR i: LONGINT; b: BOOLEAN;
BEGIN
	i := 1;
	ASSERT( ODD(i) );
	i := 0;
	ASSERT( ~ODD(i) );
	i := 1;
	b := ODD(i);
	ASSERT( b );
END TestODD;

PROCEDURE TestABS*;
CONST	c1 = 1;  c2 = -1;  c3 = 1234;  c4 = -1234;
VAR i: LONGINT;  j: INTEGER;  k: SHORTINT;
BEGIN
	i := c1;	ASSERT( ABS(i) = c1, 101);
	i := c2;	ASSERT( ABS(i) = -c2, 102);
	i := c3;	ASSERT( ABS(i) = c3, 103);
	i := c4;	ASSERT( ABS(i) = -c4, 104);

	j := c1;	ASSERT( ABS(j) = c1, 111);
	j := c2;	ASSERT( ABS(j) = -c2, 112);
	j := c3;	ASSERT( ABS(j) = c3, 113);
	j := c4;	ASSERT( ABS(j) = -c4, 114);

	k := c1;	ASSERT( ABS(k) = c1, 121);
	k := c2;	ASSERT( ABS(k) = -c2, 122);
END TestABS;

PROCEDURE TestShift*;
VAR i, j: LONGINT;
BEGIN
	i := 17;
	ASSERT(ASH(i, 1) = 34, 101);
	ASSERT(ASH(i, -1) = 8, 102);
	j := 1;  ASSERT(ASH(i, j) = 34, 103);
	j := -1;  ASSERT(ASH(i, j) = 8, 104);
	
	i := -17;
	ASSERT(ASH(i, 1) = -34, 111);
	ASSERT(ASH(i, -1) = -9, 112);
	j := 1;  ASSERT(ASH(i, j) = -34, 113);
	j := -1;  ASSERT(ASH(i, j) = -9, 114);

END TestShift;

PROCEDURE Test*;
BEGIN
	TestCAPCHR;
	TestODD;
	TestABS;
	TestShift;
END Test;


END HOTBuiltIn0.
