CREATE TABLE ${var:target_db}.app_tblnz_famlinkmodification (                                                                       
flngDocKey INT,                                                                                                                     
flngCustomerKey INT,                                                                                                                
flngLinkedCustomerKey INT,                                                                                                          
fstrCaseType VARCHAR(12),                                                                                                           
flngCaseKey INT,                                                                                                                    
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;                    