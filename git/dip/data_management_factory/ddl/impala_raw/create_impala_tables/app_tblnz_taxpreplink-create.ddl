create table ${var:target_db}.app_tblnz_taxpreplink (
flngdockey int,
flngfromcustomerkey int,
flnglinkkey int,
fintfromprofilenumber smallint,
flngfromaccountkey int,
flngtocustomerkey int,
finttoprofilenumber smallint,
flngtoaccountkey int,
fstrlinktype varchar(12),
fblnmailredirect smallint,
fblndisbursementredirect smallint,
fdtmcommence timestamp,
fdtmcease timestamp,
fblnactive smallint,
fstrwho varchar(20),
fdtmwhen timestamp,
record_effective_timestamp timestamp,
record_expiry_timestamp timestamp,
record_active_flag varchar(1),
record_deleted_flag varchar(1),
insert_object_run_key int,
update_object_run_key int
 ) stored as parquet;
