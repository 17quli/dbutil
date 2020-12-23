CREATE VIEW ${var:view_db}.app_tblemail                                                                                             
AS SELECT                                                                                                                           
z.flngEmailKey,                                                                                                                     
z.fstrEmailType,                                                                                                                    
z.fstrFrom,                                                                                                                         
z.fstrTo,                                                                                                                           
z.fstrCc,                                                                                                                           
z.fstrSubject,                                                                                                                      
z.fstrMessage,                                                                                                                      
z.flngCustomerKey,                                                                                                                  
z.flngAccountKey,                                                                                                                   
z.fdtmFilingPeriod,                                                                                                                 
z.flngFolderKey,                                                                                                                    
z.flngCrmKey,                                                                                                                       
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.insert_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblemail z
 LEFT OUTER JOIN 
${var:source_db}.app_tblcustomerlevel cl 
ON z.flngcustomerkey = cl.flngcustomerkey
WHERE nvl(cl.fstrCustomerLevel, 'STD') = 'STD' 
  AND nvl(cl.record_active_flag, 'Y') = 'Y' 
  AND nvl(cl.record_deleted_flag, 'N') = 'N'
;
