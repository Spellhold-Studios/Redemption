///////////////////////////////////////////////////////////////////////
// REDEMPTION : REDSOLAR
// ADD NEW STATES TO FINSOL01
// ADD SOLAR WARNING ABOUT JON TO SOLAR 67                             
///////////////////////////////////////////////////////////////////////

// SOLAR 

INTERJECT SOLAR 66 WARNING
== SOLAR IF ~!Alignment(Player1,MASK_EVIL) !NumInPartyLT(6)  
OR(2)  
CheckStatGT(Player1,12,INT)
CheckStatGT(Player1,12,WIS)~ THEN 
@500 
END SOLAR 67

// FINSOL01

ADD_STATE_TRIGGER FINSOL01 4 ~!Global("Redemption", "GLOBAL",1)~

ADD_TRANS_TRIGGER FINSOL01 5 ~Dead("finiren") !Global("Redemption","GLOBAL",1)~

EXTEND_BOTTOM FINSOL01 5
   IF ~!Dead("finiren") !Global("Redemption","GLOBAL",1)~ THEN EXTERN ~JONEL25J~ j3
END

APPEND FINSOL01 

IF ~False()~ THEN BEGIN l1
  SAY @501 
  IF ~~ THEN EXTERN ~JONEL25J~ j7
END

IF ~False()~ THEN BEGIN l2
  SAY @502 
  IF ~~ THEN GOTO l3
END

IF ~False()~ THEN BEGIN l3
  SAY @503   
  IF ~~ THEN EXTERN ~JONEL25J~ j8
END

IF ~False()~ THEN BEGIN l4
  SAY @504  
  IF ~~ THEN EXTERN ~JONEL25J~ j9
END

IF ~False()~ THEN BEGIN l5
  SAY @505 
  IF ~~ THEN EXTERN ~JONEL25J~ j10
END

IF ~False()~ THEN BEGIN l6
  SAY @506 
  IF ~~ THEN GOTO l7
END

IF ~False()~ THEN BEGIN l7
  SAY @507  
  IF ~~ THEN DO ~SetGlobal("Redemption","GLOBAL",1)
ClearAllActions() 
StartCutSceneMode()
StartCutScene("redjon1")~ EXIT
END

IF ~Global("SolarSpeaketh","GLOBAL",1)~ THEN BEGIN l8 //FROM CUTSCENE redjon3
  SAY @508  
  IF ~~ THEN REPLY @509 DO ~SetGlobal("SolarSpeaketh","GLOBAL",2)~ GOTO l9
END

IF ~False()~ THEN BEGIN l9
  SAY @510
  IF ~~ THEN REPLY @511 GOTO l10
  IF ~~ THEN REPLY @512 GOTO l12
END

IF ~False()~ THEN BEGIN l10
  SAY @513
  IF ~~ THEN REPLY @514 GOTO l11
  IF ~~ THEN REPLY @515 GOTO l12
END

IF ~False()~ THEN BEGIN l11
  SAY @516
  IF ~~ THEN GOTO jon_banter
END

IF ~False()~ THEN BEGIN l12
  SAY @517 
  IF ~~ THEN REPLY @518 GOTO 12
  IF ~~ THEN REPLY @519 GOTO 9
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN REPLY @520 GOTO 10
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")~ THEN REPLY @521 GOTO 10
  IF ~~ THEN REPLY @522 GOTO 11
END
END

CHAIN3 FINSOL01 jon_banter
@523
== IMOEN25J IF ~InParty("Imoen2")~ THEN
@524
== Jan25J IF ~InParty("Jan")~ THEN
  @525
=
  @526
=
  @527
== JAHEI25J IF ~InParty("Jaheira")~ THEN
  @528
== VICON25J IF ~InParty("Viconia")~ THEN
  @529
== ANOME25J IF ~InParty("Anomen") !Global("AnomenRomanceActive","GLOBAL",2)~ THEN
  @530
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) Alignment("Anomen",MASK_GOOD)~ THEN
  @531
== ANOME25J IF ~InParty("Anomen") Global("AnomenRomanceActive","GLOBAL",2) !Alignment("Anomen",MASK_GOOD)~ THEN
  @532
== AERIE25J IF ~InParty("Aerie")~ THEN
  @533
== HAERD25J IF ~InParty("HaerDalis")~ THEN
  @534
== KORGA25J IF ~InParty("Korgan")~ THEN
  @535
== MINSC25J IF ~InParty("Minsc")~ THEN
  @536
== KELDO25J IF ~InParty("Keldorn")~ THEN
  @537
== EDWIN25J IF ~InParty("Edwin")~ THEN
  @538
== VALYG25J IF ~InParty("Valygar")~ THEN
  @539
== SAREV25J IF ~InParty("Sarevok")~ THEN
  @540
== CERND25J IF ~InParty("Cernd")~ THEN
  @541
== FINSOL01 IF~~ THEN
  @542
END FINSOL01 l12



