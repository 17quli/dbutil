CREATE TABLE ${var:target_db}.app_tblnz_ksscontribution (
fi64ContributionKey BIGINT,
flngVer INT,
flngVerLast INT,
flngCustomerKey INT,
flngAccountKey INT,
fdtmFilingPeriod TIMESTAMP,
fstrContributionType VARCHAR(12),
fcurContributionAmount DECIMAL(19,4),
fdtmContributionDate TIMESTAMP,
flngEmployerAccountKey INT,
fdtmEmployerFilingPeriod TIMESTAMP,
fstrSourceType VARCHAR(12),
fi64SourceKey BIGINT,
fi64SourceItem BIGINT,
fdtmSourceDate TIMESTAMP,
fdtmReversed TIMESTAMP,
fstrReversalReason VARCHAR(12),
fblnUpToDate SMALLINT,
fblnRA SMALLINT,
fblnResidual SMALLINT,
fblnUnclaimed SMALLINT,
fdtmUnclaimed TIMESTAMP,
flngDirectionAccountKey INT,
fblnHistorical SMALLINT,
fblnError SMALLINT,
fblnCnvError SMALLINT,
flngCnvErrorWorkKey INT,
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
fdtmEvaluated TIMESTAMP,
flngCnvUnknownWorkKey INT,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;