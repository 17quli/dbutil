CREATE VIEW ${var:view_db}.app_tblnz_accppl                                                                                         
AS SELECT                                                                                                                           
z.flngDocKey,                                                                                                                       
z.fintSeq,                                                                                                                          
z.fdtmCommence,                                                                                                                     
z.fdtmCease,                                                                                                                        
z.fstrCeaseReason,                                                                                                                  
z.fdtmAppRcptDate,                                                                                                                  
z.fdtmChildDueBirthDate,                                                                                                            
z.fstrPartnerIRDNumber,                                                                                                             
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_accppl z
left outer join
(select DISTINCT flngcustomerkey, flngDocKey from ${var:source_db}.app_tblaccount
 where record_active_flag = 'Y' AND record_deleted_flag= 'N') ac
on z.flngDocKey=ac.flngDocKey
left outer join
${var:source_db}.app_tblcustomerinfo cl
ON ac.flngcustomerkey = cl.flngcustomerkey
WHERE
nvl(cl.fstrcustomerlevel, 'STD') = 'STD'
AND nvl(cl.record_active_flag, 'Y') = 'Y'
AND nvl(cl.record_deleted_flag, 'N') = 'N'
;