CREATE TABLE ${var:target_db}.app_tbltaskqueue (                                                                                    
flngQueueKey INT,                                                                                                                   
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
flngQueueId INT,                                                                                                                    
flngOrder INT,                                                                                                                      
fstrName VARCHAR(510),                                                                                                              
fstrOwner VARCHAR(20),                                                                                                              
fstrDescription VARCHAR(2000),                                                                                                      
flngCrmKey INT,                                                                                                                     
fintNotificationType SMALLINT,                                                                                                      
fblnInteractive SMALLINT,                                                                                                           
flngWeight INT,                                                                                                                     
flngReminderDelay INT,                                                                                                              
fstrUnitType VARCHAR(24),                                                                                                           
fdtmCommence TIMESTAMP,                                                                                                             
fdtmCease TIMESTAMP,                                                                                                                
fblnActive SMALLINT,                                                                                                                
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;                  
