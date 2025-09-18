BEGIN ~JONEL25P~

IF ~Global("KickedOut","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @150 
  IF ~~ THEN REPLY @151 DO ~SetGlobal("KickedOut","GLOBAL",0)
JoinParty()~ EXIT

END


