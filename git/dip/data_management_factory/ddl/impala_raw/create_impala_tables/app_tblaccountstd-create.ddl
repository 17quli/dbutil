CREATE TABLE ${var:target_db}.app_tblaccountstd (                                                                                   
FLNGDOCKEY INT,                                                                                                                     
FDTMCOMMENCE TIMESTAMP,                                                                                                             
FDTMCEASE TIMESTAMP,                                                                                                                
FSTRSTATUS VARCHAR(60),                                                                                                             
FSTRCLOSUREREASON VARCHAR(60),                                                                                                      
FSTRFILINGFRQ VARCHAR(12),                                                                                                          
fblnMailForm SMALLINT,                                                                                                              
FBLNREGISTERED SMALLINT,                                                                                                            
FSTRCITY VARCHAR(60),                                                                                                               
FSTRDISTRICT VARCHAR(60),                                                                                                           
FSTRGOVTAGENT VARCHAR(60),                                                                                                          
FINTPROCESSINGDAY SMALLINT,                                                                                                         
fstrSIC VARCHAR(12),                                                                                                                
fblnNoRtnPnlInt SMALLINT,                                                                                                           
FSTRWHO VARCHAR(20),                                                                                                                
FDTMWHEN TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 