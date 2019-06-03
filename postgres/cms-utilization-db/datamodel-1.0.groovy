type Provider @pgTable(name: "providers") {
  addressCity: String @pgColumn(name: "address_city")
  addressCountry: String @pgColumn(name: "address_country")
  addressLatitude: Float @pgColumn(name: "address_latitude")
  addressLongitude: Float @pgColumn(name: "address_longitude")
  addressState: String @pgColumn(name: "address_state")
  addressStreet01: String @pgColumn(name: "address_street_01")
  addressStreet02: String @pgColumn(name: "address_street_02")
  addressZipCode: String @pgColumn(name: "address_zip_code")
  entityType: String @pgColumn(name: "entity_type")
  id: Int! @pgColumn(name: "npi") @unique
  providerPerformance: [ProviderPerformance]
  providersIndividuals: [ProvidersIndividual]
  providersOrganizations: [ProvidersOrganization]
  providerType: String @pgColumn(name: "provider_type")
  serviceProviderPerformance: [ServiceProviderPerformance]
  serviceProviderPerformanceSummary: [ServiceProviderPerformanceSummary]
}

type ProviderPerformance @pgTable(name: "provider_performance") {
  avgMcareAllowedAmt: Float @pgColumn(name: "avg_mcare_allowed_amt")
  avgMcarePayAmt: Float @pgColumn(name: "avg_mcare_pay_amt")
  avgMcareStandardizedAmt: Float @pgColumn(name: "avg_mcare_standardized_amt")
  avgSubmittedChargeAmt: Float @pgColumn(name: "avg_submitted_charge_amt")
  hcpcsCode: Service! @pgColumn(name: "hcpcs_code")
  mcareParticipationIndicator: String @pgColumn(name: "mcare_participation_indicator")
  nOfDistinctMcareBeneficiaryPerDaySvcs: Int @pgColumn(name: "n_of_distinct_mcare_beneficiary_per_day_svcs")
  nOfMcareBeneficiaries: Int @pgColumn(name: "n_of_mcare_beneficiaries")
  nOfSvcs: Float @pgColumn(name: "n_of_svcs")
  npi: Provider!
  placeOfService: String! @pgColumn(name: "place_of_service")
  id: Int! @pgColumn(name: "prisma_id") @unique
}

type ProvidersIndividual @pgTable(name: "providers_individuals") {
  credentials: String
  gender: String
  nameFirst: String @pgColumn(name: "name_first")
  nameLast: String @pgColumn(name: "name_last")
  nameMiddle: String @pgColumn(name: "name_middle")
  id: Provider! @pgColumn(name: "npi") @unique
}

type ProvidersOrganization @pgTable(name: "providers_organizations") {
  name: String
  id: Provider! @pgColumn(name: "npi") @unique
}

type Service @pgTable(name: "services") {
  id: ID! @pgColumn(name: "hcpcs_code") @unique
  hcpcsDescription: String @pgColumn(name: "hcpcs_description")
  hcpcsDrugIndicator: String @pgColumn(name: "hcpcs_drug_indicator")
  providerPerformance: [ProviderPerformance]
  servicePerformance: [ServicePerformance]
  serviceProviderPerformance: [ServiceProviderPerformance]
}

type ServicePerformance @pgTable(name: "service_performance") {
  avgAvgMcareAllowedAmt: Float @pgColumn(name: "avg_avg_mcare_allowed_amt")
  avgAvgMcarePayAmt: Float @pgColumn(name: "avg_avg_mcare_pay_amt")
  avgAvgMcareStandardizedAmt: Float @pgColumn(name: "avg_avg_mcare_standardized_amt")
  avgAvgSubmittedChargeAmt: Float @pgColumn(name: "avg_avg_submitted_charge_amt")
  entityType: String! @pgColumn(name: "entity_type")
  estTtlMcareAllowedAmt: Float @pgColumn(name: "est_ttl_mcare_allowed_amt")
  estTtlMcarePayAmt: Float @pgColumn(name: "est_ttl_mcare_pay_amt")
  estTtlMcareStandardizedAmt: Float @pgColumn(name: "est_ttl_mcare_standardized_amt")
  estTtlSubmittedChargeAmt: Float @pgColumn(name: "est_ttl_submitted_charge_amt")
  hcpcsCode: Service! @pgColumn(name: "hcpcs_code")
  maxAvgMcareAllowedAmt: Float @pgColumn(name: "max_avg_mcare_allowed_amt")
  maxAvgMcarePayAmt: Float @pgColumn(name: "max_avg_mcare_pay_amt")
  maxAvgMcareStandardizedAmt: Float @pgColumn(name: "max_avg_mcare_standardized_amt")
  maxAvgSubmittedChargeAmt: Float @pgColumn(name: "max_avg_submitted_charge_amt")
  minAvgMcareAllowedAmt: Float @pgColumn(name: "min_avg_mcare_allowed_amt")
  minAvgMcarePayAmt: Float @pgColumn(name: "min_avg_mcare_pay_amt")
  minAvgMcareStandardizedAmt: Float @pgColumn(name: "min_avg_mcare_standardized_amt")
  minAvgSubmittedChargeAmt: Float @pgColumn(name: "min_avg_submitted_charge_amt")
  nOfDistinctMcareBeneficiaryPerDaySvcs: Int @pgColumn(name: "n_of_distinct_mcare_beneficiary_per_day_svcs")
  nOfMcareBeneficiaries: Int @pgColumn(name: "n_of_mcare_beneficiaries")
  nOfSvcs: Float @pgColumn(name: "n_of_svcs")
  id: Int! @pgColumn(name: "prisma_id") @unique
  providers: Int
  rankAvgAvgMcareAllowedAmt: Int @pgColumn(name: "rank_avg_avg_mcare_allowed_amt")
  rankAvgAvgMcarePayAmt: Int @pgColumn(name: "rank_avg_avg_mcare_pay_amt")
  rankAvgAvgMcareStandardizedAmt: Int @pgColumn(name: "rank_avg_avg_mcare_standardized_amt")
  rankAvgAvgSubmittedChargeAmt: Int @pgColumn(name: "rank_avg_avg_submitted_charge_amt")
  rankEstTtlMcareAllowedAmt: Int @pgColumn(name: "rank_est_ttl_mcare_allowed_amt")
  rankEstTtlMcarePayAmt: Int @pgColumn(name: "rank_est_ttl_mcare_pay_amt")
  rankEstTtlMcareStandardizedAmt: Int @pgColumn(name: "rank_est_ttl_mcare_standardized_amt")
  rankEstTtlSubmittedChargeAmt: Int @pgColumn(name: "rank_est_ttl_submitted_charge_amt")
  rankMaxAvgMcareAllowedAmt: Int @pgColumn(name: "rank_max_avg_mcare_allowed_amt")
  rankMaxAvgMcarePayAmt: Int @pgColumn(name: "rank_max_avg_mcare_pay_amt")
  rankMaxAvgMcareStandardizedAmt: Int @pgColumn(name: "rank_max_avg_mcare_standardized_amt")
  rankMaxAvgSubmittedChargeAmt: Int @pgColumn(name: "rank_max_avg_submitted_charge_amt")
  rankMinAvgMcareAllowedAmt: Int @pgColumn(name: "rank_min_avg_mcare_allowed_amt")
  rankMinAvgMcarePayAmt: Int @pgColumn(name: "rank_min_avg_mcare_pay_amt")
  rankMinAvgMcareStandardizedAmt: Int @pgColumn(name: "rank_min_avg_mcare_standardized_amt")
  rankMinAvgSubmittedChargeAmt: Int @pgColumn(name: "rank_min_avg_submitted_charge_amt")
  rankNOfDistinctMcareBeneficiaryPerDaySvcs: Int @pgColumn(name: "rank_n_of_distinct_mcare_beneficiary_per_day_svcs")
  rankNOfMcareBeneficiaries: Int @pgColumn(name: "rank_n_of_mcare_beneficiaries")
  rankNOfSvcs: Int @pgColumn(name: "rank_n_of_svcs")
  rankProviders: Int @pgColumn(name: "rank_providers")
  rankVarAvgMcareAllowedAmt: Int @pgColumn(name: "rank_var_avg_mcare_allowed_amt")
  rankVarAvgMcarePayAmt: Int @pgColumn(name: "rank_var_avg_mcare_pay_amt")
  rankVarAvgMcareStandardizedAmt: Int @pgColumn(name: "rank_var_avg_mcare_standardized_amt")
  rankVarAvgMcareSubmittedChargePayAmt: Int @pgColumn(name: "rank_var_avg_mcare_submitted_charge_pay_amt")
  rankVarAvgSubmittedChargeAmt: Int @pgColumn(name: "rank_var_avg_submitted_charge_amt")
  varAvgMcareAllowedAmt: Float @pgColumn(name: "var_avg_mcare_allowed_amt")
  varAvgMcarePayAmt: Float @pgColumn(name: "var_avg_mcare_pay_amt")
  varAvgMcareStandardizedAmt: Float @pgColumn(name: "var_avg_mcare_standardized_amt")
  varAvgMcareSubmittedChargePayAmt: Float @pgColumn(name: "var_avg_mcare_submitted_charge_pay_amt")
  varAvgSubmittedChargeAmtVarAvgSubmittedChargeAmtVarA: Float @pgColumn(name: "var_avg_submitted_charge_amt_var_avg_submitted_charge_amt_var_a")
}

type ServiceProviderPerformance @pgTable(name: "service_provider_performance") {
  avgMcareAllowedAmt: Float @pgColumn(name: "avg_mcare_allowed_amt")
  avgMcarePayAmt: Float @pgColumn(name: "avg_mcare_pay_amt")
  avgMcareStandardizedAmt: Float @pgColumn(name: "avg_mcare_standardized_amt")
  avgSubmittedChargeAmt: Float @pgColumn(name: "avg_submitted_charge_amt")
  entityType: String @pgColumn(name: "entity_type")
  estTtlMcarePayAmt: Float @pgColumn(name: "est_ttl_mcare_pay_amt")
  estTtlSubmittedChargeAmt: Float @pgColumn(name: "est_ttl_submitted_charge_amt")
  hcpcsCode: Service! @pgColumn(name: "hcpcs_code")
  mcareParticipationIndicator: String @pgColumn(name: "mcare_participation_indicator")
  nOfDistinctMcareBeneficiaryPerDaySvcs: Int @pgColumn(name: "n_of_distinct_mcare_beneficiary_per_day_svcs")
  nOfMcareBeneficiaries: Int @pgColumn(name: "n_of_mcare_beneficiaries")
  nOfSvcs: Float @pgColumn(name: "n_of_svcs")
  npi: Provider!
  placeOfService: String! @pgColumn(name: "place_of_service")
  id: Int! @pgColumn(name: "prisma_id") @unique
  rankAvgMcareAllowedAmt: Int @pgColumn(name: "rank_avg_mcare_allowed_amt")
  rankAvgMcarePayAmt: Int @pgColumn(name: "rank_avg_mcare_pay_amt")
  rankAvgMcareStandardizedAmt: Int @pgColumn(name: "rank_avg_mcare_standardized_amt")
  rankAvgSubmittedChargeAmt: Int @pgColumn(name: "rank_avg_submitted_charge_amt")
  rankEstTtlMcarePayAmt: Int @pgColumn(name: "rank_est_ttl_mcare_pay_amt")
  rankEstTtlSubmittedChargeAmt: Int @pgColumn(name: "rank_est_ttl_submitted_charge_amt")
  rankNOfDistinctMcareBeneficiaryPerDaySvcs: Int @pgColumn(name: "rank_n_of_distinct_mcare_beneficiary_per_day_svcs")
  rankNOfMcareBeneficiaries: Int @pgColumn(name: "rank_n_of_mcare_beneficiaries")
  rankNOfSvcs: Int @pgColumn(name: "rank_n_of_svcs")
  rankVarAvgMcareSubmittedChargePayAmt: Int @pgColumn(name: "rank_var_avg_mcare_submitted_charge_pay_amt")
  varAvgMcareSubmittedChargePayAmt: Float @pgColumn(name: "var_avg_mcare_submitted_charge_pay_amt")
}

type ServiceProviderPerformanceSummary @pgTable(name: "service_provider_performance_summary") {
  entityType: String @pgColumn(name: "entity_type")
  estTtlMcarePayAmt: Float @pgColumn(name: "est_ttl_mcare_pay_amt")
  estTtlMcarePayAmtByTtlHcpcsCode: Float @pgColumn(name: "est_ttl_mcare_pay_amt_by_ttl_hcpcs_code")
  estTtlMcarePayAmtByTtlNOfSvcs: Float @pgColumn(name: "est_ttl_mcare_pay_amt_by_ttl_n_of_svcs")
  estTtlSubmittedChargeAmt: Float @pgColumn(name: "est_ttl_submitted_charge_amt")
  npi: Provider!
  id: Int! @pgColumn(name: "prisma_id") @unique
  rankEstTtlMcarePayAmt: Int @pgColumn(name: "rank_est_ttl_mcare_pay_amt")
  rankEstTtlMcarePayAmtByTtlHcpcsCode: Int @pgColumn(name: "rank_est_ttl_mcare_pay_amt_by_ttl_hcpcs_code")
  rankEstTtlMcarePayAmtByTtlNOfServi: Int @pgColumn(name: "rank_est_ttl_mcare_pay_amt_by_ttl_n_of_servi")
  rankEstTtlSubmittedChargeAmt: Int @pgColumn(name: "rank_est_ttl_submitted_charge_amt")
  rankTtlHcpcsCode: Int @pgColumn(name: "rank_ttl_hcpcs_code")
  rankTtlNOfSvcs: Int @pgColumn(name: "rank_ttl_n_of_svcs")
  rankVarEstTtlMcareSubmittedChargePayAmoun: Int @pgColumn(name: "rank_var_est_ttl_mcare_submitted_charge_pay_amoun")
  rankVarEstTtlMcareSubmittedChargePayAmountEvenLonger: Int @pgColumn(name: "rank_var_est_ttl_mcare_submitted_charge_pay_amount_even_longer_")
  summaryType: ServiceProviderPerformanceSummaryType! @pgColumn(name: "summary_type")
  ttlHcpcsCode: String @pgColumn(name: "ttl_hcpcs_code")
  ttlNOfSvcs: Int @pgColumn(name: "ttl_n_of_svcs")
  varEstTtlMcareSubmittedChargePayAmt: Float @pgColumn(name: "var_est_ttl_mcare_submitted_charge_pay_amt")
}

type ServiceProviderPerformanceSummaryType @pgTable(name: "service_provider_performance_summary_type") {
  description: String!
  groupMembership: Boolean! @default(value: true) @pgColumn(name: "group_membership")
  id: Int! @unique
  serviceProviderPerformanceSummary: [ServiceProviderPerformanceSummary]
  slug: String @unique
}
