MODULE HOTMethodError3;	(** prk  **)

TYPE
	Base = POINTER TO BaseDesc;
	BaseDesc = RECORD
		PROCEDURE M0;
		BEGIN
		END M0;
		
		PROCEDURE M1(a: LONGINT);
		BEGIN
		END M1;
		
		PROCEDURE M2(): LONGINT;
		BEGIN
		END M2;
	END BaseDesc;
	
	Ext = POINTER TO ExtDesc;
	ExtDesc = RECORD (BaseDesc)
		PROCEDURE M0;
		BEGIN
		END M0;
		
		PROCEDURE M1(a, b: LONGINT);
		BEGIN
		END M1;
		
		PROCEDURE M2(): LONGINT;
		BEGIN
		END M2;
	END ExtDesc;

END HOTMethodError3.
