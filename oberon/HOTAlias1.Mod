MODULE HOTAlias1;

PROCEDURE Read (x: INTEGER; VAR i: INTEGER);
  BEGIN
    i := x
  END Read;

PROCEDURE Do (a, b: INTEGER);
  BEGIN
    ASSERT (a # b)
  END Do;

PROCEDURE Test*;
  VAR
    a,b: INTEGER;
  BEGIN
    Read (1, a);
    b := a;
    Read (2, a);
    Do (a, b)
  END Test;

END HOTAlias1.
