CREATE VIEW ${var:view_db}.app_tblnz_incomebusattributes                                                                            
AS SELECT                                                                                                                           
z.fi64IncomeKey,                                                                                                                    
z.flngVer,                                                                                                                          
z.flngVerLast,                                                                                                                      
z.fstrNote,                                                                                                                         
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
FROM ${var:source_db}.app_tblnz_incomebusattributes z  
LEFT OUTER JOIN ${var:source_db}.app_tblnz_income ic ON z.fi64IncomeKey = ic.fi64IncomeKey 
LEFT OUTER JOIN ${var:source_db}.app_tblcustomerlevel cl ON ic.flngCustomerKey = cl.flngCustomerKey 
WHERE nvl(cl.fstrcustomerlevel, 'STD') = 'STD'
  AND nvl(ic.record_active_flag, 'Y') = 'Y'
  AND nvl(ic.record_deleted_flag, 'N') = 'N'
  AND nvl(cl.record_active_flag, 'Y') = 'Y'
  AND nvl(cl.record_deleted_flag, 'N') = 'N';