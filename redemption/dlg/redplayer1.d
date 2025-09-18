///////////////////////////////////////////////////////////////////////
// Redemption : PLAYER1
///////////////////////////////////////////////////////////////////////

APPEND PLAYER1

IF ~Global("Player1Speaketh","GLOBAL",1)~ THEN BEGIN r1 //FROM CUTSCENE
  SAY@420
  IF ~~ THEN GOTO r2
END

IF ~False()~ THEN BEGIN r2
  SAY @421
  IF ~~ THEN GOTO r3
END

IF ~False()~ THEN BEGIN r3
  SAY @422
  IF ~~ THEN DO ~SetGlobal("Player1Speaketh","GLOBAL",2)
ClearAllActions() 
StartCutSceneMode()
StartCutScene("redjon3")~ EXIT
END

END