CREATE TABLE ${var:target_db}.app_tblnz_famchildsupportact (                                                                        
flngFAMChildSupportActualsKey INT,                                                                                                  
flngFAMEntitlementKey INT,                                                                                                          
fdtmFilingPeriod TIMESTAMP,                                                                                                         
flngPCGCustomerKey INT,                                                                                                             
fstrPCGIRD VARCHAR(18),                                                                                                             
flngPNRCustomerKey INT,                                                                                                             
fstrPNRIRD VARCHAR(18),                                                                                                             
fdtmSentToFIRST TIMESTAMP,                                                                                                          
fcurAmountReceived DECIMAL(19,4),                                                                                                   
fcurAmountPaid DECIMAL(19,4),                                                                                                       
fstrErrorCode VARCHAR(10),                                                                                                          
fstrErrorMessage VARCHAR(60),                                                                                                       
fdtmReceivedFromFIRST TIMESTAMP,                                                                                                    
fdtmActualsProcessed TIMESTAMP,                                                                                                     
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 