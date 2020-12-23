CREATE VIEW ${var:view_db}.app_tblcltpmntplanbillitm
AS SELECT
z.flngPaymentPlanKey,
z.flngCustomerKey,
z.flngAccountKey,
z.fdtmFilingPeriod,
z.flngBillItemKey,
z.flngVer,
z.flngVerLast,
z.fblnNotInSchedule,
z.flngIndicatorKey,
z.fblnActive,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
FROM ${var:source_db}.app_tblcltpmntplanbillitm z;