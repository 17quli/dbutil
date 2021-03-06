CREATE TABLE ${var:target_db}.app_tblnz_rtnjointaccholders (                                                                        
fi64SubLineItemKey BIGINT,                                                                                                          
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
fi64LineItemKey BIGINT,                                                                                                             
fstrJointAccountIRD VARCHAR(18),                                                                                                    
fstrJointAccountName VARCHAR(510),                                                                                                  
fdtmJointAccountDOB TIMESTAMP,                                                                                                      
fstrJointAccountPhone VARCHAR(100),                                                                                                 
fstrJointAccountEmail VARCHAR(510),                                                                                                 
fstrJointAccountAddress VARCHAR(510),                                                                                               
fstrJointAccountCountry VARCHAR(60),                                                                                                
fstrJointAccountCountryCode VARCHAR(4),                                                                                             
fcurJointAccountPercentage DECIMAL(19,4),                                                                                           
fblnOverridePercentages SMALLINT,                                                                                                   
fblnValidIrd SMALLINT,                                                                                                              
fblnInError SMALLINT,                                                                                                               
fdtmDeleted TIMESTAMP,                                                                                                              
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;