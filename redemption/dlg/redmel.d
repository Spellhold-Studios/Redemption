///////////////////////////////////////////////////////////////////////
// REDEMPTION : REDMEL                                               //
///////////////////////////////////////////////////////////////////////

APPEND FINMEL01

IF ~False()~ THEN BEGIN r0
  SAY @400  
  IF ~!InParty("Sarevok") !InParty("Keldorn") ~ THEN EXTERN ~IRENIC2~ r3
  IF ~!InParty("Sarevok") InParty("Keldorn") ~ THEN EXTERN ~KELDO25J~ k1
  IF ~InParty("Sarevok")~ THEN EXTERN ~SAREV25J~ sr1
END 

IF ~False()~ THEN BEGIN r1 
  SAY @401
  IF ~~ THEN REPLY @402 EXTERN ~IRENIC2~ r12
  IF ~~ THEN REPLY @403 EXTERN ~IRENIC2~ r18
END

IF ~False()~ THEN BEGIN r2 //FROM IRENIC2
  SAY @404 
  IF ~~ THEN EXTERN ~IRENIC2~ r14
END

IF ~Global("JonFights","GLOBAL",1) !Global("BodhiFightsJon","GLOBAL",1)~ THEN BEGIN r3
  SAY @405 
    IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("finiren1")~ EXIT
END

IF ~False()~ THEN BEGIN r4 
  SAY @406
  IF ~~ THEN EXTERN ~FINBODH~ r1
END

IF ~False()~ THEN BEGIN r5 
  SAY @407
  IF ~~ THEN GOTO r5a
END

IF ~~ THEN BEGIN r5a
  SAY @408
  IF ~InPartyAllowDead("Imoen2")
!Dead("Imoen2")~ THEN GOTO 15
  IF ~InPartyAllowDead("Imoen2")
Dead("Imoen2")~ THEN GOTO 16
  IF ~!InPartyAllowDead("Imoen2")
!Dead("Imoen2")~ THEN GOTO 17
  IF ~!InPartyAllowDead("Imoen2")
Dead("Imoen2")~ THEN GOTO 18
END

IF ~FALSE()~ THEN BEGIN r6
  SAY @409 
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("resimo5")~ EXIT
END

END //END APPEND FINMEL01

ADD_TRANS_TRIGGER IMOEN25P 4 ~!Global("JonFights","GLOBAL",1)~

EXTEND_BOTTOM IMOEN25P 4
  IF ~Global("JonFights","GLOBAL",1)~ THEN REPLY @410 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN ~FINMEL01~ r6
  IF ~Global("JonFights","GLOBAL",1)~ THEN REPLY @411 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN ~FINMEL01~ r6
  IF ~Global("JonFights","GLOBAL",1)~ THEN REPLY @412 DO ~SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN ~FINMEL01~ r6
  IF ~Global("JonFights","GLOBAL",1)~ THEN REPLY @413 DO ~SetGlobal("ImoenHate","GLOBAL",1)
SetGlobal("ImoenHurt","GLOBAL",0)~ EXTERN ~FINMEL01~ r6
END

APPEND SAREV25J
IF ~~ THEN BEGIN sr1
  SAY @414
  IF ~!InParty("Keldorn")~ THEN EXTERN ~IRENIC2~ r3
  IF ~InParty("Keldorn")~ THEN EXTERN ~KELDO25J~ k1
END
END

APPEND KELDO25J
IF ~~ THEN BEGIN k1
  SAY @415
  IF ~~ THEN EXTERN ~IRENIC2~ r3
END
END
