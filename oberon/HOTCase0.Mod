MODULE HOTCase0;	(** prk  **)


PROCEDURE Test0*;
VAR i, val: LONGINT;
BEGIN
	FOR i := 0 TO 10 DO
		CASE i OF
		| 0:	val := 10
		| 2:	val := 8
		| 4:	val := 6
		| 6:	val := 4
		| 8:	val := 2
		| 10:	val := 0
		ELSE
			val := i
		END;
		
		ASSERT((ODD(i) & (val = i)) OR (~ODD(i) & (val = (10-i))));

	END
	
END Test0;

PROCEDURE Test*;
BEGIN
	Test0
END Test;


END HOTCase0.