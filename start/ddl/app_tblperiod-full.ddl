CREATE VIEW ${var:view_db}.app_tblperiod AS
SELECT z.flngAccountKey, z.fdtmFilingPeriod, z.flngVer, z.flngVerLast, z.flngLinkedAccountKey, z.flngJointAccountKey, z.fblnPrime, z.fdtmPeriodBegin, z.fdtmPeriodEnd, z.fstrFiling, z.fcurTax, z.fcurTaxBalance, z.fcurTaxDelta, z.fcurInterest, z.fcurInterestBalance, z.fcurInterestDelta, z.fcurPenalty, z.fcurPenaltyBalance, z.fcurPenaltyDelta, z.fcurOther, z.fcurOtherBalance, z.fcurOtherDelta, z.fcurCredit, z.fcurCreditBalance, z.fcurCreditDelta, z.fcurBalance, z.fdtmActivity, z.fdtmPenalty, z.fdtmEffectMax, z.fdtmDelta, z.fdtmStatute, z.fdtmSystemStatute, z.fdtmUserStatute, z.fblnSBAExists, z.fblnRA, z.fblnPNI, z.flngDocKey, z.fblnActive, z.fstrWho, z.fdtmWhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tblperiod z;
