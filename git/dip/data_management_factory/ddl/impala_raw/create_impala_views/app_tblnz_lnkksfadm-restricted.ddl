CREATE VIEW ${var:view_db}.app_tblnz_lnkksfadm                                                                                      
AS SELECT                                                                                                                           
z.flngDocKey,                                                                                                                       
z.fstrContactName,                                                                                                                  
z.fstrContactEmail,                                                                                                                 
z.fstrPhoneNumber,                                                                                                                  
z.fstrPhoneNumber2,                                                                                                                 
z.fstrAttention,                                                                                                                    
z.fstrCity,                                                                                                                         
z.fstrDistrict,                                                                                                                     
z.fblnOverridden,                                                                                                                   
z.fstrRowID,                                                                                                                        
z.fstrStreet,                                                                                                                       
z.fstrSubDistrict,                                                                                                                  
z.fstrSubProvince,                                                                                                                  
z.fstrSuburb,                                                                                                                       
z.fstrUnit,                                                                                                                         
z.fstrUnitType,                                                                                                                     
z.fblnVerified,                                                                                                                     
z.fdtmVerifiredDt,                                                                                                                  
z.fstrZip,                                                                                                                          
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_lnkksfadm z
 left outer join 
${var:source_db}.app_tblaccount ac
ON z.flngDocKey = ac.flngDocKey
left join 
${var:source_db}.app_tblcustomerinfo cl 
ON ac.flngcustomerkey = cl.flngcustomerkey
WHERE
nvl(ac.record_active_flag, 'Y') = 'Y'
AND nvl(ac.record_deleted_flag, 'N') = 'N'
AND nvl(cl.fstrcustomerlevel, 'STD') = 'STD'
AND nvl(cl.record_active_flag, 'Y') = 'Y'
AND nvl(cl.record_deleted_flag, 'N') = 'N'
;                                                                                       
                                              ;      