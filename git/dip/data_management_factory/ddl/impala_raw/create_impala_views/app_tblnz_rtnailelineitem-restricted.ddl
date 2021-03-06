-- --caters for scenarios 1)If base IRD finds a match; 2)If base IRD is null; 3)If base IRD is not null and can't find a match
CREATE VIEW ${var:view_db}.app_tblnz_rtnailelineitem
AS SELECT
z.fi64LineItemKey,
z.flngVer,
z.flngVerLast,
z.fstrRecipientIdentifier,
z.fstrRecipientName,
z.fstrRecipientIRD,
z.fdtmRecipientDOB,
z.fstrRecipientPhone,
z.fstrRecipientEmail,
z.fstrRecipientAddress,
z.fstrRecipientCountry,
z.fstrRecipientCountryCode,
z.fcurRecipientPercentage,
z.fblnJointAccountIndicator,
z.flngJointAccountHolders,
z.fcurGrossAmount,
z.fcurDeducted,
z.fblnOverridePercentages,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
from ${var:source_db}.app_tblnz_rtnailelineitem z
LEFT OUTER JOIN 
  (SELECT fstrID, 
          cl.fstrcustomerlevel 
   FROM dev_raw.app_tblid id 
   INNER JOIN dev_raw.app_tblcustomerlevel cl ON id.flngCustomerKey = cl.flngCustomerKey 
   WHERE id.fstrIDtype = 'IRD' 
     AND id.flngver = 0 
     AND id.fblnDefault = 1 
     AND nvl(id.record_active_flag, 'Y') = 'Y' 
     AND nvl(id.record_deleted_flag, 'N') = 'N' 
     AND nvl(cl.record_active_flag, 'Y') = 'Y' 
     AND nvl(cl.record_deleted_flag, 'N') = 'N') idcl ON CAST(z.fstrRecipientIRD AS INT) = CAST(idcl.fstrID AS INT) 
WHERE nvl(idcl.fstrcustomerlevel, 'STD') = 'STD' 
;

