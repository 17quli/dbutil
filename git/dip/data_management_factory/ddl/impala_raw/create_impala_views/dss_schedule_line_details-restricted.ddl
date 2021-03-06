CREATE VIEW ${var:view_db}.dss_schedule_line_details                                                                                
AS SELECT                                                                                                                           
z.EMPLOYEE_IRD_NUMBER,                                                                                                              
z.EMPLOYEE_LOCATION_NUMBER,                                                                                                         
z.DOC_LODGE_NBR_PREFIX,                                                                                                             
z.DOC_LODGE_NBR,                                                                                                                    
z.DOC_LODGE_NBR_SUFFIX,                                                                                                             
z.LINE_NUMBER,                                                                                                                      
z.SEQUENCE_NUMBER,                                                                                                                  
z.LINE_ITEM_STATUS_CODE,                                                                                                            
z.TYPE_CODE,                                                                                                                        
z.SUB_TYPE_CODE,                                                                                                                    
z.SCHEDULE_ERROR_CODE,                                                                                                              
z.TRANSACTION_STRUCTURE,                                                                                                            
z.FT_SEQUENCE_NUMBER,                                                                                                               
z.EMPLOYEE_NAME,                                                                                                                    
z.REFUND_AMOUNT,                                                                                                                    
z.TAX_TYPE,                                                                                                                         
z.RETURN_PERIOD_DATE,                                                                                                               
z.EMPLOYER_IRD_NUMBER,                                                                                                              
z.EMPLOYER_LOCATION_NUMBER,                                                                                                         
z.USER_ID,                                                                                                                          
z.PROGRAM_ID,                                                                                                                       
z.UPDATE_TIMESTAMP,                                                                                                                 
z.WITHHOLD_TYPE_CODE,                                                                                                               
z.VERSION_NUMBER,                                                                                                                   
z.`TIMESTAMP`,                                                                                                                      
z.EMPLOYEE_AMOUNT,                                                                                                                  
z.CHANGE_REASON_CODE,                                                                                                               
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.dss_schedule_line_details z
 LEFT OUTER JOIN ${var:source_db}.dss_special_clients_all sc 
 ON CAST(z.EMPLOYEE_IRD_NUMBER AS INT) = CAST(sc.IRD_NUMBER AS INT) 
 WHERE nvl(sc.special_classification, 'STD') = 'STD' 
 AND nvl(sc.record_active_flag, 'Y') = 'Y' 
 AND nvl(sc.record_deleted_flag, 'N') = 'N';