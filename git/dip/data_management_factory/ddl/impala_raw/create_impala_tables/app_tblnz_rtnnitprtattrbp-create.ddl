CREATE TABLE ${var:target_db}.app_tblnz_rtnnitprtattrbp (                                                                           
flngDocKey INT,                                                                                                                     
fintSeq SMALLINT,                                                                                                                   
fstrPartnerName VARCHAR(510),                                                                                                       
fstrPartnerIRD VARCHAR(22),                                                                                                         
fcurPartnerPercentageAttr DECIMAL(19,4),                                                                                            
fcurPartnerInterest DECIMAL(19,4),                                                                                                  
fcurPartnerDividends DECIMAL(19,4),                                                                                                 
fcurPartnerMaoriDist DECIMAL(19,4),                                                                                                 
fcurPartnerOverseas DECIMAL(19,4),                                                                                                  
fcurPartnerRental DECIMAL(19,4),                                                                                                    
fcurPartnerOtherPassive DECIMAL(19,4),                                                                                              
fcurPartnerOtherIncome DECIMAL(19,4),                                                                                               
fcurPartnerTotalIncome DECIMAL(19,4),                                                                                               
fcurPartnerSumOfIncome DECIMAL(19,4),                                                                                               
fcurPartnerExtinguishedLosses DECIMAL(19,4),                                                                                        
fcurPartnerOverseasTax DECIMAL(19,4),                                                                                               
fcurPartnerImputation DECIMAL(19,4),                                                                                                
fcurPartnerOtherTaxCredits DECIMAL(19,4),                                                                                           
fcurPartnerDeduction DECIMAL(19,4),                                                                                                 
fcurPartnerResIncome DECIMAL(19,4),                                                                                                 
fcurPartnerResDeductions DECIMAL(19,4),                                                                                             
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;