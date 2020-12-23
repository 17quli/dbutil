CREATE VIEW ${var:view_db}.dss_cm_audit_periods AS
SELECT z.PERIOD_ROWID, z.CASE_IDENTIFIER, z.PERIOD_IRD_NUMBER, z.PERIOD_LOCATION_NUMBER, z.TAX_TYPE, z.RETURN_PERIOD_DATE, z.CASE_TYPE_DESC, z.PERIOD_STATUS_DESC, z.OUTCOME_TYPE, z.LOSS_ADJUSTMENT_AMOUNT, z.ORIGINAL_TAX_AMOUNT, z.REASSESSED_TAX_AMOUNT, z.SHORTFALL_PENALTY_AMOUNT, z.TOTAL_GROSS_DISCREPANCIES_AMT, z.TOTAL_AGREED_DISCREPANCIES_AMT, z.TOTAL_ESTIM_DISCREPANCIES_AMT, z.NOT_AGREED_DISCREPANCIES_AMT, z.TOTAL_TAX_ADJUSTMENT_AMOUNT, z.UOMI_AMOUNT, z.LATE_FILING_PENALTY_AMOUNT, z.LATE_PAYMENT_PENALTY_AMOUNT, z.RETURN_PERIOD_VALIDATED, z.TAXPAYER_ADJUSTMENT_AMOUNT, z.PAYMENT_ADJUSTMENT_AMOUNT, z.APPROVED_IND, z.FORCED_VALIDATION_IND, z.CASE_ROWID, z.PERIOD_CREATED_DATE, z.PERIOD_CREATED_BY, z.PERIOD_LAST_UPDATED_DATE, z.PERIOD_LAST_UPDATED_BY, z.DATE_APPLIED, z.DATE_CEASED, z.`TIMESTAMP`, z.LEGISLATION_ACTS, z.BUSINESS_PROCESS, z.RECORD_OWNER, z.DATE_ALLOCATED, z.DUE_DATE, z.DIARY_DATE, z.DATE_COMPLETED, z.HEARING_DATE, z.REFERRING_OFFICER, z.REFERRING_OFFICE, z.COURT_LOCATION, z.CTA_STATUS, z.NATURE_OF_LITIGATION, z.SECTIONS, z.COURT_MATTER_NUMBER, z.NATIONAL_ADVISOR, z.RECORD_SUB_TYPE, z.PRIORITY_RATING, z.KEYWORDS, z.TYPE_OF_ISSUE, z.EXPOSURE_DRAFT, z.SPS_OS_QWBA, z.TS_STATUS, z.RECORD_TYPE, z.COMMENTS, z.ISSUE, z.OFFICER_TEAM_LEADER, z.TEAM_MEMBER, z.LTS_TEAM_LEADER_ID, z.SOURCE_OF_WORK, z.SOLICITOR_NAME, z.TEAM_LEADER_FULL_NAME, z.TEAM_MEMBER_FULL_NAME, z.CASE_RECORD_TYPE, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.dss_cm_audit_periods z LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc ON CAST(z.PERIOD_IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER AS INT) WHERE nvl(sc.special_classification, 'STD') = 'STD' AND nvl(sc.record_active_flag, 'Y') = 'Y' AND nvl(sc.record_deleted_flag, 'N') = 'N';
