CREATE TABLE ${var:target_db}.app_tblnz_famrelperiods (                                                                             
flngFAMEntitlementKey INT,                                                                                                          
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
fintRelationshipPeriod SMALLINT,                                                                                                    
fdtmStart TIMESTAMP,                                                                                                                
fdtmStop TIMESTAMP,                                                                                                                 
fintDays SMALLINT,                                                                                                                  
fstrPartnerIRD VARCHAR(100),                                                                                                        
flngPartnerCustomerKey INT,                                                                                                         
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