CREATE VIEW ${var:view_db}.app_tblnz_ksb2bgvcclaiminb AS
SELECT z.fi64KSB2BKey, z.fstrClaimID, z.fstrMemberTitle, z.fstrMemberFirstName, z.fstrMemberFamilyName, 
z.fstrMemberAddress1, z.fstrMemberStreet, z.fstrMemberStreet2, z.fstrMemberAddress2, z.fstrMemberUrbanization, 
z.fstrMemberCity, z.fstrMemberPostcode, z.fstrMemberCountry, z.fdtmAddressChange, z.fintClaimInfoType, 
z.fdtmFirstPaymentReceived, z.fintEligibleDays,
z.fblnIgnoreEligibleDays,
z.fblnIgnoreDirectContributions,
z.fcurMortgageDiversionAmount,
z.fblnIgnoreMortgageDiversion,
 z.fcurDirectContributions, 
z.fdtmClaimPeriod, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, 
z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key 
FROM ${var:source_db}.app_tblnz_ksb2bgvcclaiminb z LEFT OUTER JOIN ${var:source_db}.app_tblnz_ksb2binbound i 
ON z.fi64KSB2BKey = i.fi64KSB2BKey 
LEFT OUTER JOIN 
 (SELECT fstrID, cl.fstrcustomerlevel 
	FROM ${var:source_db}.app_tblid id 
	INNER JOIN ${var:source_db}.app_tblcustomerlevel cl 
	ON id.flngCustomerKey = cl.flngCustomerKey 
	WHERE id.fstrIDtype = 'IRD' AND id.flngver = 0 AND id.fblnDefault = 1 
	AND nvl(id.record_active_flag, 'Y') = 'Y' AND nvl(id.record_deleted_flag, 'N') = 'N' 
	AND nvl(cl.record_active_flag, 'Y') = 'Y' AND nvl(cl.record_deleted_flag, 'N') = 'N'
 )idcl 
 ON CAST(i.fstrMemberIRDNumber AS INT) = CAST(idcl.fstrID AS INT) 
 WHERE nvl(idcl.fstrcustomerlevel, 'STD') = 'STD';