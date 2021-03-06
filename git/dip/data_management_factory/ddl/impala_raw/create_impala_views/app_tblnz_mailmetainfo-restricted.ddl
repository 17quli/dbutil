CREATE VIEW ${var:view_db}.app_tblnz_mailmetainfo                                                                                   
AS SELECT                                                                                                                           
z.flngMailItemKey,                                                                                                                  
z.flngMailTypeKey,                                                                                                                  
z.flngNameAddressHash,                                                                                                              
z.flngMailBatchKey,                                                                                                                 
z.fstrAddressee,                                                                                                                    
z.fstrAddressBlock,                                                                                                                 
z.fstrCity,                                                                                                                         
z.fstrPostCode,                                                                                                                     
z.fstrCountry,                                                                                                                      
z.flngOriCustomerKey,                                                                                                               
z.flngCustomerKey,                                                                                                                  
z.fstrRecipientIRD,                                                                                                                 
z.fstrIRDLevel,                                                                                                                     
z.fstrAccountType,                                                                                                                  
z.fintAddressProfile,                                                                                                               
z.fintAddressKey,                                                                                                                   
z.fintSimplexAfterPage,                                                                                                             
z.fblnDuplex,                                                                                                                       
z.flngPageCount,                                                                                                                    
z.fstrPaperSize,                                                                                                                    
z.fstrPerforationPages,                                                                                                             
z.fstrSheetCode,                                                                                                                    
z.fintFeeder1Count,                                                                                                                 
z.fintFeeder2Count,                                                                                                                 
z.fintFeeder3Count,                                                                                                                 
z.fintFeeder4Count,                                                                                                                 
z.fintFeeder5Count,                                                                                                                 
z.fintFeeder6Count,                                                                                                                 
z.fstrFeatures,                                                                                                                     
z.fstrPageOrientationData,                                                                                                          
z.fstrOtherID,                                                                                                                      
z.fblnAgentMail,                                                                                                                    
z.fblnInsertPresent,                                                                                                                
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_mailmetainfo z
left outer join ${var:source_db}.app_tblcustomerlevel  cl1 
on z.flngCustomerKey =cl1.flngcustomerkey 
left outer join ${var:source_db}.app_tblcustomerlevel  cl2
on z.flngOriCustomerKey=cl2.flngcustomerkey 
where 
cl1.fstrcustomerlevel = 'STD' 
and cl1.record_active_flag='Y'
and cl1.record_deleted_flag = 'N'
and cl2.fstrcustomerlevel = 'STD' 
and cl2.record_active_flag='Y'
and cl2.record_deleted_flag = 'N'
; 