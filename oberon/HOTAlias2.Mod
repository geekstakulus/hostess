MODULE HOTAlias2;

TYPE
  Object = POINTER TO ObjectDesc;
  ObjectDesc = RECORD END;
  String = POINTER TO StringDesc;
  StringDesc = RECORD (ObjectDesc) END;

PROCEDURE Do (a, b: Object);
  BEGIN
    ASSERT (a # b)
  END Do;

PROCEDURE Read (VAR object: Object);
  VAR
    string: String;
  BEGIN
    NEW (string);
    object := string
  END Read;

PROCEDURE Test*;
  VAR
    object: Object;
    a, b: String;
  BEGIN
    Read(object);
    a := object(String);
    Read(object);
    b := object(String);
    Do(a, b);
  END Test;

END HOTAlias2.
