CREATE TABLE ${var:target_db}.tdw_tbl_nz_rtnfamsquareup (                                           
FLNGDOCKEY BIGINT,                                                                                                                  
FINTSEQ INT,                                                                                                                        
FSTRCATEGORY VARCHAR(100),                                                                                                          
FCURFTC DECIMAL(24,4),                                                                                                              
FCURIWTC DECIMAL(24,4),                                                                                                             
FCURCTC DECIMAL(24,4),                                                                                                              
FCURMFTC DECIMAL(24,4),                                                                                                             
FCURPTC DECIMAL(24,4),                                                                                                              
FCURBSTC DECIMAL(24,4),                                                                                                             
FCURAMOUNT DECIMAL(24,4),                                                                                                           
FLNGFAMENTITLEMENTKEY BIGINT,                                                                                                       
FSTRWHO VARCHAR(20),                                                                                                                
EFFECTIVE_FROM TIMESTAMP,                                                                                                           
EFFECTIVE_TO TIMESTAMP,                                                                                                             
CURRENT_REC_FLAG VARCHAR(2),                                                                                                        
DOCSETKEY BIGINT,                                                                                                                   
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;                 