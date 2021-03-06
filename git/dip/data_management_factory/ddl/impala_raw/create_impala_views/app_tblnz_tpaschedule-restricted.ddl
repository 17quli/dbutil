
CREATE VIEW ${var:view_db}.app_tblnz_tpaschedule
AS SELECT
z.flngTPAKey,
z.flngSequence,
z.flngCustomerKey,
z.fstrName,
z.fstrIRDNumber,
z.fcurAmount,
z.fdtmDeleted,
z.fstrWho,
z.fdtmWhen,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.app_tblnz_tpaschedule z
left outer join 
(select fstrID, cl.fstrcustomerlevel
from ${var:source_db}.app_tblID id 
inner join ${var:source_db}.app_tblcustomerlevel cl
on id.flngCustomerKey = cl.flngCustomerKey
  where 
  id.fstrIDtype = 'IRD'
  and id.flngver = 0 
  and id.fblnDefault = 1
  and nvl(id.record_active_flag, 'Y') = 'Y'
  and nvl(id.record_deleted_flag, 'N') = 'N'
  and nvl(cl.record_active_flag, 'Y') = 'Y'
  and nvl(cl.record_deleted_flag, 'N') = 'N'
  ) idcl  
on cast(z.fstrIRDNumber as INT) = cast(idcl.fstrID as INT) 
where nvl(idcl.fstrcustomerlevel, 'STD') = 'STD' 



;