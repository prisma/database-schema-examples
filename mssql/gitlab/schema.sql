-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', 0);
-- SET check_function_bodies = 0;
-- SET xmloption = content;
-- SET client_min_messages = warning;
-- SET row_security = off;

-- --
-- -- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
-- --

-- CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


-- --
-- -- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
-- --

-- COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


-- --
-- -- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
-- --

-- CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA dbo;


-- --
-- -- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: -
-- --

-- COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


-- SET default_tablespace = '';

-- SET default_with_oids = 0;

--
-- Name: abuse_reports; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: abuse_reports_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.abuse_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: abuse_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.abuse_reports_id_seq OWNED BY dbo.abuse_reports.id;


--
-- Name: appearances; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.appearances (
    id integer NOT NULL,
    title character varying NOT NULL,
    description text NOT NULL,
    header_logo character varying,
    logo character varying,
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
    favicon character varying,
    email_header_and_footer_enabled bit DEFAULT 0 NOT NULL
);


--
-- Name: appearances_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.appearances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: appearances_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.appearances_id_seq OWNED BY dbo.appearances.id;


--
-- Name: application_setting_terms; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.application_setting_terms (
    id integer NOT NULL,
    cached_markdown_version integer,
    terms text NOT NULL,
    terms_html text
);


--
-- Name: application_setting_terms_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.application_setting_terms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_setting_terms_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.application_setting_terms_id_seq OWNED BY dbo.application_setting_terms.id;


--
-- Name: application_settings; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.application_settings (
    id integer NOT NULL,
    default_projects_limit integer,
    signup_enabled bit,
    gravatar_enabled bit,
    sign_in_text text,
    created_at datetime ,
    updated_at datetime ,
    home_page_url character varying,
    default_branch_protection integer DEFAULT 2,
    restricted_visibility_levels text,
    version_check_enabled bit DEFAULT 1,
    max_attachment_size integer DEFAULT 10 NOT NULL,
    default_project_visibility integer,
    default_snippet_visibility integer,
    domain_whitelist text,
    user_oauth_applications bit DEFAULT 1,
    after_sign_out_path character varying,
    session_expire_delay integer DEFAULT 10080 NOT NULL,
    import_sources text,
    help_page_text text,
    admin_notification_email character varying,
    shared_runners_enabled bit DEFAULT 1 NOT NULL,
    max_artifacts_size integer DEFAULT 100 NOT NULL,
    runners_registration_token character varying,
    max_pages_size integer DEFAULT 100 NOT NULL,
    require_two_factor_authentication bit DEFAULT 0,
    two_factor_grace_period integer DEFAULT 48,
    metrics_enabled bit DEFAULT 0,
    metrics_host character varying DEFAULT 'localhost',
    metrics_pool_size integer DEFAULT 16,
    metrics_timeout integer DEFAULT 10,
    metrics_method_call_threshold integer DEFAULT 10,
    recaptcha_enabled bit DEFAULT 0,
    recaptcha_site_key_base character varying,
    recaptcha_private_key_base character varying,
    metrics_port integer DEFAULT 8089,
    akismet_enabled bit DEFAULT 0,
    akismet_api_key_base character varying,
    metrics_sample_interval integer DEFAULT 15,
    sentry_enabled bit DEFAULT 0,
    sentry_dsn character varying,
    email_author_in_body bit DEFAULT 0,
    default_group_visibility integer,
    repository_checks_enabled bit DEFAULT 0,
    shared_runners_text text,
    metrics_packet_size integer DEFAULT 1,
    disabled_oauth_sign_in_sources text,
    health_check_access_token character varying,
    send_user_confirmation_email bit DEFAULT 0,
    container_registry_token_expire_delay integer DEFAULT 5,
    after_sign_up_text text,
    user_default_external bit DEFAULT 0 NOT NULL,
    repository_storages character varying DEFAULT 'default',
    enabled_git_access_protocol character varying,
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
    plantuml_url character varying,
    plantuml_enabled bit,
    terminal_max_session_time integer DEFAULT 0 NOT NULL,
    unique_ips_limit_per_user integer,
    unique_ips_limit_time_window integer,
    unique_ips_limit_enabled bit DEFAULT 0 NOT NULL,
    default_artifacts_expire_in character varying DEFAULT '0' NOT NULL,
    uuid character varying,
    polling_interval_multiplier numeric DEFAULT 1.0 NOT NULL,
    cached_markdown_version integer,
    clientside_sentry_enabled bit DEFAULT 0 NOT NULL,
    clientside_sentry_dsn character varying,
    prometheus_metrics_enabled bit DEFAULT 1 NOT NULL,
    help_page_hide_commercial_content bit DEFAULT 0,
    help_page_support_url character varying,
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
    auto_devops_domain character varying,
    pages_domain_verification_enabled bit DEFAULT 1 NOT NULL,
    user_default_internal_regex character varying,
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
    commit_email_hostname character varying,
    protected_ci_variables bit DEFAULT 0 NOT NULL,
    runners_registration_token_encrypted character varying,
    local_markdown_version integer DEFAULT 0 NOT NULL,
    first_day_of_week integer DEFAULT 0 NOT NULL,
    default_project_creation integer DEFAULT 2 NOT NULL,
    external_authorization_service_enabled bit DEFAULT 0 NOT NULL,
    external_authorization_service_url character varying,
    external_authorization_service_default_label character varying,
    external_authorization_service_timeout double precision DEFAULT 0.5,
    external_auth_client_cert text,
    encrypted_external_auth_client_key_base text,
    encrypted_external_auth_client_key_iv character varying,
    encrypted_external_auth_client_key_pass character varying,
    encrypted_external_auth_client_key_pass_iv character varying,
    lets_encrypt_notification_email character varying,
    lets_encrypt_terms_of_service_accepted bit DEFAULT 0 NOT NULL,
    elasticsearch_shards integer DEFAULT 5 NOT NULL,
    elasticsearch_replicas integer DEFAULT 1 NOT NULL,
    encrypted_lets_encrypt_private_key_base text,
    encrypted_lets_encrypt_private_key_iv text,
    dns_rebinding_protection_enabled bit DEFAULT 1 NOT NULL,
    default_project_deletion_protection bit DEFAULT 0 NOT NULL
);


--
-- Name: application_settings_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.application_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.application_settings_id_seq OWNED BY dbo.application_settings.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ar_internal_metadata (
    key_base character varying NOT NULL,
    value character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: audit_events; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.audit_events (
    id integer NOT NULL,
    author_id integer NOT NULL,
    type character varying NOT NULL,
    entity_id integer NOT NULL,
    entity_type character varying NOT NULL,
    details text,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: audit_events_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.audit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.audit_events_id_seq OWNED BY dbo.audit_events.id;


--
-- Name: award_emoji; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.award_emoji (
    id integer NOT NULL,
    name character varying,
    user_id integer,
    awardable_id integer,
    awardable_type character varying,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: award_emoji_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.award_emoji_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: award_emoji_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.award_emoji_id_seq OWNED BY dbo.award_emoji.id;


--
-- Name: badges; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.badges (
    id integer NOT NULL,
    link_url character varying NOT NULL,
    image_url character varying NOT NULL,
    project_id integer,
    group_id integer,
    type character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: badges_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.badges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: badges_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.badges_id_seq OWNED BY dbo.badges.id;


--
-- Name: board_group_recent_visits; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.board_group_recent_visits (
    id bigint NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer,
    board_id integer,
    group_id integer
);


--
-- Name: board_group_recent_visits_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.board_group_recent_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: board_group_recent_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.board_group_recent_visits_id_seq OWNED BY dbo.board_group_recent_visits.id;


--
-- Name: board_project_recent_visits; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.board_project_recent_visits (
    id bigint NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer,
    project_id integer,
    board_id integer
);


--
-- Name: board_project_recent_visits_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.board_project_recent_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: board_project_recent_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.board_project_recent_visits_id_seq OWNED BY dbo.board_project_recent_visits.id;


--
-- Name: boards; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.boards (
    id integer NOT NULL,
    project_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    group_id integer
);


--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.boards_id_seq OWNED BY dbo.boards.id;


--
-- Name: broadcast_messages; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.broadcast_messages (
    id integer NOT NULL,
    message text NOT NULL,
    starts_at datetime  NOT NULL,
    ends_at datetime  NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    color character varying,
    font character varying,
    message_html text NOT NULL,
    cached_markdown_version integer
);


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.broadcast_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.broadcast_messages_id_seq OWNED BY dbo.broadcast_messages.id;


--
-- Name: chat_names; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.chat_names (
    id integer NOT NULL,
    user_id integer NOT NULL,
    service_id integer NOT NULL,
    team_id character varying NOT NULL,
    team_domain character varying,
    chat_id character varying NOT NULL,
    chat_name character varying,
    last_used_at datetime ,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: chat_names_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.chat_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: chat_names_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.chat_names_id_seq OWNED BY dbo.chat_names.id;


--
-- Name: chat_teams; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.chat_teams (
    id integer NOT NULL,
    namespace_id integer NOT NULL,
    team_id character varying,
    name character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: chat_teams_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.chat_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: chat_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.chat_teams_id_seq OWNED BY dbo.chat_teams.id;


--
-- Name: ci_build_trace_chunks; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_build_trace_chunks (
    id bigint NOT NULL,
    build_id integer NOT NULL,
    chunk_index integer NOT NULL,
    data_store integer NOT NULL,
    raw_data VARBINARY(100)
);


--
-- Name: ci_build_trace_chunks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_build_trace_chunks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_build_trace_chunks_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_build_trace_chunks_id_seq OWNED BY dbo.ci_build_trace_chunks.id;


--
-- Name: ci_build_trace_section_names; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_build_trace_section_names (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: ci_build_trace_section_names_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_build_trace_section_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_build_trace_section_names_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_build_trace_section_names_id_seq OWNED BY dbo.ci_build_trace_section_names.id;


--
-- Name: ci_build_trace_sections; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: ci_build_trace_sections_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_build_trace_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_build_trace_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_build_trace_sections_id_seq OWNED BY dbo.ci_build_trace_sections.id;


--
-- Name: ci_builds; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_builds (
    id integer NOT NULL,
    status character varying,
    finished_at datetime ,
    trace text,
    created_at datetime ,
    updated_at datetime ,
    started_at datetime ,
    runner_id integer,
    coverage double precision,
    commit_id integer,
    commands text,
    name character varying,
    options text,
    allow_failure bit DEFAULT 0 NOT NULL,
    stage character varying,
    trigger_request_id integer,
    stage_idx integer,
    tag bit,
    ref character varying,
    user_id integer,
    type character varying,
    target_url character varying,
    description character varying,
    artifacts_file text,
    project_id integer,
    artifacts_metadata text,
    erased_by_id integer,
    erased_at datetime ,
    artifacts_expire_at datetime ,
    environment character varying,
    artifacts_size bigint,
    "when" character varying,
    yaml_variables text,
    queued_at datetime ,
    token character varying,
    lock_version integer,
    coverage_regex character varying,
    auto_canceled_by_id integer,
    retried bit,
    stage_id integer,
    artifacts_file_store integer,
    artifacts_metadata_store integer,
    protected bit,
    failure_reason integer,
    scheduled_at datetime ,
    token_encrypted character varying
);


--
-- Name: ci_builds_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_builds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_builds_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_builds_id_seq OWNED BY dbo.ci_builds.id;


--
-- Name: ci_builds_metadata; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_builds_metadata (
    id integer NOT NULL,
    build_id integer NOT NULL,
    project_id integer NOT NULL,
    timeout integer,
    timeout_source integer DEFAULT 1 NOT NULL,
    config_options NVARCHAR,
    config_variables NVARCHAR
);


--
-- Name: ci_builds_metadata_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_builds_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_builds_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_builds_metadata_id_seq OWNED BY dbo.ci_builds_metadata.id;


--
-- Name: ci_builds_runner_session; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_builds_runner_session (
    id bigint NOT NULL,
    build_id integer NOT NULL,
    url character varying NOT NULL,
    certificate character varying,
    "authorization" character varying
);


--
-- Name: ci_builds_runner_session_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_builds_runner_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_builds_runner_session_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_builds_runner_session_id_seq OWNED BY dbo.ci_builds_runner_session.id;


--
-- Name: ci_group_variables; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_group_variables (
    id integer NOT NULL,
    key_base character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    group_id integer NOT NULL,
    protected bit DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    masked bit DEFAULT 0 NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_group_variables_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_group_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_group_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_group_variables_id_seq OWNED BY dbo.ci_group_variables.id;


--
-- Name: ci_job_artifacts; Type: TABLE; Schema: dbo; Owner: -
--

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
    file_base character varying,
    file_sha256 VARBINARY(100),
    file_format smallint,
    file_location smallint
);


--
-- Name: ci_job_artifacts_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_job_artifacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_job_artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_job_artifacts_id_seq OWNED BY dbo.ci_job_artifacts.id;


--
-- Name: ci_pipeline_chat_data; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_pipeline_chat_data (
    id bigint NOT NULL,
    pipeline_id integer NOT NULL,
    chat_name_id integer NOT NULL,
    response_url text NOT NULL
);


--
-- Name: ci_pipeline_chat_data_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_pipeline_chat_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_chat_data_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_pipeline_chat_data_id_seq OWNED BY dbo.ci_pipeline_chat_data.id;


--
-- Name: ci_pipeline_schedule_variables; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_pipeline_schedule_variables (
    id bigint NOT NULL,
    key_base character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    pipeline_schedule_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_pipeline_schedule_variables_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_pipeline_schedule_variables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_schedule_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_pipeline_schedule_variables_id_seq OWNED BY dbo.ci_pipeline_schedule_variables.id;


--
-- Name: ci_pipeline_schedules; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_pipeline_schedules (
    id integer NOT NULL,
    description character varying,
    ref character varying,
    cron character varying,
    cron_timezone character varying,
    next_run_at datetime ,
    project_id integer,
    owner_id integer,
    active bit DEFAULT 1,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: ci_pipeline_schedules_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_pipeline_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_pipeline_schedules_id_seq OWNED BY dbo.ci_pipeline_schedules.id;


--
-- Name: ci_pipeline_variables; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_pipeline_variables (
    id integer NOT NULL,
    key_base character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    pipeline_id integer NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_pipeline_variables_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_pipeline_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_pipeline_variables_id_seq OWNED BY dbo.ci_pipeline_variables.id;


--
-- Name: ci_pipelines; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_pipelines (
    id integer NOT NULL,
    ref character varying,
    sha character varying,
    before_sha character varying,
    created_at datetime ,
    updated_at datetime ,
    tag bit DEFAULT 0,
    yaml_errors text,
    committed_at datetime ,
    project_id integer,
    status character varying,
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


--
-- Name: ci_pipelines_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_pipelines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipelines_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_pipelines_id_seq OWNED BY dbo.ci_pipelines.id;


--
-- Name: ci_runner_namespaces; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_runner_namespaces (
    id integer NOT NULL,
    runner_id integer,
    namespace_id integer
);


--
-- Name: ci_runner_namespaces_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_runner_namespaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_runner_namespaces_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_runner_namespaces_id_seq OWNED BY dbo.ci_runner_namespaces.id;


--
-- Name: ci_runner_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_runner_projects (
    id integer NOT NULL,
    runner_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    project_id integer
);


--
-- Name: ci_runner_projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_runner_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_runner_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_runner_projects_id_seq OWNED BY dbo.ci_runner_projects.id;


--
-- Name: ci_runners; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_runners (
    id integer NOT NULL,
    token character varying,
    created_at datetime ,
    updated_at datetime ,
    description character varying,
    contacted_at datetime ,
    active bit DEFAULT 1 NOT NULL,
    is_shared bit DEFAULT 0,
    name character varying,
    version character varying,
    revision character varying,
    platform character varying,
    architecture character varying,
    run_untagged bit DEFAULT 1 NOT NULL,
    locked bit DEFAULT 0 NOT NULL,
    access_level integer DEFAULT 0 NOT NULL,
    ip_address character varying,
    maximum_timeout integer,
    runner_type smallint NOT NULL,
    token_encrypted character varying
);


--
-- Name: ci_runners_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_runners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_runners_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_runners_id_seq OWNED BY dbo.ci_runners.id;


--
-- Name: ci_stages; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_stages (
    id integer NOT NULL,
    project_id integer,
    pipeline_id integer,
    created_at datetime ,
    updated_at datetime ,
    name character varying,
    status integer,
    lock_version integer,
    "position" integer
);


--
-- Name: ci_stages_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_stages_id_seq OWNED BY dbo.ci_stages.id;


--
-- Name: ci_trigger_requests; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_trigger_requests (
    id integer NOT NULL,
    trigger_id integer NOT NULL,
    variables text,
    created_at datetime ,
    updated_at datetime ,
    commit_id integer
);


--
-- Name: ci_trigger_requests_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_trigger_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_trigger_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_trigger_requests_id_seq OWNED BY dbo.ci_trigger_requests.id;


--
-- Name: ci_triggers; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_triggers (
    id integer NOT NULL,
    token character varying,
    created_at datetime ,
    updated_at datetime ,
    project_id integer,
    owner_id integer,
    description character varying,
    ref character varying
);


--
-- Name: ci_triggers_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_triggers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_triggers_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_triggers_id_seq OWNED BY dbo.ci_triggers.id;


--
-- Name: ci_variables; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.ci_variables (
    id integer NOT NULL,
    key_base character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    project_id integer NOT NULL,
    protected bit DEFAULT 0 NOT NULL,
    environment_scope character varying DEFAULT '*' NOT NULL,
    masked bit DEFAULT 0 NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_variables_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.ci_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.ci_variables_id_seq OWNED BY dbo.ci_variables.id;


--
-- Name: cluster_groups; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.cluster_groups (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: cluster_groups_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.cluster_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.cluster_groups_id_seq OWNED BY dbo.cluster_groups.id;


--
-- Name: cluster_platforms_kubernetes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.cluster_platforms_kubernetes (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    api_url text,
    ca_cert text,
    namespace character varying,
    username character varying,
    encrypted_password text,
    encrypted_password_iv character varying,
    encrypted_token text,
    encrypted_token_iv character varying,
    authorization_type smallint
);


--
-- Name: cluster_platforms_kubernetes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.cluster_platforms_kubernetes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_platforms_kubernetes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.cluster_platforms_kubernetes_id_seq OWNED BY dbo.cluster_platforms_kubernetes.id;


--
-- Name: cluster_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.cluster_projects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: cluster_projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.cluster_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.cluster_projects_id_seq OWNED BY dbo.cluster_projects.id;


--
-- Name: cluster_providers_gcp; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.cluster_providers_gcp (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer,
    num_nodes integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status_reason text,
    gcp_project_id character varying NOT NULL,
    zone character varying NOT NULL,
    machine_type character varying,
    operation_id character varying,
    endpoint character varying,
    encrypted_access_token text,
    encrypted_access_token_iv character varying,
    legacy_abac bit DEFAULT 0 NOT NULL
);


--
-- Name: cluster_providers_gcp_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.cluster_providers_gcp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_providers_gcp_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.cluster_providers_gcp_id_seq OWNED BY dbo.cluster_providers_gcp.id;


--
-- Name: clusters; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters (
    id integer NOT NULL,
    user_id integer,
    provider_type integer,
    platform_type integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    enabled bit DEFAULT 1,
    name character varying NOT NULL,
    environment_scope character varying DEFAULT '*' NOT NULL,
    cluster_type smallint DEFAULT 3 NOT NULL,
    domain character varying,
    managed bit DEFAULT 1 NOT NULL
);


--
-- Name: clusters_applications_cert_managers; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_cert_managers (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    email character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status_reason text
);


--
-- Name: clusters_applications_cert_managers_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_cert_managers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_cert_managers_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_cert_managers_id_seq OWNED BY dbo.clusters_applications_cert_managers.id;


--
-- Name: clusters_applications_helm; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_helm (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    status_reason text,
    encrypted_ca_key_base text,
    encrypted_ca_key_iv text,
    ca_cert text
);


--
-- Name: clusters_applications_helm_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_helm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_helm_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_helm_id_seq OWNED BY dbo.clusters_applications_helm.id;


--
-- Name: clusters_applications_ingress; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_ingress (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status integer NOT NULL,
    ingress_type integer NOT NULL,
    version character varying NOT NULL,
    cluster_ip character varying,
    status_reason text,
    external_ip character varying,
    external_hostname character varying
);


--
-- Name: clusters_applications_ingress_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_ingress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_ingress_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_ingress_id_seq OWNED BY dbo.clusters_applications_ingress.id;


--
-- Name: clusters_applications_jupyter; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_jupyter (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    oauth_application_id integer,
    status integer NOT NULL,
    version character varying NOT NULL,
    hostname character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status_reason text
);


--
-- Name: clusters_applications_jupyter_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_jupyter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_jupyter_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_jupyter_id_seq OWNED BY dbo.clusters_applications_jupyter.id;


--
-- Name: clusters_applications_knative; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_knative (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    hostname character varying,
    status_reason text,
    external_ip character varying,
    external_hostname character varying
);


--
-- Name: clusters_applications_knative_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_knative_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_knative_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_knative_id_seq OWNED BY dbo.clusters_applications_knative.id;


--
-- Name: clusters_applications_prometheus; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_prometheus (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    status_reason text,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: clusters_applications_prometheus_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_prometheus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_prometheus_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_prometheus_id_seq OWNED BY dbo.clusters_applications_prometheus.id;


--
-- Name: clusters_applications_runners; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_applications_runners (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    runner_id integer,
    status integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    version character varying NOT NULL,
    status_reason text,
    privileged bit DEFAULT 1 NOT NULL
);


--
-- Name: clusters_applications_runners_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_applications_runners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_runners_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_applications_runners_id_seq OWNED BY dbo.clusters_applications_runners.id;


--
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_id_seq OWNED BY dbo.clusters.id;


--
-- Name: clusters_kubernetes_namespaces; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.clusters_kubernetes_namespaces (
    id bigint NOT NULL,
    cluster_id integer NOT NULL,
    project_id integer,
    cluster_project_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    encrypted_service_account_token text,
    encrypted_service_account_token_iv character varying,
    namespace character varying NOT NULL,
    service_account_name character varying
);


--
-- Name: clusters_kubernetes_namespaces_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.clusters_kubernetes_namespaces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_kubernetes_namespaces_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.clusters_kubernetes_namespaces_id_seq OWNED BY dbo.clusters_kubernetes_namespaces.id;


--
-- Name: container_repositories; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.container_repositories (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: container_repositories_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.container_repositories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: container_repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.container_repositories_id_seq OWNED BY dbo.container_repositories.id;


--
-- Name: conversational_development_index_metrics; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: conversational_development_index_metrics_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.conversational_development_index_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: conversational_development_index_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.conversational_development_index_metrics_id_seq OWNED BY dbo.conversational_development_index_metrics.id;


--
-- Name: deploy_keys_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.deploy_keys_projects (
    id integer NOT NULL,
    deploy_key_id integer NOT NULL,
    project_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    can_push bit DEFAULT 0 NOT NULL
);


--
-- Name: deploy_keys_projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.deploy_keys_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deploy_keys_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.deploy_keys_projects_id_seq OWNED BY dbo.deploy_keys_projects.id;


--
-- Name: deploy_tokens; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.deploy_tokens (
    id integer NOT NULL,
    revoked bit DEFAULT 0,
    read_repository bit DEFAULT 0 NOT NULL,
    read_registry bit DEFAULT 0 NOT NULL,
    expires_at datetime  NOT NULL,
    created_at datetime  NOT NULL,
    name character varying NOT NULL,
    token character varying NOT NULL
);


--
-- Name: deploy_tokens_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.deploy_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deploy_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.deploy_tokens_id_seq OWNED BY dbo.deploy_tokens.id;


--
-- Name: deployments; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.deployments (
    id integer NOT NULL,
    iid integer NOT NULL,
    project_id integer NOT NULL,
    environment_id integer NOT NULL,
    ref character varying NOT NULL,
    tag bit NOT NULL,
    sha character varying NOT NULL,
    user_id integer,
    deployable_id integer,
    deployable_type character varying,
    created_at datetime ,
    updated_at datetime ,
    on_stop character varying,
    status smallint NOT NULL,
    finished_at datetime 
);


--
-- Name: deployments_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.deployments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deployments_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.deployments_id_seq OWNED BY dbo.deployments.id;


--
-- Name: emails; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.emails (
    id integer NOT NULL,
    user_id integer NOT NULL,
    email character varying NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    confirmation_token character varying,
    confirmed_at datetime ,
    confirmation_sent_at datetime 
);


--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.emails_id_seq OWNED BY dbo.emails.id;


--
-- Name: environments; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.environments (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    external_url character varying,
    environment_type character varying,
    state character varying DEFAULT 'available' NOT NULL,
    slug character varying NOT NULL
);


--
-- Name: environments_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.environments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: environments_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.environments_id_seq OWNED BY dbo.environments.id;


--
-- Name: events; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.events (
    id integer NOT NULL,
    project_id integer,
    author_id integer NOT NULL,
    target_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    action smallint NOT NULL,
    target_type character varying
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.events_id_seq OWNED BY dbo.events.id;


--
-- Name: feature_gates; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.feature_gates (
    id integer NOT NULL,
    feature_key_base character varying NOT NULL,
    key_base character varying NOT NULL,
    value character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: feature_gates_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.feature_gates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feature_gates_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.feature_gates_id_seq OWNED BY dbo.feature_gates.id;


--
-- Name: features; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.features (
    id integer NOT NULL,
    key_base character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: features_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.features_id_seq OWNED BY dbo.features.id;


--
-- Name: fork_network_members; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.fork_network_members (
    id integer NOT NULL,
    fork_network_id integer NOT NULL,
    project_id integer NOT NULL,
    forked_from_project_id integer
);


--
-- Name: fork_network_members_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.fork_network_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fork_network_members_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.fork_network_members_id_seq OWNED BY dbo.fork_network_members.id;


--
-- Name: fork_networks; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.fork_networks (
    id integer NOT NULL,
    root_project_id integer,
    deleted_root_project_name character varying
);


--
-- Name: fork_networks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.fork_networks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fork_networks_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.fork_networks_id_seq OWNED BY dbo.fork_networks.id;


--
-- Name: forked_project_links; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.forked_project_links (
    id integer NOT NULL,
    forked_to_project_id integer NOT NULL,
    forked_from_project_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: forked_project_links_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.forked_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forked_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.forked_project_links_id_seq OWNED BY dbo.forked_project_links.id;


--
-- Name: gpg_key_subkeys; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.gpg_key_subkeys (
    id integer NOT NULL,
    gpg_key_id integer NOT NULL,
    keyid VARBINARY(100),
    fingerprint VARBINARY(100)
);


--
-- Name: gpg_key_subkeys_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.gpg_key_subkeys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gpg_key_subkeys_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.gpg_key_subkeys_id_seq OWNED BY dbo.gpg_key_subkeys.id;


--
-- Name: gpg_keys; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.gpg_keys (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer,
    primary_keyid VARBINARY(100),
    fingerprint VARBINARY(100),
    key_base text
);


--
-- Name: gpg_keys_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.gpg_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gpg_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.gpg_keys_id_seq OWNED BY dbo.gpg_keys.id;


--
-- Name: gpg_signatures; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: gpg_signatures_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.gpg_signatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gpg_signatures_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.gpg_signatures_id_seq OWNED BY dbo.gpg_signatures.id;


--
-- Name: group_custom_attributes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.group_custom_attributes (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    group_id integer NOT NULL,
    key_base character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: group_custom_attributes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.group_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: group_custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.group_custom_attributes_id_seq OWNED BY dbo.group_custom_attributes.id;


--
-- Name: identities; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.identities (
    id integer NOT NULL,
    extern_uid character varying,
    provider character varying,
    user_id integer,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: identities_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.identities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: identities_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.identities_id_seq OWNED BY dbo.identities.id;


--
-- Name: import_export_uploads; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.import_export_uploads (
    id integer NOT NULL,
    updated_at datetime  NOT NULL,
    project_id integer,
    import_file text,
    export_file text
);


--
-- Name: import_export_uploads_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.import_export_uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: import_export_uploads_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.import_export_uploads_id_seq OWNED BY dbo.import_export_uploads.id;


--
-- Name: internal_ids; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.internal_ids (
    id bigint NOT NULL,
    project_id integer,
    usage integer NOT NULL,
    last_value integer NOT NULL,
    namespace_id integer
);


--
-- Name: internal_ids_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.internal_ids_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: internal_ids_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.internal_ids_id_seq OWNED BY dbo.internal_ids.id;


--
-- Name: issue_assignees; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.issue_assignees (
    user_id integer NOT NULL,
    issue_id integer NOT NULL
);


--
-- Name: issue_metrics; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.issue_metrics (
    id integer NOT NULL,
    issue_id integer NOT NULL,
    first_mentioned_in_commit_at datetime ,
    first_associated_with_milestone_at datetime ,
    first_added_to_board_at datetime ,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: issue_metrics_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.issue_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.issue_metrics_id_seq OWNED BY dbo.issue_metrics.id;


--
-- Name: issues; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.issues (
    id integer NOT NULL,
    title character varying,
    author_id integer,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    description text,
    milestone_id integer,
    state character varying,
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


--
-- Name: issues_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.issues_id_seq OWNED BY dbo.issues.id;


--
-- Name: keys; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.keys (
    id integer NOT NULL,
    user_id integer,
    created_at datetime ,
    updated_at datetime ,
    key_base text,
    title character varying,
    type character varying,
    fingerprint character varying,
    dbo bit DEFAULT 0 NOT NULL,
    last_used_at datetime 
);


--
-- Name: keys_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: keys_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.keys_id_seq OWNED BY dbo.keys.id;


--
-- Name: label_links; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.label_links (
    id integer NOT NULL,
    label_id integer,
    target_id integer,
    target_type character varying,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: label_links_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.label_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: label_links_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.label_links_id_seq OWNED BY dbo.label_links.id;


--
-- Name: label_priorities; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.label_priorities (
    id integer NOT NULL,
    project_id integer NOT NULL,
    label_id integer NOT NULL,
    priority integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: label_priorities_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.label_priorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: label_priorities_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.label_priorities_id_seq OWNED BY dbo.label_priorities.id;


--
-- Name: labels; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.labels (
    id integer NOT NULL,
    title character varying,
    color character varying,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    template bit DEFAULT 0,
    description character varying,
    description_html text,
    type character varying,
    group_id integer,
    cached_markdown_version integer
);


--
-- Name: labels_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: labels_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.labels_id_seq OWNED BY dbo.labels.id;


--
-- Name: lfs_file_locks; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.lfs_file_locks (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at datetime  NOT NULL,
    path character varying(511)
);


--
-- Name: lfs_file_locks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.lfs_file_locks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lfs_file_locks_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.lfs_file_locks_id_seq OWNED BY dbo.lfs_file_locks.id;


--
-- Name: lfs_objects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.lfs_objects (
    id integer NOT NULL,
    oid character varying NOT NULL,
    size bigint NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    file_base character varying,
    file_store integer
);


--
-- Name: lfs_objects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.lfs_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lfs_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.lfs_objects_id_seq OWNED BY dbo.lfs_objects.id;


--
-- Name: lfs_objects_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.lfs_objects_projects (
    id integer NOT NULL,
    lfs_object_id integer NOT NULL,
    project_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: lfs_objects_projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.lfs_objects_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lfs_objects_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.lfs_objects_projects_id_seq OWNED BY dbo.lfs_objects_projects.id;


--
-- Name: lists; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.lists (
    id integer NOT NULL,
    board_id integer NOT NULL,
    label_id integer,
    list_type integer DEFAULT 1 NOT NULL,
    "position" integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.lists_id_seq OWNED BY dbo.lists.id;


--
-- Name: members; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.members (
    id integer NOT NULL,
    access_level integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    user_id integer,
    notification_level integer NOT NULL,
    type character varying,
    created_at datetime ,
    updated_at datetime ,
    created_by_id integer,
    invite_email character varying,
    invite_token character varying,
    invite_accepted_at datetime ,
    requested_at datetime ,
    expires_at date
);


--
-- Name: members_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.members_id_seq OWNED BY dbo.members.id;


--
-- Name: merge_request_assignees; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.merge_request_assignees (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    merge_request_id integer NOT NULL
);


--
-- Name: merge_request_assignees_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_request_assignees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_assignees_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_request_assignees_id_seq OWNED BY dbo.merge_request_assignees.id;


--
-- Name: merge_request_blocks; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.merge_request_blocks (
    id bigint NOT NULL,
    blocking_merge_request_id integer NOT NULL,
    blocked_merge_request_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: merge_request_blocks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_request_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_request_blocks_id_seq OWNED BY dbo.merge_request_blocks.id;


--
-- Name: merge_request_diff_commits; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: merge_request_diff_files; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.merge_request_diff_files (
    merge_request_diff_id integer NOT NULL,
    relative_order integer NOT NULL,
    new_file bit NOT NULL,
    renamed_file bit NOT NULL,
    deleted_file bit NOT NULL,
    too_large bit NOT NULL,
    a_mode character varying NOT NULL,
    b_mode character varying NOT NULL,
    new_path text NOT NULL,
    old_path text NOT NULL,
    diff text,
    "binary" bit,
    external_diff_offset integer,
    external_diff_size integer
);


--
-- Name: merge_request_diffs; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.merge_request_diffs (
    id integer NOT NULL,
    state character varying,
    merge_request_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    base_commit_sha character varying,
    real_size character varying,
    head_commit_sha character varying,
    start_commit_sha character varying,
    commits_count integer,
    external_diff character varying,
    external_diff_store integer,
    stored_externally bit
);


--
-- Name: merge_request_diffs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_request_diffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_diffs_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_request_diffs_id_seq OWNED BY dbo.merge_request_diffs.id;


--
-- Name: merge_request_metrics; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: merge_request_metrics_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_request_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_request_metrics_id_seq OWNED BY dbo.merge_request_metrics.id;


--
-- Name: merge_requests; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.merge_requests (
    id integer NOT NULL,
    target_branch character varying NOT NULL,
    source_branch character varying NOT NULL,
    source_project_id integer,
    author_id integer,
    assignee_id integer,
    title character varying,
    created_at datetime ,
    updated_at datetime ,
    milestone_id integer,
    state character varying DEFAULT 'opened' NOT NULL,
    merge_status character varying DEFAULT 'unchecked' NOT NULL,
    target_project_id integer NOT NULL,
    iid integer,
    description text,
    updated_by_id integer,
    merge_error text,
    merge_params text,
    merge_when_pipeline_succeeds bit DEFAULT 0 NOT NULL,
    merge_user_id integer,
    merge_commit_sha character varying,
    in_progress_merge_commit_sha character varying,
    lock_version integer,
    title_html text,
    description_html text,
    time_estimate integer,
    cached_markdown_version integer,
    last_edited_at datetime ,
    last_edited_by_id integer,
    head_pipeline_id integer,
    merge_jid character varying,
    discussion_locked bit,
    latest_merge_request_diff_id integer,
    rebase_commit_sha character varying,
    squash bit DEFAULT 0 NOT NULL,
    allow_maintainer_to_push bit,
    state_id smallint
);


--
-- Name: merge_requests_closing_issues; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.merge_requests_closing_issues (
    id integer NOT NULL,
    merge_request_id integer NOT NULL,
    issue_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: merge_requests_closing_issues_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_requests_closing_issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_requests_closing_issues_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_requests_closing_issues_id_seq OWNED BY dbo.merge_requests_closing_issues.id;


--
-- Name: merge_requests_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_requests_id_seq OWNED BY dbo.merge_requests.id;


--
-- Name: merge_trains; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: merge_trains_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.merge_trains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_trains_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.merge_trains_id_seq OWNED BY dbo.merge_trains.id;


--
-- Name: milestones; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.milestones (
    id integer NOT NULL,
    title character varying NOT NULL,
    project_id integer,
    description text,
    due_date date,
    created_at datetime ,
    updated_at datetime ,
    state character varying,
    iid integer,
    title_html text,
    description_html text,
    start_date date,
    cached_markdown_version integer,
    group_id integer
);


--
-- Name: milestones_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.milestones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: milestones_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.milestones_id_seq OWNED BY dbo.milestones.id;


--
-- Name: namespaces; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.namespaces (
    id integer NOT NULL,
    name character varying NOT NULL,
    path character varying NOT NULL,
    owner_id integer,
    created_at datetime ,
    updated_at datetime ,
    type character varying,
    description character varying DEFAULT '' NOT NULL,
    avatar character varying,
    share_with_group_lock bit DEFAULT 0,
    visibility_level integer DEFAULT 20 NOT NULL,
    request_access_enabled bit DEFAULT 0 NOT NULL,
    description_html text,
    lfs_enabled bit,
    parent_id integer,
    require_two_factor_authentication bit DEFAULT 0 NOT NULL,
    two_factor_grace_period integer DEFAULT 48 NOT NULL,
    cached_markdown_version integer,
    runners_token character varying,
    runners_token_encrypted character varying,
    project_creation_level integer,
    auto_devops_enabled bit,
    last_ci_minutes_notification_at datetime 
);


--
-- Name: namespaces_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.namespaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: namespaces_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.namespaces_id_seq OWNED BY dbo.namespaces.id;


--
-- Name: note_diff_files; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.note_diff_files (
    id integer NOT NULL,
    diff_note_id integer NOT NULL,
    diff text NOT NULL,
    new_file bit NOT NULL,
    renamed_file bit NOT NULL,
    deleted_file bit NOT NULL,
    a_mode character varying NOT NULL,
    b_mode character varying NOT NULL,
    new_path text NOT NULL,
    old_path text NOT NULL
);


--
-- Name: note_diff_files_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.note_diff_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: note_diff_files_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.note_diff_files_id_seq OWNED BY dbo.note_diff_files.id;


--
-- Name: notes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.notes (
    id integer NOT NULL,
    note text,
    noteable_type character varying,
    author_id integer,
    created_at datetime ,
    updated_at datetime ,
    project_id integer,
    attachment character varying,
    line_code character varying,
    commit_id character varying,
    noteable_id integer,
    system bit DEFAULT 0 NOT NULL,
    st_diff text,
    updated_by_id integer,
    type character varying,
    "position" text,
    original_position text,
    resolved_at datetime ,
    resolved_by_id integer,
    discussion_id character varying,
    note_html text,
    cached_markdown_version integer,
    change_position text,
    resolved_by_push bit
);


--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.notes_id_seq OWNED BY dbo.notes.id;


--
-- Name: notification_settings; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.notification_settings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    source_id integer,
    source_type character varying,
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
    notification_email character varying
);


--
-- Name: notification_settings_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.notification_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notification_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.notification_settings_id_seq OWNED BY dbo.notification_settings.id;


--
-- Name: oauth_access_grants; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.oauth_access_grants (
    id integer NOT NULL,
    resource_owner_id integer NOT NULL,
    application_id integer NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    created_at datetime  NOT NULL,
    revoked_at datetime ,
    scopes character varying
);


--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.oauth_access_grants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.oauth_access_grants_id_seq OWNED BY dbo.oauth_access_grants.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.oauth_access_tokens (
    id integer NOT NULL,
    resource_owner_id integer,
    application_id integer,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at datetime ,
    created_at datetime  NOT NULL,
    scopes character varying
);


--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.oauth_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.oauth_access_tokens_id_seq OWNED BY dbo.oauth_access_tokens.id;


--
-- Name: oauth_applications; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.oauth_applications (
    id integer NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri text NOT NULL,
    scopes character varying DEFAULT '' NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    owner_id integer,
    owner_type character varying,
    trusted bit DEFAULT 0 NOT NULL
);


--
-- Name: oauth_applications_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.oauth_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.oauth_applications_id_seq OWNED BY dbo.oauth_applications.id;


--
-- Name: oauth_openid_requests; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.oauth_openid_requests (
    id integer NOT NULL,
    access_grant_id integer NOT NULL,
    nonce character varying NOT NULL
);


--
-- Name: oauth_openid_requests_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.oauth_openid_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_openid_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.oauth_openid_requests_id_seq OWNED BY dbo.oauth_openid_requests.id;


--
-- Name: pages_domain_acme_orders; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.pages_domain_acme_orders (
    id bigint NOT NULL,
    pages_domain_id integer NOT NULL,
    expires_at datetime  NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    url character varying NOT NULL,
    challenge_token character varying NOT NULL,
    challenge_file_content text NOT NULL,
    encrypted_private_key_base text NOT NULL,
    encrypted_private_key_iv text NOT NULL
);


--
-- Name: pages_domain_acme_orders_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.pages_domain_acme_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_domain_acme_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.pages_domain_acme_orders_id_seq OWNED BY dbo.pages_domain_acme_orders.id;


--
-- Name: pages_domains; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.pages_domains (
    id integer NOT NULL,
    project_id integer,
    certificate text,
    encrypted_key_base text,
    encrypted_key_iv character varying,
    encrypted_key_salt character varying,
    domain character varying,
    verified_at datetime ,
    verification_code character varying NOT NULL,
    enabled_until datetime ,
    remove_at datetime ,
    auto_ssl_enabled bit DEFAULT 0 NOT NULL,
    certificate_valid_not_before datetime ,
    certificate_valid_not_after datetime 
);


--
-- Name: pages_domains_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.pages_domains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_domains_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.pages_domains_id_seq OWNED BY dbo.pages_domains.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.personal_access_tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name character varying NOT NULL,
    revoked bit DEFAULT 0,
    expires_at date,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    scopes character varying DEFAULT '--- []
' NOT NULL,
    impersonation bit DEFAULT 0 NOT NULL,
    token_digest character varying
);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.personal_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.personal_access_tokens_id_seq OWNED BY dbo.personal_access_tokens.id;


--
-- Name: pool_repositories; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.pool_repositories (
    id bigint NOT NULL,
    shard_id integer NOT NULL,
    disk_path character varying,
    state character varying,
    source_project_id integer
);


--
-- Name: pool_repositories_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.pool_repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pool_repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.pool_repositories_id_seq OWNED BY dbo.pool_repositories.id;


--
-- Name: programming_languages; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.programming_languages (
    id integer NOT NULL,
    name character varying NOT NULL,
    color character varying NOT NULL,
    created_at datetime  NOT NULL
);


--
-- Name: programming_languages_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.programming_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: programming_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.programming_languages_id_seq OWNED BY dbo.programming_languages.id;


--
-- Name: project_authorizations; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_authorizations (
    user_id integer NOT NULL,
    project_id integer NOT NULL,
    access_level integer NOT NULL
);


--
-- Name: project_auto_devops; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_auto_devops (
    id integer NOT NULL,
    project_id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    enabled bit,
    deploy_strategy integer DEFAULT 0 NOT NULL
);


--
-- Name: project_auto_devops_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_auto_devops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_auto_devops_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_auto_devops_id_seq OWNED BY dbo.project_auto_devops.id;


--
-- Name: project_ci_cd_settings; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_ci_cd_settings (
    id integer NOT NULL,
    project_id integer NOT NULL,
    group_runners_enabled bit DEFAULT 1 NOT NULL,
    merge_pipelines_enabled bit,
    merge_trains_enabled bit DEFAULT 0 NOT NULL,
    default_git_depth integer
);


--
-- Name: project_ci_cd_settings_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_ci_cd_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_ci_cd_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_ci_cd_settings_id_seq OWNED BY dbo.project_ci_cd_settings.id;


--
-- Name: project_custom_attributes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_custom_attributes (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    project_id integer NOT NULL,
    key_base character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: project_custom_attributes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_custom_attributes_id_seq OWNED BY dbo.project_custom_attributes.id;


--
-- Name: project_daily_statistics; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_daily_statistics (
    id bigint NOT NULL,
    project_id integer NOT NULL,
    fetch_count integer NOT NULL,
    date date
);


--
-- Name: project_daily_statistics_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_daily_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_daily_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_daily_statistics_id_seq OWNED BY dbo.project_daily_statistics.id;


--
-- Name: project_deploy_tokens; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_deploy_tokens (
    id integer NOT NULL,
    project_id integer NOT NULL,
    deploy_token_id integer NOT NULL,
    created_at datetime  NOT NULL
);


--
-- Name: project_deploy_tokens_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_deploy_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_deploy_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_deploy_tokens_id_seq OWNED BY dbo.project_deploy_tokens.id;


--
-- Name: project_error_tracking_settings; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_error_tracking_settings (
    project_id integer NOT NULL,
    enabled bit DEFAULT 0 NOT NULL,
    api_url character varying,
    encrypted_token character varying,
    encrypted_token_iv character varying,
    project_name character varying,
    organization_name character varying
);


--
-- Name: project_features; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: project_features_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_features_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_features_id_seq OWNED BY dbo.project_features.id;


--
-- Name: project_group_links; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_group_links (
    id integer NOT NULL,
    project_id integer NOT NULL,
    group_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    group_access integer DEFAULT 30 NOT NULL,
    expires_at date
);


--
-- Name: project_group_links_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_group_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_group_links_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_group_links_id_seq OWNED BY dbo.project_group_links.id;


--
-- Name: project_import_data; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_import_data (
    id integer NOT NULL,
    project_id integer,
    data text,
    encrypted_credentials text,
    encrypted_credentials_iv character varying,
    encrypted_credentials_salt character varying
);


--
-- Name: project_import_data_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_import_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_import_data_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_import_data_id_seq OWNED BY dbo.project_import_data.id;


--
-- Name: project_metrics_settings; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_metrics_settings (
    project_id integer NOT NULL,
    external_dashboard_url character varying NOT NULL
);


--
-- Name: project_mirror_data; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_mirror_data (
    id integer NOT NULL,
    project_id integer NOT NULL,
    status character varying,
    jid character varying,
    last_error text
);


--
-- Name: project_mirror_data_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_mirror_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_mirror_data_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_mirror_data_id_seq OWNED BY dbo.project_mirror_data.id;


--
-- Name: project_repositories; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.project_repositories (
    id bigint NOT NULL,
    shard_id integer NOT NULL,
    disk_path character varying NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: project_repositories_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_repositories_id_seq OWNED BY dbo.project_repositories.id;


--
-- Name: project_statistics; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: project_statistics_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.project_statistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.project_statistics_id_seq OWNED BY dbo.project_statistics.id;


--
-- Name: projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.projects (
    id integer NOT NULL,
    name character varying,
    path character varying,
    description text,
    created_at datetime ,
    updated_at datetime ,
    creator_id integer,
    namespace_id integer NOT NULL,
    last_activity_at datetime ,
    import_url character varying,
    visibility_level integer DEFAULT 0 NOT NULL,
    archived bit DEFAULT 0 NOT NULL,
    avatar character varying,
    import_status character varying,
    star_count integer DEFAULT 0 NOT NULL,
    import_type character varying,
    import_source character varying,
    import_error text,
    shared_runners_enabled bit DEFAULT 1 NOT NULL,
    runners_token character varying,
    build_coverage_regex character varying,
    build_allow_git_fetch bit DEFAULT 1 NOT NULL,
    build_timeout integer DEFAULT 3600 NOT NULL,
    pending_delete bit DEFAULT 0,
    dbo_builds bit DEFAULT 1 NOT NULL,
    last_repository_check_failed bit,
    last_repository_check_at datetime ,
    container_registry_enabled bit,
    only_allow_merge_if_pipeline_succeeds bit DEFAULT 0 NOT NULL,
    has_external_issue_tracker bit,
    repository_storage character varying DEFAULT 'default' NOT NULL,
    request_access_enabled bit DEFAULT 0 NOT NULL,
    has_external_wiki bit,
    ci_config_path character varying,
    lfs_enabled bit,
    description_html text,
    only_allow_merge_if_all_discussions_are_resolved bit,
    printing_merge_request_link_enabled bit DEFAULT 1 NOT NULL,
    auto_cancel_pending_pipelines integer DEFAULT 1 NOT NULL,
    import_jid character varying,
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
    runners_token_encrypted character varying,
    bfg_object_map character varying,
    detected_repository_languages bit,
    external_authorization_classification_label character varying
);


--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.projects_id_seq OWNED BY dbo.projects.id;


--
-- Name: prometheus_metrics; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.prometheus_metrics (
    id integer NOT NULL,
    project_id integer,
    title character varying NOT NULL,
    query character varying NOT NULL,
    y_label character varying,
    unit character varying,
    legend character varying,
    "group" integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    common bit DEFAULT 0 NOT NULL,
    identifier character varying
);


--
-- Name: prometheus_metrics_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.prometheus_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prometheus_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.prometheus_metrics_id_seq OWNED BY dbo.prometheus_metrics.id;


--
-- Name: protected_branch_merge_access_levels; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.protected_branch_merge_access_levels (
    id integer NOT NULL,
    protected_branch_id integer NOT NULL,
    access_level integer DEFAULT 40 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: protected_branch_merge_access_levels_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.protected_branch_merge_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_branch_merge_access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.protected_branch_merge_access_levels_id_seq OWNED BY dbo.protected_branch_merge_access_levels.id;


--
-- Name: protected_branch_push_access_levels; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.protected_branch_push_access_levels (
    id integer NOT NULL,
    protected_branch_id integer NOT NULL,
    access_level integer DEFAULT 40 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: protected_branch_push_access_levels_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.protected_branch_push_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_branch_push_access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.protected_branch_push_access_levels_id_seq OWNED BY dbo.protected_branch_push_access_levels.id;


--
-- Name: protected_branches; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.protected_branches (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: protected_branches_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.protected_branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_branches_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.protected_branches_id_seq OWNED BY dbo.protected_branches.id;


--
-- Name: protected_tag_create_access_levels; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.protected_tag_create_access_levels (
    id integer NOT NULL,
    protected_tag_id integer NOT NULL,
    access_level integer DEFAULT 40,
    user_id integer,
    group_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: protected_tag_create_access_levels_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.protected_tag_create_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_tag_create_access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.protected_tag_create_access_levels_id_seq OWNED BY dbo.protected_tag_create_access_levels.id;


--
-- Name: protected_tags; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.protected_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: protected_tags_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.protected_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.protected_tags_id_seq OWNED BY dbo.protected_tags.id;


--
-- Name: push_event_payloads; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.push_event_payloads (
    commit_count bigint NOT NULL,
    event_id integer NOT NULL,
    action smallint NOT NULL,
    ref_type smallint NOT NULL,
    commit_from VARBINARY(100),
    commit_to VARBINARY(100),
    ref text,
    commit_title character varying(70)
);


--
-- Name: redirect_routes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.redirect_routes (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    path character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: redirect_routes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.redirect_routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: redirect_routes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.redirect_routes_id_seq OWNED BY dbo.redirect_routes.id;


--
-- Name: release_links; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.release_links (
    id bigint NOT NULL,
    release_id integer NOT NULL,
    url character varying NOT NULL,
    name character varying NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: release_links_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.release_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.release_links_id_seq OWNED BY dbo.release_links.id;


--
-- Name: releases; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.releases (
    id integer NOT NULL,
    tag character varying,
    description text,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    description_html text,
    cached_markdown_version integer,
    author_id integer,
    name character varying,
    sha character varying
);


--
-- Name: releases_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: releases_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.releases_id_seq OWNED BY dbo.releases.id;


--
-- Name: remote_mirrors; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.remote_mirrors (
    id integer NOT NULL,
    project_id integer,
    url character varying,
    enabled bit DEFAULT 0,
    update_status character varying,
    last_update_at datetime ,
    last_successful_update_at datetime ,
    last_update_started_at datetime ,
    last_error character varying,
    only_protected_branches bit DEFAULT 0 NOT NULL,
    remote_name character varying,
    encrypted_credentials text,
    encrypted_credentials_iv character varying,
    encrypted_credentials_salt character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    error_notification_sent bit
);


--
-- Name: remote_mirrors_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.remote_mirrors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: remote_mirrors_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.remote_mirrors_id_seq OWNED BY dbo.remote_mirrors.id;


--
-- Name: repository_languages; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.repository_languages (
    project_id integer NOT NULL,
    programming_language_id integer NOT NULL,
    share double precision NOT NULL
);


--
-- Name: resource_label_events; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: resource_label_events_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.resource_label_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_label_events_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.resource_label_events_id_seq OWNED BY dbo.resource_label_events.id;


--
-- Name: routes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.routes (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    path character varying NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    name character varying
);


--
-- Name: routes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: routes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.routes_id_seq OWNED BY dbo.routes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: sent_notifications; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.sent_notifications (
    id integer NOT NULL,
    project_id integer,
    noteable_id integer,
    noteable_type character varying,
    recipient_id integer,
    commit_id character varying,
    reply_key_base character varying NOT NULL,
    line_code character varying,
    note_type character varying,
    "position" text,
    in_reply_to_discussion_id character varying
);


--
-- Name: sent_notifications_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.sent_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sent_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.sent_notifications_id_seq OWNED BY dbo.sent_notifications.id;


--
-- Name: services; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.services (
    id integer NOT NULL,
    type character varying,
    title character varying,
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
    category character varying DEFAULT 'common' NOT NULL,
    "default" bit DEFAULT 0,
    wiki_page_events bit DEFAULT 1,
    pipeline_events bit DEFAULT 0 NOT NULL,
    confidential_issues_events bit DEFAULT 1 NOT NULL,
    commit_events bit DEFAULT 1 NOT NULL,
    job_events bit DEFAULT 0 NOT NULL,
    confidential_note_events bit DEFAULT 1,
    deployment_events bit DEFAULT 0 NOT NULL
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.services_id_seq OWNED BY dbo.services.id;


--
-- Name: shards; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.shards (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: shards_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.shards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shards_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.shards_id_seq OWNED BY dbo.shards.id;


--
-- Name: snippets; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.snippets (
    id integer NOT NULL,
    title character varying,
    content text,
    author_id integer NOT NULL,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    file_name character varying,
    type character varying,
    visibility_level integer DEFAULT 0 NOT NULL,
    title_html text,
    content_html text,
    cached_markdown_version integer,
    description text,
    description_html text
);


--
-- Name: snippets_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.snippets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: snippets_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.snippets_id_seq OWNED BY dbo.snippets.id;


--
-- Name: spam_logs; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.spam_logs (
    id integer NOT NULL,
    user_id integer,
    source_ip character varying,
    user_agent character varying,
    via_api bit,
    noteable_type character varying,
    title character varying,
    description text,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    submitted_as_ham bit DEFAULT 0 NOT NULL,
    recaptcha_verified bit DEFAULT 0 NOT NULL
);


--
-- Name: spam_logs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.spam_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: spam_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.spam_logs_id_seq OWNED BY dbo.spam_logs.id;


--
-- Name: subscriptions; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.subscriptions (
    id integer NOT NULL,
    user_id integer,
    subscribable_id integer,
    subscribable_type character varying,
    subscribed bit,
    created_at datetime ,
    updated_at datetime ,
    project_id integer
);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.subscriptions_id_seq OWNED BY dbo.subscriptions.id;


--
-- Name: suggestions; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.suggestions (
    id bigint NOT NULL,
    note_id integer NOT NULL,
    relative_order smallint NOT NULL,
    applied bit DEFAULT 0 NOT NULL,
    commit_id character varying,
    from_content text NOT NULL,
    to_content text NOT NULL,
    lines_above integer DEFAULT 0 NOT NULL,
    lines_below integer DEFAULT 0 NOT NULL,
    outdated bit DEFAULT 0 NOT NULL
);


--
-- Name: suggestions_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.suggestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.suggestions_id_seq OWNED BY dbo.suggestions.id;


--
-- Name: system_note_metadata; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.system_note_metadata (
    id integer NOT NULL,
    note_id integer NOT NULL,
    commit_count integer,
    action character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: system_note_metadata_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.system_note_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: system_note_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.system_note_metadata_id_seq OWNED BY dbo.system_note_metadata.id;


--
-- Name: taggings; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying,
    tagger_id integer,
    tagger_type character varying,
    context character varying,
    created_at datetime 
);


--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.taggings_id_seq OWNED BY dbo.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.tags (
    id integer NOT NULL,
    name character varying,
    taggings_count integer DEFAULT 0
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.tags_id_seq OWNED BY dbo.tags.id;


--
-- Name: term_agreements; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.term_agreements (
    id integer NOT NULL,
    term_id integer NOT NULL,
    user_id integer NOT NULL,
    accepted bit DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: term_agreements_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.term_agreements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: term_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.term_agreements_id_seq OWNED BY dbo.term_agreements.id;


--
-- Name: timelogs; Type: TABLE; Schema: dbo; Owner: -
--

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


--
-- Name: timelogs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.timelogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: timelogs_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.timelogs_id_seq OWNED BY dbo.timelogs.id;


--
-- Name: todos; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.todos (
    id integer NOT NULL,
    user_id integer NOT NULL,
    project_id integer,
    target_id integer,
    target_type character varying NOT NULL,
    author_id integer NOT NULL,
    action integer NOT NULL,
    state character varying NOT NULL,
    created_at datetime ,
    updated_at datetime ,
    note_id integer,
    commit_id character varying,
    group_id integer
);


--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.todos_id_seq OWNED BY dbo.todos.id;


--
-- Name: trending_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.trending_projects (
    id integer NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: trending_projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.trending_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trending_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.trending_projects_id_seq OWNED BY dbo.trending_projects.id;


--
-- Name: u2f_registrations; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.u2f_registrations (
    id integer NOT NULL,
    certificate text,
    key_handle character varying,
    dbo_key_base character varying,
    counter integer,
    user_id integer,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    name character varying
);


--
-- Name: u2f_registrations_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.u2f_registrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: u2f_registrations_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.u2f_registrations_id_seq OWNED BY dbo.u2f_registrations.id;


--
-- Name: uploads; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.uploads (
    id integer NOT NULL,
    size bigint NOT NULL,
    path character varying(511) NOT NULL,
    checksum character varying(64),
    model_id integer,
    model_type character varying,
    uploader character varying NOT NULL,
    created_at datetime  NOT NULL,
    mount_point character varying,
    secret character varying,
    store integer
);


--
-- Name: uploads_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: uploads_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.uploads_id_seq OWNED BY dbo.uploads.id;


--
-- Name: user_agent_details; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_agent_details (
    id integer NOT NULL,
    user_agent character varying NOT NULL,
    ip_address character varying NOT NULL,
    subject_id integer NOT NULL,
    subject_type character varying NOT NULL,
    submitted bit DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: user_agent_details_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.user_agent_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_agent_details_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.user_agent_details_id_seq OWNED BY dbo.user_agent_details.id;


--
-- Name: user_callouts; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_callouts (
    id integer NOT NULL,
    feature_name integer NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: user_callouts_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.user_callouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_callouts_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.user_callouts_id_seq OWNED BY dbo.user_callouts.id;


--
-- Name: user_custom_attributes; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_custom_attributes (
    id integer NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    user_id integer NOT NULL,
    key_base character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: user_custom_attributes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.user_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.user_custom_attributes_id_seq OWNED BY dbo.user_custom_attributes.id;


--
-- Name: user_interacted_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_interacted_projects (
    user_id integer NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: user_preferences; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_preferences (
    id integer NOT NULL,
    user_id integer NOT NULL,
    issue_notes_filter smallint DEFAULT 0 NOT NULL,
    merge_request_notes_filter smallint DEFAULT 0 NOT NULL,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL,
    first_day_of_week integer,
    issues_sort character varying,
    merge_requests_sort character varying,
    timezone character varying,
    time_display_relative bit,
    time_format_in_24h bit
);


--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.user_preferences_id_seq OWNED BY dbo.user_preferences.id;


--
-- Name: user_statuses; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_statuses (
    user_id integer NOT NULL,
    cached_markdown_version integer,
    emoji character varying DEFAULT 'speech_balloon' NOT NULL,
    message character varying(100),
    message_html character varying
);


--
-- Name: user_statuses_user_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.user_statuses_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_statuses_user_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.user_statuses_user_id_seq OWNED BY dbo.user_statuses.user_id;


--
-- Name: user_synced_attributes_metadata; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.user_synced_attributes_metadata (
    id integer NOT NULL,
    name_synced bit DEFAULT 0,
    email_synced bit DEFAULT 0,
    location_synced bit DEFAULT 0,
    user_id integer NOT NULL,
    provider character varying
);


--
-- Name: user_synced_attributes_metadata_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.user_synced_attributes_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_synced_attributes_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.user_synced_attributes_metadata_id_seq OWNED BY dbo.user_synced_attributes_metadata.id;


--
-- Name: users; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.users (
    id integer NOT NULL,
    email character varying DEFAULT '' NOT NULL,
    encrypted_password character varying DEFAULT '' NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at datetime ,
    remember_created_at datetime ,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at datetime ,
    last_sign_in_at datetime ,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at datetime ,
    updated_at datetime ,
    name character varying,
    admin bit DEFAULT 0 NOT NULL,
    projects_limit integer NOT NULL,
    skype character varying DEFAULT '' NOT NULL,
    linkedin character varying DEFAULT '' NOT NULL,
    twitter character varying DEFAULT '' NOT NULL,
    bio character varying,
    failed_attempts integer DEFAULT 0,
    locked_at datetime ,
    username character varying,
    can_create_group bit DEFAULT 1 NOT NULL,
    can_create_team bit DEFAULT 1 NOT NULL,
    state character varying,
    color_scheme_id integer DEFAULT 1 NOT NULL,
    password_expires_at datetime ,
    created_by_id integer,
    last_credential_check_at datetime ,
    avatar character varying,
    confirmation_token character varying,
    confirmed_at datetime ,
    confirmation_sent_at datetime ,
    unconfirmed_email character varying,
    hide_no_ssh_key_base bit DEFAULT 0,
    website_url character varying DEFAULT '' NOT NULL,
    notification_email character varying,
    hide_no_password bit DEFAULT 0,
    password_automatically_set bit DEFAULT 0,
    location character varying,
    encrypted_otp_secret character varying,
    encrypted_otp_secret_iv character varying,
    encrypted_otp_secret_salt character varying,
    otp_required_for_login bit DEFAULT 0 NOT NULL,
    otp_backup_codes text,
    dbo_email character varying DEFAULT '' NOT NULL,
    dashboard integer DEFAULT 0,
    project_view integer DEFAULT 0,
    consumed_timestep integer,
    layout integer DEFAULT 0,
    hide_project_limit bit DEFAULT 0,
    unlock_token character varying,
    otp_grace_period_started_at datetime ,
    external_base bit DEFAULT 0,
    incoming_email_token character varying,
    organization character varying,
    require_two_factor_authentication_from_group bit DEFAULT 0 NOT NULL,
    two_factor_grace_period integer DEFAULT 48 NOT NULL,
    ghost bit,
    last_activity_on date,
    notified_of_own_activity bit,
    preferred_language character varying,
    theme_id smallint,
    accepted_term_id integer,
    feed_token character varying,
    private_profile bit,
    include_private_contributions bit,
    commit_email character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.users_id_seq OWNED BY dbo.users.id;


--
-- Name: users_star_projects; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.users_star_projects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at datetime ,
    updated_at datetime 
);


--
-- Name: users_star_projects_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.users_star_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_star_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.users_star_projects_id_seq OWNED BY dbo.users_star_projects.id;


--
-- Name: web_hook_logs; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.web_hook_logs (
    id integer NOT NULL,
    web_hook_id integer NOT NULL,
    trigger_base character varying,
    url character varying,
    request_headers text,
    request_data text,
    response_headers text,
    response_body text,
    response_status character varying,
    execution_duration double precision,
    internal_error_message character varying,
    created_at datetime  NOT NULL,
    updated_at datetime  NOT NULL
);


--
-- Name: web_hook_logs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.web_hook_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: web_hook_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.web_hook_logs_id_seq OWNED BY dbo.web_hook_logs.id;


--
-- Name: web_hooks; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.web_hooks (
    id integer NOT NULL,
    project_id integer,
    created_at datetime ,
    updated_at datetime ,
    type character varying DEFAULT 'ProjectHook',
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
    encrypted_token character varying,
    encrypted_token_iv character varying,
    encrypted_url character varying,
    encrypted_url_iv character varying
);


--
-- Name: web_hooks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.web_hooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: web_hooks_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

-- ALTER SEQUENCEdbo.web_hooks_id_seq OWNED BY dbo.web_hooks.id;


--
-- Name: abuse_reports id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.abuse_reports ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.abuse_reports_id_seq as NVARCHAR(20)) FOR id;

--
-- Name: appearances id; Type: DEFAULT; Schema: dbo; Owner: -
--


ALTER TABLE dbo.appearances ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.appearances_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: application_setting_terms id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.application_setting_terms ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.application_setting_terms_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: application_settings id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.application_settings ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.application_settings_id_seq as NVARCHAR(20)) FOR id;

--
-- Name: audit_events id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.audit_events ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.audit_events_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: award_emoji id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.award_emoji ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.award_emoji_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: badges id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.badges ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.badges_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: board_group_recent_visits id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_group_recent_visits ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.board_group_recent_visits_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: board_project_recent_visits id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_project_recent_visits ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.board_project_recent_visits_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: boards id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.boards ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.boards_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: broadcast_messages id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.broadcast_messages ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.broadcast_messages_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: chat_names id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.chat_names ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.chat_names_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: chat_teams id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.chat_teams ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.chat_teams_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_build_trace_chunks id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_chunks ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_build_trace_chunks_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_build_trace_section_names id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_section_names ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_build_trace_section_names_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_build_trace_sections id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_sections ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_build_trace_sections_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_builds id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_builds_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_builds_metadata id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_metadata ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_builds_metadata_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_builds_runner_session id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_runner_session ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_builds_runner_session_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_group_variables id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_group_variables ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_group_variables_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_job_artifacts id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_job_artifacts ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_job_artifacts_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_pipeline_chat_data id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_chat_data ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_chat_data_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_pipeline_schedule_variables id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedule_variables ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_schedule_variables_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_pipeline_schedules id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedules ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_schedules_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_pipeline_variables id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_variables ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipeline_variables_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_pipelines id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipelines ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_pipelines_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_runner_namespaces id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_namespaces ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_runner_namespaces_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_runner_projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_runner_projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_runners id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runners ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_runners_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_stages id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_stages ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_stages_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_trigger_requests id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_trigger_requests ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_trigger_requests_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_triggers id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_triggers ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_triggers_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: ci_variables id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_variables ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.ci_variables_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: cluster_groups id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_groups ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_groups_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: cluster_platforms_kubernetes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_platforms_kubernetes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_platforms_kubernetes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: cluster_projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: cluster_providers_gcp id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_providers_gcp ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.cluster_providers_gcp_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_cert_managers id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_cert_managers ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_cert_managers_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_helm id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_helm ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_helm_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_ingress id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_ingress ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_ingress_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_jupyter id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_jupyter ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_jupyter_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_knative id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_knative ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_knative_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_prometheus id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_prometheus ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_prometheus_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_applications_runners id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_runners ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_applications_runners_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: clusters_kubernetes_namespaces id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_kubernetes_namespaces ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.clusters_kubernetes_namespaces_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: container_repositories id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.container_repositories ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.container_repositories_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: conversational_development_index_metrics id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.conversational_development_index_metrics ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.conversational_development_index_metrics_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: deploy_keys_projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deploy_keys_projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.deploy_keys_projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: deploy_tokens id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deploy_tokens ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.deploy_tokens_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: deployments id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deployments ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.deployments_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: emails id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.emails ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.emails_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: environments id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.environments ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.environments_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: events id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.events ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.events_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: feature_gates id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.feature_gates ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.feature_gates_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: features id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.features ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.features_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: fork_network_members id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_network_members ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.fork_network_members_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: fork_networks id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_networks ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.fork_networks_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: forked_project_links id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.forked_project_links ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.forked_project_links_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: gpg_key_subkeys id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_key_subkeys ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.gpg_key_subkeys_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: gpg_keys id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_keys ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.gpg_keys_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: gpg_signatures id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_signatures ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.gpg_signatures_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: group_custom_attributes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.group_custom_attributes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.group_custom_attributes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: identities id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.identities ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.identities_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: import_export_uploads id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.import_export_uploads ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.import_export_uploads_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: internal_ids id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.internal_ids ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.internal_ids_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: issue_metrics id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issue_metrics ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.issue_metrics_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: issues id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.issues_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: keys id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.keys ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.keys_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: label_links id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_links ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.label_links_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: label_priorities id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_priorities ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.label_priorities_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: labels id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.labels ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.labels_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: lfs_file_locks id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_file_locks ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.lfs_file_locks_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: lfs_objects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_objects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.lfs_objects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: lfs_objects_projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_objects_projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.lfs_objects_projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: lists id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lists ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.lists_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: members id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.members ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.members_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_request_assignees id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_assignees ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_assignees_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_request_blocks id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_blocks ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_blocks_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_request_diffs id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_diffs ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_diffs_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_request_metrics id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_metrics ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_request_metrics_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_requests id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_requests_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_requests_closing_issues id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests_closing_issues ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_requests_closing_issues_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: merge_trains id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_trains ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.merge_trains_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: milestones id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.milestones ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.milestones_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: namespaces id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.namespaces ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.namespaces_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: note_diff_files id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.note_diff_files ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.note_diff_files_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: notes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.notes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.notes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: notification_settings id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.notification_settings ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.notification_settings_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: oauth_access_grants id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_access_grants ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_access_grants_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: oauth_access_tokens id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_access_tokens ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_access_tokens_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: oauth_applications id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_applications ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_applications_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: oauth_openid_requests id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_openid_requests ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.oauth_openid_requests_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: pages_domain_acme_orders id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pages_domain_acme_orders ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.pages_domain_acme_orders_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: pages_domains id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pages_domains ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.pages_domains_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.personal_access_tokens ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.personal_access_tokens_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: pool_repositories id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pool_repositories ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.pool_repositories_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: programming_languages id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.programming_languages ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.programming_languages_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_auto_devops id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_auto_devops ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_auto_devops_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_ci_cd_settings id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_ci_cd_settings ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_ci_cd_settings_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_custom_attributes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_custom_attributes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_custom_attributes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_daily_statistics id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_daily_statistics ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_daily_statistics_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_deploy_tokens id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_deploy_tokens ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_deploy_tokens_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_features id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_features ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_features_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_group_links id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_group_links ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_group_links_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_import_data id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_import_data ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_import_data_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_mirror_data id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_mirror_data ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_mirror_data_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_repositories id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_repositories ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_repositories_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: project_statistics id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_statistics ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.project_statistics_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: prometheus_metrics id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.prometheus_metrics ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.prometheus_metrics_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: protected_branch_merge_access_levels id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branch_merge_access_levels ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.protected_branch_merge_access_levels_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: protected_branch_push_access_levels id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branch_push_access_levels ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.protected_branch_push_access_levels_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: protected_branches id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branches ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.protected_branches_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: protected_tag_create_access_levels id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tag_create_access_levels ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.protected_tag_create_access_levels_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: protected_tags id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tags ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.protected_tags_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: redirect_routes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.redirect_routes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.redirect_routes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: release_links id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.release_links ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.release_links_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: releases id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.releases ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.releases_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: remote_mirrors id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.remote_mirrors ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.remote_mirrors_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: resource_label_events id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.resource_label_events ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.resource_label_events_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: routes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.routes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.routes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: sent_notifications id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.sent_notifications ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.sent_notifications_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: services id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.services ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.services_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: shards id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.shards ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.shards_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: snippets id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.snippets ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.snippets_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: spam_logs id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.spam_logs ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.spam_logs_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: subscriptions id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.subscriptions ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.subscriptions_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: suggestions id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.suggestions ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.suggestions_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: system_note_metadata id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.system_note_metadata ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.system_note_metadata_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: taggings id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.taggings ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.taggings_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: tags id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.tags ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.tags_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: term_agreements id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.term_agreements ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.term_agreements_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: timelogs id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.timelogs ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.timelogs_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: todos id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.todos_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: trending_projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.trending_projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.trending_projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: u2f_registrations id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.u2f_registrations ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.u2f_registrations_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: uploads id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.uploads ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.uploads_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: user_agent_details id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_agent_details ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.user_agent_details_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: user_callouts id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_callouts ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.user_callouts_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: user_custom_attributes id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_custom_attributes ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.user_custom_attributes_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: user_preferences id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_preferences ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.user_preferences_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: user_statuses user_id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_statuses ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.user_statuses_user_id_seq as NVARCHAR(20)) FOR user_id;

--
-- Name: user_synced_attributes_metadata id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_synced_attributes_metadata ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.user_synced_attributes_metadata_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: users id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.users ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.users_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: users_star_projects id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.users_star_projects ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.users_star_projects_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: web_hook_logs id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.web_hook_logs ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.web_hook_logs_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: web_hooks id; Type: DEFAULT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.web_hooks ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.web_hooks_id_seq as NVARCHAR(20)) FOR id;


--
-- Name: abuse_reports abuse_reports_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.abuse_reports
    ADD CONSTRAINT abuse_reports_pkey_base PRIMARY KEY (id);


--
-- Name: appearances appearances_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.appearances
    ADD CONSTRAINT appearances_pkey_base PRIMARY KEY (id);


--
-- Name: application_setting_terms application_setting_terms_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.application_setting_terms
    ADD CONSTRAINT application_setting_terms_pkey_base PRIMARY KEY (id);


--
-- Name: application_settings application_settings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.application_settings
    ADD CONSTRAINT application_settings_pkey_base PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey_base PRIMARY KEY (key_base);


--
-- Name: audit_events audit_events_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.audit_events
    ADD CONSTRAINT audit_events_pkey_base PRIMARY KEY (id);


--
-- Name: award_emoji award_emoji_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.award_emoji
    ADD CONSTRAINT award_emoji_pkey_base PRIMARY KEY (id);


--
-- Name: badges badges_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.badges
    ADD CONSTRAINT badges_pkey_base PRIMARY KEY (id);


--
-- Name: board_group_recent_visits board_group_recent_visits_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT board_group_recent_visits_pkey_base PRIMARY KEY (id);


--
-- Name: board_project_recent_visits board_project_recent_visits_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT board_project_recent_visits_pkey_base PRIMARY KEY (id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.boards
    ADD CONSTRAINT boards_pkey_base PRIMARY KEY (id);


--
-- Name: broadcast_messages broadcast_messages_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.broadcast_messages
    ADD CONSTRAINT broadcast_messages_pkey_base PRIMARY KEY (id);


--
-- Name: chat_names chat_names_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.chat_names
    ADD CONSTRAINT chat_names_pkey_base PRIMARY KEY (id);


--
-- Name: chat_teams chat_teams_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.chat_teams
    ADD CONSTRAINT chat_teams_pkey_base PRIMARY KEY (id);


--
-- Name: ci_build_trace_chunks ci_build_trace_chunks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_chunks
    ADD CONSTRAINT ci_build_trace_chunks_pkey_base PRIMARY KEY (id);


--
-- Name: ci_build_trace_section_names ci_build_trace_section_names_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_section_names
    ADD CONSTRAINT ci_build_trace_section_names_pkey_base PRIMARY KEY (id);


--
-- Name: ci_build_trace_sections ci_build_trace_sections_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT ci_build_trace_sections_pkey_base PRIMARY KEY (id);


--
-- Name: ci_builds_metadata ci_builds_metadata_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_metadata
    ADD CONSTRAINT ci_builds_metadata_pkey_base PRIMARY KEY (id);


--
-- Name: ci_builds ci_builds_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT ci_builds_pkey_base PRIMARY KEY (id);


--
-- Name: ci_builds_runner_session ci_builds_runner_session_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_runner_session
    ADD CONSTRAINT ci_builds_runner_session_pkey_base PRIMARY KEY (id);


--
-- Name: ci_group_variables ci_group_variables_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_group_variables
    ADD CONSTRAINT ci_group_variables_pkey_base PRIMARY KEY (id);


--
-- Name: ci_job_artifacts ci_job_artifacts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_job_artifacts
    ADD CONSTRAINT ci_job_artifacts_pkey_base PRIMARY KEY (id);


--
-- Name: ci_pipeline_chat_data ci_pipeline_chat_data_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_chat_data
    ADD CONSTRAINT ci_pipeline_chat_data_pkey_base PRIMARY KEY (id);


--
-- Name: ci_pipeline_schedule_variables ci_pipeline_schedule_variables_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedule_variables
    ADD CONSTRAINT ci_pipeline_schedule_variables_pkey_base PRIMARY KEY (id);


--
-- Name: ci_pipeline_schedules ci_pipeline_schedules_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedules
    ADD CONSTRAINT ci_pipeline_schedules_pkey_base PRIMARY KEY (id);


--
-- Name: ci_pipeline_variables ci_pipeline_variables_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_variables
    ADD CONSTRAINT ci_pipeline_variables_pkey_base PRIMARY KEY (id);


--
-- Name: ci_pipelines ci_pipelines_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT ci_pipelines_pkey_base PRIMARY KEY (id);


--
-- Name: ci_runner_namespaces ci_runner_namespaces_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_namespaces
    ADD CONSTRAINT ci_runner_namespaces_pkey_base PRIMARY KEY (id);


--
-- Name: ci_runner_projects ci_runner_projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_projects
    ADD CONSTRAINT ci_runner_projects_pkey_base PRIMARY KEY (id);


--
-- Name: ci_runners ci_runners_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runners
    ADD CONSTRAINT ci_runners_pkey_base PRIMARY KEY (id);


--
-- Name: ci_stages ci_stages_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_stages
    ADD CONSTRAINT ci_stages_pkey_base PRIMARY KEY (id);


--
-- Name: ci_trigger_requests ci_trigger_requests_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_trigger_requests
    ADD CONSTRAINT ci_trigger_requests_pkey_base PRIMARY KEY (id);


--
-- Name: ci_triggers ci_triggers_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_triggers
    ADD CONSTRAINT ci_triggers_pkey_base PRIMARY KEY (id);


--
-- Name: ci_variables ci_variables_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_variables
    ADD CONSTRAINT ci_variables_pkey_base PRIMARY KEY (id);


--
-- Name: cluster_groups cluster_groups_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_groups
    ADD CONSTRAINT cluster_groups_pkey_base PRIMARY KEY (id);


--
-- Name: cluster_platforms_kubernetes cluster_platforms_kubernetes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_platforms_kubernetes
    ADD CONSTRAINT cluster_platforms_kubernetes_pkey_base PRIMARY KEY (id);


--
-- Name: cluster_projects cluster_projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_projects
    ADD CONSTRAINT cluster_projects_pkey_base PRIMARY KEY (id);


--
-- Name: cluster_providers_gcp cluster_providers_gcp_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_providers_gcp
    ADD CONSTRAINT cluster_providers_gcp_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_cert_managers clusters_applications_cert_managers_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_cert_managers
    ADD CONSTRAINT clusters_applications_cert_managers_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_helm clusters_applications_helm_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_helm
    ADD CONSTRAINT clusters_applications_helm_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_ingress clusters_applications_ingress_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_ingress
    ADD CONSTRAINT clusters_applications_ingress_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_jupyter clusters_applications_jupyter_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_jupyter
    ADD CONSTRAINT clusters_applications_jupyter_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_knative clusters_applications_knative_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_knative
    ADD CONSTRAINT clusters_applications_knative_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_prometheus clusters_applications_prometheus_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_prometheus
    ADD CONSTRAINT clusters_applications_prometheus_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_applications_runners clusters_applications_runners_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_runners
    ADD CONSTRAINT clusters_applications_runners_pkey_base PRIMARY KEY (id);


--
-- Name: clusters_kubernetes_namespaces clusters_kubernetes_namespaces_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT clusters_kubernetes_namespaces_pkey_base PRIMARY KEY (id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters
    ADD CONSTRAINT clusters_pkey_base PRIMARY KEY (id);


--
-- Name: container_repositories container_repositories_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.container_repositories
    ADD CONSTRAINT container_repositories_pkey_base PRIMARY KEY (id);


--
-- Name: conversational_development_index_metrics conversational_development_index_metrics_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.conversational_development_index_metrics
    ADD CONSTRAINT conversational_development_index_metrics_pkey_base PRIMARY KEY (id);


--
-- Name: deploy_keys_projects deploy_keys_projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deploy_keys_projects
    ADD CONSTRAINT deploy_keys_projects_pkey_base PRIMARY KEY (id);


--
-- Name: deploy_tokens deploy_tokens_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deploy_tokens
    ADD CONSTRAINT deploy_tokens_pkey_base PRIMARY KEY (id);


--
-- Name: deployments deployments_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deployments
    ADD CONSTRAINT deployments_pkey_base PRIMARY KEY (id);


--
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.emails
    ADD CONSTRAINT emails_pkey_base PRIMARY KEY (id);


--
-- Name: environments environments_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.environments
    ADD CONSTRAINT environments_pkey_base PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.events
    ADD CONSTRAINT events_pkey_base PRIMARY KEY (id);


--
-- Name: feature_gates feature_gates_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.feature_gates
    ADD CONSTRAINT feature_gates_pkey_base PRIMARY KEY (id);


--
-- Name: features features_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.features
    ADD CONSTRAINT features_pkey_base PRIMARY KEY (id);


--
-- Name: fork_network_members fork_network_members_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fork_network_members_pkey_base PRIMARY KEY (id);


--
-- Name: fork_networks fork_networks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_networks
    ADD CONSTRAINT fork_networks_pkey_base PRIMARY KEY (id);


--
-- Name: forked_project_links forked_project_links_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.forked_project_links
    ADD CONSTRAINT forked_project_links_pkey_base PRIMARY KEY (id);


--
-- Name: gpg_key_subkeys gpg_key_subkeys_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_key_subkeys
    ADD CONSTRAINT gpg_key_subkeys_pkey_base PRIMARY KEY (id);


--
-- Name: gpg_keys gpg_keys_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_keys
    ADD CONSTRAINT gpg_keys_pkey_base PRIMARY KEY (id);


--
-- Name: gpg_signatures gpg_signatures_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT gpg_signatures_pkey_base PRIMARY KEY (id);


--
-- Name: group_custom_attributes group_custom_attributes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.group_custom_attributes
    ADD CONSTRAINT group_custom_attributes_pkey_base PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.identities
    ADD CONSTRAINT identities_pkey_base PRIMARY KEY (id);


--
-- Name: import_export_uploads import_export_uploads_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.import_export_uploads
    ADD CONSTRAINT import_export_uploads_pkey_base PRIMARY KEY (id);


--
-- Name: internal_ids internal_ids_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.internal_ids
    ADD CONSTRAINT internal_ids_pkey_base PRIMARY KEY (id);


--
-- Name: issue_metrics issue_metrics_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issue_metrics
    ADD CONSTRAINT issue_metrics_pkey_base PRIMARY KEY (id);


--
-- Name: issues issues_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT issues_pkey_base PRIMARY KEY (id);


--
-- Name: keys keys_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.keys
    ADD CONSTRAINT keys_pkey_base PRIMARY KEY (id);


--
-- Name: label_links label_links_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_links
    ADD CONSTRAINT label_links_pkey_base PRIMARY KEY (id);


--
-- Name: label_priorities label_priorities_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_priorities
    ADD CONSTRAINT label_priorities_pkey_base PRIMARY KEY (id);


--
-- Name: labels labels_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.labels
    ADD CONSTRAINT labels_pkey_base PRIMARY KEY (id);


--
-- Name: lfs_file_locks lfs_file_locks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_file_locks
    ADD CONSTRAINT lfs_file_locks_pkey_base PRIMARY KEY (id);


--
-- Name: lfs_objects lfs_objects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_objects
    ADD CONSTRAINT lfs_objects_pkey_base PRIMARY KEY (id);


--
-- Name: lfs_objects_projects lfs_objects_projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_objects_projects
    ADD CONSTRAINT lfs_objects_projects_pkey_base PRIMARY KEY (id);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lists
    ADD CONSTRAINT lists_pkey_base PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.members
    ADD CONSTRAINT members_pkey_base PRIMARY KEY (id);


--
-- Name: merge_request_assignees merge_request_assignees_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_assignees
    ADD CONSTRAINT merge_request_assignees_pkey_base PRIMARY KEY (id);


--
-- Name: merge_request_blocks merge_request_blocks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_blocks
    ADD CONSTRAINT merge_request_blocks_pkey_base PRIMARY KEY (id);


--
-- Name: merge_request_diffs merge_request_diffs_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_diffs
    ADD CONSTRAINT merge_request_diffs_pkey_base PRIMARY KEY (id);


--
-- Name: merge_request_metrics merge_request_metrics_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT merge_request_metrics_pkey_base PRIMARY KEY (id);


--
-- Name: merge_requests_closing_issues merge_requests_closing_issues_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests_closing_issues
    ADD CONSTRAINT merge_requests_closing_issues_pkey_base PRIMARY KEY (id);


--
-- Name: merge_requests merge_requests_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT merge_requests_pkey_base PRIMARY KEY (id);


--
-- Name: merge_trains merge_trains_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT merge_trains_pkey_base PRIMARY KEY (id);


--
-- Name: milestones milestones_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.milestones
    ADD CONSTRAINT milestones_pkey_base PRIMARY KEY (id);


--
-- Name: namespaces namespaces_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.namespaces
    ADD CONSTRAINT namespaces_pkey_base PRIMARY KEY (id);


--
-- Name: note_diff_files note_diff_files_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.note_diff_files
    ADD CONSTRAINT note_diff_files_pkey_base PRIMARY KEY (id);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.notes
    ADD CONSTRAINT notes_pkey_base PRIMARY KEY (id);


--
-- Name: notification_settings notification_settings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.notification_settings
    ADD CONSTRAINT notification_settings_pkey_base PRIMARY KEY (id);


--
-- Name: oauth_access_grants oauth_access_grants_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey_base PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey_base PRIMARY KEY (id);


--
-- Name: oauth_applications oauth_applications_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey_base PRIMARY KEY (id);


--
-- Name: oauth_openid_requests oauth_openid_requests_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_openid_requests
    ADD CONSTRAINT oauth_openid_requests_pkey_base PRIMARY KEY (id);


--
-- Name: pages_domain_acme_orders pages_domain_acme_orders_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pages_domain_acme_orders
    ADD CONSTRAINT pages_domain_acme_orders_pkey_base PRIMARY KEY (id);


--
-- Name: pages_domains pages_domains_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pages_domains
    ADD CONSTRAINT pages_domains_pkey_base PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey_base PRIMARY KEY (id);


--
-- Name: pool_repositories pool_repositories_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pool_repositories
    ADD CONSTRAINT pool_repositories_pkey_base PRIMARY KEY (id);


--
-- Name: programming_languages programming_languages_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.programming_languages
    ADD CONSTRAINT programming_languages_pkey_base PRIMARY KEY (id);


--
-- Name: project_auto_devops project_auto_devops_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_auto_devops
    ADD CONSTRAINT project_auto_devops_pkey_base PRIMARY KEY (id);


--
-- Name: project_ci_cd_settings project_ci_cd_settings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_ci_cd_settings
    ADD CONSTRAINT project_ci_cd_settings_pkey_base PRIMARY KEY (id);


--
-- Name: project_custom_attributes project_custom_attributes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_custom_attributes
    ADD CONSTRAINT project_custom_attributes_pkey_base PRIMARY KEY (id);


--
-- Name: project_daily_statistics project_daily_statistics_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_daily_statistics
    ADD CONSTRAINT project_daily_statistics_pkey_base PRIMARY KEY (id);


--
-- Name: project_deploy_tokens project_deploy_tokens_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_deploy_tokens
    ADD CONSTRAINT project_deploy_tokens_pkey_base PRIMARY KEY (id);


--
-- Name: project_error_tracking_settings project_error_tracking_settings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_error_tracking_settings
    ADD CONSTRAINT project_error_tracking_settings_pkey_base PRIMARY KEY (project_id);


--
-- Name: project_features project_features_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_features
    ADD CONSTRAINT project_features_pkey_base PRIMARY KEY (id);


--
-- Name: project_group_links project_group_links_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_group_links
    ADD CONSTRAINT project_group_links_pkey_base PRIMARY KEY (id);


--
-- Name: project_import_data project_import_data_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_import_data
    ADD CONSTRAINT project_import_data_pkey_base PRIMARY KEY (id);


--
-- Name: project_metrics_settings project_metrics_settings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_metrics_settings
    ADD CONSTRAINT project_metrics_settings_pkey_base PRIMARY KEY (project_id);


--
-- Name: project_mirror_data project_mirror_data_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_mirror_data
    ADD CONSTRAINT project_mirror_data_pkey_base PRIMARY KEY (id);


--
-- Name: project_repositories project_repositories_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_repositories
    ADD CONSTRAINT project_repositories_pkey_base PRIMARY KEY (id);


--
-- Name: project_statistics project_statistics_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_statistics
    ADD CONSTRAINT project_statistics_pkey_base PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.projects
    ADD CONSTRAINT projects_pkey_base PRIMARY KEY (id);


--
-- Name: prometheus_metrics prometheus_metrics_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.prometheus_metrics
    ADD CONSTRAINT prometheus_metrics_pkey_base PRIMARY KEY (id);


--
-- Name: protected_branch_merge_access_levels protected_branch_merge_access_levels_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branch_merge_access_levels
    ADD CONSTRAINT protected_branch_merge_access_levels_pkey_base PRIMARY KEY (id);


--
-- Name: protected_branch_push_access_levels protected_branch_push_access_levels_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branch_push_access_levels
    ADD CONSTRAINT protected_branch_push_access_levels_pkey_base PRIMARY KEY (id);


--
-- Name: protected_branches protected_branches_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branches
    ADD CONSTRAINT protected_branches_pkey_base PRIMARY KEY (id);


--
-- Name: protected_tag_create_access_levels protected_tag_create_access_levels_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT protected_tag_create_access_levels_pkey_base PRIMARY KEY (id);


--
-- Name: protected_tags protected_tags_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tags
    ADD CONSTRAINT protected_tags_pkey_base PRIMARY KEY (id);


--
-- Name: redirect_routes redirect_routes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.redirect_routes
    ADD CONSTRAINT redirect_routes_pkey_base PRIMARY KEY (id);


--
-- Name: release_links release_links_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.release_links
    ADD CONSTRAINT release_links_pkey_base PRIMARY KEY (id);


--
-- Name: releases releases_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.releases
    ADD CONSTRAINT releases_pkey_base PRIMARY KEY (id);


--
-- Name: remote_mirrors remote_mirrors_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.remote_mirrors
    ADD CONSTRAINT remote_mirrors_pkey_base PRIMARY KEY (id);


--
-- Name: resource_label_events resource_label_events_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT resource_label_events_pkey_base PRIMARY KEY (id);


--
-- Name: routes routes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.routes
    ADD CONSTRAINT routes_pkey_base PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey_base PRIMARY KEY (version);


--
-- Name: sent_notifications sent_notifications_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.sent_notifications
    ADD CONSTRAINT sent_notifications_pkey_base PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.services
    ADD CONSTRAINT services_pkey_base PRIMARY KEY (id);


--
-- Name: shards shards_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.shards
    ADD CONSTRAINT shards_pkey_base PRIMARY KEY (id);


--
-- Name: snippets snippets_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.snippets
    ADD CONSTRAINT snippets_pkey_base PRIMARY KEY (id);


--
-- Name: spam_logs spam_logs_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.spam_logs
    ADD CONSTRAINT spam_logs_pkey_base PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.subscriptions
    ADD CONSTRAINT subscriptions_pkey_base PRIMARY KEY (id);


--
-- Name: suggestions suggestions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.suggestions
    ADD CONSTRAINT suggestions_pkey_base PRIMARY KEY (id);


--
-- Name: system_note_metadata system_note_metadata_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.system_note_metadata
    ADD CONSTRAINT system_note_metadata_pkey_base PRIMARY KEY (id);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.taggings
    ADD CONSTRAINT taggings_pkey_base PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.tags
    ADD CONSTRAINT tags_pkey_base PRIMARY KEY (id);


--
-- Name: term_agreements term_agreements_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.term_agreements
    ADD CONSTRAINT term_agreements_pkey_base PRIMARY KEY (id);


--
-- Name: timelogs timelogs_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.timelogs
    ADD CONSTRAINT timelogs_pkey_base PRIMARY KEY (id);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos
    ADD CONSTRAINT todos_pkey_base PRIMARY KEY (id);


--
-- Name: trending_projects trending_projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.trending_projects
    ADD CONSTRAINT trending_projects_pkey_base PRIMARY KEY (id);


--
-- Name: u2f_registrations u2f_registrations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.u2f_registrations
    ADD CONSTRAINT u2f_registrations_pkey_base PRIMARY KEY (id);


--
-- Name: uploads uploads_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.uploads
    ADD CONSTRAINT uploads_pkey_base PRIMARY KEY (id);


--
-- Name: user_agent_details user_agent_details_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_agent_details
    ADD CONSTRAINT user_agent_details_pkey_base PRIMARY KEY (id);


--
-- Name: user_callouts user_callouts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_callouts
    ADD CONSTRAINT user_callouts_pkey_base PRIMARY KEY (id);


--
-- Name: user_custom_attributes user_custom_attributes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_custom_attributes
    ADD CONSTRAINT user_custom_attributes_pkey_base PRIMARY KEY (id);


--
-- Name: user_preferences user_preferences_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_preferences
    ADD CONSTRAINT user_preferences_pkey_base PRIMARY KEY (id);


--
-- Name: user_statuses user_statuses_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_statuses
    ADD CONSTRAINT user_statuses_pkey_base PRIMARY KEY (user_id);


--
-- Name: user_synced_attributes_metadata user_synced_attributes_metadata_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_synced_attributes_metadata
    ADD CONSTRAINT user_synced_attributes_metadata_pkey_base PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.users
    ADD CONSTRAINT users_pkey_base PRIMARY KEY (id);


--
-- Name: users_star_projects users_star_projects_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.users_star_projects
    ADD CONSTRAINT users_star_projects_pkey_base PRIMARY KEY (id);


--
-- Name: web_hook_logs web_hook_logs_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.web_hook_logs
    ADD CONSTRAINT web_hook_logs_pkey_base PRIMARY KEY (id);


--
-- Name: web_hooks web_hooks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.web_hooks
    ADD CONSTRAINT web_hooks_pkey_base PRIMARY KEY (id);


--
-- Name: idx_issues_on_project_id_and_due_date_and_id_and_state_partial; Type: INDEX; Schema: dbo; Owner: -
--

-- CREATE INDEX idx_issues_on_project_id_and_due_date_and_id_and_state_partial ON dbo.issues USING btree (project_id, due_date, id, state) WHERE (due_date IS NOT NULL);


--
-- Name: idx_project_repository_check_partial; Type: INDEX; Schema: dbo; Owner: -
--

-- CREATE INDEX idx_project_repository_check_partial ON dbo.projects USING btree (repository_storage, created_at) WHERE (last_repository_check_at IS NULL);


--
-- Name: index_application_settings_on_usage_stats_set_by_user_id; Type: INDEX; Schema: dbo; Owner: -
--

-- CREATE INDEX index_application_settings_on_usage_stats_set_by_user_id ON dbo.application_settings USING btree (usage_stats_set_by_user_id);


--
-- Name: index_audit_events_on_entity_id_and_entity_type; Type: INDEX; Schema: dbo; Owner: -
--

-- CREATE INDEX index_audit_events_on_entity_id_and_entity_type ON dbo.audit_events USING btree (entity_id, entity_type);


--
-- Name: index_award_emoji_on_awardable_type_and_awardable_id; Type: INDEX; Schema: dbo; Owner: -
--

-- CREATE INDEX index_award_emoji_on_awardable_type_and_awardable_id ON dbo.award_emoji USING btree (awardable_type, awardable_id);


-- --
-- -- Name: index_award_emoji_on_user_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_award_emoji_on_user_id_and_name ON dbo.award_emoji USING btree (user_id, name);


-- --
-- -- Name: index_badges_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_badges_on_group_id ON dbo.badges USING btree (group_id);


-- --
-- -- Name: index_badges_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_badges_on_project_id ON dbo.badges USING btree (project_id);


-- --
-- -- Name: index_board_group_recent_visits_on_board_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_board_group_recent_visits_on_board_id ON dbo.board_group_recent_visits USING btree (board_id);


-- --
-- -- Name: index_board_group_recent_visits_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_board_group_recent_visits_on_group_id ON dbo.board_group_recent_visits USING btree (group_id);


-- --
-- -- Name: index_board_group_recent_visits_on_user_group_and_board; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_board_group_recent_visits_on_user_group_and_board ON dbo.board_group_recent_visits USING btree (user_id, group_id, board_id);


-- --
-- -- Name: index_board_group_recent_visits_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_board_group_recent_visits_on_user_id ON dbo.board_group_recent_visits USING btree (user_id);


-- --
-- -- Name: index_board_project_recent_visits_on_board_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_board_project_recent_visits_on_board_id ON dbo.board_project_recent_visits USING btree (board_id);


-- --
-- -- Name: index_board_project_recent_visits_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_board_project_recent_visits_on_project_id ON dbo.board_project_recent_visits USING btree (project_id);


-- --
-- -- Name: index_board_project_recent_visits_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_board_project_recent_visits_on_user_id ON dbo.board_project_recent_visits USING btree (user_id);


-- --
-- -- Name: index_board_project_recent_visits_on_user_project_and_board; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_board_project_recent_visits_on_user_project_and_board ON dbo.board_project_recent_visits USING btree (user_id, project_id, board_id);


-- --
-- -- Name: index_boards_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_boards_on_group_id ON dbo.boards USING btree (group_id);


-- --
-- -- Name: index_boards_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_boards_on_project_id ON dbo.boards USING btree (project_id);


-- --
-- -- Name: index_broadcast_messages_on_starts_at_and_ends_at_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_broadcast_messages_on_starts_at_and_ends_at_and_id ON dbo.broadcast_messages USING btree (starts_at, ends_at, id);


-- --
-- -- Name: index_chat_names_on_service_id_and_team_id_and_chat_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_chat_names_on_service_id_and_team_id_and_chat_id ON dbo.chat_names USING btree (service_id, team_id, chat_id);


-- --
-- -- Name: index_chat_names_on_user_id_and_service_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_chat_names_on_user_id_and_service_id ON dbo.chat_names USING btree (user_id, service_id);


-- --
-- -- Name: index_chat_teams_on_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_chat_teams_on_namespace_id ON dbo.chat_teams USING btree (namespace_id);


-- --
-- -- Name: index_ci_build_trace_chunks_on_build_id_and_chunk_index; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_build_trace_chunks_on_build_id_and_chunk_index ON dbo.ci_build_trace_chunks USING btree (build_id, chunk_index);


-- --
-- -- Name: index_ci_build_trace_section_names_on_project_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_build_trace_section_names_on_project_id_and_name ON dbo.ci_build_trace_section_names USING btree (project_id, name);


-- --
-- -- Name: index_ci_build_trace_sections_on_build_id_and_section_name_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_build_trace_sections_on_build_id_and_section_name_id ON dbo.ci_build_trace_sections USING btree (build_id, section_name_id);


-- --
-- -- Name: index_ci_build_trace_sections_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_build_trace_sections_on_project_id ON dbo.ci_build_trace_sections USING btree (project_id);


-- --
-- -- Name: index_ci_build_trace_sections_on_section_name_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_build_trace_sections_on_section_name_id ON dbo.ci_build_trace_sections USING btree (section_name_id);


-- --
-- -- Name: index_ci_builds_metadata_on_build_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_builds_metadata_on_build_id ON dbo.ci_builds_metadata USING btree (build_id);


-- --
-- -- Name: index_ci_builds_metadata_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_metadata_on_project_id ON dbo.ci_builds_metadata USING btree (project_id);


-- --
-- -- Name: index_ci_builds_on_artifacts_expire_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_artifacts_expire_at ON dbo.ci_builds USING btree (artifacts_expire_at) WHERE (artifacts_file <> ''::text);


-- --
-- -- Name: index_ci_builds_on_auto_canceled_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_auto_canceled_by_id ON dbo.ci_builds USING btree (auto_canceled_by_id);


-- --
-- -- Name: index_ci_builds_on_commit_id_and_artifacts_expireatandidpartial; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_commit_id_and_artifacts_expireatandidpartial ON dbo.ci_builds USING btree (commit_id, artifacts_expire_at, id) WHERE (((type)::text = 'Ci::Build'::text) AND ((retried = 0) OR (retried IS NULL)) AND ((name)::text = ANY (ARRAY[('sast')::text, ('dependency_scanning')::text, ('sast:container')::text, ('container_scanning')::text, ('dast')::text])));


-- --
-- -- Name: index_ci_builds_on_commit_id_and_stage_idx_and_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_commit_id_and_stage_idx_and_created_at ON dbo.ci_builds USING btree (commit_id, stage_idx, created_at);


-- --
-- -- Name: index_ci_builds_on_commit_id_and_status_and_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_commit_id_and_status_and_type ON dbo.ci_builds USING btree (commit_id, status, type);


-- --
-- -- Name: index_ci_builds_on_commit_id_and_type_and_name_and_ref; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_commit_id_and_type_and_name_and_ref ON dbo.ci_builds USING btree (commit_id, type, name, ref);


-- --
-- -- Name: index_ci_builds_on_commit_id_and_type_and_ref; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_commit_id_and_type_and_ref ON dbo.ci_builds USING btree (commit_id, type, ref);


-- --
-- -- Name: index_ci_builds_on_project_id_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_project_id_and_id ON dbo.ci_builds USING btree (project_id, id);


-- --
-- -- Name: index_ci_builds_on_protected; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_protected ON dbo.ci_builds USING btree (protected);


-- --
-- -- Name: index_ci_builds_on_queued_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_queued_at ON dbo.ci_builds USING btree (queued_at);


-- --
-- -- Name: index_ci_builds_on_runner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_runner_id ON dbo.ci_builds USING btree (runner_id);


-- --
-- -- Name: index_ci_builds_on_stage_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_stage_id ON dbo.ci_builds USING btree (stage_id);


-- --
-- -- Name: index_ci_builds_on_status_and_type_and_runner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_status_and_type_and_runner_id ON dbo.ci_builds USING btree (status, type, runner_id);


-- --
-- -- Name: index_ci_builds_on_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_builds_on_token ON dbo.ci_builds USING btree (token);


-- --
-- -- Name: index_ci_builds_on_token_encrypted; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_builds_on_token_encrypted ON dbo.ci_builds USING btree (token_encrypted) WHERE (token_encrypted IS NOT NULL);


-- --
-- -- Name: index_ci_builds_on_updated_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_updated_at ON dbo.ci_builds USING btree (updated_at);


-- --
-- -- Name: index_ci_builds_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_on_user_id ON dbo.ci_builds USING btree (user_id);


-- --
-- -- Name: index_ci_builds_project_id_and_status_for_live_jobs_partial2; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_builds_project_id_and_status_for_live_jobs_partial2 ON dbo.ci_builds USING btree (project_id, status) WHERE (((type)::text = 'Ci::Build'::text) AND ((status)::text = ANY (ARRAY[('running')::text, ('pending')::text, ('created')::text])));


-- --
-- -- Name: index_ci_builds_runner_session_on_build_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_builds_runner_session_on_build_id ON dbo.ci_builds_runner_session USING btree (build_id);


-- --
-- -- Name: index_ci_group_variables_on_group_id_and_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_group_variables_on_group_id_and_key_base ON dbo.ci_group_variables USING btree (group_id, key);


-- --
-- -- Name: index_ci_job_artifacts_on_expire_at_and_job_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_job_artifacts_on_expire_at_and_job_id ON dbo.ci_job_artifacts USING btree (expire_at, job_id);


-- --
-- -- Name: index_ci_job_artifacts_on_file_store; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_job_artifacts_on_file_store ON dbo.ci_job_artifacts USING btree (file_store);


-- --
-- -- Name: index_ci_job_artifacts_on_job_id_and_file_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_job_artifacts_on_job_id_and_file_type ON dbo.ci_job_artifacts USING btree (job_id, file_type);


-- --
-- -- Name: index_ci_job_artifacts_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_job_artifacts_on_project_id ON dbo.ci_job_artifacts USING btree (project_id);


-- --
-- -- Name: index_ci_pipeline_chat_data_on_chat_name_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipeline_chat_data_on_chat_name_id ON dbo.ci_pipeline_chat_data USING btree (chat_name_id);


-- --
-- -- Name: index_ci_pipeline_chat_data_on_pipeline_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_pipeline_chat_data_on_pipeline_id ON dbo.ci_pipeline_chat_data USING btree (pipeline_id);


-- --
-- -- Name: index_ci_pipeline_schedule_variables_on_schedule_id_and_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_pipeline_schedule_variables_on_schedule_id_and_key_base ON dbo.ci_pipeline_schedule_variables USING btree (pipeline_schedule_id, key);


-- --
-- -- Name: index_ci_pipeline_schedules_on_next_run_at_and_active; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipeline_schedules_on_next_run_at_and_active ON dbo.ci_pipeline_schedules USING btree (next_run_at, active);


-- --
-- -- Name: index_ci_pipeline_schedules_on_owner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipeline_schedules_on_owner_id ON dbo.ci_pipeline_schedules USING btree (owner_id);


-- --
-- -- Name: index_ci_pipeline_schedules_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipeline_schedules_on_project_id ON dbo.ci_pipeline_schedules USING btree (project_id);


-- --
-- -- Name: index_ci_pipeline_variables_on_pipeline_id_and_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_pipeline_variables_on_pipeline_id_and_key_base ON dbo.ci_pipeline_variables USING btree (pipeline_id, key);


-- --
-- -- Name: index_ci_pipelines_on_auto_canceled_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_auto_canceled_by_id ON dbo.ci_pipelines USING btree (auto_canceled_by_id);


-- --
-- -- Name: index_ci_pipelines_on_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_merge_request_id ON dbo.ci_pipelines USING btree (merge_request_id) WHERE (merge_request_id IS NOT NULL);


-- --
-- -- Name: index_ci_pipelines_on_pipeline_schedule_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_pipeline_schedule_id ON dbo.ci_pipelines USING btree (pipeline_schedule_id);


-- --
-- -- Name: index_ci_pipelines_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_project_id ON dbo.ci_pipelines USING btree (project_id);


-- --
-- -- Name: index_ci_pipelines_on_project_id_and_iid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_pipelines_on_project_id_and_iid ON dbo.ci_pipelines USING btree (project_id, iid) WHERE (iid IS NOT NULL);


-- --
-- -- Name: index_ci_pipelines_on_project_id_and_ref_and_status_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_project_id_and_ref_and_status_and_id ON dbo.ci_pipelines USING btree (project_id, ref, status, id);


-- --
-- -- Name: index_ci_pipelines_on_project_id_and_sha; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_project_id_and_sha ON dbo.ci_pipelines USING btree (project_id, sha);


-- --
-- -- Name: index_ci_pipelines_on_project_id_and_source; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_project_id_and_source ON dbo.ci_pipelines USING btree (project_id, source);


-- --
-- -- Name: index_ci_pipelines_on_project_id_and_status_and_config_source; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_project_id_and_status_and_config_source ON dbo.ci_pipelines USING btree (project_id, status, config_source);


-- --
-- -- Name: index_ci_pipelines_on_project_idandrefandiddesc; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_project_idandrefandiddesc ON dbo.ci_pipelines USING btree (project_id, ref, id DESC);


-- --
-- -- Name: index_ci_pipelines_on_status; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_status ON dbo.ci_pipelines USING btree (status);


-- --
-- -- Name: index_ci_pipelines_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_pipelines_on_user_id ON dbo.ci_pipelines USING btree (user_id);


-- --
-- -- Name: index_ci_runner_namespaces_on_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runner_namespaces_on_namespace_id ON dbo.ci_runner_namespaces USING btree (namespace_id);


-- --
-- -- Name: index_ci_runner_namespaces_on_runner_id_and_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_runner_namespaces_on_runner_id_and_namespace_id ON dbo.ci_runner_namespaces USING btree (runner_id, namespace_id);


-- --
-- -- Name: index_ci_runner_projects_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runner_projects_on_project_id ON dbo.ci_runner_projects USING btree (project_id);


-- --
-- -- Name: index_ci_runner_projects_on_runner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runner_projects_on_runner_id ON dbo.ci_runner_projects USING btree (runner_id);


-- --
-- -- Name: index_ci_runners_on_contacted_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runners_on_contacted_at ON dbo.ci_runners USING btree (contacted_at);


-- --
-- -- Name: index_ci_runners_on_is_shared; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runners_on_is_shared ON dbo.ci_runners USING btree (is_shared);


-- --
-- -- Name: index_ci_runners_on_locked; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runners_on_locked ON dbo.ci_runners USING btree (locked);


-- --
-- -- Name: index_ci_runners_on_runner_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runners_on_runner_type ON dbo.ci_runners USING btree (runner_type);


-- --
-- -- Name: index_ci_runners_on_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runners_on_token ON dbo.ci_runners USING btree (token);


-- --
-- -- Name: index_ci_runners_on_token_encrypted; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_runners_on_token_encrypted ON dbo.ci_runners USING btree (token_encrypted);


-- --
-- -- Name: index_ci_stages_on_pipeline_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_stages_on_pipeline_id ON dbo.ci_stages USING btree (pipeline_id);


-- --
-- -- Name: index_ci_stages_on_pipeline_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_stages_on_pipeline_id_and_name ON dbo.ci_stages USING btree (pipeline_id, name);


-- --
-- -- Name: index_ci_stages_on_pipeline_id_and_position; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_stages_on_pipeline_id_and_position ON dbo.ci_stages USING btree (pipeline_id, "position");


-- --
-- -- Name: index_ci_stages_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_stages_on_project_id ON dbo.ci_stages USING btree (project_id);


-- --
-- -- Name: index_ci_trigger_requests_on_commit_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_trigger_requests_on_commit_id ON dbo.ci_trigger_requests USING btree (commit_id);


-- --
-- -- Name: index_ci_trigger_requests_on_trigger_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_trigger_requests_on_trigger_id ON dbo.ci_trigger_requests USING btree (trigger_id);


-- --
-- -- Name: index_ci_triggers_on_owner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_triggers_on_owner_id ON dbo.ci_triggers USING btree (owner_id);


-- --
-- -- Name: index_ci_triggers_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_ci_triggers_on_project_id ON dbo.ci_triggers USING btree (project_id);


-- --
-- -- Name: index_ci_variables_on_project_id_and_key_and_environment_scope; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_ci_variables_on_project_id_and_key_and_environment_scope ON dbo.ci_variables USING btree (project_id, key, environment_scope);


-- --
-- -- Name: index_cluster_groups_on_cluster_id_and_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_cluster_groups_on_cluster_id_and_group_id ON dbo.cluster_groups USING btree (cluster_id, group_id);


-- --
-- -- Name: index_cluster_groups_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_cluster_groups_on_group_id ON dbo.cluster_groups USING btree (group_id);


-- --
-- -- Name: index_cluster_platforms_kubernetes_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_cluster_platforms_kubernetes_on_cluster_id ON dbo.cluster_platforms_kubernetes USING btree (cluster_id);


-- --
-- -- Name: index_cluster_projects_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_cluster_projects_on_cluster_id ON dbo.cluster_projects USING btree (cluster_id);


-- --
-- -- Name: index_cluster_projects_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_cluster_projects_on_project_id ON dbo.cluster_projects USING btree (project_id);


-- --
-- -- Name: index_cluster_providers_gcp_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_cluster_providers_gcp_on_cluster_id ON dbo.cluster_providers_gcp USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_cert_managers_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_cert_managers_on_cluster_id ON dbo.clusters_applications_cert_managers USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_helm_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_helm_on_cluster_id ON dbo.clusters_applications_helm USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_ingress_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_ingress_on_cluster_id ON dbo.clusters_applications_ingress USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_jupyter_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_jupyter_on_cluster_id ON dbo.clusters_applications_jupyter USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_jupyter_on_oauth_application_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_applications_jupyter_on_oauth_application_id ON dbo.clusters_applications_jupyter USING btree (oauth_application_id);


-- --
-- -- Name: index_clusters_applications_knative_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_knative_on_cluster_id ON dbo.clusters_applications_knative USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_prometheus_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_prometheus_on_cluster_id ON dbo.clusters_applications_prometheus USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_runners_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_clusters_applications_runners_on_cluster_id ON dbo.clusters_applications_runners USING btree (cluster_id);


-- --
-- -- Name: index_clusters_applications_runners_on_runner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_applications_runners_on_runner_id ON dbo.clusters_applications_runners USING btree (runner_id);


-- --
-- -- Name: index_clusters_kubernetes_namespaces_on_cluster_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_kubernetes_namespaces_on_cluster_id ON dbo.clusters_kubernetes_namespaces USING btree (cluster_id);


-- --
-- -- Name: index_clusters_kubernetes_namespaces_on_cluster_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_kubernetes_namespaces_on_cluster_project_id ON dbo.clusters_kubernetes_namespaces USING btree (cluster_project_id);


-- --
-- -- Name: index_clusters_kubernetes_namespaces_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_kubernetes_namespaces_on_project_id ON dbo.clusters_kubernetes_namespaces USING btree (project_id);


-- --
-- -- Name: index_clusters_on_enabled; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_on_enabled ON dbo.clusters USING btree (enabled);


-- --
-- -- Name: index_clusters_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_clusters_on_user_id ON dbo.clusters USING btree (user_id);


-- --
-- -- Name: index_container_repositories_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_container_repositories_on_project_id ON dbo.container_repositories USING btree (project_id);


-- --
-- -- Name: index_container_repositories_on_project_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_container_repositories_on_project_id_and_name ON dbo.container_repositories USING btree (project_id, name);


-- --
-- -- Name: index_deploy_keys_projects_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deploy_keys_projects_on_project_id ON dbo.deploy_keys_projects USING btree (project_id);


-- --
-- -- Name: index_deploy_tokens_on_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_deploy_tokens_on_token ON dbo.deploy_tokens USING btree (token);


-- --
-- -- Name: index_deploy_tokens_on_token_and_expires_at_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deploy_tokens_on_token_and_expires_at_and_id ON dbo.deploy_tokens USING btree (token, expires_at, id) WHERE (revoked IS 0);


-- --
-- -- Name: index_deployments_on_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_created_at ON dbo.deployments USING btree (created_at);


-- --
-- -- Name: index_deployments_on_deployable_type_and_deployable_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_deployable_type_and_deployable_id ON dbo.deployments USING btree (deployable_type, deployable_id);


-- --
-- -- Name: index_deployments_on_environment_id_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_environment_id_and_id ON dbo.deployments USING btree (environment_id, id);


-- --
-- -- Name: index_deployments_on_environment_id_and_iid_and_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_environment_id_and_iid_and_project_id ON dbo.deployments USING btree (environment_id, iid, project_id);


-- --
-- -- Name: index_deployments_on_environment_id_and_status; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_environment_id_and_status ON dbo.deployments USING btree (environment_id, status);


-- --
-- -- Name: index_deployments_on_project_id_and_iid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_deployments_on_project_id_and_iid ON dbo.deployments USING btree (project_id, iid);


-- --
-- -- Name: index_deployments_on_project_id_and_status; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_project_id_and_status ON dbo.deployments USING btree (project_id, status);


-- --
-- -- Name: index_deployments_on_project_id_and_status_and_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_deployments_on_project_id_and_status_and_created_at ON dbo.deployments USING btree (project_id, status, created_at);


-- --
-- -- Name: index_emails_on_confirmation_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_emails_on_confirmation_token ON dbo.emails USING btree (confirmation_token);


-- --
-- -- Name: index_emails_on_email; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_emails_on_email ON dbo.emails USING btree (email);


-- --
-- -- Name: index_emails_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_emails_on_user_id ON dbo.emails USING btree (user_id);


-- --
-- -- Name: index_environments_on_project_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_environments_on_project_id_and_name ON dbo.environments USING btree (project_id, name);


-- --
-- -- Name: index_environments_on_project_id_and_slug; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_environments_on_project_id_and_slug ON dbo.environments USING btree (project_id, slug);


-- --
-- -- Name: index_events_on_action; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_events_on_action ON dbo.events USING btree (action);


-- --
-- -- Name: index_events_on_author_id_and_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_events_on_author_id_and_project_id ON dbo.events USING btree (author_id, project_id);


-- --
-- -- Name: index_events_on_project_id_and_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_events_on_project_id_and_created_at ON dbo.events USING btree (project_id, created_at);


-- --
-- -- Name: index_events_on_project_id_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_events_on_project_id_and_id ON dbo.events USING btree (project_id, id);


-- --
-- -- Name: index_events_on_target_type_and_target_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_events_on_target_type_and_target_id ON dbo.events USING btree (target_type, target_id);


-- --
-- -- Name: index_feature_gates_on_feature_key_and_key_and_value; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_feature_gates_on_feature_key_and_key_and_value ON dbo.feature_gates USING btree (feature_key, key, value);


-- --
-- -- Name: index_features_on_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_features_on_key_base ON dbo.features USING btree (key);


-- --
-- -- Name: index_fork_network_members_on_fork_network_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_fork_network_members_on_fork_network_id ON dbo.fork_network_members USING btree (fork_network_id);


-- --
-- -- Name: index_fork_network_members_on_forked_from_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_fork_network_members_on_forked_from_project_id ON dbo.fork_network_members USING btree (forked_from_project_id);


-- --
-- -- Name: index_fork_network_members_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_fork_network_members_on_project_id ON dbo.fork_network_members USING btree (project_id);


-- --
-- -- Name: index_fork_networks_on_root_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_fork_networks_on_root_project_id ON dbo.fork_networks USING btree (root_project_id);


-- --
-- -- Name: index_forked_project_links_on_forked_to_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_forked_project_links_on_forked_to_project_id ON dbo.forked_project_links USING btree (forked_to_project_id);


-- --
-- -- Name: index_gpg_key_subkeys_on_fingerprint; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_gpg_key_subkeys_on_fingerprint ON dbo.gpg_key_subkeys USING btree (fingerprint);


-- --
-- -- Name: index_gpg_key_subkeys_on_gpg_key_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_gpg_key_subkeys_on_gpg_key_id ON dbo.gpg_key_subkeys USING btree (gpg_key_id);


-- --
-- -- Name: index_gpg_key_subkeys_on_keyid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_gpg_key_subkeys_on_keyid ON dbo.gpg_key_subkeys USING btree (keyid);


-- --
-- -- Name: index_gpg_keys_on_fingerprint; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_gpg_keys_on_fingerprint ON dbo.gpg_keys USING btree (fingerprint);


-- --
-- -- Name: index_gpg_keys_on_primary_keyid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_gpg_keys_on_primary_keyid ON dbo.gpg_keys USING btree (primary_keyid);


-- --
-- -- Name: index_gpg_keys_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_gpg_keys_on_user_id ON dbo.gpg_keys USING btree (user_id);


-- --
-- -- Name: index_gpg_signatures_on_commit_sha; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_gpg_signatures_on_commit_sha ON dbo.gpg_signatures USING btree (commit_sha);


-- --
-- -- Name: index_gpg_signatures_on_gpg_key_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_gpg_signatures_on_gpg_key_id ON dbo.gpg_signatures USING btree (gpg_key_id);


-- --
-- -- Name: index_gpg_signatures_on_gpg_key_primary_keyid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_gpg_signatures_on_gpg_key_primary_keyid ON dbo.gpg_signatures USING btree (gpg_key_primary_keyid);


-- --
-- -- Name: index_gpg_signatures_on_gpg_key_subkey_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_gpg_signatures_on_gpg_key_subkey_id ON dbo.gpg_signatures USING btree (gpg_key_subkey_id);


-- --
-- -- Name: index_gpg_signatures_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_gpg_signatures_on_project_id ON dbo.gpg_signatures USING btree (project_id);


-- --
-- -- Name: index_group_custom_attributes_on_group_id_and_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_group_custom_attributes_on_group_id_and_key_base ON dbo.group_custom_attributes USING btree (group_id, key);


-- --
-- -- Name: index_group_custom_attributes_on_key_and_value; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_group_custom_attributes_on_key_and_value ON dbo.group_custom_attributes USING btree (key, value);


-- --
-- -- Name: index_identities_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_identities_on_user_id ON dbo.identities USING btree (user_id);


-- --
-- -- Name: index_import_export_uploads_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_import_export_uploads_on_project_id ON dbo.import_export_uploads USING btree (project_id);


-- --
-- -- Name: index_import_export_uploads_on_updated_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_import_export_uploads_on_updated_at ON dbo.import_export_uploads USING btree (updated_at);


-- --
-- -- Name: index_internal_ids_on_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_internal_ids_on_namespace_id ON dbo.internal_ids USING btree (namespace_id);


-- --
-- -- Name: index_internal_ids_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_internal_ids_on_project_id ON dbo.internal_ids USING btree (project_id);


-- --
-- -- Name: index_internal_ids_on_usage_and_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_internal_ids_on_usage_and_namespace_id ON dbo.internal_ids USING btree (usage, namespace_id) WHERE (namespace_id IS NOT NULL);


-- --
-- -- Name: index_internal_ids_on_usage_and_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_internal_ids_on_usage_and_project_id ON dbo.internal_ids USING btree (usage, project_id) WHERE (project_id IS NOT NULL);


-- --
-- -- Name: index_issue_assignees_on_issue_id_and_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_issue_assignees_on_issue_id_and_user_id ON dbo.issue_assignees USING btree (issue_id, user_id);


-- --
-- -- Name: index_issue_assignees_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issue_assignees_on_user_id ON dbo.issue_assignees USING btree (user_id);


-- --
-- -- Name: index_issue_metrics; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issue_metrics ON dbo.issue_metrics USING btree (issue_id);


-- --
-- -- Name: index_issues_on_author_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_author_id ON dbo.issues USING btree (author_id);


-- --
-- -- Name: index_issues_on_closed_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_closed_by_id ON dbo.issues USING btree (closed_by_id);


-- --
-- -- Name: index_issues_on_confidential; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_confidential ON dbo.issues USING btree (confidential);


-- --
-- -- Name: index_issues_on_description_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_description_trigram ON dbo.issues USING gin (description dbo.gin_trgm_ops);


-- --
-- -- Name: index_issues_on_milestone_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_milestone_id ON dbo.issues USING btree (milestone_id);


-- --
-- -- Name: index_issues_on_moved_to_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_moved_to_id ON dbo.issues USING btree (moved_to_id) WHERE (moved_to_id IS NOT NULL);


-- --
-- -- Name: index_issues_on_project_id_and_created_at_and_id_and_state; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_project_id_and_created_at_and_id_and_state ON dbo.issues USING btree (project_id, created_at, id, state);


-- --
-- -- Name: index_issues_on_project_id_and_iid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_issues_on_project_id_and_iid ON dbo.issues USING btree (project_id, iid);


-- --
-- -- Name: index_issues_on_project_id_and_updated_at_and_id_and_state; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_project_id_and_updated_at_and_id_and_state ON dbo.issues USING btree (project_id, updated_at, id, state);


-- --
-- -- Name: index_issues_on_relative_position; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_relative_position ON dbo.issues USING btree (relative_position);


-- --
-- -- Name: index_issues_on_state; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_state ON dbo.issues USING btree (state);


-- --
-- -- Name: index_issues_on_title_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_title_trigram ON dbo.issues USING gin (title dbo.gin_trgm_ops);


-- --
-- -- Name: index_issues_on_updated_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_updated_at ON dbo.issues USING btree (updated_at);


-- --
-- -- Name: index_issues_on_updated_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_issues_on_updated_by_id ON dbo.issues USING btree (updated_by_id) WHERE (updated_by_id IS NOT NULL);


-- --
-- -- Name: index_keys_on_fingerprint; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_keys_on_fingerprint ON dbo.keys USING btree (fingerprint);


-- --
-- -- Name: index_keys_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_keys_on_user_id ON dbo.keys USING btree (user_id);


-- --
-- -- Name: index_label_links_on_label_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_label_links_on_label_id ON dbo.label_links USING btree (label_id);


-- --
-- -- Name: index_label_links_on_target_id_and_target_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_label_links_on_target_id_and_target_type ON dbo.label_links USING btree (target_id, target_type);


-- --
-- -- Name: index_label_priorities_on_label_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_label_priorities_on_label_id ON dbo.label_priorities USING btree (label_id);


-- --
-- -- Name: index_label_priorities_on_priority; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_label_priorities_on_priority ON dbo.label_priorities USING btree (priority);


-- --
-- -- Name: index_label_priorities_on_project_id_and_label_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_label_priorities_on_project_id_and_label_id ON dbo.label_priorities USING btree (project_id, label_id);


-- --
-- -- Name: index_labels_on_group_id_and_project_id_and_title; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_labels_on_group_id_and_project_id_and_title ON dbo.labels USING btree (group_id, project_id, title);


-- --
-- -- Name: index_labels_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_labels_on_project_id ON dbo.labels USING btree (project_id);


-- --
-- -- Name: index_labels_on_template; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_labels_on_template ON dbo.labels USING btree (template) WHERE template;


-- --
-- -- Name: index_labels_on_title; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_labels_on_title ON dbo.labels USING btree (title);


-- --
-- -- Name: index_labels_on_type_and_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_labels_on_type_and_project_id ON dbo.labels USING btree (type, project_id);


-- --
-- -- Name: index_lfs_file_locks_on_project_id_and_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_lfs_file_locks_on_project_id_and_path ON dbo.lfs_file_locks USING btree (project_id, path);


-- --
-- -- Name: index_lfs_file_locks_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_lfs_file_locks_on_user_id ON dbo.lfs_file_locks USING btree (user_id);


-- --
-- -- Name: index_lfs_objects_on_file_store; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_lfs_objects_on_file_store ON dbo.lfs_objects USING btree (file_store);


-- --
-- -- Name: index_lfs_objects_on_oid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_lfs_objects_on_oid ON dbo.lfs_objects USING btree (oid);


-- --
-- -- Name: index_lfs_objects_projects_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_lfs_objects_projects_on_project_id ON dbo.lfs_objects_projects USING btree (project_id);


-- --
-- -- Name: index_lists_on_board_id_and_label_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_lists_on_board_id_and_label_id ON dbo.lists USING btree (board_id, label_id);


-- --
-- -- Name: index_lists_on_label_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_lists_on_label_id ON dbo.lists USING btree (label_id);


-- --
-- -- Name: index_lists_on_list_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_lists_on_list_type ON dbo.lists USING btree (list_type);


-- --
-- -- Name: index_members_on_access_level; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_members_on_access_level ON dbo.members USING btree (access_level);


-- --
-- -- Name: index_members_on_invite_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_members_on_invite_token ON dbo.members USING btree (invite_token);


-- --
-- -- Name: index_members_on_requested_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_members_on_requested_at ON dbo.members USING btree (requested_at);


-- --
-- -- Name: index_members_on_source_id_and_source_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_members_on_source_id_and_source_type ON dbo.members USING btree (source_id, source_type);


-- --
-- -- Name: index_members_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_members_on_user_id ON dbo.members USING btree (user_id);


-- --
-- -- Name: index_merge_request_assignees_on_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_assignees_on_merge_request_id ON dbo.merge_request_assignees USING btree (merge_request_id);


-- --
-- -- Name: index_merge_request_assignees_on_merge_request_id_and_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_merge_request_assignees_on_merge_request_id_and_user_id ON dbo.merge_request_assignees USING btree (merge_request_id, user_id);


-- --
-- -- Name: index_merge_request_assignees_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_assignees_on_user_id ON dbo.merge_request_assignees USING btree (user_id);


-- --
-- -- Name: index_merge_request_blocks_on_blocked_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_blocks_on_blocked_merge_request_id ON dbo.merge_request_blocks USING btree (blocked_merge_request_id);


-- --
-- -- Name: index_merge_request_diff_commits_on_mr_diff_id_and_order; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_merge_request_diff_commits_on_mr_diff_id_and_order ON dbo.merge_request_diff_commits USING btree (merge_request_diff_id, relative_order);


-- --
-- -- Name: index_merge_request_diff_commits_on_sha; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_diff_commits_on_sha ON dbo.merge_request_diff_commits USING btree (sha);


-- --
-- -- Name: index_merge_request_diff_files_on_mr_diff_id_and_order; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_merge_request_diff_files_on_mr_diff_id_and_order ON dbo.merge_request_diff_files USING btree (merge_request_diff_id, relative_order);


-- --
-- -- Name: index_merge_request_diffs_on_merge_request_id_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_diffs_on_merge_request_id_and_id ON dbo.merge_request_diffs USING btree (merge_request_id, id);


-- --
-- -- Name: index_merge_request_diffs_on_merge_request_id_and_id_partial; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_diffs_on_merge_request_id_and_id_partial ON dbo.merge_request_diffs USING btree (merge_request_id, id) WHERE ((NOT stored_externally) OR (stored_externally IS NULL));


-- --
-- -- Name: index_merge_request_metrics; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics ON dbo.merge_request_metrics USING btree (merge_request_id);


-- --
-- -- Name: index_merge_request_metrics_on_first_deployed_to_production_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics_on_first_deployed_to_production_at ON dbo.merge_request_metrics USING btree (first_deployed_to_production_at);


-- --
-- -- Name: index_merge_request_metrics_on_latest_closed_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics_on_latest_closed_at ON dbo.merge_request_metrics USING btree (latest_closed_at) WHERE (latest_closed_at IS NOT NULL);


-- --
-- -- Name: index_merge_request_metrics_on_latest_closed_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics_on_latest_closed_by_id ON dbo.merge_request_metrics USING btree (latest_closed_by_id);


-- --
-- -- Name: index_merge_request_metrics_on_merge_request_id_and_merged_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics_on_merge_request_id_and_merged_at ON dbo.merge_request_metrics USING btree (merge_request_id, merged_at) WHERE (merged_at IS NOT NULL);


-- --
-- -- Name: index_merge_request_metrics_on_merged_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics_on_merged_by_id ON dbo.merge_request_metrics USING btree (merged_by_id);


-- --
-- -- Name: index_merge_request_metrics_on_pipeline_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_request_metrics_on_pipeline_id ON dbo.merge_request_metrics USING btree (pipeline_id);


-- --
-- -- Name: index_merge_requests_closing_issues_on_issue_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_closing_issues_on_issue_id ON dbo.merge_requests_closing_issues USING btree (issue_id);


-- --
-- -- Name: index_merge_requests_closing_issues_on_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_closing_issues_on_merge_request_id ON dbo.merge_requests_closing_issues USING btree (merge_request_id);


-- --
-- -- Name: index_merge_requests_on_assignee_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_assignee_id ON dbo.merge_requests USING btree (assignee_id);


-- --
-- -- Name: index_merge_requests_on_author_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_author_id ON dbo.merge_requests USING btree (author_id);


-- --
-- -- Name: index_merge_requests_on_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_created_at ON dbo.merge_requests USING btree (created_at);


-- --
-- -- Name: index_merge_requests_on_description_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_description_trigram ON dbo.merge_requests USING gin (description dbo.gin_trgm_ops);


-- --
-- -- Name: index_merge_requests_on_head_pipeline_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_head_pipeline_id ON dbo.merge_requests USING btree (head_pipeline_id);


-- --
-- -- Name: index_merge_requests_on_id_and_merge_jid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_id_and_merge_jid ON dbo.merge_requests USING btree (id, merge_jid) WHERE ((merge_jid IS NOT NULL) AND ((state)::text = 'locked'::text));


-- --
-- -- Name: index_merge_requests_on_latest_merge_request_diff_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_latest_merge_request_diff_id ON dbo.merge_requests USING btree (latest_merge_request_diff_id);


-- --
-- -- Name: index_merge_requests_on_merge_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_merge_user_id ON dbo.merge_requests USING btree (merge_user_id) WHERE (merge_user_id IS NOT NULL);


-- --
-- -- Name: index_merge_requests_on_milestone_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_milestone_id ON dbo.merge_requests USING btree (milestone_id);


-- --
-- -- Name: index_merge_requests_on_source_branch; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_source_branch ON dbo.merge_requests USING btree (source_branch);


-- --
-- -- Name: index_merge_requests_on_source_project_and_branch_state_opened; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_source_project_and_branch_state_opened ON dbo.merge_requests USING btree (source_project_id, source_branch) WHERE ((state)::text = 'opened'::text);


-- --
-- -- Name: index_merge_requests_on_source_project_id_and_source_branch; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_source_project_id_and_source_branch ON dbo.merge_requests USING btree (source_project_id, source_branch);


-- --
-- -- Name: index_merge_requests_on_state_and_merge_status; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_state_and_merge_status ON dbo.merge_requests USING btree (state, merge_status) WHERE (((state)::text = 'opened'::text) AND ((merge_status)::text = 'can_be_merged'::text));


-- --
-- -- Name: index_merge_requests_on_target_branch; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_target_branch ON dbo.merge_requests USING btree (target_branch);


-- --
-- -- Name: index_merge_requests_on_target_project_id_and_iid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_merge_requests_on_target_project_id_and_iid ON dbo.merge_requests USING btree (target_project_id, iid);


-- --
-- -- Name: index_merge_requests_on_target_project_id_and_iid_opened; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_target_project_id_and_iid_opened ON dbo.merge_requests USING btree (target_project_id, iid) WHERE ((state)::text = 'opened'::text);


-- --
-- -- Name: index_merge_requests_on_title; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_title ON dbo.merge_requests USING btree (title);


-- --
-- -- Name: index_merge_requests_on_title_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_title_trigram ON dbo.merge_requests USING gin (title dbo.gin_trgm_ops);


-- --
-- -- Name: index_merge_requests_on_tp_id_and_merge_commit_sha_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_tp_id_and_merge_commit_sha_and_id ON dbo.merge_requests USING btree (target_project_id, merge_commit_sha, id);


-- --
-- -- Name: index_merge_requests_on_updated_by_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_requests_on_updated_by_id ON dbo.merge_requests USING btree (updated_by_id) WHERE (updated_by_id IS NOT NULL);


-- --
-- -- Name: index_merge_trains_on_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_merge_trains_on_merge_request_id ON dbo.merge_trains USING btree (merge_request_id);


-- --
-- -- Name: index_merge_trains_on_pipeline_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_trains_on_pipeline_id ON dbo.merge_trains USING btree (pipeline_id);


-- --
-- -- Name: index_merge_trains_on_target_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_trains_on_target_project_id ON dbo.merge_trains USING btree (target_project_id);


-- --
-- -- Name: index_merge_trains_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_merge_trains_on_user_id ON dbo.merge_trains USING btree (user_id);


-- --
-- -- Name: index_milestones_on_description_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_milestones_on_description_trigram ON dbo.milestones USING gin (description dbo.gin_trgm_ops);


-- --
-- -- Name: index_milestones_on_due_date; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_milestones_on_due_date ON dbo.milestones USING btree (due_date);


-- --
-- -- Name: index_milestones_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_milestones_on_group_id ON dbo.milestones USING btree (group_id);


-- --
-- -- Name: index_milestones_on_project_id_and_iid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_milestones_on_project_id_and_iid ON dbo.milestones USING btree (project_id, iid);


-- --
-- -- Name: index_milestones_on_title; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_milestones_on_title ON dbo.milestones USING btree (title);


-- --
-- -- Name: index_milestones_on_title_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_milestones_on_title_trigram ON dbo.milestones USING gin (title dbo.gin_trgm_ops);


-- --
-- -- Name: index_mr_blocks_on_blocking_and_blocked_mr_ids; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_mr_blocks_on_blocking_and_blocked_mr_ids ON dbo.merge_request_blocks USING btree (blocking_merge_request_id, blocked_merge_request_id);


-- --
-- -- Name: index_namespaces_on_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_created_at ON dbo.namespaces USING btree (created_at);


-- --
-- -- Name: index_namespaces_on_name_and_parent_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_namespaces_on_name_and_parent_id ON dbo.namespaces USING btree (name, parent_id);


-- --
-- -- Name: index_namespaces_on_name_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_name_trigram ON dbo.namespaces USING gin (name dbo.gin_trgm_ops);


-- --
-- -- Name: index_namespaces_on_owner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_owner_id ON dbo.namespaces USING btree (owner_id);


-- --
-- -- Name: index_namespaces_on_parent_id_and_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_namespaces_on_parent_id_and_id ON dbo.namespaces USING btree (parent_id, id);


-- --
-- -- Name: index_namespaces_on_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_path ON dbo.namespaces USING btree (path);


-- --
-- -- Name: index_namespaces_on_path_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_path_trigram ON dbo.namespaces USING gin (path dbo.gin_trgm_ops);


-- --
-- -- Name: index_namespaces_on_require_two_factor_authentication; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_require_two_factor_authentication ON dbo.namespaces USING btree (require_two_factor_authentication);


-- --
-- -- Name: index_namespaces_on_runners_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_namespaces_on_runners_token ON dbo.namespaces USING btree (runners_token);


-- --
-- -- Name: index_namespaces_on_runners_token_encrypted; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_namespaces_on_runners_token_encrypted ON dbo.namespaces USING btree (runners_token_encrypted);


-- --
-- -- Name: index_namespaces_on_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_namespaces_on_type ON dbo.namespaces USING btree (type);


-- --
-- -- Name: index_note_diff_files_on_diff_note_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_note_diff_files_on_diff_note_id ON dbo.note_diff_files USING btree (diff_note_id);


-- --
-- -- Name: index_notes_on_author_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_author_id ON dbo.notes USING btree (author_id);


-- --
-- -- Name: index_notes_on_commit_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_commit_id ON dbo.notes USING btree (commit_id);


-- --
-- -- Name: index_notes_on_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_created_at ON dbo.notes USING btree (created_at);


-- --
-- -- Name: index_notes_on_discussion_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_discussion_id ON dbo.notes USING btree (discussion_id);


-- --
-- -- Name: index_notes_on_line_code; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_line_code ON dbo.notes USING btree (line_code);


-- --
-- -- Name: index_notes_on_note_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_note_trigram ON dbo.notes USING gin (note dbo.gin_trgm_ops);


-- --
-- -- Name: index_notes_on_noteable_id_and_noteable_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_noteable_id_and_noteable_type ON dbo.notes USING btree (noteable_id, noteable_type);


-- --
-- -- Name: index_notes_on_noteable_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_noteable_type ON dbo.notes USING btree (noteable_type);


-- --
-- -- Name: index_notes_on_project_id_and_noteable_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notes_on_project_id_and_noteable_type ON dbo.notes USING btree (project_id, noteable_type);


-- --
-- -- Name: index_notification_settings_on_source_id_and_source_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notification_settings_on_source_id_and_source_type ON dbo.notification_settings USING btree (source_id, source_type);


-- --
-- -- Name: index_notification_settings_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_notification_settings_on_user_id ON dbo.notification_settings USING btree (user_id);


-- --
-- -- Name: index_notifications_on_user_id_and_source_id_and_source_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_notifications_on_user_id_and_source_id_and_source_type ON dbo.notification_settings USING btree (user_id, source_id, source_type);


-- --
-- -- Name: index_oauth_access_grants_on_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_oauth_access_grants_on_token ON dbo.oauth_access_grants USING btree (token);


-- --
-- -- Name: index_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_oauth_access_tokens_on_refresh_token ON dbo.oauth_access_tokens USING btree (refresh_token);


-- --
-- -- Name: index_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_oauth_access_tokens_on_resource_owner_id ON dbo.oauth_access_tokens USING btree (resource_owner_id);


-- --
-- -- Name: index_oauth_access_tokens_on_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_oauth_access_tokens_on_token ON dbo.oauth_access_tokens USING btree (token);


-- --
-- -- Name: index_oauth_applications_on_owner_id_and_owner_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_oauth_applications_on_owner_id_and_owner_type ON dbo.oauth_applications USING btree (owner_id, owner_type);


-- --
-- -- Name: index_oauth_applications_on_uid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_oauth_applications_on_uid ON dbo.oauth_applications USING btree (uid);


-- --
-- -- Name: index_oauth_openid_requests_on_access_grant_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_oauth_openid_requests_on_access_grant_id ON dbo.oauth_openid_requests USING btree (access_grant_id);


-- --
-- -- Name: index_pages_domain_acme_orders_on_challenge_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domain_acme_orders_on_challenge_token ON dbo.pages_domain_acme_orders USING btree (challenge_token);


-- --
-- -- Name: index_pages_domain_acme_orders_on_pages_domain_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domain_acme_orders_on_pages_domain_id ON dbo.pages_domain_acme_orders USING btree (pages_domain_id);


-- --
-- -- Name: index_pages_domains_on_domain; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_pages_domains_on_domain ON dbo.pages_domains USING btree (domain);


-- --
-- -- Name: index_pages_domains_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domains_on_project_id ON dbo.pages_domains USING btree (project_id);


-- --
-- -- Name: index_pages_domains_on_project_id_and_enabled_until; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domains_on_project_id_and_enabled_until ON dbo.pages_domains USING btree (project_id, enabled_until);


-- --
-- -- Name: index_pages_domains_on_remove_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domains_on_remove_at ON dbo.pages_domains USING btree (remove_at);


-- --
-- -- Name: index_pages_domains_on_verified_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domains_on_verified_at ON dbo.pages_domains USING btree (verified_at);


-- --
-- -- Name: index_pages_domains_on_verified_at_and_enabled_until; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pages_domains_on_verified_at_and_enabled_until ON dbo.pages_domains USING btree (verified_at, enabled_until);


-- --
-- -- Name: index_personal_access_tokens_on_token_digest; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_personal_access_tokens_on_token_digest ON dbo.personal_access_tokens USING btree (token_digest);


-- --
-- -- Name: index_personal_access_tokens_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_personal_access_tokens_on_user_id ON dbo.personal_access_tokens USING btree (user_id);


-- --
-- -- Name: index_pool_repositories_on_disk_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_pool_repositories_on_disk_path ON dbo.pool_repositories USING btree (disk_path);


-- --
-- -- Name: index_pool_repositories_on_shard_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_pool_repositories_on_shard_id ON dbo.pool_repositories USING btree (shard_id);


-- --
-- -- Name: index_pool_repositories_on_source_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_pool_repositories_on_source_project_id ON dbo.pool_repositories USING btree (source_project_id);


-- --
-- -- Name: index_programming_languages_on_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_programming_languages_on_name ON dbo.programming_languages USING btree (name);


-- --
-- -- Name: index_project_authorizations_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_authorizations_on_project_id ON dbo.project_authorizations USING btree (project_id);


-- --
-- -- Name: index_project_authorizations_on_user_id_project_id_access_level; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_authorizations_on_user_id_project_id_access_level ON dbo.project_authorizations USING btree (user_id, project_id, access_level);


-- --
-- -- Name: index_project_auto_devops_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_auto_devops_on_project_id ON dbo.project_auto_devops USING btree (project_id);


-- --
-- -- Name: index_project_ci_cd_settings_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_ci_cd_settings_on_project_id ON dbo.project_ci_cd_settings USING btree (project_id);


-- --
-- -- Name: index_project_custom_attributes_on_key_and_value; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_custom_attributes_on_key_and_value ON dbo.project_custom_attributes USING btree (key, value);


-- --
-- -- Name: index_project_custom_attributes_on_project_id_and_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_custom_attributes_on_project_id_and_key_base ON dbo.project_custom_attributes USING btree (project_id, key);


-- --
-- -- Name: index_project_daily_statistics_on_project_id_and_date; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_daily_statistics_on_project_id_and_date ON dbo.project_daily_statistics USING btree (project_id, date DESC);


-- --
-- -- Name: index_project_deploy_tokens_on_deploy_token_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_deploy_tokens_on_deploy_token_id ON dbo.project_deploy_tokens USING btree (deploy_token_id);


-- --
-- -- Name: index_project_deploy_tokens_on_project_id_and_deploy_token_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_deploy_tokens_on_project_id_and_deploy_token_id ON dbo.project_deploy_tokens USING btree (project_id, deploy_token_id);


-- --
-- -- Name: index_project_features_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_features_on_project_id ON dbo.project_features USING btree (project_id);


-- --
-- -- Name: index_project_group_links_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_group_links_on_group_id ON dbo.project_group_links USING btree (group_id);


-- --
-- -- Name: index_project_group_links_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_group_links_on_project_id ON dbo.project_group_links USING btree (project_id);


-- --
-- -- Name: index_project_import_data_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_import_data_on_project_id ON dbo.project_import_data USING btree (project_id);


-- --
-- -- Name: index_project_mirror_data_on_jid; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_mirror_data_on_jid ON dbo.project_mirror_data USING btree (jid);


-- --
-- -- Name: index_project_mirror_data_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_mirror_data_on_project_id ON dbo.project_mirror_data USING btree (project_id);


-- --
-- -- Name: index_project_mirror_data_on_status; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_mirror_data_on_status ON dbo.project_mirror_data USING btree (status);


-- --
-- -- Name: index_project_repositories_on_disk_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_repositories_on_disk_path ON dbo.project_repositories USING btree (disk_path);


-- --
-- -- Name: index_project_repositories_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_repositories_on_project_id ON dbo.project_repositories USING btree (project_id);


-- --
-- -- Name: index_project_repositories_on_shard_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_repositories_on_shard_id ON dbo.project_repositories USING btree (shard_id);


-- --
-- -- Name: index_project_statistics_on_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_project_statistics_on_namespace_id ON dbo.project_statistics USING btree (namespace_id);


-- --
-- -- Name: index_project_statistics_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_project_statistics_on_project_id ON dbo.project_statistics USING btree (project_id);


-- --
-- -- Name: index_projects_on_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_created_at ON dbo.projects USING btree (created_at);


-- --
-- -- Name: index_projects_on_creator_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_creator_id ON dbo.projects USING btree (creator_id);


-- --
-- -- Name: index_projects_on_description_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_description_trigram ON dbo.projects USING gin (description dbo.gin_trgm_ops);


-- --
-- -- Name: index_projects_on_id_partial_for_visibility; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_projects_on_id_partial_for_visibility ON dbo.projects USING btree (id) WHERE (visibility_level = ANY (ARRAY[10, 20]));


-- --
-- -- Name: index_projects_on_last_activity_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_last_activity_at ON dbo.projects USING btree (last_activity_at);


-- --
-- -- Name: index_projects_on_last_repository_check_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_last_repository_check_at ON dbo.projects USING btree (last_repository_check_at) WHERE (last_repository_check_at IS NOT NULL);


-- --
-- -- Name: index_projects_on_last_repository_check_failed; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_last_repository_check_failed ON dbo.projects USING btree (last_repository_check_failed);


-- --
-- -- Name: index_projects_on_last_repository_updated_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_last_repository_updated_at ON dbo.projects USING btree (last_repository_updated_at);


-- --
-- -- Name: index_projects_on_name_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_name_trigram ON dbo.projects USING gin (name dbo.gin_trgm_ops);


-- --
-- -- Name: index_projects_on_namespace_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_namespace_id ON dbo.projects USING btree (namespace_id);


-- --
-- -- Name: index_projects_on_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_path ON dbo.projects USING btree (path);


-- --
-- -- Name: index_projects_on_path_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_path_trigram ON dbo.projects USING gin (path dbo.gin_trgm_ops);


-- --
-- -- Name: index_projects_on_pending_delete; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_pending_delete ON dbo.projects USING btree (pending_delete);


-- --
-- -- Name: index_projects_on_pool_repository_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_pool_repository_id ON dbo.projects USING btree (pool_repository_id) WHERE (pool_repository_id IS NOT NULL);


-- --
-- -- Name: index_projects_on_repository_storage; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_repository_storage ON dbo.projects USING btree (repository_storage);


-- --
-- -- Name: index_projects_on_runners_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_runners_token ON dbo.projects USING btree (runners_token);


-- --
-- -- Name: index_projects_on_runners_token_encrypted; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_runners_token_encrypted ON dbo.projects USING btree (runners_token_encrypted);


-- --
-- -- Name: index_projects_on_star_count; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_star_count ON dbo.projects USING btree (star_count);


-- --
-- -- Name: index_projects_on_visibility_level; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_projects_on_visibility_level ON dbo.projects USING btree (visibility_level);


-- --
-- -- Name: index_prometheus_metrics_on_common; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_prometheus_metrics_on_common ON dbo.prometheus_metrics USING btree (common);


-- --
-- -- Name: index_prometheus_metrics_on_group; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_prometheus_metrics_on_group ON dbo.prometheus_metrics USING btree ("group");


-- --
-- -- Name: index_prometheus_metrics_on_identifier; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_prometheus_metrics_on_identifier ON dbo.prometheus_metrics USING btree (identifier);


-- --
-- -- Name: index_prometheus_metrics_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_prometheus_metrics_on_project_id ON dbo.prometheus_metrics USING btree (project_id);


-- --
-- -- Name: index_protected_branch_merge_access; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_branch_merge_access ON dbo.protected_branch_merge_access_levels USING btree (protected_branch_id);


-- --
-- -- Name: index_protected_branch_push_access; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_branch_push_access ON dbo.protected_branch_push_access_levels USING btree (protected_branch_id);


-- --
-- -- Name: index_protected_branches_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_branches_on_project_id ON dbo.protected_branches USING btree (project_id);


-- --
-- -- Name: index_protected_tag_create_access; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_tag_create_access ON dbo.protected_tag_create_access_levels USING btree (protected_tag_id);


-- --
-- -- Name: index_protected_tag_create_access_levels_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_tag_create_access_levels_on_group_id ON dbo.protected_tag_create_access_levels USING btree (group_id);


-- --
-- -- Name: index_protected_tag_create_access_levels_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_tag_create_access_levels_on_user_id ON dbo.protected_tag_create_access_levels USING btree (user_id);


-- --
-- -- Name: index_protected_tags_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_protected_tags_on_project_id ON dbo.protected_tags USING btree (project_id);


-- --
-- -- Name: index_protected_tags_on_project_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_protected_tags_on_project_id_and_name ON dbo.protected_tags USING btree (project_id, name);


-- --
-- -- Name: index_push_event_payloads_on_event_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_push_event_payloads_on_event_id ON dbo.push_event_payloads USING btree (event_id);


-- --
-- -- Name: index_redirect_routes_on_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_redirect_routes_on_path ON dbo.redirect_routes USING btree (path);


-- --
-- -- Name: index_redirect_routes_on_source_type_and_source_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_redirect_routes_on_source_type_and_source_id ON dbo.redirect_routes USING btree (source_type, source_id);


-- --
-- -- Name: index_release_links_on_release_id_and_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_release_links_on_release_id_and_name ON dbo.release_links USING btree (release_id, name);


-- --
-- -- Name: index_release_links_on_release_id_and_url; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_release_links_on_release_id_and_url ON dbo.release_links USING btree (release_id, url);


-- --
-- -- Name: index_releases_on_author_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_releases_on_author_id ON dbo.releases USING btree (author_id);


-- --
-- -- Name: index_releases_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_releases_on_project_id ON dbo.releases USING btree (project_id);


-- --
-- -- Name: index_releases_on_project_id_and_tag; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_releases_on_project_id_and_tag ON dbo.releases USING btree (project_id, tag);


-- --
-- -- Name: index_remote_mirrors_on_last_successful_update_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_remote_mirrors_on_last_successful_update_at ON dbo.remote_mirrors USING btree (last_successful_update_at);


-- --
-- -- Name: index_remote_mirrors_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_remote_mirrors_on_project_id ON dbo.remote_mirrors USING btree (project_id);


-- --
-- -- Name: index_repository_languages_on_project_and_languages_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_repository_languages_on_project_and_languages_id ON dbo.repository_languages USING btree (project_id, programming_language_id);


-- --
-- -- Name: index_resource_label_events_on_issue_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_resource_label_events_on_issue_id ON dbo.resource_label_events USING btree (issue_id);


-- --
-- -- Name: index_resource_label_events_on_label_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_resource_label_events_on_label_id ON dbo.resource_label_events USING btree (label_id);


-- --
-- -- Name: index_resource_label_events_on_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_resource_label_events_on_merge_request_id ON dbo.resource_label_events USING btree (merge_request_id);


-- --
-- -- Name: index_resource_label_events_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_resource_label_events_on_user_id ON dbo.resource_label_events USING btree (user_id);


-- --
-- -- Name: index_routes_on_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_routes_on_path ON dbo.routes USING btree (path);


-- --
-- -- Name: index_routes_on_path_text_pattern_ops; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_routes_on_path_text_pattern_ops ON dbo.routes USING btree (path varchar_pattern_ops);


-- --
-- -- Name: index_routes_on_source_type_and_source_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_routes_on_source_type_and_source_id ON dbo.routes USING btree (source_type, source_id);


-- --
-- -- Name: index_sent_notifications_on_reply_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_sent_notifications_on_reply_key_base ON dbo.sent_notifications USING btree (reply_key);


-- --
-- -- Name: index_services_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_services_on_project_id ON dbo.services USING btree (project_id);


-- --
-- -- Name: index_services_on_template; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_services_on_template ON dbo.services USING btree (template);


-- --
-- -- Name: index_services_on_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_services_on_type ON dbo.services USING btree (type);


-- --
-- -- Name: index_shards_on_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_shards_on_name ON dbo.shards USING btree (name);


-- --
-- -- Name: index_snippets_on_author_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_snippets_on_author_id ON dbo.snippets USING btree (author_id);


-- --
-- -- Name: index_snippets_on_file_name_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_snippets_on_file_name_trigram ON dbo.snippets USING gin (file_name dbo.gin_trgm_ops);


-- --
-- -- Name: index_snippets_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_snippets_on_project_id ON dbo.snippets USING btree (project_id);


-- --
-- -- Name: index_snippets_on_title_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_snippets_on_title_trigram ON dbo.snippets USING gin (title dbo.gin_trgm_ops);


-- --
-- -- Name: index_snippets_on_updated_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_snippets_on_updated_at ON dbo.snippets USING btree (updated_at);


-- --
-- -- Name: index_snippets_on_visibility_level; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_snippets_on_visibility_level ON dbo.snippets USING btree (visibility_level);


-- --
-- -- Name: index_subscriptions_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_subscriptions_on_project_id ON dbo.subscriptions USING btree (project_id);


-- --
-- -- Name: index_subscriptions_on_subscribable_and_user_id_and_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_subscriptions_on_subscribable_and_user_id_and_project_id ON dbo.subscriptions USING btree (subscribable_id, subscribable_type, user_id, project_id);


-- --
-- -- Name: index_suggestions_on_note_id_and_relative_order; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_suggestions_on_note_id_and_relative_order ON dbo.suggestions USING btree (note_id, relative_order);


-- --
-- -- Name: index_system_note_metadata_on_note_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_system_note_metadata_on_note_id ON dbo.system_note_metadata USING btree (note_id);


-- --
-- -- Name: index_taggings_on_tag_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_taggings_on_tag_id ON dbo.taggings USING btree (tag_id);


-- --
-- -- Name: index_taggings_on_taggable_id_and_taggable_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_taggings_on_taggable_id_and_taggable_type ON dbo.taggings USING btree (taggable_id, taggable_type);


-- --
-- -- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON dbo.taggings USING btree (taggable_id, taggable_type, context);


-- --
-- -- Name: index_tags_on_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_tags_on_name ON dbo.tags USING btree (name);


-- --
-- -- Name: index_tags_on_name_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_tags_on_name_trigram ON dbo.tags USING gin (name dbo.gin_trgm_ops);


-- --
-- -- Name: index_term_agreements_on_term_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_term_agreements_on_term_id ON dbo.term_agreements USING btree (term_id);


-- --
-- -- Name: index_term_agreements_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_term_agreements_on_user_id ON dbo.term_agreements USING btree (user_id);


-- --
-- -- Name: index_timelogs_on_issue_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_timelogs_on_issue_id ON dbo.timelogs USING btree (issue_id);


-- --
-- -- Name: index_timelogs_on_merge_request_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_timelogs_on_merge_request_id ON dbo.timelogs USING btree (merge_request_id);


-- --
-- -- Name: index_timelogs_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_timelogs_on_user_id ON dbo.timelogs USING btree (user_id);


-- --
-- -- Name: index_todos_on_author_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_author_id ON dbo.todos USING btree (author_id);


-- --
-- -- Name: index_todos_on_commit_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_commit_id ON dbo.todos USING btree (commit_id);


-- --
-- -- Name: index_todos_on_group_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_group_id ON dbo.todos USING btree (group_id);


-- --
-- -- Name: index_todos_on_note_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_note_id ON dbo.todos USING btree (note_id);


-- --
-- -- Name: index_todos_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_project_id ON dbo.todos USING btree (project_id);


-- --
-- -- Name: index_todos_on_target_type_and_target_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_target_type_and_target_id ON dbo.todos USING btree (target_type, target_id);


-- --
-- -- Name: index_todos_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_user_id ON dbo.todos USING btree (user_id);


-- --
-- -- Name: index_todos_on_user_id_and_id_done; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_user_id_and_id_done ON dbo.todos USING btree (user_id, id) WHERE ((state)::text = 'done'::text);


-- --
-- -- Name: index_todos_on_user_id_and_id_pending; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_todos_on_user_id_and_id_pending ON dbo.todos USING btree (user_id, id) WHERE ((state)::text = 'pending'::text);


-- --
-- -- Name: index_trending_projects_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_trending_projects_on_project_id ON dbo.trending_projects USING btree (project_id);


-- --
-- -- Name: index_u2f_registrations_on_key_handle; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_u2f_registrations_on_key_handle ON dbo.u2f_registrations USING btree (key_handle);


-- --
-- -- Name: index_u2f_registrations_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_u2f_registrations_on_user_id ON dbo.u2f_registrations USING btree (user_id);


-- --
-- -- Name: index_uploads_on_checksum; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_uploads_on_checksum ON dbo.uploads USING btree (checksum);


-- --
-- -- Name: index_uploads_on_model_id_and_model_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_uploads_on_model_id_and_model_type ON dbo.uploads USING btree (model_id, model_type);


-- --
-- -- Name: index_uploads_on_store; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_uploads_on_store ON dbo.uploads USING btree (store);


-- --
-- -- Name: index_uploads_on_uploader_and_path; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_uploads_on_uploader_and_path ON dbo.uploads USING btree (uploader, path);


-- --
-- -- Name: index_user_agent_details_on_subject_id_and_subject_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_user_agent_details_on_subject_id_and_subject_type ON dbo.user_agent_details USING btree (subject_id, subject_type);


-- --
-- -- Name: index_user_callouts_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_user_callouts_on_user_id ON dbo.user_callouts USING btree (user_id);


-- --
-- -- Name: index_user_callouts_on_user_id_and_feature_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_user_callouts_on_user_id_and_feature_name ON dbo.user_callouts USING btree (user_id, feature_name);


-- --
-- -- Name: index_user_custom_attributes_on_key_and_value; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_user_custom_attributes_on_key_and_value ON dbo.user_custom_attributes USING btree (key, value);


-- --
-- -- Name: index_user_custom_attributes_on_user_id_and_key; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_user_custom_attributes_on_user_id_and_key_base ON dbo.user_custom_attributes USING btree (user_id, key);


-- --
-- -- Name: index_user_interacted_projects_on_project_id_and_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_user_interacted_projects_on_project_id_and_user_id ON dbo.user_interacted_projects USING btree (project_id, user_id);


-- --
-- -- Name: index_user_interacted_projects_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_user_interacted_projects_on_user_id ON dbo.user_interacted_projects USING btree (user_id);


-- --
-- -- Name: index_user_preferences_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_user_preferences_on_user_id ON dbo.user_preferences USING btree (user_id);


-- --
-- -- Name: index_user_statuses_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_user_statuses_on_user_id ON dbo.user_statuses USING btree (user_id);


-- --
-- -- Name: index_user_synced_attributes_metadata_on_user_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_user_synced_attributes_metadata_on_user_id ON dbo.user_synced_attributes_metadata USING btree (user_id);


-- --
-- -- Name: index_users_on_accepted_term_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_accepted_term_id ON dbo.users USING btree (accepted_term_id);


-- --
-- -- Name: index_users_on_admin; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_admin ON dbo.users USING btree (admin);


-- --
-- -- Name: index_users_on_confirmation_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_users_on_confirmation_token ON dbo.users USING btree (confirmation_token);


-- --
-- -- Name: index_users_on_created_at; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_created_at ON dbo.users USING btree (created_at);


-- --
-- -- Name: index_users_on_email; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_users_on_email ON dbo.users USING btree (email);


-- --
-- -- Name: index_users_on_email_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_email_trigram ON dbo.users USING gin (email dbo.gin_trgm_ops);


-- --
-- -- Name: index_users_on_feed_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_feed_token ON dbo.users USING btree (feed_token);


-- --
-- -- Name: index_users_on_ghost; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_ghost ON dbo.users USING btree (ghost);


-- --
-- -- Name: index_users_on_incoming_email_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_incoming_email_token ON dbo.users USING btree (incoming_email_token);


-- --
-- -- Name: index_users_on_name; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_name ON dbo.users USING btree (name);


-- --
-- -- Name: index_users_on_name_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_name_trigram ON dbo.users USING gin (name dbo.gin_trgm_ops);


-- --
-- -- Name: index_users_on_reset_password_token; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_users_on_reset_password_token ON dbo.users USING btree (reset_password_token);


-- --
-- -- Name: index_users_on_state; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_state ON dbo.users USING btree (state);


-- --
-- -- Name: index_users_on_username; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_username ON dbo.users USING btree (username);


-- --
-- -- Name: index_users_on_username_trigram; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_on_username_trigram ON dbo.users USING gin (username dbo.gin_trgm_ops);


-- --
-- -- Name: index_users_star_projects_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_users_star_projects_on_project_id ON dbo.users_star_projects USING btree (project_id);


-- --
-- -- Name: index_users_star_projects_on_user_id_and_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX index_users_star_projects_on_user_id_and_project_id ON dbo.users_star_projects USING btree (user_id, project_id);


-- --
-- -- Name: index_web_hook_logs_on_created_at_and_web_hook_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_web_hook_logs_on_created_at_and_web_hook_id ON dbo.web_hook_logs USING btree (created_at, web_hook_id);


-- --
-- -- Name: index_web_hook_logs_on_web_hook_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_web_hook_logs_on_web_hook_id ON dbo.web_hook_logs USING btree (web_hook_id);


-- --
-- -- Name: index_web_hooks_on_project_id; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_web_hooks_on_project_id ON dbo.web_hooks USING btree (project_id);


-- --
-- -- Name: index_web_hooks_on_type; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX index_web_hooks_on_type ON dbo.web_hooks USING btree (type);


-- --
-- -- Name: kubernetes_namespaces_cluster_and_namespace; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX kubernetes_namespaces_cluster_and_namespace ON dbo.clusters_kubernetes_namespaces USING btree (cluster_id, namespace);


-- --
-- -- Name: partial_index_ci_builds_on_scheduled_at_with_scheduled_jobs; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX partial_index_ci_builds_on_scheduled_at_with_scheduled_jobs ON dbo.ci_builds USING btree (scheduled_at) WHERE ((scheduled_at IS NOT NULL) AND ((type)::text = 'Ci::Build'::text) AND ((status)::text = 'scheduled'::text));


-- --
-- -- Name: partial_index_deployments_for_legacy_successful_deployments; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX partial_index_deployments_for_legacy_successful_deployments ON dbo.deployments USING btree (id) WHERE ((finished_at IS NULL) AND (status = 2));


-- --
-- -- Name: taggings_idx; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX taggings_idx ON dbo.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


-- --
-- -- Name: term_agreements_unique_index; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE UNIQUE INDEX term_agreements_unique_index ON dbo.term_agreements USING btree (user_id, term_id);


-- --
-- -- Name: tmp_build_stage_position_index; Type: INDEX; Schema: dbo; Owner: -
-- --

-- CREATE INDEX tmp_build_stage_position_index ON dbo.ci_builds USING btree (stage_id, stage_idx) WHERE (stage_idx IS NOT NULL);


--
-- Name: clusters_applications_runners fk_02de2ded36; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_runners
    ADD CONSTRAINT fk_02de2ded36 FOREIGN KEY (runner_id) REFERENCES dbo.ci_runners(id) ON DELETE SET NULL;


--
-- Name: issues fk_05f1e72feb; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_05f1e72feb FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: merge_requests fk_06067f5644; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_06067f5644 FOREIGN KEY (latest_merge_request_diff_id) REFERENCES dbo.merge_request_diffs(id) ON DELETE SET NULL;


--
-- Name: user_interacted_projects fk_0894651f08; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_interacted_projects
    ADD CONSTRAINT fk_0894651f08 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: web_hooks fk_0c8ca6d9d1; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.web_hooks
    ADD CONSTRAINT fk_0c8ca6d9d1 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: notification_settings fk_0c95e91db7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.notification_settings
    ADD CONSTRAINT fk_0c95e91db7 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: lists fk_0d3f677137; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lists
    ADD CONSTRAINT fk_0d3f677137 FOREIGN KEY (board_id) REFERENCES dbo.boards(id) ON DELETE CASCADE;


--
-- Name: internal_ids fk_162941d509; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.internal_ids
    ADD CONSTRAINT fk_162941d509 FOREIGN KEY (namespace_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: project_features fk_18513d9b92; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_features
    ADD CONSTRAINT fk_18513d9b92 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: users_star_projects fk_22cd27ddfc; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.users_star_projects
    ADD CONSTRAINT fk_22cd27ddfc FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_stages fk_2360681d1d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_stages
    ADD CONSTRAINT fk_2360681d1d FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_ci_cd_settings fk_24c15d2f2e; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_ci_cd_settings
    ADD CONSTRAINT fk_24c15d2f2e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipelines fk_262d4c2d19; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_262d4c2d19 FOREIGN KEY (auto_canceled_by_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: ci_build_trace_sections fk_264e112c66; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT fk_264e112c66 FOREIGN KEY (section_name_id) REFERENCES dbo.ci_build_trace_section_names(id) ON DELETE CASCADE;


--
-- Name: members fk_2e88fb7ce9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.members
    ADD CONSTRAINT fk_2e88fb7ce9 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_3308fe130c; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_3308fe130c FOREIGN KEY (source_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;


--
-- Name: ci_group_variables fk_33ae4d58d8; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_group_variables
    ADD CONSTRAINT fk_33ae4d58d8 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: push_event_payloads fk_36c74129da; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.push_event_payloads
    ADD CONSTRAINT fk_36c74129da FOREIGN KEY (event_id) REFERENCES dbo.events(id) ON DELETE CASCADE;


--
-- Name: ci_builds fk_3a9eaa254d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_3a9eaa254d FOREIGN KEY (stage_id) REFERENCES dbo.ci_stages(id) ON DELETE CASCADE;


--
-- Name: ci_pipelines fk_3d34ab2e06; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_3d34ab2e06 FOREIGN KEY (pipeline_schedule_id) REFERENCES dbo.ci_pipeline_schedules(id) ON DELETE SET NULL;


--
-- Name: ci_pipeline_schedule_variables fk_41c35fda51; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedule_variables
    ADD CONSTRAINT fk_41c35fda51 FOREIGN KEY (pipeline_schedule_id) REFERENCES dbo.ci_pipeline_schedules(id) ON DELETE CASCADE;


--
-- Name: forked_project_links fk_434510edb0; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.forked_project_links
    ADD CONSTRAINT fk_434510edb0 FOREIGN KEY (forked_to_project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_runner_projects fk_4478a6f1e4; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_projects
    ADD CONSTRAINT fk_4478a6f1e4 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: todos fk_45054f9c45; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_45054f9c45 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: releases fk_47fe2a0596; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.releases
    ADD CONSTRAINT fk_47fe2a0596 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_build_trace_sections fk_4ebe41f502; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT fk_4ebe41f502 FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_prometheus fk_557e773639; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_prometheus
    ADD CONSTRAINT fk_557e773639 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: deploy_keys_projects fk_58a901ca7e; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deploy_keys_projects
    ADD CONSTRAINT fk_58a901ca7e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: issue_assignees fk_5e0c8d9154; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issue_assignees
    ADD CONSTRAINT fk_5e0c8d9154 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_6149611a04; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_6149611a04 FOREIGN KEY (assignee_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: merge_requests fk_641731faff; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_641731faff FOREIGN KEY (updated_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: merge_requests fk_6a5165a692; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_6a5165a692 FOREIGN KEY (milestone_id) REFERENCES dbo.milestones(id) ON DELETE SET NULL;


--
-- Name: projects fk_6e5c14658a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.projects
    ADD CONSTRAINT fk_6e5c14658a FOREIGN KEY (pool_repository_id) REFERENCES dbo.pool_repositories(id) ON DELETE SET NULL;


--
-- Name: services fk_71cce407f9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.services
    ADD CONSTRAINT fk_71cce407f9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: user_interacted_projects fk_722ceba4f7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_interacted_projects
    ADD CONSTRAINT fk_722ceba4f7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_ingress fk_753a7b41c1; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_ingress
    ADD CONSTRAINT fk_753a7b41c1 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: users fk_789cd90b35; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.users
    ADD CONSTRAINT fk_789cd90b35 FOREIGN KEY (accepted_term_id) REFERENCES dbo.application_setting_terms(id) ON DELETE CASCADE;


--
-- Name: lists fk_7a5553d60f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lists
    ADD CONSTRAINT fk_7a5553d60f FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE CASCADE;


--
-- Name: protected_branches fk_7a9c6d93e7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branches
    ADD CONSTRAINT fk_7a9c6d93e7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: labels fk_7de4989a69; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.labels
    ADD CONSTRAINT fk_7de4989a69 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_metrics fk_7f28d925f3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_7f28d925f3 FOREIGN KEY (merged_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: merge_request_diffs fk_8483f3258f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_diffs
    ADD CONSTRAINT fk_8483f3258f FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: ci_pipelines fk_86635dbd80; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_86635dbd80 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: issues fk_899c8f3231; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_899c8f3231 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: protected_branch_merge_access_levels fk_8a3072ccb3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branch_merge_access_levels
    ADD CONSTRAINT fk_8a3072ccb3 FOREIGN KEY (protected_branch_id) REFERENCES dbo.protected_branches(id) ON DELETE CASCADE;


--
-- Name: releases fk_8e4456f90f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.releases
    ADD CONSTRAINT fk_8e4456f90f FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: protected_tags fk_8e4af87648; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tags
    ADD CONSTRAINT fk_8e4af87648 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_schedules fk_8ead60fcc4; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedules
    ADD CONSTRAINT fk_8ead60fcc4 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: todos fk_91d1f47b13; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_91d1f47b13 FOREIGN KEY (note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;


--
-- Name: milestones fk_95650a40d4; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.milestones
    ADD CONSTRAINT fk_95650a40d4 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: application_settings fk_964370041d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.application_settings
    ADD CONSTRAINT fk_964370041d FOREIGN KEY (usage_stats_set_by_user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: issues fk_96b1dd429c; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_96b1dd429c FOREIGN KEY (milestone_id) REFERENCES dbo.milestones(id) ON DELETE SET NULL;


--
-- Name: notes fk_99e097b079; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.notes
    ADD CONSTRAINT fk_99e097b079 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: milestones fk_9bd0a0c791; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.milestones
    ADD CONSTRAINT fk_9bd0a0c791 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_schedules fk_9ea99f58d2; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_schedules
    ADD CONSTRAINT fk_9ea99f58d2 FOREIGN KEY (owner_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: protected_branch_push_access_levels fk_9ffc86a3d9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_branch_push_access_levels
    ADD CONSTRAINT fk_9ffc86a3d9 FOREIGN KEY (protected_branch_id) REFERENCES dbo.protected_branches(id) ON DELETE CASCADE;


--
-- Name: issues fk_a194299be1; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_a194299be1 FOREIGN KEY (moved_to_id) REFERENCES dbo.issues(id) ON DELETE SET NULL;


--
-- Name: ci_builds fk_a2141b1522; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_a2141b1522 FOREIGN KEY (auto_canceled_by_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: ci_pipelines fk_a23be95014; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipelines
    ADD CONSTRAINT fk_a23be95014 FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_a6963e8447; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_a6963e8447 FOREIGN KEY (target_project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_ad525e1f87; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_ad525e1f87 FOREIGN KEY (merge_user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: ci_variables fk_ada5eb64b3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_variables
    ADD CONSTRAINT fk_ada5eb64b3 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_metrics fk_ae440388cc; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_ae440388cc FOREIGN KEY (latest_closed_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: fork_network_members fk_b01280dae4; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fk_b01280dae4 FOREIGN KEY (forked_from_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;


--
-- Name: issue_assignees fk_b7d881734a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issue_assignees
    ADD CONSTRAINT fk_b7d881734a FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;


--
-- Name: ci_trigger_requests fk_b8ec8b7245; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_trigger_requests
    ADD CONSTRAINT fk_b8ec8b7245 FOREIGN KEY (trigger_id) REFERENCES dbo.ci_triggers(id) ON DELETE CASCADE;


--
-- Name: deployments fk_b9a3851b82; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.deployments
    ADD CONSTRAINT fk_b9a3851b82 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: snippets fk_be41fd4bb7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.snippets
    ADD CONSTRAINT fk_be41fd4bb7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_builds fk_befce0568a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_befce0568a FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: issues fk_c63cbf6c25; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_c63cbf6c25 FOREIGN KEY (closed_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: todos fk_ccf0373936; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_ccf0373936 FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: environments fk_d1c8c1da6a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.environments
    ADD CONSTRAINT fk_d1c8c1da6a FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_builds fk_d3130c9a7f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds
    ADD CONSTRAINT fk_d3130c9a7f FOREIGN KEY (commit_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: system_note_metadata fk_d83a918cb1; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.system_note_metadata
    ADD CONSTRAINT fk_d83a918cb1 FOREIGN KEY (note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;


--
-- Name: todos fk_d94154aa95; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_d94154aa95 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: label_links fk_d97dd08678; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_links
    ADD CONSTRAINT fk_d97dd08678 FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE CASCADE;


--
-- Name: project_group_links fk_daa8cee94c; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_group_links
    ADD CONSTRAINT fk_daa8cee94c FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_triggers fk_e3e63f966e; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_triggers
    ADD CONSTRAINT fk_e3e63f966e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_e719a85f8a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_e719a85f8a FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: fork_networks fk_e7b436b2b5; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_networks
    ADD CONSTRAINT fk_e7b436b2b5 FOREIGN KEY (root_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;


--
-- Name: ci_triggers fk_e8e10d1964; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_triggers
    ADD CONSTRAINT fk_e8e10d1964 FOREIGN KEY (owner_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: pages_domains fk_ea2f6dfc6f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pages_domains
    ADD CONSTRAINT fk_ea2f6dfc6f FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: events fk_edfd187b6f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.events
    ADD CONSTRAINT fk_edfd187b6f FOREIGN KEY (author_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: boards fk_f15266b5f9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.boards
    ADD CONSTRAINT fk_f15266b5f9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_variables fk_f29c5f4380; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_variables
    ADD CONSTRAINT fk_f29c5f4380 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: protected_tag_create_access_levels fk_f7dfda8c51; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT fk_f7dfda8c51 FOREIGN KEY (protected_tag_id) REFERENCES dbo.protected_tags(id) ON DELETE CASCADE;


--
-- Name: ci_stages fk_fb57e6cc56; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_stages
    ADD CONSTRAINT fk_fb57e6cc56 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_fd82eae0b9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests
    ADD CONSTRAINT fk_fd82eae0b9 FOREIGN KEY (head_pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: project_import_data fk_ffb9ee3a10; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_import_data
    ADD CONSTRAINT fk_ffb9ee3a10 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: issues fk_ffed080f01; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issues
    ADD CONSTRAINT fk_ffed080f01 FOREIGN KEY (updated_by_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: oauth_openid_requests fk_oauth_openid_requests_oauth_access_grants_access_grant_id; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.oauth_openid_requests
    ADD CONSTRAINT fk_oauth_openid_requests_oauth_access_grants_access_grant_id FOREIGN KEY (access_grant_id) REFERENCES dbo.oauth_access_grants(id);


--
-- Name: events fk_rails_0434b48643; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.events
    ADD CONSTRAINT fk_rails_0434b48643 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: personal_access_tokens fk_rails_08903b8f38; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.personal_access_tokens
    ADD CONSTRAINT fk_rails_08903b8f38 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- Name: trending_projects fk_rails_09feecd872; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.trending_projects
    ADD CONSTRAINT fk_rails_09feecd872 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_deploy_tokens fk_rails_0aca134388; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_deploy_tokens
    ADD CONSTRAINT fk_rails_0aca134388 FOREIGN KEY (deploy_token_id) REFERENCES dbo.deploy_tokens(id) ON DELETE CASCADE;


--
-- Name: user_synced_attributes_metadata fk_rails_0f4aa0981f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_synced_attributes_metadata
    ADD CONSTRAINT fk_rails_0f4aa0981f FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: project_authorizations fk_rails_0f84bb11f3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_authorizations
    ADD CONSTRAINT fk_rails_0f84bb11f3 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_build_trace_chunks fk_rails_1013b761f2; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_chunks
    ADD CONSTRAINT fk_rails_1013b761f2 FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;


--
-- Name: gpg_signatures fk_rails_11ae8cb9a7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT fk_rails_11ae8cb9a7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_authorizations fk_rails_11e7aa3ed9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_authorizations
    ADD CONSTRAINT fk_rails_11e7aa3ed9 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: project_statistics fk_rails_12c471002f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_statistics
    ADD CONSTRAINT fk_rails_12c471002f FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_deploy_tokens fk_rails_170e03cbaf; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_deploy_tokens
    ADD CONSTRAINT fk_rails_170e03cbaf FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_jupyter fk_rails_17df21c98c; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_jupyter
    ADD CONSTRAINT fk_rails_17df21c98c FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: gpg_signatures fk_rails_19d4f1c6f9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT fk_rails_19d4f1c6f9 FOREIGN KEY (gpg_key_subkey_id) REFERENCES dbo.gpg_key_subkeys(id) ON DELETE SET NULL;


--
-- Name: boards fk_rails_1e9a074a35; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.boards
    ADD CONSTRAINT fk_rails_1e9a074a35 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: user_statuses fk_rails_2178592333; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_statuses
    ADD CONSTRAINT fk_rails_2178592333 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_runners fk_rails_22388594e9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_runners
    ADD CONSTRAINT fk_rails_22388594e9 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: protected_tag_create_access_levels fk_rails_2349b78b91; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT fk_rails_2349b78b91 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- Name: group_custom_attributes fk_rails_246e0db83a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.group_custom_attributes
    ADD CONSTRAINT fk_rails_246e0db83a FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: lfs_file_locks fk_rails_27a1d98fa8; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_file_locks
    ADD CONSTRAINT fk_rails_27a1d98fa8 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: merge_request_diff_commits fk_rails_316aaceda3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_diff_commits
    ADD CONSTRAINT fk_rails_316aaceda3 FOREIGN KEY (merge_request_diff_id) REFERENCES dbo.merge_request_diffs(id) ON DELETE CASCADE;


--
-- Name: container_repositories fk_rails_32f7bf5aad; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.container_repositories
    ADD CONSTRAINT fk_rails_32f7bf5aad FOREIGN KEY (project_id) REFERENCES dbo.projects(id);


--
-- Name: clusters_applications_jupyter fk_rails_331f0aff78; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_jupyter
    ADD CONSTRAINT fk_rails_331f0aff78 FOREIGN KEY (oauth_application_id) REFERENCES dbo.oauth_applications(id) ON DELETE SET NULL;


--
-- Name: merge_request_metrics fk_rails_33ae169d48; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_rails_33ae169d48 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: suggestions fk_rails_33b03a535c; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.suggestions
    ADD CONSTRAINT fk_rails_33b03a535c FOREIGN KEY (note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;


--
-- Name: merge_request_blocks fk_rails_364d4bea8b; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_blocks
    ADD CONSTRAINT fk_rails_364d4bea8b FOREIGN KEY (blocked_merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: chat_teams fk_rails_3b543909cb; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.chat_teams
    ADD CONSTRAINT fk_rails_3b543909cb FOREIGN KEY (namespace_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: cluster_groups fk_rails_3d28377556; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_groups
    ADD CONSTRAINT fk_rails_3d28377556 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: note_diff_files fk_rails_3d66047aeb; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.note_diff_files
    ADD CONSTRAINT fk_rails_3d66047aeb FOREIGN KEY (diff_note_id) REFERENCES dbo.notes(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_helm fk_rails_3e2b1c06bc; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_helm
    ADD CONSTRAINT fk_rails_3e2b1c06bc FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: clusters_kubernetes_namespaces fk_rails_40cc7ccbc3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_40cc7ccbc3 FOREIGN KEY (cluster_project_id) REFERENCES dbo.cluster_projects(id) ON DELETE SET NULL;


--
-- Name: remote_mirrors fk_rails_43a9aa4ca8; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.remote_mirrors
    ADD CONSTRAINT fk_rails_43a9aa4ca8 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: lfs_file_locks fk_rails_43df7a0412; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.lfs_file_locks
    ADD CONSTRAINT fk_rails_43df7a0412 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_assignees fk_rails_443443ce6f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_assignees
    ADD CONSTRAINT fk_rails_443443ce6f FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: project_auto_devops fk_rails_45436b12b2; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_auto_devops
    ADD CONSTRAINT fk_rails_45436b12b2 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests_closing_issues fk_rails_458eda8667; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests_closing_issues
    ADD CONSTRAINT fk_rails_458eda8667 FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: user_custom_attributes fk_rails_47b91868a8; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_custom_attributes
    ADD CONSTRAINT fk_rails_47b91868a8 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: issue_metrics fk_rails_4bb543d85d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.issue_metrics
    ADD CONSTRAINT fk_rails_4bb543d85d FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;


--
-- Name: project_metrics_settings fk_rails_4c6037ee4f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_metrics_settings
    ADD CONSTRAINT fk_rails_4c6037ee4f FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: prometheus_metrics fk_rails_4c8957a707; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.prometheus_metrics
    ADD CONSTRAINT fk_rails_4c8957a707 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_diff_files fk_rails_501aa0a391; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_diff_files
    ADD CONSTRAINT fk_rails_501aa0a391 FOREIGN KEY (merge_request_diff_id) REFERENCES dbo.merge_request_diffs(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_knative fk_rails_54fc91e0a0; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_knative
    ADD CONSTRAINT fk_rails_54fc91e0a0 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: merge_request_assignees fk_rails_579d375628; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_assignees
    ADD CONSTRAINT fk_rails_579d375628 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: badges fk_rails_5a7c055bdc; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.badges
    ADD CONSTRAINT fk_rails_5a7c055bdc FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: resource_label_events fk_rails_5ac1d2fc24; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_5ac1d2fc24 FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;


--
-- Name: cluster_providers_gcp fk_rails_5c2c3bc814; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_providers_gcp
    ADD CONSTRAINT fk_rails_5c2c3bc814 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: board_group_recent_visits fk_rails_64bfc19bc5; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT fk_rails_64bfc19bc5 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_chat_data fk_rails_64ebfab6b3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_chat_data
    ADD CONSTRAINT fk_rails_64ebfab6b3 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: web_hook_logs fk_rails_666826e111; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.web_hook_logs
    ADD CONSTRAINT fk_rails_666826e111 FOREIGN KEY (web_hook_id) REFERENCES dbo.web_hooks(id) ON DELETE CASCADE;


--
-- Name: term_agreements fk_rails_6ea6520e4a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.term_agreements
    ADD CONSTRAINT fk_rails_6ea6520e4a FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: ci_builds_runner_session fk_rails_70707857d3; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_runner_session
    ADD CONSTRAINT fk_rails_70707857d3 FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;


--
-- Name: project_custom_attributes fk_rails_719c3dccc5; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_custom_attributes
    ADD CONSTRAINT fk_rails_719c3dccc5 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: release_links fk_rails_753be7ae29; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.release_links
    ADD CONSTRAINT fk_rails_753be7ae29 FOREIGN KEY (release_id) REFERENCES dbo.releases(id) ON DELETE CASCADE;


--
-- Name: pages_domain_acme_orders fk_rails_76581b1c16; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pages_domain_acme_orders
    ADD CONSTRAINT fk_rails_76581b1c16 FOREIGN KEY (pages_domain_id) REFERENCES dbo.pages_domains(id) ON DELETE CASCADE;


--
-- Name: project_repositories fk_rails_7a810d4121; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_repositories
    ADD CONSTRAINT fk_rails_7a810d4121 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_kubernetes_namespaces fk_rails_7e7688ecaf; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_7e7688ecaf FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: ci_runner_namespaces fk_rails_8767676b7a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_namespaces
    ADD CONSTRAINT fk_rails_8767676b7a FOREIGN KEY (runner_id) REFERENCES dbo.ci_runners(id) ON DELETE CASCADE;


--
-- Name: gpg_key_subkeys fk_rails_8b2c90b046; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_key_subkeys
    ADD CONSTRAINT fk_rails_8b2c90b046 FOREIGN KEY (gpg_key_id) REFERENCES dbo.gpg_keys(id) ON DELETE CASCADE;


--
-- Name: cluster_projects fk_rails_8b8c5caf07; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_projects
    ADD CONSTRAINT fk_rails_8b8c5caf07 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_daily_statistics fk_rails_8e549b272d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_daily_statistics
    ADD CONSTRAINT fk_rails_8e549b272d FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_error_tracking_settings fk_rails_910a2b8bd9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_error_tracking_settings
    ADD CONSTRAINT fk_rails_910a2b8bd9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: resource_label_events fk_rails_9851a00031; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_9851a00031 FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: ci_job_artifacts fk_rails_9862d392f9; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_job_artifacts
    ADD CONSTRAINT fk_rails_9862d392f9 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: board_project_recent_visits fk_rails_98f8843922; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT fk_rails_98f8843922 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_kubernetes_namespaces fk_rails_98fe21e486; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_98fe21e486 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;


--
-- Name: gpg_keys fk_rails_9d1f5d8719; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_keys
    ADD CONSTRAINT fk_rails_9d1f5d8719 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: badges fk_rails_9df4a56538; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.badges
    ADD CONSTRAINT fk_rails_9df4a56538 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_cert_managers fk_rails_9e4f2cb4b2; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters_applications_cert_managers
    ADD CONSTRAINT fk_rails_9e4f2cb4b2 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: todos fk_rails_a27c483435; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.todos
    ADD CONSTRAINT fk_rails_a27c483435 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: fork_network_members fk_rails_a40860a1ca; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fk_rails_a40860a1ca FOREIGN KEY (fork_network_id) REFERENCES dbo.fork_networks(id) ON DELETE CASCADE;


--
-- Name: cluster_projects fk_rails_a5a958bca1; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_projects
    ADD CONSTRAINT fk_rails_a5a958bca1 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: user_preferences fk_rails_a69bfcfd81; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_preferences
    ADD CONSTRAINT fk_rails_a69bfcfd81 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: repository_languages fk_rails_a750ec87a8; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.repository_languages
    ADD CONSTRAINT fk_rails_a750ec87a8 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: term_agreements fk_rails_a88721bcdf; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.term_agreements
    ADD CONSTRAINT fk_rails_a88721bcdf FOREIGN KEY (term_id) REFERENCES dbo.application_setting_terms(id);


--
-- Name: ci_build_trace_sections fk_rails_ab7c104e26; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_sections
    ADD CONSTRAINT fk_rails_ab7c104e26 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: clusters fk_rails_ac3a663d79; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.clusters
    ADD CONSTRAINT fk_rails_ac3a663d79 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: pool_repositories fk_rails_af3f8c5d62; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pool_repositories
    ADD CONSTRAINT fk_rails_af3f8c5d62 FOREIGN KEY (shard_id) REFERENCES dbo.shards(id) ON DELETE NO ACTION;


--
-- Name: resource_label_events fk_rails_b126799f57; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_b126799f57 FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE SET NULL;


--
-- Name: merge_trains fk_rails_b29261ce31; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_b29261ce31 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: board_project_recent_visits fk_rails_b315dd0c80; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT fk_rails_b315dd0c80 FOREIGN KEY (board_id) REFERENCES dbo.boards(id) ON DELETE CASCADE;


--
-- Name: merge_trains fk_rails_b374b5225d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_b374b5225d FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: protected_tag_create_access_levels fk_rails_b4eb82fe3c; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.protected_tag_create_access_levels
    ADD CONSTRAINT fk_rails_b4eb82fe3c FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id);


--
-- Name: merge_trains fk_rails_b9d67af01d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_b9d67af01d FOREIGN KEY (target_project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: u2f_registrations fk_rails_bfe6a84544; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.u2f_registrations
    ADD CONSTRAINT fk_rails_bfe6a84544 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- Name: labels fk_rails_c1ac5161d8; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.labels
    ADD CONSTRAINT fk_rails_c1ac5161d8 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: project_repositories fk_rails_c3258dc63b; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_repositories
    ADD CONSTRAINT fk_rails_c3258dc63b FOREIGN KEY (shard_id) REFERENCES dbo.shards(id) ON DELETE NO ACTION;


--
-- Name: ci_job_artifacts fk_rails_c5137cb2c1; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_job_artifacts
    ADD CONSTRAINT fk_rails_c5137cb2c1 FOREIGN KEY (job_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;


--
-- Name: gpg_signatures fk_rails_c97176f5f7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.gpg_signatures
    ADD CONSTRAINT fk_rails_c97176f5f7 FOREIGN KEY (gpg_key_id) REFERENCES dbo.gpg_keys(id) ON DELETE SET NULL;


--
-- Name: board_group_recent_visits fk_rails_ca04c38720; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT fk_rails_ca04c38720 FOREIGN KEY (board_id) REFERENCES dbo.boards(id) ON DELETE CASCADE;


--
-- Name: subscriptions fk_rails_d0c8bda804; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.subscriptions
    ADD CONSTRAINT fk_rails_d0c8bda804 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: project_mirror_data fk_rails_d1aad367d7; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.project_mirror_data
    ADD CONSTRAINT fk_rails_d1aad367d7 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: pool_repositories fk_rails_d2711daad4; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.pool_repositories
    ADD CONSTRAINT fk_rails_d2711daad4 FOREIGN KEY (source_project_id) REFERENCES dbo.projects(id) ON DELETE SET NULL;


--
-- Name: user_callouts fk_rails_ddfdd80f3d; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.user_callouts
    ADD CONSTRAINT fk_rails_ddfdd80f3d FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: label_priorities fk_rails_e161058b0f; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_priorities
    ADD CONSTRAINT fk_rails_e161058b0f FOREIGN KEY (label_id) REFERENCES dbo.labels(id) ON DELETE CASCADE;


--
-- Name: cluster_platforms_kubernetes fk_rails_e1e2cf841a; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_platforms_kubernetes
    ADD CONSTRAINT fk_rails_e1e2cf841a FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: ci_builds_metadata fk_rails_e20479742e; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_metadata
    ADD CONSTRAINT fk_rails_e20479742e FOREIGN KEY (build_id) REFERENCES dbo.ci_builds(id) ON DELETE CASCADE;


--
-- Name: merge_request_metrics fk_rails_e6d7c24d1b; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_metrics
    ADD CONSTRAINT fk_rails_e6d7c24d1b FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: merge_request_blocks fk_rails_e9387863bc; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_request_blocks
    ADD CONSTRAINT fk_rails_e9387863bc FOREIGN KEY (blocking_merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- Name: label_priorities fk_rails_ef916d14fa; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.label_priorities
    ADD CONSTRAINT fk_rails_ef916d14fa FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: fork_network_members fk_rails_efccadc4ec; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.fork_network_members
    ADD CONSTRAINT fk_rails_efccadc4ec FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: import_export_uploads fk_rails_f129140f9e; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.import_export_uploads
    ADD CONSTRAINT fk_rails_f129140f9e FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_chat_data fk_rails_f300456b63; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_pipeline_chat_data
    ADD CONSTRAINT fk_rails_f300456b63 FOREIGN KEY (chat_name_id) REFERENCES dbo.chat_names(id) ON DELETE CASCADE;


--
-- Name: board_group_recent_visits fk_rails_f410736518; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_group_recent_visits
    ADD CONSTRAINT fk_rails_f410736518 FOREIGN KEY (group_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: internal_ids fk_rails_f7d46b66c6; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.internal_ids
    ADD CONSTRAINT fk_rails_f7d46b66c6 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests_closing_issues fk_rails_f8540692be; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_requests_closing_issues
    ADD CONSTRAINT fk_rails_f8540692be FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;


--
-- Name: ci_build_trace_section_names fk_rails_f8cd72cd26; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_build_trace_section_names
    ADD CONSTRAINT fk_rails_f8cd72cd26 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: merge_trains fk_rails_f90820cb08; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.merge_trains
    ADD CONSTRAINT fk_rails_f90820cb08 FOREIGN KEY (pipeline_id) REFERENCES dbo.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: ci_runner_namespaces fk_rails_f9d9ed3308; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_runner_namespaces
    ADD CONSTRAINT fk_rails_f9d9ed3308 FOREIGN KEY (namespace_id) REFERENCES dbo.namespaces(id) ON DELETE CASCADE;


--
-- Name: board_project_recent_visits fk_rails_fb6fc419cb; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.board_project_recent_visits
    ADD CONSTRAINT fk_rails_fb6fc419cb FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE CASCADE;


--
-- Name: cluster_groups fk_rails_fdb8648a96; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.cluster_groups
    ADD CONSTRAINT fk_rails_fdb8648a96 FOREIGN KEY (cluster_id) REFERENCES dbo.clusters(id) ON DELETE CASCADE;


--
-- Name: resource_label_events fk_rails_fe91ece594; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.resource_label_events
    ADD CONSTRAINT fk_rails_fe91ece594 FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON DELETE SET NULL;


--
-- Name: ci_builds_metadata fk_rails_ffcf702a02; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.ci_builds_metadata
    ADD CONSTRAINT fk_rails_ffcf702a02 FOREIGN KEY (project_id) REFERENCES dbo.projects(id) ON DELETE CASCADE;


--
-- Name: timelogs fk_timelogs_issues_issue_id; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.timelogs
    ADD CONSTRAINT fk_timelogs_issues_issue_id FOREIGN KEY (issue_id) REFERENCES dbo.issues(id) ON DELETE CASCADE;


--
-- Name: timelogs fk_timelogs_merge_requests_merge_request_id; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE dbo.timelogs
    ADD CONSTRAINT fk_timelogs_merge_requests_merge_request_id FOREIGN KEY (merge_request_id) REFERENCES dbo.merge_requests(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

INSERT INTO dbo.schema_migrations (version) VALUES
('20140313092127'),
('20140407135544'),
('20140414131055'),
('20140415124820'),
('20140416074002'),
('20140416185734'),
('20140428105831'),
('20140502115131'),
('20140502125220'),
('20140611135229'),
('20140625115202'),
('20140729134820'),
('20140729140420'),
('20140729145339'),
('20140729152420'),
('20140730111702'),
('20140903115954'),
('20140907220153'),
('20140914113604'),
('20140914145549'),
('20140914173417'),
('20141006143943'),
('20141007100818'),
('20141118150935'),
('20141121133009'),
('20141121161704'),
('20141126120926'),
('20141205134006'),
('20141216155758'),
('20141217125223'),
('20141223135007'),
('20141226080412'),
('20150108073740'),
('20150116234544'),
('20150116234545'),
('20150125163100'),
('20150205211843'),
('20150206181414'),
('20150206222854'),
('20150209222013'),
('20150211172122'),
('20150211174341'),
('20150213104043'),
('20150213114800'),
('20150213121042'),
('20150217123345'),
('20150219004514'),
('20150223022001'),
('20150225065047'),
('20150301014758'),
('20150306023106'),
('20150306023112'),
('20150310194358'),
('20150313012111'),
('20150320234437'),
('20150324155957'),
('20150327122227'),
('20150327150017'),
('20150327223628'),
('20150328132231'),
('20150331183602'),
('20150406133311'),
('20150411000035'),
('20150411180045'),
('20150413192223'),
('20150417121913'),
('20150417122318'),
('20150421120000'),
('20150423033240'),
('20150425164646'),
('20150425164647'),
('20150425164648'),
('20150425164649'),
('20150425164650'),
('20150425164651'),
('20150425173433'),
('20150429002313'),
('20150502064022'),
('20150509180749'),
('20150516060434'),
('20150529111607'),
('20150529150354'),
('20150609141121'),
('20150610065936'),
('20150620233230'),
('20150713160110'),
('20150717130904'),
('20150730122406'),
('20150806104937'),
('20150812080800'),
('20150814065925'),
('20150817163600'),
('20150818213832'),
('20150824002011'),
('20150826001931'),
('20150827121444'),
('20150902001023'),
('20150914215247'),
('20150915001905'),
('20150916000405'),
('20150916114643'),
('20150916145038'),
('20150918084513'),
('20150918161719'),
('20150920010715'),
('20150920161119'),
('20150924125150'),
('20150924125436'),
('20150930001110'),
('20150930095736'),
('20150930110012'),
('20151002112914'),
('20151002121400');