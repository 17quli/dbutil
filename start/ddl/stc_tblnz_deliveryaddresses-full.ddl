CREATE VIEW ${var:view_db}_full_access.stc_tblnz_deliveryaddresses                                            
AS SELECT                                                                                                                           
z.fstrAddressType,                                                                                                                  
z.flngDPID,                                                                                                                         
z.fstrAddress_Line1,                                                                                                                
z.fstrAddress_Line2,                                                                                                                
z.fstrAddress_Line3,                                                                                                                
z.fstrAddress_Line4,                                                                                                                
z.fstrUnitType,                                                                                                                     
z.fstrUnitIdentifier,                                                                                                               
z.fstrFloorType,                                                                                                                    
z.fstrFloorID,                                                                                                                      
z.fstrBuildingName,                                                                                                                 
z.flngStreetNumber,                                                                                                                 
z.fstrStreetAlpha,                                                                                                                  
z.flngStreetID,                                                                                                                     
z.fstrStreetName,                                                                                                                   
z.fstrStreetType,                                                                                                                   
z.fstrStreetDirection,                                                                                                              
z.fstrDeliveryServiceType,                                                                                                          
z.fstrDeliveryServiceNumber,                                                                                                        
z.fstrDeliveryServiceName,                                                                                                          
z.flngSuburbID,                                                                                                                     
z.fstrSuburbName,                                                                                                                   
z.flngTownCityID,                                                                                                                   
z.fstrTownCity,                                                                                                                     
z.flngMailTownID,                                                                                                                   
z.fstrMailTown,                                                                                                                     
z.fstrRDNumber,                                                                                                                     
z.fintPostCode,                                                                                                                     
z.flngMeshblockID,                                                                                                                  
z.flngParcelID,                                                                                                                     
z.flngAddressID,                                                                                                                    
z.fdblLatitude,                                                                                                                     
z.fdblLongitude,                                                                                                                    
z.fstrDeliveredTo,                                                                                                                  
z.fstrFullStreetName,                                                                                                               
z.fintRegionalCouncilID,                                                                                                            
z.fstrRegionalCouncilName,                                                                                                          
z.fintTA_ID,                                                                                                                        
z.fstrTA_Name,                                                                                                                      
z.fintGeoCodeQuality,                                                                                                               
z.fdtmCreated,                                                                                                                      
z.fdtmModified,                                                                                                                     
z.fstrSource,                                                                                                                       
z.fintRecordUsageID,                                                                                                                
record_effective_timestamp,                                                                                               
record_expiry_timestamp,                                                                                                  
record_active_flag ,                                                                                                      
record_deleted_flag ,                                                                                                     
insert_object_run_key ,                                                                                                          
update_object_run_key                                                                                                            
 FROM ${var:source_db}.stc_tblnz_deliveryaddresses z;