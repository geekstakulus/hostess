MODULE HOTExport1;	(** prk  **)



IMPORT
		HOTExport0;

PROCEDURE Test0*;
BEGIN
	HOTExport0.a := 27;
	ASSERT(HOTExport0.a = 27, 100)
END Test0;

PROCEDURE Test*;
BEGIN
	Test0
END Test;



END HOTExport1.
