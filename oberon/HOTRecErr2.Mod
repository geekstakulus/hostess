MODULE HOTRecErr2;	(** prk  **)

TYPE
	RA = POINTER TO RECORD (RBDesc)
	END RA;
	
	RBDesc = RECORD (RA)
	END RBDesc;

END HOTRecErr2.
