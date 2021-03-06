CREATE TABLE ${var:target_db}.app_tblnz_rtnnit (
flngDocKey INT,
fcurTaxDeducted DECIMAL(19,4),
fcurGrossIncome DECIMAL(19,4),
fcurRWT DECIMAL(19,4),
fcurGrossInterest DECIMAL(19,4),
fcurDividendImputation DECIMAL(19,4),
fcurDividendRWT DECIMAL(19,4),
fcurDividendGross DECIMAL(19,4),
fcurMaoriCredits DECIMAL(19,4),
fcurMaoriDistributions DECIMAL(19,4),
fcurTrustCredits DECIMAL(19,4),
fcurTrustIncome DECIMAL(19,4),
fcurTotalCredits DECIMAL(19,4),
fcurOverseasTax DECIMAL(19,4),
fcurOverseasIncome DECIMAL(19,4),
fcurBusinessActivities DECIMAL(19,4),
fcurPremiumPaid DECIMAL(19,4),
fcurPremiumPaidSwitzerland DECIMAL(19,4),
fcurTotalPremium DECIMAL(19,4),
fcurOtherIncome DECIMAL(19,4),
fcurRLWT DECIMAL(19,4),
fcurTotalIncomePreDonations DECIMAL(19,4),
fcurDonationsMade DECIMAL(19,4),
fcurTotalIncome DECIMAL(19,4),
fcurNetLossBroughtForward DECIMAL(19,4),
fcurNetLossClaimed DECIMAL(19,4),
fcurTotalIncomeAfterNetLoss DECIMAL(19,4),
fcurNetLossToCompanies DECIMAL(19,4),
fcurSubventionsToCompanies DECIMAL(19,4),
fcurTaxableIncome DECIMAL(19,4),
fcurTotalTaxPayable DECIMAL(19,4),
fcurTaxAfterOverseas DECIMAL(19,4),
fcurForeignInvestorTaxCredit DECIMAL(19,4),
fcurTaxAfterForeignInvestor DECIMAL(19,4),
fcurTaxAfterImputation DECIMAL(19,4),
fcurExcessImputationCredits DECIMAL(19,4),
fcurResidualIncomeTax DECIMAL(19,4),
fcurProvisionalTaxPaid DECIMAL(19,4),
fcurTaxAmount DECIMAL(19,4),
fblnRADFiled SMALLINT,
fcurRADAmount DECIMAL(19,4),
fcurRADRefund DECIMAL(19,4),
fcurRADLoss DECIMAL(19,4),
fcurRADTaxAdjustment DECIMAL(19,4),
fcurRADRepaymentTax DECIMAL(19,4),
fcurTransferProvisional DECIMAL(19,4),
fcurTransferCustomerAmount DECIMAL(19,4),
fcurTotalRefund DECIMAL(19,4),
fdtmProvisionalStartDate TIMESTAMP,
fstrProvisionalOption VARCHAR(100),
fcurProvisionalTax DECIMAL(19,4),
fblnNonresidentPayments SMALLINT,
fblnNonresidentWithholding SMALLINT,
fblnCFC SMALLINT,
fcurSharesRepurchased DECIMAL(19,4),
fblnForeignDividends SMALLINT,
fblnNonresidentControlled SMALLINT,
fblnNonResident SMALLINT,
fcurLowestEconomicInterests DECIMAL(19,4),
fcurLossToCarryForward DECIMAL(19,4),
fblnLineItemsProcessed SMALLINT,
fstrResMethod VARCHAR(50),
fcurResIncome DECIMAL(19,4),
fcurResDeductions DECIMAL(19,4),
fcurResDeductionsPriorYear DECIMAL(19,4),
fcurResDeductionsClaimed DECIMAL(19,4),
fcurResNetIncome DECIMAL(19,4),
fcurResDeductionsForward DECIMAL(19,4),
fcurRDICarryForwardCurrentYear DECIMAL(19,4),
fcurRDIRefundableCredit DECIMAL(19,4),
fcurRDICarryForwardRemaining DECIMAL(19,4),
fcurAIMShareholderTaxPaid DECIMAL(19,4),
fcurSaleOfProperty DECIMAL(19,4),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
 ) STORED AS PARQUET;