MODULE HOTDynArr0;	(** prk  **)

CONST
	Dim0 = 32;
	Dim1 = 16;
	
TYPE
	Node = POINTER TO RECORD 
		a: LONGINT
	END;

PROCEDURE F1(i: LONGINT): CHAR;
BEGIN
	RETURN CHR(i+10)
END F1;

PROCEDURE F2(i, j: LONGINT): CHAR;
BEGIN
	RETURN CHR(i*16+j)
END F2;

PROCEDURE Check1(a: ARRAY OF CHAR);
VAR  i: LONGINT;
BEGIN
	FOR i := 0 TO Dim0-1 DO  ASSERT(a[i] = F1(i))  END
END Check1;

PROCEDURE Check1V(VAR a: ARRAY OF CHAR);
VAR  i: LONGINT;
BEGIN
	FOR i := 0 TO Dim0-1 DO  ASSERT(a[i] = F1(i))  END
END Check1V;

PROCEDURE Check2(a: ARRAY OF ARRAY OF CHAR);
VAR  i, j: LONGINT;
BEGIN
	FOR i := 0 TO Dim1-1 DO
		FOR j := 0 TO Dim0-1 DO
			ASSERT(a[i, j] = F2(i,j))
		END
	END
END Check2;

PROCEDURE Check2V(VAR a: ARRAY OF ARRAY OF CHAR);
VAR  i, j: LONGINT;
BEGIN
	FOR i := 0 TO Dim1-1 DO
		FOR j := 0 TO Dim0-1 DO
			ASSERT(a[i, j] = F2(i,j))
		END
	END
END Check2V;

PROCEDURE Test1*;
VAR  i: LONGINT;  a, b: POINTER TO ARRAY 32 OF CHAR;
BEGIN
	NEW(a);
	FOR i := 0 TO Dim0-1 DO  a[i] := F1(i)  END;
	Check1(a^);  Check1V(a^);
	b := a;
	a[2] := 99X;
	ASSERT(b[2] = a[2], 100);
END Test1;

PROCEDURE Test2*;
VAR  i: LONGINT;  a, b: POINTER TO ARRAY OF CHAR;
BEGIN
	NEW(a, Dim0);
	FOR i := 0 TO Dim0-1 DO  a[i] := F1(i)  END;
	Check1(a^);  Check1V(a^);
	b := a;
	a[2] := 99X;
	ASSERT(b[2] = a[2], 100);
END Test2;
(*
PROCEDURE Test3*;
VAR  i, j: LONGINT;  a, b: POINTER TO ARRAY 16 OF ARRAY 32 OF CHAR;
BEGIN
	NEW(a);
	FOR i := 0 TO Dim1-1 DO
		FOR j := 0 TO Dim0-1 DO  a[i, j] := F2(i, j)  END
	END;
	Check2(a^);  Check2V(a^);
	b := a;
	a[2, 3] := 99X;
	ASSERT(b[2, 3] = a[2, 3], 100);
END Test3;
*)

PROCEDURE Test4*;
VAR a: POINTER TO ARRAY OF CHAR;
BEGIN
	NEW(a, 32);
	ASSERT(LEN(a^) = 32);
	NEW(a, LEN(a^));
	ASSERT(LEN(a^) = 32);
END Test4;

PROCEDURE Test5*;
VAR i: LONGINT; a: POINTER TO ARRAY OF Node;
BEGIN
	NEW(a, 32);
	FOR i := 0 TO 31 DO
		NEW(a[i])
	END;
END Test5;

PROCEDURE Test*;
BEGIN
	Test1;  Test2;  Test4; Test5
END Test;


END HOTDynArr0.
