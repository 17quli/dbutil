CREATE VIEW ${var:view_db}.frd_tblnz_frdsend
AS SELECT
z.flngReturnKey,
z.flngDocKey,
z.flngDocVerLast,
z.fstrSourceState,
z.fcurAmount,
z.fcurPenalty,
z.fcurInterest,
z.fblnAuditChange,
z.fblnAmendment,
z.fstrForeignBankHash,
z.fdtmTimeStamp,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.frd_tblnz_frdsend z;