-- Load data manually from RAW TDW tables into RAW START table
select count(1) from  ${var:target_db}.${var:app_tbl_name};

INSERT INTO TABLE  ${var:target_db}.${var:app_tbl_name} (
flngDocKey,
fcurTotalRWT,
fcurTotalGrossInterest,
fcurNRWTInterest,
fcurTotalDividendCredit,
fcurTotalGrossDividends,
fcurNRWTDividend,
fcurTotalTaxRoyalty,
fcurTotalGrossRoyalty,
fcurNRWTRoyalty,
fcurNRWTTaxCredits,
fcurTotalNRWT,
fcurTotalTaxDeductions,
fcurTotalGrossIncome,
fcurTotalMaoriCredits,
fcurTotalMaoriDistributions,
fcurTotalPartnershipTaxCredits,
fcurTotalPartnershipIncome,
fcurTotalEstateTrustTaxCredits,
fcurTotalEstateTrustIncome,
fcurTotalLTCTaxCredits,
fcurTotalActiveLTCIncome,
fcurNonAllowDedThisYr,
fcurNonAllowDedPrvYr,
fcurAdjustedLTCIncome,
fcurTotalOtherCredits,
fcurOtherIncomeSubtotal,
fcurNetRents,
fcurNetSelfEmployedIncome,
fcurAnyOtherIncome,
fcurRLWTCredit,
fcurTotalOtherIncome,
fcurTotalOtherExpenses,
fcurIncomeAfterExpenses,
fcurLossBroughtForward,
fcurTotalLossClaimed,
fcurTaxableIncome,
fcurAdjustedTaxableIncome,
fblnWorkedInNZ,
fcurTaxOnTaxableIncome,
fcurOthIncTaxAndNRWT,
fcurTotalTaxCredits,
fcurResidualIncomeTax,
fcurProvTaxPaid,
fcurRefundOrTax,
fcurRefund,
fcurProvTaxOverpayment,
fcurTotalRefund,
fcurRemainingRefund,
fcurProvisionalTax,
fcurLossToCarryForward,
fcurImputationToCarryForward,
fcurExcessImputationCredits,
flngSelectGroup,
fdtmSelectDate,
fblnGroup2Suspend,
fstrResMethod,
fcurResIncome,
fcurResDeductions,
fcurResDeductionsPriorYear,
fcurResDeductionsClaimed,
fcurResNetIncome,
fcurResDeductionsForward,
fcurRDICarryForwardCurrentYear,
fcurRDICarryForwardRemaining,
fcurSaleOfProperty,
fstrWho,
fdtmWhen,
record_effective_timestamp,
record_expiry_timestamp,
record_active_flag,
record_deleted_flag,
insert_object_run_key,
update_object_run_key
)
SELECT
CAST(z.FLNGDOCKEY AS INT) AS flngDocKey,
CAST(z.FCURTOTALRWT AS DECIMAL(19,4)) AS fcurTotalRWT,
CAST(z.FCURTOTALGROSSINTEREST AS DECIMAL(19,4)) AS fcurTotalGrossInterest,
CAST(z.FCURNRWTINTEREST AS DECIMAL(19,4)) AS fcurNRWTInterest,
CAST(z.FCURTOTALDIVIDENDCREDIT AS DECIMAL(19,4)) AS fcurTotalDividendCredit,
CAST(z.FCURTOTALGROSSDIVIDENDS AS DECIMAL(19,4)) AS fcurTotalGrossDividends,
CAST(z.FCURNRWTDIVIDEND AS DECIMAL(19,4)) AS fcurNRWTDividend,
CAST(z.FCURTOTALTAXROYALTY AS DECIMAL(19,4)) AS fcurTotalTaxRoyalty,
CAST(z.FCURTOTALGROSSROYALTY AS DECIMAL(19,4)) AS fcurTotalGrossRoyalty,
CAST(z.FCURNRWTROYALTY AS DECIMAL(19,4)) AS fcurNRWTRoyalty,
CAST(z.FCURNRWTTAXCREDITS AS DECIMAL(19,4)) AS fcurNRWTTaxCredits,
CAST(z.FCURTOTALNRWT AS DECIMAL(19,4)) AS fcurTotalNRWT,
CAST(z.FCURTOTALTAXDEDUCTIONS AS DECIMAL(19,4)) AS fcurTotalTaxDeductions,
CAST(z.FCURTOTALGROSSINCOME AS DECIMAL(19,4)) AS fcurTotalGrossIncome,
CAST(z.FCURTOTALMAORICREDITS AS DECIMAL(19,4)) AS fcurTotalMaoriCredits,
CAST(z.FCURTOTALMAORIDISTRIBUTIONS AS DECIMAL(19,4)) AS fcurTotalMaoriDistributions,
CAST(z.FCURTOTALPARTNERSHIPTAXCREDITS AS DECIMAL(19,4)) AS fcurTotalPartnershipTaxCredits,
CAST(z.FCURTOTALPARTNERSHIPINCOME AS DECIMAL(19,4)) AS fcurTotalPartnershipIncome,
CAST(z.FCURTOTALESTATETRUSTTAXCREDITS AS DECIMAL(19,4)) AS fcurTotalEstateTrustTaxCredits,
CAST(z.FCURTOTALESTATETRUSTINCOME AS DECIMAL(19,4)) AS fcurTotalEstateTrustIncome,
CAST(z.FCURTOTALLTCTAXCREDITS AS DECIMAL(19,4)) AS fcurTotalLTCTaxCredits,
CAST(z.FCURTOTALACTIVELTCINCOME AS DECIMAL(19,4)) AS fcurTotalActiveLTCIncome,
CAST(z.FCURNONALLOWDEDTHISYR AS DECIMAL(19,4)) AS fcurNonAllowDedThisYr,
CAST(z.FCURNONALLOWDEDPRVYR AS DECIMAL(19,4)) AS fcurNonAllowDedPrvYr,
CAST(z.FCURADJUSTEDLTCINCOME AS DECIMAL(19,4)) AS fcurAdjustedLTCIncome,
CAST(z.FCURTOTALOTHERCREDITS AS DECIMAL(19,4)) AS fcurTotalOtherCredits,
CAST(z.FCUROTHERINCOMESUBTOTAL AS DECIMAL(19,4)) AS fcurOtherIncomeSubtotal,
CAST(z.FCURNETRENTS AS DECIMAL(19,4)) AS fcurNetRents,
CAST(z.FCURNETSELFEMPLOYEDINCOME AS DECIMAL(19,4)) AS fcurNetSelfEmployedIncome,
CAST(z.FCURANYOTHERINCOME AS DECIMAL(19,4)) AS fcurAnyOtherIncome,
CAST(z.FCURRLWTCREDIT AS DECIMAL(19,4)) AS fcurRLWTCredit,
CAST(z.FCURTOTALOTHERINCOME AS DECIMAL(19,4)) AS fcurTotalOtherIncome,
CAST(z.FCURTOTALOTHEREXPENSES AS DECIMAL(19,4)) AS fcurTotalOtherExpenses,
CAST(z.FCURINCOMEAFTEREXPENSES AS DECIMAL(19,4)) AS fcurIncomeAfterExpenses,
CAST(z.FCURLOSSBROUGHTFORWARD AS DECIMAL(19,4)) AS fcurLossBroughtForward,
CAST(z.FCURTOTALLOSSCLAIMED AS DECIMAL(19,4)) AS fcurTotalLossClaimed,
CAST(z.FCURTAXABLEINCOME AS DECIMAL(19,4)) AS fcurTaxableIncome,
CAST(z.FCURADJUSTEDTAXABLEINCOME AS DECIMAL(19,4)) AS fcurAdjustedTaxableIncome,
CAST(z.FBLNWORKEDINNZ AS SMALLINT) AS fblnWorkedInNZ,
CAST(z.FCURTAXONTAXABLEINCOME AS DECIMAL(19,4)) AS fcurTaxOnTaxableIncome,
CAST(z.FCUROTHINCTAXANDNRWT AS DECIMAL(19,4)) AS fcurOthIncTaxAndNRWT,
CAST(z.FCURTOTALTAXCREDITS AS DECIMAL(19,4)) AS fcurTotalTaxCredits,
CAST(z.FCURRESIDUALINCOMETAX AS DECIMAL(19,4)) AS fcurResidualIncomeTax,
CAST(z.FCURPROVTAXPAID AS DECIMAL(19,4)) AS fcurProvTaxPaid,
CAST(z.FCURREFUNDORTAX AS DECIMAL(19,4)) AS fcurRefundOrTax,
CAST(z.FCURREFUND AS DECIMAL(19,4)) AS fcurRefund,
CAST(z.FCURPROVTAXOVERPAYMENT AS DECIMAL(19,4)) AS fcurProvTaxOverpayment,
CAST(z.FCURTOTALREFUND AS DECIMAL(19,4)) AS fcurTotalRefund,
CAST(z.FCURREMAININGREFUND AS DECIMAL(19,4)) AS fcurRemainingRefund,
CAST(z.FCURPROVISIONALTAX AS DECIMAL(19,4)) AS fcurProvisionalTax,
CAST(z.FCURLOSSTOCARRYFORWARD AS DECIMAL(19,4)) AS fcurLossToCarryForward,
CAST(z.FCURIMPUTATIONTOCARRYFORWARD AS DECIMAL(19,4)) AS fcurImputationToCarryForward,
CAST(z.FCUREXCESSIMPUTATIONCREDITS AS DECIMAL(19,4)) AS fcurExcessImputationCredits,
CAST(z.FLNGSELECTGROUP AS INT) AS flngSelectGroup,
CAST(z.FDTMSELECTDATE AS TIMESTAMP) AS fdtmSelectDate,
CAST(z.FBLNGROUP2SUSPEND AS SMALLINT) AS fblnGroup2Suspend,
case when z.CURRENT_REC_FLAG='Y' then a.fstrResMethod
else null
end 
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurResIncome
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurResDeductions
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurResDeductionsPriorYear
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurResDeductionsClaimed
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurResNetIncome
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurResDeductionsForward
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurRDICarryForwardCurrentYear
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurRDICarryForwardRemaining
else null
end
,
case when z.CURRENT_REC_FLAG='Y' then a.fcurSaleOfProperty
else null
end
,
CAST(z.FSTRWHO AS VARCHAR(20)) AS fstrwho,
CAST(z.effective_from AS TIMESTAMP) AS fdtmwhen,
CAST(z.record_effective_timestamp AS TIMESTAMP) AS record_effective_timestamp,
CAST(z.record_expiry_timestamp AS TIMESTAMP) AS record_expiry_timestamp,
CAST(z.CURRENT_REC_FLAG AS VARCHAR(1)) AS record_active_flag,
CAST('N' AS VARCHAR(1)) AS record_deleted_flag,
CAST(z.insert_object_run_key AS INT) AS insert_object_run_key,
CAST(z.update_object_run_key AS INT) AS update_object_run_key
FROM  ${var:target_db}.${var:tdw_tbl_name} z
left outer join ${var:target_db}.app_tblnz_rtniitnr_${var:yyyymmdd} a
on CAST(z.FLNGdocKEY AS INT) =a.flngdockey;

-- Check row counts of RAW tables with TDW history loaded:
select count(1) as fstrresmethodcnt from ${var:target_db}.${var:app_tbl_name} where fstrResMethod='I';
select count(*) as raw_new_count from  ${var:target_db}.${var:app_tbl_name};
select count(distinct flngdockey) as distinct_keys_count FROM  ${var:target_db}.${var:app_tbl_name};
select count(*) as low_date_count FROM  ${var:target_db}.${var:app_tbl_name} where record_effective_timestamp = '1800-01-01 00:00:00';
select count(*) as high_date_count FROM  ${var:target_db}.${var:app_tbl_name} where record_expiry_timestamp = '9000-12-31 00:00:00';
select count(1) as lwmcnt from ${var:target_db}.${var:app_tbl_name} where fdtmwhen='1800-1-1';
drop table if exists prod_jnl.${var:app_tbl_name};
