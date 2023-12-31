MODULE HOTBug0;	(** prk  **)

	PROCEDURE SplitFontName (fn: ARRAY OF CHAR; VAR i, j, size: INTEGER);
		VAR k: INTEGER;
	BEGIN i := 0; size := 0;
		WHILE (fn[i] # 0X) & ((fn[i] < "0") OR ("9" < fn[i])) DO INC(i) END;
		j := i; WHILE ("0" <= fn[j]) & (fn[j] <= "9") DO INC(j) END;
		k := i; WHILE k < j DO size := size * 10 + ORD(fn[k]) - 30H; INC(k) END
	END SplitFontName;


	PROCEDURE Test0*;
	VAR i, j, size: INTEGER;
	BEGIN
		SplitFontName("Oberon10.Scn.Fnt", i, j, size);
		ASSERT(i = 6, 100);
		ASSERT(j = 8, 101);
		ASSERT(size = 10, 102)
	END Test0;
	
	PROCEDURE Test*;
	BEGIN
		Test0
	END Test;

END HOTBug0.
