CREATE TABLE ${var:target_db}.app_tblitemassociation (
fi64AssociationKey BIGINT,
fintSequence SMALLINT,
flngVer INT,
flngVerLast INT,
fstrItemAssociationType VARCHAR(60),
fstrSource VARCHAR(40),
fi64SourceKey BIGINT,
fstrSourceType VARCHAR(40),
fstrSourceId VARCHAR(510),
fstrDestination VARCHAR(40),
fi64Destinationkey BIGINT,
fstrDestinationType VARCHAR(40),
fstrDestinationId VARCHAR(510),
fdtmCreated TIMESTAMP,
fstrCreatedBy VARCHAR(20),
fdtmReversed TIMESTAMP,
fstrReversedWho VARCHAR(20),
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;
