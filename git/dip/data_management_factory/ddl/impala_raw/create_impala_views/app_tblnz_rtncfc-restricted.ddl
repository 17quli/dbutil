CREATE VIEW ${var:view_db}.app_tblnz_rtncfc                                                                                         
AS SELECT                                                                                                                           
z.flngDocKey,                                                                                                                       
z.fintSeq,                                                                                                                          
z.fstrName,                                                                                                                         
z.fdtmBalanceDate,                                                                                                                  
z.fstrPrimaryActivity,                                                                                                              
z.fstrPrimaryActivityOther,                                                                                                         
z.fstrJurisdiction,                                                                                                                 
z.fstrJurisdictionOther,                                                                                                            
z.fstrCurrency,                                                                                                                     
z.fstrCurrencyOther,                                                                                                                
z.fcurGrossRevenue,                                                                                                                 
z.fcurRoyaltyIncome,                                                                                                                
z.fcurProfitBeforeTax,                                                                                                              
z.fcurTotalAssets,                                                                                                                  
z.fstrAustralianCFC,                                                                                                                
z.fstrActiveCFC,                                                                                                                    
z.flngEmployees,                                                                                                                    
z.fcurEarnings,                                                                                                                     
z.fcurAssetsLessFinancial,                                                                                                          
z.fcurIncomeInterest,                                                                                                               
z.fcurAttributedIncome,                                                                                                             
z.fcurIncomeAfterLoss,                                                                                                              
z.fcurCreditsEarned,                                                                                                                
z.fcurCreditsUsed,                                                                                                                  
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key
from ${var:source_db}.app_tblnz_rtncfc z 
LEFT OUTER JOIN ${var:source_db}.app_tbldocsetdoc d on d.flngdockey = z.flngdockey 
LEFT OUTER JOIN ${var:source_db}.app_tblReturn r on r.fi64docsetkey = d.fi64docsetkey
LEFT OUTER JOIN ${var:source_db}.app_tblAccount a on a.flngAccountKey = r.flngAccountKey
LEFT OUTER JOIN ${var:source_db}.app_tblCustomerLevel cl on cl.flngCustomerkey = a.flngCustomerKey
where nvl(cl.fstrcustomerlevel, 'STD') = 'STD' 
AND a.flngver=0
AND nvl(d.record_active_flag, 'Y') = 'Y'
AND nvl(d.record_deleted_flag, 'N') = 'N'
and nvl(r.record_active_flag, 'Y') = 'Y'
AND nvl(r.record_deleted_flag, 'N') = 'N'
and nvl(a.record_active_flag, 'Y') = 'Y'
AND nvl(a.record_deleted_flag, 'N') = 'N'
AND nvl(cl.record_active_flag, 'Y') = 'Y'
AND nvl(cl.record_deleted_flag, 'N') = 'N';