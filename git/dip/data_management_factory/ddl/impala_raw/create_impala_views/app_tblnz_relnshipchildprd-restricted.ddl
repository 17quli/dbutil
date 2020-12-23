CREATE VIEW ${var:view_db}.app_tblnz_relnshipchildprd                                                                               
AS SELECT                                                                                                                           
z.flngRelationshipKey,                                                                                                              
z.fintSequence,                                                                                                                     
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.fdtmDateFrom,                                                                                                                     
z.fdtmDateTo,                                                                                                                       
z.fblnFOU,                                                                                                                          
z.fblnMSD,                                                                                                                          
z.fcurPercentageCare,                                                                                                               
z.fintSharedCareDays,                                                                                                               
z.fstrNote,                                                                                                                         
z.fblnValid,                                                                                                                        
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_relnshipchildprd z;   