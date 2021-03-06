CREATE TABLE ${var:target_db}.app_tblnz_rtnpieprd (                                                                                 
flngDocKey INT,                                                                                                                     
fcurTotalInvestmentValue DECIMAL(19,4),                                                                                             
fcurGrossIncome DECIMAL(19,4),                                                                                                      
fcurDeductibleExpenses DECIMAL(19,4),                                                                                               
fcurNetIncome DECIMAL(19,4),                                                                                                        
fcurNetLandIncome DECIMAL(19,4),                                                                                                    
fcurCombinedIncome DECIMAL(19,4),                                                                                                   
fcurFormationLoss DECIMAL(19,4),                                                                                                    
fcurLandLossBroughtForward DECIMAL(19,4),                                                                                           
fcurLandLossCarryForward DECIMAL(19,4),                                                                                             
fcurLandLossClaimed DECIMAL(19,4),                                                                                                  
fcurTotalIncome DECIMAL(19,4),                                                                                                      
fcurTotalLoss DECIMAL(19,4),                                                                                                        
fcurIncomeRetained DECIMAL(19,4),                                                                                                   
fcurIncomeExitedInvestors DECIMAL(19,4),                                                                                            
fcurInvestorExpenses DECIMAL(19,4),                                                                                                 
fcurTotalIncomeToAttribute DECIMAL(19,4),                                                                                           
fcurTotalLossToAttribute DECIMAL(19,4),                                                                                             
fcurIncomeAttributedZero DECIMAL(19,4),                                                                                             
fcurLossAttributedZero DECIMAL(19,4),                                                                                               
fcurIncomeAttributedLow DECIMAL(19,4),                                                                                              
fcurLossAttributedLow DECIMAL(19,4),                                                                                                
fcurIncomeAttributedMid DECIMAL(19,4),                                                                                              
fcurLossAttributedMid DECIMAL(19,4),                                                                                                
fcurIncomeAttributedTop DECIMAL(19,4),                                                                                              
fcurLossAttributedTop DECIMAL(19,4),                                                                                                
fcurTaxPayable DECIMAL(19,4),                                                                                                       
fcurTaxPaymentExitedInvestors DECIMAL(19,4),                                                                                        
fcurNetTaxPayable DECIMAL(19,4),                                                                                                    
fcurForeignTaxCredit DECIMAL(19,4),                                                                                                 
fcurDividendWithholdingPayment DECIMAL(19,4),                                                                                       
fcurImputationCredit DECIMAL(19,4),                                                                                                 
fcurResidentWithholdingTax DECIMAL(19,4),                                                                                           
fcurIncomeAttributedNFI DECIMAL(19,4),                                                                                              
fcurTaxPaidNFI DECIMAL(19,4),                                                                                                       
fblnIncludeIncomeLossAprFeb SMALLINT,                                                                                               
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;