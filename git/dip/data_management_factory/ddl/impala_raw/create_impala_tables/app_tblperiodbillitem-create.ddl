create table ${var:target_db}.app_tblperiodbillitem (
flngBillItemKey INT,
flngVer INT,
flngVerLast INT,
flngAccountKey INT,
fdtmFilingPeriod TIMESTAMP,
fintBillItem SMALLINT,
fstrBillType VARCHAR(12),
fdtmCreated TIMESTAMP,
fdtmDue TIMESTAMP,
fstrStage VARCHAR(12),
fdtmStaged TIMESTAMP,
fstrPriorStage VARCHAR(12),
fdtmPriorStaged TIMESTAMP,
fdtmNextStageEval TIMESTAMP,
fdtmClosed TIMESTAMP,
fdtmProtest TIMESTAMP,
fdtmFinalized TIMESTAMP,
fcurTax DECIMAL(19,4),
fcurTaxBalance DECIMAL(19,4),
fcurTaxDelta DECIMAL(19,4),
fcurInterest DECIMAL(19,4),
fcurInterestBalance DECIMAL(19,4),
fcurInterestDelta DECIMAL(19,4),
fcurPenalty DECIMAL(19,4),
fcurPenaltyBalance DECIMAL(19,4),
fcurPenaltyDelta DECIMAL(19,4),
fcurOther DECIMAL(19,4),
fcurOtherBalance DECIMAL(19,4),
fcurOtherDelta DECIMAL(19,4),
fcurCredit DECIMAL(19,4),
fcurCreditDelta DECIMAL(19,4),
fcurBalance DECIMAL(19,4),
fdtmBillActivity TIMESTAMP,
fdtmPenalty TIMESTAMP,
fdtmDelta TIMESTAMP,
flngCollectKey INT,
fintTransactionCount SMALLINT,
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
max_fdtmwhen_penalty_delta TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
 ) stored as parquet;


