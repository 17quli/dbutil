CREATE TABLE ${var:target_db}.tdw_tbl_nz_rtxndbtorageprd (                                          
FLNGACCOUNTKEY BIGINT,                                                                                                              
FDTMFILINGPERIOD TIMESTAMP,                                                                                                         
FDTMINITIALAGINGDATE TIMESTAMP,                                                                                                     
FDTMLASTEVALUATED TIMESTAMP,                                                                                                        
FLNGDAYSAGED BIGINT,                                                                                                                
FSTRAGINGCATEGORY VARCHAR(12),                                                                                                      
FBLNDEBTORBALANCEEXISTS INT,                                                                                                        
FSTRWHO VARCHAR(20),                                                                                                                
CUSTOMER_KEY BIGINT,                                                                                                                
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