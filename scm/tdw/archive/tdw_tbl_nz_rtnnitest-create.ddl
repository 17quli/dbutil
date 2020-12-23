CREATE TABLE ${var:target_db}.tdw_tbl_nz_rtnnitest (                                                
FLNGDOCKEY BIGINT,                                                                                                                  
FCURRWT DECIMAL(24,4),                                                                                                              
FCURGROSSINTEREST DECIMAL(24,4),                                                                                                    
FCURDIVIDENDIMPUTATION DECIMAL(24,4),                                                                                               
FCURDIVIDENDRWT DECIMAL(24,4),                                                                                                      
FCURDIVIDENDGROSS DECIMAL(24,4),                                                                                                    
FCURMAORICREDITS DECIMAL(24,4),                                                                                                     
FCURMAORIDISTRIBUTIONS DECIMAL(24,4),                                                                                               
FCURTRUSTCREDITS DECIMAL(24,4),                                                                                                     
FCURTRUSTINCOME DECIMAL(24,4),                                                                                                      
FCUROVERSEASTAX DECIMAL(24,4),                                                                                                      
FCUROVERSEASINCOME DECIMAL(24,4),                                                                                                   
FCURLTCCREDITS DECIMAL(24,4),                                                                                                       
FCURLTCACTIVEINCOME DECIMAL(24,4),                                                                                                  
FCURLTCDEDUCTIONS DECIMAL(24,4),                                                                                                    
FCURLTCPRIORDEDUCTIONS DECIMAL(24,4),                                                                                               
FCURADJUSTEDINCOME DECIMAL(24,4),                                                                                                   
FCURBUSINESSINCOME DECIMAL(24,4),                                                                                                   
FCURTOTALOTHERCREDITS DECIMAL(24,4),                                                                                                
FCURTOTALOTHERINCOME DECIMAL(24,4),                                                                                                 
FCURTOTALCREDITS DECIMAL(24,4),                                                                                                     
FCURTOTALINCOME DECIMAL(24,4),                                                                                                      
FCURRLWT DECIMAL(24,4),                                                                                                             
FCURBENEFICIARYINCOME DECIMAL(24,4),                                                                                                
FCURTRUSTEEINCOME DECIMAL(24,4),                                                                                                    
FCURTAXPAYABLETRUSTEESINCOME DECIMAL(24,4),                                                                                         
FCUREXPENSESCLAIMED DECIMAL(24,4),                                                                                                  
FCURNETLOSSBROUGHTFORWARD DECIMAL(24,4),                                                                                            
FCURNETLOSSCLAIMED DECIMAL(24,4),                                                                                                   
FCURTOTALDISTRIBUTIONS DECIMAL(24,4),                                                                                               
FCURTAXABLEDISTRIBUTIONS DECIMAL(24,4),                                                                                             
FBLNCFC INT,                                                                                                                        
FCURTOTALTAXBENEFICIARIES DECIMAL(24,4),                                                                                            
FCURINCOMEAFTEREXPENSES DECIMAL(24,4),                                                                                              
FCURTOTALTAXPAYABLE DECIMAL(24,4),                                                                                                  
FCURSHAREOFOVERSEASTAX DECIMAL(24,4),                                                                                               
FCURTAXPAYABLEAFTERSHARE DECIMAL(24,4),                                                                                             
FCURSHAREOFIMPUTATION DECIMAL(24,4),                                                                                                
FCURTAXPAYABLEAFTERIMPUTATION DECIMAL(24,4),                                                                                        
FCURSHAREOFRWT DECIMAL(24,4),                                                                                                       
FCURTAXPAYABLEAFTERRWT DECIMAL(24,4),                                                                                               
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
FCUREXCESSIMPUTATIONCREDITS DECIMAL(24,4),                                                                                          
FCUREXCESSIMPUTATIONASLOSS DECIMAL(24,4),                                                                                           
FCURLOSSTOCARRYFORWARD DECIMAL(24,4),                                                                                               
FBLNCOMPLYINGTRUST INT,                                                                                                             
FBLNFOREIGNTRUST INT,                                                                                                               
FBLNNONCOMPLYINGTRUST INT,                                                                                                          
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