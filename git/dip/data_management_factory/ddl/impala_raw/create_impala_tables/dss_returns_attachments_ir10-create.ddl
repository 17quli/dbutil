CREATE TABLE ${var:target_db}.dss_returns_attachments_ir10 (
IRD_NUMBER INT,
LOCATION_NUMBER INT,
RETURN_PERIOD_DATE TIMESTAMP,
RETURN_TYPE VARCHAR(10),
RETURN_VERSION_NO INT,
RETURN_STATUS VARCHAR(2),
SCHEDULE_ERROR_CODE INT,
FORM_VERSION_NO INT,
ATTACHMENT_IRD_NUMBER INT,
CERTIFICATE_SEQUENCE INT,
DOC_LODGE_NBR_PREFIX INT,
DOC_LODGE_NBR INT,
DOC_LODGE_NBR_SUFFIX INT,
NUMBER_OF_ERROR_ITEMS INT,
`TIMESTAMP` TIMESTAMP,
ACCOUNTS_GST_EXCLUSIVE_100016 VARCHAR(2),
ACCOUNTS_GST_INCLUSIVE_100507 VARCHAR(2),
ACCOUNTS_PAYABLE_100005 DECIMAL(16,2),
ACCOUNTS_RECEIVABLE_C_A_1318 DECIMAL(16,2),
ACCS_FOR_12_MTH_PERIOD_100017 VARCHAR(2),
ADVERTISING_EXP_100503 DECIMAL(16,2),
BAD_DEBTS_EXP_1308 DECIMAL(16,2),
BANK_ACCOUNTS_100006 DECIMAL(16,2),
BANK_ACCOUNTS_C_A_1319 DECIMAL(16,2),
CLOSING_STOCK_I_P_100003 DECIMAL(16,2),
COMMUNICATION_EXP_100504 DECIMAL(16,2),
CUR_ACCT_CLOSING_BALNCE_100011 DECIMAL(16,2),
CUR_YR_TAXABLE_PROFIT_100004 DECIMAL(16,2),
DEPRECIATION_EXP_706 DECIMAL(16,2),
DIVIDENDS_A_I_1307 DECIMAL(16,2),
DIVIDENDS_PAID_100015 DECIMAL(16,2),
DRAWINGS_PSF_100010 DECIMAL(16,2),
EFILE_LODGEMENT_DATE_5 TIMESTAMP,
ENTERTAINMENT_EXP_1309 DECIMAL(16,2),
FBT_EXP_1304 DECIMAL(16,2),
FURNITURE_FITTINGS_F_A_1323 DECIMAL(16,2),
GAIN_ON_DISP_FIXD_ASSTS_100014 DECIMAL(16,2),
GROSS_PROFIT_1306 DECIMAL(16,2),
INSURANCE_EXP_1310 DECIMAL(16,2),
INTANGIBLES_1326 DECIMAL(16,2),
INTEREST_A_I_708 DECIMAL(16,2),
INTEREST_EXPENSE_707 DECIMAL(16,2),
LAND_BUILDINGS_F_A_1324 DECIMAL(16,2),
LEGAL_EXPENSES_1311 DECIMAL(16,2),
LOSS_ON_DISP_FIXD_ASSTS_100013 DECIMAL(16,2),
MGMENT_CONSULT_FEE_EXP_100505 DECIMAL(16,2),
MULTIPLE_ACTIVITY_IND_100001 VARCHAR(2),
NET_RENTAL_INCOME_712 DECIMAL(16,2),
OPENING_STOCK_I_P_100002 DECIMAL(16,2),
OTHER_ASSETS_1330 DECIMAL(16,2),
OTHER_CURRENT_ASSETS_1320 DECIMAL(16,2),
OTHER_EXPENSES_1317 DECIMAL(16,2),
OTHER_FIXED_ASSETS_1325 DECIMAL(16,2),
OTHER_INCOME_827 DECIMAL(16,2),
PLANT_MACHINERY_F_A_1322 DECIMAL(16,2),
PREFERENCE_SHARES_O_A_1327 DECIMAL(16,2),
PROP_SHARE_FUNDS_PSF_100012 DECIMAL(16,2),
PURCHASES_I_P__709 DECIMAL(16,2),
RATES_1312 DECIMAL(16,2),
RENTAL_LEASE_PAYMENTS_713 DECIMAL(16,2),
REPAIRS_MAINTENANCE_EXP_1313 DECIMAL(16,2),
ROYALTIES_A_I_100502 DECIMAL(16,2),
ROYALTIES_EXP_100506 DECIMAL(16,2),
R_AND_D_EXP_1314 DECIMAL(16,2),
SALARIES_AND_WAGES_711 DECIMAL(16,2),
SALES_SERVICE_I_P_1305 DECIMAL(16,2),
SHARES_AND_DEBENTURES_1328 DECIMAL(16,2),
SUBCONTRACTOR_PAYMENTS_1315 DECIMAL(16,2),
TERM_DEPOSITS_O_A_1329 DECIMAL(16,2),
TERM_LIABILITIES_100008 DECIMAL(16,2),
TOTAL_ASSETS_1331 DECIMAL(16,2),
TOTAL_EXPENSES_829 DECIMAL(16,2),
TOTAL_INCOME_139 DECIMAL(16,2),
TOTAL_LIABILITIES_100009 DECIMAL(16,2),
TOT_CURRENT_LIABILITIES_100007 DECIMAL(16,2),
TRAVEL_ACCOMM_EXP_1316 DECIMAL(16,2),
VEHICLES_F_A_1321 DECIMAL(16,2),
VEHICLE_EXCL_DEPRECIATION_710 DECIMAL(16,2),
PROF_CONSULT_FEES_100834 DECIMAL(16,2),
LAND_100839 DECIMAL(16,2),
TAX_DED_LOS_FIXD_ASTS_100853 DECIMAL(16,2),
OTH_NON_CUR_ASSETS_100842 DECIMAL(16,2),
RENT_LEASE_LICNCE_INC_100832 DECIMAL(16,2),
INSURANCE_EXCL_LEVIES_100833 DECIMAL(16,2),
ADDITIONS_FIXED_ASSET_100850 DECIMAL(16,2),
CUR_ACCT_YR_END_BAL_100852 DECIMAL(16,2),
DISPOSAL_FIXED_ASSETS_100851 DECIMAL(16,2),
TAX_DEPRECIATION_100848 DECIMAL(16,2),
UNTAXED_RLSD_GN_RCPTS_100849 DECIMAL(16,2),
EXCEPTIONAL_ITEMS_100836 DECIMAL(16,2),
RELATED_PARTY_REM_100835 DECIMAL(16,2),
OWNERS_EQUITY_100847 DECIMAL(16,2),
SHRES_OWNRSHP_INTRSTS_100841 DECIMAL(16,2),
CASH_DEPOSITS_100838 DECIMAL(16,2),
BUILDINGS_100840 DECIMAL(16,2),
CURRENT_LOANS_100844 DECIMAL(16,2),
OTH_CUR_LIABILITIES_100845 DECIMAL(16,2),
PROVISIONS_100843 DECIMAL(16,2),
NET_PROFT_LOSS_B4_TAX_100837 DECIMAL(16,2),
TAX_ADJUSTMENTS_100211 DECIMAL(16,2),
NON_CUR_LIABILITIES_100846 DECIMAL(16,2),
record_effective_timestamp TIMESTAMP,
record_expiry_timestamp TIMESTAMP,
record_active_flag VARCHAR(1),
record_deleted_flag VARCHAR(1),
insert_object_run_key INT,
update_object_run_key INT
 ) STORED AS PARQUET;

