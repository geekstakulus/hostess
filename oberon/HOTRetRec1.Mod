MODULE HOTRetRec1;	(** prk  **)


TYPE
	Rec = RECORD
		a: ARRAY 8 OF LONGINT
	END;
	

PROCEDURE CreateRecord(key: LONGINT): Rec;
VAR  i: LONGINT; r: Rec;
BEGIN
	FOR i := 0 TO 7 DO  r.a[i] := key*i  END;
	RETURN r
END CreateRecord;

PROCEDURE CheckRecord(r: Rec;  key: LONGINT);
VAR  i: LONGINT;
BEGIN
	FOR i := 0 TO 7 DO  ASSERT(r.a[i] = key*i)  END;
END CheckRecord;

PROCEDURE Test1*;
VAR r: Rec;
BEGIN
	r := CreateRecord(1);
	CheckRecord(r, 1);
	
	CheckRecord(CreateRecord(2), 2);
END Test1;

PROCEDURE Test*;
BEGIN
	Test1;
END Test;



END HOTRetRec1.
