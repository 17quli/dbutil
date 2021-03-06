CREATE TABLE ${var:target_db}.app_tblrfnrefundtransaction (                                                                         
flngRefundKey INT,                                                                                                                  
flngSourceTransKey INT,                                                                                                             
flngVerLast INT,                                                                                                                    
flngRefundTransKey INT,                                                                                                             
fstrSourceTransType VARCHAR(12),                                                                                                    
fstrRefundTransType VARCHAR(12),                                                                                                    
flngRefundReturnedTransKey INT,                                                                                                     
fstrRefundReturnedTransType VARCHAR(12),                                                                                            
flngAccountKey INT,                                                                                                                 
fdtmFilingPeriod TIMESTAMP,                                                                                                         
fstrAccountType VARCHAR(12),                                                                                                        
fdtmEffect TIMESTAMP,                                                                                                               
fcurRequestedAmount DECIMAL(19,4),                                                                                                  
fcurRefundPosted DECIMAL(19,4),                                                                                                     
fcurInterestPosted DECIMAL(19,4),                                                                                                   
fcurTotalPosted DECIMAL(19,4),                                                                                                      
fdtmApproved TIMESTAMP,                                                                                                             
flngInterestTransKey INT,                                                                                                           
fstrInterestTransType VARCHAR(12),                                                                                                  
flngIntDebitTransKey INT,                                                                                                           
fstrIntDebitTransType VARCHAR(12),                                                                                                  
fcurIntDebitAmount DECIMAL(19,4),                                                                                                   
flngInterestReturnedTransKey INT,                                                                                                   
fstrInterestReturnedTransType VARCHAR(12),                                                                                          
flngExcessRfnTransKey INT,                                                                                                          
fstrExcessRfnTransType VARCHAR(12),                                                                                                 
fcurExcessRfnAmount DECIMAL(19,4),                                                                                                  
flngExcessRfnReturnedTransKey INT,                                                                                                  
fstrExcessRfnReturnedTransType VARCHAR(12),                                                                                         
flngExcessIntTransKey INT,                                                                                                          
fstrExcessIntTransType VARCHAR(12),                                                                                                 
fcurExcessIntAmount DECIMAL(19,4),                                                                                                  
flngExcessIntReturnedTransKey INT,                                                                                                  
fstrExcessIntReturnedTransType VARCHAR(12),                                                                                         
fdtmRejected TIMESTAMP,                                                                                                             
fdtmReversed TIMESTAMP,                                                                                                             
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;                      