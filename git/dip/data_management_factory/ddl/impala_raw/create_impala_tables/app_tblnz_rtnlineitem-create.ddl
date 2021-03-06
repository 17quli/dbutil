CREATE TABLE ${var:target_db}.app_tblnz_rtnlineitem (
fi64LineItemKey BIGINT,
flngReturnKey INT,
fstrGatewayReferenceId VARCHAR(40),
flngAccountKey INT,
fdtmFilingPeriod TIMESTAMP,
fstrReturnDocType VARCHAR(24),
fintReturnDocVer SMALLINT,
fstrId VARCHAR(60),
fstrIdType VARCHAR(12),
fstrIRDNumber VARCHAR(18),
fstrName VARCHAR(510),
flngBatchKey INT,
fintBatchSequence SMALLINT,
fblnInError SMALLINT,
fdtmDeleted TIMESTAMP,
fblnProcessed SMALLINT,
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
 ) STORED AS PARQUET;
