CREATE VIEW ${var:view_db}.wrq_tblwebattachments
AS SELECT
z.flngWebAttachmentKey,
z.fstrWebAttachmentType,
z.flngWebReqKey,
z.fstrName,
z.flngCheckSum,
z.flngSize,
z.flngSizeCompressed,
z.fstrDescription,
z.fi64BinaryDataKey,
z.fblnForcedPDF,
z.fi64DocEditInProgressKey,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.wrq_tblwebattachments z;