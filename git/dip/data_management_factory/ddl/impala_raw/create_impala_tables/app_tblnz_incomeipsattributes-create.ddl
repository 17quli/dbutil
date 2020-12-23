CREATE TABLE ${var:target_db}.app_tblnz_incomeipsattributes (
fi64IncomeKey BIGINT,
flngVer INT,
flngVerLast INT,
fstrIncomeType VARCHAR(60),
fcurGrossInterest DECIMAL(19,4),
fcurRWTDeducted DECIMAL(19,4),
fcurRWTRate DECIMAL(19,4),
fstrRWTRate VARCHAR(20),
fcurJointAccountPercentage DECIMAL(19,4),
fblnJointAccountIndicator SMALLINT,
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;
