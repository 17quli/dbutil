CREATE VIEW ${var:view_db}.app_tblnz_rtnfamsqrupbreakdwn
AS SELECT
z.flngDocKey,
z.fintSeq,
z.fintRelationshipPeriod,
z.fintEntitlementPeriod,
z.fdtmStart,
z.fdtmStop,
z.fcurFTC,
z.fcurIWTC,
z.fcurCTC,
z.fcurMFTC,
z.fcurPTC,
z.fcurBSTC,
z.fcurAmount,
z.flngFAMEntitlementKey,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblnz_rtnfamsqrupbreakdwn z;