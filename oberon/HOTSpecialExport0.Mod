MODULE HOTSpecialExport0;	(** prk  **)


TYPE
	Type1* = POINTER TO RECORD
		a, b, c: LONGINT;
	END;
	
	Type2Hidden = RECORD
		x, y: LONGINT
	END;
	
	Type2* = Type2Hidden;

	Type3Hidden = POINTER TO RECORD
		x, y: LONGINT
	END;
	
	Type3* = Type3Hidden;



END HOTSpecialExport0.
