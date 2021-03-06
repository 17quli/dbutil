CREATE VIEW ${var:view_db}.app_tblnz_rtnconversion                                                                                  
AS SELECT                                                                                                                           
z.flngDocKey,                                                                                                                       
z.fblnRules,                                                                                                                        
z.fblnReturnFiled,                                                                                                                  
z.fblnDueDateIssues,                                                                                                                
z.fcurCnvTax,                                                                                                                       
z.fcurLateFilePenalty,                                                                                                              
z.fcurLateFilePenaltyRemission,                                                                                                     
z.fcurLatePaymentPenalty,                                                                                                           
z.fcurLatePayPenaltyRemission,                                                                                                      
z.fcurInterest,                                                                                                                     
z.fcurInterestRemission,                                                                                                            
z.fdtmInterestEffective,                                                                                                            
z.fcurAdjustment,                                                                                                                   
z.fdtmLegacyPNIDate,                                                                                                                
z.fdtmCreditInterestThruDate,                                                                                                       
z.fdtmLastStatementDate,                                                                                                            
z.fstrAccountReviewType,                                                                                                            
z.fstrReturnCategory,                                                                                                               
z.fintReturnVersion,                                                                                                                
z.fblnAudit,                                                                                                                        
z.flngCnvSequence,                                                                                                                  
z.fblnOriginalConversion,                                                                                                           
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_rtnconversion z; 