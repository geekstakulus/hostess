MODULE HOTConst1;  (* mva *)

CONST
  a = 127;
  b = 127+0;
  c = 127+(1-1);
  d = 127+1-1;
  e = 128-1;
  f = LONG (127);
  
PROCEDURE Assert (x: SHORTINT);
  BEGIN
    ASSERT (x = 127);
  END Assert;

PROCEDURE Test*;
  BEGIN
    Assert (a);
    Assert (b);
    Assert (c);
    Assert (d);
    Assert (e);
    Assert (f);
    
    Assert (127);
    Assert (127+0);
    Assert (127+(1-1));
    Assert (127+1-1);
    Assert (128-1);
    Assert (LONG (127));
  END Test;

END HOTConst1.
