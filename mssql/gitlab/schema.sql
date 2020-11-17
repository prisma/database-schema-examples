USE [gitlab]

CREATE TABLE dbo.abuse_reports (
    id integer NOT NULL,
    reporter_id integer,
    user_id integer,
    message text,
    created_at datetime ,
    updated_at datetime ,
    message_html text,
    cached_markdown_version integer
);

CREATE SEQUENCE dbo.abuse_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 100;

CREATE TABLE dbo.appearances (
    id integer NOT NULL,
    title VARCHAR(255) NOT NULL,
    description text NOT NULL,
    header_logo VARCHAR(255),
    logo VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    description_html text,
    cached_markdown_version integer,
    new_project_guidelines text,
    new_project_guidelines_html text,
    header_message text,
    header_message_html text,
    footer_message text,
    footer_message_html text,
    message_background_color text,
    message_font_color text,
    favicon VARCHAR(255),
    email_header_and_footer_enabled bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.appearances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.application_setting_terms (
    id integer NOT NULL,
    cached_markdown_version integer,
    terms text NOT NULL,
    terms_html text
);

CREATE SEQUENCE dbo.application_setting_terms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.application_settings (
    id integer NOT NULL,
    default_projects_limit integer,
    signup_enabled bit,
    gravatar_enabled bit,
    sign_in_text text,
    created_at datetime ,
    updated_at datetime ,
    home_page_url VARCHAR(255),
    default_branch_protection integer DEFAULT 2,
    restricted_visibility_levels text,
    version_check_enabled bit DEFAULT 1,
    max_attachment_size integer DEFAULT 10 NOT NULL,
    default_project_visibility integer,
    default_snippet_visibility integer,
    domain_whitelist text,
    user_oauth_applications bit DEFAULT 1,
    after_sign_out_path VARCHAR(255),
    session_expire_delay integer DEFAULT 10080 NOT NULL,
    import_sources text,
    help_page_text text,
    admin_notification_email VARCHAR(255),
    shared_runners_enabled bit DEFAULT 1 NOT NULL,
    max_artifacts_size integer DEFAULT 100 NOT NULL,
    runners_registration_token VARCHAR(255),
    max_pages_size integer DEFAULT 100 NOT NULL,
    require_two_factor_authentication bit DEFAULT 0,
    two_factor_grace_period integer DEFAULT 48,
    metrics_enabled bit DEFAULT 0,
    metrics_host VARCHAR(255) DEFAULT 'localhost',
    metrics_pool_size integer DEFAULT 16,
    metrics_timeout integer DEFAULT 10,
    metrics_method_call_threshold integer DEFAULT 10,
    recaptcha_enabled bit DEFAULT 0,
    recaptcha_site_key_base VARCHAR(255),
    recaptcha_private_key_base VARCHAR(255),
    metrics_port integer DEFAULT 8089,
    akismet_enabled bit DEFAULT 0,
    akismet_api_key_base VARCHAR(255),
    metrics_sample_interval integer DEFAULT 15,
    sentry_enabled bit DEFAULT 0,
    sentry_dsn VARCHAR(255),
    email_author_in_body bit DEFAULT 0,
    default_group_visibility integer,
    repository_checks_enabled bit DEFAULT 0,
    shared_runners_text text,
    metrics_packet_size integer DEFAULT 1,
    disabled_oauth_sign_in_sources text,
    health_check_access_token VARCHAR(255),
    send_user_confirmation_email bit DEFAULT 0,
    container_registry_token_expire_delay integer DEFAULT 5,
    after_sign_up_text text,
    user_default_external bit DEFAULT 0 NOT NULL,
    repository_storages VARCHAR(255) DEFAULT 'default',
    enabled_git_access_protocol VARCHAR(255),
    domain_blacklist_enabled bit DEFAULT 0,
    domain_blacklist text,
    usage_ping_enabled bit DEFAULT 1 NOT NULL,
    sign_in_text_html text,
    help_page_text_html text,
    shared_runners_text_html text,
    after_sign_up_text_html text,
    rsa_key_restriction integer DEFAULT 0 NOT NULL,
    dsa_key_restriction integer DEFAULT '-1' NOT NULL,
    ecdsa_key_restriction integer DEFAULT 0 NOT NULL,
    ed25519_key_restriction integer DEFAULT 0 NOT NULL,
    housekeeping_enabled bit DEFAULT 1 NOT NULL,
    housekeeping_bitmaps_enabled bit DEFAULT 1 NOT NULL,
    housekeeping_incremental_repack_period integer DEFAULT 10 NOT NULL,
    housekeeping_full_repack_period integer DEFAULT 50 NOT NULL,
    housekeeping_gc_period integer DEFAULT 200 NOT NULL,
    html_emails_enabled bit DEFAULT 1,
    plantuml_url VARCHAR(255),
    plantuml_enabled bit,
    terminal_max_session_time integer DEFAULT 0 NOT NULL,
    unique_ips_limit_per_user integer,
    unique_ips_limit_time_window integer,
    unique_ips_limit_enabled bit DEFAULT 0 NOT NULL,
    default_artifacts_expire_in VARCHAR(255) DEFAULT '0' NOT NULL,
    uuid VARCHAR(255),
    polling_interval_multiplier numeric DEFAULT 1.0 NOT NULL,
    cached_markdown_version integer,
    clientside_sentry_enabled bit DEFAULT 0 NOT NULL,
    clientside_sentry_dsn VARCHAR(255),
    prometheus_metrics_enabled bit DEFAULT 1 NOT NULL,
    help_page_hide_commercial_content bit DEFAULT 0,
    help_page_support_url VARCHAR(255),
    performance_bar_allowed_group_id integer,
    hashed_storage_enabled bit DEFAULT 0 NOT NULL,
    project_export_enabled bit DEFAULT 1 NOT NULL,
    auto_devops_enabled bit DEFAULT 1 NOT NULL,
    throttle_unauthenticated_enabled bit DEFAULT 0 NOT NULL,
    throttle_unauthenticated_requests_per_period integer DEFAULT 3600 NOT NULL,
    throttle_unauthenticated_period_in_seconds integer DEFAULT 3600 NOT NULL,
    throttle_authenticated_api_enabled bit DEFAULT 0 NOT NULL,
    throttle_authenticated_api_requests_per_period integer DEFAULT 7200 NOT NULL,
    throttle_authenticated_api_period_in_seconds integer DEFAULT 3600 NOT NULL,
    throttle_authenticated_web_enabled bit DEFAULT 0 NOT NULL,
    throttle_authenticated_web_requests_per_period integer DEFAULT 7200 NOT NULL,
    throttle_authenticated_web_period_in_seconds integer DEFAULT 3600 NOT NULL,
    password_authentication_enabled_for_web bit,
    password_authentication_enabled_for_git bit DEFAULT 1,
    gitaly_timeout_default integer DEFAULT 55 NOT NULL,
    gitaly_timeout_medium integer DEFAULT 30 NOT NULL,
    gitaly_timeout_fast integer DEFAULT 10 NOT NULL,
    authorized_keys_enabled bit DEFAULT 1 NOT NULL,
    auto_devops_domain VARCHAR(255),
    pages_domain_verification_enabled bit DEFAULT 1 NOT NULL,
    user_default_internal_regex VARCHAR(255),
    allow_local_requests_from_hooks_and_services bit DEFAULT 0 NOT NULL,
    enforce_terms bit DEFAULT 0,
    mirror_available bit DEFAULT 1 NOT NULL,
    hide_third_party_offers bit DEFAULT 0 NOT NULL,
    instance_statistics_visibility_private bit DEFAULT 0 NOT NULL,
    web_ide_clientside_preview_enabled bit DEFAULT 0 NOT NULL,
    user_show_add_ssh_key_message bit DEFAULT 1 NOT NULL,
    usage_stats_set_by_user_id integer,
    receive_max_input_size integer,
    diff_max_patch_bytes integer DEFAULT 102400 NOT NULL,
    archive_builds_in_seconds integer,
    commit_email_hostname VARCHAR(255),
    protected_ci_variables bit DEFAULT 0 NOT NULL,
    runners_registration_token_encrypted VARCHAR(255),
    local_markdown_version integer DEFAULT 0 NOT NULL,
    first_day_of_week integer DEFAULT 0 NOT NULL,
    default_project_creation integer DEFAULT 2 NOT NULL,
    external_authorization_service_enabled bit DEFAULT 0 NOT NULL,
    external_authorization_service_url VARCHAR(255),
    external_authorization_service_default_label VARCHAR(255),
    external_authorization_service_timeout double precision DEFAULT 0.5,
    external_auth_client_cert text,
    encrypted_external_auth_client_key_base text,
    encrypted_external_auth_client_key_iv VARCHAR(255),
    encrypted_external_auth_client_key_pass VARCHAR(255),
    encrypted_external_auth_client_key_pass_iv VARCHAR(255),
    lets_encrypt_notification_email VARCHAR(255),
    lets_encrypt_terms_of_service_accepted bit DEFAULT 0 NOT NULL,
    elasticsearch_shards integer DEFAULT 5 NOT NULL,
    elasticsearch_replicas integer DEFAULT 1 NOT NULL,
    encrypted_lets_encrypt_private_key_base text,
    encrypted_lets_encrypt_private_key_iv text,
    dns_rebinding_protection_enabled bit DEFAULT 1 NOT NULL,
    default_project_deletion_protection bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.application_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ar_internal_metadata (
    key_base VARCHAR(255) NOT NULL,
    value VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE TABLE dbo.audit_events (
    id integer NOT NULL,
    author_id integer NOT NULL,
    type VARCHAR(255) NOT NULL,
    entity_id integer NOT NULL,
    entity_type VARCHAR(255) NOT NULL,
    details text,
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.audit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.award_emoji (
    id integer NOT NULL,
    name VARCHAR(255),
    user_id integer,
    awardable_id integer,
    awardable_type VARCHAR(255),
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.award_emoji_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.badges (
    id integer NOT NULL,
    link_url VARCHAR(255) NOT NULL,
    image_url VARCHAR(255) NOT NULL,
    project_id integer,
    group_id integer,
    type VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.badges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.board_group_recent_visits (
    id bigint NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer,
    board_id integer,
    group_id integer
);

CREATE SEQUENCE dbo.board_group_recent_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.board_project_recent_visits (
    id bigint NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer,
    project_id integer,
    board_id integer
);

CREATE SEQUENCE dbo.board_project_recent_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.boards (
    id integer NOT NULL,
    project_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    group_id integer
);

CREATE SEQUENCE dbo.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.broadcast_messages (
    id integer NOT NULL,
    message text NOT NULL,
    starts_at datetime  NOT NULL,
    ends_at datetime  NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    color VARCHAR(255),
    font VARCHAR(255),
    message_html text NOT NULL,
    cached_markdown_version integer
);

CREATE SEQUENCE dbo.broadcast_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.chat_names (
    id integer NOT NULL,
    user_id integer NOT NULL,
    service_id integer NOT NULL,
    team_id VARCHAR(255) NOT NULL,
    team_domain VARCHAR(255),
    chat_id VARCHAR(255) NOT NULL,
    chat_name VARCHAR(255),
    last_used_at datetime ,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.chat_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.chat_teams (
    id integer NOT NULL,
    namespace_id integer NOT NULL,
    team_id VARCHAR(255),
    name VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.chat_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_build_trace_chunks (
    id bigint NOT NULL,
    build_id integer NOT NULL,
    chunk_index integer NOT NULL,
    data_store integer NOT NULL,
    raw_data VARBINARY(100)
);

CREATE SEQUENCE dbo.ci_build_trace_chunks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_build_trace_section_names (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.ci_build_trace_section_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_build_trace_sections (
    id integer NOT NULL,
    project_id integer NOT NULL,
    date_start datetime  NOT NULL,
    date_end datetime  NOT NULL,
    byte_start bigint NOT NULL,
    byte_end bigint NOT NULL,
    build_id integer NOT NULL,
    section_name_id integer NOT NULL
);

CREATE SEQUENCE dbo.ci_build_trace_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_builds (
    id integer NOT NULL,
    status VARCHAR(255),
    finished_at datetime ,
    trace text,
    created_at datetime ,
    updated_at datetime ,
    started_at datetime ,
    runner_id integer,
    coverage double precision,
    commit_id integer,
    commands text,
    name VARCHAR(255),
    options text,
    allow_failure bit DEFAULT 0 NOT NULL,
    stage VARCHAR(255),
    trigger_request_id integer,
    stage_idx integer,
    tag bit,
    ref VARCHAR(255),
    user_id integer,
    type VARCHAR(255),
    target_url VARCHAR(255),
    description VARCHAR(255),
    artifacts_file text,
    project_id integer,
    artifacts_metadata text,
    erased_by_id integer,
    erased_at datetime ,
    artifacts_expire_at datetime ,
    environment VARCHAR(255),
    artifacts_size bigint,
    [when] VARCHAR(255),
    yaml_variables text,
    queued_at datetime ,
    token VARCHAR(255),
    lock_version integer,
    coverage_regex VARCHAR(255),
    auto_canceled_by_id integer,
    retried bit,
    stage_id integer,
    artifacts_file_store integer,
    artifacts_metadata_store integer,
    protected bit,
    failure_reason integer,
    scheduled_at datetime ,
    token_encrypted VARCHAR(255)
);

CREATE SEQUENCE dbo.ci_builds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_builds_metadata (
    id integer NOT NULL,
    build_id integer NOT NULL,
    project_id integer NOT NULL,
    timeout integer,
    timeout_source integer DEFAULT 1 NOT NULL,
    config_options NVARCHAR,
    config_variables NVARCHAR
);

CREATE SEQUENCE dbo.ci_builds_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_builds_runner_session (
    id bigint NOT NULL,
    build_id integer NOT NULL,
    url VARCHAR(255) NOT NULL,
    certificate VARCHAR(255),
    [authorization] VARCHAR(255)
);

CREATE SEQUENCE dbo.ci_builds_runner_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_group_variables (
    id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt VARCHAR(255),
    encrypted_value_iv VARCHAR(255),
    group_id integer NOT NULL,
    protected bit DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    masked bit DEFAULT 0 NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.ci_group_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_job_artifacts (
    id integer NOT NULL,
    project_id integer NOT NULL,
    job_id integer NOT NULL,
    file_type integer NOT NULL,
    file_store integer,
    size bigint,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    expire_at datetime,
    file_base VARCHAR(255),
    file_sha256 VARBINARY(100),
    file_format smallint,
    file_location smallint
);

CREATE SEQUENCE dbo.ci_job_artifacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_pipeline_chat_data (
    id bigint NOT NULL,
    pipeline_id integer NOT NULL,
    chat_name_id integer NOT NULL,
    response_url text NOT NULL
);

CREATE SEQUENCE dbo.ci_pipeline_chat_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_pipeline_schedule_variables (
    id bigint NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt VARCHAR(255),
    encrypted_value_iv VARCHAR(255),
    pipeline_schedule_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    variable_type smallint DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.ci_pipeline_schedule_variables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_pipeline_schedules (
    id integer NOT NULL,
    description VARCHAR(255),
    ref VARCHAR(255),
    cron VARCHAR(255),
    cron_timezone VARCHAR(255),
    next_run_at datetime ,
    project_id integer,
    owner_id integer,
    active bit DEFAULT 1,
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.ci_pipeline_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_pipeline_variables (
    id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt VARCHAR(255),
    encrypted_value_iv VARCHAR(255),
    pipeline_id integer NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.ci_pipeline_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_pipelines (
    id integer NOT NULL,
    ref VARCHAR(255),
    sha VARCHAR(255),
    before_sha VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    tag bit DEFAULT 0,
    yaml_errors text,
    committed_at datetime ,
    project_id integer,
    status VARCHAR(255),
    started_at datetime ,
    finished_at datetime ,
    duration integer,
    user_id integer,
    lock_version integer,
    auto_canceled_by_id integer,
    pipeline_schedule_id integer,
    source integer,
    config_source integer,
    protected bit,
    failure_reason integer,
    iid integer,
    merge_request_id integer,
    source_sha VARBINARY(100),
    target_sha VARBINARY(100)
);

CREATE SEQUENCE dbo.ci_pipelines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_runner_namespaces (
    id integer NOT NULL,
    runner_id integer,
    namespace_id integer
);

CREATE SEQUENCE dbo.ci_runner_namespaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_runner_projects (
    id integer NOT NULL,
    runner_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    project_id integer
);

CREATE SEQUENCE dbo.ci_runner_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_runners (
    id integer NOT NULL,
    token VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    description VARCHAR(255),
    contacted_at datetime ,
    active bit DEFAULT 1 NOT NULL,
    is_shared bit DEFAULT 0,
    name VARCHAR(255),
    version VARCHAR(255),
    revision VARCHAR(255),
    platform VARCHAR(255),
    architecture VARCHAR(255),
    run_untagged bit DEFAULT 1 NOT NULL,
    locked bit DEFAULT 0 NOT NULL,
    access_level integer DEFAULT 0 NOT NULL,
    ip_address VARCHAR(255),
    maximum_timeout integer,
    runner_type smallint NOT NULL,
    token_encrypted VARCHAR(255)
);

CREATE SEQUENCE dbo.ci_runners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_stages (
    id integer NOT NULL,
    project_id integer,
    pipeline_id integer,
    created_at datetime ,
    updated_at datetime ,
    name VARCHAR(255),
    status integer,
    lock_version integer,
    [position] integer
);

CREATE SEQUENCE dbo.ci_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_trigger_requests (
    id integer NOT NULL,
    trigger_id integer NOT NULL,
    variables text,
    created_at datetime ,
    updated_at datetime ,
    commit_id integer
);

CREATE SEQUENCE dbo.ci_trigger_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_triggers (
    id integer NOT NULL,
    token VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    project_id integer,
    owner_id integer,
    description VARCHAR(255),
    ref VARCHAR(255)
);

CREATE SEQUENCE dbo.ci_triggers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.ci_variables (
    id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt VARCHAR(255),
    encrypted_value_iv VARCHAR(255),
    project_id integer NOT NULL,
    protected bit DEFAULT 0 NOT NULL,
    environment_scope VARCHAR(255) DEFAULT '*' NOT NULL,
    masked bit DEFAULT 0 NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.ci_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.cluster_groups (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    group_id integer NOT NULL
);

CREATE SEQUENCE dbo.cluster_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.cluster_platforms_kubernetes (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    api_url text,
    ca_cert text,
    namespace VARCHAR(255),
    username VARCHAR(255),
    encrypted_password text,
    encrypted_password_iv VARCHAR(255),
    encrypted_token text,
    encrypted_token_iv VARCHAR(255),
    authorization_type smallint
);

CREATE SEQUENCE dbo.cluster_platforms_kubernetes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.cluster_projects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.cluster_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.cluster_providers_gcp (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer,
    num_nodes integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status_reason text,
    gcp_project_id VARCHAR(255) NOT NULL,
    zone VARCHAR(255) NOT NULL,
    machine_type VARCHAR(255),
    operation_id VARCHAR(255),
    endpoint VARCHAR(255),
    encrypted_access_token text,
    encrypted_access_token_iv VARCHAR(255),
    legacy_abac bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.cluster_providers_gcp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters (
    id integer NOT NULL,
    user_id integer,
    provider_type integer,
    platform_type integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    enabled bit DEFAULT 1,
    name VARCHAR(255) NOT NULL,
    environment_scope VARCHAR(255) DEFAULT '*' NOT NULL,
    cluster_type smallint DEFAULT 3 NOT NULL,
    domain VARCHAR(255),
    managed bit DEFAULT 1 NOT NULL
);

CREATE TABLE dbo.clusters_applications_cert_managers (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer NOT NULL,
    version VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status_reason text
);

CREATE SEQUENCE dbo.clusters_applications_cert_managers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_applications_helm (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status integer NOT NULL,
    version VARCHAR(255) NOT NULL,
    status_reason text,
    encrypted_ca_key_base text,
    encrypted_ca_key_iv text,
    ca_cert text
);

CREATE SEQUENCE dbo.clusters_applications_helm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_applications_ingress (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status integer NOT NULL,
    ingress_type integer NOT NULL,
    version VARCHAR(255) NOT NULL,
    cluster_ip VARCHAR(255),
    status_reason text,
    external_ip VARCHAR(255),
    external_hostname VARCHAR(255)
);

CREATE SEQUENCE dbo.clusters_applications_ingress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_applications_jupyter (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    oauth_application_id integer,
    status integer NOT NULL,
    version VARCHAR(255) NOT NULL,
    hostname VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status_reason text
);

CREATE SEQUENCE dbo.clusters_applications_jupyter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_applications_knative (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status integer NOT NULL,
    version VARCHAR(255) NOT NULL,
    hostname VARCHAR(255),
    status_reason text,
    external_ip VARCHAR(255),
    external_hostname VARCHAR(255)
);

CREATE SEQUENCE dbo.clusters_applications_knative_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_applications_prometheus (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer NOT NULL,
    version VARCHAR(255) NOT NULL,
    status_reason text,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.clusters_applications_prometheus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_applications_runners (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    runner_id integer,
    status integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    version VARCHAR(255) NOT NULL,
    status_reason text,
    privileged bit DEFAULT 1 NOT NULL
);

CREATE SEQUENCE dbo.clusters_applications_runners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE dbo.clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.clusters_kubernetes_namespaces (
    id bigint NOT NULL,
    cluster_id integer NOT NULL,
    project_id integer,
    cluster_project_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    encrypted_service_account_token text,
    encrypted_service_account_token_iv VARCHAR(255),
    namespace VARCHAR(255) NOT NULL,
    service_account_name VARCHAR(255)
);

CREATE SEQUENCE dbo.clusters_kubernetes_namespaces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.container_repositories (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.container_repositories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.conversational_development_index_metrics (
    id integer NOT NULL,
    leader_issues double precision NOT NULL,
    instance_issues double precision NOT NULL,
    leader_notes double precision NOT NULL,
    instance_notes double precision NOT NULL,
    leader_milestones double precision NOT NULL,
    instance_milestones double precision NOT NULL,
    leader_boards double precision NOT NULL,
    instance_boards double precision NOT NULL,
    leader_merge_requests double precision NOT NULL,
    instance_merge_requests double precision NOT NULL,
    leader_ci_pipelines double precision NOT NULL,
    instance_ci_pipelines double precision NOT NULL,
    leader_environments double precision NOT NULL,
    instance_environments double precision NOT NULL,
    leader_deployments double precision NOT NULL,
    instance_deployments double precision NOT NULL,
    leader_projects_prometheus_active double precision NOT NULL,
    instance_projects_prometheus_active double precision NOT NULL,
    leader_service_desk_issues double precision NOT NULL,
    instance_service_desk_issues double precision NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    percentage_boards double precision DEFAULT 0.0 NOT NULL,
    percentage_ci_pipelines double precision DEFAULT 0.0 NOT NULL,
    percentage_deployments double precision DEFAULT 0.0 NOT NULL,
    percentage_environments double precision DEFAULT 0.0 NOT NULL,
    percentage_issues double precision DEFAULT 0.0 NOT NULL,
    percentage_merge_requests double precision DEFAULT 0.0 NOT NULL,
    percentage_milestones double precision DEFAULT 0.0 NOT NULL,
    percentage_notes double precision DEFAULT 0.0 NOT NULL,
    percentage_projects_prometheus_active double precision DEFAULT 0.0 NOT NULL,
    percentage_service_desk_issues double precision DEFAULT 0.0 NOT NULL
);

CREATE SEQUENCE dbo.conversational_development_index_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.deploy_keys_projects (
    id integer NOT NULL,
    deploy_key_id integer NOT NULL,
    project_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    can_push bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.deploy_keys_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.deploy_tokens (
    id integer NOT NULL,
    revoked bit DEFAULT 0,
    read_repository bit DEFAULT 0 NOT NULL,
    read_registry bit DEFAULT 0 NOT NULL,
    expires_at datetime  NOT NULL,
    created_at datetime  NOT NULL,
    name VARCHAR(255) NOT NULL,
    token VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.deploy_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.deployments (
    id integer NOT NULL,
    iid integer NOT NULL,
    project_id integer NOT NULL,
    environment_id integer NOT NULL,
    ref VARCHAR(255) NOT NULL,
    tag bit NOT NULL,
    sha VARCHAR(255) NOT NULL,
    user_id integer,
    deployable_id integer,
    deployable_type VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    on_stop VARCHAR(255),
    status smallint NOT NULL,
    finished_at datetime 
);

CREATE SEQUENCE dbo.deployments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.emails (
    id integer NOT NULL,
    user_id integer NOT NULL,
    email VARCHAR(255) NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    confirmation_token VARCHAR(255),
    confirmed_at datetime ,
    confirmation_sent_at datetime 
);

CREATE SEQUENCE dbo.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.environments (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    external_url VARCHAR(255),
    environment_type VARCHAR(255),
    state VARCHAR(255) DEFAULT 'available' NOT NULL,
    slug VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.environments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.events (
    id integer NOT NULL,
    project_id integer,
    author_id integer NOT NULL,
    target_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    action smallint NOT NULL,
    target_type VARCHAR(255)
);

CREATE SEQUENCE dbo.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.feature_gates (
    id integer NOT NULL,
    feature_key_base VARCHAR(255) NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.feature_gates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.features (
    id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.fork_network_members (
    id integer NOT NULL,
    fork_network_id integer NOT NULL,
    project_id integer NOT NULL,
    forked_from_project_id integer
);

CREATE SEQUENCE dbo.fork_network_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.fork_networks (
    id integer NOT NULL,
    root_project_id integer,
    deleted_root_project_name VARCHAR(255)
);

CREATE SEQUENCE dbo.fork_networks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.forked_project_links (
    id integer NOT NULL,
    forked_to_project_id integer NOT NULL,
    forked_from_project_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.forked_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.gpg_key_subkeys (
    id integer NOT NULL,
    gpg_key_id integer NOT NULL,
    keyid VARBINARY(100),
    fingerprint VARBINARY(100)
);

CREATE SEQUENCE dbo.gpg_key_subkeys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.gpg_keys (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer,
    primary_keyid VARBINARY(100),
    fingerprint VARBINARY(100),
    key_base text
);

CREATE SEQUENCE dbo.gpg_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.gpg_signatures (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    project_id integer,
    gpg_key_id integer,
    commit_sha VARBINARY(100),
    gpg_key_primary_keyid VARBINARY(100),
    gpg_key_user_name text,
    gpg_key_user_email text,
    verification_status smallint DEFAULT 0 NOT NULL,
    gpg_key_subkey_id integer
);

CREATE SEQUENCE dbo.gpg_signatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.group_custom_attributes (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    group_id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.group_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.identities (
    id integer NOT NULL,
    extern_uid VARCHAR(255),
    provider VARCHAR(255),
    user_id integer,
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.identities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.import_export_uploads (
    id integer NOT NULL,
    updated_at datetime  NOT NULL,
    project_id integer,
    import_file text,
    export_file text
);

CREATE SEQUENCE dbo.import_export_uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.internal_ids (
    id bigint NOT NULL,
    project_id integer,
    usage integer NOT NULL,
    last_value integer NOT NULL,
    namespace_id integer
);

CREATE SEQUENCE dbo.internal_ids_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.issue_assignees (
    user_id integer NOT NULL,
    issue_id integer NOT NULL
);

CREATE TABLE dbo.issue_metrics (
    id integer NOT NULL,
    issue_id integer NOT NULL,
    first_mentioned_in_commit_at datetime ,
    first_associated_with_milestone_at datetime ,
    first_added_to_board_at datetime ,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.issue_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.issues (
    id integer NOT NULL,
    title VARCHAR(255),
    author_id integer,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    description text,
    milestone_id integer,
    state VARCHAR(255),
    iid integer,
    updated_by_id integer,
    confidential bit DEFAULT 0 NOT NULL,
    due_date date,
    moved_to_id integer,
    lock_version integer,
    title_html text,
    description_html text,
    time_estimate integer,
    relative_position integer,
    cached_markdown_version integer,
    last_edited_at datetime ,
    last_edited_by_id integer,
    discussion_locked bit,
    closed_at datetime ,
    closed_by_id integer,
    state_id smallint
);

CREATE SEQUENCE dbo.issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.keys (
    id integer NOT NULL,
    user_id integer,
    created_at datetime ,
    updated_at datetime ,
    key_base text,
    title VARCHAR(255),
    type VARCHAR(255),
    fingerprint VARCHAR(255),
    dbo bit DEFAULT 0 NOT NULL,
    last_used_at datetime 
);

CREATE SEQUENCE dbo.keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.label_links (
    id integer NOT NULL,
    label_id integer,
    target_id integer,
    target_type VARCHAR(255),
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.label_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.label_priorities (
    id integer NOT NULL,
    project_id integer NOT NULL,
    label_id integer NOT NULL,
    priority integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.label_priorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.labels (
    id integer NOT NULL,
    title VARCHAR(255),
    color VARCHAR(255),
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    template bit DEFAULT 0,
    description VARCHAR(255),
    description_html text,
    type VARCHAR(255),
    group_id integer,
    cached_markdown_version integer
);

CREATE SEQUENCE dbo.labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.lfs_file_locks (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at datetime  NOT NULL,
    path VARCHAR(511)
);

CREATE SEQUENCE dbo.lfs_file_locks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.lfs_objects (
    id integer NOT NULL,
    oid VARCHAR(255) NOT NULL,
    size bigint NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    file_base VARCHAR(255),
    file_store integer
);

CREATE SEQUENCE dbo.lfs_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.lfs_objects_projects (
    id integer NOT NULL,
    lfs_object_id integer NOT NULL,
    project_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.lfs_objects_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.lists (
    id integer NOT NULL,
    board_id integer NOT NULL,
    label_id integer,
    list_type integer DEFAULT 1 NOT NULL,
    [position] integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.members (
    id integer NOT NULL,
    access_level integer NOT NULL,
    source_id integer NOT NULL,
    source_type VARCHAR(255) NOT NULL,
    user_id integer,
    notification_level integer NOT NULL,
    type VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    created_by_id integer,
    invite_email VARCHAR(255),
    invite_token VARCHAR(255),
    invite_accepted_at datetime ,
    requested_at datetime ,
    expires_at date
);

CREATE SEQUENCE dbo.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.merge_request_assignees (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    merge_request_id integer NOT NULL
);

CREATE SEQUENCE dbo.merge_request_assignees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.merge_request_blocks (
    id bigint NOT NULL,
    blocking_merge_request_id integer NOT NULL,
    blocked_merge_request_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.merge_request_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.merge_request_diff_commits (
    authored_date datetime ,
    committed_date datetime ,
    merge_request_diff_id integer NOT NULL,
    relative_order integer NOT NULL,
    sha VARBINARY(100) NOT NULL,
    author_name text,
    author_email text,
    committer_name text,
    committer_email text,
    message text
);

CREATE TABLE dbo.merge_request_diff_files (
    merge_request_diff_id integer NOT NULL,
    relative_order integer NOT NULL,
    new_file bit NOT NULL,
    renamed_file bit NOT NULL,
    deleted_file bit NOT NULL,
    too_large bit NOT NULL,
    a_mode VARCHAR(255) NOT NULL,
    b_mode VARCHAR(255) NOT NULL,
    new_path text NOT NULL,
    old_path text NOT NULL,
    diff text,
    [binary] bit,
    external_diff_offset integer,
    external_diff_size integer
);

CREATE TABLE dbo.merge_request_diffs (
    id integer NOT NULL,
    state VARCHAR(255),
    merge_request_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    base_commit_sha VARCHAR(255),
    real_size VARCHAR(255),
    head_commit_sha VARCHAR(255),
    start_commit_sha VARCHAR(255),
    commits_count integer,
    external_diff VARCHAR(255),
    external_diff_store integer,
    stored_externally bit
);

CREATE SEQUENCE dbo.merge_request_diffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.merge_request_metrics (
    id integer NOT NULL,
    merge_request_id integer NOT NULL,
    latest_build_started_at datetime ,
    latest_build_finished_at datetime ,
    first_deployed_to_production_at datetime ,
    merged_at datetime ,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    pipeline_id integer,
    merged_by_id integer,
    latest_closed_by_id integer,
    latest_closed_at datetime 
);

CREATE SEQUENCE dbo.merge_request_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.merge_requests (
    id integer NOT NULL,
    target_branch VARCHAR(255) NOT NULL,
    source_branch VARCHAR(255) NOT NULL,
    source_project_id integer,
    author_id integer,
    assignee_id integer,
    title VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    milestone_id integer,
    state VARCHAR(255) DEFAULT 'opened' NOT NULL,
    merge_status VARCHAR(255) DEFAULT 'unchecked' NOT NULL,
    target_project_id integer NOT NULL,
    iid integer,
    description text,
    updated_by_id integer,
    merge_error text,
    merge_params text,
    merge_when_pipeline_succeeds bit DEFAULT 0 NOT NULL,
    merge_user_id integer,
    merge_commit_sha VARCHAR(255),
    in_progress_merge_commit_sha VARCHAR(255),
    lock_version integer,
    title_html text,
    description_html text,
    time_estimate integer,
    cached_markdown_version integer,
    last_edited_at datetime ,
    last_edited_by_id integer,
    head_pipeline_id integer,
    merge_jid VARCHAR(255),
    discussion_locked bit,
    latest_merge_request_diff_id integer,
    rebase_commit_sha VARCHAR(255),
    squash bit DEFAULT 0 NOT NULL,
    allow_maintainer_to_push bit,
    state_id smallint
);

CREATE TABLE dbo.merge_requests_closing_issues (
    id integer NOT NULL,
    merge_request_id integer NOT NULL,
    issue_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.merge_requests_closing_issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE dbo.merge_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.merge_trains (
    id bigint NOT NULL,
    merge_request_id integer NOT NULL,
    user_id integer NOT NULL,
    pipeline_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    target_project_id integer NOT NULL,
    target_branch text NOT NULL
);

CREATE SEQUENCE dbo.merge_trains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.milestones (
    id integer NOT NULL,
    title VARCHAR(255) NOT NULL,
    project_id integer,
    description text,
    due_date date,
    created_at datetime ,
    updated_at datetime ,
    state VARCHAR(255),
    iid integer,
    title_html text,
    description_html text,
    start_date date,
    cached_markdown_version integer,
    group_id integer
);

CREATE SEQUENCE dbo.milestones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.namespaces (
    id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    path VARCHAR(255) NOT NULL,
    owner_id integer,
    created_at datetime ,
    updated_at datetime ,
    type VARCHAR(255),
    description VARCHAR(255) DEFAULT '' NOT NULL,
    avatar VARCHAR(255),
    share_with_group_lock bit DEFAULT 0,
    visibility_level integer DEFAULT 20 NOT NULL,
    request_access_enabled bit DEFAULT 0 NOT NULL,
    description_html text,
    lfs_enabled bit,
    parent_id integer,
    require_two_factor_authentication bit DEFAULT 0 NOT NULL,
    two_factor_grace_period integer DEFAULT 48 NOT NULL,
    cached_markdown_version integer,
    runners_token VARCHAR(255),
    runners_token_encrypted VARCHAR(255),
    project_creation_level integer,
    auto_devops_enabled bit,
    last_ci_minutes_notification_at datetime 
);

CREATE SEQUENCE dbo.namespaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.note_diff_files (
    id integer NOT NULL,
    diff_note_id integer NOT NULL,
    diff text NOT NULL,
    new_file bit NOT NULL,
    renamed_file bit NOT NULL,
    deleted_file bit NOT NULL,
    a_mode VARCHAR(255) NOT NULL,
    b_mode VARCHAR(255) NOT NULL,
    new_path text NOT NULL,
    old_path text NOT NULL
);

CREATE SEQUENCE dbo.note_diff_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.notes (
    id integer NOT NULL,
    note text,
    noteable_type VARCHAR(255),
    author_id integer,
    created_at datetime ,
    updated_at datetime ,
    project_id integer,
    attachment VARCHAR(255),
    line_code VARCHAR(255),
    commit_id VARCHAR(255),
    noteable_id integer,
    system bit DEFAULT 0 NOT NULL,
    st_diff text,
    updated_by_id integer,
    type VARCHAR(255),
    [position] text,
    original_position text,
    resolved_at datetime ,
    resolved_by_id integer,
    discussion_id VARCHAR(255),
    note_html text,
    cached_markdown_version integer,
    change_position text,
    resolved_by_push bit
);

CREATE SEQUENCE dbo.notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.notification_settings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    source_id integer,
    source_type VARCHAR(255),
    level integer DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    new_note bit,
    new_issue bit,
    reopen_issue bit,
    close_issue bit,
    reassign_issue bit,
    new_merge_request bit,
    reopen_merge_request bit,
    close_merge_request bit,
    reassign_merge_request bit,
    merge_merge_request bit,
    failed_pipeline bit,
    success_pipeline bit,
    push_to_merge_request bit,
    issue_due bit,
    notification_email VARCHAR(255)
);

CREATE SEQUENCE dbo.notification_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_access_grants (
    id integer NOT NULL,
    resource_owner_id integer NOT NULL,
    application_id integer NOT NULL,
    token VARCHAR(255) NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    created_at datetime  NOT NULL,
    revoked_at datetime ,
    scopes VARCHAR(255)
);

CREATE SEQUENCE dbo.oauth_access_grants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_access_tokens (
    id integer NOT NULL,
    resource_owner_id integer,
    application_id integer,
    token VARCHAR(255) NOT NULL,
    refresh_token VARCHAR(255),
    expires_in integer,
    revoked_at datetime ,
    created_at datetime  NOT NULL,
    scopes VARCHAR(255)
);

CREATE SEQUENCE dbo.oauth_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_applications (
    id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    uid VARCHAR(255) NOT NULL,
    secret VARCHAR(255) NOT NULL,
    redirect_uri text NOT NULL,
    scopes VARCHAR(255) DEFAULT '' NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    owner_id integer,
    owner_type VARCHAR(255),
    trusted bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.oauth_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.oauth_openid_requests (
    id integer NOT NULL,
    access_grant_id integer NOT NULL,
    nonce VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.oauth_openid_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.pages_domain_acme_orders (
    id bigint NOT NULL,
    pages_domain_id integer NOT NULL,
    expires_at datetime  NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    url VARCHAR(255) NOT NULL,
    challenge_token VARCHAR(255) NOT NULL,
    challenge_file_content text NOT NULL,
    encrypted_private_key_base text NOT NULL,
    encrypted_private_key_iv text NOT NULL
);

CREATE SEQUENCE dbo.pages_domain_acme_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.pages_domains (
    id integer NOT NULL,
    project_id integer,
    certificate text,
    encrypted_key_base text,
    encrypted_key_iv VARCHAR(255),
    encrypted_key_salt VARCHAR(255),
    domain VARCHAR(255),
    verified_at datetime ,
    verification_code VARCHAR(255) NOT NULL,
    enabled_until datetime ,
    remove_at datetime ,
    auto_ssl_enabled bit DEFAULT 0 NOT NULL,
    certificate_valid_not_before datetime ,
    certificate_valid_not_after datetime 
);

CREATE SEQUENCE dbo.pages_domains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.personal_access_tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    revoked bit DEFAULT 0,
    expires_at date,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    scopes VARCHAR(255),
    impersonation bit DEFAULT 0 NOT NULL,
    token_digest VARCHAR(255)
);

CREATE SEQUENCE dbo.personal_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.pool_repositories (
    id bigint NOT NULL,
    shard_id integer NOT NULL,
    disk_path VARCHAR(255),
    state VARCHAR(255),
    source_project_id integer
);

CREATE SEQUENCE dbo.pool_repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.programming_languages (
    id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.programming_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_authorizations (
    user_id integer NOT NULL,
    project_id integer NOT NULL,
    access_level integer NOT NULL
);

CREATE TABLE dbo.project_auto_devops (
    id integer NOT NULL,
    project_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    enabled bit,
    deploy_strategy integer DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.project_auto_devops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_ci_cd_settings (
    id integer NOT NULL,
    project_id integer NOT NULL,
    group_runners_enabled bit DEFAULT 1 NOT NULL,
    merge_pipelines_enabled bit,
    merge_trains_enabled bit DEFAULT 0 NOT NULL,
    default_git_depth integer
);

CREATE SEQUENCE dbo.project_ci_cd_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_custom_attributes (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    project_id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.project_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_daily_statistics (
    id bigint NOT NULL,
    project_id integer NOT NULL,
    fetch_count integer NOT NULL,
    date date
);

CREATE SEQUENCE dbo.project_daily_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_deploy_tokens (
    id integer NOT NULL,
    project_id integer NOT NULL,
    deploy_token_id integer NOT NULL,
    created_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.project_deploy_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_error_tracking_settings (
    project_id integer NOT NULL,
    enabled bit DEFAULT 0 NOT NULL,
    api_url VARCHAR(255),
    encrypted_token VARCHAR(255),
    encrypted_token_iv VARCHAR(255),
    project_name VARCHAR(255),
    organization_name VARCHAR(255)
);

CREATE TABLE dbo.project_features (
    id integer NOT NULL,
    project_id integer NOT NULL,
    merge_requests_access_level integer,
    issues_access_level integer,
    wiki_access_level integer,
    snippets_access_level integer DEFAULT 20 NOT NULL,
    builds_access_level integer,
    created_at datetime ,
    updated_at datetime ,
    repository_access_level integer DEFAULT 20 NOT NULL,
    pages_access_level integer DEFAULT 20 NOT NULL
);

CREATE SEQUENCE dbo.project_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_group_links (
    id integer NOT NULL,
    project_id integer NOT NULL,
    group_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    group_access integer DEFAULT 30 NOT NULL,
    expires_at date
);

CREATE SEQUENCE dbo.project_group_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_import_data (
    id integer NOT NULL,
    project_id integer,
    data text,
    encrypted_credentials text,
    encrypted_credentials_iv VARCHAR(255),
    encrypted_credentials_salt VARCHAR(255)
);

CREATE SEQUENCE dbo.project_import_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_metrics_settings (
    project_id integer NOT NULL,
    external_dashboard_url VARCHAR(255) NOT NULL
);

CREATE TABLE dbo.project_mirror_data (
    id integer NOT NULL,
    project_id integer NOT NULL,
    status VARCHAR(255),
    jid VARCHAR(255),
    last_error text
);

CREATE SEQUENCE dbo.project_mirror_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_repositories (
    id bigint NOT NULL,
    shard_id integer NOT NULL,
    disk_path VARCHAR(255) NOT NULL,
    project_id integer NOT NULL
);

CREATE SEQUENCE dbo.project_repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.project_statistics (
    id integer NOT NULL,
    project_id integer NOT NULL,
    namespace_id integer NOT NULL,
    commit_count bigint DEFAULT 0 NOT NULL,
    storage_size bigint DEFAULT 0 NOT NULL,
    repository_size bigint DEFAULT 0 NOT NULL,
    lfs_objects_size bigint DEFAULT 0 NOT NULL,
    build_artifacts_size bigint DEFAULT 0 NOT NULL,
    packages_size bigint DEFAULT 0 NOT NULL,
    wiki_size bigint
);

CREATE SEQUENCE dbo.project_statistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.projects (
    id integer NOT NULL,
    name VARCHAR(255),
    path VARCHAR(255),
    description text,
    created_at datetime ,
    updated_at datetime ,
    creator_id integer,
    namespace_id integer NOT NULL,
    last_activity_at datetime ,
    import_url VARCHAR(255),
    visibility_level integer DEFAULT 0 NOT NULL,
    archived bit DEFAULT 0 NOT NULL,
    avatar VARCHAR(255),
    import_status VARCHAR(255),
    star_count integer DEFAULT 0 NOT NULL,
    import_type VARCHAR(255),
    import_source VARCHAR(255),
    import_error text,
    shared_runners_enabled bit DEFAULT 1 NOT NULL,
    runners_token VARCHAR(255),
    build_coverage_regex VARCHAR(255),
    build_allow_git_fetch bit DEFAULT 1 NOT NULL,
    build_timeout integer DEFAULT 3600 NOT NULL,
    pending_delete bit DEFAULT 0,
    dbo_builds bit DEFAULT 1 NOT NULL,
    last_repository_check_failed bit,
    last_repository_check_at datetime ,
    container_registry_enabled bit,
    only_allow_merge_if_pipeline_succeeds bit DEFAULT 0 NOT NULL,
    has_external_issue_tracker bit,
    repository_storage VARCHAR(255) DEFAULT 'default' NOT NULL,
    request_access_enabled bit DEFAULT 0 NOT NULL,
    has_external_wiki bit,
    ci_config_path VARCHAR(255),
    lfs_enabled bit,
    description_html text,
    only_allow_merge_if_all_discussions_are_resolved bit,
    printing_merge_request_link_enabled bit DEFAULT 1 NOT NULL,
    auto_cancel_pending_pipelines integer DEFAULT 1 NOT NULL,
    import_jid VARCHAR(255),
    cached_markdown_version integer,
    delete_error text,
    last_repository_updated_at datetime ,
    storage_version smallint,
    resolve_outdated_diff_discussions bit,
    repository_read_only bit,
    merge_requests_ff_only_enabled bit DEFAULT 0,
    merge_requests_rebase_enabled bit DEFAULT 0 NOT NULL,
    jobs_cache_index integer,
    pages_https_only bit DEFAULT 1,
    remote_mirror_available_overridden bit,
    pool_repository_id bigint,
    runners_token_encrypted VARCHAR(255),
    bfg_object_map VARCHAR(255),
    detected_repository_languages bit,
    external_authorization_classification_label VARCHAR(255)
);

CREATE SEQUENCE dbo.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.prometheus_metrics (
    id integer NOT NULL,
    project_id integer,
    title VARCHAR(255) NOT NULL,
    query VARCHAR(255) NOT NULL,
    y_label VARCHAR(255),
    unit VARCHAR(255),
    legend VARCHAR(255),
    [group] integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    common bit DEFAULT 0 NOT NULL,
    identifier VARCHAR(255)
);

CREATE SEQUENCE dbo.prometheus_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.protected_branch_merge_access_levels (
    id integer NOT NULL,
    protected_branch_id integer NOT NULL,
    access_level integer DEFAULT 40 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.protected_branch_merge_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.protected_branch_push_access_levels (
    id integer NOT NULL,
    protected_branch_id integer NOT NULL,
    access_level integer DEFAULT 40 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.protected_branch_push_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.protected_branches (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at datetime ,
    updated_at datetime 
);

CREATE SEQUENCE dbo.protected_branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.protected_tag_create_access_levels (
    id integer NOT NULL,
    protected_tag_id integer NOT NULL,
    access_level integer DEFAULT 40,
    user_id integer,
    group_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.protected_tag_create_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.protected_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.protected_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.push_event_payloads (
    commit_count bigint NOT NULL,
    event_id integer NOT NULL,
    action smallint NOT NULL,
    ref_type smallint NOT NULL,
    commit_from VARBINARY(100),
    commit_to VARBINARY(100),
    ref text,
    commit_title VARCHAR(70)
);

CREATE TABLE dbo.redirect_routes (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type VARCHAR(255) NOT NULL,
    path VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.redirect_routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.release_links (
    id bigint NOT NULL,
    release_id integer NOT NULL,
    url VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.release_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.releases (
    id integer NOT NULL,
    tag VARCHAR(255),
    description text,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    description_html text,
    cached_markdown_version integer,
    author_id integer,
    name VARCHAR(255),
    sha VARCHAR(255)
);

CREATE SEQUENCE dbo.releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.remote_mirrors (
    id integer NOT NULL,
    project_id integer,
    url VARCHAR(255),
    enabled bit DEFAULT 0,
    update_status VARCHAR(255),
    last_update_at datetime ,
    last_successful_update_at datetime ,
    last_update_started_at datetime ,
    last_error VARCHAR(255),
    only_protected_branches bit DEFAULT 0 NOT NULL,
    remote_name VARCHAR(255),
    encrypted_credentials text,
    encrypted_credentials_iv VARCHAR(255),
    encrypted_credentials_salt VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    error_notification_sent bit
);

CREATE SEQUENCE dbo.remote_mirrors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.repository_languages (
    project_id integer NOT NULL,
    programming_language_id integer NOT NULL,
    share double precision NOT NULL
);

CREATE TABLE dbo.resource_label_events (
    id bigint NOT NULL,
    action integer NOT NULL,
    issue_id integer,
    merge_request_id integer,
    label_id integer,
    user_id integer,
    created_at datetime  NOT NULL,
    cached_markdown_version integer,
    reference text,
    reference_html text
);

CREATE SEQUENCE dbo.resource_label_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.routes (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type VARCHAR(255) NOT NULL,
    path VARCHAR(255) NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    name VARCHAR(255)
);

CREATE SEQUENCE dbo.routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.schema_migrations (
    version VARCHAR(255) NOT NULL
);

CREATE TABLE dbo.sent_notifications (
    id integer NOT NULL,
    project_id integer,
    noteable_id integer,
    noteable_type VARCHAR(255),
    recipient_id integer,
    commit_id VARCHAR(255),
    reply_key_base VARCHAR(255) NOT NULL,
    line_code VARCHAR(255),
    note_type VARCHAR(255),
    [position] text,
    in_reply_to_discussion_id VARCHAR(255)
);

CREATE SEQUENCE dbo.sent_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.services (
    id integer NOT NULL,
    type VARCHAR(255),
    title VARCHAR(255),
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    active bit DEFAULT 0 NOT NULL,
    properties text,
    template bit DEFAULT 0,
    push_events bit DEFAULT 1,
    issues_events bit DEFAULT 1,
    merge_requests_events bit DEFAULT 1,
    tag_push_events bit DEFAULT 1,
    note_events bit DEFAULT 1 NOT NULL,
    category VARCHAR(255) DEFAULT 'common' NOT NULL,
    [default] bit DEFAULT 0,
    wiki_page_events bit DEFAULT 1,
    pipeline_events bit DEFAULT 0 NOT NULL,
    confidential_issues_events bit DEFAULT 1 NOT NULL,
    commit_events bit DEFAULT 1 NOT NULL,
    job_events bit DEFAULT 0 NOT NULL,
    confidential_note_events bit DEFAULT 1,
    deployment_events bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.shards (
    id integer NOT NULL,
    name VARCHAR(255) NOT NULL
);

CREATE SEQUENCE dbo.shards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.snippets (
    id integer NOT NULL,
    title VARCHAR(255),
    content text,
    author_id integer NOT NULL,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    file_name VARCHAR(255),
    type VARCHAR(255),
    visibility_level integer DEFAULT 0 NOT NULL,
    title_html text,
    content_html text,
    cached_markdown_version integer,
    description text,
    description_html text
);

CREATE SEQUENCE dbo.snippets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.spam_logs (
    id integer NOT NULL,
    user_id integer,
    source_ip VARCHAR(255),
    user_agent VARCHAR(255),
    via_api bit,
    noteable_type VARCHAR(255),
    title VARCHAR(255),
    description text,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    submitted_as_ham bit DEFAULT 0 NOT NULL,
    recaptcha_verified bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.spam_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.subscriptions (
    id integer NOT NULL,
    user_id integer,
    subscribable_id integer,
    subscribable_type VARCHAR(255),
    subscribed bit,
    created_at datetime ,
    updated_at datetime ,
    project_id integer
);

CREATE SEQUENCE dbo.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.suggestions (
    id bigint NOT NULL,
    note_id integer NOT NULL,
    relative_order smallint NOT NULL,
    applied bit DEFAULT 0 NOT NULL,
    commit_id VARCHAR(255),
    from_content text NOT NULL,
    to_content text NOT NULL,
    lines_above integer DEFAULT 0 NOT NULL,
    lines_below integer DEFAULT 0 NOT NULL,
    outdated bit DEFAULT 0 NOT NULL
);

CREATE SEQUENCE dbo.suggestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.system_note_metadata (
    id integer NOT NULL,
    note_id integer NOT NULL,
    commit_count integer,
    action VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.system_note_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type VARCHAR(255),
    tagger_id integer,
    tagger_type VARCHAR(255),
    context VARCHAR(255),
    created_at datetime 
);

CREATE SEQUENCE dbo.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.tags (
    id integer NOT NULL,
    name VARCHAR(255),
    taggings_count integer DEFAULT 0
);

CREATE SEQUENCE dbo.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.term_agreements (
    id integer NOT NULL,
    term_id integer NOT NULL,
    user_id integer NOT NULL,
    accepted bit DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.term_agreements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.timelogs (
    id integer NOT NULL,
    time_spent integer NOT NULL,
    user_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    issue_id integer,
    merge_request_id integer,
    spent_at datetime 
);

CREATE SEQUENCE dbo.timelogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.todos (
    id integer NOT NULL,
    user_id integer NOT NULL,
    project_id integer,
    target_id integer,
    target_type VARCHAR(255) NOT NULL,
    author_id integer NOT NULL,
    action integer NOT NULL,
    state VARCHAR(255) NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    note_id integer,
    commit_id VARCHAR(255),
    group_id integer
);

CREATE SEQUENCE dbo.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.trending_projects (
    id integer NOT NULL,
    project_id integer NOT NULL
);

CREATE SEQUENCE dbo.trending_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.u2f_registrations (
    id integer NOT NULL,
    certificate text,
    key_handle VARCHAR(255),
    dbo_key_base VARCHAR(255),
    counter integer,
    user_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    name VARCHAR(255)
);

CREATE SEQUENCE dbo.u2f_registrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.uploads (
    id integer NOT NULL,
    size bigint NOT NULL,
    path VARCHAR(511) NOT NULL,
    checksum VARCHAR(64),
    model_id integer,
    model_type VARCHAR(255),
    uploader VARCHAR(255) NOT NULL,
    created_at datetime  NOT NULL,
    mount_point VARCHAR(255),
    secret VARCHAR(255),
    store integer
);

CREATE SEQUENCE dbo.uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
CREATE TABLE dbo.user_agent_details (
    id integer NOT NULL,
    user_agent VARCHAR(255) NOT NULL,
    ip_address VARCHAR(255) NOT NULL,
    subject_id integer NOT NULL,
    subject_type VARCHAR(255) NOT NULL,
    submitted bit DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);
CREATE SEQUENCE dbo.user_agent_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.user_callouts (
    id integer NOT NULL,
    feature_name integer NOT NULL,
    user_id integer NOT NULL
);
CREATE SEQUENCE dbo.user_callouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.user_custom_attributes (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer NOT NULL,
    key_base VARCHAR(255) NOT NULL,
    value VARCHAR(255) NOT NULL
);
CREATE SEQUENCE dbo.user_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.user_interacted_projects (
    user_id integer NOT NULL,
    project_id integer NOT NULL
);
CREATE TABLE dbo.user_preferences (
    id integer NOT NULL,
    user_id integer NOT NULL,
    issue_notes_filter smallint DEFAULT 0 NOT NULL,
    merge_request_notes_filter smallint DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    first_day_of_week integer,
    issues_sort VARCHAR(255),
    merge_requests_sort VARCHAR(255),
    timezone VARCHAR(255),
    time_display_relative bit,
    time_format_in_24h bit
);
CREATE SEQUENCE dbo.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.user_statuses (
    user_id integer NOT NULL,
    cached_markdown_version integer,
    emoji VARCHAR(255) DEFAULT 'speech_balloon' NOT NULL,
    message VARCHAR(100),
    message_html VARCHAR(255)
);
CREATE SEQUENCE dbo.user_statuses_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.user_synced_attributes_metadata (
    id integer NOT NULL,
    name_synced bit DEFAULT 0,
    email_synced bit DEFAULT 0,
    location_synced bit DEFAULT 0,
    user_id integer NOT NULL,
    provider VARCHAR(255)
);
CREATE SEQUENCE dbo.user_synced_attributes_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.users (
    id integer NOT NULL,
    email VARCHAR(255) DEFAULT '' NOT NULL,
    encrypted_password VARCHAR(255) DEFAULT '' NOT NULL,
    reset_password_token VARCHAR(255),
    reset_password_sent_at datetime ,
    remember_created_at datetime ,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at datetime ,
    last_sign_in_at datetime ,
    current_sign_in_ip VARCHAR(255),
    last_sign_in_ip VARCHAR(255),
    created_at datetime ,
    updated_at datetime ,
    name VARCHAR(255),
    admin bit DEFAULT 0 NOT NULL,
    projects_limit integer NOT NULL,
    skype VARCHAR(255) DEFAULT '' NOT NULL,
    linkedin VARCHAR(255) DEFAULT '' NOT NULL,
    twitter VARCHAR(255) DEFAULT '' NOT NULL,
    bio VARCHAR(255),
    failed_attempts integer DEFAULT 0,
    locked_at datetime ,
    username VARCHAR(255),
    can_create_group bit DEFAULT 1 NOT NULL,
    can_create_team bit DEFAULT 1 NOT NULL,
    state VARCHAR(255),
    color_scheme_id integer DEFAULT 1 NOT NULL,
    password_expires_at datetime ,
    created_by_id integer,
    last_credential_check_at datetime ,
    avatar VARCHAR(255),
    confirmation_token VARCHAR(255),
    confirmed_at datetime ,
    confirmation_sent_at datetime ,
    unconfirmed_email VARCHAR(255),
    hide_no_ssh_key_base bit DEFAULT 0,
    website_url VARCHAR(255) DEFAULT '' NOT NULL,
    notification_email VARCHAR(255),
    hide_no_password bit DEFAULT 0,
    password_automatically_set bit DEFAULT 0,
    location VARCHAR(255),
    encrypted_otp_secret VARCHAR(255),
    encrypted_otp_secret_iv VARCHAR(255),
    encrypted_otp_secret_salt VARCHAR(255),
    otp_required_for_login bit DEFAULT 0 NOT NULL,
    otp_backup_codes text,
    dbo_email VARCHAR(255) DEFAULT '' NOT NULL,
    dashboard integer DEFAULT 0,
    project_view integer DEFAULT 0,
    consumed_timestep integer,
    layout integer DEFAULT 0,
    hide_project_limit bit DEFAULT 0,
    unlock_token VARCHAR(255),
    otp_grace_period_started_at datetime ,
    external_base bit DEFAULT 0,
    incoming_email_token VARCHAR(255),
    organization VARCHAR(255),
    require_two_factor_authentication_from_group bit DEFAULT 0 NOT NULL,
    two_factor_grace_period integer DEFAULT 48 NOT NULL,
    ghost bit,
    last_activity_on date,
    notified_of_own_activity bit,
    preferred_language VARCHAR(255),
    theme_id smallint,
    accepted_term_id integer,
    feed_token VARCHAR(255),
    private_profile bit,
    include_private_contributions bit,
    commit_email VARCHAR(255)
);
CREATE SEQUENCE dbo.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.users_star_projects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime 
);
CREATE SEQUENCE dbo.users_star_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

---
CREATE TABLE dbo.web_hook_logs (
    id integer NOT NULL,
    web_hook_id integer NOT NULL,
    trigger_base VARCHAR(255),
    url VARCHAR(255),
    request_headers text,
    request_data text,
    response_headers text,
    response_body text,
    response_status VARCHAR(255),
    execution_duration double precision,
    internal_error_message VARCHAR(255),
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);

CREATE SEQUENCE dbo.web_hook_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE dbo.web_hooks (
    id integer NOT NULL,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    type VARCHAR(255) DEFAULT 'ProjectHook',
    service_id integer,
    push_events bit DEFAULT 1 NOT NULL,
    issues_events bit DEFAULT 0 NOT NULL,
    merge_requests_events bit DEFAULT 0 NOT NULL,
    tag_push_events bit DEFAULT 0,
    note_events bit DEFAULT 0 NOT NULL,
    enable_ssl_verification bit DEFAULT 1,
    wiki_page_events bit DEFAULT 0 NOT NULL,
    pipeline_events bit DEFAULT 0 NOT NULL,
    confidential_issues_events bit DEFAULT 0 NOT NULL,
    repository_update_events bit DEFAULT 0 NOT NULL,
    job_events bit DEFAULT 0 NOT NULL,
    confidential_note_events bit,
    push_events_branch_filter text,
    encrypted_token VARCHAR(255),
    encrypted_token_iv VARCHAR(255),
    encrypted_url VARCHAR(255),
    encrypted_url_iv VARCHAR(255)
);

CREATE SEQUENCE dbo.web_hooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

ALTER TABLE dbo.abuse_reports ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.abuse_reports_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.appearances ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.appearances_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.application_setting_terms ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.application_setting_terms_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.application_settings ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.application_settings_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.audit_events ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.audit_events_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.award_emoji ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.award_emoji_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.badges ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.badges_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.board_group_recent_visits ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.board_group_recent_visits_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.board_project_recent_visits ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.board_project_recent_visits_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.boards ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.boards_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.broadcast_messages ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.broadcast_messages_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.chat_names ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.chat_names_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.chat_teams ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.chat_teams_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_build_trace_chunks ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_build_trace_chunks_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_build_trace_section_names ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_build_trace_section_names_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_build_trace_sections ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_build_trace_sections_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_builds ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_builds_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_builds_metadata ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_builds_metadata_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_builds_runner_session ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_builds_runner_session_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_group_variables ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_group_variables_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_job_artifacts ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_job_artifacts_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_pipeline_chat_data ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_chat_data_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_pipeline_schedule_variables ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_schedule_variables_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_pipeline_schedules ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_schedules_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_pipeline_variables ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_variables_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_pipelines ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipelines_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_runner_namespaces ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_runner_namespaces_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_runner_projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_runner_projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_runners ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_runners_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_stages ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_stages_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_trigger_requests ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_trigger_requests_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_triggers ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_triggers_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.ci_variables ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.ci_variables_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.cluster_groups ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_groups_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.cluster_platforms_kubernetes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_platforms_kubernetes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.cluster_projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.cluster_providers_gcp ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_providers_gcp_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_cert_managers ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_cert_managers_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_helm ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_helm_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_ingress ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_ingress_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_jupyter ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_jupyter_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_knative ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_knative_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_prometheus ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_prometheus_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_applications_runners ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_runners_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.clusters_kubernetes_namespaces ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_kubernetes_namespaces_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.container_repositories ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.container_repositories_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.conversational_development_index_metrics ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.conversational_development_index_metrics_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.deploy_keys_projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.deploy_keys_projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.deploy_tokens ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.deploy_tokens_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.deployments ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.deployments_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.emails ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.emails_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.environments ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.environments_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.events ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.events_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.feature_gates ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.feature_gates_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.features ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.features_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.fork_network_members ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.fork_network_members_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.fork_networks ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.fork_networks_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.forked_project_links ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.forked_project_links_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.gpg_key_subkeys ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.gpg_key_subkeys_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.gpg_keys ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.gpg_keys_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.gpg_signatures ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.gpg_signatures_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.group_custom_attributes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.group_custom_attributes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.identities ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.identities_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.import_export_uploads ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.import_export_uploads_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.internal_ids ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.internal_ids_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.issue_metrics ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.issue_metrics_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.issues ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.issues_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.keys ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.keys_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.label_links ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.label_links_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.label_priorities ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.label_priorities_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.labels ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.labels_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.lfs_file_locks ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.lfs_file_locks_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.lfs_objects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.lfs_objects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.lfs_objects_projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.lfs_objects_projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.lists ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.lists_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.members ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.members_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_request_assignees ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_assignees_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_request_blocks ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_blocks_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_request_diffs ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_diffs_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_request_metrics ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_metrics_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_requests ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_requests_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_requests_closing_issues ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_requests_closing_issues_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.merge_trains ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.merge_trains_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.milestones ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.milestones_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.namespaces ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.namespaces_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.note_diff_files ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.note_diff_files_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.notes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.notes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.notification_settings ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.notification_settings_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.oauth_access_grants ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_access_grants_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.oauth_access_tokens ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_access_tokens_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.oauth_applications ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_applications_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.oauth_openid_requests ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_openid_requests_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.pages_domain_acme_orders ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.pages_domain_acme_orders_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.pages_domains ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.pages_domains_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.personal_access_tokens ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.personal_access_tokens_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.pool_repositories ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.pool_repositories_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.programming_languages ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.programming_languages_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_auto_devops ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_auto_devops_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_ci_cd_settings ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_ci_cd_settings_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_custom_attributes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_custom_attributes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_daily_statistics ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_daily_statistics_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_deploy_tokens ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_deploy_tokens_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_features ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_features_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_group_links ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_group_links_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_import_data ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_import_data_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_mirror_data ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_mirror_data_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_repositories ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_repositories_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.project_statistics ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.project_statistics_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.prometheus_metrics ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.prometheus_metrics_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.protected_branch_merge_access_levels ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.protected_branch_merge_access_levels_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.protected_branch_push_access_levels ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.protected_branch_push_access_levels_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.protected_branches ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.protected_branches_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.protected_tag_create_access_levels ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.protected_tag_create_access_levels_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.protected_tags ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.protected_tags_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.redirect_routes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.redirect_routes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.release_links ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.release_links_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.releases ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.releases_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.remote_mirrors ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.remote_mirrors_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.resource_label_events ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.resource_label_events_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.routes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.routes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.sent_notifications ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.sent_notifications_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.services ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.services_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.shards ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.shards_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.snippets ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.snippets_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.spam_logs ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.spam_logs_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.subscriptions ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.subscriptions_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.suggestions ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.suggestions_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.system_note_metadata ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.system_note_metadata_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.taggings ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.taggings_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.tags ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.tags_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.term_agreements ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.term_agreements_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.timelogs ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.timelogs_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.todos ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.todos_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.trending_projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.trending_projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.u2f_registrations ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.u2f_registrations_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.uploads ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.uploads_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.user_agent_details ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.user_agent_details_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.user_callouts ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.user_callouts_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.user_custom_attributes ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.user_custom_attributes_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.user_preferences ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.user_preferences_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.user_statuses ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.user_statuses_user_id_seq as NVARCHAR(20)) FOR user_id;
ALTER TABLE dbo.user_synced_attributes_metadata ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.user_synced_attributes_metadata_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.users ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.users_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.users_star_projects ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.users_star_projects_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.web_hook_logs ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.web_hook_logs_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.web_hooks ADD DEFAULT N'gitlab_' + CAST(NEXT VALUE FOR dbo.web_hooks_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.abuse_reports
    ADD CONSTRAINT abuse_reports_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.appearances
    ADD CONSTRAINT appearances_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.application_setting_terms
    ADD CONSTRAINT application_setting_terms_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.application_settings
    ADD CONSTRAINT application_settings_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey_base PRIMARY KEY (key_base);

ALTER TABLE dbo.audit_events
    ADD CONSTRAINT audit_events_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.award_emoji
    ADD CONSTRAINT award_emoji_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.badges
    ADD CONSTRAINT badges_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT board_group_recent_visits_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT board_project_recent_visits_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.boards
    ADD CONSTRAINT boards_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.broadcast_messages
    ADD CONSTRAINT broadcast_messages_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.chat_names
    ADD CONSTRAINT chat_names_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.chat_teams
    ADD CONSTRAINT chat_teams_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_build_trace_chunks
    ADD CONSTRAINT ci_build_trace_chunks_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_build_trace_section_names
    ADD CONSTRAINT ci_build_trace_section_names_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT ci_build_trace_sections_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_builds_metadata
    ADD CONSTRAINT ci_builds_metadata_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT ci_builds_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_builds_runner_session
    ADD CONSTRAINT ci_builds_runner_session_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_group_variables
    ADD CONSTRAINT ci_group_variables_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_job_artifacts
    ADD CONSTRAINT ci_job_artifacts_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_pipeline_chat_data
    ADD CONSTRAINT ci_pipeline_chat_data_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_pipeline_schedule_variables
    ADD CONSTRAINT ci_pipeline_schedule_variables_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_pipeline_schedules
    ADD CONSTRAINT ci_pipeline_schedules_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_pipeline_variables
    ADD CONSTRAINT ci_pipeline_variables_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT ci_pipelines_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_runner_namespaces
    ADD CONSTRAINT ci_runner_namespaces_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_runner_projects
    ADD CONSTRAINT ci_runner_projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_runners
    ADD CONSTRAINT ci_runners_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_stages
    ADD CONSTRAINT ci_stages_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_trigger_requests
    ADD CONSTRAINT ci_trigger_requests_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_triggers
    ADD CONSTRAINT ci_triggers_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.ci_variables
    ADD CONSTRAINT ci_variables_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.cluster_groups
    ADD CONSTRAINT cluster_groups_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.cluster_platforms_kubernetes
    ADD CONSTRAINT cluster_platforms_kubernetes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.cluster_projects
    ADD CONSTRAINT cluster_projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.cluster_providers_gcp
    ADD CONSTRAINT cluster_providers_gcp_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_cert_managers
    ADD CONSTRAINT clusters_applications_cert_managers_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_helm
    ADD CONSTRAINT clusters_applications_helm_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_ingress
    ADD CONSTRAINT clusters_applications_ingress_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_jupyter
    ADD CONSTRAINT clusters_applications_jupyter_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_knative
    ADD CONSTRAINT clusters_applications_knative_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_prometheus
    ADD CONSTRAINT clusters_applications_prometheus_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_applications_runners
    ADD CONSTRAINT clusters_applications_runners_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT clusters_kubernetes_namespaces_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.clusters
    ADD CONSTRAINT clusters_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.container_repositories
    ADD CONSTRAINT container_repositories_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.conversational_development_index_metrics
    ADD CONSTRAINT conversational_development_index_metrics_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.deploy_keys_projects
    ADD CONSTRAINT deploy_keys_projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.deploy_tokens
    ADD CONSTRAINT deploy_tokens_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.deployments
    ADD CONSTRAINT deployments_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.emails
    ADD CONSTRAINT emails_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.environments
    ADD CONSTRAINT environments_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.events
    ADD CONSTRAINT events_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.feature_gates
    ADD CONSTRAINT feature_gates_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.features
    ADD CONSTRAINT features_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fork_network_members_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.fork_networks
    ADD CONSTRAINT fork_networks_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.forked_project_links
    ADD CONSTRAINT forked_project_links_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.gpg_key_subkeys
    ADD CONSTRAINT gpg_key_subkeys_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.gpg_keys
    ADD CONSTRAINT gpg_keys_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT gpg_signatures_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.group_custom_attributes
    ADD CONSTRAINT group_custom_attributes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.identities
    ADD CONSTRAINT identities_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.import_export_uploads
    ADD CONSTRAINT import_export_uploads_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.internal_ids
    ADD CONSTRAINT internal_ids_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.issue_metrics
    ADD CONSTRAINT issue_metrics_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.issues
    ADD CONSTRAINT issues_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.keys
    ADD CONSTRAINT keys_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.label_links
    ADD CONSTRAINT label_links_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.label_priorities
    ADD CONSTRAINT label_priorities_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.labels
    ADD CONSTRAINT labels_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.lfs_file_locks
    ADD CONSTRAINT lfs_file_locks_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.lfs_objects
    ADD CONSTRAINT lfs_objects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.lfs_objects_projects
    ADD CONSTRAINT lfs_objects_projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.lists
    ADD CONSTRAINT lists_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.members
    ADD CONSTRAINT members_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_request_assignees
    ADD CONSTRAINT merge_request_assignees_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_request_blocks
    ADD CONSTRAINT merge_request_blocks_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_request_diffs
    ADD CONSTRAINT merge_request_diffs_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT merge_request_metrics_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_requests_closing_issues
    ADD CONSTRAINT merge_requests_closing_issues_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT merge_requests_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT merge_trains_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.milestones
    ADD CONSTRAINT milestones_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.namespaces
    ADD CONSTRAINT namespaces_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.note_diff_files
    ADD CONSTRAINT note_diff_files_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.notes
    ADD CONSTRAINT notes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.notification_settings
    ADD CONSTRAINT notification_settings_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.oauth_openid_requests
    ADD CONSTRAINT oauth_openid_requests_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.pages_domain_acme_orders
    ADD CONSTRAINT pages_domain_acme_orders_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.pages_domains
    ADD CONSTRAINT pages_domains_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.pool_repositories
    ADD CONSTRAINT pool_repositories_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.programming_languages
    ADD CONSTRAINT programming_languages_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_auto_devops
    ADD CONSTRAINT project_auto_devops_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_ci_cd_settings
    ADD CONSTRAINT project_ci_cd_settings_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_custom_attributes
    ADD CONSTRAINT project_custom_attributes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_daily_statistics
    ADD CONSTRAINT project_daily_statistics_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_deploy_tokens
    ADD CONSTRAINT project_deploy_tokens_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_error_tracking_settings
    ADD CONSTRAINT project_error_tracking_settings_pkey_base PRIMARY KEY (project_id);

ALTER TABLE dbo.project_features
    ADD CONSTRAINT project_features_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_group_links
    ADD CONSTRAINT project_group_links_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_import_data
    ADD CONSTRAINT project_import_data_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_metrics_settings
    ADD CONSTRAINT project_metrics_settings_pkey_base PRIMARY KEY (project_id);

ALTER TABLE dbo.project_mirror_data
    ADD CONSTRAINT project_mirror_data_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_repositories
    ADD CONSTRAINT project_repositories_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.project_statistics
    ADD CONSTRAINT project_statistics_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.projects
    ADD CONSTRAINT projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.prometheus_metrics
    ADD CONSTRAINT prometheus_metrics_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.protected_branch_merge_access_levels
    ADD CONSTRAINT protected_branch_merge_access_levels_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.protected_branch_push_access_levels
    ADD CONSTRAINT protected_branch_push_access_levels_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.protected_branches
    ADD CONSTRAINT protected_branches_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT protected_tag_create_access_levels_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.protected_tags
    ADD CONSTRAINT protected_tags_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.redirect_routes
    ADD CONSTRAINT redirect_routes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.release_links
    ADD CONSTRAINT release_links_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.releases
    ADD CONSTRAINT releases_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.remote_mirrors
    ADD CONSTRAINT remote_mirrors_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT resource_label_events_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.routes
    ADD CONSTRAINT routes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey_base PRIMARY KEY (version);

ALTER TABLE dbo.sent_notifications
    ADD CONSTRAINT sent_notifications_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.services
    ADD CONSTRAINT services_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.shards
    ADD CONSTRAINT shards_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.snippets
    ADD CONSTRAINT snippets_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.spam_logs
    ADD CONSTRAINT spam_logs_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.subscriptions
    ADD CONSTRAINT subscriptions_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.suggestions
    ADD CONSTRAINT suggestions_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.system_note_metadata
    ADD CONSTRAINT system_note_metadata_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.taggings
    ADD CONSTRAINT taggings_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.tags
    ADD CONSTRAINT tags_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.term_agreements
    ADD CONSTRAINT term_agreements_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.timelogs
    ADD CONSTRAINT timelogs_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.todos
    ADD CONSTRAINT todos_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.trending_projects
    ADD CONSTRAINT trending_projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.u2f_registrations
    ADD CONSTRAINT u2f_registrations_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.uploads
    ADD CONSTRAINT uploads_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.user_agent_details
    ADD CONSTRAINT user_agent_details_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.user_callouts
    ADD CONSTRAINT user_callouts_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.user_custom_attributes
    ADD CONSTRAINT user_custom_attributes_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.user_preferences
    ADD CONSTRAINT user_preferences_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.user_statuses
    ADD CONSTRAINT user_statuses_pkey_base PRIMARY KEY (user_id);

ALTER TABLE dbo.user_synced_attributes_metadata
    ADD CONSTRAINT user_synced_attributes_metadata_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.users
    ADD CONSTRAINT users_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.users_star_projects
    ADD CONSTRAINT users_star_projects_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.web_hook_logs
    ADD CONSTRAINT web_hook_logs_pkey_base PRIMARY KEY (id);

ALTER TABLE dbo.web_hooks
    ADD CONSTRAINT web_hooks_pkey_base PRIMARY KEY (id);


ALTER TABLE dbo.clusters_applications_runners
    ADD CONSTRAINT fk_02de2ded36 FOREIGN KEY (runner_id) REFERENCES dbo.ci_runners(id) ON DELETE SET NULL;

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_05f1e72feb FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_06067f5644 FOREIGN KEY (latest_merge_request_diff_id) REFERENCES dbo.merge_request_diffs(id) ON DELETE SET NULL;


ALTER TABLE dbo.user_interacted_projects
    ADD CONSTRAINT fk_0894651f08 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.web_hooks
    ADD CONSTRAINT fk_0c8ca6d9d1 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.notification_settings
    ADD CONSTRAINT fk_0c95e91db7 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.lists
    ADD CONSTRAINT fk_0d3f677137 FOREIGN KEY (board_id) REFERENCES dbo.boards(id) ON DELETE CASCADE;

ALTER TABLE dbo.internal_ids
    ADD CONSTRAINT fk_162941d509 FOREIGN KEY (namespace_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_features
    ADD CONSTRAINT fk_18513d9b92 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


ALTER TABLE dbo.users_star_projects
    ADD CONSTRAINT fk_22cd27ddfc FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_stages
    ADD CONSTRAINT fk_2360681d1d FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_ci_cd_settings
    ADD CONSTRAINT fk_24c15d2f2e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_262d4c2d19 FOREIGN KEY (auto_canceled_by_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT fk_264e112c66 FOREIGN KEY (section_name_id) REFERENCES dbo.ci_build_trace_section_names(id) ON DELETE CASCADE;

ALTER TABLE dbo.members
    ADD CONSTRAINT fk_2e88fb7ce9 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_3308fe130c FOREIGN KEY (source_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_group_variables
    ADD CONSTRAINT fk_33ae4d58d8 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.push_event_payloads
    ADD CONSTRAINT fk_36c74129da FOREIGN KEY (event_id) REFERENCES dbo.events(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_3a9eaa254d FOREIGN KEY (stage_id) REFERENCES dbo.ci_stages(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_3d34ab2e06 FOREIGN KEY (pipeline_schedule_id) REFERENCES dbo.ci_pipeline_schedules(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_pipeline_schedule_variables
    ADD CONSTRAINT fk_41c35fda51 FOREIGN KEY (pipeline_schedule_id) REFERENCES dbo.ci_pipeline_schedules(id) ON DELETE CASCADE;

ALTER TABLE dbo.forked_project_links
    ADD CONSTRAINT fk_434510edb0 FOREIGN KEY (forked_to_project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_runner_projects
    ADD CONSTRAINT fk_4478a6f1e4 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_45054f9c45 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.releases
    ADD CONSTRAINT fk_47fe2a0596 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT fk_4ebe41f502 FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_prometheus
    ADD CONSTRAINT fk_557e773639 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.deploy_keys_projects
    ADD CONSTRAINT fk_58a901ca7e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.issue_assignees
    ADD CONSTRAINT fk_5e0c8d9154 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_6149611a04 FOREIGN KEY (assignee_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_641731faff FOREIGN KEY (updated_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_6a5165a692 FOREIGN KEY (milestone_id) REFERENCES dbo.milestones(id) ON DELETE SET NULL;

ALTER TABLE dbo.projects
    ADD CONSTRAINT fk_6e5c14658a FOREIGN KEY (pool_repository_id) REFERENCES dbo.pool_repositories(id) ON DELETE SET NULL;

ALTER TABLE dbo.services
    ADD CONSTRAINT fk_71cce407f9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


ALTER TABLE dbo.user_interacted_projects
    ADD CONSTRAINT fk_722ceba4f7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_ingress
    ADD CONSTRAINT fk_753a7b41c1 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


ALTER TABLE dbo.users
    ADD CONSTRAINT fk_789cd90b35 FOREIGN KEY (accepted_term_id) REFERENCES dbo.application_setting_terms(id) ON DELETE CASCADE;

ALTER TABLE dbo.lists
    ADD CONSTRAINT fk_7a5553d60f FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE CASCADE;

ALTER TABLE dbo.protected_branches
    ADD CONSTRAINT fk_7a9c6d93e7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.labels
    ADD CONSTRAINT fk_7de4989a69 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_7f28d925f3 FOREIGN KEY (merged_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.merge_request_diffs
    ADD CONSTRAINT fk_8483f3258f FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_86635dbd80 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_899c8f3231 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.protected_branch_merge_access_levels
    ADD CONSTRAINT fk_8a3072ccb3 FOREIGN KEY (protected_branch_id) REFERENCES dbo.protected_branches(id) ON DELETE CASCADE;

ALTER TABLE dbo.releases
    ADD CONSTRAINT fk_8e4456f90f FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.protected_tags
    ADD CONSTRAINT fk_8e4af87648 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipeline_schedules
    ADD CONSTRAINT fk_8ead60fcc4 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_91d1f47b13 FOREIGN KEY (note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;

ALTER TABLE dbo.milestones
    ADD CONSTRAINT fk_95650a40d4 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.application_settings
    ADD CONSTRAINT fk_964370041d FOREIGN KEY (usage_stats_set_by_user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_96b1dd429c FOREIGN KEY (milestone_id) REFERENCES dbo.milestones(id) ON DELETE SET NULL;

ALTER TABLE dbo.notes
    ADD CONSTRAINT fk_99e097b079 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.milestones
    ADD CONSTRAINT fk_9bd0a0c791 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipeline_schedules
    ADD CONSTRAINT fk_9ea99f58d2 FOREIGN KEY (owner_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.protected_branch_push_access_levels
    ADD CONSTRAINT fk_9ffc86a3d9 FOREIGN KEY (protected_branch_id) REFERENCES dbo.protected_branches(id) ON DELETE CASCADE;

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_a194299be1 FOREIGN KEY (moved_to_id) REFERENCES dbo.issues(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_a2141b1522 FOREIGN KEY (auto_canceled_by_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_a23be95014 FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_a6963e8447 FOREIGN KEY (target_project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_ad525e1f87 FOREIGN KEY (merge_user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_variables
    ADD CONSTRAINT fk_ada5eb64b3 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_ae440388cc FOREIGN KEY (latest_closed_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fk_b01280dae4 FOREIGN KEY (forked_from_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;

ALTER TABLE dbo.issue_assignees
    ADD CONSTRAINT fk_b7d881734a FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_trigger_requests
    ADD CONSTRAINT fk_b8ec8b7245 FOREIGN KEY (trigger_id) REFERENCES dbo.ci_triggers(id) ON DELETE CASCADE;

ALTER TABLE dbo.deployments
    ADD CONSTRAINT fk_b9a3851b82 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.snippets
    ADD CONSTRAINT fk_be41fd4bb7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_befce0568a FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_c63cbf6c25 FOREIGN KEY (closed_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_ccf0373936 FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.environments
    ADD CONSTRAINT fk_d1c8c1da6a FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_d3130c9a7f FOREIGN KEY (commit_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;

ALTER TABLE dbo.system_note_metadata
    ADD CONSTRAINT fk_d83a918cb1 FOREIGN KEY (note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_d94154aa95 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.label_links
    ADD CONSTRAINT fk_d97dd08678 FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_group_links
    ADD CONSTRAINT fk_daa8cee94c FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_triggers
    ADD CONSTRAINT fk_e3e63f966e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_e719a85f8a FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.fork_networks
    ADD CONSTRAINT fk_e7b436b2b5 FOREIGN KEY (root_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_triggers
    ADD CONSTRAINT fk_e8e10d1964 FOREIGN KEY (owner_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.pages_domains
    ADD CONSTRAINT fk_ea2f6dfc6f FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.events
    ADD CONSTRAINT fk_edfd187b6f FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.boards
    ADD CONSTRAINT fk_f15266b5f9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipeline_variables
    ADD CONSTRAINT fk_f29c5f4380 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT fk_f7dfda8c51 FOREIGN KEY (protected_tag_id) REFERENCES dbo.protected_tags(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_stages
    ADD CONSTRAINT fk_fb57e6cc56 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_fd82eae0b9 FOREIGN KEY (head_pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;

ALTER TABLE dbo.project_import_data
    ADD CONSTRAINT fk_ffb9ee3a10 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_ffed080f01 FOREIGN KEY (updated_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.oauth_openid_requests
    ADD CONSTRAINT fk_oauth_openid_requests_oauth_access_grants_access_grant_id FOREIGN KEY (access_grant_id) REFERENCES dbo.oauth_access_grants(id);

ALTER TABLE dbo.events
    ADD CONSTRAINT fk_rails_0434b48643 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.personal_access_tokens
    ADD CONSTRAINT fk_rails_08903b8f38 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE dbo.trending_projects
    ADD CONSTRAINT fk_rails_09feecd872 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_deploy_tokens
    ADD CONSTRAINT fk_rails_0aca134388 FOREIGN KEY (deploy_token_id) REFERENCES dbo.deploy_tokens(id) ON DELETE CASCADE;


ALTER TABLE dbo.user_synced_attributes_metadata
    ADD CONSTRAINT fk_rails_0f4aa0981f FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_authorizations
    ADD CONSTRAINT fk_rails_0f84bb11f3 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_build_trace_chunks
    ADD CONSTRAINT fk_rails_1013b761f2 FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT fk_rails_11ae8cb9a7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_authorizations
    ADD CONSTRAINT fk_rails_11e7aa3ed9 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_statistics
    ADD CONSTRAINT fk_rails_12c471002f FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_deploy_tokens
    ADD CONSTRAINT fk_rails_170e03cbaf FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_jupyter
    ADD CONSTRAINT fk_rails_17df21c98c FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT fk_rails_19d4f1c6f9 FOREIGN KEY (gpg_key_subkey_id) REFERENCES dbo.gpg_key_subkeys(id) ON DELETE SET NULL;

ALTER TABLE dbo.boards
    ADD CONSTRAINT fk_rails_1e9a074a35 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


ALTER TABLE dbo.user_statuses
    ADD CONSTRAINT fk_rails_2178592333 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_runners
    ADD CONSTRAINT fk_rails_22388594e9 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT fk_rails_2349b78b91 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE dbo.group_custom_attributes
    ADD CONSTRAINT fk_rails_246e0db83a FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.lfs_file_locks
    ADD CONSTRAINT fk_rails_27a1d98fa8 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_diff_commits
    ADD CONSTRAINT fk_rails_316aaceda3 FOREIGN KEY (merge_request_diff_id) REFERENCES dbo.merge_request_diffs(id) ON DELETE CASCADE;

ALTER TABLE dbo.container_repositories
    ADD CONSTRAINT fk_rails_32f7bf5aad FOREIGN KEY (project_id) REFERENCES dbo.projects(id);

ALTER TABLE dbo.clusters_applications_jupyter
    ADD CONSTRAINT fk_rails_331f0aff78 FOREIGN KEY (oauth_application_id) REFERENCES dbo.oauth_applications(id) ON DELETE SET NULL;

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_rails_33ae169d48 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;

ALTER TABLE dbo.suggestions
    ADD CONSTRAINT fk_rails_33b03a535c FOREIGN KEY (note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_blocks
    ADD CONSTRAINT fk_rails_364d4bea8b FOREIGN KEY (blocked_merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.chat_teams
    ADD CONSTRAINT fk_rails_3b543909cb FOREIGN KEY (namespace_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.cluster_groups
    ADD CONSTRAINT fk_rails_3d28377556 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.note_diff_files
    ADD CONSTRAINT fk_rails_3d66047aeb FOREIGN KEY (diff_note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_helm
    ADD CONSTRAINT fk_rails_3e2b1c06bc FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_40cc7ccbc3 FOREIGN KEY (cluster_project_id) REFERENCES dbo.cluster_projects(id) ON DELETE SET NULL;

ALTER TABLE dbo.remote_mirrors
    ADD CONSTRAINT fk_rails_43a9aa4ca8 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.lfs_file_locks
    ADD CONSTRAINT fk_rails_43df7a0412 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_assignees
    ADD CONSTRAINT fk_rails_443443ce6f FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_auto_devops
    ADD CONSTRAINT fk_rails_45436b12b2 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests_closing_issues
    ADD CONSTRAINT fk_rails_458eda8667 FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


ALTER TABLE dbo.user_custom_attributes
    ADD CONSTRAINT fk_rails_47b91868a8 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.issue_metrics
    ADD CONSTRAINT fk_rails_4bb543d85d FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_metrics_settings
    ADD CONSTRAINT fk_rails_4c6037ee4f FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.prometheus_metrics
    ADD CONSTRAINT fk_rails_4c8957a707 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_diff_files
    ADD CONSTRAINT fk_rails_501aa0a391 FOREIGN KEY (merge_request_diff_id) REFERENCES dbo.merge_request_diffs(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_knative
    ADD CONSTRAINT fk_rails_54fc91e0a0 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_assignees
    ADD CONSTRAINT fk_rails_579d375628 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.badges
    ADD CONSTRAINT fk_rails_5a7c055bdc FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_5ac1d2fc24 FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;

ALTER TABLE dbo.cluster_providers_gcp
    ADD CONSTRAINT fk_rails_5c2c3bc814 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT fk_rails_64bfc19bc5 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipeline_chat_data
    ADD CONSTRAINT fk_rails_64ebfab6b3 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;

ALTER TABLE dbo.web_hook_logs
    ADD CONSTRAINT fk_rails_666826e111 FOREIGN KEY (web_hook_id) REFERENCES dbo.web_hooks(id) ON DELETE CASCADE;

ALTER TABLE dbo.term_agreements
    ADD CONSTRAINT fk_rails_6ea6520e4a FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_builds_runner_session
    ADD CONSTRAINT fk_rails_70707857d3 FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_custom_attributes
    ADD CONSTRAINT fk_rails_719c3dccc5 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.release_links
    ADD CONSTRAINT fk_rails_753be7ae29 FOREIGN KEY (release_id) REFERENCES dbo.releases(id) ON DELETE CASCADE;

ALTER TABLE dbo.pages_domain_acme_orders
    ADD CONSTRAINT fk_rails_76581b1c16 FOREIGN KEY (pages_domain_id) REFERENCES dbo.pages_domains(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_repositories
    ADD CONSTRAINT fk_rails_7a810d4121 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_7e7688ecaf FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_runner_namespaces
    ADD CONSTRAINT fk_rails_8767676b7a FOREIGN KEY (runner_id) REFERENCES dbo.ci_runners(id) ON DELETE CASCADE;

ALTER TABLE dbo.gpg_key_subkeys
    ADD CONSTRAINT fk_rails_8b2c90b046 FOREIGN KEY (gpg_key_id) REFERENCES dbo.gpg_keys(id) ON DELETE CASCADE;

ALTER TABLE dbo.cluster_projects
    ADD CONSTRAINT fk_rails_8b8c5caf07 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_daily_statistics
    ADD CONSTRAINT fk_rails_8e549b272d FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_error_tracking_settings
    ADD CONSTRAINT fk_rails_910a2b8bd9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_9851a00031 FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_job_artifacts
    ADD CONSTRAINT fk_rails_9862d392f9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT fk_rails_98f8843922 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_98fe21e486 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;

ALTER TABLE dbo.gpg_keys
    ADD CONSTRAINT fk_rails_9d1f5d8719 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.badges
    ADD CONSTRAINT fk_rails_9df4a56538 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters_applications_cert_managers
    ADD CONSTRAINT fk_rails_9e4f2cb4b2 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_rails_a27c483435 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fk_rails_a40860a1ca FOREIGN KEY (fork_network_id) REFERENCES dbo.fork_networks(id) ON DELETE CASCADE;

ALTER TABLE dbo.cluster_projects
    ADD CONSTRAINT fk_rails_a5a958bca1 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


ALTER TABLE dbo.user_preferences
    ADD CONSTRAINT fk_rails_a69bfcfd81 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.repository_languages
    ADD CONSTRAINT fk_rails_a750ec87a8 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.term_agreements
    ADD CONSTRAINT fk_rails_a88721bcdf FOREIGN KEY (term_id) REFERENCES dbo.application_setting_terms(id);

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT fk_rails_ab7c104e26 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.clusters
    ADD CONSTRAINT fk_rails_ac3a663d79 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.pool_repositories
    ADD CONSTRAINT fk_rails_af3f8c5d62 FOREIGN KEY (shard_id) REFERENCES dbo.shards(id) ON DELETE NO ACTION;

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_b126799f57 FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE SET NULL;

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_b29261ce31 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT fk_rails_b315dd0c80 FOREIGN KEY (board_id) REFERENCES dbo.boards(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_b374b5225d FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT fk_rails_b4eb82fe3c FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id);

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_b9d67af01d FOREIGN KEY (target_project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.u2f_registrations
    ADD CONSTRAINT fk_rails_bfe6a84544 FOREIGN KEY (user_id) REFERENCES dbo.users(id);

ALTER TABLE dbo.labels
    ADD CONSTRAINT fk_rails_c1ac5161d8 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_repositories
    ADD CONSTRAINT fk_rails_c3258dc63b FOREIGN KEY (shard_id) REFERENCES dbo.shards(id) ON DELETE NO ACTION;

ALTER TABLE dbo.ci_job_artifacts
    ADD CONSTRAINT fk_rails_c5137cb2c1 FOREIGN KEY (job_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT fk_rails_c97176f5f7 FOREIGN KEY (gpg_key_id) REFERENCES dbo.gpg_keys(id) ON DELETE SET NULL;

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT fk_rails_ca04c38720 FOREIGN KEY (board_id) REFERENCES dbo.boards(id) ON DELETE CASCADE;

ALTER TABLE dbo.subscriptions
    ADD CONSTRAINT fk_rails_d0c8bda804 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.project_mirror_data
    ADD CONSTRAINT fk_rails_d1aad367d7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.pool_repositories
    ADD CONSTRAINT fk_rails_d2711daad4 FOREIGN KEY (source_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;


ALTER TABLE dbo.user_callouts
    ADD CONSTRAINT fk_rails_ddfdd80f3d FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.label_priorities
    ADD CONSTRAINT fk_rails_e161058b0f FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE CASCADE;

ALTER TABLE dbo.cluster_platforms_kubernetes
    ADD CONSTRAINT fk_rails_e1e2cf841a FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_builds_metadata
    ADD CONSTRAINT fk_rails_e20479742e FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_rails_e6d7c24d1b FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_request_blocks
    ADD CONSTRAINT fk_rails_e9387863bc FOREIGN KEY (blocking_merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;

ALTER TABLE dbo.label_priorities
    ADD CONSTRAINT fk_rails_ef916d14fa FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fk_rails_efccadc4ec FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.import_export_uploads
    ADD CONSTRAINT fk_rails_f129140f9e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_pipeline_chat_data
    ADD CONSTRAINT fk_rails_f300456b63 FOREIGN KEY (chat_name_id) REFERENCES dbo.chat_names(id) ON DELETE CASCADE;

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT fk_rails_f410736518 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.internal_ids
    ADD CONSTRAINT fk_rails_f7d46b66c6 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_requests_closing_issues
    ADD CONSTRAINT fk_rails_f8540692be FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;

ALTER TABLE dbo.ci_build_trace_section_names
    ADD CONSTRAINT fk_rails_f8cd72cd26 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_f90820cb08 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_runner_namespaces
    ADD CONSTRAINT fk_rails_f9d9ed3308 FOREIGN KEY (namespace_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT fk_rails_fb6fc419cb FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;

ALTER TABLE dbo.cluster_groups
    ADD CONSTRAINT fk_rails_fdb8648a96 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_fe91ece594 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;

ALTER TABLE dbo.ci_builds_metadata
    ADD CONSTRAINT fk_rails_ffcf702a02 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;

ALTER TABLE dbo.timelogs
    ADD CONSTRAINT fk_timelogs_issues_issue_id FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;

ALTER TABLE dbo.timelogs
    ADD CONSTRAINT fk_timelogs_merge_requests_merge_request_id FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;
