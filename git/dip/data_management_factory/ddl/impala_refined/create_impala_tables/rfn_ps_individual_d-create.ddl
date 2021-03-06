create table
	${var:target_db}.rfn_ps_individual_d ( dip_party_sk bigint,
	dip_party_id varchar(30),
	common_dip_party_id varchar(30),
	record_effective_timestamp timestamp,
	record_expiry_timestamp timestamp,
	party_origin varchar(10),
	customer_key varchar(10),
	ird_number varchar(10),
	customer_no varchar(10),
	record_active_flag char(1),
	legal_name varchar(255),
	trading_name varchar(255),
	party_start_date timestamp,
	party_ceased_date timestamp,
	party_ceased_flag char(1),
	insolvency_reason varchar(30),
	insolvency_code varchar(10),
	insolvency_flag char(1),
	party_type varchar(255),
	party_type_code varchar(10),
	party_subtype varchar(255),
	party_subtype_code varchar(10),
	party_class varchar(30),
	party_class_code varchar(10),
	party_segment varchar(255),
	party_segment_code varchar(10),
	bic_code varchar(30),
	bic_desc varchar(255),
	anzsic_level4_code varchar(10),
	anzsic_level4_desc varchar(255),
	anzsic_level3_code varchar(10),
	anzsic_level3_desc varchar(255),
	anzsic_level2_code varchar(10),
	anzsic_level2_desc varchar(255),
	anzsic_level1_code varchar(10),
	anzsic_level1_desc varchar(255),
	security_level varchar(255),
	security_level_code varchar(10),
	district_office varchar(30),
	nz_firearms_licence_id varchar(30),
	os_taxpayer_id varchar(30),
	os_taxpayer_id_issuer varchar(30),
	acc_id varchar(30),
	mbie_client_id varchar(30),
	credit_reported_flag char(1),
	comm_compliance_watch_flag char(1),
	suspected_bank_fraud_flag char(1),
	suspected_fraud_flag char(1),
	security_incident_rptd_flag char(1),
	safety_risk_level varchar(30),
	pref_title varchar(10),
	pref_given_name varchar(50),
	pref_other_given_name varchar(50),
	pref_family_name varchar(50),
	date_of_birth timestamp,
	date_of_death timestamp,
	birth_cert_id varchar(30),
	birth_cert_issuer varchar(30),
	nz_passport_id varchar(30),
	os_passport_id varchar(30),
	os_passport_issuer varchar(30),
	nz_cert_identity_dia varchar(30),
	nz_cert_identity_mbie varchar(30),
	nz_refugee_id_dia varchar(30),
	nz_refugee_id_mbie varchar(30),
	nz_emergency_travel_id varchar(30),
	driver_license_id varchar(30),
	driver_license_issuer varchar(30),
	intl_driver_permit_id varchar(30),
	nz_hospitality_18over_id varchar(30),
	nz_student_id varchar(30),
	nz_student_issuer varchar(50),
	nz_social_welfare_id varchar(30),
	us_social_security_no varchar(30),
	foreign_employment_id varchar(30),
	ncp_id varchar(30),
	ministry_of_children_id varchar(30),
	emigrated_flag char(1),
	border_alert_flag char(1),
	in_prison_flag char(1),
	undischarged_bankrupt_flag char(1),
	insert_object_run_key int,
	update_object_run_key int,
	flngcustomerkey int ) stored as parquet;
