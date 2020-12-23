CREATE VIEW ${var:view_db}.app_tblnz_kssresidual AS
SELECT z.flngReturnKey, z.flngItemNumber, z.fstrContributionType, z.fcurContributionAmount, z.fdtmPayDayPeriod, z.fi64ContributionKey, z.flngMemberAccountKey, z.fstrMemberIRD, z.flngRelationshipKey, z.flngEmployerCustomerKey, z.flngEmployerAccountKey, z.fblnRegister, z.flngCaseKey, z.fblnWorkItem, z.flngWorkKey, z.fblnPartialOptOut, z.fblnComplete, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_kssresidual z LEFT OUTER JOIN ${var:source_db}.app_tblaccount a ON CAST(z.flngMemberAccountKey AS INT) = CAST(a.flngAccountKey AS INT) LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel c ON a.flngcustomerkey = c.flngcustomerkey WHERE nvl(a.record_active_flag, 'Y') = 'Y' AND nvl(a.record_deleted_flag, 'N') = 'N' AND nvl(c.fstrCustomerLevel, 'STD') != 'SPCAD2' AND nvl(c.record_active_flag, 'Y') = 'Y' AND nvl(c.record_deleted_flag, 'N') = 'N';
