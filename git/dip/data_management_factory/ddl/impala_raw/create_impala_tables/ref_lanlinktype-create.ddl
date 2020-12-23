create table ${var:target_db}.ref_lanlinktype (
fstrlanguage varchar(6),
fstrlinktype varchar(12),
fstrdecode1 varchar(60),
fstrdecode2 varchar(510),
fstrdecodereverse varchar(60),
fstrdecode2reverse varchar(510),
fstrfromdecode varchar(510),
fstrtodecode varchar(510),
fstrdecodeweb varchar(510),
fstrdecodewebreverse varchar(510),
fstrdescription varchar(2000),
record_effective_timestamp timestamp,
record_expiry_timestamp timestamp,
record_active_flag varchar(1),
record_deleted_flag varchar(1),
checksum varchar(32),
insert_object_run_key int,
update_object_run_key int
 ) stored as parquet;