CREATE TABLE ${var:target_db}.tdw_tbl_nz_famlnkmodificatn (                                         
FLNGDOCKEY BIGINT,                                                                                                                  
FLNGCUSTOMERKEY BIGINT,                                                                                                             
FLNGLINKEDCUSTOMERKEY BIGINT,                                                                                                       
FSTRCASETYPE VARCHAR(12),                                                                                                           
FLNGCASEKEY BIGINT,                                                                                                                 
FSTRWHO VARCHAR(20),                                                                                                                
EFFECTIVE_FROM TIMESTAMP,                                                                                                           
EFFECTIVE_TO TIMESTAMP,                                                                                                             
CURRENT_REC_FLAG VARCHAR(2),                                                                                                        
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;                    