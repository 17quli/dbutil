CREATE VIEW ${var:view_db}.app_tblemails                                                                                            
AS SELECT                                                                                                                           
z.flngEmailKey,                                                                                                                     
z.fstrGroup,                                                                                                                        
z.fintGroupPriority,                                                                                                                
z.fstrFrom,                                                                                                                         
z.fstrReplyTo,                                                                                                                      
z.fstrTo,                                                                                                                           
z.fstrCc,                                                                                                                           
z.fstrBcc,                                                                                                                          
z.fstrSubject,                                                                                                                      
z.fstrBody,                                                                                                                         
z.fintHTMLFormat,                                                                                                                   
z.fintPriority,                                                                                                                     
z.fstrMessageId,                                                                                                                    
z.fstrCredentialUserName,                                                                                                           
z.fstrCredentialUserPassword,                                                                                                       
z.fblnUseDefaultCredentials,                                                                                                        
z.fstrEmailServer,                                                                                                                  
z.flngEmailServerPort,                                                                                                              
z.fdtmQueued,                                                                                                                       
z.fstrQueuedBy,                                                                                                                     
z.fdtmSent,                                                                                                                         
z.fdtmError,                                                                                                                        
z.fstrError,                                                                                                                        
z.fdtmHoldTill,                                                                                                                     
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.fstrEnvironment,                                                                                                                  
z.fstrFromDisplay,                                                                                                                  
z.fstrSecureSocketOption,                                                                                                           
z.fblnAttachments,                                                                                                                  
z.fstrSlice,                                                                                                                        
z.insert_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblemails z
left outer join
   (SELECT  cem.flngEmailKey, cl.fstrCustomerLevel 
     FROM ${var:source_db}.app_tblcustomeremail cem 
     inner JOIN ${var:source_db}.app_tblCustomerLevel cl on 
    cem.flngcustomerkey=cl.flngcustomerkey 
    where 
    nvl(cem.record_active_flag, 'Y') = 'Y' 
    AND nvl(cem.record_deleted_flag, 'N') = 'N' 
    AND nvl(cl.record_active_flag, 'Y') = 'Y' 
    AND nvl(cl.record_deleted_flag, 'N') = 'N' 
) CL_CEM
ON Z.flngEmailKey=CL_CEM.flngEmailKey
WHERE nvl(CL_CEM.fstrCustomerLevel, 'STD') = 'STD' 
;