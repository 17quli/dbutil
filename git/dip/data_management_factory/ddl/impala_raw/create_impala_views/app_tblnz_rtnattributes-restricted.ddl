create view ${var:view_db}.app_tblnz_rtnattributes
as SELECT z.flngDockey, 
       z.flngVer, 
       z.flngVerLast, 
       z.flngWebReqKey, 
       z.fstrFilingFrequency, 
       z.fstrSourceType, 
       z.fstrWebLogonID, 
       z.fstrFormTypeFiled, 
       z.fstrFormTypeExpected, 
       z.fstrIPAddress, 
       z.fstrVendorID, 
       z.fstrSoftwareProvider, 
       z.fstrSoftwarePlatform, 
       z.fstrSoftwareRelease, 
       z.fstrDLN, 
       z.fdtmCeaseDate, 
       z.fstrCeaseExplanation, 
       z.fblnAmended, 
       z.fstrAmendReason, 
       z.fstrAmendText, 
       z.fblnAudited, 
       z.fblnCorrespondence, 
       z.fblnFuturePeriod, 
       z.fblnDiscovery, 
       z.fblnNilReturn, 
       z.fblnDefault, 
       z.fblnFinalReturn, 
       z.fblnProvisional, 
       z.fcurAmountDue, 
       z.fdtmPaymentDueDate, 
       z.fdtmPaymentDueDateExtended, 
       z.fblnConverted, 
       z.fblnOriginallyConverted, 
       z.fcurCreditTransferAmount, 
       z.fdtmthirtydaystopay, 
       z.fstrWho, 
       z.fdtmWhen, 
       z.record_effective_timestamp, 
       z.record_expiry_timestamp, 
       z.record_active_flag, 
       z.record_deleted_flag, 
       z.insert_object_run_key, 
       z.update_object_run_key 
FROM ${var:source_db}.app_tblnz_rtnattributes z 
WHERE z.flngDocKey IN 
    (SELECT DISTINCT rtn.flngDocKey 
     FROM ${var:source_db}.app_tblreturn rtn 
     INNER JOIN ${var:source_db}.app_tblaccount ac ON rtn.flngAccountKey = ac.flngAccountKey 
     INNER JOIN ${var:source_db}.app_tblcustomerinfo cl ON ac.flngcustomerkey = cl.flngcustomerkey 
     WHERE nvl(ac.record_active_flag, 'Y') = 'Y' 
       AND nvl(ac.record_deleted_flag, 'N') = 'N' 
       AND nvl(cl.fstrcustomerlevel, 'STD') = 'STD' 
       AND nvl(cl.record_active_flag, 'Y') = 'Y' 
       AND nvl(cl.record_deleted_flag, 'N') = 'N') ;
