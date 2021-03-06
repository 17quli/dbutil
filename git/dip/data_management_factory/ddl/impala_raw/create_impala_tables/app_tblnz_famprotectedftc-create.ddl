CREATE TABLE ${var:target_db}.app_tblnz_famprotectedftc (                                                                           
flngFAMEntitlementKey INT,                                                                                                          
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
fintRelationshipPeriod SMALLINT,                                                                                                    
fintMonth SMALLINT,                                                                                                                 
fcurBenefitPCG DECIMAL(19,4),                                                                                                       
fcurBenefitPTR DECIMAL(19,4),                                                                                                       
fcurSalaryPCG DECIMAL(19,4),                                                                                                        
fcurSalaryPTR DECIMAL(19,4),                                                                                                        
fcurChildSupportPCG DECIMAL(19,4),                                                                                                  
fcurChildSupportPTR DECIMAL(19,4),                                                                                                  
fcurOtherIncome DECIMAL(19,4),                                                                                                      
fcurTotalMonthlyIncome DECIMAL(19,4),                                                                                               
fblnProtected SMALLINT,                                                                                                             
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