CREATE VIEW ${var:view_db}.wrq_tblwebsession
AS SELECT
z.flngSessionKey,
z.fstrSessionId,
z.flngWebLogonKey,
z.fstrIpAddress,
z.fstrUserAgent,
z.fdtmLogon,
z.fdtmLogoff,
z.fdtmLastPostBack,
z.flngSessionVerLast,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.wrq_tblwebsession z;
