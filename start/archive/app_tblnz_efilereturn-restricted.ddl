CREATE VIEW ${var:view_db}.app_tblnz_efilereturn                                                                                    
AS SELECT                                                                                                                           
z.`flngFileKey`,                                                                                                                    
z.`flngSequence`,                                                                                                                   
z.`fstrDLN`,                                                                                                                        
z.`fdtmFileOutStatus`,                                                                                                              
z.`fdtmFileOutConfirmation`,                                                                                                        
z.`fblnPosted`,                                                                                                                     
z.`fstrIRDNumber`,                                                                                                                  
z.`fintLocationNumber`,                                                                                                             
z.`fstrReturnType`,                                                                                                                 
z.`fdtmFilingPeriod`,                                                                                                               
z.`flngReturnVersion`,                                                                                                              
z.`fdtmReceived`,                                                                                                                   
z.`fdtmProcessed`,                                                                                                                  
z.`fstrReturnStatus`,                                                                                                               
z.`flngReturnErrorCode`,                                                                                                            
z.`fstrWho`,                                                                                                                        
z.`fdtmWhen`,                                                                                                                       
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_efilereturn z
LEFT OUTER JOIN 
(SELECT fstrID, cl.fstrcustomerlevel 
 FROM ${var:source_db}.app_tblid id 
 INNER JOIN 
 ${var:source_db}.app_tblcustomerlevel cl ON id.flngCustomerKey = cl.flngCustomerKey 
 WHERE id.fstrIDtype = 'IRD' 
 AND id.flngver = 0 
 AND id.fblnDefault = 1
 AND nvl(id.record_active_flag, 'Y') = 'Y' 
 AND nvl(id.record_deleted_flag, 'N') = 'N' 
 AND nvl(cl.record_active_flag, 'Y') = 'Y' 
 AND nvl(cl.record_deleted_flag, 'N') = 'N'
 ) idcl1
 ON CAST(z.fstrIRDNumber AS INT) = CAST(idcl1.fstrID AS INT) 
WHERE nvl(idcl1.fstrcustomerlevel, 'STD') ='STD'
;