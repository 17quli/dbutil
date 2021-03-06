CREATE TABLE ${var:target_db}.dss_instalment_agmt_elements (
IRD_NUMBER INT,
LOCATION_NUMBER INT,
CASE_TYPE_CODE VARCHAR(6),
CASE_NUMBER INT,
CASE_KEY INT,
RETURN_PERIOD_DATE TIMESTAMP,
TAX_TYPE VARCHAR(6),
ARRANGEMENT_NUMBER INT,
ELEMENT_SEQUENCE_NUMBER INT,
DATE_START TIMESTAMP,
DATE_END TIMESTAMP,
DATE_APPLIED TIMESTAMP,
DATE_CEASED TIMESTAMP,
`TIMESTAMP` TIMESTAMP,
ARRANGEMENT_ELEMENT_STATUS VARCHAR(2),
ASSESSMENT_BEG_WOFF_AMT DECIMAL(16,2),
LPP_BEG_WOFF_AMT DECIMAL(16,2),
ARRANGEMENT_BEG_WOFF_AMT DECIMAL(16,2),
QUAL_LPP_BEG_WOFF_AMT DECIMAL(16,2),
NON_QUAL_LPP_BEG_WOFF_AMT DECIMAL(16,2),
AVL_QUAL_LPP_WOFF_AMT DECIMAL(16,2),
AVL_NON_QUAL_LPP_WOFF_AMT DECIMAL(16,2),
LAST_SUMMARISED_SEQ_NUMBER INT,
OTH_ASSESSMENT_INCLUDED_IND_CD INT,
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;
