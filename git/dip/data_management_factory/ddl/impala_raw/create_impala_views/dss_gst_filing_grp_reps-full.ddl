create view ${var:view_db}.dss_gst_filing_grp_reps
as select 
z.group_id,
z.ird_number,
z.location_number,
z.gst_filing_grp_type_code,
z.date_start,
z.date_applied,
z.date_end,
z.date_ceased,
z.`timestamp`,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag, 
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 from ${var:source_db}.dss_gst_filing_grp_reps z
;
