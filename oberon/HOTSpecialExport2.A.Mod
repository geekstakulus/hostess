MODULE HOTSpecialExport2;	(** prk  **)

	IMPORT HOTSpecialExport1;

	TYPE
		Obj* = POINTER TO RECORD (HOTSpecialExport1.Obj) END;


END HOTSpecialExport2.
