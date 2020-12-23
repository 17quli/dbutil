CREATE VIEW ${var:view_db}.dss_bp_member_summary_details AS
SELECT z.BP_NUMBER, z.CURRENT_ENROLMENT_METHOD, z.INITIAL_ENROLMENT_METHOD, z.REVISED_ENROLMENT_METHOD, z.CURRENT_MEMBER_STATUS, z.MEMBERSHIP_START_DATE, z.REVISED_ENROL_DATE, z.GENDER, z.DATE_OF_BIRTH, z.CONTRIB_HOL_INDICATOR, z.CONTRIB_HOL_TYPE, z.CONTRIB_HOL_DURATION, z.CONTRIB_HOL_EXPIRED, z.MEMBER_AGE_YEARS, z.RECORD_COUNT, z.DATE_APPLIED, z.DATE_CEASED, z.`TIMESTAMP`, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_bp_member_summary_details z;