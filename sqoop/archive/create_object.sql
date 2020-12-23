create table object (
OBJECT_KEY bigint,
SYSTEM_SCHEMA_KEY bigint,
TARGET_OBJECT_NAME varchar(30),
OBJECT_SHORT_NAME varchar(25),
TARGET_DB varchar(30),
SOURCE_OBJECT_NAME varchar(30),
SOURCE_OBJECT_TYPE varchar(5),
SAS_LIB_REF varchar(30),
PK_COLUMN_NAMES string,
NK_COLUMN_NAMES string,
EXCLUDED_COLUMNS string,
LOAD_PATTERN_NAME varchar(30),
SENSITIVE_DATA_FLAG varchar(1),
RETENTION_KEY bigint,
CUSTOM_SQL string,
CHANGE_CAPTURE_TIMESTAMP_COLUMN varchar(4000),
HISTORY_LOADED_FROM_TDW varchar(1),
HISTORY_TYPE varchar(5),
EFFECTIVE_FROM_TIMESTAMP_COLUMN varchar(4000),
EFFECTIVE_TO_TIMESTAMP_COLUMN varchar(4000),
EFFECTIVE_TIMESTAMP_GRAIN varchar(30),
PURGE_GRAIN varchar(30),
DUPLICATION_TIMESTAMP_GRAIN varchar(30),
CREATED_DATE timestamp,
CREATED_BY varchar(10),
BATCH_NAME varchar(15),
CAS_UPLOAD varchar(1),
LAYER varchar(15),
INGESTION_MODE varchar(10)
) stored as parquet;