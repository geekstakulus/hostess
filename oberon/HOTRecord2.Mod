MODULE HOTRecord2;	(** prk  **)


TYPE
	RDesc = RECORD
		a, b, c: LONGINT;
	END;
	R = POINTER TO RDesc;


	T = POINTER TO TDesc;
	TDesc = RECORD
		a, b, c: LONGINT;
	END;

	Q = POINTER TO RECORD
		a, b, c: LONGINT;
	END;



END HOTRecord2.
