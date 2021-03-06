-- ird0sxd 22052020 Script to load non raw tables to OBJECT tables. These are the Account DIM tables.
-- ird0dxm 25052020 Added commit at the end 
-- ir0sxd  26052020 added PARTY_ACCOUNT_REL, PARTY_ACCOUNT_REL_TYPE, SET INGESTION_MODE TO 'NA' in object, object_control

-- Find out the system schema key for the refined layer. This would be different betwee dev, test, prod.

SELECT   SYSTEM_SCHEMA_KEY,SAS_LIB_REF 
FROM SRC_TGT_SCHEMA
WHERE SCHEMA_NAME='REFINED' ;


-- For each of these statements paass the SYSTEM_SCHEMA_KEY we got from running the above query.
-- Also pass your irdxxxx userid as the user id.


INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER , LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'ACCOUNT_DIM', NULL, 'TABLE', 'IMPRFN','REFINED',NULL, SYSDATE,'&USERID');

INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER , LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'ACCOUNT_GST_DIM', NULL, 'TABLE', 'IMPRFN','REFINED',NULL, SYSDATE,'&USERID');

INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER,  LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'ACCOUNT_INC_DIM',NULL, 'TABLE', 'IMPRFN','REFINED',NULL,SYSDATE,'&USERID');

INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER,  LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'ACCOUNT_PAY_DIM',NULL, 'TABLE', 'IMPRFN','REFINED',NULL,SYSDATE,'&USERID');

INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER, LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'ACCOUNT_PIE_DIM', NULL, 'TABLE', 'IMPRFN','REFINED',NULL,SYSDATE,'&USERID');

INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER, LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'PARTY_ACCOUNT_REL', NULL, 'TABLE', 'IMPRFN','REFINED',NULL,SYSDATE,'&USERID');


INSERT INTO LCF.OBJECT (SYSTEM_SCHEMA_KEY, TARGET_OBJECT_NAME,  TARGET_DB, SOURCE_OBJECT_TYPE, SAS_LIB_REF,  LAYER, LOAD_PATTERN_NAME, CREATED_ON, CREATED_BY) 
VALUES (&system_schema_key, 'PARTY_ACCOUNT_REL_TYPE', NULL, 'TABLE', 'IMPRFN','REFINED',NULL,SYSDATE,'&USERID');


SELECT OBJECT_KEY, SYSTEM_sCHEMA_KEY, TARGET_OBJECT_NAME, OBJECT_SHORT_NAME,SOURCE_OBJECT_TYPE, SAS_LIB_REF, LAYER
FROM OBJECT WHERE   LAYER='REFINED';

UPDATE LCF.OBJECT
SET INGESTION_MODE='NA'
WHERE TARGET_OBJECT_NAME IN ('ACCOUNT_DIM','ACCOUNT_GST_DIM','ACCOUNT_INC_DIM','ACCOUNT_PAY_DIM','ACCOUNT_PIE_DIM','PARTY_ACCOUNT_REL','PARTY_ACCOUNT_REL_TYPE');

UPDATE LCF.OBJECT_CONTROL
SET INGESTION_MODE='NA'
WHERE TARGET_OBJECT_NAME IN ('ACCOUNT_DIM','ACCOUNT_GST_DIM','ACCOUNT_INC_DIM','ACCOUNT_PAY_DIM','ACCOUNT_PIE_DIM','PARTY_ACCOUNT_REL','PARTY_ACCOUNT_REL_TYPE');


SELECT * FROM OBJECT_CONTROL WHERE OBJECT_KEY IN  (SELECT OBJECT_KEY FROM  OBJECT WHERE LAYER='REFINED');

COMMIT;
UPDATE OBJECT_CONTROL SET CAS_UPLOAD='Y' , CAS_UPLOAD_ENVIRONMENT='LAB' , CAS_UPLOAD_LIBRARY='CASLVWS' 
WHERE TARGET_OBJECT_NAME IN ('ACCOUNT_DIM','ACCOUNT_GST_DIM','ACCOUNT_INC_DIM','ACCOUNT_PAY_DIM','ACCOUNT_PIE_DIM','PARTY_ACCOUNT_REL','PARTY_ACCOUNT_REL_TYPE');

COMMIT;

SELECT  * FROM OBJECT_CONTROL;
