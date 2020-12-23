
CREATE VIEW ${var:view_db}.dss_returns_keypoints_ir420
AS SELECT
z.IRD_NUMBER,
z.LOCATION_NUMBER,
z.RETURN_PERIOD_DATE,
z.RETURN_TYPE,
z.RETURN_VERSION_NO,
z.RETURN_STATUS,
z.FORM_VERSION_NO,
z.NUMBER_OF_ERROR_ITEMS,
z.`TIMESTAMP`,
z.ASSESSMENT_AMOUNT_604,
z.CATEGORY_A_1300,
z.CATEGORY_B_1301,
z.CATEGORY_C_1302,
z.CATEGORY_D_1303,
z.FBT_TO_PAY_100462,
z.REQUIRED_FOR_EDITS_100459,
z.REQUIRED_FOR_EDITS_100460,
z.TOT_TAX_VALUE_OF_BENS_100461,
z.FBT_RATE_USED_606,
z.FBT_RATE_USED_LAST_QTR_607,
z.FBT_TO_PAY_REFUND_IND_100525,
z.GST_ON_FRINGE_BENEFITS_1205,
z.record_effective_timestamp,
z.record_expiry_timestamp,
z.record_active_flag,
z.record_deleted_flag,
z.insert_object_run_key,
z.update_object_run_key
 FROM ${var:source_db}.dss_returns_keypoints_ir420 z
LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc 
ON CAST(z.IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER as INT)  
WHERE nvl(sc.special_classification, 'STD')='STD' 
AND nvl( sc.record_active_flag,'Y')='Y' 
AND nvl(sc.record_deleted_flag, 'N') = 'N' 

;



;