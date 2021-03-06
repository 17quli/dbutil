create table ${var:target_db}.dss_payment_references (                                              
ird_number int,                                                                                                                     
location_number int,                                                                                                                
ft_sequence_number int,                                                                                                             
tax_type varchar(6),                                                                                                                
return_period_date timestamp,                                                                                                       
bank_branch_code int,                                                                                                               
bank_account_number int,                                                                                                            
bank_account_suffix_code int,                                                                                                       
cheque_serial_number int,                                                                                                           
sequence_number int,                                                                                                                
payment_reference_suffix int,                                                                                                       
payment_amount decimal(16,2),                                                                                                       
ft_amount decimal(16,2),                                                                                                            
date_banked timestamp,                                                                                                              
effective_date timestamp,                                                                                                           
payment_method_code varchar(4),                                                                                                     
payment_status_code varchar(2),                                                                                                     
existing_ind varchar(2),                                                                                                            
statement_seq_number int,                                                                                                           
district_office varchar(4),                                                                                                         
date_created timestamp,                                                                                                             
date_posted timestamp,                                                                                                              
ir_bank_statement_reference varchar(24),                                                                                            
ir_bank_statement_identifier varchar(24),                                                                                           
ird_bank_statement_code varchar(24),                                                                                                
`timestamp` timestamp,                                                                                                              
record_effective_timestamp timestamp,                                                                                               
record_expiry_timestamp timestamp,                                                                                                  
record_active_flag varchar(1),                                                                                                      
record_deleted_flag varchar(1),                                                                                                     
insert_object_run_key int,                                                                                                          
update_object_run_key int                                                                                                           
 ) stored as parquet;
