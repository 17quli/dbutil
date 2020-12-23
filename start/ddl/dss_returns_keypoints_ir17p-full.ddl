CREATE VIEW ${var:view_db}.dss_returns_keypoints_ir17p AS
SELECT z.IRD_NUMBER, z.LOCATION_NUMBER, z.RETURN_PERIOD_DATE, z.RETURN_TYPE, z.RETURN_VERSION_NO, z.RETURN_STATUS, z.FORM_VERSION_NO, z.NUMBER_OF_ERROR_ITEMS, z.`TIMESTAMP`, z.DIVIDEND_PAYE_PAYABLE_1334, z.GRSS_DVND_SUBJT_TO_PAYE_100490, z.PRE_ENCRIPTION_CHECK_100018, z.PRE_ENCRIPTION_IRD_NO_100019, z.PRE_ENCRIPTION_LOC_NO_100020, z.STD_DISCLAIMER_APPLIES_100045, z.TOTAL_CREDITS_ATTACHED_100491, z.DIVIDEND_DISTRIBUTIONS_100583, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_returns_keypoints_ir17p z;
