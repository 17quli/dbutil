CREATE TABLE ${var:target_db}.app_tblnz_accailsecurities (
flngDocKey INT,
fintSeq SMALLINT,
fstrSecurity VARCHAR(100),
fstrDescription VARCHAR(510),
fcurAmount DECIMAL(19,4),
fstrTerm VARCHAR(100),
fstrPurpose VARCHAR(100),
fblnZeroRating SMALLINT,
fstrPrincipal VARCHAR(12),
fdtmIssue TIMESTAMP,
fdtmRedemption TIMESTAMP,
fdtmCeaseDate TIMESTAMP,
fcurValueFace DECIMAL(19,4),
fcurValueRedemption DECIMAL(19,4),
fcurRate DECIMAL(19,4),
fblnAssociated SMALLINT,
fstrBorrowerName VARCHAR(100),
fstrBorrowerType VARCHAR(6),
fstrLenderName VARCHAR(100),
fstrLenderType VARCHAR(6),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;