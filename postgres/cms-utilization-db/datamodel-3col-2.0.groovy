model Provider {
  npi                                Int                                  @id
  addressCity                        String?                              
  addressCountry                     String?                              
  addressLatitude                    Float?                               
  addressLongitude                   Float?                               
  addressState                       String?                              
  addressStreet01                    String?                              
  addressStreet02                    String?                              
  addressZipCode                     String?                              
  entityType                         String?                              
  providerPerformance                ProviderPerformance[]                
  providersIndividuals               ProvidersIndividual[]                
  providersOrganizations             ProvidersOrganization[]              
  providerType                       String?                              
  serviceProviderPerformance         ServiceProviderPerformance[]         
  serviceProviderPerformanceSummary  ServiceProviderPerformanceSummary[]  
}

model ProviderPerformance {
  prismaId                               Int       @id @pg.serial("provider_performance_prisma_id_seq1") @unique
  avgMcareAllowedAmt                     Float?    
  avgMcarePayAmt                         Float?    
  avgMcareStandardizedAmt                Float?    
  avgSubmittedChargeAmt                  Float?    
  hcpcsCode                              Service   
  mcareParticipationIndicator            String?   
  nOfDistinctMcareBeneficiaryPerDaySvcs  Int?      
  nOfMcareBeneficiaries                  Int?      
  nOfSvcs                                Float?    
  npi                                    Provider  
  placeOfService                         String    
}

model ProviderIndividual {
  npi          Provider  @id
  credentials  String?   
  gender       String?   
  nameFirst    String?   
  nameLast     String?   
  nameMiddle   String?   
}

model ProviderOrganization {
  npi   Provider  @id
  name  String?   
}

model Service {
  hcpcsCode                   String                        @id
  hcpcsDescription            String?                       
  hcpcsDrugIndicator          String?                       
  providerPerformance         ProviderPerformance[]         
  servicePerformance          ServicePerformance[]          
  serviceProviderPerformance  ServiceProviderPerformance[]  
}

model ServicePerformance {
  prismaId                                              Int      @id @pg.serial("service_performance_prisma_id_seq1") @unique
  avgAvgMcareAllowedAmt                                 Float?   
  avgAvgMcarePayAmt                                     Float?   
  avgAvgMcareStandardizedAmt                            Float?   
  avgAvgSubmittedChargeAmt                              Float?   
  entityType                                            String   
  estTtlMcareAllowedAmt                                 Float?   
  estTtlMcarePayAmt                                     Float?   
  estTtlMcareStandardizedAmt                            Float?   
  estTtlSubmittedChargeAmt                              Float?   
  hcpcsCode                                             Service  
  maxAvgMcareAllowedAmt                                 Float?   
  maxAvgMcarePayAmt                                     Float?   
  maxAvgMcareStandardizedAmt                            Float?   
  maxAvgSubmittedChargeAmt                              Float?   
  minAvgMcareAllowedAmt                                 Float?   
  minAvgMcarePayAmt                                     Float?   
  minAvgMcareStandardizedAmt                            Float?   
  minAvgSubmittedChargeAmt                              Float?   
  nOfDistinctMcareBeneficiaryPerDaySvcs                 Int?     
  nOfMcareBeneficiaries                                 Int?     
  nOfSvcs                                               Float?   
  providers                                             Int?     
  rankAvgAvgMcareAllowedAmt                             Int?     
  rankAvgAvgMcarePayAmt                                 Int?     
  rankAvgAvgMcareStandardizedAmt                        Int?     
  rankAvgAvgSubmittedChargeAmt                          Int?     
  rankEstTtlMcareAllowedAmt                             Int?     
  rankEstTtlMcarePayAmt                                 Int?     
  rankEstTtlMcareStandardizedAmt                        Int?     
  rankEstTtlSubmittedChargeAmt                          Int?     
  rankMaxAvgMcareAllowedAmt                             Int?     
  rankMaxAvgMcarePayAmt                                 Int?     
  rankMaxAvgMcareStandardizedAmt                        Int?     
  rankMaxAvgSubmittedChargeAmt                          Int?     
  rankMinAvgMcareAllowedAmt                             Int?     
  rankMinAvgMcarePayAmt                                 Int?     
  rankMinAvgMcareStandardizedAmt                        Int?     
  rankMinAvgSubmittedChargeAmt                          Int?     
  rankNOfDistinctMcareBeneficiaryPerDaySvcs             Int?     
  rankNOfMcareBeneficiaries                             Int?     
  rankNOfSvcs                                           Int?     
  rankProviders                                         Int?     
  rankVarAvgMcareAllowedAmt                             Int?     
  rankVarAvgMcarePayAmt                                 Int?     
  rankVarAvgMcareStandardizedAmt                        Int?     
  rankVarAvgMcareSubmittedChargePayAmt                  Int?     
  rankVarAvgSubmittedChargeAmt                          Int?     
  varAvgMcareAllowedAmt                                 Float?   
  varAvgMcarePayAmt                                     Float?   
  varAvgMcareStandardizedAmt                            Float?   
  varAvgMcareSubmittedChargePayAmt                      Float?   
  varAvgSubmittedChargeAmtVarAvgSubmittedChargeAmtVarA  Float?   
}

model ServiceProviderPerformance {
  prismaId                                   Int       @id @pg.serial("service_provider_performance_prisma_id_seq1") @unique
  avgMcareAllowedAmt                         Float?    
  avgMcarePayAmt                             Float?    
  avgMcareStandardizedAmt                    Float?    
  avgSubmittedChargeAmt                      Float?    
  entityType                                 String?   
  estTtlMcarePayAmt                          Float?    
  estTtlSubmittedChargeAmt                   Float?    
  hcpcsCode                                  Service   
  mcareParticipationIndicator                String?   
  nOfDistinctMcareBeneficiaryPerDaySvcs      Int?      
  nOfMcareBeneficiaries                      Int?      
  nOfSvcs                                    Float?    
  npi                                        Provider  
  placeOfService                             String    
  rankAvgMcareAllowedAmt                     Int?      
  rankAvgMcarePayAmt                         Int?      
  rankAvgMcareStandardizedAmt                Int?      
  rankAvgSubmittedChargeAmt                  Int?      
  rankEstTtlMcarePayAmt                      Int?      
  rankEstTtlSubmittedChargeAmt               Int?      
  rankNOfDistinctMcareBeneficiaryPerDaySvcs  Int?      
  rankNOfMcareBeneficiaries                  Int?      
  rankNOfSvcs                                Int?      
  rankVarAvgMcareSubmittedChargePayAmt       Int?      
  varAvgMcareSubmittedChargePayAmt           Float?    
}

model ServiceProviderPerformanceSummary {
  prismaId                                              Int                                    @id @pg.serial("service_provider_performance_summary_prisma_id_seq1") @unique
  entityType                                            String?                                
  estTtlMcarePayAmt                                     Float?                                 
  estTtlMcarePayAmtByTtlHcpcsCode                       Float?                                 
  estTtlMcarePayAmtByTtlNOfSvcs                         Float?                                 
  estTtlSubmittedChargeAmt                              Float?                                 
  npi                                                   Provider                               
  rankEstTtlMcarePayAmt                                 Int?                                   
  rankEstTtlMcarePayAmtByTtlHcpcsCode                   Int?                                   
  rankEstTtlMcarePayAmtByTtlNOfServi                    Int?                                   
  rankEstTtlSubmittedChargeAmt                          Int?                                   
  rankTtlHcpcsCode                                      Int?                                   
  rankTtlNOfSvcs                                        Int?                                   
  rankVarEstTtlMcareSubmittedChargePayAmoun             Int?                                   
  rankVarEstTtlMcareSubmittedChargePayAmountEvenLonger  Int?                                   
  summaryType                                           ServiceProviderPerformanceSummaryType  
  ttlHcpcsCode                                          String?                                
  ttlNOfSvcs                                            Int?                                   
  varEstTtlMcareSubmittedChargePayAmt                   Float?                                 
}

model ServiceProviderPerformanceSummaryType {
  id                                 Int                                  @id @pg.serial("service_provider_performance_summary_type_id_seq1")
  description                        String                               
  groupMembership                    Boolean                              @default(true)
  serviceProviderPerformanceSummary  ServiceProviderPerformanceSummary[]  
  slug                               String?                              @unique
}
