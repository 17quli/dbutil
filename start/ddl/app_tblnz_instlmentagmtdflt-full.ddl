CREATE VIEW ${var:view_db}.app_tblnz_instlmentagmtdflt AS
SELECT z.flngPaymentPlanKey, z.flngVer, z.flngVerLast, z.flngWorkKey, z.fdtmNextPolice, z.fcurDifference, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_instlmentagmtdflt z;
