CREATE TABLE ${var:target_db}.app_tblnz_provisionaldets (                                                                        
flngAccountKey INT,                                                                                                                 
fdtmFilingPeriod TIMESTAMP,                                                                                                         
fdtmDue TIMESTAMP,                                                                                                                  
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
fcurAmount DECIMAL(19,4),                                                                                                           
fcurFITReduction DECIMAL(19,4),                                                                                                     
fstrMethod VARCHAR(24),                                                                                                             
fdtmReversed TIMESTAMP,                                                                                                             
fdtmProcessed TIMESTAMP,                                                                                                            
flngTransKey INT,                                                                                                                   
flngReturnKey INT,                                                                                                                  
flngDocKey INT,                                                                                                                     
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;