CREATE TABLE ${var:target_db}.app_tblnz_rtnnitsup (
flngDocKey INT,
fcurFundsIncome DECIMAL(19,4),
fcurTotalDeductionFromAmount DECIMAL(19,4),
fcurDeductionFromCapital DECIMAL(19,4),
fcurDeductionFromRevenue DECIMAL(19,4),
fcurDeductionFromSummed DECIMAL(19,4),
fcurDeductionFromSubtracted DECIMAL(19,4),
fcurTotalDeductionToAmount DECIMAL(19,4),
fcurDeductionToCapital DECIMAL(19,4),
fcurDeductionToRevenue DECIMAL(19,4),
fcurDeductionToSummed DECIMAL(19,4),
fcurNetLosses DECIMAL(19,4),
fcurLossClaimed DECIMAL(19,4),
fcurTaxableIncome DECIMAL(19,4),
fcurTaxPayable DECIMAL(19,4),
fblnDisclosureRequired SMALLINT,
fcurDisposedInvestments DECIMAL(19,4),
fblnGainsOnTaxableAccount SMALLINT,
fblnFundInvestments SMALLINT,
fblnInvestmentsDisposed SMALLINT,
fblnTradingStock SMALLINT,
fcurOverseasCredits DECIMAL(19,4),
fcurTaxPayableAfterOverseas DECIMAL(19,4),
fcurImputationCredits DECIMAL(19,4),
fcurTaxPayableAfterImputation DECIMAL(19,4),
fcurExcessImputationCredits DECIMAL(19,4),
fcurExcessImputationAsLoss DECIMAL(19,4),
fcurRWT DECIMAL(19,4),
fcurRLWT DECIMAL(19,4),
fcurLossToCarryForward DECIMAL(19,4),
fcurResidualIncomeTax DECIMAL(19,4),
fcurProvisionalTaxPaid DECIMAL(19,4),
fcurTaxAmount DECIMAL(19,4),
fcurOverpaymentProvisional DECIMAL(19,4),
fcurRefundAfterOverpayment DECIMAL(19,4),
fcurTransferProvisional DECIMAL(19,4),
fcurTransferCustomerAmount DECIMAL(19,4),
fcurTotalRefund DECIMAL(19,4),
fdtmProvisionalStartDate TIMESTAMP,
fstrProvisionalOption VARCHAR(100),
fcurProvisionalTax DECIMAL(19,4),
fcurRDICarryForwardCurrentYear DECIMAL(19,4),
fcurRDICarryForwardRemaining DECIMAL(19,4),
fcurPropertyProfitLoss DECIMAL(19,4),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;
