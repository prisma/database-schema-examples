type Provider @db(name: "providers") {
  addressCity: String @db(name: "address_city")
  addressCountry: String @db(name: "address_country")
  addressLatitude: Float @db(name: "address_latitude")
  addressLongitude: Float @db(name: "address_longitude")
  addressState: String @db(name: "address_state")
  addressStreet01: String @db(name: "address_street_01")
  addressStreet02: String @db(name: "address_street_02")
  addressZipCode: String @db(name: "address_zip_code")
  entityType: String @db(name: "entity_type")
  npi: Int! @id
  providerPerformance: [ProviderPerformance]
  providersIndividuals: [ProvidersIndividual]
  providersOrganizations: [ProvidersOrganization]
  providerType: String @db(name: "provider_type")
  serviceProviderPerformance: [ServiceProviderPerformance]
  serviceProviderPerformanceSummary: [ServiceProviderPerformanceSummary]
}

type ProviderPerformance @db(name: "provider_performance") {
  avgMcareAllowedAmt: Float @db(name: "avg_mcare_allowed_amt")
  avgMcarePayAmt: Float @db(name: "avg_mcare_pay_amt")
  avgMcareStandardizedAmt: Float @db(name: "avg_mcare_standardized_amt")
  avgSubmittedChargeAmt: Float @db(name: "avg_submitted_charge_amt")
  hcpcsCode: Service! @db(name: "hcpcs_code")
  mcareParticipationIndicator: String @db(name: "mcare_participation_indicator")
  nOfDistinctMcareBeneficiaryPerDaySvcs: Int @db(name: "n_of_distinct_mcare_beneficiary_per_day_svcs")
  nOfMcareBeneficiaries: Int @db(name: "n_of_mcare_beneficiaries")
  nOfSvcs: Float @db(name: "n_of_svcs")
  npi: Provider!
  placeOfService: String! @db(name: "place_of_service")
  prisma_id: Int! @id(strategy: SEQUENCE) @sequence(name: "provider_performance_prisma_id_seq1", initialValue: 1, allocationSize: 1)
}

type ProvidersIndividual @db(name: "providers_individuals") {
  credentials: String
  gender: String
  nameFirst: String @db(name: "name_first")
  nameLast: String @db(name: "name_last")
  nameMiddle: String @db(name: "name_middle")
  npi: Provider! @id
}

type ProvidersOrganization @db(name: "providers_organizations") {
  name: String
  npi: Provider! @id
}

type Service @db(name: "services") {
  hcpcs_code: ID! @id
  hcpcsDescription: String @db(name: "hcpcs_description")
  hcpcsDrugIndicator: String @db(name: "hcpcs_drug_indicator")
  providerPerformance: [ProviderPerformance]
  servicePerformance: [ServicePerformance]
  serviceProviderPerformance: [ServiceProviderPerformance]
}

type ServicePerformance @db(name: "service_performance") {
  avgAvgMcareAllowedAmt: Float @db(name: "avg_avg_mcare_allowed_amt")
  avgAvgMcarePayAmt: Float @db(name: "avg_avg_mcare_pay_amt")
  avgAvgMcareStandardizedAmt: Float @db(name: "avg_avg_mcare_standardized_amt")
  avgAvgSubmittedChargeAmt: Float @db(name: "avg_avg_submitted_charge_amt")
  entityType: String! @db(name: "entity_type")
  estTtlMcareAllowedAmt: Float @db(name: "est_ttl_mcare_allowed_amt")
  estTtlMcarePayAmt: Float @db(name: "est_ttl_mcare_pay_amt")
  estTtlMcareStandardizedAmt: Float @db(name: "est_ttl_mcare_standardized_amt")
  estTtlSubmittedChargeAmt: Float @db(name: "est_ttl_submitted_charge_amt")
  hcpcsCode: Service! @db(name: "hcpcs_code")
  maxAvgMcareAllowedAmt: Float @db(name: "max_avg_mcare_allowed_amt")
  maxAvgMcarePayAmt: Float @db(name: "max_avg_mcare_pay_amt")
  maxAvgMcareStandardizedAmt: Float @db(name: "max_avg_mcare_standardized_amt")
  maxAvgSubmittedChargeAmt: Float @db(name: "max_avg_submitted_charge_amt")
  minAvgMcareAllowedAmt: Float @db(name: "min_avg_mcare_allowed_amt")
  minAvgMcarePayAmt: Float @db(name: "min_avg_mcare_pay_amt")
  minAvgMcareStandardizedAmt: Float @db(name: "min_avg_mcare_standardized_amt")
  minAvgSubmittedChargeAmt: Float @db(name: "min_avg_submitted_charge_amt")
  nOfDistinctMcareBeneficiaryPerDaySvcs: Int @db(name: "n_of_distinct_mcare_beneficiary_per_day_svcs")
  nOfMcareBeneficiaries: Int @db(name: "n_of_mcare_beneficiaries")
  nOfSvcs: Float @db(name: "n_of_svcs")
  prisma_id: Int! @id(strategy: SEQUENCE) @sequence(name: "service_performance_prisma_id_seq1", initialValue: 1, allocationSize: 1)
  providers: Int
  rankAvgAvgMcareAllowedAmt: Int @db(name: "rank_avg_avg_mcare_allowed_amt")
  rankAvgAvgMcarePayAmt: Int @db(name: "rank_avg_avg_mcare_pay_amt")
  rankAvgAvgMcareStandardizedAmt: Int @db(name: "rank_avg_avg_mcare_standardized_amt")
  rankAvgAvgSubmittedChargeAmt: Int @db(name: "rank_avg_avg_submitted_charge_amt")
  rankEstTtlMcareAllowedAmt: Int @db(name: "rank_est_ttl_mcare_allowed_amt")
  rankEstTtlMcarePayAmt: Int @db(name: "rank_est_ttl_mcare_pay_amt")
  rankEstTtlMcareStandardizedAmt: Int @db(name: "rank_est_ttl_mcare_standardized_amt")
  rankEstTtlSubmittedChargeAmt: Int @db(name: "rank_est_ttl_submitted_charge_amt")
  rankMaxAvgMcareAllowedAmt: Int @db(name: "rank_max_avg_mcare_allowed_amt")
  rankMaxAvgMcarePayAmt: Int @db(name: "rank_max_avg_mcare_pay_amt")
  rankMaxAvgMcareStandardizedAmt: Int @db(name: "rank_max_avg_mcare_standardized_amt")
  rankMaxAvgSubmittedChargeAmt: Int @db(name: "rank_max_avg_submitted_charge_amt")
  rankMinAvgMcareAllowedAmt: Int @db(name: "rank_min_avg_mcare_allowed_amt")
  rankMinAvgMcarePayAmt: Int @db(name: "rank_min_avg_mcare_pay_amt")
  rankMinAvgMcareStandardizedAmt: Int @db(name: "rank_min_avg_mcare_standardized_amt")
  rankMinAvgSubmittedChargeAmt: Int @db(name: "rank_min_avg_submitted_charge_amt")
  rankNOfDistinctMcareBeneficiaryPerDaySvcs: Int @db(name: "rank_n_of_distinct_mcare_beneficiary_per_day_svcs")
  rankNOfMcareBeneficiaries: Int @db(name: "rank_n_of_mcare_beneficiaries")
  rankNOfSvcs: Int @db(name: "rank_n_of_svcs")
  rankProviders: Int @db(name: "rank_providers")
  rankVarAvgMcareAllowedAmt: Int @db(name: "rank_var_avg_mcare_allowed_amt")
  rankVarAvgMcarePayAmt: Int @db(name: "rank_var_avg_mcare_pay_amt")
  rankVarAvgMcareStandardizedAmt: Int @db(name: "rank_var_avg_mcare_standardized_amt")
  rankVarAvgMcareSubmittedChargePayAmt: Int @db(name: "rank_var_avg_mcare_submitted_charge_pay_amt")
  rankVarAvgSubmittedChargeAmt: Int @db(name: "rank_var_avg_submitted_charge_amt")
  varAvgMcareAllowedAmt: Float @db(name: "var_avg_mcare_allowed_amt")
  varAvgMcarePayAmt: Float @db(name: "var_avg_mcare_pay_amt")
  varAvgMcareStandardizedAmt: Float @db(name: "var_avg_mcare_standardized_amt")
  varAvgMcareSubmittedChargePayAmt: Float @db(name: "var_avg_mcare_submitted_charge_pay_amt")
  varAvgSubmittedChargeAmtVarAvgSubmittedChargeAmtVarA: Float @db(name: "var_avg_submitted_charge_amt_var_avg_submitted_charge_amt_var_a")
}

type ServiceProviderPerformance @db(name: "service_provider_performance") {
  avgMcareAllowedAmt: Float @db(name: "avg_mcare_allowed_amt")
  avgMcarePayAmt: Float @db(name: "avg_mcare_pay_amt")
  avgMcareStandardizedAmt: Float @db(name: "avg_mcare_standardized_amt")
  avgSubmittedChargeAmt: Float @db(name: "avg_submitted_charge_amt")
  entityType: String @db(name: "entity_type")
  estTtlMcarePayAmt: Float @db(name: "est_ttl_mcare_pay_amt")
  estTtlSubmittedChargeAmt: Float @db(name: "est_ttl_submitted_charge_amt")
  hcpcsCode: Service! @db(name: "hcpcs_code")
  mcareParticipationIndicator: String @db(name: "mcare_participation_indicator")
  nOfDistinctMcareBeneficiaryPerDaySvcs: Int @db(name: "n_of_distinct_mcare_beneficiary_per_day_svcs")
  nOfMcareBeneficiaries: Int @db(name: "n_of_mcare_beneficiaries")
  nOfSvcs: Float @db(name: "n_of_svcs")
  npi: Provider!
  placeOfService: String! @db(name: "place_of_service")
  prisma_id: Int! @id(strategy: SEQUENCE) @sequence(name: "service_provider_performance_prisma_id_seq1", initialValue: 1, allocationSize: 1)
  rankAvgMcareAllowedAmt: Int @db(name: "rank_avg_mcare_allowed_amt")
  rankAvgMcarePayAmt: Int @db(name: "rank_avg_mcare_pay_amt")
  rankAvgMcareStandardizedAmt: Int @db(name: "rank_avg_mcare_standardized_amt")
  rankAvgSubmittedChargeAmt: Int @db(name: "rank_avg_submitted_charge_amt")
  rankEstTtlMcarePayAmt: Int @db(name: "rank_est_ttl_mcare_pay_amt")
  rankEstTtlSubmittedChargeAmt: Int @db(name: "rank_est_ttl_submitted_charge_amt")
  rankNOfDistinctMcareBeneficiaryPerDaySvcs: Int @db(name: "rank_n_of_distinct_mcare_beneficiary_per_day_svcs")
  rankNOfMcareBeneficiaries: Int @db(name: "rank_n_of_mcare_beneficiaries")
  rankNOfSvcs: Int @db(name: "rank_n_of_svcs")
  rankVarAvgMcareSubmittedChargePayAmt: Int @db(name: "rank_var_avg_mcare_submitted_charge_pay_amt")
  varAvgMcareSubmittedChargePayAmt: Float @db(name: "var_avg_mcare_submitted_charge_pay_amt")
}

type ServiceProviderPerformanceSummary @db(name: "service_provider_performance_summary") {
  entityType: String @db(name: "entity_type")
  estTtlMcarePayAmt: Float @db(name: "est_ttl_mcare_pay_amt")
  estTtlMcarePayAmtByTtlHcpcsCode: Float @db(name: "est_ttl_mcare_pay_amt_by_ttl_hcpcs_code")
  estTtlMcarePayAmtByTtlNOfSvcs: Float @db(name: "est_ttl_mcare_pay_amt_by_ttl_n_of_svcs")
  estTtlSubmittedChargeAmt: Float @db(name: "est_ttl_submitted_charge_amt")
  npi: Provider!
  prisma_id: Int! @id(strategy: SEQUENCE) @sequence(name: "service_provider_performance_summary_prisma_id_seq1", initialValue: 1, allocationSize: 1)
  rankEstTtlMcarePayAmt: Int @db(name: "rank_est_ttl_mcare_pay_amt")
  rankEstTtlMcarePayAmtByTtlHcpcsCode: Int @db(name: "rank_est_ttl_mcare_pay_amt_by_ttl_hcpcs_code")
  rankEstTtlMcarePayAmtByTtlNOfServi: Int @db(name: "rank_est_ttl_mcare_pay_amt_by_ttl_n_of_servi")
  rankEstTtlSubmittedChargeAmt: Int @db(name: "rank_est_ttl_submitted_charge_amt")
  rankTtlHcpcsCode: Int @db(name: "rank_ttl_hcpcs_code")
  rankTtlNOfSvcs: Int @db(name: "rank_ttl_n_of_svcs")
  rankVarEstTtlMcareSubmittedChargePayAmoun: Int @db(name: "rank_var_est_ttl_mcare_submitted_charge_pay_amoun")
  rankVarEstTtlMcareSubmittedChargePayAmountEvenLonger: Int @db(name: "rank_var_est_ttl_mcare_submitted_charge_pay_amount_even_longer_")
  summaryType: ServiceProviderPerformanceSummaryType! @db(name: "summary_type")
  ttlHcpcsCode: String @db(name: "ttl_hcpcs_code")
  ttlNOfSvcs: Int @db(name: "ttl_n_of_svcs")
  varEstTtlMcareSubmittedChargePayAmt: Float @db(name: "var_est_ttl_mcare_submitted_charge_pay_amt")
}

type ServiceProviderPerformanceSummaryType @db(name: "service_provider_performance_summary_type") {
  description: String!
  groupMembership: Boolean! @db(name: "group_membership") @default(value: true)
  id: Int! @id(strategy: SEQUENCE) @sequence(name: "service_provider_performance_summary_type_id_seq1", initialValue: 1, allocationSize: 1)
  serviceProviderPerformanceSummary: [ServiceProviderPerformanceSummary]
  slug: String @unique
}
