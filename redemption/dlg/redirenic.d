///////////////////////////////////////////////////////////////////////
// REDEMPTION : IRENIC2                                              
///////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////
//ADDS NEW STATES TO SOME IRENIC2 DIALOG OPTIONS                      //
//ADDS NEW RESPONSES TO OTHER NPCS                                    //
//ADDS NEW DIALOGS with IN-GAME SOUNDS                                //
///////////////////////////////////////////////////////////////////////
//SOUNDS:                                   				   
//I TRUST YOU HAVE GOOD REASON TO BE ENTERING THIS PLACE [IRENIC10]  
//AYE 									   
//LAUGH 								   
//ELLESIME? 								   
//YOU CANNOT HOPE TO DEFEAT ME! [IRENIC03]				   
///////////////////////////////////////////////////////////////////////

REPLACE IRENIC2

IF ~False()~ THEN BEGIN 0 //FROM FINMEL01
  SAY @300 
  IF ~~ THEN REPLY @301 GOTO r1
  IF ~~ THEN REPLY @302 GOTO r18
  IF ~~ THEN REPLY @303 GOTO r18
END

END //END REPLACE IRENIC2

APPEND IRENIC2

IF ~~ THEN BEGIN r1
  SAY @304 
  IF ~~ THEN REPLY @305 GOTO r18
  IF ~~ THEN REPLY @306 GOTO r2
  IF ~~ THEN REPLY @307 GOTO r18
  IF ~~ THEN REPLY @308 GOTO r2
END

IF ~~ THEN BEGIN r2 
  SAY @309 
    IF ~~ THEN EXTERN ~FINMEL01~ r0 
END

IF ~~ THEN BEGIN r3
  SAY @310 
  IF ~~ THEN REPLY @311 GOTO r18
  IF ~~ THEN REPLY @312 GOTO r4
END

IF ~~ THEN BEGIN r4
  SAY @313 
  IF ~!InParty("Minsc") !InParty("Jaheira") !InParty("Imoen2")~ THEN GOTO r4a
  IF ~InParty("Minsc") !InParty("Jaheira") !InParty("Imoen2")~ THEN EXTERN ~MINSC25J~ r1
  IF ~InParty("Jaheira") !InParty("Imoen2")~ THEN EXTERN ~JAHEI25J~ r1
  IF ~InParty("Imoen2")~ THEN EXTERN ~IMOEN25J~ r1
END

IF ~~ THEN BEGIN r4a
  SAY @314 
  IF ~~ THEN REPLY @315 GOTO r18 
  IF ~~ THEN REPLY @316 GOTO r18
  IF ~~ THEN REPLY @317 GOTO r18
    IF~ 
!Alignment(Player1,MASK_EVIL)  
OR(2)  
CheckStatGT(Player1,12,INT)
CheckStatGT(Player1,12,WIS) 
~ THEN REPLY @318 GOTO r5
END
  
IF ~~ THEN BEGIN r5
  SAY @319 
  IF ~~ THEN GOTO r5a
END  

IF ~~ THEN BEGIN r5a 
  SAY @320 
  IF ~~ THEN REPLY @321 GOTO r6
  IF ~~ THEN REPLY @322 GOTO r18
END

IF ~~ THEN BEGIN r6
  SAY @323 
  IF ~~ THEN REPLY @324 GOTO r7
  IF ~~ THEN REPLY @325 GOTO r8
END

IF ~~ THEN BEGIN r7
  SAY @326 
  IF ~~ THEN REPLY @327 GOTO r18
  IF ~~ THEN REPLY @328 GOTO r18
  IF ~~ THEN REPLY @329 GOTO r9
END

IF ~~ THEN BEGIN r8
  SAY @330 
  IF ~~ THEN REPLY @331 GOTO r18
  IF ~~ THEN REPLY @328 GOTO r18
  IF ~~ THEN REPLY @329 GOTO r9
END

IF ~~ THEN BEGIN r9
  SAY @332 
  IF ~~ THEN REPLY @333 GOTO r10
  IF ~~ THEN REPLY @334 GOTO r18
  IF ~~ THEN REPLY @335 GOTO r10
END

IF ~~ THEN BEGIN r10
  SAY @336 
  IF ~~ THEN REPLY @337 EXTERN ~FINMEL01~ r1
  IF ~~ THEN REPLY @338 GOTO r18
  IF ~~ THEN REPLY @339 EXTERN ~FINMEL01~ r1
  IF ~~ THEN REPLY @340 GOTO r11  
END

IF ~~ THEN BEGIN r11
  SAY @341
  IF ~~ THEN EXTERN ~FINMEL01~ r1 
END

IF ~False()~ THEN BEGIN r12 //FROM FINMEL01 r1
  SAY @342
  IF ~~ THEN REPLY @343 GOTO r13
  IF ~~ THEN REPLY @344 GOTO r13
  IF ~~ THEN REPLY @345 GOTO r18
END

IF ~~ THEN BEGIN r13
  SAY @346 
  IF ~~ THEN REPLY @347 EXTERN ~FINMEL01~ r2 /*I warn you magician - if you betray me, I shall personally see that your punishment is multiplied!*/
  IF ~~ THEN REPLY @348 GOTO r18
  IF ~~ THEN REPLY @349 GOTO r18
END

IF ~FALSE()~ THEN BEGIN r14 //FROM FINMEL01 r2
  SAY @350 
  IF ~~ THEN REPLY @351 GOTO r15
  IF ~~ THEN REPLY @352 GOTO r18
  IF ~~ THEN REPLY @353 GOTO r18
END

IF ~~ THEN BEGIN r15
  SAY @354 
  IF ~NumInPartyLT(6)~ THEN REPLY @355 GOTO r16
  IF ~!NumInPartyLT(6)~ THEN REPLY @355 GOTO r17
  IF ~~ THEN REPLY @356 GOTO r18
  IF ~~ THEN REPLY @357 GOTO r18
END

IF ~~ THEN BEGIN r16
  SAY @358 
  IF ~~ THEN DO ~
SetGlobal("JonFights","GLOBAL",1)
JoinParty()~ EXTERN ~FINMEL01~ r3
END

IF ~~ THEN BEGIN r17
  SAY @359 
  IF ~~ THEN GOTO r18
END

IF ~FALSE()~ THEN BEGIN r18
  SAY @360 
  IF ~~ THEN DO ~ClearAllActions()~ EXTERN ~FINMEL01~ 14
END

END //END APPEND IRENIC2

APPEND IMOEN25J
IF ~~ THEN BEGIN r1
  SAY @361
  IF ~!InParty("Jaheira") !InParty("Minsc")~ THEN EXTERN ~IRENIC2~ r4a
  IF ~!InParty("Jaheira") InParty("Minsc")~ THEN EXTERN ~MINSC25J~ r1
  IF ~InParty("Jaheira")~ THEN EXTERN ~JAHEI25J~ r1
END
END

APPEND JAHEI25J
IF ~~ THEN BEGIN r1
  SAY @362
  IF ~!InParty("Minsc")~ THEN EXTERN ~IRENIC2~ r4a
  IF ~InParty("Minsc")~ THEN EXTERN ~MINSC25J~ r1
END
END

APPEND MINSC25J
IF ~~ THEN BEGIN r1
  SAY @363
  IF ~~ THEN EXTERN ~IRENIC2~ r4a
END
END
