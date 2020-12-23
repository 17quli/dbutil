CREATE TABLE ${var:target_db}.app_tblleadaction (                                                                                   
flngLeadKey INT,                                                                                                                    
flngSequence INT,                                                                                                                   
fstrLeadActionType VARCHAR(24),                                                                                                     
flngTaskKey INT,                                                                                                                    
fstrLeadActionWho VARCHAR(20),                                                                                                      
fdtmLeadActionDue TIMESTAMP,                                                                                                        
fdtmLeadActionActual TIMESTAMP,                                                                                                     
fstrLeadActionOutCome VARCHAR(12),                                                                                                  
fblnLeadClosed SMALLINT,                                                                                                            
fstrLetterId VARCHAR(60),                                                                                                           
flngMailItemKey INT,                                                                                                                
fstrMailType VARCHAR(24),                                                                                                           
fstrLog VARCHAR(4000),                                                                                                              
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;