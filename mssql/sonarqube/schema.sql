--
-- SQLINES DEMO *** se dump
--
-- SQLINES DEMO *** ase version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- SQLINES DEMO ***  version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- SET
--   @statement_timeout = 0;
-- SET
--   @lock_timeout = 0;
-- SET
--   @idle_in_transaction_session_timeout = 0;
-- SET
--   @client_encoding = 'UTF8';
-- SET
--   @standard_conforming_strings = on;
-- -- SQLINES LICENSE FOR EVALUATION USE 
-- SELECT
--   pg_catalog.set_config('search_path', '', 0);
-- SET
--   @check_function_bodies = 0;
-- SET
--   @xmloption = content;
-- SET
--   @client_min_messages = warning;
-- SET
--   @row_security = off;
-- --
--   -- SQLINES DEMO *** --pe: EXTENSION; Schema: -; Owner:
--   --
--   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
-- --
--   -- SQLINES DEMO *** lpgsql; --Type: COMMENT; Schema: -; Owner:
--   --
--   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
-- SET
--   @default_tablespace = '';
-- SET
--   @default_with_oids = 0;
--
  -- SQLINES DEMO *** _parameters; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.active_rule_parameters (
    id integer NOT NULL,
    active_rule_id integer NOT NULL,
    rules_parameter_id integer NOT NULL,
    value character varying(4000),
    rules_parameter_key character varying(128)
  );
--ALTER TABLE dbo.active_rule_parameters OWNER TO prisma;
--
  -- SQLINES DEMO *** _parameters_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.active_rule_parameters_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.active_rule_parameters_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --_parameters_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.active_rule_parameters_id_seq OWNED BY dbo.active_rule_parameters.id;
--
  -- SQLINES DEMO *** s; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.active_rules (
    id integer NOT NULL,
    profile_id integer NOT NULL,
    rule_id integer NOT NULL,
    failure_level integer NOT NULL,
    inheritance character varying(10),
    created_at bigint,
    updated_at bigint
  );
--ALTER TABLE dbo.active_rules OWNER TO prisma;
--
  -- SQLINES DEMO *** s_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.active_rules_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.active_rules_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --s_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.active_rules_id_seq OWNED BY dbo.active_rules.id;
--
  -- SQLINES DEMO *** talls; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.alm_app_installs OWNER TO prisma;
--
  -- SQLINES DEMO *** s; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.alm_settings OWNER TO prisma;
--
  -- SQLINES DEMO *** operties; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.analysis_properties (
    uuid character varying(40) NOT NULL,
    analysis_uuid character varying(40) NOT NULL,
    kee character varying(512) NOT NULL,
    text_value character varying(4000),
    clob_value varchar(max),
    is_empty bit NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.analysis_properties OWNER TO prisma;
--
  -- SQLINES DEMO *** ; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.ce_activity OWNER TO prisma;
--
  -- SQLINES DEMO *** _id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.ce_activity_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.ce_activity_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.ce_activity_id_seq OWNED BY dbo.ce_activity.id;
--
  -- SQLINES DEMO *** --ype: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.ce_queue OWNER TO prisma;
--
  -- SQLINES DEMO *** _seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.ce_queue_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.ce_queue_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.ce_queue_id_seq OWNED BY dbo.ce_queue.id;
--
  -- SQLINES DEMO *** context; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.ce_scanner_context (
    task_uuid character varying(40) NOT NULL,
    context_data VARBINARY(100) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.ce_scanner_context OWNER TO prisma;
--
  -- SQLINES DEMO *** racteristics; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.ce_task_characteristics (
    uuid character varying(40) NOT NULL,
    task_uuid character varying(40) NOT NULL,
    kee character varying(512) NOT NULL,
    text_value character varying(512)
  );
--ALTER TABLE dbo.ce_task_characteristics OWNER TO prisma;
--
  -- SQLINES DEMO *** ut; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.ce_task_input (
    task_uuid character varying(40) NOT NULL,
    input_data VARBINARY(100),
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.ce_task_input OWNER TO prisma;
--
  -- SQLINES DEMO *** sage; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.ce_task_message (
    uuid character varying(40) NOT NULL,
    task_uuid character varying(40) NOT NULL,
    message character varying(4000) NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.ce_task_message OWNER TO prisma;
--
  -- SQLINES DEMO *** ofiles; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.default_qprofiles (
    organization_uuid character varying(40) NOT NULL,
    language character varying(20) NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.default_qprofiles OWNER TO prisma;
--
  -- SQLINES DEMO *** rule_keys; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.deprecated_rule_keys (
    uuid character varying(40) NOT NULL,
    rule_id integer NOT NULL,
    old_repository_key character varying(255) NOT NULL,
    old_rule_key character varying(200) NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.deprecated_rule_keys OWNER TO prisma;
--
  -- SQLINES DEMO *** s_index; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.duplications_index (
    id bigint NOT NULL,
    analysis_uuid character varying(50) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    hash character varying(50) NOT NULL,
    index_in_file integer NOT NULL,
    start_line integer NOT NULL,
    end_line integer NOT NULL
  );
--ALTER TABLE dbo.duplications_index OWNER TO prisma;
--
  -- SQLINES DEMO *** s_index_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.duplications_index_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.duplications_index_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --s_index_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.duplications_index_id_seq OWNED BY dbo.duplications_index.id;
--
  -- SQLINES DEMO *** --ype: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.es_queue (
    uuid character varying(40) NOT NULL,
    doc_type character varying(40) NOT NULL,
    doc_id character varying(4000) NOT NULL,
    doc_id_type character varying(20),
    doc_routing character varying(4000),
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.es_queue OWNER TO prisma;
--
  -- SQLINES DEMO *** nent_changes; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.event_component_changes OWNER TO prisma;
--
  -- SQLINES DEMO *** --e: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.events OWNER TO prisma;
--
  -- SQLINES DEMO *** eq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.events_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.events_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --eq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.events_id_seq OWNED BY dbo.events.id;
--
  -- SQLINES DEMO *** s; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.file_sources OWNER TO prisma;
--
  -- SQLINES DEMO *** s_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.file_sources_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.file_sources_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --s_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.file_sources_id_seq OWNED BY dbo.file_sources.id;
--
  -- SQLINES DEMO *** ; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.group_roles (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    group_id integer,
    resource_id integer,
    role character varying(64) NOT NULL
  );
--ALTER TABLE dbo.group_roles OWNER TO prisma;
--
  -- SQLINES DEMO *** _id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.group_roles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.group_roles_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.group_roles_id_seq OWNED BY dbo.group_roles.id;
--
  -- SQLINES DEMO *** --e: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.groups (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    name character varying(500),
    description character varying(200),
    created_at datetime2,
    updated_at datetime2
  );
--ALTER TABLE dbo.groups OWNER TO prisma;
--
  -- SQLINES DEMO *** eq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.groups_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --eq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.groups_id_seq OWNED BY dbo.groups.id;
--
  -- SQLINES DEMO *** s; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.groups_users (user_id bigint, group_id bigint);
--ALTER TABLE dbo.groups_users OWNER TO prisma;
--
  -- SQLINES DEMO *** mponent_props; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.internal_component_props (
    uuid character varying(40) NOT NULL,
    component_uuid character varying(50) NOT NULL,
    kee character varying(512) NOT NULL,
    value character varying(4000),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.internal_component_props OWNER TO prisma;
--
  -- SQLINES DEMO *** operties; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.internal_properties (
    kee character varying(20) NOT NULL,
    is_empty bit NOT NULL,
    text_value character varying(4000),
    clob_value varchar(max),
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.internal_properties OWNER TO prisma;
--
  -- SQLINES DEMO *** es; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.issue_changes OWNER TO prisma;
--
  -- SQLINES DEMO *** es_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.issue_changes_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.issue_changes_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --es_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.issue_changes_id_seq OWNED BY dbo.issue_changes.id;
--
  -- SQLINES DEMO *** --e: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.issues OWNER TO prisma;
--
  -- SQLINES DEMO *** eq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.issues_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.issues_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --eq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.issues_id_seq OWNED BY dbo.issues.id;
--
  -- SQLINES DEMO *** es; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.live_measures OWNER TO prisma;
--
  -- SQLINES DEMO *** ures; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.manual_measures OWNER TO prisma;
--
  -- SQLINES DEMO *** ures_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.manual_measures_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.manual_measures_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --ures_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.manual_measures_id_seq OWNED BY dbo.manual_measures.id;
--
  -- SQLINES DEMO *** --pe: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.metrics OWNER TO prisma;
--
  -- SQLINES DEMO *** seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.metrics_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.metrics_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.metrics_id_seq OWNED BY dbo.metrics.id;
--
  -- SQLINES DEMO *** riods; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.new_code_periods (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(40),
    branch_uuid character varying(40),
    type character varying(30) NOT NULL,
    value character varying(40),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.new_code_periods OWNER TO prisma;
--
  -- SQLINES DEMO *** ns; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.notifications (id integer NOT NULL, data VARBINARY(100));
--ALTER TABLE dbo.notifications OWNER TO prisma;
--
  -- SQLINES DEMO *** ns_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.notifications_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.notifications_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --ns_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.notifications_id_seq OWNED BY dbo.notifications.id;
--
  -- SQLINES DEMO *** es; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.org_qprofiles OWNER TO prisma;
--
  -- SQLINES DEMO *** _gates; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.org_quality_gates (
    uuid character varying(40) NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    quality_gate_uuid character varying(40) NOT NULL
  );
--ALTER TABLE dbo.org_quality_gates OWNER TO prisma;
--
  -- SQLINES DEMO *** n_alm_bindings; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.organization_alm_bindings OWNER TO prisma;
--
  -- SQLINES DEMO *** n_members; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.organization_members (
    organization_uuid character varying(40) NOT NULL,
    user_id integer NOT NULL
  );
--ALTER TABLE dbo.organization_members OWNER TO prisma;
--
  -- SQLINES DEMO *** ns; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.organizations OWNER TO prisma;
--
  -- SQLINES DEMO *** tes_groups; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.perm_templates_groups (
    id integer NOT NULL,
    group_id integer,
    template_id integer NOT NULL,
    permission_reference character varying(64) NOT NULL,
    created_at datetime2,
    updated_at datetime2
  );
--ALTER TABLE dbo.perm_templates_groups OWNER TO prisma;
--
  -- SQLINES DEMO *** tes_groups_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.perm_templates_groups_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.perm_templates_groups_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --tes_groups_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.perm_templates_groups_id_seq OWNED BY dbo.perm_templates_groups.id;
--
  -- SQLINES DEMO *** tes_users; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.perm_templates_users (
    id integer NOT NULL,
    user_id integer NOT NULL,
    template_id integer NOT NULL,
    permission_reference character varying(64) NOT NULL,
    created_at datetime2,
    updated_at datetime2
  );
--ALTER TABLE dbo.perm_templates_users OWNER TO prisma;
--
  -- SQLINES DEMO *** tes_users_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.perm_templates_users_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.perm_templates_users_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --tes_users_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.perm_templates_users_id_seq OWNED BY dbo.perm_templates_users.id;
--
  -- SQLINES DEMO *** aracteristics; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.perm_tpl_characteristics (
    id integer NOT NULL,
    template_id integer NOT NULL,
    permission_key character varying(64) NOT NULL,
    with_project_creator bit DEFAULT 0 NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.perm_tpl_characteristics OWNER TO prisma;
--
  -- SQLINES DEMO *** aracteristics_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.perm_tpl_characteristics_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.perm_tpl_characteristics_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --aracteristics_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.perm_tpl_characteristics_id_seq OWNED BY dbo.perm_tpl_characteristics.id;
--
  -- SQLINES DEMO *** templates; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.permission_templates OWNER TO prisma;
--
  -- SQLINES DEMO *** templates_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.permission_templates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.permission_templates_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --templates_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.permission_templates_id_seq OWNED BY dbo.permission_templates.id;
--
  -- SQLINES DEMO *** --pe: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.plugins (
    uuid character varying(40) NOT NULL,
    kee character varying(200) NOT NULL,
    base_plugin_key character varying(200),
    file_hash character varying(200) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.plugins OWNER TO prisma;
--
  -- SQLINES DEMO *** _bindings; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.project_alm_bindings OWNER TO prisma;
--
  -- SQLINES DEMO *** _settings; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.project_alm_settings (
    uuid character varying(40) NOT NULL,
    alm_setting_uuid character varying(40) NOT NULL,
    project_uuid character varying(50) NOT NULL,
    alm_repo character varying(256),
    alm_slug character varying(256),
    updated_at bigint NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.project_alm_settings OWNER TO prisma;
--
  -- SQLINES DEMO *** nches; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.project_branches OWNER TO prisma;
--
  -- SQLINES DEMO *** ks; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.project_links (
    uuid character varying(40) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    link_type character varying(20) NOT NULL,
    name character varying(128),
    href character varying(2048) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.project_links OWNER TO prisma;
--
  -- SQLINES DEMO *** pings; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.project_mappings (
    uuid character varying(40) NOT NULL,
    key_type character varying(200) NOT NULL,
    kee character varying(4000) NOT NULL,
    project_uuid character varying(40) NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.project_mappings OWNER TO prisma;
--
  -- SQLINES DEMO *** sures; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.project_measures OWNER TO prisma;
--
  -- SQLINES DEMO *** sures_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.project_measures_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.project_measures_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --sures_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.project_measures_id_seq OWNED BY dbo.project_measures.id;
--
  -- SQLINES DEMO *** tes; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.project_qgates (
    project_uuid character varying(40) NOT NULL,
    quality_gate_uuid character varying(40) NOT NULL
  );
--ALTER TABLE dbo.project_qgates OWNER TO prisma;
--
  -- SQLINES DEMO *** ofiles; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.project_qprofiles (
    id integer NOT NULL,
    project_uuid character varying(50) NOT NULL,
    profile_key character varying(50) NOT NULL
  );
--ALTER TABLE dbo.project_qprofiles OWNER TO prisma;
--
  -- SQLINES DEMO *** ofiles_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.project_qprofiles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.project_qprofiles_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --ofiles_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.project_qprofiles_id_seq OWNED BY dbo.project_qprofiles.id;
--
  -- SQLINES DEMO *** --ype: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.projects OWNER TO prisma;
--
  -- SQLINES DEMO *** _seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.projects_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.projects_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.projects_id_seq OWNED BY dbo.projects.id;
--
  -- SQLINES DEMO ***  --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.properties OWNER TO prisma;
--
  -- SQLINES DEMO *** id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.properties_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.properties_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.properties_id_seq OWNED BY dbo.properties.id;
--
  -- SQLINES DEMO *** anges; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.qprofile_changes (
    kee character varying(40) NOT NULL,
    rules_profile_uuid character varying(255) NOT NULL,
    change_type character varying(20) NOT NULL,
    user_uuid character varying(255),
    change_data varchar(max),
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.qprofile_changes OWNER TO prisma;
--
  -- SQLINES DEMO *** it_groups; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.qprofile_edit_groups (
    uuid character varying(40) NOT NULL,
    group_id integer NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.qprofile_edit_groups OWNER TO prisma;
--
  -- SQLINES DEMO *** it_users; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.qprofile_edit_users (
    uuid character varying(40) NOT NULL,
    user_id integer NOT NULL,
    qprofile_uuid character varying(255) NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.qprofile_edit_users OWNER TO prisma;
--
  -- SQLINES DEMO *** e_conditions; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.quality_gate_conditions OWNER TO prisma;
--
  -- SQLINES DEMO *** e_conditions_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.quality_gate_conditions_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.quality_gate_conditions_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --e_conditions_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.quality_gate_conditions_id_seq OWNED BY dbo.quality_gate_conditions.id;
--
  -- SQLINES DEMO *** es; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.quality_gates (
    id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    name character varying(100) NOT NULL,
    is_built_in bit NOT NULL,
    created_at datetime2,
    updated_at datetime2
  );
--ALTER TABLE dbo.quality_gates OWNER TO prisma;
--
  -- SQLINES DEMO *** es_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.quality_gates_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.quality_gates_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --es_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.quality_gates_id_seq OWNED BY dbo.quality_gates.id;
--
  -- SQLINES DEMO *** tories; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.rule_repositories (
    kee character varying(200) NOT NULL,
    language character varying(20) NOT NULL,
    name character varying(4000) NOT NULL,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.rule_repositories OWNER TO prisma;
--
  -- SQLINES DEMO *** --: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.rules OWNER TO prisma;
--
  -- SQLINES DEMO *** q; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.rules_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.rules_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --q; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.rules_id_seq OWNED BY dbo.rules.id;
--
  -- SQLINES DEMO *** ata; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.rules_metadata OWNER TO prisma;
--
  -- SQLINES DEMO *** eters; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.rules_parameters (
    id integer NOT NULL,
    rule_id integer NOT NULL,
    name character varying(128) NOT NULL,
    description character varying(4000),
    param_type character varying(512) NOT NULL,
    default_value character varying(4000)
  );
--ALTER TABLE dbo.rules_parameters OWNER TO prisma;
--
  -- SQLINES DEMO *** eters_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.rules_parameters_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.rules_parameters_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --eters_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.rules_parameters_id_seq OWNED BY dbo.rules_parameters.id;
--
  -- SQLINES DEMO *** les; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.rules_profiles OWNER TO prisma;
--
  -- SQLINES DEMO *** les_id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.rules_profiles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.rules_profiles_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --les_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.rules_profiles_id_seq OWNED BY dbo.rules_profiles.id;
--
  -- SQLINES DEMO *** ations; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.schema_migrations (version character varying(255) NOT NULL);
--ALTER TABLE dbo.schema_migrations OWNER TO prisma;
--
  -- SQLINES DEMO *** --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.snapshots OWNER TO prisma;
--
  -- SQLINES DEMO *** d_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.snapshots_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.snapshots_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --d_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.snapshots_id_seq OWNED BY dbo.snapshots.id;
--
  -- SQLINES DEMO *** ties; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.user_properties (
    uuid character varying(40) NOT NULL,
    user_uuid character varying(255) NOT NULL,
    kee character varying(100) NOT NULL,
    text_value character varying(4000) NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL
  );
--ALTER TABLE dbo.user_properties OWNER TO prisma;
--
  -- SQLINES DEMO ***  --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.user_roles (
    id integer NOT NULL,
    organization_uuid character varying(40) NOT NULL,
    user_id integer,
    resource_id integer,
    role character varying(64) NOT NULL
  );
--ALTER TABLE dbo.user_roles OWNER TO prisma;
--
  -- SQLINES DEMO *** id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.user_roles_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.user_roles_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.user_roles_id_seq OWNED BY dbo.user_roles.id;
--
  -- SQLINES DEMO *** ; --Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.user_tokens (
    id integer NOT NULL,
    user_uuid character varying(255) NOT NULL,
    name character varying(100) NOT NULL,
    token_hash character varying(255) NOT NULL,
    last_connection_date bigint,
    created_at bigint NOT NULL
  );
--ALTER TABLE dbo.user_tokens OWNER TO prisma;
--
  -- SQLINES DEMO *** _id_seq; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.user_tokens_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.user_tokens_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --_id_seq; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.user_tokens_id_seq OWNED BY dbo.user_tokens.id;
--
  -- SQLINES DEMO *** --: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.users OWNER TO prisma;
--
  -- SQLINES DEMO *** q; --Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.users_id_seq AS integer START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.users_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** --q; Type: SEQUENCE --OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.users_id_seq OWNED BY dbo.users.id;
--
  -- SQLINES DEMO *** iveries; --Type: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.webhook_deliveries OWNER TO prisma;
--
  -- SQLINES DEMO *** --ype: TABLE; Schema: dbo; Owner: prisma
  --
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
--ALTER TABLE dbo.webhooks OWNER TO prisma;
--
  -- SQLINES DEMO *** _parameters id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.active_rule_parameters
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.active_rule_parameters_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** s id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.active_rules
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.active_rules_id_seq'  as  regclass));
--
  -- SQLINES DEMO ***  id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.ce_activity
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.ce_activity_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** ; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.ce_queue
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.ce_queue_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** s_index id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.duplications_index
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.duplications_index_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.events
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.events_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** s id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.file_sources
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.file_sources_id_seq'  as  regclass));
--
  -- SQLINES DEMO ***  id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.group_roles
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.group_roles_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.groups
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.groups_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** es id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.issue_changes
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.issue_changes_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.issues
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.issues_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** ures id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.manual_measures
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.manual_measures_id_seq'  as  regclass));
--
  -- SQLINES DEMO ***  --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.metrics
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.metrics_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** ns id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.notifications
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.notifications_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** tes_groups id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.perm_templates_groups
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.perm_templates_groups_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** tes_users id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.perm_templates_users
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.perm_templates_users_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** aracteristics id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.perm_tpl_characteristics
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(
--    cast('dbo.perm_tpl_characteristics_id_seq'  as  regclass)
 -- );
--
  -- SQLINES DEMO *** templates id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.permission_templates
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.permission_templates_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** sures id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.project_measures
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.project_measures_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** ofiles id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.project_qprofiles
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.project_qprofiles_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** ; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.projects
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.projects_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.properties
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.properties_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** e_conditions id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.quality_gate_conditions
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(
--    cast('dbo.quality_gate_conditions_id_seq'  as  regclass)
 -- );
--
  -- SQLINES DEMO *** es id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.quality_gates
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.quality_gates_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** --ype: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.rules
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.rules_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** eters id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.rules_parameters
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.rules_parameters_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** les id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.rules_profiles
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.rules_profiles_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** d; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.snapshots
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.snapshots_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.user_roles
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.user_roles_id_seq'  as  regclass));
--
  -- SQLINES DEMO ***  id; --Type: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.user_tokens
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.user_tokens_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** --ype: DEFAULT; Schema: dbo; Owner: prisma
  --
-- ALTER TABLE  dbo.users
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.users_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** _parameters pk_active_rule_parameters; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.active_rule_parameters
ADD
  CONSTRAINT pk_active_rule_parameters PRIMARY KEY (id);
--
  -- SQLINES DEMO *** s pk_active_rules; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.active_rules
ADD
  CONSTRAINT pk_active_rules PRIMARY KEY (id);
--
  -- SQLINES DEMO *** talls pk_alm_app_installs; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.alm_app_installs
ADD
  CONSTRAINT pk_alm_app_installs PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** s pk_alm_settings; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.alm_settings
ADD
  CONSTRAINT pk_alm_settings PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** operties pk_analysis_properties; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.analysis_properties
ADD
  CONSTRAINT pk_analysis_properties PRIMARY KEY (uuid);
--
  -- SQLINES DEMO ***  pk_ce_activity; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.ce_activity
ADD
  CONSTRAINT pk_ce_activity PRIMARY KEY (id);
--
  -- SQLINES DEMO *** _ce_queue; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.ce_queue
ADD
  CONSTRAINT pk_ce_queue PRIMARY KEY (id);
--
  -- SQLINES DEMO *** context pk_ce_scanner_context; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.ce_scanner_context
ADD
  CONSTRAINT pk_ce_scanner_context PRIMARY KEY (task_uuid);
--
  -- SQLINES DEMO *** racteristics pk_ce_task_characteristics; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.ce_task_characteristics
ADD
  CONSTRAINT pk_ce_task_characteristics PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** ut pk_ce_task_input; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.ce_task_input
ADD
  CONSTRAINT pk_ce_task_input PRIMARY KEY (task_uuid);
--
  -- SQLINES DEMO *** sage pk_ce_task_message; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.ce_task_message
ADD
  CONSTRAINT pk_ce_task_message PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** ofiles pk_default_qprofiles; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.default_qprofiles
ADD
  CONSTRAINT pk_default_qprofiles PRIMARY KEY (organization_uuid, language);
--
  -- SQLINES DEMO *** rule_keys pk_deprecated_rule_keys; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.deprecated_rule_keys
ADD
  CONSTRAINT pk_deprecated_rule_keys PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** s_index pk_duplications_index; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.duplications_index
ADD
  CONSTRAINT pk_duplications_index PRIMARY KEY (id);
--
  -- SQLINES DEMO *** _es_queue; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.es_queue
ADD
  CONSTRAINT pk_es_queue PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** nent_changes pk_event_component_changes; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.event_component_changes
ADD
  CONSTRAINT pk_event_component_changes PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** vents; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.events
ADD
  CONSTRAINT pk_events PRIMARY KEY (id);
--
  -- SQLINES DEMO *** s pk_file_sources; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.file_sources
ADD
  CONSTRAINT pk_file_sources PRIMARY KEY (id);
--
  -- SQLINES DEMO ***  pk_group_roles; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.group_roles
ADD
  CONSTRAINT pk_group_roles PRIMARY KEY (id);
--
  -- SQLINES DEMO *** roups; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.groups
ADD
  CONSTRAINT pk_groups PRIMARY KEY (id);
--
  -- SQLINES DEMO *** mponent_props pk_internal_component_props; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.internal_component_props
ADD
  CONSTRAINT pk_internal_component_props PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** operties pk_internal_properties; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.internal_properties
ADD
  CONSTRAINT pk_internal_properties PRIMARY KEY (kee);
--
  -- SQLINES DEMO *** es pk_issue_changes; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.issue_changes
ADD
  CONSTRAINT pk_issue_changes PRIMARY KEY (id);
--
  -- SQLINES DEMO *** ssues; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.issues
ADD
  CONSTRAINT pk_issues PRIMARY KEY (id);
--
  -- SQLINES DEMO *** es pk_live_measures; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.live_measures
ADD
  CONSTRAINT pk_live_measures PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** ures pk_manual_measures; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.manual_measures
ADD
  CONSTRAINT pk_manual_measures PRIMARY KEY (id);
--
  -- SQLINES DEMO *** metrics; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.metrics
ADD
  CONSTRAINT pk_metrics PRIMARY KEY (id);
--
  -- SQLINES DEMO *** riods pk_new_code_periods; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.new_code_periods
ADD
  CONSTRAINT pk_new_code_periods PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** ns pk_notifications; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.notifications
ADD
  CONSTRAINT pk_notifications PRIMARY KEY (id);
--
  -- SQLINES DEMO *** es pk_org_qprofiles; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.org_qprofiles
ADD
  CONSTRAINT pk_org_qprofiles PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** _gates pk_org_quality_gates; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.org_quality_gates
ADD
  CONSTRAINT pk_org_quality_gates PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** n_alm_bindings pk_organization_alm_bindings; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.organization_alm_bindings
ADD
  CONSTRAINT pk_organization_alm_bindings PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** n_members pk_organization_members; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.organization_members
ADD
  CONSTRAINT pk_organization_members PRIMARY KEY (organization_uuid, user_id);
--
  -- SQLINES DEMO *** ns pk_organizations; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.organizations
ADD
  CONSTRAINT pk_organizations PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** tes_groups pk_perm_templates_groups; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.perm_templates_groups
ADD
  CONSTRAINT pk_perm_templates_groups PRIMARY KEY (id);
--
  -- SQLINES DEMO *** tes_users pk_perm_templates_users; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.perm_templates_users
ADD
  CONSTRAINT pk_perm_templates_users PRIMARY KEY (id);
--
  -- SQLINES DEMO *** aracteristics pk_perm_tpl_characteristics; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.perm_tpl_characteristics
ADD
  CONSTRAINT pk_perm_tpl_characteristics PRIMARY KEY (id);
--
  -- SQLINES DEMO *** templates pk_permission_templates; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.permission_templates
ADD
  CONSTRAINT pk_permission_templates PRIMARY KEY (id);
--
  -- SQLINES DEMO *** plugins; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.plugins
ADD
  CONSTRAINT pk_plugins PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** _bindings pk_project_alm_bindings; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_alm_bindings
ADD
  CONSTRAINT pk_project_alm_bindings PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** _settings pk_project_alm_settings; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_alm_settings
ADD
  CONSTRAINT pk_project_alm_settings PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** nches pk_project_branches; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_branches
ADD
  CONSTRAINT pk_project_branches PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** ks pk_project_links; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_links
ADD
  CONSTRAINT pk_project_links PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** pings pk_project_mappings; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_mappings
ADD
  CONSTRAINT pk_project_mappings PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** sures pk_project_measures; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_measures
ADD
  CONSTRAINT pk_project_measures PRIMARY KEY (id);
--
  -- SQLINES DEMO *** tes pk_project_qgates; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_qgates
ADD
  CONSTRAINT pk_project_qgates PRIMARY KEY (project_uuid);
--
  -- SQLINES DEMO *** ofiles pk_project_qprofiles; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.project_qprofiles
ADD
  CONSTRAINT pk_project_qprofiles PRIMARY KEY (id);
--
  -- SQLINES DEMO *** _projects; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.projects
ADD
  CONSTRAINT pk_projects PRIMARY KEY (id);
--
  -- SQLINES DEMO *** pk_properties; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.properties
ADD
  CONSTRAINT pk_properties PRIMARY KEY (id);
--
  -- SQLINES DEMO *** anges pk_qprofile_changes; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.qprofile_changes
ADD
  CONSTRAINT pk_qprofile_changes PRIMARY KEY (kee);
--
  -- SQLINES DEMO *** it_groups pk_qprofile_edit_groups; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.qprofile_edit_groups
ADD
  CONSTRAINT pk_qprofile_edit_groups PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** it_users pk_qprofile_edit_users; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.qprofile_edit_users
ADD
  CONSTRAINT pk_qprofile_edit_users PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** e_conditions pk_quality_gate_conditions; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.quality_gate_conditions
ADD
  CONSTRAINT pk_quality_gate_conditions PRIMARY KEY (id);
--
  -- SQLINES DEMO *** es pk_quality_gates; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.quality_gates
ADD
  CONSTRAINT pk_quality_gates PRIMARY KEY (id);
--
  -- SQLINES DEMO *** tories pk_rule_repositories; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.rule_repositories
ADD
  CONSTRAINT pk_rule_repositories PRIMARY KEY (kee);
--
  -- SQLINES DEMO *** les; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.rules
ADD
  CONSTRAINT pk_rules PRIMARY KEY (id);
--
  -- SQLINES DEMO *** ata pk_rules_metadata; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.rules_metadata
ADD
  CONSTRAINT pk_rules_metadata PRIMARY KEY (rule_id, organization_uuid);
--
  -- SQLINES DEMO *** eters pk_rules_parameters; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.rules_parameters
ADD
  CONSTRAINT pk_rules_parameters PRIMARY KEY (id);
--
  -- SQLINES DEMO *** les pk_rules_profiles; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.rules_profiles
ADD
  CONSTRAINT pk_rules_profiles PRIMARY KEY (id);
--
  -- SQLINES DEMO *** k_snapshots; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.snapshots
ADD
  CONSTRAINT pk_snapshots PRIMARY KEY (id);
--
  -- SQLINES DEMO *** ties pk_user_properties; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.user_properties
ADD
  CONSTRAINT pk_user_properties PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** pk_user_roles; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.user_roles
ADD
  CONSTRAINT pk_user_roles PRIMARY KEY (id);
--
  -- SQLINES DEMO ***  pk_user_tokens; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.user_tokens
ADD
  CONSTRAINT pk_user_tokens PRIMARY KEY (id);
--
  -- SQLINES DEMO *** ers; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.users
ADD
  CONSTRAINT pk_users PRIMARY KEY (id);
--
  -- SQLINES DEMO *** iveries pk_webhook_deliveries; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.webhook_deliveries
ADD
  CONSTRAINT pk_webhook_deliveries PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** _webhooks; --Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.webhooks
ADD
  CONSTRAINT pk_webhooks PRIMARY KEY (uuid);
--
  -- SQLINES DEMO *** talls_external_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX alm_app_installs_external_id ON dbo.alm_app_installs USING dbo.btree (user_external_id);
--
  -- SQLINES DEMO *** talls_install; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX alm_app_installs_install ON dbo.alm_app_installs USING dbo.btree (alm_id, install_id);
--
  ---- SQLINES DEMO *** talls_owner; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  ----CREATE UNIQUE INDEX alm_app_installs_owner ON dbo.alm_app_installs USING --dbo.btree (alm_id, owner_id);
--
  -- SQLINES DEMO *** id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX analyses_uuid ON dbo.snapshots USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** operties_analysis; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX analysis_properties_analysis ON dbo.analysis_properties USING dbo.btree (analysis_uuid);
--
  -- SQLINES DEMO *** _component; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_activity_component ON dbo.ce_activity USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** _islast; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_activity_islast ON dbo.ce_activity USING dbo.btree (is_last, status);
--
  -- SQLINES DEMO *** _islast_key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_activity_islast_key ON dbo.ce_activity USING dbo.btree (is_last_key);
--
  -- SQLINES DEMO *** _main_component; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_activity_main_component ON dbo.ce_activity USING dbo.btree (main_component_uuid);
--
  -- SQLINES DEMO *** _main_islast; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_activity_main_islast ON dbo.ce_activity USING dbo.btree (main_is_last, status);
--
  -- SQLINES DEMO *** _main_islast_key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_activity_main_islast_key ON dbo.ce_activity USING dbo.btree (main_is_last_key);
--
  -- SQLINES DEMO *** _uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX ce_activity_uuid ON dbo.ce_activity USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** ristics_task_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_characteristics_task_uuid ON dbo.ce_task_characteristics USING dbo.btree (task_uuid);
--
  -- SQLINES DEMO *** mponent; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_queue_component ON dbo.ce_queue USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** in_component; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_queue_main_component ON dbo.ce_queue USING dbo.btree (main_component_uuid);
--
  -- SQLINES DEMO *** id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX ce_queue_uuid ON dbo.ce_queue USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** sage_task; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_task_message_task ON dbo.ce_task_message USING dbo.btree (task_uuid);
--
  -- SQLINES DEMO *** d; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ce_task_uuid ON dbo.webhook_deliveries USING dbo.btree (ce_task_uuid);
--
  -- SQLINES DEMO *** uid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX component_uuid ON dbo.webhook_deliveries USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** _analysis_component; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX duplication_analysis_component ON dbo.duplications_index USING dbo.btree (analysis_uuid, component_uuid);
--
  -- SQLINES DEMO *** s_index_hash; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX duplications_index_hash ON dbo.duplications_index USING dbo.btree (hash);
--
  -- SQLINES DEMO *** eated_at; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX es_queue_created_at ON dbo.es_queue USING dbo.btree (created_at);
--
  -- SQLINES DEMO *** nent_changes_unique; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX event_component_changes_unique ON dbo.event_component_changes USING dbo.btree (event_uuid, change_category, component_uuid);
--
  -- SQLINES DEMO *** changes_analysis; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX event_cpnt_changes_analysis ON dbo.event_component_changes USING dbo.btree (event_analysis_uuid);
--
  -- SQLINES DEMO *** changes_cpnt; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX event_cpnt_changes_cpnt ON dbo.event_component_changes USING dbo.btree (event_component_uuid);
--
  -- SQLINES DEMO *** ysis; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX events_analysis ON dbo.events USING dbo.btree (analysis_uuid);
--
  -- SQLINES DEMO *** onent_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX events_component_uuid ON dbo.events USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** ; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX events_uuid ON dbo.events USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** s_file_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX file_sources_file_uuid ON dbo.file_sources USING dbo.btree (file_uuid);
--
  -- SQLINES DEMO *** s_project_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX file_sources_project_uuid ON dbo.file_sources USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** s_updated_at; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX file_sources_updated_at ON dbo.file_sources USING dbo.btree (updated_at);
--
  -- SQLINES DEMO *** _resource; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX group_roles_resource ON dbo.group_roles USING dbo.btree (resource_id);
--
  -- SQLINES DEMO *** s_unique; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX groups_users_unique ON dbo.groups_users USING dbo.btree (group_id, user_id);
--
  -- SQLINES DEMO *** s_users_on_group_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX index_groups_users_on_group_id ON dbo.groups_users USING dbo.btree (group_id);
--
  -- SQLINES DEMO *** s_users_on_user_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX index_groups_users_on_user_id ON dbo.groups_users USING dbo.btree (user_id);
--
  -- SQLINES DEMO *** es_issue_key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issue_changes_issue_key ON dbo.issue_changes USING dbo.btree (issue_key);
--
  -- SQLINES DEMO *** es_kee; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issue_changes_kee ON dbo.issue_changes USING dbo.btree (kee);
--
  -- SQLINES DEMO *** gnee; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_assignee ON dbo.issues USING dbo.btree (assignee);
--
  -- SQLINES DEMO *** onent_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_component_uuid ON dbo.issues USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** tion_date; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_creation_date ON dbo.issues USING dbo.btree (issue_creation_date);
--
  -- SQLINES DEMO ***  --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX issues_kee ON dbo.issues USING dbo.btree (kee);
--
  -- SQLINES DEMO *** ect_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_project_uuid ON dbo.issues USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** lution; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_resolution ON dbo.issues USING dbo.btree (resolution);
--
  -- SQLINES DEMO *** _id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_rule_id ON dbo.issues USING dbo.btree (rule_id);
--
  -- SQLINES DEMO *** ted_at; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX issues_updated_at ON dbo.issues USING dbo.btree (updated_at);
--
  -- SQLINES DEMO *** ctive_rule_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ix_arp_on_active_rule_id ON dbo.active_rule_parameters USING dbo.btree (active_rule_id);
--
  -- SQLINES DEMO *** ers_on_user_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX ix_org_members_on_user_id ON dbo.organization_members USING dbo.btree (user_id);
--
  -- SQLINES DEMO *** e; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX key_type_kee ON dbo.project_mappings USING dbo.btree (key_type, kee);
--
  -- SQLINES DEMO *** es_component; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX live_measures_component ON dbo.live_measures USING dbo.btree (component_uuid, metric_id);
--
  -- SQLINES DEMO *** es_project; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX live_measures_project ON dbo.live_measures USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** ures_component_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX manual_measures_component_uuid ON dbo.manual_measures USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** alysis_metric; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX measures_analysis_metric ON dbo.project_measures USING dbo.btree (analysis_uuid, metric_id);
--
  -- SQLINES DEMO *** mponent_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX measures_component_uuid ON dbo.project_measures USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** que_name; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX metrics_unique_name ON dbo.metrics USING dbo.btree (name);
--
  -- SQLINES DEMO *** dings_install; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX org_alm_bindings_install ON dbo.organization_alm_bindings USING dbo.btree (alm_app_install_uuid);
--
  -- SQLINES DEMO *** dings_org; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX org_alm_bindings_org ON dbo.organization_alm_bindings USING dbo.btree (organization_uuid);
--
  -- SQLINES DEMO *** es_parent_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX org_qprofiles_parent_uuid ON dbo.org_qprofiles USING dbo.btree (parent_uuid);
--
  -- SQLINES DEMO *** n_key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX organization_key ON dbo.organizations USING dbo.btree (kee);
--
  -- SQLINES DEMO *** n_webhook; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX organization_webhook ON dbo.webhooks USING dbo.btree (organization_uuid);
--
  -- SQLINES DEMO *** ; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX plugins_key ON dbo.plugins USING dbo.btree (kee);
--
  -- SQLINES DEMO *** _bindings_alm_repo; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX project_alm_bindings_alm_repo ON dbo.project_alm_bindings USING dbo.btree (alm_id, repo_id);
--
  -- SQLINES DEMO *** _bindings_project; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX project_alm_bindings_project ON dbo.project_alm_bindings USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** _settings_alm; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX project_alm_settings_alm ON dbo.project_alm_settings USING dbo.btree (alm_setting_uuid);
--
  -- SQLINES DEMO *** nches_kee_key_type; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX project_branches_kee_key_type ON dbo.project_branches USING dbo.btree (project_uuid, kee, key_type);
--
  -- SQLINES DEMO *** ks_project; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX project_links_project ON dbo.project_links USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** d; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX project_uuid ON dbo.project_mappings USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** hook; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX project_webhook ON dbo.webhooks USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** e; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX projects_kee ON dbo.projects USING dbo.btree (kee);
--
  -- SQLINES DEMO *** dule_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX projects_module_uuid ON dbo.projects USING dbo.btree (module_uuid);
--
  -- SQLINES DEMO *** ganization; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX projects_organization ON dbo.projects USING dbo.btree (organization_uuid);
--
  -- SQLINES DEMO *** oject_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX projects_project_uuid ON dbo.projects USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** alifier; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX projects_qualifier ON dbo.projects USING dbo.btree (qualifier);
--
  -- SQLINES DEMO *** ot_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX projects_root_uuid ON dbo.projects USING dbo.btree (root_uuid);
--
  -- SQLINES DEMO *** id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX projects_uuid ON dbo.projects USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX properties_key ON dbo.properties USING dbo.btree (prop_key);
--
  -- SQLINES DEMO *** rules_profile_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX qp_changes_rules_profile_uuid ON dbo.qprofile_changes USING dbo.btree (rules_profile_uuid);
--
  -- SQLINES DEMO *** it_groups_qprofile; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX qprofile_edit_groups_qprofile ON dbo.qprofile_edit_groups USING dbo.btree (qprofile_uuid);
--
  -- SQLINES DEMO *** it_groups_unique; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX qprofile_edit_groups_unique ON dbo.qprofile_edit_groups USING dbo.btree (group_id, qprofile_uuid);
--
  -- SQLINES DEMO *** it_users_qprofile; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX qprofile_edit_users_qprofile ON dbo.qprofile_edit_users USING dbo.btree (qprofile_uuid);
--
  -- SQLINES DEMO *** it_users_unique; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX qprofile_edit_users_unique ON dbo.qprofile_edit_users USING dbo.btree (user_id, qprofile_uuid);
--
  -- SQLINES DEMO *** rg_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX qprofiles_org_uuid ON dbo.org_qprofiles USING dbo.btree (organization_uuid);
--
  -- SQLINES DEMO *** p_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX qprofiles_rp_uuid ON dbo.org_qprofiles USING dbo.btree (rules_profile_uuid);
--
  -- SQLINES DEMO *** recated_rule_keys; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX rule_id_deprecated_rule_keys ON dbo.deprecated_rule_keys USING dbo.btree (rule_id);
--
  -- SQLINES DEMO *** eters_rule_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX rules_parameters_rule_id ON dbo.rules_parameters USING dbo.btree (rule_id);
--
  -- SQLINES DEMO *** eters_unique; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX rules_parameters_unique ON dbo.rules_parameters USING dbo.btree (rule_id, name);
--
  -- SQLINES DEMO *** key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX rules_repo_key ON dbo.rules USING dbo.btree (plugin_rule_key, plugin_name);
--
  -- SQLINES DEMO *** mponent; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX snapshot_component ON dbo.snapshots USING dbo.btree (component_uuid);
--
  -- SQLINES DEMO *** ttings; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_alm_settings ON dbo.alm_settings USING dbo.btree (kee);
--
  -- SQLINES DEMO *** t_qprofiles_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_default_qprofiles_uuid ON dbo.default_qprofiles USING dbo.btree (qprofile_uuid);
--
  -- SQLINES DEMO *** ated_rule_keys; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_deprecated_rule_keys ON dbo.deprecated_rule_keys USING dbo.btree (old_repository_key, old_rule_key);
--
  -- SQLINES DEMO *** al_id; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_external_id ON dbo.users USING dbo.btree (external_identity_provider, external_id);
--
  -- SQLINES DEMO *** al_login; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_external_login ON dbo.users USING dbo.btree (external_identity_provider, external_login);
--
  -- SQLINES DEMO *** roles; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_group_roles ON dbo.group_roles USING dbo.btree (organization_uuid, group_id, resource_id, role);
--
  -- SQLINES DEMO *** de_periods; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_new_code_periods ON dbo.new_code_periods USING dbo.btree (project_uuid, branch_uuid);
--
  -- SQLINES DEMO *** ality_gates; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_org_quality_gates ON dbo.org_quality_gates USING dbo.btree (organization_uuid, quality_gate_uuid);
--
  -- SQLINES DEMO *** pl_charac; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_perm_tpl_charac ON dbo.perm_tpl_characteristics USING dbo.btree (template_id, permission_key);
--
  -- SQLINES DEMO *** e_rule_ids; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_profile_rule_ids ON dbo.active_rules USING dbo.btree (profile_id, rule_id);
--
  -- SQLINES DEMO *** t_alm_settings; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_project_alm_settings ON dbo.project_alm_settings USING dbo.btree (project_uuid);
--
  -- SQLINES DEMO *** t_qgates; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_project_qgates ON dbo.project_qgates USING dbo.btree (project_uuid, quality_gate_uuid);
--
  -- SQLINES DEMO *** t_qprofiles; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_project_qprofiles ON dbo.project_qprofiles USING dbo.btree (project_uuid, profile_key);
--
  -- SQLINES DEMO *** key; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_qprof_key ON dbo.rules_profiles USING dbo.btree (kee);
--
  -- SQLINES DEMO *** y_gates_uuid; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX uniq_quality_gates_uuid ON dbo.quality_gates USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** onent_uuid_kee; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX unique_component_uuid_kee ON dbo.internal_component_props USING dbo.btree (component_uuid, kee);
--
  -- SQLINES DEMO *** ties_user_uuid_kee; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX user_properties_user_uuid_kee ON dbo.user_properties USING dbo.btree (user_uuid, kee);
--
  -- SQLINES DEMO *** resource; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX user_roles_resource ON dbo.user_roles USING dbo.btree (resource_id);
--
  -- SQLINES DEMO *** user; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX user_roles_user ON dbo.user_roles USING dbo.btree (user_id);
--
  -- SQLINES DEMO *** _token_hash; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX user_tokens_token_hash ON dbo.user_tokens USING dbo.btree (token_hash);
--
  -- SQLINES DEMO *** _user_uuid_name; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX user_tokens_user_uuid_name ON dbo.user_tokens USING dbo.btree (user_uuid, name);
--
  -- SQLINES DEMO *** ; --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX users_login ON dbo.users USING dbo.btree (login);
--
  -- SQLINES DEMO *** ed_at; --Type: INDEX; Schema: dbo; Owner: prisma
  --
--  CREATE INDEX users_updated_at ON dbo.users USING dbo.btree (updated_at);
--
  -- SQLINES DEMO ***  --Type: INDEX; Schema: dbo; Owner: prisma
  --
  --CREATE UNIQUE INDEX users_uuid ON dbo.users USING dbo.btree (uuid);
--
  -- SQLINES DEMO *** se dump complete
  --