MODULE HOTBug2;	(** prk  **)

(*
	Special / Problematic code patterns on Intel processors
*)


PROCEDURE Push16*;
VAR i: INTEGER;
	PROCEDURE Call16(j: INTEGER);
	BEGIN
		ASSERT(i = j)
	END Call16;
BEGIN
	i := 12;
	Call16(i);
END Push16;

PROCEDURE Test*;
BEGIN
	Push16;
END Test;


END HOTBug2.
