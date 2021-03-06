CREATE TABLE ${var:target_db}.app_tblnz_ksb2bgvcclaiminb (
`fi64KSB2BKey` BIGINT,
`fstrClaimID` VARCHAR(200),
`fstrMemberTitle` VARCHAR(20),
`fstrMemberFirstName` VARCHAR(100),
`fstrMemberFamilyName` VARCHAR(100),
`fstrMemberAddress1` VARCHAR(510),
`fstrMemberStreet` VARCHAR(510),
`fstrMemberStreet2` VARCHAR(510),
`fstrMemberAddress2` VARCHAR(510),
`fstrMemberUrbanization` VARCHAR(100),
`fstrMemberCity` VARCHAR(200),
`fstrMemberPostcode` VARCHAR(60),
`fstrMemberCountry` VARCHAR(12),
`fdtmAddressChange` TIMESTAMP,
`fintClaimInfoType` SMALLINT,
`fdtmFirstPaymentReceived` TIMESTAMP,
`fintEligibleDays` SMALLINT,
`fblnIgnoreEligibleDays` SMALLINT,
`fcurDirectContributions` DECIMAL(19,4),
`fblnIgnoreDirectContributions` SMALLINT,
`fcurMortgageDiversionAmount` DECIMAL(19,4),
`fblnIgnoreMortgageDiversion` SMALLINT,
`fdtmClaimPeriod` TIMESTAMP,
`fstrWho` VARCHAR(20),
`fdtmWhen` TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 )
  STORED AS PARQUET;