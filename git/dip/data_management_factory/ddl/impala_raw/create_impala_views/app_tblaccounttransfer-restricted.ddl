CREATE VIEW ${var:view_db}.app_tblaccounttransfer                                                                                   
AS SELECT                                                                                                                           
z.flngTransferKey,                                                                                                                  
z.flngFromCustomerKey,                                                                                                              
z.flngAccountKey,                                                                                                                   
z.flngToCustomerKey,                                                                                                                
z.fstrData,                                                                                                                         
z.flngSourceCrmKey,                                                                                                                 
z.flngTargetCrmKey,                                                                                                                 
z.fstrComment,                                                                                                                      
z.fcurBalance,                                                                                                                      
z.fstrFrq,                                                                                                                          
z.fintFromProfile,                                                                                                                  
z.fintToProfile,                                                                                                                    
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblaccounttransfer z;