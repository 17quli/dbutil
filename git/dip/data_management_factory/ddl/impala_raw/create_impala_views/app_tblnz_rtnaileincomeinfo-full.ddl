CREATE VIEW ${var:view_db}.app_tblnz_rtnaileincomeinfo                                                                              
AS SELECT                                                                                                                           
z.fi64SubLineItemKey,                                                                                                               
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.fi64LineItemKey,                                                                                                                  
z.fcurAILRate,                                                                                                                      
z.fstrIncomeType,                                                                                                                   
z.fcurGrossAmount,                                                                                                                  
z.fcurInterestZeroRated,                                                                                                            
z.fcurDeducted,                                                                                                                     
z.fblnInError,                                                                                                                      
z.fdtmDeleted,                                                                                                                      
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_rtnaileincomeinfo z;