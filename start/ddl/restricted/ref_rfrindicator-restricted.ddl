CREATE VIEW ${var:view_db}.ref_rfrindicator AS
SELECT z.fstrIndicator, z.fblnCustomerLevel, z.fblnProfileLevel, z.fblnAccountLevel, z.fblnPeriodLevel, z.fblnPeriodRequired, z.fblnPeriodRange, z.fblnManual, z.fblnAmountAllowed, z.fblnUserRequired, z.flngFunction, z.flngFunctionCease, z.flngAssignFunction, z.fblnCommentRequired, z.fblnCommentCease, z.fblnReasonRequired, z.fblnHideAtCustomer, z.fblnHideAtAccount, z.fblnHideAtPeriod, z.fstrVirtualBo, z.fblnAlert, z.fstrDocType, z.fintDocVer, z.fblnActive, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.ref_rfrindicator z;