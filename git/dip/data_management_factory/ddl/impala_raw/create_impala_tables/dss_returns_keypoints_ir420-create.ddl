CREATE TABLE ${var:target_db}.dss_returns_keypoints_ir420 (
IRD_NUMBER INT,
LOCATION_NUMBER INT,
RETURN_PERIOD_DATE TIMESTAMP,
RETURN_TYPE VARCHAR(10),
RETURN_VERSION_NO INT,
RETURN_STATUS VARCHAR(2),
FORM_VERSION_NO INT,
NUMBER_OF_ERROR_ITEMS INT,
`TIMESTAMP` TIMESTAMP,
ASSESSMENT_AMOUNT_604 DECIMAL(16,2),
CATEGORY_A_1300 DECIMAL(16,2),
CATEGORY_B_1301 DECIMAL(16,2),
CATEGORY_C_1302 DECIMAL(16,2),
CATEGORY_D_1303 DECIMAL(16,2),
FBT_TO_PAY_100462 DECIMAL(16,2),
REQUIRED_FOR_EDITS_100459 DECIMAL(16,2),
REQUIRED_FOR_EDITS_100460 DECIMAL(16,2),
TOT_TAX_VALUE_OF_BENS_100461 DECIMAL(16,2),
FBT_RATE_USED_606 VARCHAR(10),
FBT_RATE_USED_LAST_QTR_607 VARCHAR(10),
FBT_TO_PAY_REFUND_IND_100525 VARCHAR(2),
GST_ON_FRINGE_BENEFITS_1205 DECIMAL(16,2),
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT

 ) STORED AS PARQUET;