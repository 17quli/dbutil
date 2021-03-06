create table mobject_run (
OBJECT_RUN_KEY bigint,
TARGET_OBJECT_NAME varchar(30),
OBJECT_KEY bigint,
START_TIME timestamp,
END_TIME timestamp,
STATUS varchar(512),
STATUS_MESSAGE varchar(4000),
RECORDS_READ bigint,
RECORDS_WRITTEN bigint,
OBJECT_LOG_NAME varchar(2048),
OBJECT_PRG_NAME varchar(2048),
INGESTION_MODE varchar(10),
PREV_HIGH_WATER_MARK_VALUE timestamp,
HIGH_WATER_MARK_VALUE_JNL timestamp,
HIGH_WATER_MARK_VALUE timestamp,
LOAD_PATTERN_NAME varchar(30),
TASK1 varchar(50),
TASK1_START_TIME timestamp,
TASK1_END_TIME timestamp,
TASK2 varchar(50),
TASK2_START_TIME timestamp,
TASK2_END_TIME timestamp,
TASK3 varchar(50),
TASK3_START_TIME timestamp,
TASK3_END_TIME timestamp,
TASK4 varchar(50),
TASK4_START_TIME timestamp,
TASK4_END_TIME timestamp,
TASK5 varchar(50),
TASK5_START_TIME timestamp,
TASK5_END_TIME timestamp,
TASK6 varchar(50),
TASK6_START_TIME timestamp,
TASK6_END_TIME timestamp,
TASK7 varchar(50),
TASK7_START_TIME timestamp,
TASK7_END_TIME timestamp,
TASK8 varchar(50),
TASK8_START_TIME timestamp,
TASK8_END_TIME timestamp,
TASK9 varchar(50),
TASK9_START_TIME timestamp,
TASK9_END_TIME timestamp,
TASK10 varchar(50),
TASK10_START_TIME timestamp,
TASK10_END_TIME timestamp,
TASK11 varchar(50),
TASK11_START_TIME timestamp,
TASK11_END_TIME timestamp
) row format delimited fields terminated by '\001' stored as textfile;
