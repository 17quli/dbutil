CREATE VIEW ${var:view_db}.app_tblnz_rtnnitest AS
SELECT z.flngDocKey, z.fcurRWT, z.fcurGrossInterest, z.fcurDividendImputation, z.fcurDividendRWT, z.fcurDividendGross, z.fcurMaoriCredits, z.fcurMaoriDistributions, z.fcurTrustCredits, z.fcurTrustIncome, z.fcurOverseasTax, z.fcurOverseasIncome, z.fcurLTCCredits, z.fcurLTCActiveIncome, z.fcurLTCDeductions, z.fcurLTCPriorDeductions, z.fcurAdjustedIncome, z.fcurBusinessIncome, z.fcurTotalOtherCredits, z.fcurTotalOtherIncome, z.fcurTotalCredits, z.fcurTotalIncome, z.fcurRLWT, z.fcurBeneficiaryIncome, z.fcurTrusteeIncome, z.fcurTaxPayableTrusteesIncome, z.fcurExpensesClaimed, z.fcurNetLossBroughtForward, z.fcurNetLossClaimed, z.fcurTotalDistributions, z.fcurTaxableDistributions, z.fblnCFC, z.fcurTotalTaxBeneficiaries, z.fcurIncomeAfterExpenses, z.fcurTotalTaxPayable, z.fcurShareOfOverseasTax, z.fcurTaxPayableAfterShare, z.fcurShareOfImputation, z.fcurTaxPayableAfterImputation, z.fcurShareOfRWT, z.fcurTaxPayableAfterRWT, z.fcurResidualIncomeTax, z.fcurProvisionalTaxPaid, z.fcurTaxAmount, z.fcurOverpaymentProvisional, z.fcurRefundAfterOverpayment, z.fcurTransferProvisional, z.fcurTransferCustomerAmount, z.fcurTotalRefund, z.fdtmProvisionalStartDate, z.fstrProvisionalOption, z.fcurProvisionalTax, z.fcurExcessImputationCredits, z.fcurExcessImputationAsLoss, z.fcurLossToCarryForward, z.fblnComplyingTrust, z.fblnForeignTrust, z.fblnNonComplyingTrust, z.fstrResMethod, z.fcurResIncome, z.fcurResDeductions, z.fcurResDeductionsPriorYear, z.fcurResDeductionsClaimed, z.fcurResNetIncome, z.fcurResDeductionsForward, z.fcurRDICarryForwardCurrentYear, z.fcurRDICarryForwardRemaining, z.fcurSaleOfProperty, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_rtnnitest z;