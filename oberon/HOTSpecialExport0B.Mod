MODULE HOTSpecialExport0B;	(** prk  **)

IMPORT
		HOTSpecialExport0A;


PROCEDURE Test0*;
VAR t: HOTSpecialExport0A.Type1;
BEGIN
	NEW(t)
END Test0;

PROCEDURE Test1*;
VAR t: HOTSpecialExport0A.Type2;
BEGIN
END Test1;

PROCEDURE Test2;
VAR t: HOTSpecialExport0A.Type3;
BEGIN
	NEW(t)
END Test2;

PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2
END Test;



END HOTSpecialExport0B.
