create table ${var:target_db}.dss_corp_filing_groups (
group_id int,
ird_number int,
date_applied timestamp,
date_end timestamp,
date_start timestamp,
dln_bgn_prefix int,
dln_bgn int,
dln_end_prefix int,
dln_end int,
group_turnover bigint,
group_turnover_year int,
accy_pro decimal(18,2),
iss varchar(2),
`timestamp` timestamp,
date_ceased timestamp,
record_effective_timestamp timestamp,
record_expiry_timestamp timestamp,
record_active_flag varchar(1),
record_deleted_flag varchar(1),
insert_object_run_key int,
update_object_run_key int
 ) stored as parquet;