CREATE TABLE ${var:target_db}.app_tblnz_kssmembertoscheme (
flngRelationshipKey INT,
flngVer INT,
flngVerLast INT,
flngMemberCustomerKey INT,
flngMemberAccountKey INT,
flngIDKey INT,
flngSchemeCustomerKey INT,
flngSchemeAccountKey INT,
fdtmCommence TIMESTAMP,
fdtmCease TIMESTAMP,
fdtmSchemeLinkDate TIMESTAMP,
fblnProvisional SMALLINT,
fstrSchemeChoiceType VARCHAR(12),
fstrCeaseReason VARCHAR(12),
fstrClosureReason VARCHAR(12),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
 ) STORED AS PARQUET;