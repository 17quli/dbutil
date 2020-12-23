CREATE VIEW ${var:view_db}.app_tblnz_cassafeworkplan AS
SELECT z.flngDocKey, z.fstrPlanPreparedBy, z.fstrPlanReviewedBy, z.fdtmPreparedDate, z.fdtmReviewedDate, z.fstrBehaviour, z.fblnInPersonMeeting, z.fblnViaPhoneOrLetter, z.fstrMeetingPlace, z.fstrWhoAttendsTheMeeting, z.fdtmMeetingDateTime, z.fblnMobileCoverage, z.fblnCustomerConcers, z.fblnTwoIRStaff, z.fblnOtherBookingCancelled, z.fblnDuressTeam, z.fblnSecurityGuard, z.fblnFurtherIncidents, z.fblnCurrentCstRisk, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblnz_cassafeworkplan z LEFT OUTER JOIN ${var:source_db}.app_tblacaseall ca ON z.flngDocKey = ca.flngDocKey LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel cl ON ca.flngCustomerKey = cl.flngCustomerKey WHERE nvl(cl.fstrcustomerlevel, 'STD') != 'SPCAD2' AND nvl(ca.record_active_flag, 'Y') = 'Y' AND nvl(ca.record_deleted_flag, 'N') = 'N' AND nvl(cl.record_active_flag, 'Y') = 'Y' AND nvl(cl.record_deleted_flag, 'N') = 'N';