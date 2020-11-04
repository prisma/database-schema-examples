  CREATE TABLE dbo.active_rule_parameters (
    id integer NOT NULL,
    active_rule_id integer NOT NULL,
    rules_parameter_id integer NOT NULL,
    value character varying(4000),
    rules_parameter_key character varying(128)
  );


  CREATE SEQUENCE dbo.active_rule_parameters_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.active_rules (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    rule_id integer NOT NULL,
    failure_level integer NOT NULL,
    inheritance character varying(10),
    created_at bigint,
    updated_at bigint
  );

  CREATE SEQUENCE dbo.active_rules_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.alm_app_installs (
    uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    owner_id character varying(4000) NOT NULL,
    install_id character varying(4000) NOT NULL,
    is_owner_user bit NOT NULL,
    user_external_id character varying(255),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.alm_settings (
    uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    kee character varying(200) NOT NULL,
    url character varying(2000),
    app_id character varying(80),
    private_key character varying(2000),
    pat character varying(2000),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.analysis_properties (
    uuid character varying(40) NOT NULL,
    analysis_uuid character varying(40) NOT NULL,
    kee character varying(512) NOT NULL,
    text_value character varying(4000),
    clob_value varchar(max),
    is_empty bit NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.ce_activity (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    task_type character varying(15) NOT NULL,
    main_component_uuid character varying(40),
    component_uuid character varying(40),
    status character varying(15) NOT NULL,
    main_is_last bit NOT NULL,
    main_is_last_key character varying(55) NOT NULL,
    is_last bit NOT NULL,
    is_last_key character varying(55) NOT NULL,
    submitter_uuid character varying(255),
    submitted_at bigint NOT NULL,
    started_at bigint,
    executed_at bigint,
    execution_count integer NOT NULL,
    execution_time_ms bigint,
    analysis_uuid character varying(50),
    error_message character varying(1000),
    error_stacktrace varchar(max),
    error_type character varying(20),
    worker_uuid character varying(40),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );

  CREATE SEQUENCE dbo.ce_activity_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.ce_queue (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    task_type character varying(15) NOT NULL,
    main_component_uuid character varying(40),
    component_uuid character varying(40),
    status character varying(15),
    submitter_uuid character varying(255),
    started_at bigint,
    worker_uuid character varying(40),
    execution_count integer NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE SEQUENCE dbo.ce_queue_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.ce_scanner_context (
    task_uuid character varying(40) NOT NULL,
    context_data VARBINARY(100) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.ce_task_characteristics (
    uuid character varying(40) NOT NULL,
    task_uuid character varying(40) NOT NULL,
    kee character varying(512) NOT NULL,
    text_value character varying(512)
  );


  CREATE TABLE dbo.ce_task_input (
    task_uuid character varying(40) NOT NULL,
    input_data VARBINARY(100),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );

  CREATE TABLE dbo.ce_task_message (
    uuid character varying(40) NOT NULL,
    task_uuid character varying(40) NOT NULL,
    message character varying(4000) NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.default_qprofiles (
    organization_uuid character varying(40) NOT NULL,
    language character varying(20) NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.deprecated_rule_keys (
    uuid character varying(40) NOT NULL,
    rule_id integer NOT NULL,
    old_repository_key character varying(255) NOT NULL,
    old_rule_key character varying(200) NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.duplications_index (
    id bigint NOT NULL,
    analysis_uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    hash character varying(50) NOT NULL,
    index_in_file integer NOT NULL,
    start_line integer NOT NULL,
    end_line integer NOT NULL
  );


  CREATE SEQUENCE dbo.duplications_index_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.es_queue (
    uuid character varying(40) NOT NULL,
    doc_type character varying(40) NOT NULL,
    doc_id character varying(4000) NOT NULL,
    doc_id_type character varying(20),
    doc_routing character varying(4000),
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.event_component_changes (
    uuid character varying(40) NOT NULL,
    event_uuid character varying(40) NOT NULL,
    event_component_uuid character varying(50) NOT NULL,
    event_analysis_uuid character varying(50) NOT NULL,
    change_category character varying(12) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    component_key character varying(400) NOT NULL,
    component_name character varying(2000) NOT NULL,
    component_branch_key character varying(255),
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.events (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    analysis_uuid character varying(50) NOT NULL,
    name character varying(400),
    category character varying(50),
    description character varying(4000),
    event_data character varying(4000),
    event_date bigint NOT NULL,
    created_at bigint NOT NULL,
    component_uuid character varying(50) NOT NULL
  );


  CREATE SEQUENCE dbo.events_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.file_sources (
    id integer NOT NULL,
    project_uuid character varying(50) NOT NULL,
    file_uuid character varying(50) NOT NULL,
    line_hashes varchar(max),
    line_hashes_version integer,
    data_hash character varying(50),
    src_hash character varying(50),
    revision character varying(100),
    line_count integer NOT NULL,
    binary_data VARBINARY(100),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );

  CREATE SEQUENCE dbo.file_sources_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.group_roles (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    group_id integer,
    resource_id integer,
    role character varying(64) NOT NULL
  );


  CREATE SEQUENCE dbo.group_roles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.groups (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    name character varying(500),
    description character varying(200),
    created_at datetime2,
    updated_at datetime2
  );


  CREATE SEQUENCE dbo.groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.groups_users (user_id bigint, group_id bigint);


  CREATE TABLE dbo.internal_component_props (
    uuid character varying(40) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    kee character varying(512) NOT NULL,
    value character varying(4000),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.internal_properties (
    kee character varying(20) NOT NULL,
    is_empty bit NOT NULL,
    text_value character varying(4000),
    clob_value varchar(max),
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.issue_changes (
    id bigint NOT NULL,
    kee character varying(50),
    issue_key character varying(50) NOT NULL,
    user_login character varying(255),
    change_type character varying(20),
    change_data varchar(max),
    created_at bigint,
    updated_at bigint,
    issue_change_creation_date bigint
  );


  CREATE SEQUENCE dbo.issue_changes_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.issues (
    id bigint NOT NULL,
    kee character varying(50) NOT NULL,
    rule_id integer,
    severity character varying(10),
    manual_severity bit NOT NULL,
    message character varying(4000),
    line integer,
    gap numeric(30, 20),
    status character varying(20),
    resolution character varying(20),
    checksum character varying(1000),
    reporter character varying(255),
    assignee character varying(255),
    author_login character varying(255),
    action_plan_key character varying(50),
    issue_attributes character varying(4000),
    effort integer,
    created_at bigint,
    updated_at bigint,
    issue_creation_date bigint,
    issue_update_date bigint,
    issue_close_date bigint,
    tags character varying(4000),
    component_uuid character varying(50),
    project_uuid character varying(50),
    locations VARBINARY(100),
    issue_type smallint,
    from_hotspot bit
  );


  CREATE SEQUENCE dbo.issues_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.live_measures (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    metric_id integer NOT NULL,
    value numeric(38, 20),
    text_value character varying(4000),
    variation numeric(38, 20),
    measure_data VARBINARY(100),
    update_marker character varying(40),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.manual_measures (
    id bigint NOT NULL,
    metric_id integer NOT NULL,
    value numeric(38, 20),
    text_value character varying(4000),
    user_uuid character varying(255),
    description character varying(4000),
    created_at bigint,
    updated_at bigint,
    component_uuid character varying(50) NOT NULL
  );


  CREATE SEQUENCE dbo.manual_measures_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.metrics (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    description character varying(255),
    direction integer DEFAULT 0 NOT NULL,
    domain character varying(64),
    short_name character varying(64),
    qualitative bit DEFAULT 0 NOT NULL,
    val_type character varying(8),
    user_managed bit DEFAULT 0,
    enabled bit DEFAULT 1,
    worst_value numeric(38, 20),
    best_value numeric(38, 20),
    optimized_best_value bit,
    hidden bit,
    delete_historical_data bit,
    decimal_scale integer
  );


  CREATE SEQUENCE dbo.metrics_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.new_code_periods (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(40),
    branch_uuid character varying(40),
    type character varying(30) NOT NULL,
    value character varying(40),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.notifications (id integer NOT NULL, data VARBINARY(100));


  CREATE SEQUENCE dbo.notifications_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.org_qprofiles (
    uuid character varying(255) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    rules_profile_uuid character varying(255) NOT NULL,
    parent_uuid character varying(255),
    last_used bigint,
    user_updated_at bigint,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.org_quality_gates (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    quality_gate_uuid character varying(40) NOT NULL
  );


  CREATE TABLE dbo.organization_alm_bindings (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    alm_app_install_uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    url character varying(2000) NOT NULL,
    user_uuid character varying(255) NOT NULL,
    members_sync_enabled bit,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.organization_members (
    organization_uuid character varying(40) NOT NULL,
    user_id integer NOT NULL
  );

  CREATE TABLE dbo.organizations (
    uuid character varying(40) NOT NULL,
    kee character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(256),
    url character varying(256),
    avatar_url character varying(256),
    guarded bit,
    default_group_id integer,
    default_quality_gate_uuid character varying(40) NOT NULL,
    default_perm_template_project character varying(40),
    default_perm_template_app character varying(40),
    default_perm_template_port character varying(40),
    new_project_private bit NOT NULL,
    subscription character varying(40) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );

  CREATE TABLE dbo.perm_templates_groups (
    id integer NOT NULL,
    group_id integer,
    template_id integer NOT NULL,
    permission_reference character varying(64) NOT NULL,
    created_at datetime2,
    updated_at datetime2
  );


  CREATE SEQUENCE dbo.perm_templates_groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.perm_templates_users (
    id integer NOT NULL,
    user_id integer NOT NULL,
    template_id integer NOT NULL,
    permission_reference character varying(64) NOT NULL,
    created_at datetime2,
    updated_at datetime2
  );


  CREATE SEQUENCE dbo.perm_templates_users_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.perm_tpl_characteristics (
    id integer NOT NULL,
    template_id integer NOT NULL,
    permission_key character varying(64) NOT NULL,
    with_project_creator bit DEFAULT 0 NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE SEQUENCE dbo.perm_tpl_characteristics_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.permission_templates (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    name character varying(100) NOT NULL,
    kee character varying(100) NOT NULL,
    description character varying(4000),
    created_at datetime2,
    updated_at datetime2,
    key_pattern character varying(500)
  );


  CREATE SEQUENCE dbo.permission_templates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.plugins (
    uuid character varying(40) NOT NULL,
    kee character varying(200) NOT NULL,
    base_plugin_key character varying(200),
    file_hash character varying(200) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.project_alm_bindings (
    uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    repo_id character varying(256) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    github_slug character varying(256),
    url character varying(2000) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );

  CREATE TABLE dbo.project_alm_settings (
    uuid character varying(40) NOT NULL,
    alm_setting_uuid character varying(40) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    alm_repo character varying(256),
    alm_slug character varying(256),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );

  CREATE TABLE dbo.project_branches (
    uuid character varying(50) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    kee character varying(255) NOT NULL,
    branch_type character varying(12),
    merge_branch_uuid character varying(50),
    key_type character varying(12) NOT NULL,
    pull_request_binary VARBINARY(100),
    manual_baseline_analysis_uuid character varying(40),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL,
    exclude_from_purge bit DEFAULT 0 NOT NULL
  );

  CREATE TABLE dbo.project_links (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    link_type character varying(20) NOT NULL,
    name character varying(128),
    href character varying(2048) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.project_mappings (
    uuid character varying(40) NOT NULL,
    key_type character varying(200) NOT NULL,
    kee character varying(4000) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.project_measures (
    id bigint NOT NULL,
    value numeric(38, 20),
    metric_id integer NOT NULL,
    analysis_uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    text_value character varying(4000),
    alert_status character varying(5),
    alert_text character varying(4000),
    description character varying(4000),
    person_id integer,
    variation_value_1 numeric(38, 20),
    variation_value_2 numeric(38, 20),
    variation_value_3 numeric(38, 20),
    variation_value_4 numeric(38, 20),
    variation_value_5 numeric(38, 20),
    measure_data VARBINARY(100)
  );


  CREATE SEQUENCE dbo.project_measures_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.project_qgates (
    project_uuid character varying(40) NOT NULL,
    quality_gate_uuid character varying(40) NOT NULL
  );

  CREATE TABLE dbo.project_qprofiles (
    id integer NOT NULL,
    project_uuid character varying(50) NOT NULL,
    profile_key character varying(50) NOT NULL
  );


  CREATE SEQUENCE dbo.project_qprofiles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.projects (
    id integer NOT NULL,
    uuid character varying(50) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    kee character varying(400),
    deprecated_kee character varying(400),
    name character varying(2000),
    long_name character varying(2000),
    description character varying(2000),
    enabled bit DEFAULT 1 NOT NULL,
    scope character varying(3),
    qualifier character varying(10),
    private bit NOT NULL,
    root_uuid character varying(50) NOT NULL,
    language character varying(20),
    copy_component_uuid character varying(50),
    developer_uuid character varying(50),
    path character varying(2000),
    uuid_path character varying(1500) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    module_uuid character varying(50),
    module_uuid_path character varying(1500),
    authorization_updated_at bigint,
    tags character varying(500),
    main_branch_project_uuid character varying(50),
    b_changed bit,
    b_name character varying(500),
    b_long_name character varying(500),
    b_description character varying(2000),
    b_enabled bit,
    b_qualifier character varying(10),
    b_language character varying(20),
    b_copy_component_uuid character varying(50),
    b_path character varying(2000),
    b_uuid_path character varying(1500),
    b_module_uuid character varying(50),
    b_module_uuid_path character varying(1500),
    created_at datetime2
  );


  CREATE SEQUENCE dbo.projects_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.properties (
    id integer NOT NULL,
    prop_key character varying(512) NOT NULL,
    resource_id bigint,
    user_id bigint,
    is_empty bit NOT NULL,
    text_value character varying(4000),
    clob_value varchar(max),
    created_at bigint NOT NULL
  );


  CREATE SEQUENCE dbo.properties_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.qprofile_changes (
    kee character varying(40) NOT NULL,
    rules_profile_uuid character varying(255) NOT NULL,
    change_type character varying(20) NOT NULL,
    user_uuid character varying(255),
    change_data varchar(max),
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.qprofile_edit_groups (
    uuid character varying(40) NOT NULL,
    group_id integer NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.qprofile_edit_users (
    uuid character varying(40) NOT NULL,
    user_id integer NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.quality_gate_conditions (
    id integer NOT NULL,
    qgate_id integer,
    metric_id integer,
    period integer,
    operator character varying(3),
    value_error character varying(64),
    value_warning character varying(64),
    created_at datetime2,
    updated_at datetime2
  );


  CREATE SEQUENCE dbo.quality_gate_conditions_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.quality_gates (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    name character varying(100) NOT NULL,
    is_built_in bit NOT NULL,
    created_at datetime2,
    updated_at datetime2
  );

  CREATE SEQUENCE dbo.quality_gates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.rule_repositories (
    kee character varying(200) NOT NULL,
    language character varying(20) NOT NULL,
    name character varying(4000) NOT NULL,
    created_at bigint NOT NULL
  );

  CREATE TABLE dbo.rules (
    id integer NOT NULL,
    name character varying(200),
    plugin_rule_key character varying(200) NOT NULL,
    plugin_key character varying(200),
    plugin_config_key character varying(200),
    plugin_name character varying(255) NOT NULL,
    scope character varying(20) NOT NULL,
    description varchar(max),
    priority integer,
    template_id integer,
    status character varying(40),
    language character varying(20),
    def_remediation_function character varying(20),
    def_remediation_gap_mult character varying(20),
    def_remediation_base_effort character varying(20),
    gap_description character varying(4000),
    system_tags character varying(4000),
    is_template bit DEFAULT 0 NOT NULL,
    description_format character varying(20),
    rule_type smallint,
    security_standards character varying(4000),
    is_ad_hoc bit NOT NULL,
    is_external bit NOT NULL,
    created_at bigint,
    updated_at bigint
  );


  CREATE SEQUENCE dbo.rules_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.rules_metadata (
    rule_id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    note_data varchar(max),
    note_user_uuid character varying(255),
    note_created_at bigint,
    note_updated_at bigint,
    remediation_function character varying(20),
    remediation_gap_mult character varying(20),
    remediation_base_effort character varying(20),
    tags character varying(4000),
    ad_hoc_name character varying(200),
    ad_hoc_description varchar(max),
    ad_hoc_severity character varying(10),
    ad_hoc_type smallint,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );


  CREATE TABLE dbo.rules_parameters (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(4000),
    param_type character varying(512) NOT NULL,
    default_value character varying(4000)
  );


  CREATE SEQUENCE dbo.rules_parameters_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.rules_profiles (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    language character varying(20),
    kee character varying(255) NOT NULL,
    is_built_in bit NOT NULL,
    rules_updated_at character varying(100),
    created_at datetime2,
    updated_at datetime2
  );

  CREATE SEQUENCE dbo.rules_profiles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.schema_migrations (version character varying(255) NOT NULL);

  CREATE TABLE dbo.snapshots (
    id integer NOT NULL,
    uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    status character varying(4) DEFAULT cast('U'  as  character varying) NOT NULL,
    islast bit DEFAULT 0 NOT NULL,
    version character varying(500),
    purge_status integer,
    build_string character varying(100),
    revision character varying(100),
    build_date bigint,
    period1_mode character varying(100),
    period1_param character varying(100),
    period2_mode character varying(100),
    period2_param character varying(100),
    period3_mode character varying(100),
    period3_param character varying(100),
    period4_mode character varying(100),
    period4_param character varying(100),
    period5_mode character varying(100),
    period5_param character varying(100),
    period1_date bigint,
    period2_date bigint,
    period3_date bigint,
    period4_date bigint,
    period5_date bigint,
    created_at bigint
  );

  CREATE SEQUENCE dbo.snapshots_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.user_properties (
    uuid character varying(40) NOT NULL,
    user_uuid character varying(255) NOT NULL,
    kee character varying(100) NOT NULL,
    text_value character varying(4000) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );

  CREATE TABLE dbo.user_roles (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    user_id integer,
    resource_id integer,
    role character varying(64) NOT NULL
  );

  CREATE SEQUENCE dbo.user_roles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.user_tokens (
    id integer NOT NULL,
    user_uuid character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    token_hash character varying(255) NOT NULL,
    last_connection_date bigint,
    created_at bigint NOT NULL
  );


  CREATE SEQUENCE dbo.user_tokens_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.users (
    id integer NOT NULL,
    uuid character varying(255) NOT NULL,
    login character varying(255) NOT NULL,
    organization_uuid character varying(40),
    name character varying(200),
    email character varying(100),
    crypted_password character varying(100),
    salt character varying(40),
    hash_method character varying(10),
    active bit DEFAULT 1,
    scm_accounts character varying(4000),
    external_login character varying(255) NOT NULL,
    external_identity_provider character varying(100) NOT NULL,
    external_id character varying(255) NOT NULL,
    is_root bit NOT NULL,
    user_local bit,
    onboarded bit NOT NULL,
    homepage_type character varying(40),
    homepage_parameter character varying(40),
    last_connection_date bigint,
    created_at bigint,
    updated_at bigint
  );


  CREATE SEQUENCE dbo.users_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.webhook_deliveries (
    uuid character varying(40) NOT NULL,
    webhook_uuid character varying(40) NOT NULL,
    component_uuid character varying(40) NOT NULL,
    ce_task_uuid character varying(40),
    analysis_uuid character varying(40),
    name character varying(100) NOT NULL,
    url character varying(2000) NOT NULL,
    success bit NOT NULL,
    http_status integer,
    duration_ms bigint NOT NULL,
    payload varchar(max) NOT NULL,
    error_stacktrace varchar(max),
    created_at bigint NOT NULL
  );


  CREATE TABLE dbo.webhooks (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40),
    project_uuid character varying(40),
    name character varying(100) NOT NULL,
    url character varying(2000) NOT NULL,
    secret character varying(200),
    created_at bigint NOT NULL,
    updated_at bigint
  );

ALTER TABLE  dbo.active_rule_parameters
ADD
  CONSTRAINT pk_active_rule_parameters PRIMARY KEY (id);


ALTER TABLE  dbo.active_rules
ADD
  CONSTRAINT pk_active_rules PRIMARY KEY (id);


ALTER TABLE  dbo.alm_app_installs
ADD
  CONSTRAINT pk_alm_app_installs PRIMARY KEY (uuid);


ALTER TABLE  dbo.alm_settings
ADD
  CONSTRAINT pk_alm_settings PRIMARY KEY (uuid);


ALTER TABLE  dbo.analysis_properties
ADD
  CONSTRAINT pk_analysis_properties PRIMARY KEY (uuid);


ALTER TABLE  dbo.ce_activity
ADD
  CONSTRAINT pk_ce_activity PRIMARY KEY (id);


ALTER TABLE  dbo.ce_queue
ADD
  CONSTRAINT pk_ce_queue PRIMARY KEY (id);


ALTER TABLE  dbo.ce_scanner_context
ADD
  CONSTRAINT pk_ce_scanner_context PRIMARY KEY (task_uuid);


ALTER TABLE  dbo.ce_task_characteristics
ADD
  CONSTRAINT pk_ce_task_characteristics PRIMARY KEY (uuid);


ALTER TABLE  dbo.ce_task_input
ADD
  CONSTRAINT pk_ce_task_input PRIMARY KEY (task_uuid);


ALTER TABLE  dbo.ce_task_message
ADD
  CONSTRAINT pk_ce_task_message PRIMARY KEY (uuid);


ALTER TABLE  dbo.default_qprofiles
ADD
  CONSTRAINT pk_default_qprofiles PRIMARY KEY (organization_uuid, language);


ALTER TABLE  dbo.deprecated_rule_keys
ADD
  CONSTRAINT pk_deprecated_rule_keys PRIMARY KEY (uuid);


ALTER TABLE  dbo.duplications_index
ADD
  CONSTRAINT pk_duplications_index PRIMARY KEY (id);


ALTER TABLE  dbo.es_queue
ADD
  CONSTRAINT pk_es_queue PRIMARY KEY (uuid);


ALTER TABLE  dbo.event_component_changes
ADD
  CONSTRAINT pk_event_component_changes PRIMARY KEY (uuid);


ALTER TABLE  dbo.events
ADD
  CONSTRAINT pk_events PRIMARY KEY (id);


ALTER TABLE  dbo.file_sources
ADD
  CONSTRAINT pk_file_sources PRIMARY KEY (id);


ALTER TABLE  dbo.group_roles
ADD
  CONSTRAINT pk_group_roles PRIMARY KEY (id);


ALTER TABLE  dbo.groups
ADD
  CONSTRAINT pk_groups PRIMARY KEY (id);


ALTER TABLE  dbo.internal_component_props
ADD
  CONSTRAINT pk_internal_component_props PRIMARY KEY (uuid);


ALTER TABLE  dbo.internal_properties
ADD
  CONSTRAINT pk_internal_properties PRIMARY KEY (kee);


ALTER TABLE  dbo.issue_changes
ADD
  CONSTRAINT pk_issue_changes PRIMARY KEY (id);

ALTER TABLE  dbo.issues
ADD
  CONSTRAINT pk_issues PRIMARY KEY (id);

ALTER TABLE  dbo.live_measures
ADD
  CONSTRAINT pk_live_measures PRIMARY KEY (uuid);

ALTER TABLE  dbo.manual_measures
ADD
  CONSTRAINT pk_manual_measures PRIMARY KEY (id);

ALTER TABLE  dbo.metrics
ADD
  CONSTRAINT pk_metrics PRIMARY KEY (id);

ALTER TABLE  dbo.new_code_periods
ADD
  CONSTRAINT pk_new_code_periods PRIMARY KEY (uuid);

ALTER TABLE  dbo.notifications
ADD
  CONSTRAINT pk_notifications PRIMARY KEY (id);

ALTER TABLE  dbo.org_qprofiles
ADD
  CONSTRAINT pk_org_qprofiles PRIMARY KEY (uuid);

ALTER TABLE  dbo.org_quality_gates
ADD
  CONSTRAINT pk_org_quality_gates PRIMARY KEY (uuid);

ALTER TABLE  dbo.organization_alm_bindings
ADD
  CONSTRAINT pk_organization_alm_bindings PRIMARY KEY (uuid);

ALTER TABLE  dbo.organization_members
ADD
  CONSTRAINT pk_organization_members PRIMARY KEY (organization_uuid, user_id);

ALTER TABLE  dbo.organizations
ADD
  CONSTRAINT pk_organizations PRIMARY KEY (uuid);

ALTER TABLE  dbo.perm_templates_groups
ADD
  CONSTRAINT pk_perm_templates_groups PRIMARY KEY (id);

ALTER TABLE  dbo.perm_templates_users
ADD
  CONSTRAINT pk_perm_templates_users PRIMARY KEY (id);

ALTER TABLE  dbo.perm_tpl_characteristics
ADD
  CONSTRAINT pk_perm_tpl_characteristics PRIMARY KEY (id);

ALTER TABLE  dbo.permission_templates
ADD
  CONSTRAINT pk_permission_templates PRIMARY KEY (id);

ALTER TABLE  dbo.plugins
ADD
  CONSTRAINT pk_plugins PRIMARY KEY (uuid);

ALTER TABLE  dbo.project_alm_bindings
ADD
  CONSTRAINT pk_project_alm_bindings PRIMARY KEY (uuid);

ALTER TABLE  dbo.project_alm_settings
ADD
  CONSTRAINT pk_project_alm_settings PRIMARY KEY (uuid);

ALTER TABLE  dbo.project_branches
ADD
  CONSTRAINT pk_project_branches PRIMARY KEY (uuid);

ALTER TABLE  dbo.project_links
ADD
  CONSTRAINT pk_project_links PRIMARY KEY (uuid);

ALTER TABLE  dbo.project_mappings
ADD
  CONSTRAINT pk_project_mappings PRIMARY KEY (uuid);

ALTER TABLE  dbo.project_measures
ADD
  CONSTRAINT pk_project_measures PRIMARY KEY (id);

ALTER TABLE  dbo.project_qgates
ADD
  CONSTRAINT pk_project_qgates PRIMARY KEY (project_uuid);

ALTER TABLE  dbo.project_qprofiles
ADD
  CONSTRAINT pk_project_qprofiles PRIMARY KEY (id);

ALTER TABLE  dbo.projects
ADD
  CONSTRAINT pk_projects PRIMARY KEY (id);

ALTER TABLE  dbo.properties
ADD
  CONSTRAINT pk_properties PRIMARY KEY (id);

ALTER TABLE  dbo.qprofile_changes
ADD
  CONSTRAINT pk_qprofile_changes PRIMARY KEY (kee);

ALTER TABLE  dbo.qprofile_edit_groups
ADD
  CONSTRAINT pk_qprofile_edit_groups PRIMARY KEY (uuid);

ALTER TABLE  dbo.qprofile_edit_users
ADD
  CONSTRAINT pk_qprofile_edit_users PRIMARY KEY (uuid);

ALTER TABLE  dbo.quality_gate_conditions
ADD
  CONSTRAINT pk_quality_gate_conditions PRIMARY KEY (id);

ALTER TABLE  dbo.quality_gates
ADD
  CONSTRAINT pk_quality_gates PRIMARY KEY (id);

ALTER TABLE  dbo.rule_repositories
ADD
  CONSTRAINT pk_rule_repositories PRIMARY KEY (kee);

ALTER TABLE  dbo.rules
ADD
  CONSTRAINT pk_rules PRIMARY KEY (id);

ALTER TABLE  dbo.rules_metadata
ADD
  CONSTRAINT pk_rules_metadata PRIMARY KEY (rule_id, organization_uuid);

ALTER TABLE  dbo.rules_parameters
ADD
  CONSTRAINT pk_rules_parameters PRIMARY KEY (id);

ALTER TABLE  dbo.rules_profiles
ADD
  CONSTRAINT pk_rules_profiles PRIMARY KEY (id);

ALTER TABLE  dbo.snapshots
ADD
  CONSTRAINT pk_snapshots PRIMARY KEY (id);

ALTER TABLE  dbo.user_properties
ADD
  CONSTRAINT pk_user_properties PRIMARY KEY (uuid);

ALTER TABLE  dbo.user_roles
ADD
  CONSTRAINT pk_user_roles PRIMARY KEY (id);

ALTER TABLE  dbo.user_tokens
ADD
  CONSTRAINT pk_user_tokens PRIMARY KEY (id);

ALTER TABLE  dbo.users
ADD
  CONSTRAINT pk_users PRIMARY KEY (id);

ALTER TABLE  dbo.webhook_deliveries
ADD
  CONSTRAINT pk_webhook_deliveries PRIMARY KEY (uuid);

ALTER TABLE  dbo.webhooks
ADD
  CONSTRAINT pk_webhooks PRIMARY KEY (uuid);

