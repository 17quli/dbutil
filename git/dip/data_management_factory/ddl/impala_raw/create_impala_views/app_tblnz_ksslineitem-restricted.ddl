CREATE VIEW ${var:view_db}.app_tblnz_ksslineitem
AS SELECT
z.flngReturnKey,
z.flngItemNumber,
z.flngAccountKey,
z.fdtmFilingPeriod,
z.fdtmPayDayPeriod,
z.fi64KSEContributionKey,
z.fi64KSRContributionKey,
z.fblnReversed,
z.fblnKSEConverted,
z.fblnKSRConverted,
z.fstrCnvIRDNumber,
z.fstrCnvEmployeeName,
z.fstrCnvTaxCode,
z.fcurCnvKiwiSaverDeductions,
z.fcurCnvKiwiSaverContributions,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
FROM ${var:source_db}.app_tblnz_ksslineitem z
LEFT OUTER JOIN ${var:source_db}.app_tblaccount ac 
ON CAST(z.flngAccountKey AS INT) = CAST(ac.flngAccountKey as INT)
LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel cl ON ac.flngcustomerkey = cl.flngcustomerkey 
WHERE nvl(cl.fstrCustomerLevel, 'STD') = 'STD' 
  AND nvl(cl.record_active_flag, 'Y') = 'Y' 
  AND nvl(cl.record_deleted_flag, 'N') = 'N' ;