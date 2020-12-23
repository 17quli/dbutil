CREATE VIEW ${var:view_db}.dss_clients AS
SELECT z.IRD_NUMBER, z.ENTITY_TYPE, z.DATE_APPLIED, z.ENTITY_CLASS, z.CUST_TYPE, z.MASTER_LOCATION, z.DATE_CREATED, z.DATE_OF_BIRTH, z.ORG_COMMENCEMENT_DATE, z.CLIENT_STATUS, z.RESIDENT_IND, z.SIC_SOURCE, z.LOAN_IND, z.SECURE_IND, z.CLIENT_PASSWORD, z.RWT_RATE, z.IDENTIFICATION_TYPE_CODE, z.ID_SERIAL_NUMBER, z.PHONE_NUMBER, z.WORK_PHONE_NUMBER, z.CELL_PHONE_NUMBER, z.DATE_CEASED, z.`TIMESTAMP`, z.GENDER, z.NOMINATED_GST_IRD_NUMBER, z.NOMINATED_GST_LOCATION_NUMBER, z.LATEST_INC_PERIOD_ASSESSED, z.BALANCE_DATE, z.PROVISIONAL_IND_CODE, z.RATIO_PERCENTAGE, z.RATIO_STATUS_CODE, z.RATIO_BASE_PERIOD_DATE, z.CURRENT_CAL_RATIO_START_DATE, z.RATIO_PENDING_INDICATOR, z.INTERVIEW_REQUIRED_IND, z.NZ_CITIZEN_IND, z.VERIFIER_ORGANISATION_ID, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_clients z LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc ON CAST(z.IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER AS INT) WHERE nvl(sc.special_classification, 'STD') = 'STD' AND nvl(sc.record_active_flag, 'Y') = 'Y' AND nvl(sc.record_deleted_flag, 'N') = 'N';
