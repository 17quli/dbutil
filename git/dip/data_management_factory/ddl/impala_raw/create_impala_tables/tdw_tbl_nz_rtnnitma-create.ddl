CREATE TABLE ${var:target_db}.tdw_tbl_nz_rtnnitma (                                                 
FLNGDOCKEY BIGINT,                                                                                                                  
FCURGROSSINTEREST DECIMAL(24,4),                                                                                                    
FCURDIVIDENDGROSS DECIMAL(24,4),                                                                                                    
FCURMAORIDISTRIBUTIONS DECIMAL(24,4),                                                                                               
FCURNETRENTALINCOME DECIMAL(24,4),                                                                                                  
FCURNETTRADINGINCOME DECIMAL(24,4),                                                                                                 
FCUROTHERINCOME DECIMAL(24,4),                                                                                                      
FCURTOTALINCOME DECIMAL(24,4),                                                                                                      
FCURTOTALADJUSTMENTS DECIMAL(24,4),                                                                                                 
FCURINCOMEAFTERADJUSTMENTS DECIMAL(24,4),                                                                                           
FCURTOTALDONATIONS DECIMAL(24,4),                                                                                                   
FCURINCOMEAFTERDONATIONS DECIMAL(24,4),                                                                                             
FCURLOSSESBROUGHTFORWARD DECIMAL(24,4),                                                                                             
FCURTAXABLEINCOME DECIMAL(24,4),                                                                                                    
FCURTOTALTAXPAYABLE DECIMAL(24,4),                                                                                                  
FCUROVERSEASTAX DECIMAL(24,4),                                                                                                      
FCURTAXAFTEROVERSEAS DECIMAL(24,4),                                                                                                 
FCURDIVIDENDIMPUTATION DECIMAL(24,4),                                                                                               
FCURTAXAFTERDIVIDEND DECIMAL(24,4),                                                                                                 
FCURRWT DECIMAL(24,4),                                                                                                              
FCURRLWT DECIMAL(24,4),                                                                                                             
FCURTAXAFTERRWT DECIMAL(24,4),                                                                                                      
FCURMAORICREDITS DECIMAL(24,4),                                                                                                     
FCURRESIDUALINCOMETAX DECIMAL(24,4),                                                                                                
FCURPROVISIONALTAXPAID DECIMAL(24,4),                                                                                               
FCURTAXAMOUNT DECIMAL(24,4),                                                                                                        
FCUROVERPAYMENTPROVISIONAL DECIMAL(24,4),                                                                                           
FCURREFUNDAFTEROVERPAYMENT DECIMAL(24,4),                                                                                           
FCURTRANSFERPROVISIONAL DECIMAL(24,4),                                                                                              
FCURTRANSFERCUSTOMERAMOUNT DECIMAL(24,4),                                                                                           
FCURTOTALREFUND DECIMAL(24,4),                                                                                                      
FDTMPROVISIONALSTARTDATE TIMESTAMP,                                                                                                 
FSTRPROVISIONALOPTION VARCHAR(100),                                                                                                 
FCURPROVISIONALTAX DECIMAL(24,4),                                                                                                   
FBLNCFC INT,                                                                                                                        
FCURLOSSTOCARRYFORWARD DECIMAL(24,4),                                                                                               
FCUREXCESSIMPUTATION DECIMAL(24,4),                                                                                                 
FCUREXCESSIMPUTATIONASLOSS DECIMAL(24,4),                                                                                           
FSTRWHO VARCHAR(20),                                                                                                                
EFFECTIVE_FROM TIMESTAMP,                                                                                                           
EFFECTIVE_TO TIMESTAMP,                                                                                                             
CURRENT_REC_FLAG VARCHAR(2),                                                                                                        
DOCSETKEY BIGINT,                                                                                                                   
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;                                                                                                               
                                                      