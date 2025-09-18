///////////////////////////////////////////////////////////////////////
//  REDEMPTION : REDGDEMO    							   //
///////////////////////////////////////////////////////////////////////
//  REDGDEMO is created from scratch (not in the Ascension)          //
///////////////////////////////////////////////////////////////////////

BEGIN REDGDEMO

IF ~Global("DemogorgonCometh","GLOBAL",1)~ THEN BEGIN r1
  SAY @250
  IF ~~ THEN REPLY @251 DO ~SetGlobal("DemogorgonCometh","GLOBAL",2)~ GOTO r2
END

IF ~~ THEN BEGIN r2
  SAY @252
  IF ~~ THEN EXTERN ~JONEL25J~ dm1
END

IF ~~ THEN BEGIN r3
  SAY @253 
  =
@254
  = 
@255 
  =
@256 
  =
@257 
  =
@258
  IF ~~ THEN REPLY @259 GOTO r4
END

IF ~~ THEN BEGIN r4
  SAY @260
  IF ~~ THEN REPLY @261 DO 
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem1")~ EXIT
  IF ~~ THEN REPLY @262 GOTO r5
END

IF ~~ THEN BEGIN r5
  SAY @263
  IF ~~ THEN REPLY @264 GOTO r6
  IF ~~ THEN REPLY @265 DO
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @266 DO
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
END

IF ~~ THEN BEGIN r6
  SAY @267
  =
@268
  IF ~~ THEN EXTERN JONEL25J dm3
END

IF ~~ THEN BEGIN r7
  SAY @269
  IF ~~ THEN REPLY @270 GOTO r8
END

IF ~~ THEN BEGIN r8
  SAY @271
  =
@272
  IF ~~ THEN REPLY @273 GOTO r9
  IF ~~ THEN REPLY @274 GOTO r10
  IF ~~ THEN REPLY @275 GOTO r11
  IF ~~ THEN REPLY @276 GOTO r12
END

IF ~~ THEN BEGIN r9
  SAY @277
  IF ~~ THEN REPLY @278 DO 
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @279 GOTO r13
END

IF ~~ THEN BEGIN r10
  SAY @280
  IF ~~ THEN REPLY @278 DO 
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @279 GOTO r13
END

IF ~~ THEN BEGIN r11
  SAY @277
  IF ~~ THEN REPLY @278 GOTO r13
  IF ~~ THEN REPLY @279 DO 
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
END

IF ~~ THEN BEGIN r12
  SAY @280
  IF ~~ THEN REPLY @278 GOTO r13
  IF ~~ THEN REPLY @279 DO 
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
END

IF ~~ THEN BEGIN r13
  SAY @281 
  =
@282
  IF ~~ THEN REPLY @283 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @284 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @285 GOTO r14
  IF ~~ THEN REPLY @286 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @287 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @288 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @289 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
  IF ~~ THEN REPLY @290 DO
 ~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem2")~ EXIT
END

IF ~~ THEN BEGIN r14
  SAY @291
  =
@292
  IF ~~ THEN REPLY @293 DO 
~ClearAllActions() 
StartCutSceneMode()
StartCutScene("redgdem3")~ EXIT
END





