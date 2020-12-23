CREATE VIEW ${var:view_db}.app_tblnz_rtnmacamafdp                                                                                   
AS SELECT                                                                                                                           
z.flngDocKey,                                                                                                                       
z.fcurFdpOpeningBalance,                                                                                                            
z.fcurFdpPaid,                                                                                                                      
z.fcurFdpCreditsRec,                                                                                                                
z.fcurFdpTotalCredits,                                                                                                              
z.fcurFdpCreditsPaid,                                                                                                               
z.fcurFdpRefunded,                                                                                                                  
z.fcurFdpOtherDebits,                                                                                                               
z.fcurFdpTotalDebits,                                                                                                               
z.fcurFdpClosingBalance,                                                                                                            
z.fcurFdpImpPenaltyTax,                                                                                                             
z.fcurFdpTotalPayable,                                                                                                              
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_rtnmacamafdp z;