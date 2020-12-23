CREATE VIEW ${var:view_db}.app_tblauditgroupdetail                                                                                  
AS SELECT                                                                                                                           
z.flngAuditGroupKey,                                                                                                                
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.fstrExternalId,                                                                                                                   
z.fstrAuditGroupStatus,                                                                                                             
z.fstrAuditGroupStage,                                                                                                              
z.fstrAuditGroupProgram,                                                                                                            
z.fstrAuditGroupSource,                                                                                                             
z.fblnOpen,                                                                                                                         
z.fstrManager,                                                                                                                      
z.fstrDescription,                                                                                                                  
z.fdtmWorkDate,                                                                                                                     
z.fblnActive,                                                                                                                       
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblauditgroupdetail z
 WHERE z.flngAuditGroupKey IN 
( SELECT DISTINCT ag.flngAuditGroupKey
  FROM ${var:source_db}.app_tblauditgroup ag 
  LEFT OUTER JOIN ${var:source_db}.app_tblCustomerLevel cl on 
  ag.flngcustomerkey=cl.flngcustomerkey 
  WHERE 
   nvl(ag.record_active_flag, 'Y') = 'Y'
   AND nvl(ag.record_deleted_flag, 'N') = 'N' 
   AND  nvl(cl.fstrCustomerLevel, 'STD') = 'STD' 
   AND nvl(cl.record_active_flag, 'Y') = 'Y' 
   AND nvl(cl.record_deleted_flag, 'N') = 'N' 
);   