CREATE VIEW ${var:view_db}.ref_rfrprofiletype AS
SELECT z.fstrProfileType, z.fblnOneForCustomer, z.fblnUpdateProfileInfo, z.fblnCanBeParent, z.fblnCanBeChild, z.fblnCanTransfer, z.fblnCommenceCease, z.fstrDocType, z.fintDocVer, z.fstrAttributePrePop, z.fstrPostProcessBo, z.flngFunction, z.fblnActive, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.ref_rfrprofiletype z;
