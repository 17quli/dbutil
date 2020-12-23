CREATE TABLE ${var:target_db}.tdw_tbl_nz_intcollattrib (                                            
FLNGDOCKEY BIGINT,                                                                                                                  
FDTMDOB TIMESTAMP,                                                                                                                  
FSTRORIGINCOUNTRY VARCHAR(100),                                                                                                     
FSTRCURRENCYTYPE VARCHAR(100),                                                                                                      
FCURDEBTAMOUNTNZD DECIMAL(24,4),                                                                                                    
FCURDEBTAMOUNTOTHER DECIMAL(24,4),                                                                                                  
FCURDEBTPAID DECIMAL(24,4),                                                                                                         
FDBLCURRENCYRATE DOUBLE,                                                                                                            
FBLNGARNISH INT,                                                                                                                    
FBLNPAYMENTPLAN INT,                                                                                                                
FDTMDATEENTERED TIMESTAMP,                                                                                                          
FBLNBANKACCOUNT INT,                                                                                                                
FDTMCLOSED TIMESTAMP,                                                                                                               
FSTRCLOSEDREASON VARCHAR(200),                                                                                                      
FSTRREOPENREASON VARCHAR(200),                                                                                                      
FSTRWHO VARCHAR(20),                                                                                                                
EFFECTIVE_FROM TIMESTAMP,                                                                                                           
EFFECTIVE_TO TIMESTAMP,                                                                                                             
CURRENT_REC_FLAG VARCHAR(2),                                                                                                        
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 