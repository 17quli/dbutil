CREATE TABLE ${var:target_db}.ref_lannz_customerclass (
fstrLanguage VARCHAR(6),                              
fstrCustomerClass VARCHAR(12),                       
fstrDecode1 VARCHAR(24),                            
fstrDecode2 VARCHAR(60),                           
fstrDecodeWeb VARCHAR(510),                       
fstrDescription VARCHAR(510),                    
insert_object_run_key INT                       
 ) STORED AS PARQUET;    
