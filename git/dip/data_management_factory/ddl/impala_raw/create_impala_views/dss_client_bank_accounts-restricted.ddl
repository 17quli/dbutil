CREATE VIEW ${var:view_db}.dss_client_bank_accounts                                                                                 
AS SELECT                                                                                                                           
z.IRD_NUMBER,                                                                                                                       
z.LOCATION_NUMBER,                                                                                                                  
z.TAX_TYPE,                                                                                                                         
z.DEBIT_CREDIT_INDICATOR,                                                                                                           
z.BANK_BRANCH_CODE,                                                                                                                 
z.BANK_ACCOUNT_NUMBER,                                                                                                              
z.BANK_ACCOUNT_SUFFIX_CODE,                                                                                                         
z.DATE_START,                                                                                                                       
z.TIME_START,                                                                                                                       
z.MAINFRAME_USER_ID,                                                                                                                
z.AUTHORISATION_STATUS_IND,                                                                                                         
z.AUTHORISATION_USER_ID,                                                                                                            
z.DATE_END,                                                                                                                         
z.TERMINATION_REASON_CODE,                                                                                                          
z.TERMINATION_USER_ID,                                                                                                              
z.DOC_LODGEMENT_PREFIX,                                                                                                             
z.DOC_LODGEMENT_NUMBER,                                                                                                             
z.DOC_LODGEMENT_SUFFIX,                                                                                                             
z.DATE_APPLIED,                                                                                                                     
z.DATE_CEASED,                                                                                                                      
z.`TIMESTAMP`,                                                                                                                      
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
FROM ${var:source_db}.dss_client_bank_accounts z
LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc 
ON CAST(z.IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER as INT)  
WHERE nvl(sc.special_classification, 'STD')='STD' 
AND nvl( sc.record_active_flag,'Y')='Y' 
AND nvl(sc.record_deleted_flag, 'N') = 'N' 

;