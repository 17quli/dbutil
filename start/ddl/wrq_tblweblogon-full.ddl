CREATE VIEW ${var:view_db}.wrq_tblweblogon AS
SELECT z.flngWebLogonKey, z.flngVer, z.flngVerLast, z.fstrWebLogon, z.fstrApplication, z.flngcustomerkey, z.fstrWebPassword, z.fstrAuthorizationCode, z.fblnAuthorizationDisabled, z.fstrAuthorizationEmail, z.fstrAuthorizationPhoneCarrier, z.fstrAuthorizationPhoneCountry, z.fstrAuthorizationPhoneAreaCode, z.fstrAuthorizationPhone, z.fdtmAuthorizationCodeInvalid, z.fdtmPasswordExpires, z.fdtmPasswordInvalid, z.fstrEncryptionType, z.fstrSalt, z.fstrWebName, z.fstrEmail, z.fdtmOpened, z.fdtmClosed, z.fdtmLastPublished, z.fstrPhoneCountry, z.fstrPhoneType, z.fstrPhoneAreaCode, z.fstrPhoneNumber, z.fstrPhoneExtension, z.fstrPhoneCountry2, z.fstrPhoneType2, z.fstrPhoneAreaCode2, z.fstrPhoneNumber2, z.fstrPhoneExtension2, z.fstrSecretQuestion, z.fstrSecretAnswer, z.fstrSecretEncryptionType, z.fstrSecretSalt, z.fintFailedAttempts, z.fintFailedQuestions, z.fstrAccessType, z.flngDockey, z.fdtmCurrentLogon, z.fdtmLastLogon, z.flngParentWebLogonKey, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.wrq_tblweblogon z LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel cl ON cl.flngcustomerkey = z.flngcustomerkey WHERE (nvl(cl.fstrcustomerlevel, 'STD') != 'SPCAD2' AND nvl(cl.record_active_flag, 'Y') = 'Y' AND nvl(cl.record_deleted_flag, 'N') = 'N');