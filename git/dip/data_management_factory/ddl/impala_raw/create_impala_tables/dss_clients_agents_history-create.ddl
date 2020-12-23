create table ${var:target_db}.dss_clients_agents_history (
ird_number int,
location_number int,
tax_type varchar(6),
return_type varchar(10),
date_applied timestamp,
return_period_date timestamp,
agent_ird_number int,
agent_location_number int,
date_start timestamp,
date_end timestamp,
lodgement_date timestamp,
client_active_ind varchar(2),
client_del_eot_ind varchar(2),
client_eot_ind varchar(2),
time_extension_code varchar(2),
balance_date_type varchar(2),
return_reqd_ind varchar(2),
return_reqd_eot_ind varchar(2),
return_lodgmnt_ind varchar(2),
deferred_eot_ind varchar(2),
withdrawn_eot_ind varchar(2),
return_efile_ind varchar(2),
return_efile_eot_ind varchar(2),
return_out_eot_ind varchar(2),
date_ceased timestamp,
`timestamp` timestamp,
insert_object_run_key int
 ) stored as parquet;