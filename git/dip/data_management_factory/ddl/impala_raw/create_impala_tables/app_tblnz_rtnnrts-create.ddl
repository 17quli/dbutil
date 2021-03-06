CREATE TABLE ${var:target_db}.app_tblnz_rtnnrts (                                                                                   
flngDocKey INT,                                                                                                                     
fcurGrossDividends DECIMAL(19,4),                                                                                                   
fcurGrossInterest DECIMAL(19,4),                                                                                                    
fcurGrossRoyalties DECIMAL(19,4),                                                                                                   
fcurGrossOther DECIMAL(19,4),                                                                                                       
fcurGrossTotal DECIMAL(19,4),                                                                                                       
fcurNRWTDividends DECIMAL(19,4),                                                                                                    
fcurNRWTInterest DECIMAL(19,4),                                                                                                     
fcurNRWTRoyalties DECIMAL(19,4),                                                                                                    
fcurNRWTOther DECIMAL(19,4),                                                                                                        
fcurNRWTTotal DECIMAL(19,4),                                                                                                        
fcurFDPCredits DECIMAL(19,4),                                                                                                       
fcurNRWTPayable DECIMAL(19,4),                                                                                                      
fcurNRWTBCM DECIMAL(19,4),                                                                                                          
fcurManualNRWTPaid DECIMAL(19,4),                                                                                                   
fcurNRWTPaid DECIMAL(19,4),                                                                                                         
fcurNRWTFinal DECIMAL(19,4),                                                                                                        
fcurUnreconciledAmount DECIMAL(19,4),                                                                                               
flngCertificateNumber INT,                                                                                                          
flngCertFiled INT,                                                                                                                  
fblnElectronicFiled SMALLINT,                                                                                                       
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 