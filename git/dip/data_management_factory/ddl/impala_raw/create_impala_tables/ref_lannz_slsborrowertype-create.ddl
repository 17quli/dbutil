CREATE TABLE ${var:target_db}.ref_lannz_slsborrowertype (                                                                           
fstrLanguage VARCHAR(6),                                                                                                            
fstrBorrowerType VARCHAR(6),                                                                                                        
fstrDecode1 VARCHAR(40),                                                                                                            
fstrDecode2 VARCHAR(200),                                                                                                           
fstrDescription VARCHAR(2000),                                                                                                      
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
checksum VARCHAR(32),                                                                                                               
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;