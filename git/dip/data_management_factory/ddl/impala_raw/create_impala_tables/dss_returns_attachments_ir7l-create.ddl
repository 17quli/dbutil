create table ${var:target_db}.dss_returns_attachments_ir7l (
ird_number int,
location_number int,
return_period_date timestamp,
return_type varchar(10),
return_version_no int,
return_status varchar(2),
schedule_error_code int,
form_version_no int,
attachment_ird_number int,
certificate_sequence int,
doc_lodge_nbr_prefix int,
doc_lodge_nbr int,
doc_lodge_nbr_suffix int,
number_of_error_items int,
`timestamp` timestamp,
efile_lodgement_date_5 timestamp,
income_type_100190 int,
laqc_loss_144 decimal(16,2),
non_allowble_deductions_100793 decimal(16,2),
other_income_827 decimal(16,2),
overseas_income_828 decimal(16,2),
percent_of_profit_ent_100192 int,
reconcile_flag_4 varchar(4),
share_of_all_dividends_100193 decimal(16,2),
share_of_all_interest_100191 decimal(16,2),
share_of_imp_credits_705 decimal(16,2),
share_of_maori_auth_dst_100584 decimal(16,2),
share_of_oseas_tax_credits_863 decimal(16,2),
share_of_other_tax_credits_864 decimal(16,2),
share_of_rental_income_100802 decimal(16,2),
share_oth_passiv_income_100803 decimal(16,2),
total_share_of_income_865 decimal(16,2),
deduction_extgd_losses_100857 decimal(16,2),
pr_yr_n_allw_ded_claimd_100829 decimal(16,2),
non_allow_deds_cfwd_100859 decimal(16,2),
non_allow_deds_bfwd_100858 decimal(16,2),
record_effective_timestamp timestamp,
record_expiry_timestamp timestamp,
record_active_flag varchar(1),
record_deleted_flag varchar(1),
insert_object_run_key int,
update_object_run_key int
 ) stored as parquet;

