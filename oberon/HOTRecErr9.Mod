MODULE HOTRecErr9;	(** prk  **)

TYPE
	R0 = RECORD
		a: LONGINT;
	END;
	
	R1 = RECORD (R0)
		a: CHAR;	(* not allowed: R0.a is in the visibility scope of R1, thus it cannot be redefined *)
	END;


END HOTRecErr9.
