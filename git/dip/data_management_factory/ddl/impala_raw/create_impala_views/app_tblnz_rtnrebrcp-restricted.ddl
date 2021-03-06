CREATE VIEW ${var:view_db}.app_tblnz_rtnrebrcp                                                                                      
AS SELECT                                                                                                                           
z.flngDocKey,                                                                                                                       
z.fintSeq,                                                                                                                          
z.flngCustomerKey,                                                                                                                  
z.flngCaseKey,                                                                                                                      
z.fcurReceiptAmount,                                                                                                                
z.fcurApprovedAmount,                                                                                                               
z.fdtmReceiptDate,                                                                                                                  
z.fdtmFilingPeriod,                                                                                                                 
z.fstrDonationType,                                                                                                                 
z.fstrOrganisationName,                                                                                                             
z.fstrOrganisationIRD,                                                                                                              
z.fstrOrganisationCharityNum,                                                                                                       
z.fstrPartnerIRD,                                                                                                                   
z.flngPartnerCustomerKey,                                                                                                           
z.fcurPartnerAmount,                                                                                                                
z.fstrRejectedWho,                                                                                                                  
z.flngWebReqKey,                                                                                                                    
z.fblnTaxAgentClaim,                                                                                                                
z.fstrAuditRejectionRating,                                                                                                         
z.fstrRejectionReason,                                                                                                              
z.fstrOtherRejectionReason,                                                                                                         
z.flngOCRPage,                                                                                                                      
z.fstrOCRSourceType,                                                                                                                
z.flngOCRSourceKey,                                                                                                                 
z.fstrOCRStatus,                                                                                                                    
z.fstrOCRText,                                                                                                                      
z.fblnOCRKeyerConfirm,                                                                                                              
z.fblnOCRDonee,                                                                                                                     
z.fstrOCRReceiptID,                                                                                                                 
z.fstrOCRAddressName,                                                                                                               
z.fstrOCRAddress,                                                                                                                   
z.fstrOCREmail,                                                                                                                     
z.fstrOCRWebSite,                                                                                                                   
z.fstrOCRCharityNumber,                                                                                                             
z.fstrOCRName,                                                                                                                      
z.fstrOCRIRD,                                                                                                                       
z.fcurOCRReceiptAmount,                                                                                                             
z.fdtmOCRReceiptDate,                                                                                                               
z.fstrOCRType,                                                                                                                      
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
FROM ${var:source_db}.app_tblnz_rtnrebrcp z
left outer join ${var:source_db}.app_tblcustomerlevel  cl1 
on z.flngcustomerkey=cl1.flngcustomerkey 
left outer join ${var:source_db}.app_tblcustomerlevel  cl2
on z.flngPartnerCustomerKey=cl2.flngcustomerkey 
where 
cl1.fstrcustomerlevel = 'STD' 
and cl1.record_active_flag='Y'
and cl1.record_deleted_flag = 'N'
and cl2.fstrcustomerlevel = 'STD' 
and cl2.record_active_flag='Y'
and cl2.record_deleted_flag = 'N'

;                                                                                     
