MODULE HOTIndImport0;	(** prk  **)

IMPORT
		H := HOTIndExport0;

PROCEDURE Test*;
VAR r: H.R1;
BEGIN
	NEW(r);
	NEW(r.r0);
	H.CheckIsR0(r.r0);
END Test;

END HOTIndImport0.

