CREATE TABLE ${var:target_db}.tdw_tbl_webrequest 
(                                                  
FLNGWEBREQKEY BIGINT,                                                                                                               
FLNGWEBLOGONKEY BIGINT,                                                                                                             
FLNGSESSIONKEY BIGINT,                                                                                                              
FLNGCUSTOMERKEY BIGINT,                                                                                                             
FLNGACCOUNTKEY BIGINT,                                                                                                              
FDTMFILINGPERIOD TIMESTAMP,                                                                                                         
FSTRAPPLICATION VARCHAR(40),                                                                                                        
FSTRWEBREQTYPE VARCHAR(24),                                                                                                         
FBLNURGENT INT,                                                                                                                     
FSTRDOCTYPE VARCHAR(24),                                                                                                            
FINTDOCVER INT,                                                                                                                     
FLNGVERLAST BIGINT,                                                                                                                 
FSTRREQUESTTITLE VARCHAR(160),                                                                                                      
FDTMCREATED TIMESTAMP,                                                                                                              
FSTRCREATEDWHO VARCHAR(20),                                                                                                         
FDTMSUBMITTED TIMESTAMP,                                                                                                            
FSTRSUBMITTEDWHO VARCHAR(20),                                                                                                       
FDTMREVIEWED TIMESTAMP,                                                                                                             
FDTMAPPROVED TIMESTAMP,                                                                                                             
FDTMDENIED TIMESTAMP,                                                                                                               
FSTRDENIEDWHO VARCHAR(20),                                                                                                          
FDTMCOMPLETED TIMESTAMP,                                                                                                            
FBLNINERROR INT,                                                                                                                    
FSTRSTATUS VARCHAR(24),                                                                                                             
FDTMQUEUED TIMESTAMP,                                                                                                               
FDTMHOLDTILL TIMESTAMP,                                                                                                             
FDTMPROCESSED TIMESTAMP,                                                                                                            
FSTRTEXT1 VARCHAR(510),                                                                                                             
FCURAMOUNT1 DECIMAL(24,4),                                                                                                          
FDTMDATE1 TIMESTAMP,                                                                                                                
FCURBALANCEIMPACT DECIMAL(24,4),                                                                                                    
FCURESTIMATEDAMOUNT DECIMAL(24,4),                                                                                                  
FBLNATTACHMENTS INT,                                                                                                                
FBLNHASPAYMENT INT,                                                                                                                 
FSTRMEDIA VARCHAR(60),                                                                                                              
FSTREMAIL VARCHAR(510),                                                                                                             
FSTRCONFIRMATIONCODE VARCHAR(20),                                                                                                   
FSTRLANGUAGE VARCHAR(6),                                                                                                            
FLNGDOCKEY BIGINT,                                                                                                                  
FI64DOCGROUPKEY BIGINT,                                                                                                             
FI64DOCSETKEY BIGINT,                                                                                                               
FI64DOCEDITINPROGRESSKEY BIGINT,                                                                                                    
FSTRWHO VARCHAR(20),                                                                                                                
EFFECTIVE_FROM TIMESTAMP,                                                                                                           
EFFECTIVE_TO TIMESTAMP,                                                                                                             
CURRENT_REC_FLAG VARCHAR(2),                                                                                                        
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET; 