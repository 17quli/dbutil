create view ${var:view_db}.dss_gst_filing_grp_members
as select 
z.group_id,
z.ird_number,
z.location_number,
z.gst_filing_grp_type_code,
z.date_start,
z.date_applied,
z.gst_filing_member_type_code,
z.date_end,
z.date_ceased,
z.`timestamp`,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag, 
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 from ${var:source_db}.dss_gst_filing_grp_members z
left outer join ${var:source_db}.dss_special_clients_all sc
on cast(z.ird_number as int) = cast(sc.ird_number as int) 
where nvl(sc.special_classification, 'STD')='STD'
and nvl( sc.record_active_flag,'Y')='Y'
and nvl(sc.record_deleted_flag, 'N') = 'N';
