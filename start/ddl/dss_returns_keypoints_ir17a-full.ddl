CREATE VIEW ${var:view_db}.dss_returns_keypoints_ir17a AS
SELECT z.IRD_NUMBER, z.LOCATION_NUMBER, z.RETURN_PERIOD_DATE, z.RETURN_TYPE, z.RETURN_VERSION_NO, z.RETURN_STATUS, z.FORM_VERSION_NO, z.NUMBER_OF_ERROR_ITEMS, z.`TIMESTAMP`, z.DIVIDENDS_PAID_100015, z.DIVIDEND_PAYE_PAYABLE_100258, z.DIV_NOT_SUBJECT_TO_RWT_100256, z.PRE_ENCRIPTION_CHECK_100018, z.PRE_ENCRIPTION_IRD_NO_100019, z.PRE_ENCRIPTION_LOC_NO_100020, z.STD_DISCLAIMER_APPLIES_100045, z.TOTAL_RWT_ON_DIVIDENDS_100257, z.TOTAL_TAX_CREDITS_100173, z.RWT_LIABILITY_100582, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_returns_keypoints_ir17a z;
