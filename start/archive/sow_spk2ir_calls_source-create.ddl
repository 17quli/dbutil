CREATE TABLE ${var:target_db}.sow_spk2ir_calls_source (                                                                             
`CALL_NBR_CODE` VARCHAR(40),                                                                                                        
`CALL_DATE` TIMESTAMP,                                                                                                              
`CALL_START_TIME` TIMESTAMP,                                                                                                        
`CALL_END_TIME` TIMESTAMP,                                                                                                          
`IVR_SITE_INDICATOR` VARCHAR(128),                                                                                                  
`SERVICE_CODE` VARCHAR(510),                                                                                                        
`ABANDON_FLAG` VARCHAR(2),                                                                                                          
`IRD_NUMBER` VARCHAR(18),                                                                                                           
`AUTHORISED_IRD_NUMBER` VARCHAR(18),                                                                                                
`HANDOFF_PROCESS_INDICATOR` VARCHAR(2),                                                                                             
`TARGET_SKILL` VARCHAR(510),                                                                                                        
`OPEN_NAVIGATOR_ATTEMPTS` BIGINT,                                                                                                   
`AUTHORISED_ID_ENTRY_ATTEMPTS` BIGINT,                                                                                              
`NUMBER_OF_ID_ENTRY_ATTEMPTS` BIGINT,                                                                                               
`AUTHORISED_ID_NUMBER_TYPE` VARCHAR(510),                                                                                           
`VE_KVP` VARCHAR(510),                                                                                                              
`TRANSLATION_KVP` VARCHAR(128),                                                                                                     
`SOFT_PHONE_TRANSFER` VARCHAR(510),                                                                                                 
`V_PIN` VARCHAR(2),                                                                                                                 
`V_ADDRESS` VARCHAR(2),                                                                                                             
`V_DOB` VARCHAR(2),                                                                                                                 
`V_NAME` VARCHAR(2),                                                                                                                
`V_PHONE` VARCHAR(2),                                                                                                               
`V_CLI` VARCHAR(2),                                                                                                                 
`SOFT_PHONE_WRAP_UP_REASON_CODE` VARCHAR(510),                                                                                      
`RUN_ID` BIGINT,                                                                                                                    
`CALL_LEG` BIGINT,                                                                                                                  
`B_IRDNUM` VARCHAR(2),                                                                                                              
`B_DOB` VARCHAR(2),                                                                                                                 
`B_TOKEN3` VARCHAR(2),                                                                                                              
`B_TOKEN4` VARCHAR(2),                                                                                                              
`TYPE_OF_V` VARCHAR(2),                                                                                                             
`IRDNUM_LOOKED_UP` VARCHAR(2),                                                                                                      
insert_object_run_key INT                                                                                                           
 )                                                                                                                                  
  STORED AS PARQUET;                   