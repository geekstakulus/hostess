MODULE HOTSpecialExport2;	(** prk  **)

	IMPORT HOTSpecialExport1;

	TYPE
		Obj* = POINTER TO Desc;
		Desc* = RECORD (HOTSpecialExport1.Desc) END;



END HOTSpecialExport2.
