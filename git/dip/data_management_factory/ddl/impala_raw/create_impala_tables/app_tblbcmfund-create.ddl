
CREATE TABLE ${var:target_db}.app_tblbcmfund (
flngFundKey INT,
flngVer INT,
flngVerLast INT,
fstrCreditType VARCHAR(100),
fdtmRequestFrom TIMESTAMP,
fdtmRequestTo TIMESTAMP,
fdtmClaimFrom TIMESTAMP,
fdtmClaimTo TIMESTAMP,
fcurMaxClaim DECIMAL(19,4),
fcurApproved DECIMAL(19,4),
fcurClaimed DECIMAL(19,4),
fcurRemainingApproved DECIMAL(19,4),
fcurRemainingClaimed DECIMAL(19,4),
fblnMultipleClaimants SMALLINT,
fblnTransferable SMALLINT,
fblnSplittable SMALLINT,
fblnRefundable SMALLINT,
fblnCapOnApprove SMALLINT,
fblnCapOnClaim SMALLINT,
flngDocKey INT,
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;