CREATE VIEW ${var:view_db}.app_tblnz_rtnnrtslineitem AS
SELECT z.fi64LineItemKey, z.flngVer, z.flngVerLast, z.fdtmPeriod, z.fstrRecipientIRD, z.fstrRecipientStatus, z.fdtmRecipientDOB, z.fstrRecipientSurname, z.fstrRecipientName, z.fstrRecipientAddress1, z.fstrRecipientAddress2, z.fstrRecipientAddress3, z.fstrRecipientAddress4, z.fstrRecipientCountryCode, z.fcurDividendsGross, z.fcurInterestGross, z.fcurRoyaltiesGross, z.fcurOtherGross, z.fcurLiableTotal, z.fcurTotalLessFDP, z.fcurNetNRWTPaid, z.fcurDividendsNRWT, z.fcurInterestNRWT, z.fcurRoyaltiesNRWT, z.fcurOtherNRWT, z.fstrPayerIRD, z.fstrPayerName, z.flngPayerCertificate, z.fstrPayerAddress1, z.fstrPayerAddress2, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_rtnnrtslineitem z LEFT OUTER JOIN (SELECT fstrID, cl.fstrcustomerlevel FROM ${var:source_db}.app_tblid id INNER JOIN ${var:source_db}.app_tblcustomerlevel cl ON id.flngCustomerKey = cl.flngCustomerKey WHERE id.fstrIDtype = 'IRD' AND id.flngver = 0 AND id.fblnDefault = 1 AND nvl(id.record_active_flag, 'Y') = 'Y' AND nvl(id.record_deleted_flag, 'N') = 'N' AND nvl(cl.record_active_flag, 'Y') = 'Y' AND nvl(cl.record_deleted_flag, 'N') = 'N') idcl ON CAST(z.fstrRecipientIRD AS INT) = CAST(idcl.fstrID AS INT) WHERE nvl(idcl.fstrcustomerlevel, 'STD') = 'STD';
