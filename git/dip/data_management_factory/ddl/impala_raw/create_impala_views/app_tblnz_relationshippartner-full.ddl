create view ${var:view_db}.app_tblnz_relationshippartner                                          
as select                                                                                                                           
z.flngrelationshipkey,                                                                                                              
z.flngpcgcustomerkey,                                                                                                               
z.flngpartnercustomerkey,                                                                                                           
z.flngver,                                                                                                                          
z.flngverlast,                                                                                                                      
z.fdtmcommence,                                                                                                                     
z.fdtmcease,                                                                                                                        
z.fblnactive,                                                                                                                       
z.fstrwho,                                                                                                                          
z.fdtmwhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 from ${var:source_db}.app_tblnz_relationshippartner z;
