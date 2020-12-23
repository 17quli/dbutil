CREATE TABLE ${var:target_db}.tdw_tbl_nz_rtnnitclb (                                                
FLNGDOCKEY BIGINT,                                                                                                                  
FBLNFRIENDLYSOCIETY INT,                                                                                                            
FCURFRIENDLYNETINCOME DECIMAL(24,4),                                                                                                
FBLNSPECIFIC INT,                                                                                                                   
FCUREXEMPTINTEREST DECIMAL(24,4),                                                                                                   
FCUREXEMPTDIVIDENDS DECIMAL(24,4),                                                                                                  
FCUREXEMPTMAORIAUTHORITY DECIMAL(24,4),                                                                                             
FCUREXEMPTOTHERINCOME DECIMAL(24,4),                                                                                                
FCUREXEMPTTOTALINCOME DECIMAL(24,4),                                                                                                
FBLNOTHER INT,                                                                                                                      
FCUROTHERINTEREST DECIMAL(24,4),                                                                                                    
FCUROTHERDIVIDENDS DECIMAL(24,4),                                                                                                   
FCUROTHERMAORIAUTHORITY DECIMAL(24,4),                                                                                              
FCUROTHEROTHERINCOME DECIMAL(24,4),                                                                                                 
FCUROTHERTOTALINCOME DECIMAL(24,4),                                                                                                 
FCURNONPROFITCREDIT DECIMAL(24,4),                                                                                                  
FCURTOTALINCOMEAFTERNONPROFIT DECIMAL(24,4),                                                                                        
FCURNETINCOMEBEFOREDONATIONS DECIMAL(24,4),                                                                                         
FCURDONATIONDEDUCTION DECIMAL(24,4),                                                                                                
FCURNETINCOME DECIMAL(24,4),                                                                                                        
FCURNETLOSSBROUGHTFORWARD DECIMAL(24,4),                                                                                            
FCURTAXABLEINCOME DECIMAL(24,4),                                                                                                    
FBLNINCORPORATED INT,                                                                                                               
FCURTAXONAMOUNT DECIMAL(24,4),                                                                                                      
FCUROVERSEASTAX DECIMAL(24,4),                                                                                                      
FCURTAXAFTEROVERSEAS DECIMAL(24,4),                                                                                                 
FCURIMPUTATIONCREDITS DECIMAL(24,4),                                                                                                
FCURIMPUTATIONBROUGHTFORWARD DECIMAL(24,4),                                                                                         
FCURTOTALIMPUTATIONCREDITS DECIMAL(24,4),                                                                                           
FCUREXCESSIMPUTATIONCREDITS DECIMAL(24,4),                                                                                          
FCUREXCESSIMPCREDITSCARRYFWD DECIMAL(24,4),                                                                                         
FCUREXCESSIMPCREDITSASLOSS DECIMAL(24,4),                                                                                           
FCURTAXAFTERIMPUTATION DECIMAL(24,4),                                                                                               
FCURTOTALLOSSTOCARRYFORWARD DECIMAL(24,4),                                                                                          
FCURRWT DECIMAL(24,4),                                                                                                              
FCURRLWT DECIMAL(24,4),                                                                                                             
FCURTAXAFTERRWT DECIMAL(24,4),                                                                                                      
FCUROTHERTAXCREDITS DECIMAL(24,4),                                                                                                  
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