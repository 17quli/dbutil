CREATE VIEW ${var:view_db}.app_tbladdressrecord AS
SELECT z.fi64addresskey, z.flngver, z.flngverlast, z.fdtmeffectivefrom, z.fdtmeffectiveto, z.fdtmsystemfrom, z.fdtmsystemto, z.fstrsource, z.flngcustomerkey, z.fintprofilenumber, z.fi64sourcekey, z.fstraddresstype, z.fstrstreet, z.fstrstreet2, z.fstrunit, z.fstrunittype, z.fstrcity, z.fstrcounty, z.fstrstate, z.fstrzip, z.fstrcountry, z.fstrattention, z.fstrurbanization, z.fstrdistrictoffice, z.fstrlocationcode, z.fstrmunicipality, z.fstrdistrict, z.fstrsubdistrict, z.fstrsubprovince, z.fstraddressdescription, z.fintaddressclass, z.fblnverified, z.fdtmverified, z.fstrrowid, z.fstrlistformataddress, z.fulladdress, z.fi64protecteddatasource, z.flngcrmkey, z.fblnblank, z.fblncurrent, z.fblnactive, z.fintprotectlevel, z.fstrwho, z.fdtmwhen, z.record_effective_timestamp, z.record_expiry_timestamp, z.record_active_flag, z.record_deleted_flag, z.insert_object_run_key, z.update_object_run_key FROM ${var:source_db}.app_tbladdressrecord z LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel cl ON z.flngcustomerkey = cl.flngcustomerkey WHERE cl.fstrcustomerlevel = 'STD' AND cl.record_active_flag = 'Y' AND cl.record_deleted_flag = 'N';
