CREATE TABLE ${var:target_db}.app_tblbankaccount (                                                                                  
flngBankAccountKey INT,                                                                                                             
flngVer INT,                                                                                                                        
flngVerLast INT,                                                                                                                    
flngCustomerKey INT,                                                                                                                
fstrBankAccountStandard VARCHAR(12),                                                                                                
fstrRoutingNumber VARCHAR(60),                                                                                                      
fstrBankAccountNumber VARCHAR(68),                                                                                                  
fstrBankAccountType VARCHAR(20),                                                                                                    
fblnInternational SMALLINT,                                                                                                         
fblnPreNote SMALLINT,                                                                                                               
fdtmPreNoteSent TIMESTAMP,                                                                                                          
fstrBankCountryCode VARCHAR(4),                                                                                                     
fstrBankAccNumQualifier VARCHAR(4),                                                                                                 
fstrCurrencyType VARCHAR(12),                                                                                                       
fi64BankNameKey BIGINT,                                                                                                             
fstrBankName VARCHAR(510),                                                                                                          
fi64NameOnAccountNameKey BIGINT,                                                                                                    
fstrNameOnAcc VARCHAR(510),                                                                                                         
fstrPhoneType VARCHAR(12),                                                                                                          
fstrPhoneCountry VARCHAR(12),                                                                                                       
fintPhoneCountryCode SMALLINT,                                                                                                      
fstrPhoneAreaCode VARCHAR(10),                                                                                                      
fstrPhoneNumber VARCHAR(30),                                                                                                        
fstrPhoneExtension VARCHAR(20),                                                                                                     
fi64AddressKey BIGINT,                                                                                                              
fstrStreet VARCHAR(510),                                                                                                            
fstrStreet2 VARCHAR(510),                                                                                                           
fstrUnit VARCHAR(60),                                                                                                               
fstrUnitType VARCHAR(100),                                                                                                          
fstrCity VARCHAR(200),                                                                                                              
fstrCounty VARCHAR(12),                                                                                                             
fstrState VARCHAR(12),                                                                                                              
fstrZip VARCHAR(60),                                                                                                                
fstrCountry VARCHAR(12),                                                                                                            
fstrAttention VARCHAR(510),                                                                                                         
fstrUrbanization VARCHAR(100),                                                                                                      
fblnVerified SMALLINT,                                                                                                              
fdtmVerified TIMESTAMP,                                                                                                             
fstrDistrictOffice VARCHAR(12),                                                                                                     
fstrLocationCode VARCHAR(60),                                                                                                       
fstrMunicipality VARCHAR(60),                                                                                                       
fstrDistrict VARCHAR(60),                                                                                                           
fstrSubDistrict VARCHAR(60),                                                                                                        
fstrSubProvince VARCHAR(100),                                                                                                       
fstrAddressDescription VARCHAR(510),                                                                                                
fstrRowId VARCHAR(60),                                                                                                              
fdtmCommence TIMESTAMP,                                                                                                             
fdtmCease TIMESTAMP,                                                                                                                
fstrInvalidationReason VARCHAR(24),                                                                                                 
fblnActive SMALLINT,                                                                                                                
flngDocKey INT,                                                                                                                     
fdtmExpire TIMESTAMP,                                                                                                               
fstrWho VARCHAR(20),                                                                                                                
fdtmWhen TIMESTAMP,                                                                                                                 
record_effective_timestamp TIMESTAMP,                                                                                               
record_expiry_timestamp TIMESTAMP,                                                                                                  
record_active_flag VARCHAR(1),                                                                                                      
record_deleted_flag VARCHAR(1),                                                                                                     
insert_object_run_key INT,                                                                                                          
update_object_run_key INT                                                                                                           
 ) STORED AS PARQUET;