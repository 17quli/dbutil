create table ${var:target_db}.app_tblcontact (
flngcontactkey int,
flngver int,
flngverlast int,
flngcustomerkey int,
fintprofilenumber smallint,
fstrcontacttype varchar(12),
fstrphonetype1 varchar(12),
fintcountrycode1 smallint,
fstrcountry1 varchar(12),
fstrareacode1 varchar(10),
fstrphonenumber1 varchar(30),
fstrextension1 varchar(20),
fstrphonetype2 varchar(12),
fintcountrycode2 smallint,
fstrcountry2 varchar(12),
fstrareacode2 varchar(10),
fstrphonenumber2 varchar(30),
fstrextension2 varchar(20),
fstrphonetype3 varchar(12),
fintcountrycode3 smallint,
fstrcountry3 varchar(12),
fstrareacode3 varchar(10),
fstrphonenumber3 varchar(30),
fstrextension3 varchar(20),
fstrphonetype4 varchar(12),
fintcountrycode4 smallint,
fstrcountry4 varchar(12),
fstrareacode4 varchar(10),
fstrphonenumber4 varchar(30),
fstrextension4 varchar(20),
fstrphonetype5 varchar(12),
fintcountrycode5 smallint,
fstrcountry5 varchar(12),
fstrareacode5 varchar(10),
fstrphonenumber5 varchar(30),
fstrextension5 varchar(20),
fstrcontactname varchar(510),
fstremail varchar(510),
fstrnote varchar(510),
flngcrmkey int,
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
