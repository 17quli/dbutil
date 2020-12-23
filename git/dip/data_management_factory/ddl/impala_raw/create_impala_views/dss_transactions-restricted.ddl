CREATE VIEW ${var:view_db}.dss_transactions                                                                                         
AS SELECT                                                                                                                           
z.IRD_NUMBER,                                                                                                                       
z.LOCATION_NUMBER,                                                                                                                  
z.TAX_TYPE,                                                                                                                         
z.RETURN_PERIOD_DATE,                                                                                                               
z.SEQ_NO,                                                                                                                           
z.ACCOUNT_NO,                                                                                                                       
z.AMOUNT,                                                                                                                           
z.TRANSACTION_CODE,                                                                                                                 
z.TRANSACTION_TYPE,                                                                                                                 
z.TRANSACTION_STATUS_CODE,                                                                                                          
z.PAYMENT_METHOD_CODE,                                                                                                              
z.TRANSACTION_REASON_CODE,                                                                                                          
z.RETURN_TYPE,                                                                                                                      
z.USER_ID,                                                                                                                          
z.DATE_EFFECTIVE,                                                                                                                   
z.DATE_PROCESSED,                                                                                                                   
z.DATE_REVERSED,                                                                                                                    
z.ACCOUNT_KEY_LINK,                                                                                                                 
z.TRANSACTION_SEQ_LINK,                                                                                                             
z.OFFICE_NUMBER,                                                                                                                    
z.OFFICE_TYPE,                                                                                                                      
z.`TIMESTAMP`,                                                                                                                      
z.insert_object_run_key                                                                                                             
FROM ${var:source_db}.dss_transactions z 
LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc ON CAST(sc.IRD_NUMBER AS INT) = CAST(z.IRD_NUMBER AS INT) 
WHERE nvl(sc.special_classification, 'STD') = 'STD' 
AND nvl(sc.record_active_flag, 'Y') = 'Y' 
AND nvl(sc.record_deleted_flag, 'N') = 'N' ;
