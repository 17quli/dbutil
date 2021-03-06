CREATE TABLE ${var:target_db}.app_tblnz_lnkksfadm (                                                                                 
flngDocKey INT,                                                                                                                     
fstrContactName VARCHAR(510),                                                                                                       
fstrContactEmail VARCHAR(510),                                                                                                      
fstrPhoneNumber VARCHAR(50),                                                                                                        
fstrPhoneNumber2 VARCHAR(50),                                                                                                       
fstrAttention VARCHAR(200),                                                                                                         
fstrCity VARCHAR(200),                                                                                                              
fstrDistrict VARCHAR(60),                                                                                                           
fblnOverridden SMALLINT,                                                                                                            
fstrRowID VARCHAR(60),                                                                                                              
fstrStreet VARCHAR(510),                                                                                                            
fstrSubDistrict VARCHAR(60),                                                                                                        
fstrSubProvince VARCHAR(60),                                                                                                        
fstrSuburb VARCHAR(60),                                                                                                             
fstrUnit VARCHAR(60),                                                                                                               
fstrUnitType VARCHAR(30),                                                                                                           
fblnVerified SMALLINT,                                                                                                              
fdtmVerifiredDt TIMESTAMP,                                                                                                          
fstrZip VARCHAR(60),                                                                                                                
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 