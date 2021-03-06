CREATE TABLE ${var:target_db}.web_tblwebaccount (
flngAccountKey INT,
fintProfileNumber SMALLINT,
flngCustomerKey INT,
flngJointCustomerKey INT,
flngJointAccountKey INT,
fblnPrime SMALLINT,
fstrAccountType VARCHAR(12),
fintNameKey SMALLINT,
fstrNameType VARCHAR(40),
fstrFamilyName VARCHAR(510),
fstrMiddleName VARCHAR(100),
fstrFirstName VARCHAR(100),
fstrNameControl VARCHAR(20),
fdtmCommence TIMESTAMP,
fdtmCease TIMESTAMP,
fstrFilingFrq VARCHAR(60),
fstrTitle VARCHAR(20),
fstrSuffix VARCHAR(20),
fstrFreeFormatName VARCHAR(510),
fstrListFormatName VARCHAR(510),
fstrAdditionalName VARCHAR(510),
fstrAdditionalName2 VARCHAR(510),
fintAddressKey SMALLINT,
fstrAddressType VARCHAR(40),
fstrStreet VARCHAR(510),
fstrStreet2 VARCHAR(510),
fstrUnitType VARCHAR(100),
fstrUnit VARCHAR(60),
fstrCity VARCHAR(200),
fstrCounty VARCHAR(12),
fstrState VARCHAR(12),
fstrZip VARCHAR(60),
fstrDistrictOffice VARCHAR(12),
fstrCountry VARCHAR(12),
fstrAttention VARCHAR(510),
fstrLocationCode VARCHAR(60),
fstrUrbanization VARCHAR(100),
fstrMunicipality VARCHAR(60),
fstrDistrict VARCHAR(60),
fstrSubDistrict VARCHAR(60),
fstrSubProvince VARCHAR(100),
fstrAddressDescription VARCHAR(510),
fstrListFormatAddress VARCHAR(510),
fstrIDType VARCHAR(12),
fstrID VARCHAR(60),
fstrFormattedID VARCHAR(60),
fstrStatus VARCHAR(60),
fstrClosureReason VARCHAR(60),
fstrProfileType VARCHAR(12),
fstrProfileIdType VARCHAR(12),
fstrProfileId VARCHAR(60),
fstrProfileFormattedId VARCHAR(60),
flngDocKey INT,
fcurBalance DECIMAL(19,4),
fintParentProfileNumber SMALLINT,
fstrParentProfileType VARCHAR(12),
fstrParentProfileIdType VARCHAR(12),
fstrParentProfileId VARCHAR(60),
fstrParentProfileFormattedId VARCHAR(60),
fdtmWhen TIMESTAMP,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;