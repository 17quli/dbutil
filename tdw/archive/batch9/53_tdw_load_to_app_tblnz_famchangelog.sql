-- Load data manually from RAW TDW tables into RAW START table
select count(1) from  ${var:target_db}.${var:app_tbl_name};

INSERT INTO TABLE  ${var:target_db}.${var:app_tbl_name}
SELECT
CAST(FI64CHANGEKEY AS BIGINT) AS fi64changekey,
CAST(FSTRCHANGETYPE AS VARCHAR(100)) AS fstrchangetype,
CAST(FLNGLINKEDCUSTOMERKEY AS INT) AS flnglinkedcustomerkey,
CAST(FDTMEFFECTIVEDATE AS TIMESTAMP) AS fdtmeffectivedate,
CAST(FLNGFAMENTITLEMENTKEY AS INT) AS flngfamentitlementkey,
CAST(FINTRELATIONSHIPPERIOD AS SMALLINT) AS fintrelationshipperiod,
CAST(FINTENTITLEMENTPERIOD AS SMALLINT) AS fintentitlementperiod,
CAST(FBLNACTIVE AS SMALLINT) AS fblnactive,
CAST(FSTRWHO AS VARCHAR(20)) AS fstrwho,
CAST(effective_from AS TIMESTAMP) AS fdtmwhen,
CAST(record_effective_timestamp AS TIMESTAMP) AS record_effective_timestamp,
CAST(record_expiry_timestamp AS TIMESTAMP) AS record_expiry_timestamp,
CAST(CURRENT_REC_FLAG AS VARCHAR(1)) AS record_active_flag,
CAST('N' AS VARCHAR(1)) AS record_deleted_flag,
CAST(insert_object_run_key AS INT) AS insert_object_run_key,
CAST(update_object_run_key AS INT) AS update_object_run_key
FROM  ${var:target_db}.${var:tdw_tbl_name};


-- Check row counts of RAW tables with TDW history loaded:
select count(*) as raw_new_count from  ${var:target_db}.${var:app_tbl_name};
select count(distinct FI64CHANGEKEY) as distinct_keys_count FROM  ${var:target_db}.${var:app_tbl_name};
select count(*) as low_date_count FROM  ${var:target_db}.${var:app_tbl_name} where record_effective_timestamp = '1800-01-01 00:00:00';
select count(*) as high_date_count FROM  ${var:target_db}.${var:app_tbl_name} where record_expiry_timestamp = '9000-12-31 00:00:00';
select count(1) as lwmcnt from ${var:target_db}.${var:app_tbl_name} where fdtmwhen='1800-1-1';
drop table if exists ${var:journal_db}.${var:app_tbl_name};
