create view ${var:view_db}.dss_client_agents
as select 
z.ird_number,
z.location_number,
z.tax_type,
z.date_applied,
z.agent_ird_number,
z.agent_location_number,
z.date_end,
z.date_start,
z.time_extension,
z.withdraw_date,
z.`timestamp`,
z.date_ceased,
z.user_id,
z.date_processed,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag, 
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 from ${var:source_db}.dss_client_agents z
;
