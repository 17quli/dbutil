CREATE VIEW ${var:view_db}.app_tblteamtime AS
SELECT z.FLNGTIMEKEY, z.FLNGVER, z.FLNGVERLAST, z.FLNGVERRI, z.FLNGFOLDERKEY, z.FLNGRESOURCEKEY, z.FLNGMILESTONEKEY, z.FDTMDATEFROM, z.FDTMDATETO, z.FDBLHOURS, z.fstrCellNotes, z.FSTRDESCRIPTION, z.flngTeamPeriodKey, z.fdtmDate, z.fstrActivity, z.fblnReport, z.FSTRWHO, z.FDTMWHEN, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblteamtime z;