CREATE VIEW ${var:view_db}.app_tblnz_income AS
SELECT z.fi64incomekey, z.flngver, z.flngverlast, z.flngcustomerkey, z.fstrincometype, z.fstrincomestatus, z.flngsourceaccountkey, z.fdtmdate, z.fcuramount, z.fcurdeductions, z.fstrsource, z.fi64sourcekey, z.fi64rtnlineitemkey, z.fstrsourcename, z.fdtmreversed, z.fblnmanual, z.fblnoverride, z.fblnactive, z.fstrwho, z.fdtmwhen, z.change_capture, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_income z;