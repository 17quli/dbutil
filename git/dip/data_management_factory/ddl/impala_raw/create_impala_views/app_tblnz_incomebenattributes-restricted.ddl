
CREATE VIEW ${var:view_db}.app_tblnz_incomebenattributes
AS SELECT
z.fi64IncomeKey,
z.flngVer,
z.flngVerLast,
z.fstrBeneficiaryName,
z.fdtmBeneficiaryDOB,
z.fstrBeneficiaryAddress,
z.fstrBeneficiaryIRD,
z.fblnBeneficiaryIsNonResident,
z.fcurBeneficiaryInterest,
z.fcurBeneficiaryDividends,
z.fcurBeneficiaryMaoriAuthority,
z.fcurBeneficiaryOverseas,
z.fcurBeneficiaryOther,
z.fcurBeneficiaryTaxableIncome,
z.fblnBeneficiaryTrustPayingTax,
z.fcurBeneficiaryNonComplying,
z.fcurBeneficiaryTaxOnTaxableInc,
z.fcurBeneficiaryOverseasTaxPaid,
z.fcurBeneficiaryTaxLessOverseas,
z.fcurBeneficiaryImputation,
z.fcurBeneficiaryAfterImputation,
z.fcurBeneficiaryTaxCredits,
z.fcurBeneficiaryTaxLessCredits,
z.fcurBeneficiaryTaxNonComplying,
z.fcurBeneficiaryTotalTaxPayable,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblnz_incomebenattributes z
left outer join 
(select fstrID, 'Y' as tblcustmatch, cl.fstrcustomerlevel
 from dev_raw.app_tblID id 
 inner join dev_raw.app_tblcustomerlevel cl
 on id.flngCustomerKey = cl.flngCustomerKey
  where 
  id.fstrIDtype = 'IRD' 
  and id.fblnDefault = 1
  and nvl(id.record_active_flag, 'Y') = 'Y'
  and nvl(id.record_deleted_flag, 'N') = 'N'
  and nvl(cl.record_active_flag, 'Y') = 'Y'
  and nvl(cl.record_deleted_flag, 'N') = 'N'
  ) idcl
on cast(z.fstrBeneficiaryIRD as INT) = cast(idcl.fstrID as INT)  
where
nvl(idcl.fstrcustomerlevel, 'STD') = 'STD' 
;