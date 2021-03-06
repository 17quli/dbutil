CREATE VIEW ${var:view_db}.app_tblgarnishtogarnishee                                                                                
AS SELECT                                                                                                                           
z.flngGarnisheeKey,                                                                                                                 
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.flngGarnishKey,                                                                                                                   
z.flngCustomerKey,                                                                                                                  
z.flngIndicatorKey,                                                                                                                 
z.flngJointIndicatorKey,                                                                                                            
z.fstrGarnisheeType,                                                                                                                
z.flngBankAccountKey,                                                                                                               
z.fstrBankAccount,                                                                                                                  
z.fstrTransitNumber,                                                                                                                
z.fdtmCreated,                                                                                                                      
z.fdtmIssued,                                                                                                                       
z.fdtmAmended,                                                                                                                      
z.fdtmReleased,                                                                                                                     
z.fblnActive,                                                                                                                       
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblgarnishtogarnishee z;   