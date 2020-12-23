                                                                                                                                    
CREATE VIEW ${var:view_db}.app_tbltaskgroupqueue                                                                                    
AS SELECT                                                                                                                           
z.flngGroupKey,                                                                                                                     
z.flngQueueKey,                                                                                                                     
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.flngOrder,                                                                                                                        
z.fstrQueueMethod,                                                                                                                  
z.fblnActive,                                                                                                                       
z.fblnInteractive,                                                                                                                  
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tbltaskgroupqueue z;  