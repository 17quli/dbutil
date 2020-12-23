CREATE VIEW ${var:view_db}.app_tblnz_kssproratainterest                                                                             
AS SELECT                                                                                                                           
z.fi64InterestKey,                                                                                                                  
z.fi64ContributionKey,                                                                                                              
z.fdtmCalculationDate,                                                                                                              
z.fi64InterestContributionKey,                                                                                                      
z.fcurCalculatedInterest,                                                                                                           
z.fcurInterestSentToScheme,                                                                                                         
z.fstrWho,                                                                                                                          
z.fdtmWhen,                                                                                                                         
z.record_effective_timestamp,                                                                                                       
z.record_expiry_timestamp,                                                                                                          
z.record_active_flag,                                                                                                               
z.record_deleted_flag,                                                                                                              
z.insert_object_run_key,                                                                                                            
z.update_object_run_key                                                                                                             
 FROM ${var:source_db}.app_tblnz_kssproratainterest z; 