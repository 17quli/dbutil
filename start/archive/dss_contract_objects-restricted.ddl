CREATE VIEW ${var:view_db}.dss_contract_objects                                                                                     
AS SELECT                                                                                                                           
z.`CONTRACT_OBJECT_ID`,                                                                                                             
z.`CONTRACT_OBJECT_TYPE`,                                                                                                           
z.`CONTRACT_OBJECT_NAME`,                                                                                                           
z.`SCHEME_ID`,                                                                                                                      
z.`SCHEME_NOTIFICATION_DATE`,                                                                                                       
z.`SCHEME_MEMBERSHIP_END_DATE`,                                                                                                     
z.`SCHEME_RELATION_ENDING_REASON`,                                                                                                  
z.`SCHEME_RELATIONSHIP_STATUS`,                                                                                                     
z.`FEE_PAYMENT_DATE`,                                                                                                               
z.`REALLOCATION_DATE`,                                                                                                              
z.`LAST_PAYMENT_DATE`,                                                                                                              
z.`SCHEME_CHOICE_TYPE_INDICATOR`,                                                                                                   
z.`EMPLOYER_RELATION_LINE_NUMBER`,                                                                                                  
z.`SCHEMA_DEDUCTION_PERCENTAGE`,                                                                                                    
z.`CURRENT_RECORD_INDICATOR`,                                                                                                       
z.`DATE_APPLIED`,                                                                                                                   
z.`DATE_CEASED`,                                                                                                                    
z.`TIMESTAMP`,                                                                                                                      
z.`CLOSURE_REASON_CODE`,                                                                                                            
z.`MTC_START_DATE`,                                                                                                                 
z.`CREDITABLE_MEMBERSHIP_DATE`,                                                                                                     
z.`CMD_CHANGE_REASON`,                                                                                                              
z.`LETTER_SENT_IND`,                                                                                                                
z.`MTC_FC_DATE`,                                                                                                                    
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.dss_contract_objects z; 