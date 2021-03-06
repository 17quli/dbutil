CREATE TABLE ${var:target_db}.app_tblnz_rtnnrt (                                                                                    
flngDocKey INT,                                                                                                                     
fstrPayeeIRDNumber VARCHAR(18),                                                                                                     
fdtmPeriod TIMESTAMP,                                                                                                               
fdtmDOB TIMESTAMP,                                                                                                                  
fstrPayeeSurname VARCHAR(60),                                                                                                       
fstrPayeeName VARCHAR(60),                                                                                                          
fstrPayeeAddress1 VARCHAR(60),                                                                                                      
fstrPayeeAddress2 VARCHAR(60),                                                                                                      
fstrPayeeAddress3 VARCHAR(60),                                                                                                      
fstrPayeeAddress4 VARCHAR(60),                                                                                                      
fstrPayeeCountryCode VARCHAR(4),                                                                                                    
fcurDividendsGross DECIMAL(19,4),                                                                                                   
fcurInterestGross DECIMAL(19,4),                                                                                                    
fcurRoyaltiesGross DECIMAL(19,4),                                                                                                   
fcurOtherGross DECIMAL(19,4),                                                                                                       
fcurDividendsNRWT DECIMAL(19,4),                                                                                                    
fcurInterestNRWT DECIMAL(19,4),                                                                                                     
fcurRoyaltiesNRWT DECIMAL(19,4),                                                                                                    
fcurOtherNRWT DECIMAL(19,4),                                                                                                        
fcurLiableTotal DECIMAL(19,4),                                                                                                      
fcurFDPCredits DECIMAL(19,4),                                                                                                       
fcurNetNRWTPaid DECIMAL(19,4),                                                                                                      
fstrPayerIRDNumber VARCHAR(18),                                                                                                     
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;
