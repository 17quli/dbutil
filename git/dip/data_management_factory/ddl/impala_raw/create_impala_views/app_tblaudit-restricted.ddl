CREATE VIEW ${var:view_db}.app_tblaudit
AS SELECT
z.flngAuditkey,
z.fstrAuditType,
z.fstrAuditId,
z.fstrExternalID,
z.flngAccountKey,
z.flngFolderKey,
z.flngTeamKey,
z.flngJournalKey,
z.fblnPosted,
z.fdtmPosted,
z.fcurTotal,
z.fdblHours,
z.flngIndicatorKey,
z.flngPeriodIndKey,
z.flngDocKey,
z.fdtmWorkDate,
z.flngAuditGroupKey,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblaudit z;