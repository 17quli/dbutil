CREATE VIEW ${var:view_db}.dss_fam_adjustments                                                                                      
AS SELECT                                                                                                                           
z.PCC_IRD_NUMBER,                                                                                                                   
z.PCC_LOCATION_NUMBER,                                                                                                              
z.RETURN_PERIOD_DATE,                                                                                                               
z.LIST_NUMBER,                                                                                                                      
z.ADJUSTMENT_IRD_NUMBER,                                                                                                            
z.ACTIVE_STATUS_CODE,                                                                                                               
z.FAM_ASSESSMENT_RSN_CODE,                                                                                                          
z.FB_PAYMENT_INDICATOR,                                                                                                             
z.PTC_LODGE_DATE,                                                                                                                   
z.ELIGIBLE_PER_START_DATE,                                                                                                          
z.DAILY_RATE_ACM_ADJ_INDICATOR,                                                                                                     
z.GRACE_PERIOD_ACTIVE_CODE,                                                                                                         
z.ACC_GRC_PERIOD_END_DATE,                                                                                                          
z.CHILD_SUPPORT_RECEIVED_AMT,                                                                                                       
z.CHILD_SUPPORT_PAID_AMT,                                                                                                           
z.MAINTENANCE_RECEIVED_AMT,                                                                                                         
z.MAINTENANCE_PAID_AMT,                                                                                                             
z.BUSINESS_ADJ_RECEIVED_AMT,                                                                                                        
z.BUSINESS_ADJ_PAID_AMT,                                                                                                            
z.NON_TAXABLE_INCOME_AMT,                                                                                                           
z.DATE_PCC_ARRIVES_NZ,                                                                                                              
z.DATE_PCC_DEPARTS_NZ,                                                                                                              
z.SQUARE_UP_INDICATOR,                                                                                                              
z.SQUARE_UP_CHG_INDICATOR,                                                                                                          
z.RETURN_CATEGORY,                                                                                                                  
z.ABATED_INDICATOR,                                                                                                                 
z.LIABILITY_CODE,                                                                                                                   
z.TOTAL_FAM_AMT_PAID,                                                                                                               
z.TOTAL_FAM_AMT_PAID_BY_MSD,                                                                                                        
z.PARTNER_ADJ_INDICATOR,                                                                                                            
z.TOTAL_NBR_ACC_PERIODS,                                                                                                            
z.TOTAL_NBR_BENEFIT_PERIODS,                                                                                                        
z.TOTAL_NBR_ELIGIBLE_PERIODS,                                                                                                       
z.TOTAL_FSTC_AMT,                                                                                                                   
z.TOTAL_FTC_AMT,                                                                                                                    
z.TOTAL_CTC_AMT,                                                                                                                    
z.TOTAL_PTC_AMT,                                                                                                                    
z.EST_TOTAL_SALARY_WAGE_AMT,                                                                                                        
z.TOTAL_ACC_INCOME_AMT,                                                                                                             
z.EST_INTEREST_DIVIDENT_AMT,                                                                                                        
z.EST_BUSINESS_INCOME_AMT,                                                                                                          
z.EST_TESTED_BENEFIT_INCOME_AMT,                                                                                                    
z.EST_SUPER_OR_STUDENT_ALW_AMT,                                                                                                     
z.TOTAL_INCOME_EST_AMT,                                                                                                             
z.EST_CS_RECEIVED_AMT,                                                                                                              
z.EST_CS_PAID_AMT,                                                                                                                  
z.CHANGE_REASON_CODE_1,                                                                                                             
z.CHANGE_REASON_CODE_2,                                                                                                             
z.CHANGE_REASON_CODE_3,                                                                                                             
z.DATE_PROCESSED,                                                                                                                   
z.MAINFRAME_USER_ID,                                                                                                                
z.DATE_APPLIED,                                                                                                                     
z.DATE_CEASED,                                                                                                                      
z.`TIMESTAMP`,                                                                                                                      
z.CTC_INDICATOR,                                                                                                                    
z.CTC_END_DATE,                                                                                                                     
z.MSD_BENEFIT_SERVICE_CODE,                                                                                                         
z.ANNUAL_IWP_AMT,                                                                                                                   
z.BUSINESS_BEGIN_DATE,                                                                                                              
z.BUSINESS_END_DATE,                                                                                                                
z.ACCIDENT_INDICATOR,                                                                                                               
z.SQ_MAINTENANCE_PAID_AMT,                                                                                                          
z.SQ_MAINTENANCE_RECEIVED_AMT,                                                                                                      
z.TOTAL_FTC_WEEKS_WORKED,                                                                                                           
z.BUSINESS_ACCOUNT,                                                                                                                 
z.BUSINESS_YEAR,                                                                                                                    
z.SCHEDULAR_PAYMENTS_AMOUNT,                                                                                                        
z.SCHEDULAR_EXPENSES_AMOUNT,                                                                                                        
z.INTEREST_RECEIVED_AMOUNT,                                                                                                         
z.DIVIDENDS_RECEIVED_AMOUNT,                                                                                                        
z.RENTAL_INCOME_AMOUNT,                                                                                                             
z.ROYALTIES_RECEIVED_AMOUNT,                                                                                                        
z.ESTATE_TRUST_INC_REC_AMOUNT,                                                                                                      
z.MAORI_AUTHORITY_INC_REC_AMOUNT,                                                                                                   
z.TOT_INCOME_DEBIT_AMOUNT,                                                                                                          
z.TOT_INCOME_CREDIT_AMOUNT,                                                                                                         
z.RPIR_VERSION_NUMBER,                                                                                                              
z.FAM_ANNUAL_BSTC_AMOUNT,                                                                                                           
z.FAM_BSTC_ONLY_IND,                                                                                                                
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.dss_fam_adjustments z
left outer join ${var:source_db}.dss_special_clients_all sc1 
on cast(sc1.ird_number as int) = cast(z.PCC_IRD_NUMBER as int) 
left outer join ${var:source_db}.dss_special_clients_all sc2 
on cast(sc2.ird_number as int) = cast(z.ADJUSTMENT_IRD_NUMBER as int) 
where 
nvl(sc1.special_classification, 'STD') = 'STD' and 
nvl(sc1.record_active_flag, 'Y') = 'Y' and 
nvl(sc1.record_deleted_flag, 'N') = 'N' and nvl(sc2.special_classification, 'STD') = 'STD' and nvl(sc2.record_active_flag, 'Y') = 'Y' and
nvl(sc2.record_deleted_flag, 'N') = 'N'
;
