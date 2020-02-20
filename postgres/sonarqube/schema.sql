--
-- PostgreSQL database dump
--
-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
SET
  statement_timeout = 0;
SET
  lock_timeout = 0;
SET
  idle_in_transaction_session_timeout = 0;
SET
  client_encoding = 'UTF8';
SET
  standard_conforming_strings = on;
SELECT
  pg_catalog.set_config('search_path', '', false);
SET
  check_function_bodies = false;
SET
  xmloption = content;
SET
  client_min_messages = warning;
SET
  row_security = off;
--
  -- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
  --
  CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
--
  -- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
  --
  COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
SET
  default_tablespace = '';
SET
  default_with_oids = false;
--
  -- Name: active_rule_parameters; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.active_rule_parameters (
    id integer NOT NULL,
    active_rule_id integer NOT NULL,
    rules_parameter_id integer NOT NULL,
    value character varying(4000),
    rules_parameter_key character varying(128)
  );
ALTER TABLE public.active_rule_parameters OWNER TO prisma;
--
  -- Name: active_rule_parameters_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.active_rule_parameters_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.active_rule_parameters_id_seq OWNER TO prisma;
--
  -- Name: active_rule_parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.active_rule_parameters_id_seq OWNED BY public.active_rule_parameters.id;
--
  -- Name: active_rules; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.active_rules (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    rule_id integer NOT NULL,
    failure_level integer NOT NULL,
    inheritance character varying(10),
    created_at bigint,
    updated_at bigint
  );
ALTER TABLE public.active_rules OWNER TO prisma;
--
  -- Name: active_rules_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.active_rules_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.active_rules_id_seq OWNER TO prisma;
--
  -- Name: active_rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.active_rules_id_seq OWNED BY public.active_rules.id;
--
  -- Name: alm_app_installs; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.alm_app_installs (
    uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    owner_id character varying(4000) NOT NULL,
    install_id character varying(4000) NOT NULL,
    is_owner_user boolean NOT NULL,
    user_external_id character varying(255),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.alm_app_installs OWNER TO prisma;
--
  -- Name: alm_settings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.alm_settings (
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
ALTER TABLE public.alm_settings OWNER TO prisma;
--
  -- Name: analysis_properties; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.analysis_properties (
    uuid character varying(40) NOT NULL,
    analysis_uuid character varying(40) NOT NULL,
    kee character varying(512) NOT NULL,
    text_value character varying(4000),
    clob_value text,
    is_empty boolean NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.analysis_properties OWNER TO prisma;
--
  -- Name: ce_activity; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ce_activity (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    task_type character varying(15) NOT NULL,
    main_component_uuid character varying(40),
    component_uuid character varying(40),
    status character varying(15) NOT NULL,
    main_is_last boolean NOT NULL,
    main_is_last_key character varying(55) NOT NULL,
    is_last boolean NOT NULL,
    is_last_key character varying(55) NOT NULL,
    submitter_uuid character varying(255),
    submitted_at bigint NOT NULL,
    started_at bigint,
    executed_at bigint,
    execution_count integer NOT NULL,
    execution_time_ms bigint,
    analysis_uuid character varying(50),
    error_message character varying(1000),
    error_stacktrace text,
    error_type character varying(20),
    worker_uuid character varying(40),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.ce_activity OWNER TO prisma;
--
  -- Name: ce_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.ce_activity_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.ce_activity_id_seq OWNER TO prisma;
--
  -- Name: ce_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.ce_activity_id_seq OWNED BY public.ce_activity.id;
--
  -- Name: ce_queue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ce_queue (
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
ALTER TABLE public.ce_queue OWNER TO prisma;
--
  -- Name: ce_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.ce_queue_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.ce_queue_id_seq OWNER TO prisma;
--
  -- Name: ce_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.ce_queue_id_seq OWNED BY public.ce_queue.id;
--
  -- Name: ce_scanner_context; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ce_scanner_context (
    task_uuid character varying(40) NOT NULL,
    context_data bytea NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.ce_scanner_context OWNER TO prisma;
--
  -- Name: ce_task_characteristics; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ce_task_characteristics (
    uuid character varying(40) NOT NULL,
    task_uuid character varying(40) NOT NULL,
    kee character varying(512) NOT NULL,
    text_value character varying(512)
  );
ALTER TABLE public.ce_task_characteristics OWNER TO prisma;
--
  -- Name: ce_task_input; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ce_task_input (
    task_uuid character varying(40) NOT NULL,
    input_data bytea,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.ce_task_input OWNER TO prisma;
--
  -- Name: ce_task_message; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ce_task_message (
    uuid character varying(40) NOT NULL,
    task_uuid character varying(40) NOT NULL,
    message character varying(4000) NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.ce_task_message OWNER TO prisma;
--
  -- Name: default_qprofiles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.default_qprofiles (
    organization_uuid character varying(40) NOT NULL,
    language character varying(20) NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.default_qprofiles OWNER TO prisma;
--
  -- Name: deprecated_rule_keys; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.deprecated_rule_keys (
    uuid character varying(40) NOT NULL,
    rule_id integer NOT NULL,
    old_repository_key character varying(255) NOT NULL,
    old_rule_key character varying(200) NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.deprecated_rule_keys OWNER TO prisma;
--
  -- Name: duplications_index; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.duplications_index (
    id bigint NOT NULL,
    analysis_uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    hash character varying(50) NOT NULL,
    index_in_file integer NOT NULL,
    start_line integer NOT NULL,
    end_line integer NOT NULL
  );
ALTER TABLE public.duplications_index OWNER TO prisma;
--
  -- Name: duplications_index_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.duplications_index_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.duplications_index_id_seq OWNER TO prisma;
--
  -- Name: duplications_index_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.duplications_index_id_seq OWNED BY public.duplications_index.id;
--
  -- Name: es_queue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.es_queue (
    uuid character varying(40) NOT NULL,
    doc_type character varying(40) NOT NULL,
    doc_id character varying(4000) NOT NULL,
    doc_id_type character varying(20),
    doc_routing character varying(4000),
    created_at bigint NOT NULL
  );
ALTER TABLE public.es_queue OWNER TO prisma;
--
  -- Name: event_component_changes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.event_component_changes (
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
ALTER TABLE public.event_component_changes OWNER TO prisma;
--
  -- Name: events; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.events (
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
ALTER TABLE public.events OWNER TO prisma;
--
  -- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.events_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.events_id_seq OWNER TO prisma;
--
  -- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
--
  -- Name: file_sources; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.file_sources (
    id integer NOT NULL,
    project_uuid character varying(50) NOT NULL,
    file_uuid character varying(50) NOT NULL,
    line_hashes text,
    line_hashes_version integer,
    data_hash character varying(50),
    src_hash character varying(50),
    revision character varying(100),
    line_count integer NOT NULL,
    binary_data bytea,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.file_sources OWNER TO prisma;
--
  -- Name: file_sources_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.file_sources_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.file_sources_id_seq OWNER TO prisma;
--
  -- Name: file_sources_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.file_sources_id_seq OWNED BY public.file_sources.id;
--
  -- Name: group_roles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.group_roles (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    group_id integer,
    resource_id integer,
    role character varying(64) NOT NULL
  );
ALTER TABLE public.group_roles OWNER TO prisma;
--
  -- Name: group_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.group_roles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.group_roles_id_seq OWNER TO prisma;
--
  -- Name: group_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.group_roles_id_seq OWNED BY public.group_roles.id;
--
  -- Name: groups; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.groups (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    name character varying(500),
    description character varying(200),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
  );
ALTER TABLE public.groups OWNER TO prisma;
--
  -- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.groups_id_seq OWNER TO prisma;
--
  -- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
--
  -- Name: groups_users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.groups_users (user_id bigint, group_id bigint);
ALTER TABLE public.groups_users OWNER TO prisma;
--
  -- Name: internal_component_props; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.internal_component_props (
    uuid character varying(40) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    kee character varying(512) NOT NULL,
    value character varying(4000),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.internal_component_props OWNER TO prisma;
--
  -- Name: internal_properties; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.internal_properties (
    kee character varying(20) NOT NULL,
    is_empty boolean NOT NULL,
    text_value character varying(4000),
    clob_value text,
    created_at bigint NOT NULL
  );
ALTER TABLE public.internal_properties OWNER TO prisma;
--
  -- Name: issue_changes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issue_changes (
    id bigint NOT NULL,
    kee character varying(50),
    issue_key character varying(50) NOT NULL,
    user_login character varying(255),
    change_type character varying(20),
    change_data text,
    created_at bigint,
    updated_at bigint,
    issue_change_creation_date bigint
  );
ALTER TABLE public.issue_changes OWNER TO prisma;
--
  -- Name: issue_changes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.issue_changes_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.issue_changes_id_seq OWNER TO prisma;
--
  -- Name: issue_changes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.issue_changes_id_seq OWNED BY public.issue_changes.id;
--
  -- Name: issues; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.issues (
    id bigint NOT NULL,
    kee character varying(50) NOT NULL,
    rule_id integer,
    severity character varying(10),
    manual_severity boolean NOT NULL,
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
    locations bytea,
    issue_type smallint,
    from_hotspot boolean
  );
ALTER TABLE public.issues OWNER TO prisma;
--
  -- Name: issues_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.issues_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.issues_id_seq OWNER TO prisma;
--
  -- Name: issues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.issues_id_seq OWNED BY public.issues.id;
--
  -- Name: live_measures; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.live_measures (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    metric_id integer NOT NULL,
    value numeric(38, 20),
    text_value character varying(4000),
    variation numeric(38, 20),
    measure_data bytea,
    update_marker character varying(40),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.live_measures OWNER TO prisma;
--
  -- Name: manual_measures; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.manual_measures (
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
ALTER TABLE public.manual_measures OWNER TO prisma;
--
  -- Name: manual_measures_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.manual_measures_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.manual_measures_id_seq OWNER TO prisma;
--
  -- Name: manual_measures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.manual_measures_id_seq OWNED BY public.manual_measures.id;
--
  -- Name: metrics; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.metrics (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    description character varying(255),
    direction integer DEFAULT 0 NOT NULL,
    domain character varying(64),
    short_name character varying(64),
    qualitative boolean DEFAULT false NOT NULL,
    val_type character varying(8),
    user_managed boolean DEFAULT false,
    enabled boolean DEFAULT true,
    worst_value numeric(38, 20),
    best_value numeric(38, 20),
    optimized_best_value boolean,
    hidden boolean,
    delete_historical_data boolean,
    decimal_scale integer
  );
ALTER TABLE public.metrics OWNER TO prisma;
--
  -- Name: metrics_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.metrics_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.metrics_id_seq OWNER TO prisma;
--
  -- Name: metrics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.metrics_id_seq OWNED BY public.metrics.id;
--
  -- Name: new_code_periods; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.new_code_periods (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(40),
    branch_uuid character varying(40),
    type character varying(30) NOT NULL,
    value character varying(40),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.new_code_periods OWNER TO prisma;
--
  -- Name: notifications; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.notifications (id integer NOT NULL, data bytea);
ALTER TABLE public.notifications OWNER TO prisma;
--
  -- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.notifications_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.notifications_id_seq OWNER TO prisma;
--
  -- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
--
  -- Name: org_qprofiles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.org_qprofiles (
    uuid character varying(255) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    rules_profile_uuid character varying(255) NOT NULL,
    parent_uuid character varying(255),
    last_used bigint,
    user_updated_at bigint,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.org_qprofiles OWNER TO prisma;
--
  -- Name: org_quality_gates; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.org_quality_gates (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    quality_gate_uuid character varying(40) NOT NULL
  );
ALTER TABLE public.org_quality_gates OWNER TO prisma;
--
  -- Name: organization_alm_bindings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.organization_alm_bindings (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    alm_app_install_uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    url character varying(2000) NOT NULL,
    user_uuid character varying(255) NOT NULL,
    members_sync_enabled boolean,
    created_at bigint NOT NULL
  );
ALTER TABLE public.organization_alm_bindings OWNER TO prisma;
--
  -- Name: organization_members; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.organization_members (
    organization_uuid character varying(40) NOT NULL,
    user_id integer NOT NULL
  );
ALTER TABLE public.organization_members OWNER TO prisma;
--
  -- Name: organizations; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.organizations (
    uuid character varying(40) NOT NULL,
    kee character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(256),
    url character varying(256),
    avatar_url character varying(256),
    guarded boolean,
    default_group_id integer,
    default_quality_gate_uuid character varying(40) NOT NULL,
    default_perm_template_project character varying(40),
    default_perm_template_app character varying(40),
    default_perm_template_port character varying(40),
    new_project_private boolean NOT NULL,
    subscription character varying(40) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.organizations OWNER TO prisma;
--
  -- Name: perm_templates_groups; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.perm_templates_groups (
    id integer NOT NULL,
    group_id integer,
    template_id integer NOT NULL,
    permission_reference character varying(64) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
  );
ALTER TABLE public.perm_templates_groups OWNER TO prisma;
--
  -- Name: perm_templates_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.perm_templates_groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.perm_templates_groups_id_seq OWNER TO prisma;
--
  -- Name: perm_templates_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.perm_templates_groups_id_seq OWNED BY public.perm_templates_groups.id;
--
  -- Name: perm_templates_users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.perm_templates_users (
    id integer NOT NULL,
    user_id integer NOT NULL,
    template_id integer NOT NULL,
    permission_reference character varying(64) NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
  );
ALTER TABLE public.perm_templates_users OWNER TO prisma;
--
  -- Name: perm_templates_users_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.perm_templates_users_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.perm_templates_users_id_seq OWNER TO prisma;
--
  -- Name: perm_templates_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.perm_templates_users_id_seq OWNED BY public.perm_templates_users.id;
--
  -- Name: perm_tpl_characteristics; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.perm_tpl_characteristics (
    id integer NOT NULL,
    template_id integer NOT NULL,
    permission_key character varying(64) NOT NULL,
    with_project_creator boolean DEFAULT false NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.perm_tpl_characteristics OWNER TO prisma;
--
  -- Name: perm_tpl_characteristics_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.perm_tpl_characteristics_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.perm_tpl_characteristics_id_seq OWNER TO prisma;
--
  -- Name: perm_tpl_characteristics_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.perm_tpl_characteristics_id_seq OWNED BY public.perm_tpl_characteristics.id;
--
  -- Name: permission_templates; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.permission_templates (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    name character varying(100) NOT NULL,
    kee character varying(100) NOT NULL,
    description character varying(4000),
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    key_pattern character varying(500)
  );
ALTER TABLE public.permission_templates OWNER TO prisma;
--
  -- Name: permission_templates_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.permission_templates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.permission_templates_id_seq OWNER TO prisma;
--
  -- Name: permission_templates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.permission_templates_id_seq OWNED BY public.permission_templates.id;
--
  -- Name: plugins; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.plugins (
    uuid character varying(40) NOT NULL,
    kee character varying(200) NOT NULL,
    base_plugin_key character varying(200),
    file_hash character varying(200) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.plugins OWNER TO prisma;
--
  -- Name: project_alm_bindings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_alm_bindings (
    uuid character varying(40) NOT NULL,
    alm_id character varying(40) NOT NULL,
    repo_id character varying(256) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    github_slug character varying(256),
    url character varying(2000) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.project_alm_bindings OWNER TO prisma;
--
  -- Name: project_alm_settings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_alm_settings (
    uuid character varying(40) NOT NULL,
    alm_setting_uuid character varying(40) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    alm_repo character varying(256),
    alm_slug character varying(256),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.project_alm_settings OWNER TO prisma;
--
  -- Name: project_branches; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_branches (
    uuid character varying(50) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    kee character varying(255) NOT NULL,
    branch_type character varying(12),
    merge_branch_uuid character varying(50),
    key_type character varying(12) NOT NULL,
    pull_request_binary bytea,
    manual_baseline_analysis_uuid character varying(40),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL,
    exclude_from_purge boolean DEFAULT false NOT NULL
  );
ALTER TABLE public.project_branches OWNER TO prisma;
--
  -- Name: project_links; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_links (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    link_type character varying(20) NOT NULL,
    name character varying(128),
    href character varying(2048) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.project_links OWNER TO prisma;
--
  -- Name: project_mappings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_mappings (
    uuid character varying(40) NOT NULL,
    key_type character varying(200) NOT NULL,
    kee character varying(4000) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.project_mappings OWNER TO prisma;
--
  -- Name: project_measures; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_measures (
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
    measure_data bytea
  );
ALTER TABLE public.project_measures OWNER TO prisma;
--
  -- Name: project_measures_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.project_measures_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.project_measures_id_seq OWNER TO prisma;
--
  -- Name: project_measures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.project_measures_id_seq OWNED BY public.project_measures.id;
--
  -- Name: project_qgates; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_qgates (
    project_uuid character varying(40) NOT NULL,
    quality_gate_uuid character varying(40) NOT NULL
  );
ALTER TABLE public.project_qgates OWNER TO prisma;
--
  -- Name: project_qprofiles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.project_qprofiles (
    id integer NOT NULL,
    project_uuid character varying(50) NOT NULL,
    profile_key character varying(50) NOT NULL
  );
ALTER TABLE public.project_qprofiles OWNER TO prisma;
--
  -- Name: project_qprofiles_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.project_qprofiles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.project_qprofiles_id_seq OWNER TO prisma;
--
  -- Name: project_qprofiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.project_qprofiles_id_seq OWNED BY public.project_qprofiles.id;
--
  -- Name: projects; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.projects (
    id integer NOT NULL,
    uuid character varying(50) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    kee character varying(400),
    deprecated_kee character varying(400),
    name character varying(2000),
    long_name character varying(2000),
    description character varying(2000),
    enabled boolean DEFAULT true NOT NULL,
    scope character varying(3),
    qualifier character varying(10),
    private boolean NOT NULL,
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
    b_changed boolean,
    b_name character varying(500),
    b_long_name character varying(500),
    b_description character varying(2000),
    b_enabled boolean,
    b_qualifier character varying(10),
    b_language character varying(20),
    b_copy_component_uuid character varying(50),
    b_path character varying(2000),
    b_uuid_path character varying(1500),
    b_module_uuid character varying(50),
    b_module_uuid_path character varying(1500),
    created_at timestamp without time zone
  );
ALTER TABLE public.projects OWNER TO prisma;
--
  -- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.projects_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.projects_id_seq OWNER TO prisma;
--
  -- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;
--
  -- Name: properties; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.properties (
    id integer NOT NULL,
    prop_key character varying(512) NOT NULL,
    resource_id bigint,
    user_id bigint,
    is_empty boolean NOT NULL,
    text_value character varying(4000),
    clob_value text,
    created_at bigint NOT NULL
  );
ALTER TABLE public.properties OWNER TO prisma;
--
  -- Name: properties_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.properties_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.properties_id_seq OWNER TO prisma;
--
  -- Name: properties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.properties_id_seq OWNED BY public.properties.id;
--
  -- Name: qprofile_changes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qprofile_changes (
    kee character varying(40) NOT NULL,
    rules_profile_uuid character varying(255) NOT NULL,
    change_type character varying(20) NOT NULL,
    user_uuid character varying(255),
    change_data text,
    created_at bigint NOT NULL
  );
ALTER TABLE public.qprofile_changes OWNER TO prisma;
--
  -- Name: qprofile_edit_groups; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qprofile_edit_groups (
    uuid character varying(40) NOT NULL,
    group_id integer NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.qprofile_edit_groups OWNER TO prisma;
--
  -- Name: qprofile_edit_users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qprofile_edit_users (
    uuid character varying(40) NOT NULL,
    user_id integer NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.qprofile_edit_users OWNER TO prisma;
--
  -- Name: quality_gate_conditions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.quality_gate_conditions (
    id integer NOT NULL,
    qgate_id integer,
    metric_id integer,
    period integer,
    operator character varying(3),
    value_error character varying(64),
    value_warning character varying(64),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
  );
ALTER TABLE public.quality_gate_conditions OWNER TO prisma;
--
  -- Name: quality_gate_conditions_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.quality_gate_conditions_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.quality_gate_conditions_id_seq OWNER TO prisma;
--
  -- Name: quality_gate_conditions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.quality_gate_conditions_id_seq OWNED BY public.quality_gate_conditions.id;
--
  -- Name: quality_gates; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.quality_gates (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    name character varying(100) NOT NULL,
    is_built_in boolean NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone
  );
ALTER TABLE public.quality_gates OWNER TO prisma;
--
  -- Name: quality_gates_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.quality_gates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.quality_gates_id_seq OWNER TO prisma;
--
  -- Name: quality_gates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.quality_gates_id_seq OWNED BY public.quality_gates.id;
--
  -- Name: rule_repositories; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rule_repositories (
    kee character varying(200) NOT NULL,
    language character varying(20) NOT NULL,
    name character varying(4000) NOT NULL,
    created_at bigint NOT NULL
  );
ALTER TABLE public.rule_repositories OWNER TO prisma;
--
  -- Name: rules; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rules (
    id integer NOT NULL,
    name character varying(200),
    plugin_rule_key character varying(200) NOT NULL,
    plugin_key character varying(200),
    plugin_config_key character varying(200),
    plugin_name character varying(255) NOT NULL,
    scope character varying(20) NOT NULL,
    description text,
    priority integer,
    template_id integer,
    status character varying(40),
    language character varying(20),
    def_remediation_function character varying(20),
    def_remediation_gap_mult character varying(20),
    def_remediation_base_effort character varying(20),
    gap_description character varying(4000),
    system_tags character varying(4000),
    is_template boolean DEFAULT false NOT NULL,
    description_format character varying(20),
    rule_type smallint,
    security_standards character varying(4000),
    is_ad_hoc boolean NOT NULL,
    is_external boolean NOT NULL,
    created_at bigint,
    updated_at bigint
  );
ALTER TABLE public.rules OWNER TO prisma;
--
  -- Name: rules_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.rules_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.rules_id_seq OWNER TO prisma;
--
  -- Name: rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.rules_id_seq OWNED BY public.rules.id;
--
  -- Name: rules_metadata; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rules_metadata (
    rule_id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    note_data text,
    note_user_uuid character varying(255),
    note_created_at bigint,
    note_updated_at bigint,
    remediation_function character varying(20),
    remediation_gap_mult character varying(20),
    remediation_base_effort character varying(20),
    tags character varying(4000),
    ad_hoc_name character varying(200),
    ad_hoc_description text,
    ad_hoc_severity character varying(10),
    ad_hoc_type smallint,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.rules_metadata OWNER TO prisma;
--
  -- Name: rules_parameters; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rules_parameters (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(4000),
    param_type character varying(512) NOT NULL,
    default_value character varying(4000)
  );
ALTER TABLE public.rules_parameters OWNER TO prisma;
--
  -- Name: rules_parameters_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.rules_parameters_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.rules_parameters_id_seq OWNER TO prisma;
--
  -- Name: rules_parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.rules_parameters_id_seq OWNED BY public.rules_parameters.id;
--
  -- Name: rules_profiles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rules_profiles (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    language character varying(20),
    kee character varying(255) NOT NULL,
    is_built_in boolean NOT NULL,
    rules_updated_at character varying(100),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
  );
ALTER TABLE public.rules_profiles OWNER TO prisma;
--
  -- Name: rules_profiles_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.rules_profiles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.rules_profiles_id_seq OWNER TO prisma;
--
  -- Name: rules_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.rules_profiles_id_seq OWNED BY public.rules_profiles.id;
--
  -- Name: schema_migrations; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.schema_migrations (version character varying(255) NOT NULL);
ALTER TABLE public.schema_migrations OWNER TO prisma;
--
  -- Name: snapshots; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.snapshots (
    id integer NOT NULL,
    uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    status character varying(4) DEFAULT 'U' :: character varying NOT NULL,
    islast boolean DEFAULT false NOT NULL,
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
ALTER TABLE public.snapshots OWNER TO prisma;
--
  -- Name: snapshots_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.snapshots_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.snapshots_id_seq OWNER TO prisma;
--
  -- Name: snapshots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.snapshots_id_seq OWNED BY public.snapshots.id;
--
  -- Name: user_properties; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.user_properties (
    uuid character varying(40) NOT NULL,
    user_uuid character varying(255) NOT NULL,
    kee character varying(100) NOT NULL,
    text_value character varying(4000) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
ALTER TABLE public.user_properties OWNER TO prisma;
--
  -- Name: user_roles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.user_roles (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    user_id integer,
    resource_id integer,
    role character varying(64) NOT NULL
  );
ALTER TABLE public.user_roles OWNER TO prisma;
--
  -- Name: user_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.user_roles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.user_roles_id_seq OWNER TO prisma;
--
  -- Name: user_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.user_roles_id_seq OWNED BY public.user_roles.id;
--
  -- Name: user_tokens; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.user_tokens (
    id integer NOT NULL,
    user_uuid character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    token_hash character varying(255) NOT NULL,
    last_connection_date bigint,
    created_at bigint NOT NULL
  );
ALTER TABLE public.user_tokens OWNER TO prisma;
--
  -- Name: user_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.user_tokens_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.user_tokens_id_seq OWNER TO prisma;
--
  -- Name: user_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.user_tokens_id_seq OWNED BY public.user_tokens.id;
--
  -- Name: users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.users (
    id integer NOT NULL,
    uuid character varying(255) NOT NULL,
    login character varying(255) NOT NULL,
    organization_uuid character varying(40),
    name character varying(200),
    email character varying(100),
    crypted_password character varying(100),
    salt character varying(40),
    hash_method character varying(10),
    active boolean DEFAULT true,
    scm_accounts character varying(4000),
    external_login character varying(255) NOT NULL,
    external_identity_provider character varying(100) NOT NULL,
    external_id character varying(255) NOT NULL,
    is_root boolean NOT NULL,
    user_local boolean,
    onboarded boolean NOT NULL,
    homepage_type character varying(40),
    homepage_parameter character varying(40),
    last_connection_date bigint,
    created_at bigint,
    updated_at bigint
  );
ALTER TABLE public.users OWNER TO prisma;
--
  -- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.users_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.users_id_seq OWNER TO prisma;
--
  -- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
--
  -- Name: webhook_deliveries; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.webhook_deliveries (
    uuid character varying(40) NOT NULL,
    webhook_uuid character varying(40) NOT NULL,
    component_uuid character varying(40) NOT NULL,
    ce_task_uuid character varying(40),
    analysis_uuid character varying(40),
    name character varying(100) NOT NULL,
    url character varying(2000) NOT NULL,
    success boolean NOT NULL,
    http_status integer,
    duration_ms bigint NOT NULL,
    payload text NOT NULL,
    error_stacktrace text,
    created_at bigint NOT NULL
  );
ALTER TABLE public.webhook_deliveries OWNER TO prisma;
--
  -- Name: webhooks; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.webhooks (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40),
    project_uuid character varying(40),
    name character varying(100) NOT NULL,
    url character varying(2000) NOT NULL,
    secret character varying(200),
    created_at bigint NOT NULL,
    updated_at bigint
  );
ALTER TABLE public.webhooks OWNER TO prisma;
--
  -- Name: active_rule_parameters id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.active_rule_parameters
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.active_rule_parameters_id_seq' :: regclass);
--
  -- Name: active_rules id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.active_rules
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.active_rules_id_seq' :: regclass);
--
  -- Name: ce_activity id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_activity
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.ce_activity_id_seq' :: regclass);
--
  -- Name: ce_queue id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_queue
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.ce_queue_id_seq' :: regclass);
--
  -- Name: duplications_index id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.duplications_index
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.duplications_index_id_seq' :: regclass);
--
  -- Name: events id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.events
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.events_id_seq' :: regclass);
--
  -- Name: file_sources id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.file_sources
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.file_sources_id_seq' :: regclass);
--
  -- Name: group_roles id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.group_roles
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.group_roles_id_seq' :: regclass);
--
  -- Name: groups id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.groups
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.groups_id_seq' :: regclass);
--
  -- Name: issue_changes id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issue_changes
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.issue_changes_id_seq' :: regclass);
--
  -- Name: issues id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issues
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.issues_id_seq' :: regclass);
--
  -- Name: manual_measures id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.manual_measures
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.manual_measures_id_seq' :: regclass);
--
  -- Name: metrics id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.metrics
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.metrics_id_seq' :: regclass);
--
  -- Name: notifications id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.notifications
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.notifications_id_seq' :: regclass);
--
  -- Name: perm_templates_groups id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.perm_templates_groups
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.perm_templates_groups_id_seq' :: regclass);
--
  -- Name: perm_templates_users id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.perm_templates_users
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.perm_templates_users_id_seq' :: regclass);
--
  -- Name: perm_tpl_characteristics id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.perm_tpl_characteristics
ALTER COLUMN
  id
SET
  DEFAULT nextval(
    'public.perm_tpl_characteristics_id_seq' :: regclass
  );
--
  -- Name: permission_templates id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.permission_templates
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.permission_templates_id_seq' :: regclass);
--
  -- Name: project_measures id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_measures
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.project_measures_id_seq' :: regclass);
--
  -- Name: project_qprofiles id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_qprofiles
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.project_qprofiles_id_seq' :: regclass);
--
  -- Name: projects id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projects
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.projects_id_seq' :: regclass);
--
  -- Name: properties id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.properties
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.properties_id_seq' :: regclass);
--
  -- Name: quality_gate_conditions id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.quality_gate_conditions
ALTER COLUMN
  id
SET
  DEFAULT nextval(
    'public.quality_gate_conditions_id_seq' :: regclass
  );
--
  -- Name: quality_gates id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.quality_gates
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.quality_gates_id_seq' :: regclass);
--
  -- Name: rules id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.rules_id_seq' :: regclass);
--
  -- Name: rules_parameters id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules_parameters
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.rules_parameters_id_seq' :: regclass);
--
  -- Name: rules_profiles id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules_profiles
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.rules_profiles_id_seq' :: regclass);
--
  -- Name: snapshots id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.snapshots
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.snapshots_id_seq' :: regclass);
--
  -- Name: user_roles id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.user_roles
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.user_roles_id_seq' :: regclass);
--
  -- Name: user_tokens id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.user_tokens
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.user_tokens_id_seq' :: regclass);
--
  -- Name: users id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.users
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.users_id_seq' :: regclass);
--
  -- Name: active_rule_parameters pk_active_rule_parameters; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.active_rule_parameters
ADD
  CONSTRAINT pk_active_rule_parameters PRIMARY KEY (id);
--
  -- Name: active_rules pk_active_rules; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.active_rules
ADD
  CONSTRAINT pk_active_rules PRIMARY KEY (id);
--
  -- Name: alm_app_installs pk_alm_app_installs; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.alm_app_installs
ADD
  CONSTRAINT pk_alm_app_installs PRIMARY KEY (uuid);
--
  -- Name: alm_settings pk_alm_settings; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.alm_settings
ADD
  CONSTRAINT pk_alm_settings PRIMARY KEY (uuid);
--
  -- Name: analysis_properties pk_analysis_properties; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.analysis_properties
ADD
  CONSTRAINT pk_analysis_properties PRIMARY KEY (uuid);
--
  -- Name: ce_activity pk_ce_activity; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_activity
ADD
  CONSTRAINT pk_ce_activity PRIMARY KEY (id);
--
  -- Name: ce_queue pk_ce_queue; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_queue
ADD
  CONSTRAINT pk_ce_queue PRIMARY KEY (id);
--
  -- Name: ce_scanner_context pk_ce_scanner_context; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_scanner_context
ADD
  CONSTRAINT pk_ce_scanner_context PRIMARY KEY (task_uuid);
--
  -- Name: ce_task_characteristics pk_ce_task_characteristics; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_task_characteristics
ADD
  CONSTRAINT pk_ce_task_characteristics PRIMARY KEY (uuid);
--
  -- Name: ce_task_input pk_ce_task_input; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_task_input
ADD
  CONSTRAINT pk_ce_task_input PRIMARY KEY (task_uuid);
--
  -- Name: ce_task_message pk_ce_task_message; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ce_task_message
ADD
  CONSTRAINT pk_ce_task_message PRIMARY KEY (uuid);
--
  -- Name: default_qprofiles pk_default_qprofiles; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.default_qprofiles
ADD
  CONSTRAINT pk_default_qprofiles PRIMARY KEY (organization_uuid, language);
--
  -- Name: deprecated_rule_keys pk_deprecated_rule_keys; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.deprecated_rule_keys
ADD
  CONSTRAINT pk_deprecated_rule_keys PRIMARY KEY (uuid);
--
  -- Name: duplications_index pk_duplications_index; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.duplications_index
ADD
  CONSTRAINT pk_duplications_index PRIMARY KEY (id);
--
  -- Name: es_queue pk_es_queue; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.es_queue
ADD
  CONSTRAINT pk_es_queue PRIMARY KEY (uuid);
--
  -- Name: event_component_changes pk_event_component_changes; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.event_component_changes
ADD
  CONSTRAINT pk_event_component_changes PRIMARY KEY (uuid);
--
  -- Name: events pk_events; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.events
ADD
  CONSTRAINT pk_events PRIMARY KEY (id);
--
  -- Name: file_sources pk_file_sources; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.file_sources
ADD
  CONSTRAINT pk_file_sources PRIMARY KEY (id);
--
  -- Name: group_roles pk_group_roles; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.group_roles
ADD
  CONSTRAINT pk_group_roles PRIMARY KEY (id);
--
  -- Name: groups pk_groups; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.groups
ADD
  CONSTRAINT pk_groups PRIMARY KEY (id);
--
  -- Name: internal_component_props pk_internal_component_props; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.internal_component_props
ADD
  CONSTRAINT pk_internal_component_props PRIMARY KEY (uuid);
--
  -- Name: internal_properties pk_internal_properties; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.internal_properties
ADD
  CONSTRAINT pk_internal_properties PRIMARY KEY (kee);
--
  -- Name: issue_changes pk_issue_changes; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issue_changes
ADD
  CONSTRAINT pk_issue_changes PRIMARY KEY (id);
--
  -- Name: issues pk_issues; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.issues
ADD
  CONSTRAINT pk_issues PRIMARY KEY (id);
--
  -- Name: live_measures pk_live_measures; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.live_measures
ADD
  CONSTRAINT pk_live_measures PRIMARY KEY (uuid);
--
  -- Name: manual_measures pk_manual_measures; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.manual_measures
ADD
  CONSTRAINT pk_manual_measures PRIMARY KEY (id);
--
  -- Name: metrics pk_metrics; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.metrics
ADD
  CONSTRAINT pk_metrics PRIMARY KEY (id);
--
  -- Name: new_code_periods pk_new_code_periods; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.new_code_periods
ADD
  CONSTRAINT pk_new_code_periods PRIMARY KEY (uuid);
--
  -- Name: notifications pk_notifications; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.notifications
ADD
  CONSTRAINT pk_notifications PRIMARY KEY (id);
--
  -- Name: org_qprofiles pk_org_qprofiles; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.org_qprofiles
ADD
  CONSTRAINT pk_org_qprofiles PRIMARY KEY (uuid);
--
  -- Name: org_quality_gates pk_org_quality_gates; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.org_quality_gates
ADD
  CONSTRAINT pk_org_quality_gates PRIMARY KEY (uuid);
--
  -- Name: organization_alm_bindings pk_organization_alm_bindings; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.organization_alm_bindings
ADD
  CONSTRAINT pk_organization_alm_bindings PRIMARY KEY (uuid);
--
  -- Name: organization_members pk_organization_members; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.organization_members
ADD
  CONSTRAINT pk_organization_members PRIMARY KEY (organization_uuid, user_id);
--
  -- Name: organizations pk_organizations; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.organizations
ADD
  CONSTRAINT pk_organizations PRIMARY KEY (uuid);
--
  -- Name: perm_templates_groups pk_perm_templates_groups; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.perm_templates_groups
ADD
  CONSTRAINT pk_perm_templates_groups PRIMARY KEY (id);
--
  -- Name: perm_templates_users pk_perm_templates_users; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.perm_templates_users
ADD
  CONSTRAINT pk_perm_templates_users PRIMARY KEY (id);
--
  -- Name: perm_tpl_characteristics pk_perm_tpl_characteristics; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.perm_tpl_characteristics
ADD
  CONSTRAINT pk_perm_tpl_characteristics PRIMARY KEY (id);
--
  -- Name: permission_templates pk_permission_templates; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.permission_templates
ADD
  CONSTRAINT pk_permission_templates PRIMARY KEY (id);
--
  -- Name: plugins pk_plugins; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.plugins
ADD
  CONSTRAINT pk_plugins PRIMARY KEY (uuid);
--
  -- Name: project_alm_bindings pk_project_alm_bindings; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_alm_bindings
ADD
  CONSTRAINT pk_project_alm_bindings PRIMARY KEY (uuid);
--
  -- Name: project_alm_settings pk_project_alm_settings; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_alm_settings
ADD
  CONSTRAINT pk_project_alm_settings PRIMARY KEY (uuid);
--
  -- Name: project_branches pk_project_branches; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_branches
ADD
  CONSTRAINT pk_project_branches PRIMARY KEY (uuid);
--
  -- Name: project_links pk_project_links; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_links
ADD
  CONSTRAINT pk_project_links PRIMARY KEY (uuid);
--
  -- Name: project_mappings pk_project_mappings; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_mappings
ADD
  CONSTRAINT pk_project_mappings PRIMARY KEY (uuid);
--
  -- Name: project_measures pk_project_measures; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_measures
ADD
  CONSTRAINT pk_project_measures PRIMARY KEY (id);
--
  -- Name: project_qgates pk_project_qgates; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_qgates
ADD
  CONSTRAINT pk_project_qgates PRIMARY KEY (project_uuid);
--
  -- Name: project_qprofiles pk_project_qprofiles; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.project_qprofiles
ADD
  CONSTRAINT pk_project_qprofiles PRIMARY KEY (id);
--
  -- Name: projects pk_projects; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.projects
ADD
  CONSTRAINT pk_projects PRIMARY KEY (id);
--
  -- Name: properties pk_properties; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.properties
ADD
  CONSTRAINT pk_properties PRIMARY KEY (id);
--
  -- Name: qprofile_changes pk_qprofile_changes; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qprofile_changes
ADD
  CONSTRAINT pk_qprofile_changes PRIMARY KEY (kee);
--
  -- Name: qprofile_edit_groups pk_qprofile_edit_groups; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qprofile_edit_groups
ADD
  CONSTRAINT pk_qprofile_edit_groups PRIMARY KEY (uuid);
--
  -- Name: qprofile_edit_users pk_qprofile_edit_users; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qprofile_edit_users
ADD
  CONSTRAINT pk_qprofile_edit_users PRIMARY KEY (uuid);
--
  -- Name: quality_gate_conditions pk_quality_gate_conditions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.quality_gate_conditions
ADD
  CONSTRAINT pk_quality_gate_conditions PRIMARY KEY (id);
--
  -- Name: quality_gates pk_quality_gates; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.quality_gates
ADD
  CONSTRAINT pk_quality_gates PRIMARY KEY (id);
--
  -- Name: rule_repositories pk_rule_repositories; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rule_repositories
ADD
  CONSTRAINT pk_rule_repositories PRIMARY KEY (kee);
--
  -- Name: rules pk_rules; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules
ADD
  CONSTRAINT pk_rules PRIMARY KEY (id);
--
  -- Name: rules_metadata pk_rules_metadata; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules_metadata
ADD
  CONSTRAINT pk_rules_metadata PRIMARY KEY (rule_id, organization_uuid);
--
  -- Name: rules_parameters pk_rules_parameters; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules_parameters
ADD
  CONSTRAINT pk_rules_parameters PRIMARY KEY (id);
--
  -- Name: rules_profiles pk_rules_profiles; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rules_profiles
ADD
  CONSTRAINT pk_rules_profiles PRIMARY KEY (id);
--
  -- Name: snapshots pk_snapshots; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.snapshots
ADD
  CONSTRAINT pk_snapshots PRIMARY KEY (id);
--
  -- Name: user_properties pk_user_properties; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.user_properties
ADD
  CONSTRAINT pk_user_properties PRIMARY KEY (uuid);
--
  -- Name: user_roles pk_user_roles; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.user_roles
ADD
  CONSTRAINT pk_user_roles PRIMARY KEY (id);
--
  -- Name: user_tokens pk_user_tokens; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.user_tokens
ADD
  CONSTRAINT pk_user_tokens PRIMARY KEY (id);
--
  -- Name: users pk_users; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.users
ADD
  CONSTRAINT pk_users PRIMARY KEY (id);
--
  -- Name: webhook_deliveries pk_webhook_deliveries; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.webhook_deliveries
ADD
  CONSTRAINT pk_webhook_deliveries PRIMARY KEY (uuid);
--
  -- Name: webhooks pk_webhooks; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.webhooks
ADD
  CONSTRAINT pk_webhooks PRIMARY KEY (uuid);
--
  -- Name: alm_app_installs_external_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX alm_app_installs_external_id ON public.alm_app_installs USING btree (user_external_id);
--
  -- Name: alm_app_installs_install; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX alm_app_installs_install ON public.alm_app_installs USING btree (alm_id, install_id);
--
  -- Name: alm_app_installs_owner; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX alm_app_installs_owner ON public.alm_app_installs USING btree (alm_id, owner_id);
--
  -- Name: analyses_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX analyses_uuid ON public.snapshots USING btree (uuid);
--
  -- Name: analysis_properties_analysis; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX analysis_properties_analysis ON public.analysis_properties USING btree (analysis_uuid);
--
  -- Name: ce_activity_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_activity_component ON public.ce_activity USING btree (component_uuid);
--
  -- Name: ce_activity_islast; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_activity_islast ON public.ce_activity USING btree (is_last, status);
--
  -- Name: ce_activity_islast_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_activity_islast_key ON public.ce_activity USING btree (is_last_key);
--
  -- Name: ce_activity_main_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_activity_main_component ON public.ce_activity USING btree (main_component_uuid);
--
  -- Name: ce_activity_main_islast; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_activity_main_islast ON public.ce_activity USING btree (main_is_last, status);
--
  -- Name: ce_activity_main_islast_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_activity_main_islast_key ON public.ce_activity USING btree (main_is_last_key);
--
  -- Name: ce_activity_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX ce_activity_uuid ON public.ce_activity USING btree (uuid);
--
  -- Name: ce_characteristics_task_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_characteristics_task_uuid ON public.ce_task_characteristics USING btree (task_uuid);
--
  -- Name: ce_queue_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_queue_component ON public.ce_queue USING btree (component_uuid);
--
  -- Name: ce_queue_main_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_queue_main_component ON public.ce_queue USING btree (main_component_uuid);
--
  -- Name: ce_queue_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX ce_queue_uuid ON public.ce_queue USING btree (uuid);
--
  -- Name: ce_task_message_task; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_task_message_task ON public.ce_task_message USING btree (task_uuid);
--
  -- Name: ce_task_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ce_task_uuid ON public.webhook_deliveries USING btree (ce_task_uuid);
--
  -- Name: component_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX component_uuid ON public.webhook_deliveries USING btree (component_uuid);
--
  -- Name: duplication_analysis_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX duplication_analysis_component ON public.duplications_index USING btree (analysis_uuid, component_uuid);
--
  -- Name: duplications_index_hash; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX duplications_index_hash ON public.duplications_index USING btree (hash);
--
  -- Name: es_queue_created_at; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX es_queue_created_at ON public.es_queue USING btree (created_at);
--
  -- Name: event_component_changes_unique; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX event_component_changes_unique ON public.event_component_changes USING btree (event_uuid, change_category, component_uuid);
--
  -- Name: event_cpnt_changes_analysis; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX event_cpnt_changes_analysis ON public.event_component_changes USING btree (event_analysis_uuid);
--
  -- Name: event_cpnt_changes_cpnt; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX event_cpnt_changes_cpnt ON public.event_component_changes USING btree (event_component_uuid);
--
  -- Name: events_analysis; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX events_analysis ON public.events USING btree (analysis_uuid);
--
  -- Name: events_component_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX events_component_uuid ON public.events USING btree (component_uuid);
--
  -- Name: events_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX events_uuid ON public.events USING btree (uuid);
--
  -- Name: file_sources_file_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX file_sources_file_uuid ON public.file_sources USING btree (file_uuid);
--
  -- Name: file_sources_project_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX file_sources_project_uuid ON public.file_sources USING btree (project_uuid);
--
  -- Name: file_sources_updated_at; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX file_sources_updated_at ON public.file_sources USING btree (updated_at);
--
  -- Name: group_roles_resource; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX group_roles_resource ON public.group_roles USING btree (resource_id);
--
  -- Name: groups_users_unique; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX groups_users_unique ON public.groups_users USING btree (group_id, user_id);
--
  -- Name: index_groups_users_on_group_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_groups_users_on_group_id ON public.groups_users USING btree (group_id);
--
  -- Name: index_groups_users_on_user_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX index_groups_users_on_user_id ON public.groups_users USING btree (user_id);
--
  -- Name: issue_changes_issue_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_changes_issue_key ON public.issue_changes USING btree (issue_key);
--
  -- Name: issue_changes_kee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issue_changes_kee ON public.issue_changes USING btree (kee);
--
  -- Name: issues_assignee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_assignee ON public.issues USING btree (assignee);
--
  -- Name: issues_component_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_component_uuid ON public.issues USING btree (component_uuid);
--
  -- Name: issues_creation_date; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_creation_date ON public.issues USING btree (issue_creation_date);
--
  -- Name: issues_kee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX issues_kee ON public.issues USING btree (kee);
--
  -- Name: issues_project_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_project_uuid ON public.issues USING btree (project_uuid);
--
  -- Name: issues_resolution; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_resolution ON public.issues USING btree (resolution);
--
  -- Name: issues_rule_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_rule_id ON public.issues USING btree (rule_id);
--
  -- Name: issues_updated_at; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX issues_updated_at ON public.issues USING btree (updated_at);
--
  -- Name: ix_arp_on_active_rule_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ix_arp_on_active_rule_id ON public.active_rule_parameters USING btree (active_rule_id);
--
  -- Name: ix_org_members_on_user_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX ix_org_members_on_user_id ON public.organization_members USING btree (user_id);
--
  -- Name: key_type_kee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX key_type_kee ON public.project_mappings USING btree (key_type, kee);
--
  -- Name: live_measures_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX live_measures_component ON public.live_measures USING btree (component_uuid, metric_id);
--
  -- Name: live_measures_project; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX live_measures_project ON public.live_measures USING btree (project_uuid);
--
  -- Name: manual_measures_component_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX manual_measures_component_uuid ON public.manual_measures USING btree (component_uuid);
--
  -- Name: measures_analysis_metric; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX measures_analysis_metric ON public.project_measures USING btree (analysis_uuid, metric_id);
--
  -- Name: measures_component_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX measures_component_uuid ON public.project_measures USING btree (component_uuid);
--
  -- Name: metrics_unique_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX metrics_unique_name ON public.metrics USING btree (name);
--
  -- Name: org_alm_bindings_install; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX org_alm_bindings_install ON public.organization_alm_bindings USING btree (alm_app_install_uuid);
--
  -- Name: org_alm_bindings_org; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX org_alm_bindings_org ON public.organization_alm_bindings USING btree (organization_uuid);
--
  -- Name: org_qprofiles_parent_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX org_qprofiles_parent_uuid ON public.org_qprofiles USING btree (parent_uuid);
--
  -- Name: organization_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX organization_key ON public.organizations USING btree (kee);
--
  -- Name: organization_webhook; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX organization_webhook ON public.webhooks USING btree (organization_uuid);
--
  -- Name: plugins_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX plugins_key ON public.plugins USING btree (kee);
--
  -- Name: project_alm_bindings_alm_repo; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX project_alm_bindings_alm_repo ON public.project_alm_bindings USING btree (alm_id, repo_id);
--
  -- Name: project_alm_bindings_project; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX project_alm_bindings_project ON public.project_alm_bindings USING btree (project_uuid);
--
  -- Name: project_alm_settings_alm; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX project_alm_settings_alm ON public.project_alm_settings USING btree (alm_setting_uuid);
--
  -- Name: project_branches_kee_key_type; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX project_branches_kee_key_type ON public.project_branches USING btree (project_uuid, kee, key_type);
--
  -- Name: project_links_project; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX project_links_project ON public.project_links USING btree (project_uuid);
--
  -- Name: project_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX project_uuid ON public.project_mappings USING btree (project_uuid);
--
  -- Name: project_webhook; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX project_webhook ON public.webhooks USING btree (project_uuid);
--
  -- Name: projects_kee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX projects_kee ON public.projects USING btree (kee);
--
  -- Name: projects_module_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX projects_module_uuid ON public.projects USING btree (module_uuid);
--
  -- Name: projects_organization; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX projects_organization ON public.projects USING btree (organization_uuid);
--
  -- Name: projects_project_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX projects_project_uuid ON public.projects USING btree (project_uuid);
--
  -- Name: projects_qualifier; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX projects_qualifier ON public.projects USING btree (qualifier);
--
  -- Name: projects_root_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX projects_root_uuid ON public.projects USING btree (root_uuid);
--
  -- Name: projects_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX projects_uuid ON public.projects USING btree (uuid);
--
  -- Name: properties_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX properties_key ON public.properties USING btree (prop_key);
--
  -- Name: qp_changes_rules_profile_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX qp_changes_rules_profile_uuid ON public.qprofile_changes USING btree (rules_profile_uuid);
--
  -- Name: qprofile_edit_groups_qprofile; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX qprofile_edit_groups_qprofile ON public.qprofile_edit_groups USING btree (qprofile_uuid);
--
  -- Name: qprofile_edit_groups_unique; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX qprofile_edit_groups_unique ON public.qprofile_edit_groups USING btree (group_id, qprofile_uuid);
--
  -- Name: qprofile_edit_users_qprofile; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX qprofile_edit_users_qprofile ON public.qprofile_edit_users USING btree (qprofile_uuid);
--
  -- Name: qprofile_edit_users_unique; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX qprofile_edit_users_unique ON public.qprofile_edit_users USING btree (user_id, qprofile_uuid);
--
  -- Name: qprofiles_org_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX qprofiles_org_uuid ON public.org_qprofiles USING btree (organization_uuid);
--
  -- Name: qprofiles_rp_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX qprofiles_rp_uuid ON public.org_qprofiles USING btree (rules_profile_uuid);
--
  -- Name: rule_id_deprecated_rule_keys; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX rule_id_deprecated_rule_keys ON public.deprecated_rule_keys USING btree (rule_id);
--
  -- Name: rules_parameters_rule_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX rules_parameters_rule_id ON public.rules_parameters USING btree (rule_id);
--
  -- Name: rules_parameters_unique; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX rules_parameters_unique ON public.rules_parameters USING btree (rule_id, name);
--
  -- Name: rules_repo_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX rules_repo_key ON public.rules USING btree (plugin_rule_key, plugin_name);
--
  -- Name: snapshot_component; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX snapshot_component ON public.snapshots USING btree (component_uuid);
--
  -- Name: uniq_alm_settings; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_alm_settings ON public.alm_settings USING btree (kee);
--
  -- Name: uniq_default_qprofiles_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_default_qprofiles_uuid ON public.default_qprofiles USING btree (qprofile_uuid);
--
  -- Name: uniq_deprecated_rule_keys; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_deprecated_rule_keys ON public.deprecated_rule_keys USING btree (old_repository_key, old_rule_key);
--
  -- Name: uniq_external_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_external_id ON public.users USING btree (external_identity_provider, external_id);
--
  -- Name: uniq_external_login; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_external_login ON public.users USING btree (external_identity_provider, external_login);
--
  -- Name: uniq_group_roles; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_group_roles ON public.group_roles USING btree (organization_uuid, group_id, resource_id, role);
--
  -- Name: uniq_new_code_periods; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_new_code_periods ON public.new_code_periods USING btree (project_uuid, branch_uuid);
--
  -- Name: uniq_org_quality_gates; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_org_quality_gates ON public.org_quality_gates USING btree (organization_uuid, quality_gate_uuid);
--
  -- Name: uniq_perm_tpl_charac; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_perm_tpl_charac ON public.perm_tpl_characteristics USING btree (template_id, permission_key);
--
  -- Name: uniq_profile_rule_ids; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_profile_rule_ids ON public.active_rules USING btree (profile_id, rule_id);
--
  -- Name: uniq_project_alm_settings; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_project_alm_settings ON public.project_alm_settings USING btree (project_uuid);
--
  -- Name: uniq_project_qgates; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_project_qgates ON public.project_qgates USING btree (project_uuid, quality_gate_uuid);
--
  -- Name: uniq_project_qprofiles; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_project_qprofiles ON public.project_qprofiles USING btree (project_uuid, profile_key);
--
  -- Name: uniq_qprof_key; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_qprof_key ON public.rules_profiles USING btree (kee);
--
  -- Name: uniq_quality_gates_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX uniq_quality_gates_uuid ON public.quality_gates USING btree (uuid);
--
  -- Name: unique_component_uuid_kee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX unique_component_uuid_kee ON public.internal_component_props USING btree (component_uuid, kee);
--
  -- Name: user_properties_user_uuid_kee; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX user_properties_user_uuid_kee ON public.user_properties USING btree (user_uuid, kee);
--
  -- Name: user_roles_resource; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX user_roles_resource ON public.user_roles USING btree (resource_id);
--
  -- Name: user_roles_user; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX user_roles_user ON public.user_roles USING btree (user_id);
--
  -- Name: user_tokens_token_hash; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX user_tokens_token_hash ON public.user_tokens USING btree (token_hash);
--
  -- Name: user_tokens_user_uuid_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX user_tokens_user_uuid_name ON public.user_tokens USING btree (user_uuid, name);
--
  -- Name: users_login; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX users_login ON public.users USING btree (login);
--
  -- Name: users_updated_at; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX users_updated_at ON public.users USING btree (updated_at);
--
  -- Name: users_uuid; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX users_uuid ON public.users USING btree (uuid);
--
  -- PostgreSQL database dump complete
  --