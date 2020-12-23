CREATE TABLE ${var:target_db}.app_tblnz_rtnrwts (
flngDocKey INT,
fblnAgent SMALLINT,
fcurAmountPaid DECIMAL(19,4),
fcurAmountNotRWT DECIMAL(19,4),
fcurAmountSubjectRWT DECIMAL(19,4),
fcurDistributionsPaidIRD DECIMAL(19,4),
fcurDistributionIRDMultiply DECIMAL(19,4),
fcurDistributionsPaid DECIMAL(19,4),
fcurDistributionMultiply DECIMAL(19,4),
fcurDividendsPaid DECIMAL(19,4),
fcurDividendMultiply DECIMAL(19,4),
fcurRWTLiability DECIMAL(19,4),
fcurManualRWTDividends DECIMAL(19,4),
fcurTotalRWTDividends DECIMAL(19,4),
fcurTotalAlreadyDeducted DECIMAL(19,4),
fcurImputationAttached DECIMAL(19,4),
fcurFDPAttached DECIMAL(19,4),
fcurTotalTaxCredits DECIMAL(19,4),
fcurRWTFinal DECIMAL(19,4),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;