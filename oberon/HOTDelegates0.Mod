MODULE HOTDelegates0;	(** prk  **)

IMPORT
		SYSTEM;

TYPE
	Delegate0* = PROCEDURE;
	Delegate1* = PROCEDURE(val: LONGINT);
	
	Class* = OBJECT
		VAR
			val: LONGINT;
		
		PROCEDURE M*;
		BEGIN  value := val
		END M;
		
		PROCEDURE Q(v: LONGINT);
		BEGIN  value := val * v
		END Q;
		
		PROCEDURE & Init(v0: LONGINT);
		BEGIN  val := v0
		END Init;
	END Class;

VAR
	(* value is set by calling delegate0/delegate1 *)
	value*: LONGINT;
	delegate0*: Delegate0;
	delegate1*: Delegate1;
	s3, s4: Class;	

PROCEDURE Set0*;
BEGIN value := 0
END Set0;

PROCEDURE Set1*;
BEGIN value := 1
END Set1;

PROCEDURE Set2x*(v: LONGINT);
BEGIN value := v * 2
END Set2x;

PROCEDURE Set3x*(v: LONGINT);
BEGIN value := v * 3
END Set3x;

PROCEDURE CallDelegate0(p: Delegate0);
BEGIN p
END CallDelegate0;

PROCEDURE CallDelegate1(p: Delegate1;  val: LONGINT);
BEGIN p(val)
END CallDelegate1;

PROCEDURE MakeDelegate00(val: LONGINT): Delegate0;
BEGIN
	IF val = 0 THEN
		RETURN Set0
	ELSIF val = 1 THEN
		RETURN Set1
	ELSIF val = 3 THEN
		RETURN s3.M
	ELSIF val = 4 THEN
		RETURN s4.M
	END
END MakeDelegate00;

PROCEDURE MakeDelegate01(val: LONGINT): Delegate0;
VAR res: Delegate0;
BEGIN
	IF val = 0 THEN
		res := Set0
	ELSIF val = 1 THEN
		res := Set1
	ELSIF val = 3 THEN
		res := s3.M
	ELSIF val = 4 THEN
		res := s4.M
	END;
	RETURN res
END MakeDelegate01;

PROCEDURE Test0*;
BEGIN
	value := -1;
(*	covered by MakeDelegates01
(* assign delegate to local var and call it*)
	delegate0 := Set0;
	delegate0;
	ASSERT(value = 0, 500);

	delegate0 := Set1;
	delegate0;
	ASSERT(value = 1, 501);

	delegate0 := s3.M;
	delegate0;
	ASSERT(value = 3, 502);

	delegate0 := s4.M;
	delegate0;
	ASSERT(value = 4, 503);
*)
(* pass delegate as parameter (direct) *)
	CallDelegate0(Set0);
	ASSERT(value = 0, 510);

	CallDelegate0(Set1);
	ASSERT(value = 1, 511);

	CallDelegate0(s3.M);
	ASSERT(value = 3, 512);

	CallDelegate0(s4.M);
	ASSERT(value = 4, 513);

(* pass delegate as parameter (indirect) *)
	delegate0 := Set0;
	CallDelegate0(delegate0);
	ASSERT(value = 0, 520);

	delegate0 := Set1;
	CallDelegate0(delegate0);
	ASSERT(value = 1, 521);

	delegate0 := s3.M;
	CallDelegate0(delegate0);
	ASSERT(value = 3, 522);

	delegate0 := s4.M;
	CallDelegate0(delegate0);
	ASSERT(value = 4, 523);

(* use function to generate delegate *)
	delegate0 := MakeDelegate00(0);
	delegate0; ASSERT(value = 0, 530);

	delegate0 := MakeDelegate00(1);
	delegate0; ASSERT(value = 1, 531);

	delegate0 := MakeDelegate00(3);
	delegate0;
	ASSERT(value = 3, 532);

	delegate0 := MakeDelegate00(4);
	delegate0; ASSERT(value = 4, 533);

	delegate0 := MakeDelegate01(0);
	delegate0; ASSERT(value = 0, 540);

	delegate0 := MakeDelegate01(1);
	delegate0; ASSERT(value = 1, 541);

	delegate0 :=MakeDelegate01(3);
	delegate0; ASSERT(value = 3, 542);

	delegate0 := MakeDelegate01(4);
	delegate0; ASSERT(value = 4, 543);
	
	CallDelegate0(MakeDelegate00(0)); ASSERT(value = 0, 550);
	CallDelegate0(MakeDelegate00(1)); ASSERT(value = 1, 551);
	CallDelegate0(MakeDelegate00(3)); ASSERT(value = 3, 552);
	CallDelegate0(MakeDelegate00(4)); ASSERT(value = 4, 553);
END Test0;

PROCEDURE Test1*;
VAR s5, s6: Class;
BEGIN
	value := -1;
	
	delegate1 := Set2x;
	delegate1(27);
	ASSERT(value = 27*2, 600);

	delegate1 := Set3x;
	delegate1(29);
	ASSERT(value = 29*3, 601);

	NEW(s5, 5); NEW(s6, 6);
	delegate1 := s5.Q;
	delegate1(31);
	ASSERT(value = 31*5, 602);

	delegate1 := s6.Q;
	delegate1(37);
	ASSERT(value = 37*6, 603);
	
	CallDelegate1(Set2x, 27);
	ASSERT(value = 27*2, 610);
	CallDelegate1(Set3x, 29);
	ASSERT(value = 29*3, 611);
	CallDelegate1(s5.Q, 31);
	ASSERT(value = 31*5, 612);
	CallDelegate1(s6.Q, 37);
	ASSERT(value = 37*6, 613);

	delegate1 := Set2x;
	CallDelegate1(delegate1, 27);
	ASSERT(value = 27*2, 620);
	delegate1 := Set3x;
	CallDelegate1(delegate1, 29);
	ASSERT(value = 29*3, 621);
	delegate1 := s5.Q;
	CallDelegate1(delegate1, 31);
	ASSERT(value = 31*5, 622);
	delegate1 := s6.Q;
	CallDelegate1(delegate1, 37);
	ASSERT(value = 37*6, 623);
END Test1;

PROCEDURE Test2*;	(*SYSTEM.VAL casts*)
VAR adr: LONGINT; adri: INTEGER; p0, p1, p2: Delegate0;
BEGIN
	p0 := Set0;
	adr := SYSTEM.VAL(LONGINT, p0); p1 := SYSTEM.VAL(Delegate0, adr);
	ASSERT(p0 = p1, 500);
	p1;
	ASSERT(value = 0, 700);
	
	p0 := Set1;
	adr := SYSTEM.VAL(LONGINT, p0); p1 := SYSTEM.VAL(Delegate0, adr);
	p1;
	ASSERT(value = 1, 701);
END Test2;

PROCEDURE Test3*;
BEGIN
	ASSERT(SIZE(Delegate0) = 8, 800);
END Test3;


PROCEDURE Test4*;
VAR p0, p1: Delegate0;
BEGIN
	p0 := s3.M;
	p1 := s4.M;

	ASSERT(p0 # p1, 900);
	
	p1 := s3.M;
	ASSERT(p0 = p1, 901);

	p1 := Set0;
	ASSERT(p0 # p1, 902);
END Test4;

PROCEDURE Test5*;
	(*special case: expression is a field, but not a method!*)
VAR p0: Delegate0;  x: RECORD f: Delegate0 END;
BEGIN
	x.f := Set0;
	p0 := x.f;
	ASSERT(p0 = x.f, 1000);
	x.f := Set1;
	ASSERT(p0 # x.f, 1001);
END Test5;


PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2; Test3; Test4; Test5
END Test;

BEGIN
	NEW(s3, 3); NEW(s4, 4);
END HOTDelegates0.

System.Free HOTDelegates0 ~

HOTDelegates0.Test
		HOTDelegates0.Test0	HOTDelegates0.Test1	HOTDelegates0.Test4


Decoder.Decode HOTDelegates0 ~