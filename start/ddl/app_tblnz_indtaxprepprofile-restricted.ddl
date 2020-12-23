CREATE VIEW ${var:view_db}.app_tblnz_indtaxprepprofile AS
SELECT z.flngDocKey, z.fintSeq, z.fstrIRDNumber, z.fintProfileNumber, z.fstrAgentAssociation, z.fstrAccountMgr, z.fstrExtensionOfTime, z.fdtmEOTWithdrawalDate, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_indtaxprepprofile z LEFT OUTER JOIN (SELECT DISTINCT fstrID, flngcustomerkey FROM ${var:source_db}.app_tblid WHERE fstrIDType = 'IRD' AND record_active_flag = 'Y' AND record_deleted_flag = 'N') id ON (CAST(z.fstrIRDNumber AS INT) = CAST(id.fstrID AS INT)) LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel cl ON id.flngcustomerkey = cl.flngcustomerkey WHERE (nvl(cl.fstrCustomerLevel, 'STD') = 'STD' AND nvl(cl.record_active_flag, 'Y') = 'Y' AND nvl(cl.record_deleted_flag, 'N') = 'N');