MODULE HOTLocalProcs0;	(** prk  **)



PROCEDURE Test0*;
CONST  V1 = 5;  V2 = 17;  V3 = -31;
VAR a: LONGINT;

	PROCEDURE L1;
	
		PROCEDURE L2;
		BEGIN
			ASSERT(a = V1);
			a := V2;
		END L2;
		
	BEGIN
		ASSERT(a = V1);
		L2;
		ASSERT(a = V2);
		a := V3;
	END L1;
	
BEGIN
	a := V1;
	L1;
	ASSERT(a = V3);
END Test0;


PROCEDURE Test1*;
CONST  V1 = 5;  V2 = 17;  V3 = -31;
VAR a: LONGINT;
	
	PROCEDURE L1;
	VAR b: LONGINT;
	
		PROCEDURE L3b(v: LONGINT);
		BEGIN
			ASSERT(b = v)
		END L3b;
	
		PROCEDURE L3;
			
			PROCEDURE L4;
			BEGIN
				ASSERT(b = V2);
				b := V3;
				L3b(V3)
			END L4;
			
		BEGIN
			ASSERT(b = V2);
			L3b(V2);
			L4;
			ASSERT(b = V3)
		END L3;
		
	BEGIN
		b := V2;
		L3;
		ASSERT(b = V3)
	END L1;

BEGIN
	a := V1;
	L1
END Test1;

PROCEDURE Test5;
TYPE
	Rec = RECORD  x, y: LONGINT  END;
	
	PROCEDURE Local(VAR x: Rec);
	
		PROCEDURE Local2;
		BEGIN
			Local(x);	(*<- is td correctly pushed?*)
		END Local2;
		
	BEGIN
	END Local;
	
BEGIN
END Test5;


PROCEDURE Test*;
BEGIN
	Test0;
END Test;




END HOTLocalProcs0.
