CREATE TABLE ${var:target_db}.app_tblnz_incomeltcattributes (                                                                       
fi64IncomeKey BIGINT,                                                                                                               
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
fcurOwnerDividends DECIMAL(19,4),                                                                                                   
fcurOwnerExtinguishedLosses DECIMAL(19,4),                                                                                          
fcurOwnerImputation DECIMAL(19,4),                                                                                                  
fcurOwnerInterest DECIMAL(19,4),                                                                                                    
fcurOwnerMaoriDist DECIMAL(19,4),                                                                                                   
fcurOwnerNonAllowableBrghtFwd DECIMAL(19,4),                                                                                        
fcurOwnerNonAllowableCarried DECIMAL(19,4),                                                                                         
fcurOwnerNonAllowableClaimed DECIMAL(19,4),                                                                                         
fcurOwnerNonAllowableDeduction DECIMAL(19,4),                                                                                       
fcurOwnerOtherIncome DECIMAL(19,4),                                                                                                 
fcurOwnerOtherTaxCredits DECIMAL(19,4),                                                                                             
fcurOwnerOverseas DECIMAL(19,4),                                                                                                    
fcurOwnerOverseasTax DECIMAL(19,4),                                                                                                 
fcurOwnerPassiveIncome DECIMAL(19,4),                                                                                               
fcurOwnerRental DECIMAL(19,4),                                                                                                      
fcurOwnerTotalIncome DECIMAL(19,4),                                                                                                 
fcurOwnerResIncome DECIMAL(19,4),                                                                                                   
fcurOwnerResDeductions DECIMAL(19,4),                                                                                               
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;   