CREATE TABLE ${var:target_db}.lcf_object_run (                                                             
   object_run_key BIGINT,                                                                          
   target_object_name VARCHAR(60),                                                                 
   object_key INT,                                                                                 
   start_time TIMESTAMP,                                                                           
   end_time TIMESTAMP,                                                                             
   status VARCHAR(1024),                                                                           
   status_message VARCHAR(8000),                                                                   
   records_read BIGINT,                                                                            
   records_written BIGINT,                                                                         
   object_log_name VARCHAR(4096),                                                                  
   object_prg_name VARCHAR(4096),                                                                  
   ingestion_mode VARCHAR(20),                                                                     
   prev_high_water_mark_value TIMESTAMP,                                                           
   high_water_market_value_jnl TIMESTAMP,                                                          
   high_water_mark_value TIMESTAMP,                                                                
   load_pattern_name VARCHAR(60),                                                                  
   task1 VARCHAR(100),                                                                             
   task1_start_time TIMESTAMP,                                                                     
   task1_end_time TIMESTAMP,                                                                       
   task2 VARCHAR(100),                                                                             
   task2_start_time TIMESTAMP,                                                                     
   task2_end_time TIMESTAMP,                                                                       
   task3 VARCHAR(100),                                                                             
   task3_start_time TIMESTAMP,                                                                     
   task3_end_time TIMESTAMP,                                                                       
   task4 VARCHAR(100),                                                                             
   task4_start_time TIMESTAMP,                                                                     
   task4_end_time TIMESTAMP,                                                                       
   task5 VARCHAR(100),                                                                             
   task5_start_time TIMESTAMP,                                                                     
   task5_end_time TIMESTAMP,                                                                       
   task6 VARCHAR(100),                                                                             
   task6_start_time TIMESTAMP,                                                                     
   task6_end_time TIMESTAMP,                                                                       
   task7 VARCHAR(100),                                                                             
   task7_start_time TIMESTAMP,                                                                     
   task7_end_time TIMESTAMP,                                                                       
   task8 VARCHAR(100),                                                                             
   task8_start_time TIMESTAMP,                                                                     
   task8_end_time TIMESTAMP,                                                                       
   task9 VARCHAR(100),                                                                             
   task9_start_time TIMESTAMP,                                                                     
   task9_end_time TIMESTAMP,                                                                       
   task10 VARCHAR(100),                                                                            
   task10_start_time TIMESTAMP,                                                                    
   task10_end_time TIMESTAMP,                                                                      
   insert_object_run_key INT                                                                       
 )                                                                                                 
 STORED AS PARQUET;

