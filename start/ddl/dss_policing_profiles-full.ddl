CREATE VIEW ${var:view_db}.dss_policing_profiles AS
SELECT z.IRD_NUMBER, z.LOCATION_NUMBER, z.RETURN_TYPE, z.RETURN_PERIOD_DATE, z.DATE_APPLIED, z.DATE_CREATED, z.CREATED_BY, z.EXTENSION_IND, z.EXTENSION_CODE, z.EXTENDED_BY, z.DATE_EXTENSION_GRANTED, z.FINALISATION_CODE, z.FINALISED_BY, z.DATE_ORIGINALLY_DUE, z.DATE_ACTUALLY_DUE, z.DATE_LODGED, z.DATE_FINALISED, z.FILING_FREQUENCY, z.NO_DAYS_TO_FILE, z.DATE_CEASED, z.`TIMESTAMP`, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_policing_profiles z;