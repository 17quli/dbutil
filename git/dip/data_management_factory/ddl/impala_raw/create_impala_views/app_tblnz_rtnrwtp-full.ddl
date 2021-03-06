
CREATE VIEW ${var:view_db}.app_tblnz_rtnrwtp
AS SELECT
z.flngDocKey,
z.fcurGrossDistributionIRD,
z.fcurDistributionIRDMultiply,
z.fcurGrossDistributions,
z.fcurDistributionMultiply,
z.fcurGrossDividends,
z.fcurDividendMultiply,
z.fcurGrossTotal,
z.fcurTotalTaxOnDistributions,
z.fcurCreditsAttached,
z.fcurFDPAttached,
z.fcurTotalCredits,
z.fcurRWTpayable,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblnz_rtnrwtp z;
