MODULE HOTSpecialExport0A;	(** prk  **)


IMPORT
		HOTSpecialExport0;

TYPE
	Type1* = HOTSpecialExport0.Type1;
	Type2* = HOTSpecialExport0.Type2;
	Type3* = HOTSpecialExport0.Type3;


PROCEDURE Test0*;
VAR t: Type1;
BEGIN
	NEW(t)
END Test0;

PROCEDURE Test1*;
VAR t: Type2;
BEGIN
END Test1;

PROCEDURE Test2*;
VAR t: Type3;
BEGIN
	NEW(t);
END Test2;

PROCEDURE Test*;
BEGIN
	Test0; Test1; Test2;
END Test;



END HOTSpecialExport0A.
