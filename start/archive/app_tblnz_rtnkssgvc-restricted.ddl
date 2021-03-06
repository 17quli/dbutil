CREATE VIEW ${var:view_db}.app_tblnz_rtnkssgvc
AS SELECT
z.`flngDocKey`,
z.`fintClaimType`,
z.`fblnFirstClaim`,
z.`fdtmClaimStartDate`,
z.`fblnFinalClaim`,
z.`fintFinalClaimEligibleDays`,
z.`fstrSchemeIRDNumber`,
z.`fblnAlternativeScheme`,
z.`fcurGVCContributionAmount`,
z.`fcurDirectMemberContributions`,
z.`fintActualEligibleDays`,
z.`fblnOverrideActualEligibleDays`,
z.`fcurMortgageDiversion`,
z.`fcurContributionsThroughIR`,
z.`fblnTransferred`,
z.`fintSTARTFirstEligibleDays`,
z.`fblnClaimedFullEntitlement`,
z.`fstrWho`,
z.`fdtmWhen`,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblnz_rtnkssgvc z
left join (select DISTINCT fstrID,fstrIDType,flngcustomerkey from ${var:source_db}.app_tblid where fstrIDType = 'IRD' AND record_active_flag = 'Y' AND record_deleted_flag= 'N') id1
on cast(z.fstrSchemeIRDNumber as int) = cast(id1.fstrID as int) 
left outer JOIN ${var:source_db}.app_tblCustomerLevel cl1 on 
id1.flngcustomerkey=cl1.flngcustomerkey 
WHERE 
(nvl(cl1.fstrCustomerLevel, 'STD') = 'STD' AND nvl(cl1.record_active_flag, 'Y') = 'Y' AND nvl(cl1.record_deleted_flag, 'N') = 'N')
;