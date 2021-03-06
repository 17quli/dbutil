CREATE VIEW ${var:view_db}.app_tblbcmcertificate                                                  
AS SELECT                                                                                                                           
z.flngCertificateKey,                                                                                                               
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.flngFundKey,                                                                                                                      
z.fstrCreditType,                                                                                                                   
z.flngFolderKey,                                                                                                                    
z.fstrExternalId,                                                                                                                   
z.fstrProject,                                                                                                                      
z.flngParentCertificateKey,                                                                                                         
z.flngDocKey,                                                                                                                       
z.fcurAmountOriginal,                                                                                                               
z.fcurAmountApproved,                                                                                                               
z.fcurAmountClaimed,                                                                                                                
z.fcurAmountRemaining,                                                                                                              
z.fcurAmountTransferred,                                                                                                            
z.fstrApprovedBy,                                                                                                                   
z.fdtmApproved,                                                                                                                     
z.fdtmDenied,                                                                                                                       
z.fdtmFilingPeriod,                                                                                                                 
z.fdtmCertificateBegin,                                                                                                             
z.fdtmCertificateEnd,                                                                                                               
z.fblnConverted,                                                                                                                    
z.fblnValid,                                                                                                                        
z.fcurPerPeriodClaimCap,                                                                                                            
z.fblnAllowOverClaim,                                                                                                               
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblbcmcertificate z;
