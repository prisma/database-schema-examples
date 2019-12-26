SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: abuse_reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.abuse_reports (
    id integer NOT NULL,
    reporter_id integer,
    user_id integer,
    message text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    message_html text,
    cached_markdown_version integer
);


--
-- Name: abuse_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.abuse_reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: abuse_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.abuse_reports_id_seq OWNED BY public.abuse_reports.id;


--
-- Name: appearances; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.appearances (
    id integer NOT NULL,
    title character varying NOT NULL,
    description text NOT NULL,
    header_logo character varying,
    logo character varying,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
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
    email_header_and_footer_enabled boolean DEFAULT false NOT NULL
);


--
-- Name: appearances_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.appearances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: appearances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.appearances_id_seq OWNED BY public.appearances.id;


--
-- Name: application_setting_terms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.application_setting_terms (
    id integer NOT NULL,
    cached_markdown_version integer,
    terms text NOT NULL,
    terms_html text
);


--
-- Name: application_setting_terms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.application_setting_terms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_setting_terms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.application_setting_terms_id_seq OWNED BY public.application_setting_terms.id;


--
-- Name: application_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.application_settings (
    id integer NOT NULL,
    default_projects_limit integer,
    signup_enabled boolean,
    gravatar_enabled boolean,
    sign_in_text text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    home_page_url character varying,
    default_branch_protection integer DEFAULT 2,
    restricted_visibility_levels text,
    version_check_enabled boolean DEFAULT true,
    max_attachment_size integer DEFAULT 10 NOT NULL,
    default_project_visibility integer,
    default_snippet_visibility integer,
    domain_whitelist text,
    user_oauth_applications boolean DEFAULT true,
    after_sign_out_path character varying,
    session_expire_delay integer DEFAULT 10080 NOT NULL,
    import_sources text,
    help_page_text text,
    admin_notification_email character varying,
    shared_runners_enabled boolean DEFAULT true NOT NULL,
    max_artifacts_size integer DEFAULT 100 NOT NULL,
    runners_registration_token character varying,
    max_pages_size integer DEFAULT 100 NOT NULL,
    require_two_factor_authentication boolean DEFAULT false,
    two_factor_grace_period integer DEFAULT 48,
    metrics_enabled boolean DEFAULT false,
    metrics_host character varying DEFAULT 'localhost'::character varying,
    metrics_pool_size integer DEFAULT 16,
    metrics_timeout integer DEFAULT 10,
    metrics_method_call_threshold integer DEFAULT 10,
    recaptcha_enabled boolean DEFAULT false,
    recaptcha_site_key character varying,
    recaptcha_private_key character varying,
    metrics_port integer DEFAULT 8089,
    akismet_enabled boolean DEFAULT false,
    akismet_api_key character varying,
    metrics_sample_interval integer DEFAULT 15,
    sentry_enabled boolean DEFAULT false,
    sentry_dsn character varying,
    email_author_in_body boolean DEFAULT false,
    default_group_visibility integer,
    repository_checks_enabled boolean DEFAULT false,
    shared_runners_text text,
    metrics_packet_size integer DEFAULT 1,
    disabled_oauth_sign_in_sources text,
    health_check_access_token character varying,
    send_user_confirmation_email boolean DEFAULT false,
    container_registry_token_expire_delay integer DEFAULT 5,
    after_sign_up_text text,
    user_default_external boolean DEFAULT false NOT NULL,
    repository_storages character varying DEFAULT 'default'::character varying,
    enabled_git_access_protocol character varying,
    domain_blacklist_enabled boolean DEFAULT false,
    domain_blacklist text,
    usage_ping_enabled boolean DEFAULT true NOT NULL,
    sign_in_text_html text,
    help_page_text_html text,
    shared_runners_text_html text,
    after_sign_up_text_html text,
    rsa_key_restriction integer DEFAULT 0 NOT NULL,
    dsa_key_restriction integer DEFAULT '-1'::integer NOT NULL,
    ecdsa_key_restriction integer DEFAULT 0 NOT NULL,
    ed25519_key_restriction integer DEFAULT 0 NOT NULL,
    housekeeping_enabled boolean DEFAULT true NOT NULL,
    housekeeping_bitmaps_enabled boolean DEFAULT true NOT NULL,
    housekeeping_incremental_repack_period integer DEFAULT 10 NOT NULL,
    housekeeping_full_repack_period integer DEFAULT 50 NOT NULL,
    housekeeping_gc_period integer DEFAULT 200 NOT NULL,
    html_emails_enabled boolean DEFAULT true,
    plantuml_url character varying,
    plantuml_enabled boolean,
    terminal_max_session_time integer DEFAULT 0 NOT NULL,
    unique_ips_limit_per_user integer,
    unique_ips_limit_time_window integer,
    unique_ips_limit_enabled boolean DEFAULT false NOT NULL,
    default_artifacts_expire_in character varying DEFAULT '0'::character varying NOT NULL,
    uuid character varying,
    polling_interval_multiplier numeric DEFAULT 1.0 NOT NULL,
    cached_markdown_version integer,
    clientside_sentry_enabled boolean DEFAULT false NOT NULL,
    clientside_sentry_dsn character varying,
    prometheus_metrics_enabled boolean DEFAULT true NOT NULL,
    help_page_hide_commercial_content boolean DEFAULT false,
    help_page_support_url character varying,
    performance_bar_allowed_group_id integer,
    hashed_storage_enabled boolean DEFAULT false NOT NULL,
    project_export_enabled boolean DEFAULT true NOT NULL,
    auto_devops_enabled boolean DEFAULT true NOT NULL,
    throttle_unauthenticated_enabled boolean DEFAULT false NOT NULL,
    throttle_unauthenticated_requests_per_period integer DEFAULT 3600 NOT NULL,
    throttle_unauthenticated_period_in_seconds integer DEFAULT 3600 NOT NULL,
    throttle_authenticated_api_enabled boolean DEFAULT false NOT NULL,
    throttle_authenticated_api_requests_per_period integer DEFAULT 7200 NOT NULL,
    throttle_authenticated_api_period_in_seconds integer DEFAULT 3600 NOT NULL,
    throttle_authenticated_web_enabled boolean DEFAULT false NOT NULL,
    throttle_authenticated_web_requests_per_period integer DEFAULT 7200 NOT NULL,
    throttle_authenticated_web_period_in_seconds integer DEFAULT 3600 NOT NULL,
    password_authentication_enabled_for_web boolean,
    password_authentication_enabled_for_git boolean DEFAULT true,
    gitaly_timeout_default integer DEFAULT 55 NOT NULL,
    gitaly_timeout_medium integer DEFAULT 30 NOT NULL,
    gitaly_timeout_fast integer DEFAULT 10 NOT NULL,
    authorized_keys_enabled boolean DEFAULT true NOT NULL,
    auto_devops_domain character varying,
    pages_domain_verification_enabled boolean DEFAULT true NOT NULL,
    user_default_internal_regex character varying,
    allow_local_requests_from_hooks_and_services boolean DEFAULT false NOT NULL,
    enforce_terms boolean DEFAULT false,
    mirror_available boolean DEFAULT true NOT NULL,
    hide_third_party_offers boolean DEFAULT false NOT NULL,
    instance_statistics_visibility_private boolean DEFAULT false NOT NULL,
    web_ide_clientside_preview_enabled boolean DEFAULT false NOT NULL,
    user_show_add_ssh_key_message boolean DEFAULT true NOT NULL,
    usage_stats_set_by_user_id integer,
    receive_max_input_size integer,
    diff_max_patch_bytes integer DEFAULT 102400 NOT NULL,
    archive_builds_in_seconds integer,
    commit_email_hostname character varying,
    protected_ci_variables boolean DEFAULT false NOT NULL,
    runners_registration_token_encrypted character varying,
    local_markdown_version integer DEFAULT 0 NOT NULL,
    first_day_of_week integer DEFAULT 0 NOT NULL,
    default_project_creation integer DEFAULT 2 NOT NULL,
    external_authorization_service_enabled boolean DEFAULT false NOT NULL,
    external_authorization_service_url character varying,
    external_authorization_service_default_label character varying,
    external_authorization_service_timeout double precision DEFAULT 0.5,
    external_auth_client_cert text,
    encrypted_external_auth_client_key text,
    encrypted_external_auth_client_key_iv character varying,
    encrypted_external_auth_client_key_pass character varying,
    encrypted_external_auth_client_key_pass_iv character varying,
    lets_encrypt_notification_email character varying,
    lets_encrypt_terms_of_service_accepted boolean DEFAULT false NOT NULL,
    elasticsearch_shards integer DEFAULT 5 NOT NULL,
    elasticsearch_replicas integer DEFAULT 1 NOT NULL,
    encrypted_lets_encrypt_private_key text,
    encrypted_lets_encrypt_private_key_iv text,
    dns_rebinding_protection_enabled boolean DEFAULT true NOT NULL,
    default_project_deletion_protection boolean DEFAULT false NOT NULL
);


--
-- Name: application_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.application_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: application_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.application_settings_id_seq OWNED BY public.application_settings.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: audit_events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.audit_events (
    id integer NOT NULL,
    author_id integer NOT NULL,
    type character varying NOT NULL,
    entity_id integer NOT NULL,
    entity_type character varying NOT NULL,
    details text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: audit_events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.audit_events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: audit_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.audit_events_id_seq OWNED BY public.audit_events.id;


--
-- Name: award_emoji; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.award_emoji (
    id integer NOT NULL,
    name character varying,
    user_id integer,
    awardable_id integer,
    awardable_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: award_emoji_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.award_emoji_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: award_emoji_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.award_emoji_id_seq OWNED BY public.award_emoji.id;


--
-- Name: badges; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.badges (
    id integer NOT NULL,
    link_url character varying NOT NULL,
    image_url character varying NOT NULL,
    project_id integer,
    group_id integer,
    type character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- Name: badges_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.badges_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: badges_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.badges_id_seq OWNED BY public.badges.id;


--
-- Name: board_group_recent_visits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.board_group_recent_visits (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer,
    board_id integer,
    group_id integer
);


--
-- Name: board_group_recent_visits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.board_group_recent_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: board_group_recent_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.board_group_recent_visits_id_seq OWNED BY public.board_group_recent_visits.id;


--
-- Name: board_project_recent_visits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.board_project_recent_visits (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer,
    project_id integer,
    board_id integer
);


--
-- Name: board_project_recent_visits_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.board_project_recent_visits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: board_project_recent_visits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.board_project_recent_visits_id_seq OWNED BY public.board_project_recent_visits.id;


--
-- Name: boards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.boards (
    id integer NOT NULL,
    project_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    group_id integer
);


--
-- Name: boards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.boards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: boards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.boards_id_seq OWNED BY public.boards.id;


--
-- Name: broadcast_messages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.broadcast_messages (
    id integer NOT NULL,
    message text NOT NULL,
    starts_at timestamp without time zone NOT NULL,
    ends_at timestamp without time zone NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    color character varying,
    font character varying,
    message_html text NOT NULL,
    cached_markdown_version integer
);


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.broadcast_messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: broadcast_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.broadcast_messages_id_seq OWNED BY public.broadcast_messages.id;


--
-- Name: chat_names; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chat_names (
    id integer NOT NULL,
    user_id integer NOT NULL,
    service_id integer NOT NULL,
    team_id character varying NOT NULL,
    team_domain character varying,
    chat_id character varying NOT NULL,
    chat_name character varying,
    last_used_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: chat_names_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.chat_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: chat_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.chat_names_id_seq OWNED BY public.chat_names.id;


--
-- Name: chat_teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.chat_teams (
    id integer NOT NULL,
    namespace_id integer NOT NULL,
    team_id character varying,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: chat_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.chat_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: chat_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.chat_teams_id_seq OWNED BY public.chat_teams.id;


--
-- Name: ci_build_trace_chunks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_build_trace_chunks (
    id bigint NOT NULL,
    build_id integer NOT NULL,
    chunk_index integer NOT NULL,
    data_store integer NOT NULL,
    raw_data bytea
);


--
-- Name: ci_build_trace_chunks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_build_trace_chunks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_build_trace_chunks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_build_trace_chunks_id_seq OWNED BY public.ci_build_trace_chunks.id;


--
-- Name: ci_build_trace_section_names; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_build_trace_section_names (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: ci_build_trace_section_names_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_build_trace_section_names_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_build_trace_section_names_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_build_trace_section_names_id_seq OWNED BY public.ci_build_trace_section_names.id;


--
-- Name: ci_build_trace_sections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_build_trace_sections (
    id integer NOT NULL,
    project_id integer NOT NULL,
    date_start timestamp with time zone NOT NULL,
    date_end timestamp with time zone NOT NULL,
    byte_start bigint NOT NULL,
    byte_end bigint NOT NULL,
    build_id integer NOT NULL,
    section_name_id integer NOT NULL
);


--
-- Name: ci_build_trace_sections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_build_trace_sections_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_build_trace_sections_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_build_trace_sections_id_seq OWNED BY public.ci_build_trace_sections.id;


--
-- Name: ci_builds; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_builds (
    id integer NOT NULL,
    status character varying,
    finished_at timestamp without time zone,
    trace text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    started_at timestamp without time zone,
    runner_id integer,
    coverage double precision,
    commit_id integer,
    commands text,
    name character varying,
    options text,
    allow_failure boolean DEFAULT false NOT NULL,
    stage character varying,
    trigger_request_id integer,
    stage_idx integer,
    tag boolean,
    ref character varying,
    user_id integer,
    type character varying,
    target_url character varying,
    description character varying,
    artifacts_file text,
    project_id integer,
    artifacts_metadata text,
    erased_by_id integer,
    erased_at timestamp without time zone,
    artifacts_expire_at timestamp without time zone,
    environment character varying,
    artifacts_size bigint,
    "when" character varying,
    yaml_variables text,
    queued_at timestamp without time zone,
    token character varying,
    lock_version integer,
    coverage_regex character varying,
    auto_canceled_by_id integer,
    retried boolean,
    stage_id integer,
    artifacts_file_store integer,
    artifacts_metadata_store integer,
    protected boolean,
    failure_reason integer,
    scheduled_at timestamp with time zone,
    token_encrypted character varying
);


--
-- Name: ci_builds_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_builds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_builds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_builds_id_seq OWNED BY public.ci_builds.id;


--
-- Name: ci_builds_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_builds_metadata (
    id integer NOT NULL,
    build_id integer NOT NULL,
    project_id integer NOT NULL,
    timeout integer,
    timeout_source integer DEFAULT 1 NOT NULL,
    config_options jsonb,
    config_variables jsonb
);


--
-- Name: ci_builds_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_builds_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_builds_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_builds_metadata_id_seq OWNED BY public.ci_builds_metadata.id;


--
-- Name: ci_builds_runner_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_builds_runner_session (
    id bigint NOT NULL,
    build_id integer NOT NULL,
    url character varying NOT NULL,
    certificate character varying,
    "authorization" character varying
);


--
-- Name: ci_builds_runner_session_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_builds_runner_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_builds_runner_session_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_builds_runner_session_id_seq OWNED BY public.ci_builds_runner_session.id;


--
-- Name: ci_group_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_group_variables (
    id integer NOT NULL,
    key character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    group_id integer NOT NULL,
    protected boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    masked boolean DEFAULT false NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_group_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_group_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_group_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_group_variables_id_seq OWNED BY public.ci_group_variables.id;


--
-- Name: ci_job_artifacts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_job_artifacts (
    id integer NOT NULL,
    project_id integer NOT NULL,
    job_id integer NOT NULL,
    file_type integer NOT NULL,
    file_store integer,
    size bigint,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    expire_at timestamp with time zone,
    file character varying,
    file_sha256 bytea,
    file_format smallint,
    file_location smallint
);


--
-- Name: ci_job_artifacts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_job_artifacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_job_artifacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_job_artifacts_id_seq OWNED BY public.ci_job_artifacts.id;


--
-- Name: ci_pipeline_chat_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_pipeline_chat_data (
    id bigint NOT NULL,
    pipeline_id integer NOT NULL,
    chat_name_id integer NOT NULL,
    response_url text NOT NULL
);


--
-- Name: ci_pipeline_chat_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_pipeline_chat_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_chat_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_pipeline_chat_data_id_seq OWNED BY public.ci_pipeline_chat_data.id;


--
-- Name: ci_pipeline_schedule_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_pipeline_schedule_variables (
    id bigint NOT NULL,
    key character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    pipeline_schedule_id integer NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_pipeline_schedule_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_pipeline_schedule_variables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_schedule_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_pipeline_schedule_variables_id_seq OWNED BY public.ci_pipeline_schedule_variables.id;


--
-- Name: ci_pipeline_schedules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_pipeline_schedules (
    id integer NOT NULL,
    description character varying,
    ref character varying,
    cron character varying,
    cron_timezone character varying,
    next_run_at timestamp without time zone,
    project_id integer,
    owner_id integer,
    active boolean DEFAULT true,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: ci_pipeline_schedules_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_pipeline_schedules_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_schedules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_pipeline_schedules_id_seq OWNED BY public.ci_pipeline_schedules.id;


--
-- Name: ci_pipeline_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_pipeline_variables (
    id integer NOT NULL,
    key character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    pipeline_id integer NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_pipeline_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_pipeline_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipeline_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_pipeline_variables_id_seq OWNED BY public.ci_pipeline_variables.id;


--
-- Name: ci_pipelines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_pipelines (
    id integer NOT NULL,
    ref character varying,
    sha character varying,
    before_sha character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    tag boolean DEFAULT false,
    yaml_errors text,
    committed_at timestamp without time zone,
    project_id integer,
    status character varying,
    started_at timestamp without time zone,
    finished_at timestamp without time zone,
    duration integer,
    user_id integer,
    lock_version integer,
    auto_canceled_by_id integer,
    pipeline_schedule_id integer,
    source integer,
    config_source integer,
    protected boolean,
    failure_reason integer,
    iid integer,
    merge_request_id integer,
    source_sha bytea,
    target_sha bytea
);


--
-- Name: ci_pipelines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_pipelines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_pipelines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_pipelines_id_seq OWNED BY public.ci_pipelines.id;


--
-- Name: ci_runner_namespaces; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_runner_namespaces (
    id integer NOT NULL,
    runner_id integer,
    namespace_id integer
);


--
-- Name: ci_runner_namespaces_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_runner_namespaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_runner_namespaces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_runner_namespaces_id_seq OWNED BY public.ci_runner_namespaces.id;


--
-- Name: ci_runner_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_runner_projects (
    id integer NOT NULL,
    runner_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    project_id integer
);


--
-- Name: ci_runner_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_runner_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_runner_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_runner_projects_id_seq OWNED BY public.ci_runner_projects.id;


--
-- Name: ci_runners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_runners (
    id integer NOT NULL,
    token character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    description character varying,
    contacted_at timestamp without time zone,
    active boolean DEFAULT true NOT NULL,
    is_shared boolean DEFAULT false,
    name character varying,
    version character varying,
    revision character varying,
    platform character varying,
    architecture character varying,
    run_untagged boolean DEFAULT true NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    access_level integer DEFAULT 0 NOT NULL,
    ip_address character varying,
    maximum_timeout integer,
    runner_type smallint NOT NULL,
    token_encrypted character varying
);


--
-- Name: ci_runners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_runners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_runners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_runners_id_seq OWNED BY public.ci_runners.id;


--
-- Name: ci_stages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_stages (
    id integer NOT NULL,
    project_id integer,
    pipeline_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying,
    status integer,
    lock_version integer,
    "position" integer
);


--
-- Name: ci_stages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_stages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_stages_id_seq OWNED BY public.ci_stages.id;


--
-- Name: ci_trigger_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_trigger_requests (
    id integer NOT NULL,
    trigger_id integer NOT NULL,
    variables text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    commit_id integer
);


--
-- Name: ci_trigger_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_trigger_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_trigger_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_trigger_requests_id_seq OWNED BY public.ci_trigger_requests.id;


--
-- Name: ci_triggers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_triggers (
    id integer NOT NULL,
    token character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    project_id integer,
    owner_id integer,
    description character varying,
    ref character varying
);


--
-- Name: ci_triggers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_triggers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_triggers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_triggers_id_seq OWNED BY public.ci_triggers.id;


--
-- Name: ci_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ci_variables (
    id integer NOT NULL,
    key character varying NOT NULL,
    value text,
    encrypted_value text,
    encrypted_value_salt character varying,
    encrypted_value_iv character varying,
    project_id integer NOT NULL,
    protected boolean DEFAULT false NOT NULL,
    environment_scope character varying DEFAULT '*'::character varying NOT NULL,
    masked boolean DEFAULT false NOT NULL,
    variable_type smallint DEFAULT 1 NOT NULL
);


--
-- Name: ci_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.ci_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: ci_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.ci_variables_id_seq OWNED BY public.ci_variables.id;


--
-- Name: cluster_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cluster_groups (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: cluster_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cluster_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cluster_groups_id_seq OWNED BY public.cluster_groups.id;


--
-- Name: cluster_platforms_kubernetes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cluster_platforms_kubernetes (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
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
-- Name: cluster_platforms_kubernetes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cluster_platforms_kubernetes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_platforms_kubernetes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cluster_platforms_kubernetes_id_seq OWNED BY public.cluster_platforms_kubernetes.id;


--
-- Name: cluster_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cluster_projects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- Name: cluster_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cluster_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cluster_projects_id_seq OWNED BY public.cluster_projects.id;


--
-- Name: cluster_providers_gcp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cluster_providers_gcp (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer,
    num_nodes integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    status_reason text,
    gcp_project_id character varying NOT NULL,
    zone character varying NOT NULL,
    machine_type character varying,
    operation_id character varying,
    endpoint character varying,
    encrypted_access_token text,
    encrypted_access_token_iv character varying,
    legacy_abac boolean DEFAULT false NOT NULL
);


--
-- Name: cluster_providers_gcp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cluster_providers_gcp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cluster_providers_gcp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cluster_providers_gcp_id_seq OWNED BY public.cluster_providers_gcp.id;


--
-- Name: clusters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters (
    id integer NOT NULL,
    user_id integer,
    provider_type integer,
    platform_type integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    enabled boolean DEFAULT true,
    name character varying NOT NULL,
    environment_scope character varying DEFAULT '*'::character varying NOT NULL,
    cluster_type smallint DEFAULT 3 NOT NULL,
    domain character varying,
    managed boolean DEFAULT true NOT NULL
);


--
-- Name: clusters_applications_cert_managers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_cert_managers (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    email character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    status_reason text
);


--
-- Name: clusters_applications_cert_managers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_cert_managers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_cert_managers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_cert_managers_id_seq OWNED BY public.clusters_applications_cert_managers.id;


--
-- Name: clusters_applications_helm; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_helm (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    status_reason text,
    encrypted_ca_key text,
    encrypted_ca_key_iv text,
    ca_cert text
);


--
-- Name: clusters_applications_helm_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_helm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_helm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_helm_id_seq OWNED BY public.clusters_applications_helm.id;


--
-- Name: clusters_applications_ingress; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_ingress (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    status integer NOT NULL,
    ingress_type integer NOT NULL,
    version character varying NOT NULL,
    cluster_ip character varying,
    status_reason text,
    external_ip character varying,
    external_hostname character varying
);


--
-- Name: clusters_applications_ingress_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_ingress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_ingress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_ingress_id_seq OWNED BY public.clusters_applications_ingress.id;


--
-- Name: clusters_applications_jupyter; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_jupyter (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    oauth_application_id integer,
    status integer NOT NULL,
    version character varying NOT NULL,
    hostname character varying,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    status_reason text
);


--
-- Name: clusters_applications_jupyter_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_jupyter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_jupyter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_jupyter_id_seq OWNED BY public.clusters_applications_jupyter.id;


--
-- Name: clusters_applications_knative; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_knative (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    hostname character varying,
    status_reason text,
    external_ip character varying,
    external_hostname character varying
);


--
-- Name: clusters_applications_knative_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_knative_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_knative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_knative_id_seq OWNED BY public.clusters_applications_knative.id;


--
-- Name: clusters_applications_prometheus; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_prometheus (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    status integer NOT NULL,
    version character varying NOT NULL,
    status_reason text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- Name: clusters_applications_prometheus_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_prometheus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_prometheus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_prometheus_id_seq OWNED BY public.clusters_applications_prometheus.id;


--
-- Name: clusters_applications_runners; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_applications_runners (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    runner_id integer,
    status integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    version character varying NOT NULL,
    status_reason text,
    privileged boolean DEFAULT true NOT NULL
);


--
-- Name: clusters_applications_runners_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_applications_runners_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_applications_runners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_applications_runners_id_seq OWNED BY public.clusters_applications_runners.id;


--
-- Name: clusters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_id_seq OWNED BY public.clusters.id;


--
-- Name: clusters_kubernetes_namespaces; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusters_kubernetes_namespaces (
    id bigint NOT NULL,
    cluster_id integer NOT NULL,
    project_id integer,
    cluster_project_id integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    encrypted_service_account_token text,
    encrypted_service_account_token_iv character varying,
    namespace character varying NOT NULL,
    service_account_name character varying
);


--
-- Name: clusters_kubernetes_namespaces_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusters_kubernetes_namespaces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clusters_kubernetes_namespaces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusters_kubernetes_namespaces_id_seq OWNED BY public.clusters_kubernetes_namespaces.id;


--
-- Name: container_repositories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.container_repositories (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: container_repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.container_repositories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: container_repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.container_repositories_id_seq OWNED BY public.container_repositories.id;


--
-- Name: conversational_development_index_metrics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.conversational_development_index_metrics (
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
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
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
-- Name: conversational_development_index_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.conversational_development_index_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: conversational_development_index_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.conversational_development_index_metrics_id_seq OWNED BY public.conversational_development_index_metrics.id;


--
-- Name: deploy_keys_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deploy_keys_projects (
    id integer NOT NULL,
    deploy_key_id integer NOT NULL,
    project_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    can_push boolean DEFAULT false NOT NULL
);


--
-- Name: deploy_keys_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.deploy_keys_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deploy_keys_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.deploy_keys_projects_id_seq OWNED BY public.deploy_keys_projects.id;


--
-- Name: deploy_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deploy_tokens (
    id integer NOT NULL,
    revoked boolean DEFAULT false,
    read_repository boolean DEFAULT false NOT NULL,
    read_registry boolean DEFAULT false NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    name character varying NOT NULL,
    token character varying NOT NULL
);


--
-- Name: deploy_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.deploy_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deploy_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.deploy_tokens_id_seq OWNED BY public.deploy_tokens.id;


--
-- Name: deployments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.deployments (
    id integer NOT NULL,
    iid integer NOT NULL,
    project_id integer NOT NULL,
    environment_id integer NOT NULL,
    ref character varying NOT NULL,
    tag boolean NOT NULL,
    sha character varying NOT NULL,
    user_id integer,
    deployable_id integer,
    deployable_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    on_stop character varying,
    status smallint NOT NULL,
    finished_at timestamp with time zone
);


--
-- Name: deployments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.deployments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: deployments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.deployments_id_seq OWNED BY public.deployments.id;


--
-- Name: emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.emails (
    id integer NOT NULL,
    user_id integer NOT NULL,
    email character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    confirmation_token character varying,
    confirmed_at timestamp with time zone,
    confirmation_sent_at timestamp with time zone
);


--
-- Name: emails_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.emails_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: emails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.emails_id_seq OWNED BY public.emails.id;


--
-- Name: environments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.environments (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    external_url character varying,
    environment_type character varying,
    state character varying DEFAULT 'available'::character varying NOT NULL,
    slug character varying NOT NULL
);


--
-- Name: environments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.environments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: environments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.environments_id_seq OWNED BY public.environments.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.events (
    id integer NOT NULL,
    project_id integer,
    author_id integer NOT NULL,
    target_id integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    action smallint NOT NULL,
    target_type character varying
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: feature_gates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.feature_gates (
    id integer NOT NULL,
    feature_key character varying NOT NULL,
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: feature_gates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.feature_gates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: feature_gates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.feature_gates_id_seq OWNED BY public.feature_gates.id;


--
-- Name: features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.features (
    id integer NOT NULL,
    key character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.features_id_seq OWNED BY public.features.id;


--
-- Name: fork_network_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fork_network_members (
    id integer NOT NULL,
    fork_network_id integer NOT NULL,
    project_id integer NOT NULL,
    forked_from_project_id integer
);


--
-- Name: fork_network_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fork_network_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fork_network_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fork_network_members_id_seq OWNED BY public.fork_network_members.id;


--
-- Name: fork_networks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fork_networks (
    id integer NOT NULL,
    root_project_id integer,
    deleted_root_project_name character varying
);


--
-- Name: fork_networks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fork_networks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fork_networks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fork_networks_id_seq OWNED BY public.fork_networks.id;


--
-- Name: forked_project_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.forked_project_links (
    id integer NOT NULL,
    forked_to_project_id integer NOT NULL,
    forked_from_project_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: forked_project_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.forked_project_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forked_project_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.forked_project_links_id_seq OWNED BY public.forked_project_links.id;


--
-- Name: gpg_key_subkeys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gpg_key_subkeys (
    id integer NOT NULL,
    gpg_key_id integer NOT NULL,
    keyid bytea,
    fingerprint bytea
);


--
-- Name: gpg_key_subkeys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gpg_key_subkeys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gpg_key_subkeys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gpg_key_subkeys_id_seq OWNED BY public.gpg_key_subkeys.id;


--
-- Name: gpg_keys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gpg_keys (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer,
    primary_keyid bytea,
    fingerprint bytea,
    key text
);


--
-- Name: gpg_keys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gpg_keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gpg_keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gpg_keys_id_seq OWNED BY public.gpg_keys.id;


--
-- Name: gpg_signatures; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.gpg_signatures (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    project_id integer,
    gpg_key_id integer,
    commit_sha bytea,
    gpg_key_primary_keyid bytea,
    gpg_key_user_name text,
    gpg_key_user_email text,
    verification_status smallint DEFAULT 0 NOT NULL,
    gpg_key_subkey_id integer
);


--
-- Name: gpg_signatures_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.gpg_signatures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: gpg_signatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.gpg_signatures_id_seq OWNED BY public.gpg_signatures.id;


--
-- Name: group_custom_attributes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.group_custom_attributes (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    group_id integer NOT NULL,
    key character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: group_custom_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.group_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: group_custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.group_custom_attributes_id_seq OWNED BY public.group_custom_attributes.id;


--
-- Name: identities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.identities (
    id integer NOT NULL,
    extern_uid character varying,
    provider character varying,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: identities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.identities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: identities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.identities_id_seq OWNED BY public.identities.id;


--
-- Name: import_export_uploads; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.import_export_uploads (
    id integer NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    project_id integer,
    import_file text,
    export_file text
);


--
-- Name: import_export_uploads_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.import_export_uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: import_export_uploads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.import_export_uploads_id_seq OWNED BY public.import_export_uploads.id;


--
-- Name: internal_ids; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.internal_ids (
    id bigint NOT NULL,
    project_id integer,
    usage integer NOT NULL,
    last_value integer NOT NULL,
    namespace_id integer
);


--
-- Name: internal_ids_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.internal_ids_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: internal_ids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.internal_ids_id_seq OWNED BY public.internal_ids.id;


--
-- Name: issue_assignees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_assignees (
    user_id integer NOT NULL,
    issue_id integer NOT NULL
);


--
-- Name: issue_metrics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issue_metrics (
    id integer NOT NULL,
    issue_id integer NOT NULL,
    first_mentioned_in_commit_at timestamp without time zone,
    first_associated_with_milestone_at timestamp without time zone,
    first_added_to_board_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: issue_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issue_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issue_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issue_metrics_id_seq OWNED BY public.issue_metrics.id;


--
-- Name: issues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.issues (
    id integer NOT NULL,
    title character varying,
    author_id integer,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    description text,
    milestone_id integer,
    state character varying,
    iid integer,
    updated_by_id integer,
    confidential boolean DEFAULT false NOT NULL,
    due_date date,
    moved_to_id integer,
    lock_version integer,
    title_html text,
    description_html text,
    time_estimate integer,
    relative_position integer,
    cached_markdown_version integer,
    last_edited_at timestamp without time zone,
    last_edited_by_id integer,
    discussion_locked boolean,
    closed_at timestamp with time zone,
    closed_by_id integer,
    state_id smallint
);


--
-- Name: issues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.issues_id_seq OWNED BY public.issues.id;


--
-- Name: keys; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.keys (
    id integer NOT NULL,
    user_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    key text,
    title character varying,
    type character varying,
    fingerprint character varying,
    public boolean DEFAULT false NOT NULL,
    last_used_at timestamp without time zone
);


--
-- Name: keys_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.keys_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: keys_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.keys_id_seq OWNED BY public.keys.id;


--
-- Name: label_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.label_links (
    id integer NOT NULL,
    label_id integer,
    target_id integer,
    target_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: label_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.label_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: label_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.label_links_id_seq OWNED BY public.label_links.id;


--
-- Name: label_priorities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.label_priorities (
    id integer NOT NULL,
    project_id integer NOT NULL,
    label_id integer NOT NULL,
    priority integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: label_priorities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.label_priorities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: label_priorities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.label_priorities_id_seq OWNED BY public.label_priorities.id;


--
-- Name: labels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.labels (
    id integer NOT NULL,
    title character varying,
    color character varying,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    template boolean DEFAULT false,
    description character varying,
    description_html text,
    type character varying,
    group_id integer,
    cached_markdown_version integer
);


--
-- Name: labels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.labels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: labels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.labels_id_seq OWNED BY public.labels.id;


--
-- Name: lfs_file_locks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lfs_file_locks (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    path character varying(511)
);


--
-- Name: lfs_file_locks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.lfs_file_locks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lfs_file_locks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.lfs_file_locks_id_seq OWNED BY public.lfs_file_locks.id;


--
-- Name: lfs_objects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lfs_objects (
    id integer NOT NULL,
    oid character varying NOT NULL,
    size bigint NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    file character varying,
    file_store integer
);


--
-- Name: lfs_objects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.lfs_objects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lfs_objects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.lfs_objects_id_seq OWNED BY public.lfs_objects.id;


--
-- Name: lfs_objects_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lfs_objects_projects (
    id integer NOT NULL,
    lfs_object_id integer NOT NULL,
    project_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: lfs_objects_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.lfs_objects_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lfs_objects_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.lfs_objects_projects_id_seq OWNED BY public.lfs_objects_projects.id;


--
-- Name: lists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lists (
    id integer NOT NULL,
    board_id integer NOT NULL,
    label_id integer,
    list_type integer DEFAULT 1 NOT NULL,
    "position" integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.lists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.lists_id_seq OWNED BY public.lists.id;


--
-- Name: members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.members (
    id integer NOT NULL,
    access_level integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    user_id integer,
    notification_level integer NOT NULL,
    type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    created_by_id integer,
    invite_email character varying,
    invite_token character varying,
    invite_accepted_at timestamp without time zone,
    requested_at timestamp without time zone,
    expires_at date
);


--
-- Name: members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;


--
-- Name: merge_request_assignees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_request_assignees (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    merge_request_id integer NOT NULL
);


--
-- Name: merge_request_assignees_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_request_assignees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_assignees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_request_assignees_id_seq OWNED BY public.merge_request_assignees.id;


--
-- Name: merge_request_blocks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_request_blocks (
    id bigint NOT NULL,
    blocking_merge_request_id integer NOT NULL,
    blocked_merge_request_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- Name: merge_request_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_request_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_request_blocks_id_seq OWNED BY public.merge_request_blocks.id;


--
-- Name: merge_request_diff_commits; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_request_diff_commits (
    authored_date timestamp with time zone,
    committed_date timestamp with time zone,
    merge_request_diff_id integer NOT NULL,
    relative_order integer NOT NULL,
    sha bytea NOT NULL,
    author_name text,
    author_email text,
    committer_name text,
    committer_email text,
    message text
);


--
-- Name: merge_request_diff_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_request_diff_files (
    merge_request_diff_id integer NOT NULL,
    relative_order integer NOT NULL,
    new_file boolean NOT NULL,
    renamed_file boolean NOT NULL,
    deleted_file boolean NOT NULL,
    too_large boolean NOT NULL,
    a_mode character varying NOT NULL,
    b_mode character varying NOT NULL,
    new_path text NOT NULL,
    old_path text NOT NULL,
    diff text,
    "binary" boolean,
    external_diff_offset integer,
    external_diff_size integer
);


--
-- Name: merge_request_diffs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_request_diffs (
    id integer NOT NULL,
    state character varying,
    merge_request_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    base_commit_sha character varying,
    real_size character varying,
    head_commit_sha character varying,
    start_commit_sha character varying,
    commits_count integer,
    external_diff character varying,
    external_diff_store integer,
    stored_externally boolean
);


--
-- Name: merge_request_diffs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_request_diffs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_diffs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_request_diffs_id_seq OWNED BY public.merge_request_diffs.id;


--
-- Name: merge_request_metrics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_request_metrics (
    id integer NOT NULL,
    merge_request_id integer NOT NULL,
    latest_build_started_at timestamp without time zone,
    latest_build_finished_at timestamp without time zone,
    first_deployed_to_production_at timestamp without time zone,
    merged_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    pipeline_id integer,
    merged_by_id integer,
    latest_closed_by_id integer,
    latest_closed_at timestamp with time zone
);


--
-- Name: merge_request_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_request_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_request_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_request_metrics_id_seq OWNED BY public.merge_request_metrics.id;


--
-- Name: merge_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_requests (
    id integer NOT NULL,
    target_branch character varying NOT NULL,
    source_branch character varying NOT NULL,
    source_project_id integer,
    author_id integer,
    assignee_id integer,
    title character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    milestone_id integer,
    state character varying DEFAULT 'opened'::character varying NOT NULL,
    merge_status character varying DEFAULT 'unchecked'::character varying NOT NULL,
    target_project_id integer NOT NULL,
    iid integer,
    description text,
    updated_by_id integer,
    merge_error text,
    merge_params text,
    merge_when_pipeline_succeeds boolean DEFAULT false NOT NULL,
    merge_user_id integer,
    merge_commit_sha character varying,
    in_progress_merge_commit_sha character varying,
    lock_version integer,
    title_html text,
    description_html text,
    time_estimate integer,
    cached_markdown_version integer,
    last_edited_at timestamp without time zone,
    last_edited_by_id integer,
    head_pipeline_id integer,
    merge_jid character varying,
    discussion_locked boolean,
    latest_merge_request_diff_id integer,
    rebase_commit_sha character varying,
    squash boolean DEFAULT false NOT NULL,
    allow_maintainer_to_push boolean,
    state_id smallint
);


--
-- Name: merge_requests_closing_issues; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_requests_closing_issues (
    id integer NOT NULL,
    merge_request_id integer NOT NULL,
    issue_id integer NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: merge_requests_closing_issues_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_requests_closing_issues_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_requests_closing_issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_requests_closing_issues_id_seq OWNED BY public.merge_requests_closing_issues.id;


--
-- Name: merge_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_requests_id_seq OWNED BY public.merge_requests.id;


--
-- Name: merge_trains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.merge_trains (
    id bigint NOT NULL,
    merge_request_id integer NOT NULL,
    user_id integer NOT NULL,
    pipeline_id integer,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    target_project_id integer NOT NULL,
    target_branch text NOT NULL
);


--
-- Name: merge_trains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.merge_trains_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: merge_trains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.merge_trains_id_seq OWNED BY public.merge_trains.id;


--
-- Name: milestones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.milestones (
    id integer NOT NULL,
    title character varying NOT NULL,
    project_id integer,
    description text,
    due_date date,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    state character varying,
    iid integer,
    title_html text,
    description_html text,
    start_date date,
    cached_markdown_version integer,
    group_id integer
);


--
-- Name: milestones_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.milestones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: milestones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.milestones_id_seq OWNED BY public.milestones.id;


--
-- Name: namespaces; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.namespaces (
    id integer NOT NULL,
    name character varying NOT NULL,
    path character varying NOT NULL,
    owner_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    type character varying,
    description character varying DEFAULT ''::character varying NOT NULL,
    avatar character varying,
    share_with_group_lock boolean DEFAULT false,
    visibility_level integer DEFAULT 20 NOT NULL,
    request_access_enabled boolean DEFAULT false NOT NULL,
    description_html text,
    lfs_enabled boolean,
    parent_id integer,
    require_two_factor_authentication boolean DEFAULT false NOT NULL,
    two_factor_grace_period integer DEFAULT 48 NOT NULL,
    cached_markdown_version integer,
    runners_token character varying,
    runners_token_encrypted character varying,
    project_creation_level integer,
    auto_devops_enabled boolean,
    last_ci_minutes_notification_at timestamp with time zone
);


--
-- Name: namespaces_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.namespaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: namespaces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.namespaces_id_seq OWNED BY public.namespaces.id;


--
-- Name: note_diff_files; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.note_diff_files (
    id integer NOT NULL,
    diff_note_id integer NOT NULL,
    diff text NOT NULL,
    new_file boolean NOT NULL,
    renamed_file boolean NOT NULL,
    deleted_file boolean NOT NULL,
    a_mode character varying NOT NULL,
    b_mode character varying NOT NULL,
    new_path text NOT NULL,
    old_path text NOT NULL
);


--
-- Name: note_diff_files_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.note_diff_files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: note_diff_files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.note_diff_files_id_seq OWNED BY public.note_diff_files.id;


--
-- Name: notes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notes (
    id integer NOT NULL,
    note text,
    noteable_type character varying,
    author_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    project_id integer,
    attachment character varying,
    line_code character varying,
    commit_id character varying,
    noteable_id integer,
    system boolean DEFAULT false NOT NULL,
    st_diff text,
    updated_by_id integer,
    type character varying,
    "position" text,
    original_position text,
    resolved_at timestamp without time zone,
    resolved_by_id integer,
    discussion_id character varying,
    note_html text,
    cached_markdown_version integer,
    change_position text,
    resolved_by_push boolean
);


--
-- Name: notes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notes_id_seq OWNED BY public.notes.id;


--
-- Name: notification_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.notification_settings (
    id integer NOT NULL,
    user_id integer NOT NULL,
    source_id integer,
    source_type character varying,
    level integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    new_note boolean,
    new_issue boolean,
    reopen_issue boolean,
    close_issue boolean,
    reassign_issue boolean,
    new_merge_request boolean,
    reopen_merge_request boolean,
    close_merge_request boolean,
    reassign_merge_request boolean,
    merge_merge_request boolean,
    failed_pipeline boolean,
    success_pipeline boolean,
    push_to_merge_request boolean,
    issue_due boolean,
    notification_email character varying
);


--
-- Name: notification_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.notification_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: notification_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.notification_settings_id_seq OWNED BY public.notification_settings.id;


--
-- Name: oauth_access_grants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_access_grants (
    id integer NOT NULL,
    resource_owner_id integer NOT NULL,
    application_id integer NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    revoked_at timestamp without time zone,
    scopes character varying
);


--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.oauth_access_grants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.oauth_access_grants_id_seq OWNED BY public.oauth_access_grants.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_access_tokens (
    id integer NOT NULL,
    resource_owner_id integer,
    application_id integer,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    scopes character varying
);


--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.oauth_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.oauth_access_tokens_id_seq OWNED BY public.oauth_access_tokens.id;


--
-- Name: oauth_applications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_applications (
    id integer NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri text NOT NULL,
    scopes character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    owner_id integer,
    owner_type character varying,
    trusted boolean DEFAULT false NOT NULL
);


--
-- Name: oauth_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.oauth_applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.oauth_applications_id_seq OWNED BY public.oauth_applications.id;


--
-- Name: oauth_openid_requests; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.oauth_openid_requests (
    id integer NOT NULL,
    access_grant_id integer NOT NULL,
    nonce character varying NOT NULL
);


--
-- Name: oauth_openid_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.oauth_openid_requests_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: oauth_openid_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.oauth_openid_requests_id_seq OWNED BY public.oauth_openid_requests.id;


--
-- Name: pages_domain_acme_orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_domain_acme_orders (
    id bigint NOT NULL,
    pages_domain_id integer NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    url character varying NOT NULL,
    challenge_token character varying NOT NULL,
    challenge_file_content text NOT NULL,
    encrypted_private_key text NOT NULL,
    encrypted_private_key_iv text NOT NULL
);


--
-- Name: pages_domain_acme_orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_domain_acme_orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_domain_acme_orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_domain_acme_orders_id_seq OWNED BY public.pages_domain_acme_orders.id;


--
-- Name: pages_domains; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages_domains (
    id integer NOT NULL,
    project_id integer,
    certificate text,
    encrypted_key text,
    encrypted_key_iv character varying,
    encrypted_key_salt character varying,
    domain character varying,
    verified_at timestamp with time zone,
    verification_code character varying NOT NULL,
    enabled_until timestamp with time zone,
    remove_at timestamp with time zone,
    auto_ssl_enabled boolean DEFAULT false NOT NULL,
    certificate_valid_not_before timestamp with time zone,
    certificate_valid_not_after timestamp with time zone
);


--
-- Name: pages_domains_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pages_domains_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_domains_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pages_domains_id_seq OWNED BY public.pages_domains.id;


--
-- Name: personal_access_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.personal_access_tokens (
    id integer NOT NULL,
    user_id integer NOT NULL,
    name character varying NOT NULL,
    revoked boolean DEFAULT false,
    expires_at date,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    scopes character varying DEFAULT '--- []
'::character varying NOT NULL,
    impersonation boolean DEFAULT false NOT NULL,
    token_digest character varying
);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.personal_access_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;


--
-- Name: pool_repositories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pool_repositories (
    id bigint NOT NULL,
    shard_id integer NOT NULL,
    disk_path character varying,
    state character varying,
    source_project_id integer
);


--
-- Name: pool_repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pool_repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pool_repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pool_repositories_id_seq OWNED BY public.pool_repositories.id;


--
-- Name: programming_languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.programming_languages (
    id integer NOT NULL,
    name character varying NOT NULL,
    color character varying NOT NULL,
    created_at timestamp with time zone NOT NULL
);


--
-- Name: programming_languages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.programming_languages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: programming_languages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.programming_languages_id_seq OWNED BY public.programming_languages.id;


--
-- Name: project_authorizations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_authorizations (
    user_id integer NOT NULL,
    project_id integer NOT NULL,
    access_level integer NOT NULL
);


--
-- Name: project_auto_devops; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_auto_devops (
    id integer NOT NULL,
    project_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    enabled boolean,
    deploy_strategy integer DEFAULT 0 NOT NULL
);


--
-- Name: project_auto_devops_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_auto_devops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_auto_devops_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_auto_devops_id_seq OWNED BY public.project_auto_devops.id;


--
-- Name: project_ci_cd_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_ci_cd_settings (
    id integer NOT NULL,
    project_id integer NOT NULL,
    group_runners_enabled boolean DEFAULT true NOT NULL,
    merge_pipelines_enabled boolean,
    merge_trains_enabled boolean DEFAULT false NOT NULL,
    default_git_depth integer
);


--
-- Name: project_ci_cd_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_ci_cd_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_ci_cd_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_ci_cd_settings_id_seq OWNED BY public.project_ci_cd_settings.id;


--
-- Name: project_custom_attributes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_custom_attributes (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    project_id integer NOT NULL,
    key character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: project_custom_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_custom_attributes_id_seq OWNED BY public.project_custom_attributes.id;


--
-- Name: project_daily_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_daily_statistics (
    id bigint NOT NULL,
    project_id integer NOT NULL,
    fetch_count integer NOT NULL,
    date date
);


--
-- Name: project_daily_statistics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_daily_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_daily_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_daily_statistics_id_seq OWNED BY public.project_daily_statistics.id;


--
-- Name: project_deploy_tokens; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_deploy_tokens (
    id integer NOT NULL,
    project_id integer NOT NULL,
    deploy_token_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL
);


--
-- Name: project_deploy_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_deploy_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_deploy_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_deploy_tokens_id_seq OWNED BY public.project_deploy_tokens.id;


--
-- Name: project_error_tracking_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_error_tracking_settings (
    project_id integer NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    api_url character varying,
    encrypted_token character varying,
    encrypted_token_iv character varying,
    project_name character varying,
    organization_name character varying
);


--
-- Name: project_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_features (
    id integer NOT NULL,
    project_id integer NOT NULL,
    merge_requests_access_level integer,
    issues_access_level integer,
    wiki_access_level integer,
    snippets_access_level integer DEFAULT 20 NOT NULL,
    builds_access_level integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    repository_access_level integer DEFAULT 20 NOT NULL,
    pages_access_level integer DEFAULT 20 NOT NULL
);


--
-- Name: project_features_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_features_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_features_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_features_id_seq OWNED BY public.project_features.id;


--
-- Name: project_group_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_group_links (
    id integer NOT NULL,
    project_id integer NOT NULL,
    group_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    group_access integer DEFAULT 30 NOT NULL,
    expires_at date
);


--
-- Name: project_group_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_group_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_group_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_group_links_id_seq OWNED BY public.project_group_links.id;


--
-- Name: project_import_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_import_data (
    id integer NOT NULL,
    project_id integer,
    data text,
    encrypted_credentials text,
    encrypted_credentials_iv character varying,
    encrypted_credentials_salt character varying
);


--
-- Name: project_import_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_import_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_import_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_import_data_id_seq OWNED BY public.project_import_data.id;


--
-- Name: project_metrics_settings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_metrics_settings (
    project_id integer NOT NULL,
    external_dashboard_url character varying NOT NULL
);


--
-- Name: project_mirror_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_mirror_data (
    id integer NOT NULL,
    project_id integer NOT NULL,
    status character varying,
    jid character varying,
    last_error text
);


--
-- Name: project_mirror_data_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_mirror_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_mirror_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_mirror_data_id_seq OWNED BY public.project_mirror_data.id;


--
-- Name: project_repositories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_repositories (
    id bigint NOT NULL,
    shard_id integer NOT NULL,
    disk_path character varying NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: project_repositories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_repositories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_repositories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_repositories_id_seq OWNED BY public.project_repositories.id;


--
-- Name: project_statistics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.project_statistics (
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
-- Name: project_statistics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.project_statistics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: project_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.project_statistics_id_seq OWNED BY public.project_statistics.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    name character varying,
    path character varying,
    description text,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    creator_id integer,
    namespace_id integer NOT NULL,
    last_activity_at timestamp without time zone,
    import_url character varying,
    visibility_level integer DEFAULT 0 NOT NULL,
    archived boolean DEFAULT false NOT NULL,
    avatar character varying,
    import_status character varying,
    star_count integer DEFAULT 0 NOT NULL,
    import_type character varying,
    import_source character varying,
    import_error text,
    shared_runners_enabled boolean DEFAULT true NOT NULL,
    runners_token character varying,
    build_coverage_regex character varying,
    build_allow_git_fetch boolean DEFAULT true NOT NULL,
    build_timeout integer DEFAULT 3600 NOT NULL,
    pending_delete boolean DEFAULT false,
    public_builds boolean DEFAULT true NOT NULL,
    last_repository_check_failed boolean,
    last_repository_check_at timestamp without time zone,
    container_registry_enabled boolean,
    only_allow_merge_if_pipeline_succeeds boolean DEFAULT false NOT NULL,
    has_external_issue_tracker boolean,
    repository_storage character varying DEFAULT 'default'::character varying NOT NULL,
    request_access_enabled boolean DEFAULT false NOT NULL,
    has_external_wiki boolean,
    ci_config_path character varying,
    lfs_enabled boolean,
    description_html text,
    only_allow_merge_if_all_discussions_are_resolved boolean,
    printing_merge_request_link_enabled boolean DEFAULT true NOT NULL,
    auto_cancel_pending_pipelines integer DEFAULT 1 NOT NULL,
    import_jid character varying,
    cached_markdown_version integer,
    delete_error text,
    last_repository_updated_at timestamp without time zone,
    storage_version smallint,
    resolve_outdated_diff_discussions boolean,
    repository_read_only boolean,
    merge_requests_ff_only_enabled boolean DEFAULT false,
    merge_requests_rebase_enabled boolean DEFAULT false NOT NULL,
    jobs_cache_index integer,
    pages_https_only boolean DEFAULT true,
    remote_mirror_available_overridden boolean,
    pool_repository_id bigint,
    runners_token_encrypted character varying,
    bfg_object_map character varying,
    detected_repository_languages boolean,
    external_authorization_classification_label character varying
);


--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: prometheus_metrics; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.prometheus_metrics (
    id integer NOT NULL,
    project_id integer,
    title character varying NOT NULL,
    query character varying NOT NULL,
    y_label character varying,
    unit character varying,
    legend character varying,
    "group" integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    common boolean DEFAULT false NOT NULL,
    identifier character varying
);


--
-- Name: prometheus_metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.prometheus_metrics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: prometheus_metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.prometheus_metrics_id_seq OWNED BY public.prometheus_metrics.id;


--
-- Name: protected_branch_merge_access_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.protected_branch_merge_access_levels (
    id integer NOT NULL,
    protected_branch_id integer NOT NULL,
    access_level integer DEFAULT 40 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: protected_branch_merge_access_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.protected_branch_merge_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_branch_merge_access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.protected_branch_merge_access_levels_id_seq OWNED BY public.protected_branch_merge_access_levels.id;


--
-- Name: protected_branch_push_access_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.protected_branch_push_access_levels (
    id integer NOT NULL,
    protected_branch_id integer NOT NULL,
    access_level integer DEFAULT 40 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: protected_branch_push_access_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.protected_branch_push_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_branch_push_access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.protected_branch_push_access_levels_id_seq OWNED BY public.protected_branch_push_access_levels.id;


--
-- Name: protected_branches; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.protected_branches (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: protected_branches_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.protected_branches_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_branches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.protected_branches_id_seq OWNED BY public.protected_branches.id;


--
-- Name: protected_tag_create_access_levels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.protected_tag_create_access_levels (
    id integer NOT NULL,
    protected_tag_id integer NOT NULL,
    access_level integer DEFAULT 40,
    user_id integer,
    group_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: protected_tag_create_access_levels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.protected_tag_create_access_levels_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_tag_create_access_levels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.protected_tag_create_access_levels_id_seq OWNED BY public.protected_tag_create_access_levels.id;


--
-- Name: protected_tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.protected_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    name character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: protected_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.protected_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: protected_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.protected_tags_id_seq OWNED BY public.protected_tags.id;


--
-- Name: push_event_payloads; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.push_event_payloads (
    commit_count bigint NOT NULL,
    event_id integer NOT NULL,
    action smallint NOT NULL,
    ref_type smallint NOT NULL,
    commit_from bytea,
    commit_to bytea,
    ref text,
    commit_title character varying(70)
);


--
-- Name: redirect_routes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.redirect_routes (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    path character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: redirect_routes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.redirect_routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: redirect_routes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.redirect_routes_id_seq OWNED BY public.redirect_routes.id;


--
-- Name: release_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.release_links (
    id bigint NOT NULL,
    release_id integer NOT NULL,
    url character varying NOT NULL,
    name character varying NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- Name: release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.release_links_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.release_links_id_seq OWNED BY public.release_links.id;


--
-- Name: releases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.releases (
    id integer NOT NULL,
    tag character varying,
    description text,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    description_html text,
    cached_markdown_version integer,
    author_id integer,
    name character varying,
    sha character varying
);


--
-- Name: releases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.releases_id_seq OWNED BY public.releases.id;


--
-- Name: remote_mirrors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.remote_mirrors (
    id integer NOT NULL,
    project_id integer,
    url character varying,
    enabled boolean DEFAULT false,
    update_status character varying,
    last_update_at timestamp without time zone,
    last_successful_update_at timestamp without time zone,
    last_update_started_at timestamp without time zone,
    last_error character varying,
    only_protected_branches boolean DEFAULT false NOT NULL,
    remote_name character varying,
    encrypted_credentials text,
    encrypted_credentials_iv character varying,
    encrypted_credentials_salt character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    error_notification_sent boolean
);


--
-- Name: remote_mirrors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.remote_mirrors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: remote_mirrors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.remote_mirrors_id_seq OWNED BY public.remote_mirrors.id;


--
-- Name: repository_languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.repository_languages (
    project_id integer NOT NULL,
    programming_language_id integer NOT NULL,
    share double precision NOT NULL
);


--
-- Name: resource_label_events; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.resource_label_events (
    id bigint NOT NULL,
    action integer NOT NULL,
    issue_id integer,
    merge_request_id integer,
    label_id integer,
    user_id integer,
    created_at timestamp with time zone NOT NULL,
    cached_markdown_version integer,
    reference text,
    reference_html text
);


--
-- Name: resource_label_events_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.resource_label_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: resource_label_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.resource_label_events_id_seq OWNED BY public.resource_label_events.id;


--
-- Name: routes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.routes (
    id integer NOT NULL,
    source_id integer NOT NULL,
    source_type character varying NOT NULL,
    path character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying
);


--
-- Name: routes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.routes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: routes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.routes_id_seq OWNED BY public.routes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: sent_notifications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sent_notifications (
    id integer NOT NULL,
    project_id integer,
    noteable_id integer,
    noteable_type character varying,
    recipient_id integer,
    commit_id character varying,
    reply_key character varying NOT NULL,
    line_code character varying,
    note_type character varying,
    "position" text,
    in_reply_to_discussion_id character varying
);


--
-- Name: sent_notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sent_notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sent_notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sent_notifications_id_seq OWNED BY public.sent_notifications.id;


--
-- Name: services; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.services (
    id integer NOT NULL,
    type character varying,
    title character varying,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    active boolean DEFAULT false NOT NULL,
    properties text,
    template boolean DEFAULT false,
    push_events boolean DEFAULT true,
    issues_events boolean DEFAULT true,
    merge_requests_events boolean DEFAULT true,
    tag_push_events boolean DEFAULT true,
    note_events boolean DEFAULT true NOT NULL,
    category character varying DEFAULT 'common'::character varying NOT NULL,
    "default" boolean DEFAULT false,
    wiki_page_events boolean DEFAULT true,
    pipeline_events boolean DEFAULT false NOT NULL,
    confidential_issues_events boolean DEFAULT true NOT NULL,
    commit_events boolean DEFAULT true NOT NULL,
    job_events boolean DEFAULT false NOT NULL,
    confidential_note_events boolean DEFAULT true,
    deployment_events boolean DEFAULT false NOT NULL
);


--
-- Name: services_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.services_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: services_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.services_id_seq OWNED BY public.services.id;


--
-- Name: shards; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.shards (
    id integer NOT NULL,
    name character varying NOT NULL
);


--
-- Name: shards_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.shards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: shards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.shards_id_seq OWNED BY public.shards.id;


--
-- Name: snippets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.snippets (
    id integer NOT NULL,
    title character varying,
    content text,
    author_id integer NOT NULL,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
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
-- Name: snippets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.snippets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: snippets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.snippets_id_seq OWNED BY public.snippets.id;


--
-- Name: spam_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.spam_logs (
    id integer NOT NULL,
    user_id integer,
    source_ip character varying,
    user_agent character varying,
    via_api boolean,
    noteable_type character varying,
    title character varying,
    description text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    submitted_as_ham boolean DEFAULT false NOT NULL,
    recaptcha_verified boolean DEFAULT false NOT NULL
);


--
-- Name: spam_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.spam_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: spam_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.spam_logs_id_seq OWNED BY public.spam_logs.id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subscriptions (
    id integer NOT NULL,
    user_id integer,
    subscribable_id integer,
    subscribable_type character varying,
    subscribed boolean,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    project_id integer
);


--
-- Name: subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subscriptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subscriptions_id_seq OWNED BY public.subscriptions.id;


--
-- Name: suggestions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.suggestions (
    id bigint NOT NULL,
    note_id integer NOT NULL,
    relative_order smallint NOT NULL,
    applied boolean DEFAULT false NOT NULL,
    commit_id character varying,
    from_content text NOT NULL,
    to_content text NOT NULL,
    lines_above integer DEFAULT 0 NOT NULL,
    lines_below integer DEFAULT 0 NOT NULL,
    outdated boolean DEFAULT false NOT NULL
);


--
-- Name: suggestions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.suggestions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: suggestions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.suggestions_id_seq OWNED BY public.suggestions.id;


--
-- Name: system_note_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.system_note_metadata (
    id integer NOT NULL,
    note_id integer NOT NULL,
    commit_count integer,
    action character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: system_note_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.system_note_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: system_note_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.system_note_metadata_id_seq OWNED BY public.system_note_metadata.id;


--
-- Name: taggings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.taggings (
    id integer NOT NULL,
    tag_id integer,
    taggable_id integer,
    taggable_type character varying,
    tagger_id integer,
    tagger_type character varying,
    context character varying,
    created_at timestamp without time zone
);


--
-- Name: taggings_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.taggings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: taggings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.taggings_id_seq OWNED BY public.taggings.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying,
    taggings_count integer DEFAULT 0
);


--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: term_agreements; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.term_agreements (
    id integer NOT NULL,
    term_id integer NOT NULL,
    user_id integer NOT NULL,
    accepted boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


--
-- Name: term_agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.term_agreements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: term_agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.term_agreements_id_seq OWNED BY public.term_agreements.id;


--
-- Name: timelogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.timelogs (
    id integer NOT NULL,
    time_spent integer NOT NULL,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    issue_id integer,
    merge_request_id integer,
    spent_at timestamp with time zone
);


--
-- Name: timelogs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.timelogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: timelogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.timelogs_id_seq OWNED BY public.timelogs.id;


--
-- Name: todos; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.todos (
    id integer NOT NULL,
    user_id integer NOT NULL,
    project_id integer,
    target_id integer,
    target_type character varying NOT NULL,
    author_id integer NOT NULL,
    action integer NOT NULL,
    state character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    note_id integer,
    commit_id character varying,
    group_id integer
);


--
-- Name: todos_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.todos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: todos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.todos_id_seq OWNED BY public.todos.id;


--
-- Name: trending_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.trending_projects (
    id integer NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: trending_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.trending_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: trending_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.trending_projects_id_seq OWNED BY public.trending_projects.id;


--
-- Name: u2f_registrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.u2f_registrations (
    id integer NOT NULL,
    certificate text,
    key_handle character varying,
    public_key character varying,
    counter integer,
    user_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    name character varying
);


--
-- Name: u2f_registrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.u2f_registrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: u2f_registrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.u2f_registrations_id_seq OWNED BY public.u2f_registrations.id;


--
-- Name: uploads; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.uploads (
    id integer NOT NULL,
    size bigint NOT NULL,
    path character varying(511) NOT NULL,
    checksum character varying(64),
    model_id integer,
    model_type character varying,
    uploader character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    mount_point character varying,
    secret character varying,
    store integer
);


--
-- Name: uploads_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.uploads_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: uploads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.uploads_id_seq OWNED BY public.uploads.id;


--
-- Name: user_agent_details; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_agent_details (
    id integer NOT NULL,
    user_agent character varying NOT NULL,
    ip_address character varying NOT NULL,
    subject_id integer NOT NULL,
    subject_type character varying NOT NULL,
    submitted boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: user_agent_details_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_agent_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_agent_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_agent_details_id_seq OWNED BY public.user_agent_details.id;


--
-- Name: user_callouts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_callouts (
    id integer NOT NULL,
    feature_name integer NOT NULL,
    user_id integer NOT NULL
);


--
-- Name: user_callouts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_callouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_callouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_callouts_id_seq OWNED BY public.user_callouts.id;


--
-- Name: user_custom_attributes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_custom_attributes (
    id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    key character varying NOT NULL,
    value character varying NOT NULL
);


--
-- Name: user_custom_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_custom_attributes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_custom_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_custom_attributes_id_seq OWNED BY public.user_custom_attributes.id;


--
-- Name: user_interacted_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_interacted_projects (
    user_id integer NOT NULL,
    project_id integer NOT NULL
);


--
-- Name: user_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_preferences (
    id integer NOT NULL,
    user_id integer NOT NULL,
    issue_notes_filter smallint DEFAULT 0 NOT NULL,
    merge_request_notes_filter smallint DEFAULT 0 NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    first_day_of_week integer,
    issues_sort character varying,
    merge_requests_sort character varying,
    timezone character varying,
    time_display_relative boolean,
    time_format_in_24h boolean
);


--
-- Name: user_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_preferences_id_seq OWNED BY public.user_preferences.id;


--
-- Name: user_statuses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_statuses (
    user_id integer NOT NULL,
    cached_markdown_version integer,
    emoji character varying DEFAULT 'speech_balloon'::character varying NOT NULL,
    message character varying(100),
    message_html character varying
);


--
-- Name: user_statuses_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_statuses_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_statuses_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_statuses_user_id_seq OWNED BY public.user_statuses.user_id;


--
-- Name: user_synced_attributes_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.user_synced_attributes_metadata (
    id integer NOT NULL,
    name_synced boolean DEFAULT false,
    email_synced boolean DEFAULT false,
    location_synced boolean DEFAULT false,
    user_id integer NOT NULL,
    provider character varying
);


--
-- Name: user_synced_attributes_metadata_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_synced_attributes_metadata_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_synced_attributes_metadata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_synced_attributes_metadata_id_seq OWNED BY public.user_synced_attributes_metadata.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying,
    last_sign_in_ip character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    name character varying,
    admin boolean DEFAULT false NOT NULL,
    projects_limit integer NOT NULL,
    skype character varying DEFAULT ''::character varying NOT NULL,
    linkedin character varying DEFAULT ''::character varying NOT NULL,
    twitter character varying DEFAULT ''::character varying NOT NULL,
    bio character varying,
    failed_attempts integer DEFAULT 0,
    locked_at timestamp without time zone,
    username character varying,
    can_create_group boolean DEFAULT true NOT NULL,
    can_create_team boolean DEFAULT true NOT NULL,
    state character varying,
    color_scheme_id integer DEFAULT 1 NOT NULL,
    password_expires_at timestamp without time zone,
    created_by_id integer,
    last_credential_check_at timestamp without time zone,
    avatar character varying,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    hide_no_ssh_key boolean DEFAULT false,
    website_url character varying DEFAULT ''::character varying NOT NULL,
    notification_email character varying,
    hide_no_password boolean DEFAULT false,
    password_automatically_set boolean DEFAULT false,
    location character varying,
    encrypted_otp_secret character varying,
    encrypted_otp_secret_iv character varying,
    encrypted_otp_secret_salt character varying,
    otp_required_for_login boolean DEFAULT false NOT NULL,
    otp_backup_codes text,
    public_email character varying DEFAULT ''::character varying NOT NULL,
    dashboard integer DEFAULT 0,
    project_view integer DEFAULT 0,
    consumed_timestep integer,
    layout integer DEFAULT 0,
    hide_project_limit boolean DEFAULT false,
    unlock_token character varying,
    otp_grace_period_started_at timestamp without time zone,
    external boolean DEFAULT false,
    incoming_email_token character varying,
    organization character varying,
    require_two_factor_authentication_from_group boolean DEFAULT false NOT NULL,
    two_factor_grace_period integer DEFAULT 48 NOT NULL,
    ghost boolean,
    last_activity_on date,
    notified_of_own_activity boolean,
    preferred_language character varying,
    theme_id smallint,
    accepted_term_id integer,
    feed_token character varying,
    private_profile boolean,
    include_private_contributions boolean,
    commit_email character varying
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: users_star_projects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users_star_projects (
    id integer NOT NULL,
    project_id integer NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


--
-- Name: users_star_projects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_star_projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_star_projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_star_projects_id_seq OWNED BY public.users_star_projects.id;


--
-- Name: web_hook_logs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.web_hook_logs (
    id integer NOT NULL,
    web_hook_id integer NOT NULL,
    trigger character varying,
    url character varying,
    request_headers text,
    request_data text,
    response_headers text,
    response_body text,
    response_status character varying,
    execution_duration double precision,
    internal_error_message character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


--
-- Name: web_hook_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.web_hook_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: web_hook_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.web_hook_logs_id_seq OWNED BY public.web_hook_logs.id;


--
-- Name: web_hooks; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.web_hooks (
    id integer NOT NULL,
    project_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    type character varying DEFAULT 'ProjectHook'::character varying,
    service_id integer,
    push_events boolean DEFAULT true NOT NULL,
    issues_events boolean DEFAULT false NOT NULL,
    merge_requests_events boolean DEFAULT false NOT NULL,
    tag_push_events boolean DEFAULT false,
    note_events boolean DEFAULT false NOT NULL,
    enable_ssl_verification boolean DEFAULT true,
    wiki_page_events boolean DEFAULT false NOT NULL,
    pipeline_events boolean DEFAULT false NOT NULL,
    confidential_issues_events boolean DEFAULT false NOT NULL,
    repository_update_events boolean DEFAULT false NOT NULL,
    job_events boolean DEFAULT false NOT NULL,
    confidential_note_events boolean,
    push_events_branch_filter text,
    encrypted_token character varying,
    encrypted_token_iv character varying,
    encrypted_url character varying,
    encrypted_url_iv character varying
);


--
-- Name: web_hooks_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.web_hooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: web_hooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.web_hooks_id_seq OWNED BY public.web_hooks.id;


--
-- Name: abuse_reports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.abuse_reports ALTER COLUMN id SET DEFAULT nextval('public.abuse_reports_id_seq'::regclass);


--
-- Name: appearances id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appearances ALTER COLUMN id SET DEFAULT nextval('public.appearances_id_seq'::regclass);


--
-- Name: application_setting_terms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_setting_terms ALTER COLUMN id SET DEFAULT nextval('public.application_setting_terms_id_seq'::regclass);


--
-- Name: application_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_settings ALTER COLUMN id SET DEFAULT nextval('public.application_settings_id_seq'::regclass);


--
-- Name: audit_events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audit_events ALTER COLUMN id SET DEFAULT nextval('public.audit_events_id_seq'::regclass);


--
-- Name: award_emoji id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.award_emoji ALTER COLUMN id SET DEFAULT nextval('public.award_emoji_id_seq'::regclass);


--
-- Name: badges id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badges ALTER COLUMN id SET DEFAULT nextval('public.badges_id_seq'::regclass);


--
-- Name: board_group_recent_visits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_group_recent_visits ALTER COLUMN id SET DEFAULT nextval('public.board_group_recent_visits_id_seq'::regclass);


--
-- Name: board_project_recent_visits id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_project_recent_visits ALTER COLUMN id SET DEFAULT nextval('public.board_project_recent_visits_id_seq'::regclass);


--
-- Name: boards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.boards ALTER COLUMN id SET DEFAULT nextval('public.boards_id_seq'::regclass);


--
-- Name: broadcast_messages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcast_messages ALTER COLUMN id SET DEFAULT nextval('public.broadcast_messages_id_seq'::regclass);


--
-- Name: chat_names id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_names ALTER COLUMN id SET DEFAULT nextval('public.chat_names_id_seq'::regclass);


--
-- Name: chat_teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_teams ALTER COLUMN id SET DEFAULT nextval('public.chat_teams_id_seq'::regclass);


--
-- Name: ci_build_trace_chunks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_chunks ALTER COLUMN id SET DEFAULT nextval('public.ci_build_trace_chunks_id_seq'::regclass);


--
-- Name: ci_build_trace_section_names id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_section_names ALTER COLUMN id SET DEFAULT nextval('public.ci_build_trace_section_names_id_seq'::regclass);


--
-- Name: ci_build_trace_sections id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_sections ALTER COLUMN id SET DEFAULT nextval('public.ci_build_trace_sections_id_seq'::regclass);


--
-- Name: ci_builds id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds ALTER COLUMN id SET DEFAULT nextval('public.ci_builds_id_seq'::regclass);


--
-- Name: ci_builds_metadata id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_metadata ALTER COLUMN id SET DEFAULT nextval('public.ci_builds_metadata_id_seq'::regclass);


--
-- Name: ci_builds_runner_session id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_runner_session ALTER COLUMN id SET DEFAULT nextval('public.ci_builds_runner_session_id_seq'::regclass);


--
-- Name: ci_group_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_group_variables ALTER COLUMN id SET DEFAULT nextval('public.ci_group_variables_id_seq'::regclass);


--
-- Name: ci_job_artifacts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_job_artifacts ALTER COLUMN id SET DEFAULT nextval('public.ci_job_artifacts_id_seq'::regclass);


--
-- Name: ci_pipeline_chat_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_chat_data ALTER COLUMN id SET DEFAULT nextval('public.ci_pipeline_chat_data_id_seq'::regclass);


--
-- Name: ci_pipeline_schedule_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedule_variables ALTER COLUMN id SET DEFAULT nextval('public.ci_pipeline_schedule_variables_id_seq'::regclass);


--
-- Name: ci_pipeline_schedules id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedules ALTER COLUMN id SET DEFAULT nextval('public.ci_pipeline_schedules_id_seq'::regclass);


--
-- Name: ci_pipeline_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_variables ALTER COLUMN id SET DEFAULT nextval('public.ci_pipeline_variables_id_seq'::regclass);


--
-- Name: ci_pipelines id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipelines ALTER COLUMN id SET DEFAULT nextval('public.ci_pipelines_id_seq'::regclass);


--
-- Name: ci_runner_namespaces id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_namespaces ALTER COLUMN id SET DEFAULT nextval('public.ci_runner_namespaces_id_seq'::regclass);


--
-- Name: ci_runner_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_projects ALTER COLUMN id SET DEFAULT nextval('public.ci_runner_projects_id_seq'::regclass);


--
-- Name: ci_runners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runners ALTER COLUMN id SET DEFAULT nextval('public.ci_runners_id_seq'::regclass);


--
-- Name: ci_stages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_stages ALTER COLUMN id SET DEFAULT nextval('public.ci_stages_id_seq'::regclass);


--
-- Name: ci_trigger_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_trigger_requests ALTER COLUMN id SET DEFAULT nextval('public.ci_trigger_requests_id_seq'::regclass);


--
-- Name: ci_triggers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_triggers ALTER COLUMN id SET DEFAULT nextval('public.ci_triggers_id_seq'::regclass);


--
-- Name: ci_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_variables ALTER COLUMN id SET DEFAULT nextval('public.ci_variables_id_seq'::regclass);


--
-- Name: cluster_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_groups ALTER COLUMN id SET DEFAULT nextval('public.cluster_groups_id_seq'::regclass);


--
-- Name: cluster_platforms_kubernetes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_platforms_kubernetes ALTER COLUMN id SET DEFAULT nextval('public.cluster_platforms_kubernetes_id_seq'::regclass);


--
-- Name: cluster_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_projects ALTER COLUMN id SET DEFAULT nextval('public.cluster_projects_id_seq'::regclass);


--
-- Name: cluster_providers_gcp id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_providers_gcp ALTER COLUMN id SET DEFAULT nextval('public.cluster_providers_gcp_id_seq'::regclass);


--
-- Name: clusters id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters ALTER COLUMN id SET DEFAULT nextval('public.clusters_id_seq'::regclass);


--
-- Name: clusters_applications_cert_managers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_cert_managers ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_cert_managers_id_seq'::regclass);


--
-- Name: clusters_applications_helm id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_helm ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_helm_id_seq'::regclass);


--
-- Name: clusters_applications_ingress id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_ingress ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_ingress_id_seq'::regclass);


--
-- Name: clusters_applications_jupyter id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_jupyter ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_jupyter_id_seq'::regclass);


--
-- Name: clusters_applications_knative id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_knative ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_knative_id_seq'::regclass);


--
-- Name: clusters_applications_prometheus id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_prometheus ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_prometheus_id_seq'::regclass);


--
-- Name: clusters_applications_runners id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_runners ALTER COLUMN id SET DEFAULT nextval('public.clusters_applications_runners_id_seq'::regclass);


--
-- Name: clusters_kubernetes_namespaces id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_kubernetes_namespaces ALTER COLUMN id SET DEFAULT nextval('public.clusters_kubernetes_namespaces_id_seq'::regclass);


--
-- Name: container_repositories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.container_repositories ALTER COLUMN id SET DEFAULT nextval('public.container_repositories_id_seq'::regclass);


--
-- Name: conversational_development_index_metrics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conversational_development_index_metrics ALTER COLUMN id SET DEFAULT nextval('public.conversational_development_index_metrics_id_seq'::regclass);


--
-- Name: deploy_keys_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deploy_keys_projects ALTER COLUMN id SET DEFAULT nextval('public.deploy_keys_projects_id_seq'::regclass);


--
-- Name: deploy_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deploy_tokens ALTER COLUMN id SET DEFAULT nextval('public.deploy_tokens_id_seq'::regclass);


--
-- Name: deployments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deployments ALTER COLUMN id SET DEFAULT nextval('public.deployments_id_seq'::regclass);


--
-- Name: emails id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails ALTER COLUMN id SET DEFAULT nextval('public.emails_id_seq'::regclass);


--
-- Name: environments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.environments ALTER COLUMN id SET DEFAULT nextval('public.environments_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: feature_gates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feature_gates ALTER COLUMN id SET DEFAULT nextval('public.feature_gates_id_seq'::regclass);


--
-- Name: features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.features ALTER COLUMN id SET DEFAULT nextval('public.features_id_seq'::regclass);


--
-- Name: fork_network_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_network_members ALTER COLUMN id SET DEFAULT nextval('public.fork_network_members_id_seq'::regclass);


--
-- Name: fork_networks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_networks ALTER COLUMN id SET DEFAULT nextval('public.fork_networks_id_seq'::regclass);


--
-- Name: forked_project_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forked_project_links ALTER COLUMN id SET DEFAULT nextval('public.forked_project_links_id_seq'::regclass);


--
-- Name: gpg_key_subkeys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_key_subkeys ALTER COLUMN id SET DEFAULT nextval('public.gpg_key_subkeys_id_seq'::regclass);


--
-- Name: gpg_keys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_keys ALTER COLUMN id SET DEFAULT nextval('public.gpg_keys_id_seq'::regclass);


--
-- Name: gpg_signatures id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_signatures ALTER COLUMN id SET DEFAULT nextval('public.gpg_signatures_id_seq'::regclass);


--
-- Name: group_custom_attributes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.group_custom_attributes ALTER COLUMN id SET DEFAULT nextval('public.group_custom_attributes_id_seq'::regclass);


--
-- Name: identities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.identities ALTER COLUMN id SET DEFAULT nextval('public.identities_id_seq'::regclass);


--
-- Name: import_export_uploads id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.import_export_uploads ALTER COLUMN id SET DEFAULT nextval('public.import_export_uploads_id_seq'::regclass);


--
-- Name: internal_ids id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internal_ids ALTER COLUMN id SET DEFAULT nextval('public.internal_ids_id_seq'::regclass);


--
-- Name: issue_metrics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_metrics ALTER COLUMN id SET DEFAULT nextval('public.issue_metrics_id_seq'::regclass);


--
-- Name: issues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues ALTER COLUMN id SET DEFAULT nextval('public.issues_id_seq'::regclass);


--
-- Name: keys id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.keys ALTER COLUMN id SET DEFAULT nextval('public.keys_id_seq'::regclass);


--
-- Name: label_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_links ALTER COLUMN id SET DEFAULT nextval('public.label_links_id_seq'::regclass);


--
-- Name: label_priorities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_priorities ALTER COLUMN id SET DEFAULT nextval('public.label_priorities_id_seq'::regclass);


--
-- Name: labels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.labels ALTER COLUMN id SET DEFAULT nextval('public.labels_id_seq'::regclass);


--
-- Name: lfs_file_locks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_file_locks ALTER COLUMN id SET DEFAULT nextval('public.lfs_file_locks_id_seq'::regclass);


--
-- Name: lfs_objects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_objects ALTER COLUMN id SET DEFAULT nextval('public.lfs_objects_id_seq'::regclass);


--
-- Name: lfs_objects_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_objects_projects ALTER COLUMN id SET DEFAULT nextval('public.lfs_objects_projects_id_seq'::regclass);


--
-- Name: lists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lists ALTER COLUMN id SET DEFAULT nextval('public.lists_id_seq'::regclass);


--
-- Name: members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);


--
-- Name: merge_request_assignees id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_assignees ALTER COLUMN id SET DEFAULT nextval('public.merge_request_assignees_id_seq'::regclass);


--
-- Name: merge_request_blocks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_blocks ALTER COLUMN id SET DEFAULT nextval('public.merge_request_blocks_id_seq'::regclass);


--
-- Name: merge_request_diffs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_diffs ALTER COLUMN id SET DEFAULT nextval('public.merge_request_diffs_id_seq'::regclass);


--
-- Name: merge_request_metrics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_metrics ALTER COLUMN id SET DEFAULT nextval('public.merge_request_metrics_id_seq'::regclass);


--
-- Name: merge_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests ALTER COLUMN id SET DEFAULT nextval('public.merge_requests_id_seq'::regclass);


--
-- Name: merge_requests_closing_issues id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests_closing_issues ALTER COLUMN id SET DEFAULT nextval('public.merge_requests_closing_issues_id_seq'::regclass);


--
-- Name: merge_trains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_trains ALTER COLUMN id SET DEFAULT nextval('public.merge_trains_id_seq'::regclass);


--
-- Name: milestones id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.milestones ALTER COLUMN id SET DEFAULT nextval('public.milestones_id_seq'::regclass);


--
-- Name: namespaces id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.namespaces ALTER COLUMN id SET DEFAULT nextval('public.namespaces_id_seq'::regclass);


--
-- Name: note_diff_files id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.note_diff_files ALTER COLUMN id SET DEFAULT nextval('public.note_diff_files_id_seq'::regclass);


--
-- Name: notes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notes ALTER COLUMN id SET DEFAULT nextval('public.notes_id_seq'::regclass);


--
-- Name: notification_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_settings ALTER COLUMN id SET DEFAULT nextval('public.notification_settings_id_seq'::regclass);


--
-- Name: oauth_access_grants id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_access_grants ALTER COLUMN id SET DEFAULT nextval('public.oauth_access_grants_id_seq'::regclass);


--
-- Name: oauth_access_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.oauth_access_tokens_id_seq'::regclass);


--
-- Name: oauth_applications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_applications ALTER COLUMN id SET DEFAULT nextval('public.oauth_applications_id_seq'::regclass);


--
-- Name: oauth_openid_requests id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_openid_requests ALTER COLUMN id SET DEFAULT nextval('public.oauth_openid_requests_id_seq'::regclass);


--
-- Name: pages_domain_acme_orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_domain_acme_orders ALTER COLUMN id SET DEFAULT nextval('public.pages_domain_acme_orders_id_seq'::regclass);


--
-- Name: pages_domains id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_domains ALTER COLUMN id SET DEFAULT nextval('public.pages_domains_id_seq'::regclass);


--
-- Name: personal_access_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);


--
-- Name: pool_repositories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pool_repositories ALTER COLUMN id SET DEFAULT nextval('public.pool_repositories_id_seq'::regclass);


--
-- Name: programming_languages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.programming_languages ALTER COLUMN id SET DEFAULT nextval('public.programming_languages_id_seq'::regclass);


--
-- Name: project_auto_devops id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_auto_devops ALTER COLUMN id SET DEFAULT nextval('public.project_auto_devops_id_seq'::regclass);


--
-- Name: project_ci_cd_settings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_ci_cd_settings ALTER COLUMN id SET DEFAULT nextval('public.project_ci_cd_settings_id_seq'::regclass);


--
-- Name: project_custom_attributes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_custom_attributes ALTER COLUMN id SET DEFAULT nextval('public.project_custom_attributes_id_seq'::regclass);


--
-- Name: project_daily_statistics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_daily_statistics ALTER COLUMN id SET DEFAULT nextval('public.project_daily_statistics_id_seq'::regclass);


--
-- Name: project_deploy_tokens id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_deploy_tokens ALTER COLUMN id SET DEFAULT nextval('public.project_deploy_tokens_id_seq'::regclass);


--
-- Name: project_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_features ALTER COLUMN id SET DEFAULT nextval('public.project_features_id_seq'::regclass);


--
-- Name: project_group_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_group_links ALTER COLUMN id SET DEFAULT nextval('public.project_group_links_id_seq'::regclass);


--
-- Name: project_import_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_import_data ALTER COLUMN id SET DEFAULT nextval('public.project_import_data_id_seq'::regclass);


--
-- Name: project_mirror_data id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_mirror_data ALTER COLUMN id SET DEFAULT nextval('public.project_mirror_data_id_seq'::regclass);


--
-- Name: project_repositories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_repositories ALTER COLUMN id SET DEFAULT nextval('public.project_repositories_id_seq'::regclass);


--
-- Name: project_statistics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_statistics ALTER COLUMN id SET DEFAULT nextval('public.project_statistics_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: prometheus_metrics id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prometheus_metrics ALTER COLUMN id SET DEFAULT nextval('public.prometheus_metrics_id_seq'::regclass);


--
-- Name: protected_branch_merge_access_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branch_merge_access_levels ALTER COLUMN id SET DEFAULT nextval('public.protected_branch_merge_access_levels_id_seq'::regclass);


--
-- Name: protected_branch_push_access_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branch_push_access_levels ALTER COLUMN id SET DEFAULT nextval('public.protected_branch_push_access_levels_id_seq'::regclass);


--
-- Name: protected_branches id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branches ALTER COLUMN id SET DEFAULT nextval('public.protected_branches_id_seq'::regclass);


--
-- Name: protected_tag_create_access_levels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tag_create_access_levels ALTER COLUMN id SET DEFAULT nextval('public.protected_tag_create_access_levels_id_seq'::regclass);


--
-- Name: protected_tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tags ALTER COLUMN id SET DEFAULT nextval('public.protected_tags_id_seq'::regclass);


--
-- Name: redirect_routes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirect_routes ALTER COLUMN id SET DEFAULT nextval('public.redirect_routes_id_seq'::regclass);


--
-- Name: release_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.release_links ALTER COLUMN id SET DEFAULT nextval('public.release_links_id_seq'::regclass);


--
-- Name: releases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.releases ALTER COLUMN id SET DEFAULT nextval('public.releases_id_seq'::regclass);


--
-- Name: remote_mirrors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.remote_mirrors ALTER COLUMN id SET DEFAULT nextval('public.remote_mirrors_id_seq'::regclass);


--
-- Name: resource_label_events id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resource_label_events ALTER COLUMN id SET DEFAULT nextval('public.resource_label_events_id_seq'::regclass);


--
-- Name: routes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.routes ALTER COLUMN id SET DEFAULT nextval('public.routes_id_seq'::regclass);


--
-- Name: sent_notifications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sent_notifications ALTER COLUMN id SET DEFAULT nextval('public.sent_notifications_id_seq'::regclass);


--
-- Name: services id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services ALTER COLUMN id SET DEFAULT nextval('public.services_id_seq'::regclass);


--
-- Name: shards id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shards ALTER COLUMN id SET DEFAULT nextval('public.shards_id_seq'::regclass);


--
-- Name: snippets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snippets ALTER COLUMN id SET DEFAULT nextval('public.snippets_id_seq'::regclass);


--
-- Name: spam_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.spam_logs ALTER COLUMN id SET DEFAULT nextval('public.spam_logs_id_seq'::regclass);


--
-- Name: subscriptions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN id SET DEFAULT nextval('public.subscriptions_id_seq'::regclass);


--
-- Name: suggestions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions ALTER COLUMN id SET DEFAULT nextval('public.suggestions_id_seq'::regclass);


--
-- Name: system_note_metadata id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_note_metadata ALTER COLUMN id SET DEFAULT nextval('public.system_note_metadata_id_seq'::regclass);


--
-- Name: taggings id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggings ALTER COLUMN id SET DEFAULT nextval('public.taggings_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: term_agreements id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.term_agreements ALTER COLUMN id SET DEFAULT nextval('public.term_agreements_id_seq'::regclass);


--
-- Name: timelogs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timelogs ALTER COLUMN id SET DEFAULT nextval('public.timelogs_id_seq'::regclass);


--
-- Name: todos id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos ALTER COLUMN id SET DEFAULT nextval('public.todos_id_seq'::regclass);


--
-- Name: trending_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trending_projects ALTER COLUMN id SET DEFAULT nextval('public.trending_projects_id_seq'::regclass);


--
-- Name: u2f_registrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.u2f_registrations ALTER COLUMN id SET DEFAULT nextval('public.u2f_registrations_id_seq'::regclass);


--
-- Name: uploads id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uploads ALTER COLUMN id SET DEFAULT nextval('public.uploads_id_seq'::regclass);


--
-- Name: user_agent_details id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_agent_details ALTER COLUMN id SET DEFAULT nextval('public.user_agent_details_id_seq'::regclass);


--
-- Name: user_callouts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_callouts ALTER COLUMN id SET DEFAULT nextval('public.user_callouts_id_seq'::regclass);


--
-- Name: user_custom_attributes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_custom_attributes ALTER COLUMN id SET DEFAULT nextval('public.user_custom_attributes_id_seq'::regclass);


--
-- Name: user_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_preferences ALTER COLUMN id SET DEFAULT nextval('public.user_preferences_id_seq'::regclass);


--
-- Name: user_statuses user_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_statuses ALTER COLUMN user_id SET DEFAULT nextval('public.user_statuses_user_id_seq'::regclass);


--
-- Name: user_synced_attributes_metadata id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_synced_attributes_metadata ALTER COLUMN id SET DEFAULT nextval('public.user_synced_attributes_metadata_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: users_star_projects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_star_projects ALTER COLUMN id SET DEFAULT nextval('public.users_star_projects_id_seq'::regclass);


--
-- Name: web_hook_logs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.web_hook_logs ALTER COLUMN id SET DEFAULT nextval('public.web_hook_logs_id_seq'::regclass);


--
-- Name: web_hooks id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.web_hooks ALTER COLUMN id SET DEFAULT nextval('public.web_hooks_id_seq'::regclass);


--
-- Name: abuse_reports abuse_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.abuse_reports
    ADD CONSTRAINT abuse_reports_pkey PRIMARY KEY (id);


--
-- Name: appearances appearances_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.appearances
    ADD CONSTRAINT appearances_pkey PRIMARY KEY (id);


--
-- Name: application_setting_terms application_setting_terms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_setting_terms
    ADD CONSTRAINT application_setting_terms_pkey PRIMARY KEY (id);


--
-- Name: application_settings application_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_settings
    ADD CONSTRAINT application_settings_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: audit_events audit_events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.audit_events
    ADD CONSTRAINT audit_events_pkey PRIMARY KEY (id);


--
-- Name: award_emoji award_emoji_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.award_emoji
    ADD CONSTRAINT award_emoji_pkey PRIMARY KEY (id);


--
-- Name: badges badges_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT badges_pkey PRIMARY KEY (id);


--
-- Name: board_group_recent_visits board_group_recent_visits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_group_recent_visits
    ADD CONSTRAINT board_group_recent_visits_pkey PRIMARY KEY (id);


--
-- Name: board_project_recent_visits board_project_recent_visits_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_project_recent_visits
    ADD CONSTRAINT board_project_recent_visits_pkey PRIMARY KEY (id);


--
-- Name: boards boards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT boards_pkey PRIMARY KEY (id);


--
-- Name: broadcast_messages broadcast_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.broadcast_messages
    ADD CONSTRAINT broadcast_messages_pkey PRIMARY KEY (id);


--
-- Name: chat_names chat_names_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_names
    ADD CONSTRAINT chat_names_pkey PRIMARY KEY (id);


--
-- Name: chat_teams chat_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_teams
    ADD CONSTRAINT chat_teams_pkey PRIMARY KEY (id);


--
-- Name: ci_build_trace_chunks ci_build_trace_chunks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_chunks
    ADD CONSTRAINT ci_build_trace_chunks_pkey PRIMARY KEY (id);


--
-- Name: ci_build_trace_section_names ci_build_trace_section_names_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_section_names
    ADD CONSTRAINT ci_build_trace_section_names_pkey PRIMARY KEY (id);


--
-- Name: ci_build_trace_sections ci_build_trace_sections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_sections
    ADD CONSTRAINT ci_build_trace_sections_pkey PRIMARY KEY (id);


--
-- Name: ci_builds_metadata ci_builds_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_metadata
    ADD CONSTRAINT ci_builds_metadata_pkey PRIMARY KEY (id);


--
-- Name: ci_builds ci_builds_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds
    ADD CONSTRAINT ci_builds_pkey PRIMARY KEY (id);


--
-- Name: ci_builds_runner_session ci_builds_runner_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_runner_session
    ADD CONSTRAINT ci_builds_runner_session_pkey PRIMARY KEY (id);


--
-- Name: ci_group_variables ci_group_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_group_variables
    ADD CONSTRAINT ci_group_variables_pkey PRIMARY KEY (id);


--
-- Name: ci_job_artifacts ci_job_artifacts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_job_artifacts
    ADD CONSTRAINT ci_job_artifacts_pkey PRIMARY KEY (id);


--
-- Name: ci_pipeline_chat_data ci_pipeline_chat_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_chat_data
    ADD CONSTRAINT ci_pipeline_chat_data_pkey PRIMARY KEY (id);


--
-- Name: ci_pipeline_schedule_variables ci_pipeline_schedule_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedule_variables
    ADD CONSTRAINT ci_pipeline_schedule_variables_pkey PRIMARY KEY (id);


--
-- Name: ci_pipeline_schedules ci_pipeline_schedules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedules
    ADD CONSTRAINT ci_pipeline_schedules_pkey PRIMARY KEY (id);


--
-- Name: ci_pipeline_variables ci_pipeline_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_variables
    ADD CONSTRAINT ci_pipeline_variables_pkey PRIMARY KEY (id);


--
-- Name: ci_pipelines ci_pipelines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipelines
    ADD CONSTRAINT ci_pipelines_pkey PRIMARY KEY (id);


--
-- Name: ci_runner_namespaces ci_runner_namespaces_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_namespaces
    ADD CONSTRAINT ci_runner_namespaces_pkey PRIMARY KEY (id);


--
-- Name: ci_runner_projects ci_runner_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_projects
    ADD CONSTRAINT ci_runner_projects_pkey PRIMARY KEY (id);


--
-- Name: ci_runners ci_runners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runners
    ADD CONSTRAINT ci_runners_pkey PRIMARY KEY (id);


--
-- Name: ci_stages ci_stages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_stages
    ADD CONSTRAINT ci_stages_pkey PRIMARY KEY (id);


--
-- Name: ci_trigger_requests ci_trigger_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_trigger_requests
    ADD CONSTRAINT ci_trigger_requests_pkey PRIMARY KEY (id);


--
-- Name: ci_triggers ci_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_triggers
    ADD CONSTRAINT ci_triggers_pkey PRIMARY KEY (id);


--
-- Name: ci_variables ci_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_variables
    ADD CONSTRAINT ci_variables_pkey PRIMARY KEY (id);


--
-- Name: cluster_groups cluster_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_groups
    ADD CONSTRAINT cluster_groups_pkey PRIMARY KEY (id);


--
-- Name: cluster_platforms_kubernetes cluster_platforms_kubernetes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_platforms_kubernetes
    ADD CONSTRAINT cluster_platforms_kubernetes_pkey PRIMARY KEY (id);


--
-- Name: cluster_projects cluster_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_projects
    ADD CONSTRAINT cluster_projects_pkey PRIMARY KEY (id);


--
-- Name: cluster_providers_gcp cluster_providers_gcp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_providers_gcp
    ADD CONSTRAINT cluster_providers_gcp_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_cert_managers clusters_applications_cert_managers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_cert_managers
    ADD CONSTRAINT clusters_applications_cert_managers_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_helm clusters_applications_helm_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_helm
    ADD CONSTRAINT clusters_applications_helm_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_ingress clusters_applications_ingress_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_ingress
    ADD CONSTRAINT clusters_applications_ingress_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_jupyter clusters_applications_jupyter_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_jupyter
    ADD CONSTRAINT clusters_applications_jupyter_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_knative clusters_applications_knative_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_knative
    ADD CONSTRAINT clusters_applications_knative_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_prometheus clusters_applications_prometheus_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_prometheus
    ADD CONSTRAINT clusters_applications_prometheus_pkey PRIMARY KEY (id);


--
-- Name: clusters_applications_runners clusters_applications_runners_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_runners
    ADD CONSTRAINT clusters_applications_runners_pkey PRIMARY KEY (id);


--
-- Name: clusters_kubernetes_namespaces clusters_kubernetes_namespaces_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_kubernetes_namespaces
    ADD CONSTRAINT clusters_kubernetes_namespaces_pkey PRIMARY KEY (id);


--
-- Name: clusters clusters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT clusters_pkey PRIMARY KEY (id);


--
-- Name: container_repositories container_repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.container_repositories
    ADD CONSTRAINT container_repositories_pkey PRIMARY KEY (id);


--
-- Name: conversational_development_index_metrics conversational_development_index_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.conversational_development_index_metrics
    ADD CONSTRAINT conversational_development_index_metrics_pkey PRIMARY KEY (id);


--
-- Name: deploy_keys_projects deploy_keys_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deploy_keys_projects
    ADD CONSTRAINT deploy_keys_projects_pkey PRIMARY KEY (id);


--
-- Name: deploy_tokens deploy_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deploy_tokens
    ADD CONSTRAINT deploy_tokens_pkey PRIMARY KEY (id);


--
-- Name: deployments deployments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deployments
    ADD CONSTRAINT deployments_pkey PRIMARY KEY (id);


--
-- Name: emails emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emails
    ADD CONSTRAINT emails_pkey PRIMARY KEY (id);


--
-- Name: environments environments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.environments
    ADD CONSTRAINT environments_pkey PRIMARY KEY (id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: feature_gates feature_gates_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.feature_gates
    ADD CONSTRAINT feature_gates_pkey PRIMARY KEY (id);


--
-- Name: features features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.features
    ADD CONSTRAINT features_pkey PRIMARY KEY (id);


--
-- Name: fork_network_members fork_network_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_network_members
    ADD CONSTRAINT fork_network_members_pkey PRIMARY KEY (id);


--
-- Name: fork_networks fork_networks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_networks
    ADD CONSTRAINT fork_networks_pkey PRIMARY KEY (id);


--
-- Name: forked_project_links forked_project_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forked_project_links
    ADD CONSTRAINT forked_project_links_pkey PRIMARY KEY (id);


--
-- Name: gpg_key_subkeys gpg_key_subkeys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_key_subkeys
    ADD CONSTRAINT gpg_key_subkeys_pkey PRIMARY KEY (id);


--
-- Name: gpg_keys gpg_keys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_keys
    ADD CONSTRAINT gpg_keys_pkey PRIMARY KEY (id);


--
-- Name: gpg_signatures gpg_signatures_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_signatures
    ADD CONSTRAINT gpg_signatures_pkey PRIMARY KEY (id);


--
-- Name: group_custom_attributes group_custom_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.group_custom_attributes
    ADD CONSTRAINT group_custom_attributes_pkey PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- Name: import_export_uploads import_export_uploads_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.import_export_uploads
    ADD CONSTRAINT import_export_uploads_pkey PRIMARY KEY (id);


--
-- Name: internal_ids internal_ids_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internal_ids
    ADD CONSTRAINT internal_ids_pkey PRIMARY KEY (id);


--
-- Name: issue_metrics issue_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_metrics
    ADD CONSTRAINT issue_metrics_pkey PRIMARY KEY (id);


--
-- Name: issues issues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT issues_pkey PRIMARY KEY (id);


--
-- Name: keys keys_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.keys
    ADD CONSTRAINT keys_pkey PRIMARY KEY (id);


--
-- Name: label_links label_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_links
    ADD CONSTRAINT label_links_pkey PRIMARY KEY (id);


--
-- Name: label_priorities label_priorities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_priorities
    ADD CONSTRAINT label_priorities_pkey PRIMARY KEY (id);


--
-- Name: labels labels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT labels_pkey PRIMARY KEY (id);


--
-- Name: lfs_file_locks lfs_file_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_file_locks
    ADD CONSTRAINT lfs_file_locks_pkey PRIMARY KEY (id);


--
-- Name: lfs_objects lfs_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_objects
    ADD CONSTRAINT lfs_objects_pkey PRIMARY KEY (id);


--
-- Name: lfs_objects_projects lfs_objects_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_objects_projects
    ADD CONSTRAINT lfs_objects_projects_pkey PRIMARY KEY (id);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);


--
-- Name: merge_request_assignees merge_request_assignees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_assignees
    ADD CONSTRAINT merge_request_assignees_pkey PRIMARY KEY (id);


--
-- Name: merge_request_blocks merge_request_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_blocks
    ADD CONSTRAINT merge_request_blocks_pkey PRIMARY KEY (id);


--
-- Name: merge_request_diffs merge_request_diffs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_diffs
    ADD CONSTRAINT merge_request_diffs_pkey PRIMARY KEY (id);


--
-- Name: merge_request_metrics merge_request_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_metrics
    ADD CONSTRAINT merge_request_metrics_pkey PRIMARY KEY (id);


--
-- Name: merge_requests_closing_issues merge_requests_closing_issues_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests_closing_issues
    ADD CONSTRAINT merge_requests_closing_issues_pkey PRIMARY KEY (id);


--
-- Name: merge_requests merge_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT merge_requests_pkey PRIMARY KEY (id);


--
-- Name: merge_trains merge_trains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_trains
    ADD CONSTRAINT merge_trains_pkey PRIMARY KEY (id);


--
-- Name: milestones milestones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.milestones
    ADD CONSTRAINT milestones_pkey PRIMARY KEY (id);


--
-- Name: namespaces namespaces_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.namespaces
    ADD CONSTRAINT namespaces_pkey PRIMARY KEY (id);


--
-- Name: note_diff_files note_diff_files_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.note_diff_files
    ADD CONSTRAINT note_diff_files_pkey PRIMARY KEY (id);


--
-- Name: notes notes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);


--
-- Name: notification_settings notification_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT notification_settings_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_grants oauth_access_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: oauth_applications oauth_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey PRIMARY KEY (id);


--
-- Name: oauth_openid_requests oauth_openid_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_openid_requests
    ADD CONSTRAINT oauth_openid_requests_pkey PRIMARY KEY (id);


--
-- Name: pages_domain_acme_orders pages_domain_acme_orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_domain_acme_orders
    ADD CONSTRAINT pages_domain_acme_orders_pkey PRIMARY KEY (id);


--
-- Name: pages_domains pages_domains_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_domains
    ADD CONSTRAINT pages_domains_pkey PRIMARY KEY (id);


--
-- Name: personal_access_tokens personal_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: pool_repositories pool_repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pool_repositories
    ADD CONSTRAINT pool_repositories_pkey PRIMARY KEY (id);


--
-- Name: programming_languages programming_languages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.programming_languages
    ADD CONSTRAINT programming_languages_pkey PRIMARY KEY (id);


--
-- Name: project_auto_devops project_auto_devops_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_auto_devops
    ADD CONSTRAINT project_auto_devops_pkey PRIMARY KEY (id);


--
-- Name: project_ci_cd_settings project_ci_cd_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_ci_cd_settings
    ADD CONSTRAINT project_ci_cd_settings_pkey PRIMARY KEY (id);


--
-- Name: project_custom_attributes project_custom_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_custom_attributes
    ADD CONSTRAINT project_custom_attributes_pkey PRIMARY KEY (id);


--
-- Name: project_daily_statistics project_daily_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_daily_statistics
    ADD CONSTRAINT project_daily_statistics_pkey PRIMARY KEY (id);


--
-- Name: project_deploy_tokens project_deploy_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_deploy_tokens
    ADD CONSTRAINT project_deploy_tokens_pkey PRIMARY KEY (id);


--
-- Name: project_error_tracking_settings project_error_tracking_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_error_tracking_settings
    ADD CONSTRAINT project_error_tracking_settings_pkey PRIMARY KEY (project_id);


--
-- Name: project_features project_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_features
    ADD CONSTRAINT project_features_pkey PRIMARY KEY (id);


--
-- Name: project_group_links project_group_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_group_links
    ADD CONSTRAINT project_group_links_pkey PRIMARY KEY (id);


--
-- Name: project_import_data project_import_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_import_data
    ADD CONSTRAINT project_import_data_pkey PRIMARY KEY (id);


--
-- Name: project_metrics_settings project_metrics_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_metrics_settings
    ADD CONSTRAINT project_metrics_settings_pkey PRIMARY KEY (project_id);


--
-- Name: project_mirror_data project_mirror_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_mirror_data
    ADD CONSTRAINT project_mirror_data_pkey PRIMARY KEY (id);


--
-- Name: project_repositories project_repositories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_repositories
    ADD CONSTRAINT project_repositories_pkey PRIMARY KEY (id);


--
-- Name: project_statistics project_statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_statistics
    ADD CONSTRAINT project_statistics_pkey PRIMARY KEY (id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: prometheus_metrics prometheus_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prometheus_metrics
    ADD CONSTRAINT prometheus_metrics_pkey PRIMARY KEY (id);


--
-- Name: protected_branch_merge_access_levels protected_branch_merge_access_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branch_merge_access_levels
    ADD CONSTRAINT protected_branch_merge_access_levels_pkey PRIMARY KEY (id);


--
-- Name: protected_branch_push_access_levels protected_branch_push_access_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branch_push_access_levels
    ADD CONSTRAINT protected_branch_push_access_levels_pkey PRIMARY KEY (id);


--
-- Name: protected_branches protected_branches_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branches
    ADD CONSTRAINT protected_branches_pkey PRIMARY KEY (id);


--
-- Name: protected_tag_create_access_levels protected_tag_create_access_levels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tag_create_access_levels
    ADD CONSTRAINT protected_tag_create_access_levels_pkey PRIMARY KEY (id);


--
-- Name: protected_tags protected_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tags
    ADD CONSTRAINT protected_tags_pkey PRIMARY KEY (id);


--
-- Name: redirect_routes redirect_routes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.redirect_routes
    ADD CONSTRAINT redirect_routes_pkey PRIMARY KEY (id);


--
-- Name: release_links release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.release_links
    ADD CONSTRAINT release_links_pkey PRIMARY KEY (id);


--
-- Name: releases releases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.releases
    ADD CONSTRAINT releases_pkey PRIMARY KEY (id);


--
-- Name: remote_mirrors remote_mirrors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.remote_mirrors
    ADD CONSTRAINT remote_mirrors_pkey PRIMARY KEY (id);


--
-- Name: resource_label_events resource_label_events_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resource_label_events
    ADD CONSTRAINT resource_label_events_pkey PRIMARY KEY (id);


--
-- Name: routes routes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.routes
    ADD CONSTRAINT routes_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: sent_notifications sent_notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sent_notifications
    ADD CONSTRAINT sent_notifications_pkey PRIMARY KEY (id);


--
-- Name: services services_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT services_pkey PRIMARY KEY (id);


--
-- Name: shards shards_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.shards
    ADD CONSTRAINT shards_pkey PRIMARY KEY (id);


--
-- Name: snippets snippets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snippets
    ADD CONSTRAINT snippets_pkey PRIMARY KEY (id);


--
-- Name: spam_logs spam_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.spam_logs
    ADD CONSTRAINT spam_logs_pkey PRIMARY KEY (id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (id);


--
-- Name: suggestions suggestions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT suggestions_pkey PRIMARY KEY (id);


--
-- Name: system_note_metadata system_note_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_note_metadata
    ADD CONSTRAINT system_note_metadata_pkey PRIMARY KEY (id);


--
-- Name: taggings taggings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.taggings
    ADD CONSTRAINT taggings_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: term_agreements term_agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.term_agreements
    ADD CONSTRAINT term_agreements_pkey PRIMARY KEY (id);


--
-- Name: timelogs timelogs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timelogs
    ADD CONSTRAINT timelogs_pkey PRIMARY KEY (id);


--
-- Name: todos todos_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (id);


--
-- Name: trending_projects trending_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trending_projects
    ADD CONSTRAINT trending_projects_pkey PRIMARY KEY (id);


--
-- Name: u2f_registrations u2f_registrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.u2f_registrations
    ADD CONSTRAINT u2f_registrations_pkey PRIMARY KEY (id);


--
-- Name: uploads uploads_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uploads
    ADD CONSTRAINT uploads_pkey PRIMARY KEY (id);


--
-- Name: user_agent_details user_agent_details_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_agent_details
    ADD CONSTRAINT user_agent_details_pkey PRIMARY KEY (id);


--
-- Name: user_callouts user_callouts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_callouts
    ADD CONSTRAINT user_callouts_pkey PRIMARY KEY (id);


--
-- Name: user_custom_attributes user_custom_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_custom_attributes
    ADD CONSTRAINT user_custom_attributes_pkey PRIMARY KEY (id);


--
-- Name: user_preferences user_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT user_preferences_pkey PRIMARY KEY (id);


--
-- Name: user_statuses user_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_statuses
    ADD CONSTRAINT user_statuses_pkey PRIMARY KEY (user_id);


--
-- Name: user_synced_attributes_metadata user_synced_attributes_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_synced_attributes_metadata
    ADD CONSTRAINT user_synced_attributes_metadata_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users_star_projects users_star_projects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_star_projects
    ADD CONSTRAINT users_star_projects_pkey PRIMARY KEY (id);


--
-- Name: web_hook_logs web_hook_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.web_hook_logs
    ADD CONSTRAINT web_hook_logs_pkey PRIMARY KEY (id);


--
-- Name: web_hooks web_hooks_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.web_hooks
    ADD CONSTRAINT web_hooks_pkey PRIMARY KEY (id);


--
-- Name: idx_issues_on_project_id_and_due_date_and_id_and_state_partial; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_issues_on_project_id_and_due_date_and_id_and_state_partial ON public.issues USING btree (project_id, due_date, id, state) WHERE (due_date IS NOT NULL);


--
-- Name: idx_project_repository_check_partial; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX idx_project_repository_check_partial ON public.projects USING btree (repository_storage, created_at) WHERE (last_repository_check_at IS NULL);


--
-- Name: index_application_settings_on_usage_stats_set_by_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_application_settings_on_usage_stats_set_by_user_id ON public.application_settings USING btree (usage_stats_set_by_user_id);


--
-- Name: index_audit_events_on_entity_id_and_entity_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_audit_events_on_entity_id_and_entity_type ON public.audit_events USING btree (entity_id, entity_type);


--
-- Name: index_award_emoji_on_awardable_type_and_awardable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_award_emoji_on_awardable_type_and_awardable_id ON public.award_emoji USING btree (awardable_type, awardable_id);


--
-- Name: index_award_emoji_on_user_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_award_emoji_on_user_id_and_name ON public.award_emoji USING btree (user_id, name);


--
-- Name: index_badges_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badges_on_group_id ON public.badges USING btree (group_id);


--
-- Name: index_badges_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_badges_on_project_id ON public.badges USING btree (project_id);


--
-- Name: index_board_group_recent_visits_on_board_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_board_group_recent_visits_on_board_id ON public.board_group_recent_visits USING btree (board_id);


--
-- Name: index_board_group_recent_visits_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_board_group_recent_visits_on_group_id ON public.board_group_recent_visits USING btree (group_id);


--
-- Name: index_board_group_recent_visits_on_user_group_and_board; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_board_group_recent_visits_on_user_group_and_board ON public.board_group_recent_visits USING btree (user_id, group_id, board_id);


--
-- Name: index_board_group_recent_visits_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_board_group_recent_visits_on_user_id ON public.board_group_recent_visits USING btree (user_id);


--
-- Name: index_board_project_recent_visits_on_board_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_board_project_recent_visits_on_board_id ON public.board_project_recent_visits USING btree (board_id);


--
-- Name: index_board_project_recent_visits_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_board_project_recent_visits_on_project_id ON public.board_project_recent_visits USING btree (project_id);


--
-- Name: index_board_project_recent_visits_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_board_project_recent_visits_on_user_id ON public.board_project_recent_visits USING btree (user_id);


--
-- Name: index_board_project_recent_visits_on_user_project_and_board; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_board_project_recent_visits_on_user_project_and_board ON public.board_project_recent_visits USING btree (user_id, project_id, board_id);


--
-- Name: index_boards_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_boards_on_group_id ON public.boards USING btree (group_id);


--
-- Name: index_boards_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_boards_on_project_id ON public.boards USING btree (project_id);


--
-- Name: index_broadcast_messages_on_starts_at_and_ends_at_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_broadcast_messages_on_starts_at_and_ends_at_and_id ON public.broadcast_messages USING btree (starts_at, ends_at, id);


--
-- Name: index_chat_names_on_service_id_and_team_id_and_chat_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_chat_names_on_service_id_and_team_id_and_chat_id ON public.chat_names USING btree (service_id, team_id, chat_id);


--
-- Name: index_chat_names_on_user_id_and_service_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_chat_names_on_user_id_and_service_id ON public.chat_names USING btree (user_id, service_id);


--
-- Name: index_chat_teams_on_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_chat_teams_on_namespace_id ON public.chat_teams USING btree (namespace_id);


--
-- Name: index_ci_build_trace_chunks_on_build_id_and_chunk_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_build_trace_chunks_on_build_id_and_chunk_index ON public.ci_build_trace_chunks USING btree (build_id, chunk_index);


--
-- Name: index_ci_build_trace_section_names_on_project_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_build_trace_section_names_on_project_id_and_name ON public.ci_build_trace_section_names USING btree (project_id, name);


--
-- Name: index_ci_build_trace_sections_on_build_id_and_section_name_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_build_trace_sections_on_build_id_and_section_name_id ON public.ci_build_trace_sections USING btree (build_id, section_name_id);


--
-- Name: index_ci_build_trace_sections_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_build_trace_sections_on_project_id ON public.ci_build_trace_sections USING btree (project_id);


--
-- Name: index_ci_build_trace_sections_on_section_name_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_build_trace_sections_on_section_name_id ON public.ci_build_trace_sections USING btree (section_name_id);


--
-- Name: index_ci_builds_metadata_on_build_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_builds_metadata_on_build_id ON public.ci_builds_metadata USING btree (build_id);


--
-- Name: index_ci_builds_metadata_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_metadata_on_project_id ON public.ci_builds_metadata USING btree (project_id);


--
-- Name: index_ci_builds_on_artifacts_expire_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_artifacts_expire_at ON public.ci_builds USING btree (artifacts_expire_at) WHERE (artifacts_file <> ''::text);


--
-- Name: index_ci_builds_on_auto_canceled_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_auto_canceled_by_id ON public.ci_builds USING btree (auto_canceled_by_id);


--
-- Name: index_ci_builds_on_commit_id_and_artifacts_expireatandidpartial; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_commit_id_and_artifacts_expireatandidpartial ON public.ci_builds USING btree (commit_id, artifacts_expire_at, id) WHERE (((type)::text = 'Ci::Build'::text) AND ((retried = false) OR (retried IS NULL)) AND ((name)::text = ANY (ARRAY[('sast'::character varying)::text, ('dependency_scanning'::character varying)::text, ('sast:container'::character varying)::text, ('container_scanning'::character varying)::text, ('dast'::character varying)::text])));


--
-- Name: index_ci_builds_on_commit_id_and_stage_idx_and_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_commit_id_and_stage_idx_and_created_at ON public.ci_builds USING btree (commit_id, stage_idx, created_at);


--
-- Name: index_ci_builds_on_commit_id_and_status_and_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_commit_id_and_status_and_type ON public.ci_builds USING btree (commit_id, status, type);


--
-- Name: index_ci_builds_on_commit_id_and_type_and_name_and_ref; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_commit_id_and_type_and_name_and_ref ON public.ci_builds USING btree (commit_id, type, name, ref);


--
-- Name: index_ci_builds_on_commit_id_and_type_and_ref; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_commit_id_and_type_and_ref ON public.ci_builds USING btree (commit_id, type, ref);


--
-- Name: index_ci_builds_on_project_id_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_project_id_and_id ON public.ci_builds USING btree (project_id, id);


--
-- Name: index_ci_builds_on_protected; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_protected ON public.ci_builds USING btree (protected);


--
-- Name: index_ci_builds_on_queued_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_queued_at ON public.ci_builds USING btree (queued_at);


--
-- Name: index_ci_builds_on_runner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_runner_id ON public.ci_builds USING btree (runner_id);


--
-- Name: index_ci_builds_on_stage_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_stage_id ON public.ci_builds USING btree (stage_id);


--
-- Name: index_ci_builds_on_status_and_type_and_runner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_status_and_type_and_runner_id ON public.ci_builds USING btree (status, type, runner_id);


--
-- Name: index_ci_builds_on_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_builds_on_token ON public.ci_builds USING btree (token);


--
-- Name: index_ci_builds_on_token_encrypted; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_builds_on_token_encrypted ON public.ci_builds USING btree (token_encrypted) WHERE (token_encrypted IS NOT NULL);


--
-- Name: index_ci_builds_on_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_updated_at ON public.ci_builds USING btree (updated_at);


--
-- Name: index_ci_builds_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_on_user_id ON public.ci_builds USING btree (user_id);


--
-- Name: index_ci_builds_project_id_and_status_for_live_jobs_partial2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_builds_project_id_and_status_for_live_jobs_partial2 ON public.ci_builds USING btree (project_id, status) WHERE (((type)::text = 'Ci::Build'::text) AND ((status)::text = ANY (ARRAY[('running'::character varying)::text, ('pending'::character varying)::text, ('created'::character varying)::text])));


--
-- Name: index_ci_builds_runner_session_on_build_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_builds_runner_session_on_build_id ON public.ci_builds_runner_session USING btree (build_id);


--
-- Name: index_ci_group_variables_on_group_id_and_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_group_variables_on_group_id_and_key ON public.ci_group_variables USING btree (group_id, key);


--
-- Name: index_ci_job_artifacts_on_expire_at_and_job_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_job_artifacts_on_expire_at_and_job_id ON public.ci_job_artifacts USING btree (expire_at, job_id);


--
-- Name: index_ci_job_artifacts_on_file_store; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_job_artifacts_on_file_store ON public.ci_job_artifacts USING btree (file_store);


--
-- Name: index_ci_job_artifacts_on_job_id_and_file_type; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_job_artifacts_on_job_id_and_file_type ON public.ci_job_artifacts USING btree (job_id, file_type);


--
-- Name: index_ci_job_artifacts_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_job_artifacts_on_project_id ON public.ci_job_artifacts USING btree (project_id);


--
-- Name: index_ci_pipeline_chat_data_on_chat_name_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipeline_chat_data_on_chat_name_id ON public.ci_pipeline_chat_data USING btree (chat_name_id);


--
-- Name: index_ci_pipeline_chat_data_on_pipeline_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_pipeline_chat_data_on_pipeline_id ON public.ci_pipeline_chat_data USING btree (pipeline_id);


--
-- Name: index_ci_pipeline_schedule_variables_on_schedule_id_and_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_pipeline_schedule_variables_on_schedule_id_and_key ON public.ci_pipeline_schedule_variables USING btree (pipeline_schedule_id, key);


--
-- Name: index_ci_pipeline_schedules_on_next_run_at_and_active; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipeline_schedules_on_next_run_at_and_active ON public.ci_pipeline_schedules USING btree (next_run_at, active);


--
-- Name: index_ci_pipeline_schedules_on_owner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipeline_schedules_on_owner_id ON public.ci_pipeline_schedules USING btree (owner_id);


--
-- Name: index_ci_pipeline_schedules_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipeline_schedules_on_project_id ON public.ci_pipeline_schedules USING btree (project_id);


--
-- Name: index_ci_pipeline_variables_on_pipeline_id_and_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_pipeline_variables_on_pipeline_id_and_key ON public.ci_pipeline_variables USING btree (pipeline_id, key);


--
-- Name: index_ci_pipelines_on_auto_canceled_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_auto_canceled_by_id ON public.ci_pipelines USING btree (auto_canceled_by_id);


--
-- Name: index_ci_pipelines_on_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_merge_request_id ON public.ci_pipelines USING btree (merge_request_id) WHERE (merge_request_id IS NOT NULL);


--
-- Name: index_ci_pipelines_on_pipeline_schedule_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_pipeline_schedule_id ON public.ci_pipelines USING btree (pipeline_schedule_id);


--
-- Name: index_ci_pipelines_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_project_id ON public.ci_pipelines USING btree (project_id);


--
-- Name: index_ci_pipelines_on_project_id_and_iid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_pipelines_on_project_id_and_iid ON public.ci_pipelines USING btree (project_id, iid) WHERE (iid IS NOT NULL);


--
-- Name: index_ci_pipelines_on_project_id_and_ref_and_status_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_project_id_and_ref_and_status_and_id ON public.ci_pipelines USING btree (project_id, ref, status, id);


--
-- Name: index_ci_pipelines_on_project_id_and_sha; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_project_id_and_sha ON public.ci_pipelines USING btree (project_id, sha);


--
-- Name: index_ci_pipelines_on_project_id_and_source; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_project_id_and_source ON public.ci_pipelines USING btree (project_id, source);


--
-- Name: index_ci_pipelines_on_project_id_and_status_and_config_source; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_project_id_and_status_and_config_source ON public.ci_pipelines USING btree (project_id, status, config_source);


--
-- Name: index_ci_pipelines_on_project_idandrefandiddesc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_project_idandrefandiddesc ON public.ci_pipelines USING btree (project_id, ref, id DESC);


--
-- Name: index_ci_pipelines_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_status ON public.ci_pipelines USING btree (status);


--
-- Name: index_ci_pipelines_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_pipelines_on_user_id ON public.ci_pipelines USING btree (user_id);


--
-- Name: index_ci_runner_namespaces_on_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runner_namespaces_on_namespace_id ON public.ci_runner_namespaces USING btree (namespace_id);


--
-- Name: index_ci_runner_namespaces_on_runner_id_and_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_runner_namespaces_on_runner_id_and_namespace_id ON public.ci_runner_namespaces USING btree (runner_id, namespace_id);


--
-- Name: index_ci_runner_projects_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runner_projects_on_project_id ON public.ci_runner_projects USING btree (project_id);


--
-- Name: index_ci_runner_projects_on_runner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runner_projects_on_runner_id ON public.ci_runner_projects USING btree (runner_id);


--
-- Name: index_ci_runners_on_contacted_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runners_on_contacted_at ON public.ci_runners USING btree (contacted_at);


--
-- Name: index_ci_runners_on_is_shared; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runners_on_is_shared ON public.ci_runners USING btree (is_shared);


--
-- Name: index_ci_runners_on_locked; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runners_on_locked ON public.ci_runners USING btree (locked);


--
-- Name: index_ci_runners_on_runner_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runners_on_runner_type ON public.ci_runners USING btree (runner_type);


--
-- Name: index_ci_runners_on_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runners_on_token ON public.ci_runners USING btree (token);


--
-- Name: index_ci_runners_on_token_encrypted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_runners_on_token_encrypted ON public.ci_runners USING btree (token_encrypted);


--
-- Name: index_ci_stages_on_pipeline_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_stages_on_pipeline_id ON public.ci_stages USING btree (pipeline_id);


--
-- Name: index_ci_stages_on_pipeline_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_stages_on_pipeline_id_and_name ON public.ci_stages USING btree (pipeline_id, name);


--
-- Name: index_ci_stages_on_pipeline_id_and_position; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_stages_on_pipeline_id_and_position ON public.ci_stages USING btree (pipeline_id, "position");


--
-- Name: index_ci_stages_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_stages_on_project_id ON public.ci_stages USING btree (project_id);


--
-- Name: index_ci_trigger_requests_on_commit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_trigger_requests_on_commit_id ON public.ci_trigger_requests USING btree (commit_id);


--
-- Name: index_ci_trigger_requests_on_trigger_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_trigger_requests_on_trigger_id ON public.ci_trigger_requests USING btree (trigger_id);


--
-- Name: index_ci_triggers_on_owner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_triggers_on_owner_id ON public.ci_triggers USING btree (owner_id);


--
-- Name: index_ci_triggers_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_ci_triggers_on_project_id ON public.ci_triggers USING btree (project_id);


--
-- Name: index_ci_variables_on_project_id_and_key_and_environment_scope; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_ci_variables_on_project_id_and_key_and_environment_scope ON public.ci_variables USING btree (project_id, key, environment_scope);


--
-- Name: index_cluster_groups_on_cluster_id_and_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_cluster_groups_on_cluster_id_and_group_id ON public.cluster_groups USING btree (cluster_id, group_id);


--
-- Name: index_cluster_groups_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cluster_groups_on_group_id ON public.cluster_groups USING btree (group_id);


--
-- Name: index_cluster_platforms_kubernetes_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_cluster_platforms_kubernetes_on_cluster_id ON public.cluster_platforms_kubernetes USING btree (cluster_id);


--
-- Name: index_cluster_projects_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cluster_projects_on_cluster_id ON public.cluster_projects USING btree (cluster_id);


--
-- Name: index_cluster_projects_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_cluster_projects_on_project_id ON public.cluster_projects USING btree (project_id);


--
-- Name: index_cluster_providers_gcp_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_cluster_providers_gcp_on_cluster_id ON public.cluster_providers_gcp USING btree (cluster_id);


--
-- Name: index_clusters_applications_cert_managers_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_cert_managers_on_cluster_id ON public.clusters_applications_cert_managers USING btree (cluster_id);


--
-- Name: index_clusters_applications_helm_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_helm_on_cluster_id ON public.clusters_applications_helm USING btree (cluster_id);


--
-- Name: index_clusters_applications_ingress_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_ingress_on_cluster_id ON public.clusters_applications_ingress USING btree (cluster_id);


--
-- Name: index_clusters_applications_jupyter_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_jupyter_on_cluster_id ON public.clusters_applications_jupyter USING btree (cluster_id);


--
-- Name: index_clusters_applications_jupyter_on_oauth_application_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_applications_jupyter_on_oauth_application_id ON public.clusters_applications_jupyter USING btree (oauth_application_id);


--
-- Name: index_clusters_applications_knative_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_knative_on_cluster_id ON public.clusters_applications_knative USING btree (cluster_id);


--
-- Name: index_clusters_applications_prometheus_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_prometheus_on_cluster_id ON public.clusters_applications_prometheus USING btree (cluster_id);


--
-- Name: index_clusters_applications_runners_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_clusters_applications_runners_on_cluster_id ON public.clusters_applications_runners USING btree (cluster_id);


--
-- Name: index_clusters_applications_runners_on_runner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_applications_runners_on_runner_id ON public.clusters_applications_runners USING btree (runner_id);


--
-- Name: index_clusters_kubernetes_namespaces_on_cluster_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_kubernetes_namespaces_on_cluster_id ON public.clusters_kubernetes_namespaces USING btree (cluster_id);


--
-- Name: index_clusters_kubernetes_namespaces_on_cluster_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_kubernetes_namespaces_on_cluster_project_id ON public.clusters_kubernetes_namespaces USING btree (cluster_project_id);


--
-- Name: index_clusters_kubernetes_namespaces_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_kubernetes_namespaces_on_project_id ON public.clusters_kubernetes_namespaces USING btree (project_id);


--
-- Name: index_clusters_on_enabled; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_on_enabled ON public.clusters USING btree (enabled);


--
-- Name: index_clusters_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_clusters_on_user_id ON public.clusters USING btree (user_id);


--
-- Name: index_container_repositories_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_container_repositories_on_project_id ON public.container_repositories USING btree (project_id);


--
-- Name: index_container_repositories_on_project_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_container_repositories_on_project_id_and_name ON public.container_repositories USING btree (project_id, name);


--
-- Name: index_deploy_keys_projects_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deploy_keys_projects_on_project_id ON public.deploy_keys_projects USING btree (project_id);


--
-- Name: index_deploy_tokens_on_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_deploy_tokens_on_token ON public.deploy_tokens USING btree (token);


--
-- Name: index_deploy_tokens_on_token_and_expires_at_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deploy_tokens_on_token_and_expires_at_and_id ON public.deploy_tokens USING btree (token, expires_at, id) WHERE (revoked IS FALSE);


--
-- Name: index_deployments_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_created_at ON public.deployments USING btree (created_at);


--
-- Name: index_deployments_on_deployable_type_and_deployable_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_deployable_type_and_deployable_id ON public.deployments USING btree (deployable_type, deployable_id);


--
-- Name: index_deployments_on_environment_id_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_environment_id_and_id ON public.deployments USING btree (environment_id, id);


--
-- Name: index_deployments_on_environment_id_and_iid_and_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_environment_id_and_iid_and_project_id ON public.deployments USING btree (environment_id, iid, project_id);


--
-- Name: index_deployments_on_environment_id_and_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_environment_id_and_status ON public.deployments USING btree (environment_id, status);


--
-- Name: index_deployments_on_project_id_and_iid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_deployments_on_project_id_and_iid ON public.deployments USING btree (project_id, iid);


--
-- Name: index_deployments_on_project_id_and_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_project_id_and_status ON public.deployments USING btree (project_id, status);


--
-- Name: index_deployments_on_project_id_and_status_and_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_deployments_on_project_id_and_status_and_created_at ON public.deployments USING btree (project_id, status, created_at);


--
-- Name: index_emails_on_confirmation_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_emails_on_confirmation_token ON public.emails USING btree (confirmation_token);


--
-- Name: index_emails_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_emails_on_email ON public.emails USING btree (email);


--
-- Name: index_emails_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_emails_on_user_id ON public.emails USING btree (user_id);


--
-- Name: index_environments_on_project_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_environments_on_project_id_and_name ON public.environments USING btree (project_id, name);


--
-- Name: index_environments_on_project_id_and_slug; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_environments_on_project_id_and_slug ON public.environments USING btree (project_id, slug);


--
-- Name: index_events_on_action; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_action ON public.events USING btree (action);


--
-- Name: index_events_on_author_id_and_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_author_id_and_project_id ON public.events USING btree (author_id, project_id);


--
-- Name: index_events_on_project_id_and_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_project_id_and_created_at ON public.events USING btree (project_id, created_at);


--
-- Name: index_events_on_project_id_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_project_id_and_id ON public.events USING btree (project_id, id);


--
-- Name: index_events_on_target_type_and_target_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_events_on_target_type_and_target_id ON public.events USING btree (target_type, target_id);


--
-- Name: index_feature_gates_on_feature_key_and_key_and_value; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_feature_gates_on_feature_key_and_key_and_value ON public.feature_gates USING btree (feature_key, key, value);


--
-- Name: index_features_on_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_features_on_key ON public.features USING btree (key);


--
-- Name: index_fork_network_members_on_fork_network_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_fork_network_members_on_fork_network_id ON public.fork_network_members USING btree (fork_network_id);


--
-- Name: index_fork_network_members_on_forked_from_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_fork_network_members_on_forked_from_project_id ON public.fork_network_members USING btree (forked_from_project_id);


--
-- Name: index_fork_network_members_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_fork_network_members_on_project_id ON public.fork_network_members USING btree (project_id);


--
-- Name: index_fork_networks_on_root_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_fork_networks_on_root_project_id ON public.fork_networks USING btree (root_project_id);


--
-- Name: index_forked_project_links_on_forked_to_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_forked_project_links_on_forked_to_project_id ON public.forked_project_links USING btree (forked_to_project_id);


--
-- Name: index_gpg_key_subkeys_on_fingerprint; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_gpg_key_subkeys_on_fingerprint ON public.gpg_key_subkeys USING btree (fingerprint);


--
-- Name: index_gpg_key_subkeys_on_gpg_key_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gpg_key_subkeys_on_gpg_key_id ON public.gpg_key_subkeys USING btree (gpg_key_id);


--
-- Name: index_gpg_key_subkeys_on_keyid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_gpg_key_subkeys_on_keyid ON public.gpg_key_subkeys USING btree (keyid);


--
-- Name: index_gpg_keys_on_fingerprint; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_gpg_keys_on_fingerprint ON public.gpg_keys USING btree (fingerprint);


--
-- Name: index_gpg_keys_on_primary_keyid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_gpg_keys_on_primary_keyid ON public.gpg_keys USING btree (primary_keyid);


--
-- Name: index_gpg_keys_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gpg_keys_on_user_id ON public.gpg_keys USING btree (user_id);


--
-- Name: index_gpg_signatures_on_commit_sha; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_gpg_signatures_on_commit_sha ON public.gpg_signatures USING btree (commit_sha);


--
-- Name: index_gpg_signatures_on_gpg_key_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gpg_signatures_on_gpg_key_id ON public.gpg_signatures USING btree (gpg_key_id);


--
-- Name: index_gpg_signatures_on_gpg_key_primary_keyid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gpg_signatures_on_gpg_key_primary_keyid ON public.gpg_signatures USING btree (gpg_key_primary_keyid);


--
-- Name: index_gpg_signatures_on_gpg_key_subkey_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gpg_signatures_on_gpg_key_subkey_id ON public.gpg_signatures USING btree (gpg_key_subkey_id);


--
-- Name: index_gpg_signatures_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_gpg_signatures_on_project_id ON public.gpg_signatures USING btree (project_id);


--
-- Name: index_group_custom_attributes_on_group_id_and_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_group_custom_attributes_on_group_id_and_key ON public.group_custom_attributes USING btree (group_id, key);


--
-- Name: index_group_custom_attributes_on_key_and_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_group_custom_attributes_on_key_and_value ON public.group_custom_attributes USING btree (key, value);


--
-- Name: index_identities_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_identities_on_user_id ON public.identities USING btree (user_id);


--
-- Name: index_import_export_uploads_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_import_export_uploads_on_project_id ON public.import_export_uploads USING btree (project_id);


--
-- Name: index_import_export_uploads_on_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_import_export_uploads_on_updated_at ON public.import_export_uploads USING btree (updated_at);


--
-- Name: index_internal_ids_on_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_internal_ids_on_namespace_id ON public.internal_ids USING btree (namespace_id);


--
-- Name: index_internal_ids_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_internal_ids_on_project_id ON public.internal_ids USING btree (project_id);


--
-- Name: index_internal_ids_on_usage_and_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_internal_ids_on_usage_and_namespace_id ON public.internal_ids USING btree (usage, namespace_id) WHERE (namespace_id IS NOT NULL);


--
-- Name: index_internal_ids_on_usage_and_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_internal_ids_on_usage_and_project_id ON public.internal_ids USING btree (usage, project_id) WHERE (project_id IS NOT NULL);


--
-- Name: index_issue_assignees_on_issue_id_and_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_issue_assignees_on_issue_id_and_user_id ON public.issue_assignees USING btree (issue_id, user_id);


--
-- Name: index_issue_assignees_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issue_assignees_on_user_id ON public.issue_assignees USING btree (user_id);


--
-- Name: index_issue_metrics; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issue_metrics ON public.issue_metrics USING btree (issue_id);


--
-- Name: index_issues_on_author_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_author_id ON public.issues USING btree (author_id);


--
-- Name: index_issues_on_closed_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_closed_by_id ON public.issues USING btree (closed_by_id);


--
-- Name: index_issues_on_confidential; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_confidential ON public.issues USING btree (confidential);


--
-- Name: index_issues_on_description_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_description_trigram ON public.issues USING gin (description public.gin_trgm_ops);


--
-- Name: index_issues_on_milestone_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_milestone_id ON public.issues USING btree (milestone_id);


--
-- Name: index_issues_on_moved_to_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_moved_to_id ON public.issues USING btree (moved_to_id) WHERE (moved_to_id IS NOT NULL);


--
-- Name: index_issues_on_project_id_and_created_at_and_id_and_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_project_id_and_created_at_and_id_and_state ON public.issues USING btree (project_id, created_at, id, state);


--
-- Name: index_issues_on_project_id_and_iid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_issues_on_project_id_and_iid ON public.issues USING btree (project_id, iid);


--
-- Name: index_issues_on_project_id_and_updated_at_and_id_and_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_project_id_and_updated_at_and_id_and_state ON public.issues USING btree (project_id, updated_at, id, state);


--
-- Name: index_issues_on_relative_position; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_relative_position ON public.issues USING btree (relative_position);


--
-- Name: index_issues_on_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_state ON public.issues USING btree (state);


--
-- Name: index_issues_on_title_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_title_trigram ON public.issues USING gin (title public.gin_trgm_ops);


--
-- Name: index_issues_on_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_updated_at ON public.issues USING btree (updated_at);


--
-- Name: index_issues_on_updated_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_issues_on_updated_by_id ON public.issues USING btree (updated_by_id) WHERE (updated_by_id IS NOT NULL);


--
-- Name: index_keys_on_fingerprint; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_keys_on_fingerprint ON public.keys USING btree (fingerprint);


--
-- Name: index_keys_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_keys_on_user_id ON public.keys USING btree (user_id);


--
-- Name: index_label_links_on_label_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_label_links_on_label_id ON public.label_links USING btree (label_id);


--
-- Name: index_label_links_on_target_id_and_target_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_label_links_on_target_id_and_target_type ON public.label_links USING btree (target_id, target_type);


--
-- Name: index_label_priorities_on_label_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_label_priorities_on_label_id ON public.label_priorities USING btree (label_id);


--
-- Name: index_label_priorities_on_priority; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_label_priorities_on_priority ON public.label_priorities USING btree (priority);


--
-- Name: index_label_priorities_on_project_id_and_label_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_label_priorities_on_project_id_and_label_id ON public.label_priorities USING btree (project_id, label_id);


--
-- Name: index_labels_on_group_id_and_project_id_and_title; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_labels_on_group_id_and_project_id_and_title ON public.labels USING btree (group_id, project_id, title);


--
-- Name: index_labels_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_labels_on_project_id ON public.labels USING btree (project_id);


--
-- Name: index_labels_on_template; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_labels_on_template ON public.labels USING btree (template) WHERE template;


--
-- Name: index_labels_on_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_labels_on_title ON public.labels USING btree (title);


--
-- Name: index_labels_on_type_and_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_labels_on_type_and_project_id ON public.labels USING btree (type, project_id);


--
-- Name: index_lfs_file_locks_on_project_id_and_path; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_lfs_file_locks_on_project_id_and_path ON public.lfs_file_locks USING btree (project_id, path);


--
-- Name: index_lfs_file_locks_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_lfs_file_locks_on_user_id ON public.lfs_file_locks USING btree (user_id);


--
-- Name: index_lfs_objects_on_file_store; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_lfs_objects_on_file_store ON public.lfs_objects USING btree (file_store);


--
-- Name: index_lfs_objects_on_oid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_lfs_objects_on_oid ON public.lfs_objects USING btree (oid);


--
-- Name: index_lfs_objects_projects_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_lfs_objects_projects_on_project_id ON public.lfs_objects_projects USING btree (project_id);


--
-- Name: index_lists_on_board_id_and_label_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_lists_on_board_id_and_label_id ON public.lists USING btree (board_id, label_id);


--
-- Name: index_lists_on_label_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_lists_on_label_id ON public.lists USING btree (label_id);


--
-- Name: index_lists_on_list_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_lists_on_list_type ON public.lists USING btree (list_type);


--
-- Name: index_members_on_access_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_members_on_access_level ON public.members USING btree (access_level);


--
-- Name: index_members_on_invite_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_members_on_invite_token ON public.members USING btree (invite_token);


--
-- Name: index_members_on_requested_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_members_on_requested_at ON public.members USING btree (requested_at);


--
-- Name: index_members_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_members_on_source_id_and_source_type ON public.members USING btree (source_id, source_type);


--
-- Name: index_members_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_members_on_user_id ON public.members USING btree (user_id);


--
-- Name: index_merge_request_assignees_on_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_assignees_on_merge_request_id ON public.merge_request_assignees USING btree (merge_request_id);


--
-- Name: index_merge_request_assignees_on_merge_request_id_and_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_merge_request_assignees_on_merge_request_id_and_user_id ON public.merge_request_assignees USING btree (merge_request_id, user_id);


--
-- Name: index_merge_request_assignees_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_assignees_on_user_id ON public.merge_request_assignees USING btree (user_id);


--
-- Name: index_merge_request_blocks_on_blocked_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_blocks_on_blocked_merge_request_id ON public.merge_request_blocks USING btree (blocked_merge_request_id);


--
-- Name: index_merge_request_diff_commits_on_mr_diff_id_and_order; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_merge_request_diff_commits_on_mr_diff_id_and_order ON public.merge_request_diff_commits USING btree (merge_request_diff_id, relative_order);


--
-- Name: index_merge_request_diff_commits_on_sha; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_diff_commits_on_sha ON public.merge_request_diff_commits USING btree (sha);


--
-- Name: index_merge_request_diff_files_on_mr_diff_id_and_order; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_merge_request_diff_files_on_mr_diff_id_and_order ON public.merge_request_diff_files USING btree (merge_request_diff_id, relative_order);


--
-- Name: index_merge_request_diffs_on_merge_request_id_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_diffs_on_merge_request_id_and_id ON public.merge_request_diffs USING btree (merge_request_id, id);


--
-- Name: index_merge_request_diffs_on_merge_request_id_and_id_partial; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_diffs_on_merge_request_id_and_id_partial ON public.merge_request_diffs USING btree (merge_request_id, id) WHERE ((NOT stored_externally) OR (stored_externally IS NULL));


--
-- Name: index_merge_request_metrics; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics ON public.merge_request_metrics USING btree (merge_request_id);


--
-- Name: index_merge_request_metrics_on_first_deployed_to_production_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics_on_first_deployed_to_production_at ON public.merge_request_metrics USING btree (first_deployed_to_production_at);


--
-- Name: index_merge_request_metrics_on_latest_closed_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics_on_latest_closed_at ON public.merge_request_metrics USING btree (latest_closed_at) WHERE (latest_closed_at IS NOT NULL);


--
-- Name: index_merge_request_metrics_on_latest_closed_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics_on_latest_closed_by_id ON public.merge_request_metrics USING btree (latest_closed_by_id);


--
-- Name: index_merge_request_metrics_on_merge_request_id_and_merged_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics_on_merge_request_id_and_merged_at ON public.merge_request_metrics USING btree (merge_request_id, merged_at) WHERE (merged_at IS NOT NULL);


--
-- Name: index_merge_request_metrics_on_merged_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics_on_merged_by_id ON public.merge_request_metrics USING btree (merged_by_id);


--
-- Name: index_merge_request_metrics_on_pipeline_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_request_metrics_on_pipeline_id ON public.merge_request_metrics USING btree (pipeline_id);


--
-- Name: index_merge_requests_closing_issues_on_issue_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_closing_issues_on_issue_id ON public.merge_requests_closing_issues USING btree (issue_id);


--
-- Name: index_merge_requests_closing_issues_on_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_closing_issues_on_merge_request_id ON public.merge_requests_closing_issues USING btree (merge_request_id);


--
-- Name: index_merge_requests_on_assignee_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_assignee_id ON public.merge_requests USING btree (assignee_id);


--
-- Name: index_merge_requests_on_author_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_author_id ON public.merge_requests USING btree (author_id);


--
-- Name: index_merge_requests_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_created_at ON public.merge_requests USING btree (created_at);


--
-- Name: index_merge_requests_on_description_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_description_trigram ON public.merge_requests USING gin (description public.gin_trgm_ops);


--
-- Name: index_merge_requests_on_head_pipeline_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_head_pipeline_id ON public.merge_requests USING btree (head_pipeline_id);


--
-- Name: index_merge_requests_on_id_and_merge_jid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_id_and_merge_jid ON public.merge_requests USING btree (id, merge_jid) WHERE ((merge_jid IS NOT NULL) AND ((state)::text = 'locked'::text));


--
-- Name: index_merge_requests_on_latest_merge_request_diff_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_latest_merge_request_diff_id ON public.merge_requests USING btree (latest_merge_request_diff_id);


--
-- Name: index_merge_requests_on_merge_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_merge_user_id ON public.merge_requests USING btree (merge_user_id) WHERE (merge_user_id IS NOT NULL);


--
-- Name: index_merge_requests_on_milestone_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_milestone_id ON public.merge_requests USING btree (milestone_id);


--
-- Name: index_merge_requests_on_source_branch; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_source_branch ON public.merge_requests USING btree (source_branch);


--
-- Name: index_merge_requests_on_source_project_and_branch_state_opened; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_source_project_and_branch_state_opened ON public.merge_requests USING btree (source_project_id, source_branch) WHERE ((state)::text = 'opened'::text);


--
-- Name: index_merge_requests_on_source_project_id_and_source_branch; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_source_project_id_and_source_branch ON public.merge_requests USING btree (source_project_id, source_branch);


--
-- Name: index_merge_requests_on_state_and_merge_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_state_and_merge_status ON public.merge_requests USING btree (state, merge_status) WHERE (((state)::text = 'opened'::text) AND ((merge_status)::text = 'can_be_merged'::text));


--
-- Name: index_merge_requests_on_target_branch; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_target_branch ON public.merge_requests USING btree (target_branch);


--
-- Name: index_merge_requests_on_target_project_id_and_iid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_merge_requests_on_target_project_id_and_iid ON public.merge_requests USING btree (target_project_id, iid);


--
-- Name: index_merge_requests_on_target_project_id_and_iid_opened; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_target_project_id_and_iid_opened ON public.merge_requests USING btree (target_project_id, iid) WHERE ((state)::text = 'opened'::text);


--
-- Name: index_merge_requests_on_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_title ON public.merge_requests USING btree (title);


--
-- Name: index_merge_requests_on_title_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_title_trigram ON public.merge_requests USING gin (title public.gin_trgm_ops);


--
-- Name: index_merge_requests_on_tp_id_and_merge_commit_sha_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_tp_id_and_merge_commit_sha_and_id ON public.merge_requests USING btree (target_project_id, merge_commit_sha, id);


--
-- Name: index_merge_requests_on_updated_by_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_requests_on_updated_by_id ON public.merge_requests USING btree (updated_by_id) WHERE (updated_by_id IS NOT NULL);


--
-- Name: index_merge_trains_on_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_merge_trains_on_merge_request_id ON public.merge_trains USING btree (merge_request_id);


--
-- Name: index_merge_trains_on_pipeline_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_trains_on_pipeline_id ON public.merge_trains USING btree (pipeline_id);


--
-- Name: index_merge_trains_on_target_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_trains_on_target_project_id ON public.merge_trains USING btree (target_project_id);


--
-- Name: index_merge_trains_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_merge_trains_on_user_id ON public.merge_trains USING btree (user_id);


--
-- Name: index_milestones_on_description_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_milestones_on_description_trigram ON public.milestones USING gin (description public.gin_trgm_ops);


--
-- Name: index_milestones_on_due_date; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_milestones_on_due_date ON public.milestones USING btree (due_date);


--
-- Name: index_milestones_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_milestones_on_group_id ON public.milestones USING btree (group_id);


--
-- Name: index_milestones_on_project_id_and_iid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_milestones_on_project_id_and_iid ON public.milestones USING btree (project_id, iid);


--
-- Name: index_milestones_on_title; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_milestones_on_title ON public.milestones USING btree (title);


--
-- Name: index_milestones_on_title_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_milestones_on_title_trigram ON public.milestones USING gin (title public.gin_trgm_ops);


--
-- Name: index_mr_blocks_on_blocking_and_blocked_mr_ids; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_mr_blocks_on_blocking_and_blocked_mr_ids ON public.merge_request_blocks USING btree (blocking_merge_request_id, blocked_merge_request_id);


--
-- Name: index_namespaces_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_created_at ON public.namespaces USING btree (created_at);


--
-- Name: index_namespaces_on_name_and_parent_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_namespaces_on_name_and_parent_id ON public.namespaces USING btree (name, parent_id);


--
-- Name: index_namespaces_on_name_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_name_trigram ON public.namespaces USING gin (name public.gin_trgm_ops);


--
-- Name: index_namespaces_on_owner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_owner_id ON public.namespaces USING btree (owner_id);


--
-- Name: index_namespaces_on_parent_id_and_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_namespaces_on_parent_id_and_id ON public.namespaces USING btree (parent_id, id);


--
-- Name: index_namespaces_on_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_path ON public.namespaces USING btree (path);


--
-- Name: index_namespaces_on_path_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_path_trigram ON public.namespaces USING gin (path public.gin_trgm_ops);


--
-- Name: index_namespaces_on_require_two_factor_authentication; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_require_two_factor_authentication ON public.namespaces USING btree (require_two_factor_authentication);


--
-- Name: index_namespaces_on_runners_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_namespaces_on_runners_token ON public.namespaces USING btree (runners_token);


--
-- Name: index_namespaces_on_runners_token_encrypted; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_namespaces_on_runners_token_encrypted ON public.namespaces USING btree (runners_token_encrypted);


--
-- Name: index_namespaces_on_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_namespaces_on_type ON public.namespaces USING btree (type);


--
-- Name: index_note_diff_files_on_diff_note_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_note_diff_files_on_diff_note_id ON public.note_diff_files USING btree (diff_note_id);


--
-- Name: index_notes_on_author_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_author_id ON public.notes USING btree (author_id);


--
-- Name: index_notes_on_commit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_commit_id ON public.notes USING btree (commit_id);


--
-- Name: index_notes_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_created_at ON public.notes USING btree (created_at);


--
-- Name: index_notes_on_discussion_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_discussion_id ON public.notes USING btree (discussion_id);


--
-- Name: index_notes_on_line_code; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_line_code ON public.notes USING btree (line_code);


--
-- Name: index_notes_on_note_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_note_trigram ON public.notes USING gin (note public.gin_trgm_ops);


--
-- Name: index_notes_on_noteable_id_and_noteable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_noteable_id_and_noteable_type ON public.notes USING btree (noteable_id, noteable_type);


--
-- Name: index_notes_on_noteable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_noteable_type ON public.notes USING btree (noteable_type);


--
-- Name: index_notes_on_project_id_and_noteable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notes_on_project_id_and_noteable_type ON public.notes USING btree (project_id, noteable_type);


--
-- Name: index_notification_settings_on_source_id_and_source_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notification_settings_on_source_id_and_source_type ON public.notification_settings USING btree (source_id, source_type);


--
-- Name: index_notification_settings_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_notification_settings_on_user_id ON public.notification_settings USING btree (user_id);


--
-- Name: index_notifications_on_user_id_and_source_id_and_source_type; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_notifications_on_user_id_and_source_id_and_source_type ON public.notification_settings USING btree (user_id, source_id, source_type);


--
-- Name: index_oauth_access_grants_on_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_oauth_access_grants_on_token ON public.oauth_access_grants USING btree (token);


--
-- Name: index_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_oauth_access_tokens_on_refresh_token ON public.oauth_access_tokens USING btree (refresh_token);


--
-- Name: index_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_oauth_access_tokens_on_resource_owner_id ON public.oauth_access_tokens USING btree (resource_owner_id);


--
-- Name: index_oauth_access_tokens_on_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_oauth_access_tokens_on_token ON public.oauth_access_tokens USING btree (token);


--
-- Name: index_oauth_applications_on_owner_id_and_owner_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_oauth_applications_on_owner_id_and_owner_type ON public.oauth_applications USING btree (owner_id, owner_type);


--
-- Name: index_oauth_applications_on_uid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_oauth_applications_on_uid ON public.oauth_applications USING btree (uid);


--
-- Name: index_oauth_openid_requests_on_access_grant_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_oauth_openid_requests_on_access_grant_id ON public.oauth_openid_requests USING btree (access_grant_id);


--
-- Name: index_pages_domain_acme_orders_on_challenge_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domain_acme_orders_on_challenge_token ON public.pages_domain_acme_orders USING btree (challenge_token);


--
-- Name: index_pages_domain_acme_orders_on_pages_domain_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domain_acme_orders_on_pages_domain_id ON public.pages_domain_acme_orders USING btree (pages_domain_id);


--
-- Name: index_pages_domains_on_domain; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_pages_domains_on_domain ON public.pages_domains USING btree (domain);


--
-- Name: index_pages_domains_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domains_on_project_id ON public.pages_domains USING btree (project_id);


--
-- Name: index_pages_domains_on_project_id_and_enabled_until; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domains_on_project_id_and_enabled_until ON public.pages_domains USING btree (project_id, enabled_until);


--
-- Name: index_pages_domains_on_remove_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domains_on_remove_at ON public.pages_domains USING btree (remove_at);


--
-- Name: index_pages_domains_on_verified_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domains_on_verified_at ON public.pages_domains USING btree (verified_at);


--
-- Name: index_pages_domains_on_verified_at_and_enabled_until; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pages_domains_on_verified_at_and_enabled_until ON public.pages_domains USING btree (verified_at, enabled_until);


--
-- Name: index_personal_access_tokens_on_token_digest; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_personal_access_tokens_on_token_digest ON public.personal_access_tokens USING btree (token_digest);


--
-- Name: index_personal_access_tokens_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_personal_access_tokens_on_user_id ON public.personal_access_tokens USING btree (user_id);


--
-- Name: index_pool_repositories_on_disk_path; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_pool_repositories_on_disk_path ON public.pool_repositories USING btree (disk_path);


--
-- Name: index_pool_repositories_on_shard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_pool_repositories_on_shard_id ON public.pool_repositories USING btree (shard_id);


--
-- Name: index_pool_repositories_on_source_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_pool_repositories_on_source_project_id ON public.pool_repositories USING btree (source_project_id);


--
-- Name: index_programming_languages_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_programming_languages_on_name ON public.programming_languages USING btree (name);


--
-- Name: index_project_authorizations_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_authorizations_on_project_id ON public.project_authorizations USING btree (project_id);


--
-- Name: index_project_authorizations_on_user_id_project_id_access_level; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_authorizations_on_user_id_project_id_access_level ON public.project_authorizations USING btree (user_id, project_id, access_level);


--
-- Name: index_project_auto_devops_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_auto_devops_on_project_id ON public.project_auto_devops USING btree (project_id);


--
-- Name: index_project_ci_cd_settings_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_ci_cd_settings_on_project_id ON public.project_ci_cd_settings USING btree (project_id);


--
-- Name: index_project_custom_attributes_on_key_and_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_custom_attributes_on_key_and_value ON public.project_custom_attributes USING btree (key, value);


--
-- Name: index_project_custom_attributes_on_project_id_and_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_custom_attributes_on_project_id_and_key ON public.project_custom_attributes USING btree (project_id, key);


--
-- Name: index_project_daily_statistics_on_project_id_and_date; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_daily_statistics_on_project_id_and_date ON public.project_daily_statistics USING btree (project_id, date DESC);


--
-- Name: index_project_deploy_tokens_on_deploy_token_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_deploy_tokens_on_deploy_token_id ON public.project_deploy_tokens USING btree (deploy_token_id);


--
-- Name: index_project_deploy_tokens_on_project_id_and_deploy_token_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_deploy_tokens_on_project_id_and_deploy_token_id ON public.project_deploy_tokens USING btree (project_id, deploy_token_id);


--
-- Name: index_project_features_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_features_on_project_id ON public.project_features USING btree (project_id);


--
-- Name: index_project_group_links_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_group_links_on_group_id ON public.project_group_links USING btree (group_id);


--
-- Name: index_project_group_links_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_group_links_on_project_id ON public.project_group_links USING btree (project_id);


--
-- Name: index_project_import_data_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_import_data_on_project_id ON public.project_import_data USING btree (project_id);


--
-- Name: index_project_mirror_data_on_jid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_mirror_data_on_jid ON public.project_mirror_data USING btree (jid);


--
-- Name: index_project_mirror_data_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_mirror_data_on_project_id ON public.project_mirror_data USING btree (project_id);


--
-- Name: index_project_mirror_data_on_status; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_mirror_data_on_status ON public.project_mirror_data USING btree (status);


--
-- Name: index_project_repositories_on_disk_path; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_repositories_on_disk_path ON public.project_repositories USING btree (disk_path);


--
-- Name: index_project_repositories_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_repositories_on_project_id ON public.project_repositories USING btree (project_id);


--
-- Name: index_project_repositories_on_shard_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_repositories_on_shard_id ON public.project_repositories USING btree (shard_id);


--
-- Name: index_project_statistics_on_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_project_statistics_on_namespace_id ON public.project_statistics USING btree (namespace_id);


--
-- Name: index_project_statistics_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_project_statistics_on_project_id ON public.project_statistics USING btree (project_id);


--
-- Name: index_projects_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_created_at ON public.projects USING btree (created_at);


--
-- Name: index_projects_on_creator_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_creator_id ON public.projects USING btree (creator_id);


--
-- Name: index_projects_on_description_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_description_trigram ON public.projects USING gin (description public.gin_trgm_ops);


--
-- Name: index_projects_on_id_partial_for_visibility; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_projects_on_id_partial_for_visibility ON public.projects USING btree (id) WHERE (visibility_level = ANY (ARRAY[10, 20]));


--
-- Name: index_projects_on_last_activity_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_last_activity_at ON public.projects USING btree (last_activity_at);


--
-- Name: index_projects_on_last_repository_check_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_last_repository_check_at ON public.projects USING btree (last_repository_check_at) WHERE (last_repository_check_at IS NOT NULL);


--
-- Name: index_projects_on_last_repository_check_failed; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_last_repository_check_failed ON public.projects USING btree (last_repository_check_failed);


--
-- Name: index_projects_on_last_repository_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_last_repository_updated_at ON public.projects USING btree (last_repository_updated_at);


--
-- Name: index_projects_on_name_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_name_trigram ON public.projects USING gin (name public.gin_trgm_ops);


--
-- Name: index_projects_on_namespace_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_namespace_id ON public.projects USING btree (namespace_id);


--
-- Name: index_projects_on_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_path ON public.projects USING btree (path);


--
-- Name: index_projects_on_path_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_path_trigram ON public.projects USING gin (path public.gin_trgm_ops);


--
-- Name: index_projects_on_pending_delete; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_pending_delete ON public.projects USING btree (pending_delete);


--
-- Name: index_projects_on_pool_repository_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_pool_repository_id ON public.projects USING btree (pool_repository_id) WHERE (pool_repository_id IS NOT NULL);


--
-- Name: index_projects_on_repository_storage; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_repository_storage ON public.projects USING btree (repository_storage);


--
-- Name: index_projects_on_runners_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_runners_token ON public.projects USING btree (runners_token);


--
-- Name: index_projects_on_runners_token_encrypted; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_runners_token_encrypted ON public.projects USING btree (runners_token_encrypted);


--
-- Name: index_projects_on_star_count; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_star_count ON public.projects USING btree (star_count);


--
-- Name: index_projects_on_visibility_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_projects_on_visibility_level ON public.projects USING btree (visibility_level);


--
-- Name: index_prometheus_metrics_on_common; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prometheus_metrics_on_common ON public.prometheus_metrics USING btree (common);


--
-- Name: index_prometheus_metrics_on_group; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prometheus_metrics_on_group ON public.prometheus_metrics USING btree ("group");


--
-- Name: index_prometheus_metrics_on_identifier; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_prometheus_metrics_on_identifier ON public.prometheus_metrics USING btree (identifier);


--
-- Name: index_prometheus_metrics_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_prometheus_metrics_on_project_id ON public.prometheus_metrics USING btree (project_id);


--
-- Name: index_protected_branch_merge_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_branch_merge_access ON public.protected_branch_merge_access_levels USING btree (protected_branch_id);


--
-- Name: index_protected_branch_push_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_branch_push_access ON public.protected_branch_push_access_levels USING btree (protected_branch_id);


--
-- Name: index_protected_branches_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_branches_on_project_id ON public.protected_branches USING btree (project_id);


--
-- Name: index_protected_tag_create_access; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_tag_create_access ON public.protected_tag_create_access_levels USING btree (protected_tag_id);


--
-- Name: index_protected_tag_create_access_levels_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_tag_create_access_levels_on_group_id ON public.protected_tag_create_access_levels USING btree (group_id);


--
-- Name: index_protected_tag_create_access_levels_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_tag_create_access_levels_on_user_id ON public.protected_tag_create_access_levels USING btree (user_id);


--
-- Name: index_protected_tags_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_protected_tags_on_project_id ON public.protected_tags USING btree (project_id);


--
-- Name: index_protected_tags_on_project_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_protected_tags_on_project_id_and_name ON public.protected_tags USING btree (project_id, name);


--
-- Name: index_push_event_payloads_on_event_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_push_event_payloads_on_event_id ON public.push_event_payloads USING btree (event_id);


--
-- Name: index_redirect_routes_on_path; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_redirect_routes_on_path ON public.redirect_routes USING btree (path);


--
-- Name: index_redirect_routes_on_source_type_and_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_redirect_routes_on_source_type_and_source_id ON public.redirect_routes USING btree (source_type, source_id);


--
-- Name: index_release_links_on_release_id_and_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_release_links_on_release_id_and_name ON public.release_links USING btree (release_id, name);


--
-- Name: index_release_links_on_release_id_and_url; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_release_links_on_release_id_and_url ON public.release_links USING btree (release_id, url);


--
-- Name: index_releases_on_author_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_releases_on_author_id ON public.releases USING btree (author_id);


--
-- Name: index_releases_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_releases_on_project_id ON public.releases USING btree (project_id);


--
-- Name: index_releases_on_project_id_and_tag; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_releases_on_project_id_and_tag ON public.releases USING btree (project_id, tag);


--
-- Name: index_remote_mirrors_on_last_successful_update_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_remote_mirrors_on_last_successful_update_at ON public.remote_mirrors USING btree (last_successful_update_at);


--
-- Name: index_remote_mirrors_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_remote_mirrors_on_project_id ON public.remote_mirrors USING btree (project_id);


--
-- Name: index_repository_languages_on_project_and_languages_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_repository_languages_on_project_and_languages_id ON public.repository_languages USING btree (project_id, programming_language_id);


--
-- Name: index_resource_label_events_on_issue_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_label_events_on_issue_id ON public.resource_label_events USING btree (issue_id);


--
-- Name: index_resource_label_events_on_label_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_label_events_on_label_id ON public.resource_label_events USING btree (label_id);


--
-- Name: index_resource_label_events_on_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_label_events_on_merge_request_id ON public.resource_label_events USING btree (merge_request_id);


--
-- Name: index_resource_label_events_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_resource_label_events_on_user_id ON public.resource_label_events USING btree (user_id);


--
-- Name: index_routes_on_path; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_routes_on_path ON public.routes USING btree (path);


--
-- Name: index_routes_on_path_text_pattern_ops; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_routes_on_path_text_pattern_ops ON public.routes USING btree (path varchar_pattern_ops);


--
-- Name: index_routes_on_source_type_and_source_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_routes_on_source_type_and_source_id ON public.routes USING btree (source_type, source_id);


--
-- Name: index_sent_notifications_on_reply_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_sent_notifications_on_reply_key ON public.sent_notifications USING btree (reply_key);


--
-- Name: index_services_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_services_on_project_id ON public.services USING btree (project_id);


--
-- Name: index_services_on_template; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_services_on_template ON public.services USING btree (template);


--
-- Name: index_services_on_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_services_on_type ON public.services USING btree (type);


--
-- Name: index_shards_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_shards_on_name ON public.shards USING btree (name);


--
-- Name: index_snippets_on_author_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_snippets_on_author_id ON public.snippets USING btree (author_id);


--
-- Name: index_snippets_on_file_name_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_snippets_on_file_name_trigram ON public.snippets USING gin (file_name public.gin_trgm_ops);


--
-- Name: index_snippets_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_snippets_on_project_id ON public.snippets USING btree (project_id);


--
-- Name: index_snippets_on_title_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_snippets_on_title_trigram ON public.snippets USING gin (title public.gin_trgm_ops);


--
-- Name: index_snippets_on_updated_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_snippets_on_updated_at ON public.snippets USING btree (updated_at);


--
-- Name: index_snippets_on_visibility_level; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_snippets_on_visibility_level ON public.snippets USING btree (visibility_level);


--
-- Name: index_subscriptions_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_subscriptions_on_project_id ON public.subscriptions USING btree (project_id);


--
-- Name: index_subscriptions_on_subscribable_and_user_id_and_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_subscriptions_on_subscribable_and_user_id_and_project_id ON public.subscriptions USING btree (subscribable_id, subscribable_type, user_id, project_id);


--
-- Name: index_suggestions_on_note_id_and_relative_order; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_suggestions_on_note_id_and_relative_order ON public.suggestions USING btree (note_id, relative_order);


--
-- Name: index_system_note_metadata_on_note_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_system_note_metadata_on_note_id ON public.system_note_metadata USING btree (note_id);


--
-- Name: index_taggings_on_tag_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_taggings_on_tag_id ON public.taggings USING btree (tag_id);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type ON public.taggings USING btree (taggable_id, taggable_type);


--
-- Name: index_taggings_on_taggable_id_and_taggable_type_and_context; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_taggings_on_taggable_id_and_taggable_type_and_context ON public.taggings USING btree (taggable_id, taggable_type, context);


--
-- Name: index_tags_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_tags_on_name ON public.tags USING btree (name);


--
-- Name: index_tags_on_name_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_tags_on_name_trigram ON public.tags USING gin (name public.gin_trgm_ops);


--
-- Name: index_term_agreements_on_term_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_term_agreements_on_term_id ON public.term_agreements USING btree (term_id);


--
-- Name: index_term_agreements_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_term_agreements_on_user_id ON public.term_agreements USING btree (user_id);


--
-- Name: index_timelogs_on_issue_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_timelogs_on_issue_id ON public.timelogs USING btree (issue_id);


--
-- Name: index_timelogs_on_merge_request_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_timelogs_on_merge_request_id ON public.timelogs USING btree (merge_request_id);


--
-- Name: index_timelogs_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_timelogs_on_user_id ON public.timelogs USING btree (user_id);


--
-- Name: index_todos_on_author_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_author_id ON public.todos USING btree (author_id);


--
-- Name: index_todos_on_commit_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_commit_id ON public.todos USING btree (commit_id);


--
-- Name: index_todos_on_group_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_group_id ON public.todos USING btree (group_id);


--
-- Name: index_todos_on_note_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_note_id ON public.todos USING btree (note_id);


--
-- Name: index_todos_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_project_id ON public.todos USING btree (project_id);


--
-- Name: index_todos_on_target_type_and_target_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_target_type_and_target_id ON public.todos USING btree (target_type, target_id);


--
-- Name: index_todos_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_user_id ON public.todos USING btree (user_id);


--
-- Name: index_todos_on_user_id_and_id_done; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_user_id_and_id_done ON public.todos USING btree (user_id, id) WHERE ((state)::text = 'done'::text);


--
-- Name: index_todos_on_user_id_and_id_pending; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_todos_on_user_id_and_id_pending ON public.todos USING btree (user_id, id) WHERE ((state)::text = 'pending'::text);


--
-- Name: index_trending_projects_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_trending_projects_on_project_id ON public.trending_projects USING btree (project_id);


--
-- Name: index_u2f_registrations_on_key_handle; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_u2f_registrations_on_key_handle ON public.u2f_registrations USING btree (key_handle);


--
-- Name: index_u2f_registrations_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_u2f_registrations_on_user_id ON public.u2f_registrations USING btree (user_id);


--
-- Name: index_uploads_on_checksum; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_uploads_on_checksum ON public.uploads USING btree (checksum);


--
-- Name: index_uploads_on_model_id_and_model_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_uploads_on_model_id_and_model_type ON public.uploads USING btree (model_id, model_type);


--
-- Name: index_uploads_on_store; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_uploads_on_store ON public.uploads USING btree (store);


--
-- Name: index_uploads_on_uploader_and_path; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_uploads_on_uploader_and_path ON public.uploads USING btree (uploader, path);


--
-- Name: index_user_agent_details_on_subject_id_and_subject_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_agent_details_on_subject_id_and_subject_type ON public.user_agent_details USING btree (subject_id, subject_type);


--
-- Name: index_user_callouts_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_callouts_on_user_id ON public.user_callouts USING btree (user_id);


--
-- Name: index_user_callouts_on_user_id_and_feature_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_user_callouts_on_user_id_and_feature_name ON public.user_callouts USING btree (user_id, feature_name);


--
-- Name: index_user_custom_attributes_on_key_and_value; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_custom_attributes_on_key_and_value ON public.user_custom_attributes USING btree (key, value);


--
-- Name: index_user_custom_attributes_on_user_id_and_key; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_user_custom_attributes_on_user_id_and_key ON public.user_custom_attributes USING btree (user_id, key);


--
-- Name: index_user_interacted_projects_on_project_id_and_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_user_interacted_projects_on_project_id_and_user_id ON public.user_interacted_projects USING btree (project_id, user_id);


--
-- Name: index_user_interacted_projects_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_interacted_projects_on_user_id ON public.user_interacted_projects USING btree (user_id);


--
-- Name: index_user_preferences_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_user_preferences_on_user_id ON public.user_preferences USING btree (user_id);


--
-- Name: index_user_statuses_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_user_statuses_on_user_id ON public.user_statuses USING btree (user_id);


--
-- Name: index_user_synced_attributes_metadata_on_user_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_user_synced_attributes_metadata_on_user_id ON public.user_synced_attributes_metadata USING btree (user_id);


--
-- Name: index_users_on_accepted_term_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_accepted_term_id ON public.users USING btree (accepted_term_id);


--
-- Name: index_users_on_admin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_admin ON public.users USING btree (admin);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_created_at; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_created_at ON public.users USING btree (created_at);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_email_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_email_trigram ON public.users USING gin (email public.gin_trgm_ops);


--
-- Name: index_users_on_feed_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_feed_token ON public.users USING btree (feed_token);


--
-- Name: index_users_on_ghost; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_ghost ON public.users USING btree (ghost);


--
-- Name: index_users_on_incoming_email_token; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_incoming_email_token ON public.users USING btree (incoming_email_token);


--
-- Name: index_users_on_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_name ON public.users USING btree (name);


--
-- Name: index_users_on_name_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_name_trigram ON public.users USING gin (name public.gin_trgm_ops);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_users_on_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_state ON public.users USING btree (state);


--
-- Name: index_users_on_username; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_username ON public.users USING btree (username);


--
-- Name: index_users_on_username_trigram; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_on_username_trigram ON public.users USING gin (username public.gin_trgm_ops);


--
-- Name: index_users_star_projects_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_users_star_projects_on_project_id ON public.users_star_projects USING btree (project_id);


--
-- Name: index_users_star_projects_on_user_id_and_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX index_users_star_projects_on_user_id_and_project_id ON public.users_star_projects USING btree (user_id, project_id);


--
-- Name: index_web_hook_logs_on_created_at_and_web_hook_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_web_hook_logs_on_created_at_and_web_hook_id ON public.web_hook_logs USING btree (created_at, web_hook_id);


--
-- Name: index_web_hook_logs_on_web_hook_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_web_hook_logs_on_web_hook_id ON public.web_hook_logs USING btree (web_hook_id);


--
-- Name: index_web_hooks_on_project_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_web_hooks_on_project_id ON public.web_hooks USING btree (project_id);


--
-- Name: index_web_hooks_on_type; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX index_web_hooks_on_type ON public.web_hooks USING btree (type);


--
-- Name: kubernetes_namespaces_cluster_and_namespace; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX kubernetes_namespaces_cluster_and_namespace ON public.clusters_kubernetes_namespaces USING btree (cluster_id, namespace);


--
-- Name: partial_index_ci_builds_on_scheduled_at_with_scheduled_jobs; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX partial_index_ci_builds_on_scheduled_at_with_scheduled_jobs ON public.ci_builds USING btree (scheduled_at) WHERE ((scheduled_at IS NOT NULL) AND ((type)::text = 'Ci::Build'::text) AND ((status)::text = 'scheduled'::text));


--
-- Name: partial_index_deployments_for_legacy_successful_deployments; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX partial_index_deployments_for_legacy_successful_deployments ON public.deployments USING btree (id) WHERE ((finished_at IS NULL) AND (status = 2));


--
-- Name: taggings_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX taggings_idx ON public.taggings USING btree (tag_id, taggable_id, taggable_type, context, tagger_id, tagger_type);


--
-- Name: term_agreements_unique_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX term_agreements_unique_index ON public.term_agreements USING btree (user_id, term_id);


--
-- Name: tmp_build_stage_position_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX tmp_build_stage_position_index ON public.ci_builds USING btree (stage_id, stage_idx) WHERE (stage_idx IS NOT NULL);


--
-- Name: clusters_applications_runners fk_02de2ded36; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_runners
    ADD CONSTRAINT fk_02de2ded36 FOREIGN KEY (runner_id) REFERENCES public.ci_runners(id) ON DELETE SET NULL;


--
-- Name: issues fk_05f1e72feb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT fk_05f1e72feb FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: merge_requests fk_06067f5644; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_06067f5644 FOREIGN KEY (latest_merge_request_diff_id) REFERENCES public.merge_request_diffs(id) ON DELETE SET NULL;


--
-- Name: user_interacted_projects fk_0894651f08; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_interacted_projects
    ADD CONSTRAINT fk_0894651f08 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: web_hooks fk_0c8ca6d9d1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.web_hooks
    ADD CONSTRAINT fk_0c8ca6d9d1 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: notification_settings fk_0c95e91db7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notification_settings
    ADD CONSTRAINT fk_0c95e91db7 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: lists fk_0d3f677137; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT fk_0d3f677137 FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: internal_ids fk_162941d509; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internal_ids
    ADD CONSTRAINT fk_162941d509 FOREIGN KEY (namespace_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: project_features fk_18513d9b92; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_features
    ADD CONSTRAINT fk_18513d9b92 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: users_star_projects fk_22cd27ddfc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users_star_projects
    ADD CONSTRAINT fk_22cd27ddfc FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_stages fk_2360681d1d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_stages
    ADD CONSTRAINT fk_2360681d1d FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_ci_cd_settings fk_24c15d2f2e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_ci_cd_settings
    ADD CONSTRAINT fk_24c15d2f2e FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipelines fk_262d4c2d19; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipelines
    ADD CONSTRAINT fk_262d4c2d19 FOREIGN KEY (auto_canceled_by_id) REFERENCES public.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: ci_build_trace_sections fk_264e112c66; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_sections
    ADD CONSTRAINT fk_264e112c66 FOREIGN KEY (section_name_id) REFERENCES public.ci_build_trace_section_names(id) ON DELETE CASCADE;


--
-- Name: members fk_2e88fb7ce9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.members
    ADD CONSTRAINT fk_2e88fb7ce9 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_3308fe130c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_3308fe130c FOREIGN KEY (source_project_id) REFERENCES public.projects(id) ON DELETE SET NULL;


--
-- Name: ci_group_variables fk_33ae4d58d8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_group_variables
    ADD CONSTRAINT fk_33ae4d58d8 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: push_event_payloads fk_36c74129da; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.push_event_payloads
    ADD CONSTRAINT fk_36c74129da FOREIGN KEY (event_id) REFERENCES public.events(id) ON DELETE CASCADE;


--
-- Name: ci_builds fk_3a9eaa254d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds
    ADD CONSTRAINT fk_3a9eaa254d FOREIGN KEY (stage_id) REFERENCES public.ci_stages(id) ON DELETE CASCADE;


--
-- Name: ci_pipelines fk_3d34ab2e06; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipelines
    ADD CONSTRAINT fk_3d34ab2e06 FOREIGN KEY (pipeline_schedule_id) REFERENCES public.ci_pipeline_schedules(id) ON DELETE SET NULL;


--
-- Name: ci_pipeline_schedule_variables fk_41c35fda51; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedule_variables
    ADD CONSTRAINT fk_41c35fda51 FOREIGN KEY (pipeline_schedule_id) REFERENCES public.ci_pipeline_schedules(id) ON DELETE CASCADE;


--
-- Name: forked_project_links fk_434510edb0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.forked_project_links
    ADD CONSTRAINT fk_434510edb0 FOREIGN KEY (forked_to_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_runner_projects fk_4478a6f1e4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_projects
    ADD CONSTRAINT fk_4478a6f1e4 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: todos fk_45054f9c45; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT fk_45054f9c45 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: releases fk_47fe2a0596; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.releases
    ADD CONSTRAINT fk_47fe2a0596 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_build_trace_sections fk_4ebe41f502; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_sections
    ADD CONSTRAINT fk_4ebe41f502 FOREIGN KEY (build_id) REFERENCES public.ci_builds(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_prometheus fk_557e773639; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_prometheus
    ADD CONSTRAINT fk_557e773639 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: deploy_keys_projects fk_58a901ca7e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deploy_keys_projects
    ADD CONSTRAINT fk_58a901ca7e FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: issue_assignees fk_5e0c8d9154; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_assignees
    ADD CONSTRAINT fk_5e0c8d9154 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_6149611a04; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_6149611a04 FOREIGN KEY (assignee_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: merge_requests fk_641731faff; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_641731faff FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: merge_requests fk_6a5165a692; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_6a5165a692 FOREIGN KEY (milestone_id) REFERENCES public.milestones(id) ON DELETE SET NULL;


--
-- Name: projects fk_6e5c14658a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT fk_6e5c14658a FOREIGN KEY (pool_repository_id) REFERENCES public.pool_repositories(id) ON DELETE SET NULL;


--
-- Name: services fk_71cce407f9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.services
    ADD CONSTRAINT fk_71cce407f9 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: user_interacted_projects fk_722ceba4f7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_interacted_projects
    ADD CONSTRAINT fk_722ceba4f7 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_ingress fk_753a7b41c1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_ingress
    ADD CONSTRAINT fk_753a7b41c1 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: users fk_789cd90b35; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_789cd90b35 FOREIGN KEY (accepted_term_id) REFERENCES public.application_setting_terms(id) ON DELETE CASCADE;


--
-- Name: lists fk_7a5553d60f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT fk_7a5553d60f FOREIGN KEY (label_id) REFERENCES public.labels(id) ON DELETE CASCADE;


--
-- Name: protected_branches fk_7a9c6d93e7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branches
    ADD CONSTRAINT fk_7a9c6d93e7 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: labels fk_7de4989a69; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT fk_7de4989a69 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_metrics fk_7f28d925f3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_metrics
    ADD CONSTRAINT fk_7f28d925f3 FOREIGN KEY (merged_by_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: merge_request_diffs fk_8483f3258f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_diffs
    ADD CONSTRAINT fk_8483f3258f FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: ci_pipelines fk_86635dbd80; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipelines
    ADD CONSTRAINT fk_86635dbd80 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: issues fk_899c8f3231; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT fk_899c8f3231 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: protected_branch_merge_access_levels fk_8a3072ccb3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branch_merge_access_levels
    ADD CONSTRAINT fk_8a3072ccb3 FOREIGN KEY (protected_branch_id) REFERENCES public.protected_branches(id) ON DELETE CASCADE;


--
-- Name: releases fk_8e4456f90f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.releases
    ADD CONSTRAINT fk_8e4456f90f FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: protected_tags fk_8e4af87648; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tags
    ADD CONSTRAINT fk_8e4af87648 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_schedules fk_8ead60fcc4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedules
    ADD CONSTRAINT fk_8ead60fcc4 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: todos fk_91d1f47b13; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT fk_91d1f47b13 FOREIGN KEY (note_id) REFERENCES public.notes(id) ON DELETE CASCADE;


--
-- Name: milestones fk_95650a40d4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.milestones
    ADD CONSTRAINT fk_95650a40d4 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: application_settings fk_964370041d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.application_settings
    ADD CONSTRAINT fk_964370041d FOREIGN KEY (usage_stats_set_by_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: issues fk_96b1dd429c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT fk_96b1dd429c FOREIGN KEY (milestone_id) REFERENCES public.milestones(id) ON DELETE SET NULL;


--
-- Name: notes fk_99e097b079; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.notes
    ADD CONSTRAINT fk_99e097b079 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: milestones fk_9bd0a0c791; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.milestones
    ADD CONSTRAINT fk_9bd0a0c791 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_schedules fk_9ea99f58d2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_schedules
    ADD CONSTRAINT fk_9ea99f58d2 FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: protected_branch_push_access_levels fk_9ffc86a3d9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_branch_push_access_levels
    ADD CONSTRAINT fk_9ffc86a3d9 FOREIGN KEY (protected_branch_id) REFERENCES public.protected_branches(id) ON DELETE CASCADE;


--
-- Name: issues fk_a194299be1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT fk_a194299be1 FOREIGN KEY (moved_to_id) REFERENCES public.issues(id) ON DELETE SET NULL;


--
-- Name: ci_builds fk_a2141b1522; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds
    ADD CONSTRAINT fk_a2141b1522 FOREIGN KEY (auto_canceled_by_id) REFERENCES public.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: ci_pipelines fk_a23be95014; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipelines
    ADD CONSTRAINT fk_a23be95014 FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_a6963e8447; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_a6963e8447 FOREIGN KEY (target_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_ad525e1f87; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_ad525e1f87 FOREIGN KEY (merge_user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: ci_variables fk_ada5eb64b3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_variables
    ADD CONSTRAINT fk_ada5eb64b3 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_metrics fk_ae440388cc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_metrics
    ADD CONSTRAINT fk_ae440388cc FOREIGN KEY (latest_closed_by_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: fork_network_members fk_b01280dae4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_network_members
    ADD CONSTRAINT fk_b01280dae4 FOREIGN KEY (forked_from_project_id) REFERENCES public.projects(id) ON DELETE SET NULL;


--
-- Name: issue_assignees fk_b7d881734a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_assignees
    ADD CONSTRAINT fk_b7d881734a FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: ci_trigger_requests fk_b8ec8b7245; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_trigger_requests
    ADD CONSTRAINT fk_b8ec8b7245 FOREIGN KEY (trigger_id) REFERENCES public.ci_triggers(id) ON DELETE CASCADE;


--
-- Name: deployments fk_b9a3851b82; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.deployments
    ADD CONSTRAINT fk_b9a3851b82 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: snippets fk_be41fd4bb7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.snippets
    ADD CONSTRAINT fk_be41fd4bb7 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_builds fk_befce0568a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds
    ADD CONSTRAINT fk_befce0568a FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: issues fk_c63cbf6c25; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT fk_c63cbf6c25 FOREIGN KEY (closed_by_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: todos fk_ccf0373936; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT fk_ccf0373936 FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: environments fk_d1c8c1da6a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.environments
    ADD CONSTRAINT fk_d1c8c1da6a FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_builds fk_d3130c9a7f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds
    ADD CONSTRAINT fk_d3130c9a7f FOREIGN KEY (commit_id) REFERENCES public.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: system_note_metadata fk_d83a918cb1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.system_note_metadata
    ADD CONSTRAINT fk_d83a918cb1 FOREIGN KEY (note_id) REFERENCES public.notes(id) ON DELETE CASCADE;


--
-- Name: todos fk_d94154aa95; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT fk_d94154aa95 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: label_links fk_d97dd08678; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_links
    ADD CONSTRAINT fk_d97dd08678 FOREIGN KEY (label_id) REFERENCES public.labels(id) ON DELETE CASCADE;


--
-- Name: project_group_links fk_daa8cee94c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_group_links
    ADD CONSTRAINT fk_daa8cee94c FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_triggers fk_e3e63f966e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_triggers
    ADD CONSTRAINT fk_e3e63f966e FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_e719a85f8a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_e719a85f8a FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: fork_networks fk_e7b436b2b5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_networks
    ADD CONSTRAINT fk_e7b436b2b5 FOREIGN KEY (root_project_id) REFERENCES public.projects(id) ON DELETE SET NULL;


--
-- Name: ci_triggers fk_e8e10d1964; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_triggers
    ADD CONSTRAINT fk_e8e10d1964 FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: pages_domains fk_ea2f6dfc6f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_domains
    ADD CONSTRAINT fk_ea2f6dfc6f FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: events fk_edfd187b6f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_edfd187b6f FOREIGN KEY (author_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: boards fk_f15266b5f9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT fk_f15266b5f9 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_variables fk_f29c5f4380; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_variables
    ADD CONSTRAINT fk_f29c5f4380 FOREIGN KEY (pipeline_id) REFERENCES public.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: protected_tag_create_access_levels fk_f7dfda8c51; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tag_create_access_levels
    ADD CONSTRAINT fk_f7dfda8c51 FOREIGN KEY (protected_tag_id) REFERENCES public.protected_tags(id) ON DELETE CASCADE;


--
-- Name: ci_stages fk_fb57e6cc56; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_stages
    ADD CONSTRAINT fk_fb57e6cc56 FOREIGN KEY (pipeline_id) REFERENCES public.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: merge_requests fk_fd82eae0b9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests
    ADD CONSTRAINT fk_fd82eae0b9 FOREIGN KEY (head_pipeline_id) REFERENCES public.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: project_import_data fk_ffb9ee3a10; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_import_data
    ADD CONSTRAINT fk_ffb9ee3a10 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: issues fk_ffed080f01; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issues
    ADD CONSTRAINT fk_ffed080f01 FOREIGN KEY (updated_by_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: oauth_openid_requests fk_oauth_openid_requests_oauth_access_grants_access_grant_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.oauth_openid_requests
    ADD CONSTRAINT fk_oauth_openid_requests_oauth_access_grants_access_grant_id FOREIGN KEY (access_grant_id) REFERENCES public.oauth_access_grants(id);


--
-- Name: events fk_rails_0434b48643; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT fk_rails_0434b48643 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: personal_access_tokens fk_rails_08903b8f38; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT fk_rails_08903b8f38 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: trending_projects fk_rails_09feecd872; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.trending_projects
    ADD CONSTRAINT fk_rails_09feecd872 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_deploy_tokens fk_rails_0aca134388; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_deploy_tokens
    ADD CONSTRAINT fk_rails_0aca134388 FOREIGN KEY (deploy_token_id) REFERENCES public.deploy_tokens(id) ON DELETE CASCADE;


--
-- Name: user_synced_attributes_metadata fk_rails_0f4aa0981f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_synced_attributes_metadata
    ADD CONSTRAINT fk_rails_0f4aa0981f FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: project_authorizations fk_rails_0f84bb11f3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_authorizations
    ADD CONSTRAINT fk_rails_0f84bb11f3 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_build_trace_chunks fk_rails_1013b761f2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_chunks
    ADD CONSTRAINT fk_rails_1013b761f2 FOREIGN KEY (build_id) REFERENCES public.ci_builds(id) ON DELETE CASCADE;


--
-- Name: gpg_signatures fk_rails_11ae8cb9a7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_signatures
    ADD CONSTRAINT fk_rails_11ae8cb9a7 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_authorizations fk_rails_11e7aa3ed9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_authorizations
    ADD CONSTRAINT fk_rails_11e7aa3ed9 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: project_statistics fk_rails_12c471002f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_statistics
    ADD CONSTRAINT fk_rails_12c471002f FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_deploy_tokens fk_rails_170e03cbaf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_deploy_tokens
    ADD CONSTRAINT fk_rails_170e03cbaf FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_jupyter fk_rails_17df21c98c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_jupyter
    ADD CONSTRAINT fk_rails_17df21c98c FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: gpg_signatures fk_rails_19d4f1c6f9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_signatures
    ADD CONSTRAINT fk_rails_19d4f1c6f9 FOREIGN KEY (gpg_key_subkey_id) REFERENCES public.gpg_key_subkeys(id) ON DELETE SET NULL;


--
-- Name: boards fk_rails_1e9a074a35; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.boards
    ADD CONSTRAINT fk_rails_1e9a074a35 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: user_statuses fk_rails_2178592333; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_statuses
    ADD CONSTRAINT fk_rails_2178592333 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_runners fk_rails_22388594e9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_runners
    ADD CONSTRAINT fk_rails_22388594e9 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: protected_tag_create_access_levels fk_rails_2349b78b91; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tag_create_access_levels
    ADD CONSTRAINT fk_rails_2349b78b91 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: group_custom_attributes fk_rails_246e0db83a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.group_custom_attributes
    ADD CONSTRAINT fk_rails_246e0db83a FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: lfs_file_locks fk_rails_27a1d98fa8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_file_locks
    ADD CONSTRAINT fk_rails_27a1d98fa8 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: merge_request_diff_commits fk_rails_316aaceda3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_diff_commits
    ADD CONSTRAINT fk_rails_316aaceda3 FOREIGN KEY (merge_request_diff_id) REFERENCES public.merge_request_diffs(id) ON DELETE CASCADE;


--
-- Name: container_repositories fk_rails_32f7bf5aad; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.container_repositories
    ADD CONSTRAINT fk_rails_32f7bf5aad FOREIGN KEY (project_id) REFERENCES public.projects(id);


--
-- Name: clusters_applications_jupyter fk_rails_331f0aff78; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_jupyter
    ADD CONSTRAINT fk_rails_331f0aff78 FOREIGN KEY (oauth_application_id) REFERENCES public.oauth_applications(id) ON DELETE SET NULL;


--
-- Name: merge_request_metrics fk_rails_33ae169d48; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_metrics
    ADD CONSTRAINT fk_rails_33ae169d48 FOREIGN KEY (pipeline_id) REFERENCES public.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: suggestions fk_rails_33b03a535c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.suggestions
    ADD CONSTRAINT fk_rails_33b03a535c FOREIGN KEY (note_id) REFERENCES public.notes(id) ON DELETE CASCADE;


--
-- Name: merge_request_blocks fk_rails_364d4bea8b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_blocks
    ADD CONSTRAINT fk_rails_364d4bea8b FOREIGN KEY (blocked_merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: chat_teams fk_rails_3b543909cb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.chat_teams
    ADD CONSTRAINT fk_rails_3b543909cb FOREIGN KEY (namespace_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: cluster_groups fk_rails_3d28377556; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_groups
    ADD CONSTRAINT fk_rails_3d28377556 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: note_diff_files fk_rails_3d66047aeb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.note_diff_files
    ADD CONSTRAINT fk_rails_3d66047aeb FOREIGN KEY (diff_note_id) REFERENCES public.notes(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_helm fk_rails_3e2b1c06bc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_helm
    ADD CONSTRAINT fk_rails_3e2b1c06bc FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: clusters_kubernetes_namespaces fk_rails_40cc7ccbc3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_40cc7ccbc3 FOREIGN KEY (cluster_project_id) REFERENCES public.cluster_projects(id) ON DELETE SET NULL;


--
-- Name: remote_mirrors fk_rails_43a9aa4ca8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.remote_mirrors
    ADD CONSTRAINT fk_rails_43a9aa4ca8 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: lfs_file_locks fk_rails_43df7a0412; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lfs_file_locks
    ADD CONSTRAINT fk_rails_43df7a0412 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_assignees fk_rails_443443ce6f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_assignees
    ADD CONSTRAINT fk_rails_443443ce6f FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: project_auto_devops fk_rails_45436b12b2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_auto_devops
    ADD CONSTRAINT fk_rails_45436b12b2 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests_closing_issues fk_rails_458eda8667; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests_closing_issues
    ADD CONSTRAINT fk_rails_458eda8667 FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: user_custom_attributes fk_rails_47b91868a8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_custom_attributes
    ADD CONSTRAINT fk_rails_47b91868a8 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: issue_metrics fk_rails_4bb543d85d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.issue_metrics
    ADD CONSTRAINT fk_rails_4bb543d85d FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: project_metrics_settings fk_rails_4c6037ee4f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_metrics_settings
    ADD CONSTRAINT fk_rails_4c6037ee4f FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: prometheus_metrics fk_rails_4c8957a707; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.prometheus_metrics
    ADD CONSTRAINT fk_rails_4c8957a707 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_request_diff_files fk_rails_501aa0a391; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_diff_files
    ADD CONSTRAINT fk_rails_501aa0a391 FOREIGN KEY (merge_request_diff_id) REFERENCES public.merge_request_diffs(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_knative fk_rails_54fc91e0a0; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_knative
    ADD CONSTRAINT fk_rails_54fc91e0a0 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: merge_request_assignees fk_rails_579d375628; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_assignees
    ADD CONSTRAINT fk_rails_579d375628 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: badges fk_rails_5a7c055bdc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT fk_rails_5a7c055bdc FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: resource_label_events fk_rails_5ac1d2fc24; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resource_label_events
    ADD CONSTRAINT fk_rails_5ac1d2fc24 FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: cluster_providers_gcp fk_rails_5c2c3bc814; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_providers_gcp
    ADD CONSTRAINT fk_rails_5c2c3bc814 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: board_group_recent_visits fk_rails_64bfc19bc5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_group_recent_visits
    ADD CONSTRAINT fk_rails_64bfc19bc5 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_chat_data fk_rails_64ebfab6b3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_chat_data
    ADD CONSTRAINT fk_rails_64ebfab6b3 FOREIGN KEY (pipeline_id) REFERENCES public.ci_pipelines(id) ON DELETE CASCADE;


--
-- Name: web_hook_logs fk_rails_666826e111; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.web_hook_logs
    ADD CONSTRAINT fk_rails_666826e111 FOREIGN KEY (web_hook_id) REFERENCES public.web_hooks(id) ON DELETE CASCADE;


--
-- Name: term_agreements fk_rails_6ea6520e4a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.term_agreements
    ADD CONSTRAINT fk_rails_6ea6520e4a FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: ci_builds_runner_session fk_rails_70707857d3; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_runner_session
    ADD CONSTRAINT fk_rails_70707857d3 FOREIGN KEY (build_id) REFERENCES public.ci_builds(id) ON DELETE CASCADE;


--
-- Name: project_custom_attributes fk_rails_719c3dccc5; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_custom_attributes
    ADD CONSTRAINT fk_rails_719c3dccc5 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: release_links fk_rails_753be7ae29; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.release_links
    ADD CONSTRAINT fk_rails_753be7ae29 FOREIGN KEY (release_id) REFERENCES public.releases(id) ON DELETE CASCADE;


--
-- Name: pages_domain_acme_orders fk_rails_76581b1c16; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages_domain_acme_orders
    ADD CONSTRAINT fk_rails_76581b1c16 FOREIGN KEY (pages_domain_id) REFERENCES public.pages_domains(id) ON DELETE CASCADE;


--
-- Name: project_repositories fk_rails_7a810d4121; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_repositories
    ADD CONSTRAINT fk_rails_7a810d4121 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_kubernetes_namespaces fk_rails_7e7688ecaf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_7e7688ecaf FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: ci_runner_namespaces fk_rails_8767676b7a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_namespaces
    ADD CONSTRAINT fk_rails_8767676b7a FOREIGN KEY (runner_id) REFERENCES public.ci_runners(id) ON DELETE CASCADE;


--
-- Name: gpg_key_subkeys fk_rails_8b2c90b046; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_key_subkeys
    ADD CONSTRAINT fk_rails_8b2c90b046 FOREIGN KEY (gpg_key_id) REFERENCES public.gpg_keys(id) ON DELETE CASCADE;


--
-- Name: cluster_projects fk_rails_8b8c5caf07; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_projects
    ADD CONSTRAINT fk_rails_8b8c5caf07 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_daily_statistics fk_rails_8e549b272d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_daily_statistics
    ADD CONSTRAINT fk_rails_8e549b272d FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_error_tracking_settings fk_rails_910a2b8bd9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_error_tracking_settings
    ADD CONSTRAINT fk_rails_910a2b8bd9 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: resource_label_events fk_rails_9851a00031; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resource_label_events
    ADD CONSTRAINT fk_rails_9851a00031 FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: ci_job_artifacts fk_rails_9862d392f9; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_job_artifacts
    ADD CONSTRAINT fk_rails_9862d392f9 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: board_project_recent_visits fk_rails_98f8843922; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_project_recent_visits
    ADD CONSTRAINT fk_rails_98f8843922 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: clusters_kubernetes_namespaces fk_rails_98fe21e486; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_kubernetes_namespaces
    ADD CONSTRAINT fk_rails_98fe21e486 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE SET NULL;


--
-- Name: gpg_keys fk_rails_9d1f5d8719; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_keys
    ADD CONSTRAINT fk_rails_9d1f5d8719 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: badges fk_rails_9df4a56538; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.badges
    ADD CONSTRAINT fk_rails_9df4a56538 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: clusters_applications_cert_managers fk_rails_9e4f2cb4b2; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters_applications_cert_managers
    ADD CONSTRAINT fk_rails_9e4f2cb4b2 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: todos fk_rails_a27c483435; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.todos
    ADD CONSTRAINT fk_rails_a27c483435 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: fork_network_members fk_rails_a40860a1ca; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_network_members
    ADD CONSTRAINT fk_rails_a40860a1ca FOREIGN KEY (fork_network_id) REFERENCES public.fork_networks(id) ON DELETE CASCADE;


--
-- Name: cluster_projects fk_rails_a5a958bca1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_projects
    ADD CONSTRAINT fk_rails_a5a958bca1 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: user_preferences fk_rails_a69bfcfd81; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_preferences
    ADD CONSTRAINT fk_rails_a69bfcfd81 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: repository_languages fk_rails_a750ec87a8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.repository_languages
    ADD CONSTRAINT fk_rails_a750ec87a8 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: term_agreements fk_rails_a88721bcdf; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.term_agreements
    ADD CONSTRAINT fk_rails_a88721bcdf FOREIGN KEY (term_id) REFERENCES public.application_setting_terms(id);


--
-- Name: ci_build_trace_sections fk_rails_ab7c104e26; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_sections
    ADD CONSTRAINT fk_rails_ab7c104e26 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: clusters fk_rails_ac3a663d79; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusters
    ADD CONSTRAINT fk_rails_ac3a663d79 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: pool_repositories fk_rails_af3f8c5d62; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pool_repositories
    ADD CONSTRAINT fk_rails_af3f8c5d62 FOREIGN KEY (shard_id) REFERENCES public.shards(id) ON DELETE RESTRICT;


--
-- Name: resource_label_events fk_rails_b126799f57; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resource_label_events
    ADD CONSTRAINT fk_rails_b126799f57 FOREIGN KEY (label_id) REFERENCES public.labels(id) ON DELETE SET NULL;


--
-- Name: merge_trains fk_rails_b29261ce31; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_trains
    ADD CONSTRAINT fk_rails_b29261ce31 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: board_project_recent_visits fk_rails_b315dd0c80; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_project_recent_visits
    ADD CONSTRAINT fk_rails_b315dd0c80 FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: merge_trains fk_rails_b374b5225d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_trains
    ADD CONSTRAINT fk_rails_b374b5225d FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: protected_tag_create_access_levels fk_rails_b4eb82fe3c; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.protected_tag_create_access_levels
    ADD CONSTRAINT fk_rails_b4eb82fe3c FOREIGN KEY (group_id) REFERENCES public.namespaces(id);


--
-- Name: merge_trains fk_rails_b9d67af01d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_trains
    ADD CONSTRAINT fk_rails_b9d67af01d FOREIGN KEY (target_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: u2f_registrations fk_rails_bfe6a84544; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.u2f_registrations
    ADD CONSTRAINT fk_rails_bfe6a84544 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: labels fk_rails_c1ac5161d8; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.labels
    ADD CONSTRAINT fk_rails_c1ac5161d8 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: project_repositories fk_rails_c3258dc63b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_repositories
    ADD CONSTRAINT fk_rails_c3258dc63b FOREIGN KEY (shard_id) REFERENCES public.shards(id) ON DELETE RESTRICT;


--
-- Name: ci_job_artifacts fk_rails_c5137cb2c1; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_job_artifacts
    ADD CONSTRAINT fk_rails_c5137cb2c1 FOREIGN KEY (job_id) REFERENCES public.ci_builds(id) ON DELETE CASCADE;


--
-- Name: gpg_signatures fk_rails_c97176f5f7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.gpg_signatures
    ADD CONSTRAINT fk_rails_c97176f5f7 FOREIGN KEY (gpg_key_id) REFERENCES public.gpg_keys(id) ON DELETE SET NULL;


--
-- Name: board_group_recent_visits fk_rails_ca04c38720; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_group_recent_visits
    ADD CONSTRAINT fk_rails_ca04c38720 FOREIGN KEY (board_id) REFERENCES public.boards(id) ON DELETE CASCADE;


--
-- Name: subscriptions fk_rails_d0c8bda804; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT fk_rails_d0c8bda804 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: project_mirror_data fk_rails_d1aad367d7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.project_mirror_data
    ADD CONSTRAINT fk_rails_d1aad367d7 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: pool_repositories fk_rails_d2711daad4; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pool_repositories
    ADD CONSTRAINT fk_rails_d2711daad4 FOREIGN KEY (source_project_id) REFERENCES public.projects(id) ON DELETE SET NULL;


--
-- Name: user_callouts fk_rails_ddfdd80f3d; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.user_callouts
    ADD CONSTRAINT fk_rails_ddfdd80f3d FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: label_priorities fk_rails_e161058b0f; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_priorities
    ADD CONSTRAINT fk_rails_e161058b0f FOREIGN KEY (label_id) REFERENCES public.labels(id) ON DELETE CASCADE;


--
-- Name: cluster_platforms_kubernetes fk_rails_e1e2cf841a; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_platforms_kubernetes
    ADD CONSTRAINT fk_rails_e1e2cf841a FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: ci_builds_metadata fk_rails_e20479742e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_metadata
    ADD CONSTRAINT fk_rails_e20479742e FOREIGN KEY (build_id) REFERENCES public.ci_builds(id) ON DELETE CASCADE;


--
-- Name: merge_request_metrics fk_rails_e6d7c24d1b; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_metrics
    ADD CONSTRAINT fk_rails_e6d7c24d1b FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: merge_request_blocks fk_rails_e9387863bc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_request_blocks
    ADD CONSTRAINT fk_rails_e9387863bc FOREIGN KEY (blocking_merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- Name: label_priorities fk_rails_ef916d14fa; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.label_priorities
    ADD CONSTRAINT fk_rails_ef916d14fa FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: fork_network_members fk_rails_efccadc4ec; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fork_network_members
    ADD CONSTRAINT fk_rails_efccadc4ec FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: import_export_uploads fk_rails_f129140f9e; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.import_export_uploads
    ADD CONSTRAINT fk_rails_f129140f9e FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: ci_pipeline_chat_data fk_rails_f300456b63; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_pipeline_chat_data
    ADD CONSTRAINT fk_rails_f300456b63 FOREIGN KEY (chat_name_id) REFERENCES public.chat_names(id) ON DELETE CASCADE;


--
-- Name: board_group_recent_visits fk_rails_f410736518; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_group_recent_visits
    ADD CONSTRAINT fk_rails_f410736518 FOREIGN KEY (group_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: internal_ids fk_rails_f7d46b66c6; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.internal_ids
    ADD CONSTRAINT fk_rails_f7d46b66c6 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_requests_closing_issues fk_rails_f8540692be; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_requests_closing_issues
    ADD CONSTRAINT fk_rails_f8540692be FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: ci_build_trace_section_names fk_rails_f8cd72cd26; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_build_trace_section_names
    ADD CONSTRAINT fk_rails_f8cd72cd26 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: merge_trains fk_rails_f90820cb08; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.merge_trains
    ADD CONSTRAINT fk_rails_f90820cb08 FOREIGN KEY (pipeline_id) REFERENCES public.ci_pipelines(id) ON DELETE SET NULL;


--
-- Name: ci_runner_namespaces fk_rails_f9d9ed3308; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_runner_namespaces
    ADD CONSTRAINT fk_rails_f9d9ed3308 FOREIGN KEY (namespace_id) REFERENCES public.namespaces(id) ON DELETE CASCADE;


--
-- Name: board_project_recent_visits fk_rails_fb6fc419cb; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.board_project_recent_visits
    ADD CONSTRAINT fk_rails_fb6fc419cb FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: cluster_groups fk_rails_fdb8648a96; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cluster_groups
    ADD CONSTRAINT fk_rails_fdb8648a96 FOREIGN KEY (cluster_id) REFERENCES public.clusters(id) ON DELETE CASCADE;


--
-- Name: resource_label_events fk_rails_fe91ece594; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.resource_label_events
    ADD CONSTRAINT fk_rails_fe91ece594 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: ci_builds_metadata fk_rails_ffcf702a02; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ci_builds_metadata
    ADD CONSTRAINT fk_rails_ffcf702a02 FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: timelogs fk_timelogs_issues_issue_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timelogs
    ADD CONSTRAINT fk_timelogs_issues_issue_id FOREIGN KEY (issue_id) REFERENCES public.issues(id) ON DELETE CASCADE;


--
-- Name: timelogs fk_timelogs_merge_requests_merge_request_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.timelogs
    ADD CONSTRAINT fk_timelogs_merge_requests_merge_request_id FOREIGN KEY (merge_request_id) REFERENCES public.merge_requests(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

SET search_path TO "$user", public;

INSERT INTO "schema_migrations" (version) VALUES
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
('20151002121400'),
('20151002122929'),
('20151002122943'),
('20151005075649'),
('20151005150751'),
('20151005162154'),
('20151007120511'),
('20151008110232'),
('20151008123042'),
('20151008130321'),
('20151008143519'),
('20151012173029'),
('20151013092124'),
('20151016131433'),
('20151016195451'),
('20151016195706'),
('20151019111551'),
('20151019111703'),
('20151020145526'),
('20151020173516'),
('20151020173906'),
('20151023112551'),
('20151023144219'),
('20151026182941'),
('20151028152939'),
('20151103001141'),
('20151103133339'),
('20151103134857'),
('20151103134958'),
('20151104105513'),
('20151105094515'),
('20151106000015'),
('20151109100728'),
('20151109134526'),
('20151109134916'),
('20151110125604'),
('20151114113410'),
('20151116144118'),
('20151118162244'),
('20151201203948'),
('20151203162133'),
('20151203162134'),
('20151209144329'),
('20151209145909'),
('20151210030143'),
('20151210072243'),
('20151210125232'),
('20151210125927'),
('20151210125928'),
('20151210125929'),
('20151210125930'),
('20151210125931'),
('20151210125932'),
('20151215132013'),
('20151218154042'),
('20151221234414'),
('20151224123230'),
('20151228111122'),
('20151228150906'),
('20151228175719'),
('20151229102248'),
('20151229112614'),
('20151230132518'),
('20151231152326'),
('20151231202530'),
('20160106162223'),
('20160106164438'),
('20160109054846'),
('20160113111034'),
('20160118155830'),
('20160118232755'),
('20160119111158'),
('20160119112418'),
('20160119145451'),
('20160120172143'),
('20160121030729'),
('20160122185421'),
('20160128212447'),
('20160128233227'),
('20160129135155'),
('20160129155512'),
('20160202091601'),
('20160202164642'),
('20160204144558'),
('20160209130428'),
('20160210105555'),
('20160212123307'),
('20160217100506'),
('20160217174422'),
('20160220123949'),
('20160222153918'),
('20160223192159'),
('20160225090018'),
('20160225101956'),
('20160226114608'),
('20160227120001'),
('20160227120047'),
('20160229193553'),
('20160301124843'),
('20160301174731'),
('20160302151724'),
('20160302152808'),
('20160305220806'),
('20160307221555'),
('20160308212903'),
('20160309140734'),
('20160310124959'),
('20160310185910'),
('20160314094147'),
('20160314114439'),
('20160314143402'),
('20160315135439'),
('20160316123110'),
('20160316192622'),
('20160316204731'),
('20160317092222'),
('20160320204112'),
('20160324020319'),
('20160328112808'),
('20160328115649'),
('20160328121138'),
('20160329144452'),
('20160331133914'),
('20160331223143'),
('20160407120251'),
('20160412140240'),
('20160412173416'),
('20160412173417'),
('20160412173418'),
('20160413115152'),
('20160415062917'),
('20160415133440'),
('20160416180807'),
('20160416182152'),
('20160419120017'),
('20160419122101'),
('20160421130527'),
('20160425045124'),
('20160504091942'),
('20160504112519'),
('20160508194200'),
('20160508202603'),
('20160508215820'),
('20160508215920'),
('20160508221410'),
('20160509091049'),
('20160509201028'),
('20160516174813'),
('20160516224534'),
('20160518200441'),
('20160519203051'),
('20160522215720'),
('20160525205328'),
('20160527020117'),
('20160528043124'),
('20160530150109'),
('20160603075128'),
('20160603180330'),
('20160603182247'),
('20160608155312'),
('20160608195742'),
('20160608211215'),
('20160610140403'),
('20160610194713'),
('20160610201627'),
('20160610204157'),
('20160610204158'),
('20160610211845'),
('20160610301627'),
('20160614182521'),
('20160615142710'),
('20160615173316'),
('20160615191922'),
('20160616084004'),
('20160616102642'),
('20160616103005'),
('20160616103948'),
('20160617301627'),
('20160620115026'),
('20160621123729'),
('20160628085157'),
('20160629025435'),
('20160703180340'),
('20160705054938'),
('20160705054952'),
('20160705055254'),
('20160705055308'),
('20160705055809'),
('20160705055813'),
('20160705163108'),
('20160707104333'),
('20160712171823'),
('20160713200638'),
('20160713205315'),
('20160713222618'),
('20160715132507'),
('20160715134306'),
('20160715154212'),
('20160715204316'),
('20160715230841'),
('20160716115710'),
('20160716115711'),
('20160718153603'),
('20160721081015'),
('20160722221922'),
('20160724205507'),
('20160725083350'),
('20160725104020'),
('20160725104452'),
('20160727163552'),
('20160727191041'),
('20160727193336'),
('20160728081025'),
('20160728103734'),
('20160729173930'),
('20160801163421'),
('20160801163709'),
('20160802010328'),
('20160803161903'),
('20160804142904'),
('20160804150737'),
('20160805041956'),
('20160808085531'),
('20160808085602'),
('20160810102349'),
('20160810142633'),
('20160811172945'),
('20160816161312'),
('20160817133006'),
('20160817154936'),
('20160818205718'),
('20160819221631'),
('20160819221833'),
('20160819232256'),
('20160823081327'),
('20160823083941'),
('20160823213309'),
('20160824103857'),
('20160824121037'),
('20160824124900'),
('20160825052008'),
('20160827011312'),
('20160829114652'),
('20160830203109'),
('20160830211132'),
('20160830232601'),
('20160831214002'),
('20160831214543'),
('20160831223750'),
('20160901141443'),
('20160901213340'),
('20160902122721'),
('20160907131111'),
('20160913162434'),
('20160913212128'),
('20160914131004'),
('20160915042921'),
('20160919144305'),
('20160919145149'),
('20160920160832'),
('20160926145521'),
('20161006104309'),
('20161007073613'),
('20161007133303'),
('20161010142410'),
('20161011222551'),
('20161012180455'),
('20161014173530'),
('20161017091941'),
('20161017095000'),
('20161017125927'),
('20161018024215'),
('20161018024550'),
('20161018124658'),
('20161019190736'),
('20161019213545'),
('20161020075734'),
('20161020075830'),
('20161020083353'),
('20161020180657'),
('20161021114307'),
('20161024042317'),
('20161025231710'),
('20161031155516'),
('20161031171301'),
('20161031174110'),
('20161031181638'),
('20161103171205'),
('20161103191444'),
('20161106185620'),
('20161109150329'),
('20161113184239'),
('20161114024742'),
('20161115173905'),
('20161117114805'),
('20161118183841'),
('20161124111390'),
('20161124111395'),
('20161124111402'),
('20161124141322'),
('20161128095517'),
('20161128142110'),
('20161128161412'),
('20161128170531'),
('20161130095245'),
('20161130101252'),
('20161201001911'),
('20161201155511'),
('20161201160452'),
('20161202152031'),
('20161202152035'),
('20161206003819'),
('20161206153749'),
('20161206153751'),
('20161206153753'),
('20161206153754'),
('20161207231620'),
('20161207231621'),
('20161207231626'),
('20161209153400'),
('20161209165216'),
('20161212142807'),
('20161213172958'),
('20161220141214'),
('20161221140236'),
('20161221152132'),
('20161221153951'),
('20161223034433'),
('20161223034646'),
('20161226122833'),
('20161227192806'),
('20161228124936'),
('20161228135550'),
('20170104150317'),
('20170106142508'),
('20170106172224'),
('20170120131253'),
('20170121123724'),
('20170121130655'),
('20170124174637'),
('20170124193147'),
('20170124193205'),
('20170126174819'),
('20170127032550'),
('20170130204620'),
('20170130221926'),
('20170131214021'),
('20170131221752'),
('20170204172458'),
('20170204181513'),
('20170206040400'),
('20170206071414'),
('20170206101007'),
('20170206101030'),
('20170206115204'),
('20170209140523'),
('20170210062829'),
('20170210075922'),
('20170210103609'),
('20170210131347'),
('20170211073944'),
('20170214084746'),
('20170214111112'),
('20170215200045'),
('20170216135621'),
('20170216141440'),
('20170217132157'),
('20170217151947'),
('20170217151948'),
('20170217151949'),
('20170222111732'),
('20170222143317'),
('20170222143500'),
('20170222143603'),
('20170301101006'),
('20170301125302'),
('20170301195939'),
('20170301205639'),
('20170301205640'),
('20170305180853'),
('20170305203726'),
('20170306170512'),
('20170307125949'),
('20170309171644'),
('20170309173138'),
('20170312114329'),
('20170312114529'),
('20170313133418'),
('20170313213916'),
('20170314082049'),
('20170315174634'),
('20170315194013'),
('20170316061730'),
('20170316163845'),
('20170317162059'),
('20170317203554'),
('20170320173259'),
('20170322013926'),
('20170324160416'),
('20170327091750'),
('20170328010804'),
('20170329095325'),
('20170329095907'),
('20170329124448'),
('20170330141723'),
('20170402231018'),
('20170404163427'),
('20170404170532'),
('20170405080720'),
('20170406111121'),
('20170406114958'),
('20170406115029'),
('20170406142253'),
('20170407114956'),
('20170407122426'),
('20170407135259'),
('20170407140450'),
('20170408033905'),
('20170410133135'),
('20170412174900'),
('20170413035209'),
('20170418103908'),
('20170419001229'),
('20170421102337'),
('20170423064036'),
('20170424095707'),
('20170424142900'),
('20170425112128'),
('20170425112628'),
('20170425114731'),
('20170425121605'),
('20170425130047'),
('20170426175636'),
('20170426181740'),
('20170427103502'),
('20170427215854'),
('20170428064307'),
('20170502065653'),
('20170502070007'),
('20170502091007'),
('20170502101023'),
('20170502135553'),
('20170502140503'),
('20170503004125'),
('20170503004425'),
('20170503004426'),
('20170503004427'),
('20170503021915'),
('20170503022548'),
('20170503023315'),
('20170503114228'),
('20170503120310'),
('20170503140201'),
('20170503140202'),
('20170503184421'),
('20170503185032'),
('20170504102911'),
('20170504182103'),
('20170506085040'),
('20170506091344'),
('20170506185517'),
('20170507205316'),
('20170508153950'),
('20170508170547'),
('20170508190732'),
('20170510101043'),
('20170511082759'),
('20170511083824'),
('20170511100900'),
('20170511101000'),
('20170516153305'),
('20170516165238'),
('20170516181025'),
('20170516183131'),
('20170518200835'),
('20170518231126'),
('20170519102115'),
('20170521184006'),
('20170523073948'),
('20170523083112'),
('20170523091700'),
('20170523121229'),
('20170524125940'),
('20170524161101'),
('20170525130346'),
('20170525130758'),
('20170525132202'),
('20170525140254'),
('20170525174156'),
('20170526185602'),
('20170526185842'),
('20170526185858'),
('20170526185901'),
('20170526185921'),
('20170526190000'),
('20170530130129'),
('20170531180233'),
('20170531202042'),
('20170531203055'),
('20170601163708'),
('20170602154736'),
('20170602154813'),
('20170603200744'),
('20170606154216'),
('20170606202615'),
('20170607121233'),
('20170608152747'),
('20170608152748'),
('20170608171156'),
('20170609183112'),
('20170612071012'),
('20170613111224'),
('20170613154149'),
('20170614115405'),
('20170616133147'),
('20170619144837'),
('20170620064728'),
('20170620065449'),
('20170621102400'),
('20170622130029'),
('20170622132212'),
('20170622135451'),
('20170622135628'),
('20170622135728'),
('20170622162730'),
('20170623080805'),
('20170627101016'),
('20170628080858'),
('20170629171610'),
('20170629180131'),
('20170703102400'),
('20170703130158'),
('20170706151212'),
('20170707183807'),
('20170707184243'),
('20170707184244'),
('20170710083355'),
('20170711145320'),
('20170711145558'),
('20170713104829'),
('20170717074009'),
('20170717111152'),
('20170717150329'),
('20170717200542'),
('20170719150301'),
('20170720111708'),
('20170720122741'),
('20170720130522'),
('20170720130749'),
('20170724214302'),
('20170725145659'),
('20170727123534'),
('20170728101014'),
('20170731175128'),
('20170731183033'),
('20170802013652'),
('20170803090603'),
('20170803130232'),
('20170807071105'),
('20170807160457'),
('20170807190736'),
('20170809133343'),
('20170809134534'),
('20170809142252'),
('20170809161910'),
('20170815060945'),
('20170815221154'),
('20170816102555'),
('20170816133938'),
('20170816133940'),
('20170816143940'),
('20170816153940'),
('20170816234252'),
('20170817123339'),
('20170820100558'),
('20170820120108'),
('20170822101017'),
('20170824101926'),
('20170824162758'),
('20170825015534'),
('20170825104051'),
('20170825154015'),
('20170827123848'),
('20170828093725'),
('20170828135939'),
('20170828170502'),
('20170828170513'),
('20170828170516'),
('20170830084744'),
('20170830125940'),
('20170830130119'),
('20170830131015'),
('20170830150306'),
('20170831092813'),
('20170831195038'),
('20170901071411'),
('20170904092148'),
('20170905112933'),
('20170906133745'),
('20170907170235'),
('20170909090114'),
('20170909150936'),
('20170912113435'),
('20170913131410'),
('20170913180600'),
('20170914135630'),
('20170918072948'),
('20170918072949'),
('20170918111708'),
('20170918140927'),
('20170918222253'),
('20170918223303'),
('20170919211300'),
('20170921101004'),
('20170921115009'),
('20170924094327'),
('20170925184228'),
('20170926150348'),
('20170927095921'),
('20170927112318'),
('20170927112319'),
('20170927122209'),
('20170927161718'),
('20170928100231'),
('20170928124105'),
('20170928133643'),
('20170929080234'),
('20170929131201'),
('20171004121444'),
('20171005130944'),
('20171006090001'),
('20171006090010'),
('20171006090100'),
('20171006091000'),
('20171006220837'),
('20171012101043'),
('20171012125712'),
('20171012150314'),
('20171013094327'),
('20171013104327'),
('20171017145932'),
('20171019141859'),
('20171025110159'),
('20171026082505'),
('20171031100710'),
('20171101130535'),
('20171101134435'),
('20171103000000'),
('20171103140253'),
('20171106101200'),
('20171106132212'),
('20171106133143'),
('20171106133144'),
('20171106133911'),
('20171106135924'),
('20171106150657'),
('20171106151218'),
('20171106154015'),
('20171106155656'),
('20171106171453'),
('20171106180641'),
('20171114104051'),
('20171114150259'),
('20171114160005'),
('20171114160904'),
('20171114161720'),
('20171114161914'),
('20171114162227'),
('20171115164540'),
('20171116135628'),
('20171121135738'),
('20171121144800'),
('20171121160421'),
('20171122131600'),
('20171123094802'),
('20171123101020'),
('20171123101046'),
('20171124095655'),
('20171124100152'),
('20171124104327'),
('20171124125042'),
('20171124125748'),
('20171124132536'),
('20171124150326'),
('20171127151038'),
('20171128214150'),
('20171204204233'),
('20171205190711'),
('20171206221519'),
('20171207150300'),
('20171207150343'),
('20171207150344'),
('20171207185153'),
('20171211131502'),
('20171211145425'),
('20171212203433'),
('20171213160445'),
('20171214144320'),
('20171215113714'),
('20171215121205'),
('20171215121259'),
('20171216111734'),
('20171216112339'),
('20171218140451'),
('20171219121201'),
('20171220191323'),
('20171221140220'),
('20171222115326'),
('20171222183504'),
('20171229225929'),
('20171230123729'),
('20180101160629'),
('20180101160630'),
('20180102220145'),
('20180103123548'),
('20180104131052'),
('20180105212544'),
('20180109183319'),
('20180113220114'),
('20180115094742'),
('20180115113902'),
('20180115201419'),
('20180116193854'),
('20180119121225'),
('20180119135717'),
('20180119160751'),
('20180122154930'),
('20180122162010'),
('20180125214301'),
('20180129193323'),
('20180201102129'),
('20180201110056'),
('20180201145907'),
('20180202111106'),
('20180204200836'),
('20180206200543'),
('20180208183958'),
('20180209115333'),
('20180209165249'),
('20180212030105'),
('20180212101828'),
('20180212101928'),
('20180212102028'),
('20180213131630'),
('20180214093516'),
('20180214155405'),
('20180215181245'),
('20180216120000'),
('20180216120010'),
('20180216120020'),
('20180216120030'),
('20180216120040'),
('20180216120050'),
('20180216121020'),
('20180216121030'),
('20180219153455'),
('20180220150310'),
('20180221151752'),
('20180222043024'),
('20180223120443'),
('20180223124427'),
('20180223144945'),
('20180226050030'),
('20180227182112'),
('20180228172924'),
('20180301010859'),
('20180301084653'),
('20180302152117'),
('20180305095250'),
('20180305100050'),
('20180305144721'),
('20180306074045'),
('20180306134842'),
('20180306164012'),
('20180307012445'),
('20180308052825'),
('20180308125206'),
('20180309121820'),
('20180309160427'),
('20180314100728'),
('20180314145917'),
('20180315160435'),
('20180319190020'),
('20180320182229'),
('20180323150945'),
('20180326202229'),
('20180327101207'),
('20180330121048'),
('20180403035759'),
('20180405101928'),
('20180405142733'),
('20180406204716'),
('20180408143354'),
('20180408143355'),
('20180409170809'),
('20180413022611'),
('20180416155103'),
('20180417090132'),
('20180417101040'),
('20180417101940'),
('20180418053107'),
('20180420010016'),
('20180420010616'),
('20180420080616'),
('20180423204600'),
('20180424090541'),
('20180424134533'),
('20180424151928'),
('20180424160449'),
('20180425075446'),
('20180425131009'),
('20180425205249'),
('20180426102016'),
('20180430101916'),
('20180430143705'),
('20180502122856'),
('20180502134117'),
('20180503131624'),
('20180503141722'),
('20180503150427'),
('20180503175053'),
('20180503175054'),
('20180503193542'),
('20180503193953'),
('20180503200320'),
('20180504195842'),
('20180507083701'),
('20180508055821'),
('20180508100222'),
('20180508102840'),
('20180508135515'),
('20180511090724'),
('20180511131058'),
('20180511174224'),
('20180512061621'),
('20180514161336'),
('20180515005612'),
('20180515121227'),
('20180517082340'),
('20180521162137'),
('20180521171529'),
('20180523042841'),
('20180523125103'),
('20180524132016'),
('20180529093006'),
('20180529152628'),
('20180530135500'),
('20180531185349'),
('20180531220618'),
('20180601213245'),
('20180603190921'),
('20180604123514'),
('20180607071808'),
('20180608091413'),
('20180608110058'),
('20180608201435'),
('20180612103626'),
('20180613081317'),
('20180619121030'),
('20180625113853'),
('20180626125654'),
('20180628124813'),
('20180629153018'),
('20180629191052'),
('20180702120647'),
('20180702124358'),
('20180702134423'),
('20180704145007'),
('20180704204006'),
('20180705160945'),
('20180706223200'),
('20180710162338'),
('20180711103851'),
('20180711103922'),
('20180713092803'),
('20180717125853'),
('20180718005113'),
('20180720023512'),
('20180722103201'),
('20180723130817'),
('20180723135214'),
('20180726172057'),
('20180807153545'),
('20180808162000'),
('20180809195358'),
('20180813101999'),
('20180813102000'),
('20180814153625'),
('20180815040323'),
('20180815160409'),
('20180815170510'),
('20180815175440'),
('20180816161409'),
('20180816193530'),
('20180826111825'),
('20180831164904'),
('20180831164905'),
('20180831164907'),
('20180831164908'),
('20180831164909'),
('20180831164910'),
('20180901171833'),
('20180901200537'),
('20180906051323'),
('20180906101639'),
('20180907015926'),
('20180910115836'),
('20180910153412'),
('20180910153413'),
('20180912111628'),
('20180913051323'),
('20180913142237'),
('20180914162043'),
('20180914201132'),
('20180916011959'),
('20180916014356'),
('20180917172041'),
('20180924141949'),
('20180924190739'),
('20180924201039'),
('20180925200829'),
('20180927073410'),
('20181002172433'),
('20181005110927'),
('20181005125926'),
('20181006004100'),
('20181008145341'),
('20181008145359'),
('20181008200441'),
('20181009190428'),
('20181010133639'),
('20181010235606'),
('20181013005024'),
('20181014121030'),
('20181014203236'),
('20181015155839'),
('20181016141739'),
('20181016152238'),
('20181017001059'),
('20181019032400'),
('20181019032408'),
('20181019105553'),
('20181022135539'),
('20181022173835'),
('20181023104858'),
('20181023144439'),
('20181025115728'),
('20181026091631'),
('20181026143227'),
('20181027114222'),
('20181028120717'),
('20181030135124'),
('20181030154446'),
('20181031145139'),
('20181031190558'),
('20181031190559'),
('20181101091005'),
('20181101091124'),
('20181101144347'),
('20181101191341'),
('20181105201455'),
('20181106135939'),
('20181107054254'),
('20181108091549'),
('20181112103239'),
('20181115140140'),
('20181116050532'),
('20181116141415'),
('20181116141504'),
('20181119081539'),
('20181119132520'),
('20181120082911'),
('20181120091639'),
('20181120151656'),
('20181121101842'),
('20181121101843'),
('20181121111200'),
('20181122160027'),
('20181123042307'),
('20181123135036'),
('20181123144235'),
('20181126150622'),
('20181126153547'),
('20181128123704'),
('20181129104854'),
('20181129104944'),
('20181130102132'),
('20181203002526'),
('20181204154019'),
('20181205171941'),
('20181211092510'),
('20181211092514'),
('20181212104941'),
('20181212171634'),
('20181219130552'),
('20181219145520'),
('20181219145521'),
('20181228175414'),
('20190102152410'),
('20190103140724'),
('20190104182041'),
('20190107151020'),
('20190108192941'),
('20190109153125'),
('20190114172110'),
('20190115054215'),
('20190115054216'),
('20190115092821'),
('20190116234221'),
('20190124200344'),
('20190130091630'),
('20190131122559'),
('20190204115450'),
('20190206193120'),
('20190211131150'),
('20190214112022'),
('20190215154930'),
('20190218134158'),
('20190218134209'),
('20190220142344'),
('20190220150130'),
('20190222051615'),
('20190225152525'),
('20190225160300'),
('20190225160301'),
('20190228192410'),
('20190301081611'),
('20190301182457'),
('20190312071108'),
('20190312113229'),
('20190312113634'),
('20190313092516'),
('20190315191339'),
('20190320174702'),
('20190322132835'),
('20190322164830'),
('20190325080727'),
('20190325105715'),
('20190325111602'),
('20190325165127'),
('20190326164045'),
('20190327163904'),
('20190329085614'),
('20190408163745'),
('20190412155659'),
('20190415030217'),
('20190415095825'),
('20190416185130'),
('20190416213556'),
('20190416213615'),
('20190416213631'),
('20190418182545'),
('20190422082247'),
('20190424134256'),
('20190426180107'),
('20190429082448'),
('20190506135337'),
('20190506135400'),
('20190515125613'),
('20190516011213'),
('20190516151857'),
('20190516155724'),
('20190522143720'),
('20190523112344'),
('20190524062810'),
('20190524071727'),
('20190524073827'),
('20190527194830'),
('20190527194900'),
('20190528180441'),
('20190529142545'),
('20190530042141'),
('20190530154715'),
('20190604184643'),
('20190605104727'),
('20190606014128'),
('20190611161641');


