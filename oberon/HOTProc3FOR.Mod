MODULE HOTProc3FOR;	(** prk  **)


TYPE
	proc = PROCEDURE (): LONGINT;
	procgen = PROCEDURE (i: LONGINT): proc;


VAR
	gen: procgen;
	p: proc;
	pa: ARRAY 3 OF proc;
	ga: ARRAY 3 OF procgen;

(* --- Procs --- *)

PROCEDURE P1(): LONGINT;
BEGIN RETURN 1
END P1;

PROCEDURE P2(): LONGINT;
BEGIN RETURN 2
END P2;

PROCEDURE P3(): LONGINT;
BEGIN RETURN 3
END P3;

PROCEDURE Gen1(i: LONGINT): proc;
VAR p: proc;
BEGIN
	IF i = 1 THEN  p := P1
	ELSIF i = 2 THEN p := P2
	ELSIF i = 3 THEN p := P3
	END;
	RETURN p;
END Gen1;

PROCEDURE Gen2(i: LONGINT): proc;
BEGIN
	IF i = 1 THEN  RETURN P1
	ELSIF i = 2 THEN RETURN P2
	ELSIF i = 3 THEN RETURN P3
	END
END Gen2;

PROCEDURE Gen3(i: LONGINT): proc;
BEGIN	RETURN pa[i-1]
END Gen3;

PROCEDURE Check(p: proc; val, idx: LONGINT);
BEGIN  ASSERT(p() = val)
END Check;

PROCEDURE Test0*;
BEGIN
	Check(Gen1(1), 1, 1);
	Check(Gen1(2), 2, 2);
	Check(Gen1(3), 3, 3);
	Check(Gen2(1), 1, 4);
	Check(Gen2(2), 2, 5);
	Check(Gen2(3), 3, 6);
	Check(Gen3(1), 1, 7);
	Check(Gen3(2), 2, 8);
	Check(Gen3(3), 3, 9);
END Test0;

PROCEDURE Test1*;
BEGIN
	Check(pa[0], 1, 1);
	Check(pa[1], 2, 2);
	Check(pa[2], 3, 3);
END Test1;

PROCEDURE Test2*;
BEGIN
	ASSERT(pa[0]() = 1);
	ASSERT(pa[1]() = 2);
	ASSERT(pa[2]() = 3);
END Test2;

PROCEDURE Test3*;
BEGIN
	Check(ga[0](1), 1, 1);
	Check(ga[0](2), 2, 2);
	Check(ga[0](3), 3, 3);
	Check(ga[1](1), 1, 4);
	Check(ga[1](2), 2, 5);
	Check(ga[1](3), 3, 6);
	Check(ga[2](1), 1, 7);
	Check(ga[2](2), 2, 8);
	Check(ga[2](3), 3, 9);
END Test3;

PROCEDURE Test4*;
VAR i, j: LONGINT;
BEGIN
	FOR i := 0 TO 2 DO
		FOR j := 1 TO 3 DO
			Check(ga[i](j), j, (i+1)*(j+1)-1)
		END
	END
END Test4;

PROCEDURE Test5;
VAR i: LONGINT;
BEGIN
	FOR i := 0 TO 3*3 -1 DO
		Check(ga[i DIV 3](1 + i MOD 3), 1 + i MOD 3, i)
	END
END Test5;


PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2; Test3; Test4; Test5
END Test;

BEGIN
	pa[0] := P1;
	pa[1] := P2;
	pa[2] := P3;
	ga[0] := Gen1;
	ga[1] := Gen2;
	ga[2] := Gen3;

END HOTProc3FOR.
