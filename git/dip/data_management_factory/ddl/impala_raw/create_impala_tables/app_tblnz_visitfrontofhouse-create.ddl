CREATE TABLE ${var:target_db}.app_tblnz_visitfrontofhouse (                                                                         
flngDocKey INT,                                                                                                                     
flngNumberOfCustomers INT,                                                                                                          
fblnAssistAppointment SMALLINT,                                                                                                     
fblnAssistIRDApp SMALLINT,                                                                                                          
fblnAssistPickUp SMALLINT,                                                                                                          
fblnAssistReview SMALLINT,                                                                                                          
fblnEduBusInc SMALLINT,                                                                                                             
fblnEduCS SMALLINT,                                                                                                                 
fblnEduEmployer SMALLINT,                                                                                                           
fblnEduGST SMALLINT,                                                                                                                
fblnEduFam SMALLINT,                                                                                                                
fblnEduKiwisaver SMALLINT,                                                                                                          
fblnEduPPL SMALLINT,                                                                                                                
fblnEduRebate SMALLINT,                                                                                                             
fblnEduReturns SMALLINT,                                                                                                            
fblnEduSLS SMALLINT,                                                                                                                
fblnEduSW SMALLINT,                                                                                                                 
fblnEduTaxAgent SMALLINT,                                                                                                           
fblnUpdIRD SMALLINT,                                                                                                                
fblnUpdInfo SMALLINT,                                                                                                               
fblnUpdInc SMALLINT,                                                                                                                
fblnReDropBox SMALLINT,                                                                                                             
fblnReMyIR SMALLINT,                                                                                                                
fblnReOtherOrg SMALLINT,                                                                                                            
fblnRePhones SMALLINT,                                                                                                              
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;