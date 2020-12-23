CREATE TABLE ${var:target_db}.app_tblnz_smallbuscashflow (                                                                               
flngDocKey INT,                                                                                                                     
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
flngFullTimeEmployees INT,                                                                                                          
flngPartTimeEmployees INT,                                                                                                          
fblnReceivedMSDSubsidy SMALLINT,                                                                                                    
fcurWageSubsidyReceived DECIMAL(19,4),                                                                                              
fcurWageSubsidyCalc DECIMAL(19,4),                                                                                                  
flngFullTimeEquivalent INT,                                                                                                         
fcurTotalGrantedForFTE DECIMAL(19,4),                                                                                               
fblnOverrideLoanAmount SMALLINT,                                                                                                    
fcurMaximumAmount DECIMAL(19,4),                                                                                                    
fcurAmount DECIMAL(19,4),                                                                                                           
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 