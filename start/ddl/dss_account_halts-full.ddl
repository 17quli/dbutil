CREATE VIEW ${var:view_db}.dss_account_halts AS
SELECT z.IRD_NUMBER, z.LOCATION_NUMBER, z.TAX_TYPE, z.RETURN_PERIOD_DATE, z.OFFICE_UNIT_CODE, z.HALT_TYPE_INDICATOR, z.DATE_HALT_START, z.DATE_HALT_END, z.HALT_REASON_CODE, z.MAINFRAME_USER_ID, z.HALT_STATUS_INDICATOR, z.DATE_APPLIED, z.DATE_CEASED, z.HALT_LEVEL_INDICATOR, z.UPDATED_BY, z.DATE_UPDATED, z.`TIMESTAMP`, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_account_halts z;