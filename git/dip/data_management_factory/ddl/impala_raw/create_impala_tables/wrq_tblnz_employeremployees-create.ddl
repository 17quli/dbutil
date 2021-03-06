CREATE TABLE ${var:target_db}.wrq_tblnz_employeremployees (                                                                         
  flngrelationshipkey INT,
  flngver INT,
  flngverlast INT,
  flngemployercustomerkey INT,
  flngemployeraccountkey INT,
  flngemployeecustomerkey INT,
  fstremployeeirdnumber VARCHAR(18),
  fstremployeename VARCHAR(510),
  fstremployeetitle VARCHAR(100),
  fstremployeefirstname VARCHAR(100),
  fstremployeemiddlename VARCHAR(100),
  fstremployeefamilyname VARCHAR(100),
  fdtmemployeedob TIMESTAMP,
  fstrkiwisaverstatus VARCHAR(4),
  fstrunittype VARCHAR(200),
  fstrunitnumber VARCHAR(120),
  fstrstreetnumber VARCHAR(120),
  fstrstreetname VARCHAR(1020),
  fstrcity VARCHAR(400),
  fstrpostcode VARCHAR(120),
  fstrstate VARCHAR(24),
  fstrcountry VARCHAR(24),
  fstrdaytimecountry VARCHAR(12),
  fintdaytimecountrycode SMALLINT,
  fstrdaytimeareacode VARCHAR(20),
  fstrdaytimephonenumber VARCHAR(60),
  fstrdaytimeextension VARCHAR(40),
  fstrmobilecountry VARCHAR(12),
  fintmobilecountrycode SMALLINT,
  fstrmobileareacode VARCHAR(20),
  fstrmobilephonenumber VARCHAR(60),
  fstrmobileextension VARCHAR(40),
  fstremailaddress VARCHAR(1020),
  fdtmcommence TIMESTAMP,
  fdtmcease TIMESTAMP,
  fblnvalid SMALLINT,
  fstrwho VARCHAR(20),
  fdtmwhen TIMESTAMP,
  flngemployeekssaccountkey INT,
  flngemployeeslsaccountkey INT,
  fdtmkiwisaverenddate TIMESTAMP,
  fdtmkiwisaveroptindate TIMESTAMP,
  fdtmkiwisaveroptoutdate TIMESTAMP,
  fdtmkiwisaveroptoutdeclined TIMESTAMP,
  fblnautoenrolled SMALLINT,
  fblnnondistributionemployee SMALLINT,
  fstrdistrict VARCHAR(60),
  fstrsubdistrict VARCHAR(60),
  fstrsubprovince VARCHAR(100),
  fstrurbanization VARCHAR(100),
  fstrstreetaddress1 VARCHAR(510),
  fstrstreetaddress2 VARCHAR(510),
  fstrcounty VARCHAR(12),
  fstrattention VARCHAR(510),
  fstraddressdescription VARCHAR(510),
  fblnaddressverified SMALLINT,
  fdtmcreated TIMESTAMP,
  record_effective_timestamp TIMESTAMP,
  record_expiry_timestamp TIMESTAMP,
  record_active_flag VARCHAR(1),
  record_deleted_flag VARCHAR(1),
  insert_object_run_key INT,
  update_object_run_key INT
)
STORED AS PARQUET
;
