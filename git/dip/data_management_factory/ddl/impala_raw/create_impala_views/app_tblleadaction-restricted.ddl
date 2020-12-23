CREATE VIEW ${var:view_db}.app_tblleadaction                                                                                        
AS SELECT                                                                                                                           
z.flngLeadKey,                                                                                                                      
z.flngSequence,                                                                                                                     
z.fstrLeadActionType,                                                                                                               
z.flngTaskKey,                                                                                                                      
z.fstrLeadActionWho,                                                                                                                
z.fdtmLeadActionDue,                                                                                                                
z.fdtmLeadActionActual,                                                                                                             
z.fstrLeadActionOutCome,                                                                                                            
z.fblnLeadClosed,                                                                                                                   
z.fstrLetterId,                                                                                                                     
z.flngMailItemKey,                                                                                                                  
z.fstrMailType,                                                                                                                     
z.fstrLog,                                                                                                                          
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblleadaction z; 