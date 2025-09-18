///////////////////////////////////////////////////////////////////////
// REDEMPTION : JONEL25J    							   //
///////////////////////////////////////////////////////////////////////
//  JONEL25J is created from scratch (not in the Ascension)          //
///////////////////////////////////////////////////////////////////////

BEGIN JONEL25J

IF ~Global("BodhiFightsJon","GLOBAL",1) !Global("JonSpeaketh","GLOBAL",1)~ THEN BEGIN j0
  SAY @100
  IF ~~ THEN EXTERN ~FINMEL01~ r4
END  

IF ~~ THEN BEGIN j1
  SAY @101
  IF ~~ THEN EXTERN ~FINBODH~ r4
END  

IF ~~ THEN BEGIN j2
  SAY @102 
  IF ~~ THEN EXTERN ~FINBODH~ r5
END

IF ~~ THEN BEGIN j3
  SAY @103 
  IF ~~ THEN GOTO j3a
END

IF ~~ THEN BEGIN j3a
  SAY@104
    =
  @105 
  IF ~~ THEN GOTO j3b
END 

IF ~~ THEN BEGIN j3b
  SAY@106 
  IF ~~ THEN REPLY @107 GOTO j4
  IF ~~ THEN REPLY @108 GOTO j5
  IF ~~ THEN REPLY @109 GOTO j6
  IF ~~ THEN REPLY @110 GOTO j5
  IF ~~ THEN REPLY @111 GOTO j4
END

IF ~~ THEN BEGIN j4
  SAY @112 
  IF ~~ THEN EXTERN ~FINSOL01~ l1
END

IF ~~ THEN BEGIN j5
  SAY @113 
  IF ~~ THEN EXTERN ~FINSOL01~ l1
END

IF ~~ THEN BEGIN j6
  SAY @114 
  IF ~~ THEN EXTERN ~FINSOL01~ l1
END

IF ~~ THEN BEGIN j7
  SAY @115 
  IF ~~ THEN EXTERN ~FINSOL01~ l2
END

IF ~~ THEN BEGIN j8
  SAY @116
  IF ~~ THEN EXTERN ~FINSOL01~ l4
END

IF ~~ THEN BEGIN j9
  SAY @117 
  IF ~~ THEN EXTERN ~FINSOL01~ l5 
END

IF ~~ THEN BEGIN j10
  SAY @118  
  IF ~~ THEN EXTERN ~FINSOL01~ l6
END

IF ~Global("JonSpeaketh","GLOBAL",1)~ THEN BEGIN j11
  SAY @119 
  IF ~~ THEN DO ~SetGlobal("JonSpeaketh","GLOBAL",2)
ClearAllActions() 
StartCutSceneMode()
StartCutScene("redjon2")~ EXIT
END

IF ~~ THEN BEGIN dm1
  SAY @120
  IF ~~ THEN REPLY @121 EXTERN ~REDGDEMO~ r3
  IF ~~ THEN REPLY @122 EXTERN ~REDGDEMO~ r3
  IF ~~ THEN REPLY @123 EXTERN ~REDGDEMO~ r3
  IF ~~ THEN REPLY @124 GOTO dm2
END

IF ~~ THEN BEGIN dm2
  SAY @125
  IF ~~ THEN REPLY @126 EXTERN ~REDGDEMO~ r3
END

IF ~~ THEN BEGIN dm3
  SAY @127
  IF ~~ THEN EXTERN ~REDGDEMO~ r7
END

INTERJECT_COPY_TRANS IMOEN25P 7 Jon_Imo_Slay
  == JONEL25J IF ~InParty("finiren") !Dead("finiren")~ THEN 
@128 
  == IMOEN25P IF ~~ THEN @129
END
