create view ${var:view_db}.dss_clients_agents_history
as select 
z.ird_number,
z.location_number,
z.tax_type,
z.return_type,
z.date_applied,
z.return_period_date,
z.agent_ird_number,
z.agent_location_number,
z.date_start,
z.date_end,
z.lodgement_date,
z.client_active_ind,
z.client_del_eot_ind,
z.client_eot_ind,
z.time_extension_code,
z.balance_date_type,
z.return_reqd_ind,
z.return_reqd_eot_ind,
z.return_lodgmnt_ind,
z.deferred_eot_ind,
z.withdrawn_eot_ind,
z.return_efile_ind,
z.return_efile_eot_ind,
z.return_out_eot_ind,
z.date_ceased,
z.`timestamp`,
z.insert_object_run_key
 from ${var:source_db}.dss_clients_agents_history z
left outer join  ${var:source_db}.dss_special_clients_all sc
on cast(z.ird_number as int) = cast(sc.ird_number as int) 
where nvl(sc.special_classification, 'STD')='STD'
and nvl( sc.record_active_flag,'Y')='Y'
and nvl(sc.record_deleted_flag, 'N') = 'N';
