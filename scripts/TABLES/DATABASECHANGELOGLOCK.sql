--------------------------------------------------------
--  DDL for Table DATABASECHANGELOGLOCK
--------------------------------------------------------

  CREATE TABLE "HR"."DATABASECHANGELOGLOCK" 
   (	"ID" NUMBER(*,0), 
	"LOCKED" NUMBER(1,0), 
	"LOCKGRANTED" TIMESTAMP (6), 
	"LOCKEDBY" VARCHAR2(255 BYTE)
   ) ;
