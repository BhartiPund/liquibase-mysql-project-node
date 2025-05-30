
  CREATE TABLE "NEWTANVI"."TABLE1" SHARING=METADATA 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."EMP" SHARING=METADATA 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."COMP" SHARING=METADATA 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."TABLE2" SHARING=METADATA 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."TABLE_TANVI3" SHARING=METADATA 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."DATABASECHANGELOG" 
   (	"ID" VARCHAR2(255) NOT NULL ENABLE, 
	"AUTHOR" VARCHAR2(255) NOT NULL ENABLE, 
	"FILENAME" VARCHAR2(255) NOT NULL ENABLE, 
	"DATEEXECUTED" TIMESTAMP (6) NOT NULL ENABLE, 
	"ORDEREXECUTED" NUMBER(*,0) NOT NULL ENABLE, 
	"EXECTYPE" VARCHAR2(10) NOT NULL ENABLE, 
	"MD5SUM" VARCHAR2(35), 
	"DESCRIPTION" VARCHAR2(255), 
	"COMMENTS" VARCHAR2(255), 
	"TAG" VARCHAR2(255), 
	"LIQUIBASE" VARCHAR2(20), 
	"CONTEXTS" VARCHAR2(255), 
	"LABELS" VARCHAR2(255), 
	"DEPLOYMENT_ID" VARCHAR2(10)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."DATABASECHANGELOGLOCK" 
   (	"ID" NUMBER(*,0) NOT NULL ENABLE, 
	"LOCKED" BOOLEAN NOT NULL ENABLE, 
	"LOCKGRANTED" TIMESTAMP (6), 
	"LOCKEDBY" VARCHAR2(255), 
	 CONSTRAINT "PK_DATABASECHANGELOGLOCK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."USER_TBLE" 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."TBL_USER" 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."TABLECOM3" 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."TABLEEMP" 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20), 
	"COLUMN3" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."USERTABLE1" 
   (	"COLUMN1" VARCHAR2(20), 
	"COLUMN2" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;


  CREATE TABLE "NEWTANVI"."TABLE3" 
   (	"COLUMN1" VARCHAR2(20)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;

