///////////////////////////////////////////////////////////////////////
// REDEMPTION : REDBODHI                                             //
///////////////////////////////////////////////////////////////////////


ADD_STATE_TRIGGER FINBODH 0 ~!Global("BodhiFightsJon","GLOBAL",1)~
ADD_TRANS_TRIGGER FINBODH 0 ~!Global("JonFights","GLOBAL",1)~

EXTEND_BOTTOM FINBODH 0
   IF ~Global("JonFights","GLOBAL",1)~ THEN DO ~SetGlobal("BodhiFightsJon","GLOBAL",1)~ EXTERN ~JONEL25J~ j0
END

APPEND FINBODH

IF ~False()~ THEN BEGIN r1
  SAY @200 
  IF ~~ THEN EXTERN ~FINMEL01~ r5
END

IF ~Global("BodhiFightsJon","GLOBAL",1)~ THEN BEGIN r2  // FROM CUTSCENE
  SAY@201 
  IF ~~ THEN REPLY @202 GOTO r3
END

IF ~FALSE()~ THEN BEGIN r3
  SAY @203 
  IF ~~ THEN EXTERN ~JONEL25J~ j1
END

IF ~FALSE()~ THEN BEGIN r4
  SAY @204 
  IF ~~ THEN EXTERN ~JONEL25J~ j2 
END

IF ~FALSE()~ THEN BEGIN r5
 SAY @205
IF ~!Global("DemogorgonIsDead","GLOBAL",1) Difficulty(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("redbodh1")~ EXIT
  IF ~!Global("DemogorgonIsDead","GLOBAL",1) DifficultyGT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("redbodh2")~ EXIT
  IF ~!Global("DemogorgonIsDead","GLOBAL",1) DifficultyLT(3)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("redbodh0")~ EXIT
IF ~Global("DemogorgonIsDead","GLOBAL",1)~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("redbodh3")~ EXIT
END

END