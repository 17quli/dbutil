CREATE TABLE ${var:target_db}.app_tblnz_cassafeworkplan (
flngDocKey INT,
fstrPlanPreparedBy VARCHAR(24),
fstrPlanReviewedBy VARCHAR(24),
fdtmPreparedDate TIMESTAMP,
fdtmReviewedDate TIMESTAMP,
fstrBehaviour VARCHAR(60),
fblnInPersonMeeting SMALLINT,
fblnViaPhoneOrLetter SMALLINT,
fstrMeetingPlace VARCHAR(510),
fstrWhoAttendsTheMeeting VARCHAR(24),
fdtmMeetingDateTime TIMESTAMP,
fblnMobileCoverage SMALLINT,
fblnCustomerConcers SMALLINT,
fblnTwoIRStaff SMALLINT,
fblnOtherBookingCancelled SMALLINT,
fblnDuressTeam SMALLINT,
fblnSecurityGuard SMALLINT,
fblnFurtherIncidents SMALLINT,
fblnCurrentCstRisk SMALLINT,
fstrWho VARCHAR(20),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;