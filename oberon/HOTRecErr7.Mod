MODULE HOTRecErr7;	(** prk  **)

TYPE
	R0 = RECORD
		r1: R1;
	END;
	
	R1 = RECORD
		r2: R2;
	END;
	
	R2 = RECORD
		r0: R0
	END


END HOTRecErr7.
