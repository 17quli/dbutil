create view ${var:view_db}.dss_cross_reference_types
as select 
z.reference_type,
z.date_applied,
z.description,
z.date_ceased,
z.`timestamp`,
z.validated,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag, 
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 from ${var:source_db}.dss_cross_reference_types z
;