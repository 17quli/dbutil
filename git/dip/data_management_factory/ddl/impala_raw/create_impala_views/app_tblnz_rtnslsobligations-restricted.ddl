CREATE VIEW ${var:view_db}.app_tblnz_rtnslsobligations
AS SELECT
z.flngDocKey,
z.flngAccountKey,
z.fdtmFilingPeriod,
z.fblnAssessmentLimited,
z.fcurNZBAmount,
z.fcurOBBAssessment,
z.fblnCnv,
z.fi64IncDocSetKey,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblnz_rtnslsobligations z;