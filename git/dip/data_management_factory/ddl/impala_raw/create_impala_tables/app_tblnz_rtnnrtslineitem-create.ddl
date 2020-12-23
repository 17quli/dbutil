CREATE TABLE ${var:target_db}.app_tblnz_rtnnrtslineitem (
fi64LineItemKey BIGINT,
flngVer INT,
flngVerLast INT,
fdtmPeriod TIMESTAMP,
fstrRecipientIRD VARCHAR(18),
fstrRecipientStatus VARCHAR(6),
fdtmRecipientDOB TIMESTAMP,
fstrRecipientSurname VARCHAR(254),
fstrRecipientName VARCHAR(254),
fstrRecipientAddress1 VARCHAR(60),
fstrRecipientAddress2 VARCHAR(60),
fstrRecipientAddress3 VARCHAR(60),
fstrRecipientAddress4 VARCHAR(60),
fstrRecipientCountryCode VARCHAR(4),
fcurDividendsGross DECIMAL(19,4),
fcurInterestGross DECIMAL(19,4),
fcurRoyaltiesGross DECIMAL(19,4),
fcurOtherGross DECIMAL(19,4),
fcurLiableTotal DECIMAL(19,4),
fcurTotalLessFDP DECIMAL(19,4),
fcurNetNRWTPaid DECIMAL(19,4),
fcurDividendsNRWT DECIMAL(19,4),
fcurInterestNRWT DECIMAL(19,4),
fcurRoyaltiesNRWT DECIMAL(19,4),
fcurOtherNRWT DECIMAL(19,4),
fstrPayerIRD VARCHAR(18),
fstrPayerName VARCHAR(148),
flngPayerCertificate INT,
fstrPayerAddress1 VARCHAR(60),
fstrPayerAddress2 VARCHAR(60),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
) STORED AS PARQUET;