CREATE VIEW ${var:view_db}.app_tblnaics AS
SELECT z.flngNAICSKey, z.flngVer, z.flngVerLast, z.fstrNAICSVersion, z.fstrNAICS, z.fstrLevel1, z.fstrLevel2, z.fstrLevel3, z.fstrLevel4, z.fstrLevel5, z.fstrLevel6, z.flngcustomerkey, z.fintProfileNumber, z.flngAccountKey, z.fdtmCommence, z.fdtmCease, z.fcurBusinessMakeup, z.fblnDefault, z.fblnActive, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnaics z;