CREATE VIEW ${var:view_db}.dss_business_partners AS
SELECT z.BP_NUMBER, z.BP_CATEGORY_CODE, z.BP_TYPE_CODE, z.BP_LAST_NAME, z.BP_FIRST_NAME, z.IR_FIRST_CONTRIBUTION_DT, z.PROVIDER_FIRST_CONTRIBUTION_DT, z.CONTRIBUTION_HOLIDAY_EXPIRY_DT, z.CONTRIBUTION_HOLIDAY_START_DT, z.CONTRIBUTION_HOLIDAY_STATUS, z.FINANCIAL_HARDSHIP_INDICATOR, z.MEMBERSHIP_END_DATE, z.MEMBERSHIP_END_REASON_CODE, z.ACTIVE_TYPE_CODE, z.KICKSTART_DATE, z.BP_MEMBER_TYPE, z.ACTIVE_CHOICE_NOTIFICATION_DT, z.EMPLOYER_START_DATE, z.EMPLOYER_END_DATE, z.EMPLOYER_EXEMPT_CEASED_DATE, z.EMPLOYER_EXEMPT_START_DATE, z.SCHEME_ID, z.CHOSEN_SCHEME_EFFECTIVE_DATE, z.CHOSEN_SCHEME_END_DATE, z.SCHEME_ID_PREV, z.ADDRESS_KEY_FORM, z.NAME_1, z.NAME_2, z.CITY, z.CITY_POSTAL_CODE, z.STREET, z.HOUSE_NUMBER, z.COUNTRY_KEY, z.REGION, z.FIRST_TELEPHONE_NO, z.URL, z.USER_STATUS_CODE, z.CURRENT_RECORD_INDICATOR, z.DATE_APPLIED, z.DATE_CEASED, z.`TIMESTAMP`, z.SCHEME_ADMIN_IRD_NUMBER, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_business_partners z LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc ON CAST(z.SCHEME_ADMIN_IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER AS INT) WHERE nvl(sc.special_classification, 'STD') = 'STD' AND nvl(sc.record_active_flag, 'Y') = 'Y' AND nvl(sc.record_deleted_flag, 'N') = 'N';
