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
--
  -- Name: jcr_sitem_next_val(character varying, integer, integer); Type: FUNCTION; Schema: public; Owner: prisma
  --
  CREATE FUNCTION public.jcr_sitem_next_val(
    nameseq character varying,
    newval integer,
    increment integer
  ) RETURNS integer LANGUAGE plpgsql AS $$ DECLARE result INTEGER;
BEGIN IF (increment = 1) THEN
SELECT
  nextval (nameSeq) INTO result;
ELSIF (
    select
      nextval (nameSeq)
  ) < newVal THEN
SELECT
  setval(nameSeq, newVal + 1, FALSE) INTO result;
END IF;
RETURN result;
END;
$$;
ALTER FUNCTION public.jcr_sitem_next_val(
  nameseq character varying,
  newval integer,
  increment integer
) OWNER TO prisma;
SET
  default_tablespace = '';
SET
  default_with_oids = false;
--
  -- Name: addons_kudos; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_kudos (
    kudos_id bigint NOT NULL,
    sender_id bigint,
    receiver_id bigint,
    is_receiver_user boolean NOT NULL,
    entity_id bigint,
    entity_type integer,
    message text,
    created_date bigint,
    parent_entity_id bigint,
    activity_id bigint
  );
ALTER TABLE public.addons_kudos OWNER TO prisma;
--
  -- Name: addons_perkstore_image; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_perkstore_image (
    image_file_id bigint NOT NULL,
    product_id bigint NOT NULL
  );
ALTER TABLE public.addons_perkstore_image OWNER TO prisma;
--
  -- Name: addons_perkstore_product; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_perkstore_product (
    product_id bigint NOT NULL,
    title character varying(200),
    description character varying(2000),
    illustration_url character varying(500),
    enabled boolean,
    unlimited boolean,
    allow_fraction boolean,
    total_supply double precision,
    price double precision,
    receiver_id bigint,
    periodicity integer,
    max_orders_per_user double precision,
    created_date bigint,
    last_modified_date bigint,
    creator bigint,
    last_modifier bigint
  );
ALTER TABLE public.addons_perkstore_product OWNER TO prisma;
--
  -- Name: addons_perkstore_product_marchand; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_perkstore_product_marchand (
    marchand_identity_id bigint NOT NULL,
    product_id bigint NOT NULL
  );
ALTER TABLE public.addons_perkstore_product_marchand OWNER TO prisma;
--
  -- Name: addons_perkstore_product_order; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_perkstore_product_order (
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    transaction_hash character varying(66),
    refund_transaction_hash character varying(66),
    quantity double precision,
    delivered_quantity double precision,
    refunded_quantity double precision,
    remaining_quantity double precision,
    amount double precision,
    refunded_amount double precision,
    sender_id bigint,
    receiver_id bigint,
    status integer,
    tx_status integer,
    refund_tx_status integer,
    created_date bigint,
    delivered_date bigint,
    refunded_date bigint,
    error_code integer DEFAULT 0
  );
ALTER TABLE public.addons_perkstore_product_order OWNER TO prisma;
--
  -- Name: addons_perkstore_product_permission; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_perkstore_product_permission (
    permission_identity_id bigint NOT NULL,
    product_id bigint NOT NULL
  );
ALTER TABLE public.addons_perkstore_product_permission OWNER TO prisma;
--
  -- Name: addons_wallet_account; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_account (
    identity_id bigint NOT NULL,
    identity_type integer NOT NULL,
    address character varying(100) NOT NULL,
    phrase character varying(100) NOT NULL,
    enabled boolean,
    initialization_state integer DEFAULT 0,
    backed_up boolean DEFAULT false
  );
ALTER TABLE public.addons_wallet_account OWNER TO prisma;
--
  -- Name: addons_wallet_blockchain_state; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_blockchain_state (
    blockchain_state_id bigint NOT NULL,
    wallet_id bigint NOT NULL,
    contract_address character varying(100) NOT NULL,
    ether_balance double precision DEFAULT 0,
    token_balance double precision DEFAULT 0,
    reward_balance double precision DEFAULT 0,
    vesting_balance double precision DEFAULT 0,
    admin_level integer DEFAULT 0,
    is_approved boolean DEFAULT false,
    is_initialized boolean DEFAULT false
  );
ALTER TABLE public.addons_wallet_blockchain_state OWNER TO prisma;
--
  -- Name: addons_wallet_gam_team; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_gam_team (
    team_id bigint NOT NULL,
    team_name character varying(200) NOT NULL,
    team_description character varying(2000),
    team_reward_type integer,
    team_budget double precision,
    team_member_reward double precision,
    team_space_id bigint,
    team_manager_id bigint,
    team_disabled boolean DEFAULT false,
    team_deleted boolean DEFAULT false
  );
ALTER TABLE public.addons_wallet_gam_team OWNER TO prisma;
--
  -- Name: addons_wallet_gam_team_member; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_gam_team_member (
    member_id bigint NOT NULL,
    member_identity_id bigint NOT NULL,
    team_id bigint NOT NULL
  );
ALTER TABLE public.addons_wallet_gam_team_member OWNER TO prisma;
--
  -- Name: addons_wallet_key; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_key (
    key_id bigint NOT NULL,
    wallet_id bigint NOT NULL,
    content text NOT NULL
  );
ALTER TABLE public.addons_wallet_key OWNER TO prisma;
--
  -- Name: addons_wallet_label; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_label (
    label_id bigint NOT NULL,
    identity_id bigint,
    address character varying(100) NOT NULL,
    label character varying(100) NOT NULL
  );
ALTER TABLE public.addons_wallet_label OWNER TO prisma;
--
  -- Name: addons_wallet_reward; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_reward (
    reward_id bigint NOT NULL,
    identity_id bigint DEFAULT 0 NOT NULL,
    reward_period_id bigint NOT NULL,
    team_id bigint,
    transaction_hash character varying(100),
    enabled boolean DEFAULT false,
    tokens_to_send double precision DEFAULT 0,
    tokens_sent double precision DEFAULT 0
  );
ALTER TABLE public.addons_wallet_reward OWNER TO prisma;
--
  -- Name: addons_wallet_reward_period; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_reward_period (
    reward_period_id bigint NOT NULL,
    period_type integer DEFAULT 0 NOT NULL,
    start_time bigint DEFAULT 0,
    end_time bigint DEFAULT 0,
    status integer DEFAULT 0
  );
ALTER TABLE public.addons_wallet_reward_period OWNER TO prisma;
--
  -- Name: addons_wallet_reward_plugin; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_reward_plugin (
    reward_plugin_id bigint NOT NULL,
    reward_id bigint NOT NULL,
    plugin_id character varying(100),
    pool_used boolean DEFAULT false,
    points double precision DEFAULT 0,
    amount double precision DEFAULT 0
  );
ALTER TABLE public.addons_wallet_reward_plugin OWNER TO prisma;
--
  -- Name: addons_wallet_transaction; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.addons_wallet_transaction (
    transaction_id bigint NOT NULL,
    network_id bigint NOT NULL,
    hash character varying(100) NOT NULL,
    pending boolean,
    success boolean,
    admin_op boolean,
    from_address character varying(100) NOT NULL,
    to_address character varying(100),
    by_address character varying(100),
    label text,
    message text,
    value double precision,
    contract_address character varying(100),
    contract_method character varying(30),
    contract_amount double precision,
    created_date bigint,
    issuer_id bigint DEFAULT 0,
    gas_used integer DEFAULT 0,
    gas_price double precision DEFAULT 0,
    token_fee double precision DEFAULT 0,
    no_contract_funds boolean DEFAULT false,
    nonce bigint DEFAULT 0,
    raw_transaction text,
    sent_date bigint DEFAULT 0,
    sending_attempt_count bigint DEFAULT 0,
    ether_fee double precision DEFAULT 0
  );
ALTER TABLE public.addons_wallet_transaction OWNER TO prisma;
--
  -- Name: databasechangelog; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255)
  );
ALTER TABLE public.databasechangelog OWNER TO prisma;
--
  -- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
  );
ALTER TABLE public.databasechangeloglock OWNER TO prisma;
--
  -- Name: email_queue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.email_queue (
    email_id bigint NOT NULL,
    creation_date timestamp without time zone,
    type character varying(550),
    sender character varying(200),
    receiver character varying(200),
    subject character varying(550),
    body text,
    footer character varying(550)
  );
ALTER TABLE public.email_queue OWNER TO prisma;
--
  -- Name: es_indexing_queue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.es_indexing_queue (
    operation_id bigint NOT NULL,
    entity_type character varying(50) NOT NULL,
    entity_id character varying(50),
    operation_type character(1) NOT NULL,
    operation_timestamp timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.es_indexing_queue OWNER TO prisma;
--
  -- Name: files_binary; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.files_binary (
    blob_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    data bytea,
    updated_date timestamp without time zone DEFAULT now()
  );
ALTER TABLE public.files_binary OWNER TO prisma;
--
  -- Name: files_files; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.files_files (
    file_id bigint NOT NULL,
    namespace_id integer NOT NULL,
    name character varying(550) NOT NULL,
    mimetype character varying(100),
    file_size bigint,
    updated_date timestamp without time zone DEFAULT now() NOT NULL,
    updater character varying(200),
    checksum character varying(100),
    deleted boolean DEFAULT false
  );
ALTER TABLE public.files_files OWNER TO prisma;
--
  -- Name: files_namespaces; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.files_namespaces (
    namespace_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(100)
  );
ALTER TABLE public.files_namespaces OWNER TO prisma;
--
  -- Name: files_orphan_files; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.files_orphan_files (
    id integer NOT NULL,
    file_id bigint NOT NULL,
    deleted_date timestamp without time zone DEFAULT now() NOT NULL,
    checksum character varying(100)
  );
ALTER TABLE public.files_orphan_files OWNER TO prisma;
--
  -- Name: gamification_actions_history; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gamification_actions_history (
    id bigint NOT NULL,
    action_date date NOT NULL,
    user_social_id character varying(200) NOT NULL,
    global_score bigint NOT NULL,
    action_title character varying(70) NOT NULL,
    domain character varying(32) NOT NULL,
    context character varying(200),
    action_score bigint NOT NULL,
    created_by character varying(200) NOT NULL,
    created_date timestamp without time zone DEFAULT now(),
    last_modified_by character varying(200),
    last_modified_date timestamp without time zone,
    receiver character varying(200),
    object_id character varying(500),
    domain_id bigint
  );
ALTER TABLE public.gamification_actions_history OWNER TO prisma;
--
  -- Name: gamification_badges; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gamification_badges (
    badge_id bigint NOT NULL,
    title character varying(50) NOT NULL,
    description character varying(255) NOT NULL,
    needed_score bigint NOT NULL,
    icon_file_id bigint,
    validity_date_start timestamp without time zone,
    validity_date_end timestamp without time zone,
    enabled boolean DEFAULT false NOT NULL,
    created_by character varying(200) NOT NULL,
    domain character varying(70) NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by character varying(200),
    last_modified_date timestamp without time zone,
    domain_id bigint,
    deleted boolean DEFAULT false NOT NULL
  );
ALTER TABLE public.gamification_badges OWNER TO prisma;
--
  -- Name: gamification_context_items; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gamification_context_items (
    id bigint NOT NULL,
    occurrence integer,
    operation_type character varying(255),
    zone character varying(70),
    score bigint,
    gamification_user_id bigint NOT NULL
  );
ALTER TABLE public.gamification_context_items OWNER TO prisma;
--
  -- Name: gamification_domain; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gamification_domain (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(255) NOT NULL,
    priority integer,
    created_by character varying(200) NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by character varying(200),
    last_modified_date timestamp without time zone,
    enabled boolean DEFAULT true NOT NULL,
    deleted boolean DEFAULT false NOT NULL
  );
ALTER TABLE public.gamification_domain OWNER TO prisma;
--
  -- Name: gamification_rule; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gamification_rule (
    id bigint NOT NULL,
    title character varying(70) NOT NULL,
    description character varying(255) NOT NULL,
    score bigint NOT NULL,
    area character varying(32),
    enabled boolean DEFAULT false NOT NULL,
    created_by character varying(200) NOT NULL,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    last_modified_by character varying(200),
    last_modified_date timestamp without time zone,
    domain_id bigint,
    event character varying(70),
    deleted boolean DEFAULT false NOT NULL
  );
ALTER TABLE public.gamification_rule OWNER TO prisma;
--
  -- Name: gamification_user_reputation; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.gamification_user_reputation (
    id bigint NOT NULL,
    score bigint,
    username character varying(200) NOT NULL
  );
ALTER TABLE public.gamification_user_reputation OWNER TO prisma;
--
  -- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.hibernate_sequence START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.hibernate_sequence OWNER TO prisma;
--
  -- Name: idm_queue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.idm_queue (
    idm_queue_id bigint NOT NULL,
    entity_id character varying(200) NOT NULL,
    entity_type integer NOT NULL,
    nb_retries integer NOT NULL,
    processed boolean NOT NULL,
    create_date timestamp without time zone NOT NULL,
    operation_type integer NOT NULL
  );
ALTER TABLE public.idm_queue OWNER TO prisma;
--
  -- Name: jbid_attr_bin_value; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_attr_bin_value (
    bin_value_id bigint NOT NULL,
    value oid
  );
ALTER TABLE public.jbid_attr_bin_value OWNER TO prisma;
--
  -- Name: jbid_creden_bin_value; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_creden_bin_value (
    bin_value_id bigint NOT NULL,
    value oid
  );
ALTER TABLE public.jbid_creden_bin_value OWNER TO prisma;
--
  -- Name: jbid_io; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io (
    id bigint NOT NULL,
    identity_type bigint NOT NULL,
    name character varying(255) NOT NULL,
    realm bigint NOT NULL
  );
ALTER TABLE public.jbid_io OWNER TO prisma;
--
  -- Name: jbid_io_attr; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_attr (
    attribute_id bigint NOT NULL,
    identity_object_id bigint NOT NULL,
    name character varying(255),
    attribute_type character varying(255),
    bin_value_id bigint
  );
ALTER TABLE public.jbid_io_attr OWNER TO prisma;
--
  -- Name: jbid_io_attr_text_values; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_attr_text_values (
    text_attr_value_id bigint NOT NULL,
    attr_value character varying(255)
  );
ALTER TABLE public.jbid_io_attr_text_values OWNER TO prisma;
--
  -- Name: jbid_io_creden; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_creden (
    id bigint NOT NULL,
    bin_value_id bigint,
    identity_object_id bigint NOT NULL,
    text character varying(255),
    credential_type bigint NOT NULL
  );
ALTER TABLE public.jbid_io_creden OWNER TO prisma;
--
  -- Name: jbid_io_creden_props; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_creden_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_io_creden_props OWNER TO prisma;
--
  -- Name: jbid_io_creden_type; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_creden_type (
    id bigint NOT NULL,
    name character varying(255)
  );
ALTER TABLE public.jbid_io_creden_type OWNER TO prisma;
--
  -- Name: jbid_io_props; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_io_props OWNER TO prisma;
--
  -- Name: jbid_io_rel; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_rel (
    id bigint NOT NULL,
    from_identity bigint NOT NULL,
    name bigint,
    to_identity bigint NOT NULL,
    rel_type bigint NOT NULL
  );
ALTER TABLE public.jbid_io_rel OWNER TO prisma;
--
  -- Name: jbid_io_rel_name; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_rel_name (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    realm bigint NOT NULL
  );
ALTER TABLE public.jbid_io_rel_name OWNER TO prisma;
--
  -- Name: jbid_io_rel_name_props; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_rel_name_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_io_rel_name_props OWNER TO prisma;
--
  -- Name: jbid_io_rel_props; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_rel_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_io_rel_props OWNER TO prisma;
--
  -- Name: jbid_io_rel_type; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_rel_type (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_io_rel_type OWNER TO prisma;
--
  -- Name: jbid_io_type; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_io_type (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_io_type OWNER TO prisma;
--
  -- Name: jbid_real_props; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_real_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_real_props OWNER TO prisma;
--
  -- Name: jbid_realm; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jbid_realm (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
  );
ALTER TABLE public.jbid_realm OWNER TO prisma;
--
  -- Name: jcr_sitem; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jcr_sitem (
    id character varying(96) NOT NULL,
    parent_id character varying(96) NOT NULL,
    name character varying(512) NOT NULL,
    version integer NOT NULL,
    container_name character varying(96) NOT NULL,
    i_class integer NOT NULL,
    i_index integer NOT NULL,
    n_order_num integer,
    p_type integer,
    p_multivalued boolean
  );
ALTER TABLE public.jcr_sitem OWNER TO prisma;
--
  -- Name: jcr_sref; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jcr_sref (
    node_id character varying(96) NOT NULL,
    property_id character varying(96) NOT NULL,
    order_num integer NOT NULL
  );
ALTER TABLE public.jcr_sref OWNER TO prisma;
--
  -- Name: jcr_svalue; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.jcr_svalue (
    id bigint NOT NULL,
    data bytea,
    order_num integer NOT NULL,
    property_id character varying(96) NOT NULL,
    storage_desc character varying(512)
  );
ALTER TABLE public.jcr_svalue OWNER TO prisma;
--
  -- Name: jcr_svalue_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.jcr_svalue_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.jcr_svalue_id_seq OWNER TO prisma;
--
  -- Name: jcr_svalue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.jcr_svalue_id_seq OWNED BY public.jcr_svalue.id;
--
  -- Name: msg_devices; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.msg_devices (
    id bigint NOT NULL,
    token character varying(200) NOT NULL,
    username character varying(200) NOT NULL,
    type character varying(200),
    registration_date timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.msg_devices OWNER TO prisma;
--
  -- Name: ntf_email_notifs; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ntf_email_notifs (
    email_notif_id bigint NOT NULL,
    sender character varying(200),
    type character varying(550) NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    sending_order integer NOT NULL
  );
ALTER TABLE public.ntf_email_notifs OWNER TO prisma;
--
  -- Name: ntf_email_notifs_digest; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ntf_email_notifs_digest (
    email_notif_digest_id bigint NOT NULL,
    email_notif_id bigint NOT NULL,
    digest_type character varying(550)
  );
ALTER TABLE public.ntf_email_notifs_digest OWNER TO prisma;
--
  -- Name: ntf_email_notifs_params; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ntf_email_notifs_params (
    email_notif_params_id bigint NOT NULL,
    email_notif_id bigint NOT NULL,
    param_name character varying(550) NOT NULL,
    param_value text
  );
ALTER TABLE public.ntf_email_notifs_params OWNER TO prisma;
--
  -- Name: ntf_web_notifs; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ntf_web_notifs (
    web_notif_id bigint NOT NULL,
    sender character varying(200),
    type character varying(550) NOT NULL,
    creation_date timestamp without time zone NOT NULL,
    text text
  );
ALTER TABLE public.ntf_web_notifs OWNER TO prisma;
--
  -- Name: ntf_web_notifs_params; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ntf_web_notifs_params (
    web_notif_params_id bigint NOT NULL,
    web_notif_id bigint NOT NULL,
    param_name character varying(550) NOT NULL,
    param_value text
  );
ALTER TABLE public.ntf_web_notifs_params OWNER TO prisma;
--
  -- Name: ntf_web_notifs_users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.ntf_web_notifs_users (
    web_notifs_users_id bigint NOT NULL,
    web_notif_id bigint NOT NULL,
    receiver character varying(200) NOT NULL,
    update_date timestamp without time zone NOT NULL,
    is_read boolean,
    show_popover boolean,
    reset_number_badge boolean
  );
ALTER TABLE public.ntf_web_notifs_users OWNER TO prisma;
--
  -- Name: portal_app_categories; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_app_categories (
    id bigint NOT NULL,
    name character varying(200),
    display_name character varying(200),
    description text,
    created_date bigint,
    modified_date bigint
  );
ALTER TABLE public.portal_app_categories OWNER TO prisma;
--
  -- Name: portal_applications; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_applications (
    id bigint NOT NULL,
    display_name character varying(200),
    description text,
    created_date bigint,
    modified_date bigint,
    app_name character varying(200),
    type character varying(50),
    content_id character varying(200),
    category_id bigint NOT NULL
  );
ALTER TABLE public.portal_applications OWNER TO prisma;
--
  -- Name: portal_containers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_containers (
    id bigint NOT NULL,
    webui_id character varying(200),
    name character varying(200),
    icon character varying(200),
    template character varying(500),
    factory_id character varying(200),
    title character varying(200),
    description text,
    width character varying(20),
    height character varying(20),
    properties text,
    container_body text
  );
ALTER TABLE public.portal_containers OWNER TO prisma;
--
  -- Name: portal_description_localized; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_description_localized (
    description_id bigint,
    locale character varying(20),
    name character varying(200),
    description character varying(200)
  );
ALTER TABLE public.portal_description_localized OWNER TO prisma;
--
  -- Name: portal_descriptions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_descriptions (
    description_id bigint NOT NULL,
    ref_id character varying(200),
    name character varying(200),
    description character varying(200)
  );
ALTER TABLE public.portal_descriptions OWNER TO prisma;
--
  -- Name: portal_navigation_nodes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_navigation_nodes (
    node_id bigint NOT NULL,
    name character varying(200),
    label character varying(200),
    icon character varying(200),
    start_time bigint,
    end_time bigint,
    visibility integer,
    node_index integer,
    page_id bigint,
    parent_id bigint
  );
ALTER TABLE public.portal_navigation_nodes OWNER TO prisma;
--
  -- Name: portal_navigations; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_navigations (
    navigation_id bigint NOT NULL,
    site_id bigint NOT NULL,
    priority integer,
    node_id bigint
  );
ALTER TABLE public.portal_navigations OWNER TO prisma;
--
  -- Name: portal_pages; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_pages (
    id bigint NOT NULL,
    site_id bigint NOT NULL,
    show_max_window boolean,
    display_name character varying(200),
    name character varying(200),
    description text,
    factory_id character varying(200),
    page_body text
  );
ALTER TABLE public.portal_pages OWNER TO prisma;
--
  -- Name: portal_permissions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_permissions (
    permission_id bigint NOT NULL,
    ref_type character varying(200) NOT NULL,
    ref_id bigint NOT NULL,
    permission character varying(200),
    type integer
  );
ALTER TABLE public.portal_permissions OWNER TO prisma;
--
  -- Name: portal_sites; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_sites (
    id bigint NOT NULL,
    type integer,
    name character varying(200),
    locale character varying(20),
    skin character varying(200),
    label character varying(200),
    description text,
    properties text,
    site_body text
  );
ALTER TABLE public.portal_sites OWNER TO prisma;
--
  -- Name: portal_tokens; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_tokens (
    id bigint NOT NULL,
    token_id character varying(200) NOT NULL,
    token_hash character varying(200),
    username character varying(200),
    password character varying(200),
    expiration_time bigint
  );
ALTER TABLE public.portal_tokens OWNER TO prisma;
--
  -- Name: portal_windows; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.portal_windows (
    id bigint NOT NULL,
    title character varying(200),
    icon character varying(200),
    description text,
    show_info_bar boolean,
    show_app_state boolean,
    show_app_mode boolean,
    theme character varying(200),
    width character varying(20),
    height character varying(20),
    properties text,
    app_type integer,
    content_id character varying(200),
    customization bytea
  );
ALTER TABLE public.portal_windows OWNER TO prisma;
--
  -- Name: qrtz_blob_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_blob_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data bytea
  );
ALTER TABLE public.qrtz_blob_triggers OWNER TO prisma;
--
  -- Name: qrtz_calendars; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_calendars (
    sched_name character varying(120) NOT NULL,
    calendar_name character varying(200) NOT NULL,
    calendar bytea NOT NULL
  );
ALTER TABLE public.qrtz_calendars OWNER TO prisma;
--
  -- Name: qrtz_cron_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_cron_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120) NOT NULL,
    time_zone_id character varying(80)
  );
ALTER TABLE public.qrtz_cron_triggers OWNER TO prisma;
--
  -- Name: qrtz_fired_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_fired_triggers (
    sched_name character varying(120) NOT NULL,
    entry_id character varying(95) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    instance_name character varying(200) NOT NULL,
    fired_time bigint NOT NULL,
    sched_time bigint NOT NULL,
    priority integer NOT NULL,
    state character varying(16) NOT NULL,
    job_name character varying(200),
    job_group character varying(200),
    is_nonconcurrent boolean,
    requests_recovery boolean
  );
ALTER TABLE public.qrtz_fired_triggers OWNER TO prisma;
--
  -- Name: qrtz_job_details; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_job_details (
    sched_name character varying(120) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250) NOT NULL,
    is_durable boolean NOT NULL,
    is_nonconcurrent boolean NOT NULL,
    is_update_data boolean NOT NULL,
    requests_recovery boolean NOT NULL,
    job_data bytea
  );
ALTER TABLE public.qrtz_job_details OWNER TO prisma;
--
  -- Name: qrtz_locks; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_locks (
    sched_name character varying(120) NOT NULL,
    lock_name character varying(40) NOT NULL
  );
ALTER TABLE public.qrtz_locks OWNER TO prisma;
--
  -- Name: qrtz_paused_trigger_grps; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_paused_trigger_grps (
    sched_name character varying(120) NOT NULL,
    trigger_group character varying(200) NOT NULL
  );
ALTER TABLE public.qrtz_paused_trigger_grps OWNER TO prisma;
--
  -- Name: qrtz_scheduler_state; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_scheduler_state (
    sched_name character varying(120) NOT NULL,
    instance_name character varying(200) NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
  );
ALTER TABLE public.qrtz_scheduler_state OWNER TO prisma;
--
  -- Name: qrtz_simple_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_simple_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
  );
ALTER TABLE public.qrtz_simple_triggers OWNER TO prisma;
--
  -- Name: qrtz_simprop_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_simprop_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    str_prop_1 character varying(512),
    str_prop_2 character varying(512),
    str_prop_3 character varying(512),
    int_prop_1 integer,
    int_prop_2 integer,
    long_prop_1 bigint,
    long_prop_2 bigint,
    dec_prop_1 numeric(13, 4),
    dec_prop_2 numeric(13, 4),
    bool_prop_1 boolean,
    bool_prop_2 boolean
  );
ALTER TABLE public.qrtz_simprop_triggers OWNER TO prisma;
--
  -- Name: qrtz_triggers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.qrtz_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    next_fire_time bigint,
    prev_fire_time bigint,
    priority integer,
    trigger_state character varying(16) NOT NULL,
    trigger_type character varying(8) NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    calendar_name character varying(200),
    misfire_instr smallint,
    job_data bytea
  );
ALTER TABLE public.qrtz_triggers OWNER TO prisma;
--
  -- Name: seq_addons_kudos_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_addons_kudos_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_addons_kudos_id OWNER TO prisma;
--
  -- Name: seq_addons_perkstore_product_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_addons_perkstore_product_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_addons_perkstore_product_id OWNER TO prisma;
--
  -- Name: seq_addons_perkstore_product_order_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_addons_perkstore_product_order_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_addons_perkstore_product_order_id OWNER TO prisma;
--
  -- Name: seq_container_id_generator; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_container_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_container_id_generator OWNER TO prisma;
--
  -- Name: seq_es_indexing_queue_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_es_indexing_queue_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_es_indexing_queue_id OWNER TO prisma;
--
  -- Name: seq_files_binary_blob_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_files_binary_blob_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_files_binary_blob_id OWNER TO prisma;
--
  -- Name: seq_files_files_file_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_files_files_file_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_files_files_file_id OWNER TO prisma;
--
  -- Name: seq_files_ns_namespace_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_files_ns_namespace_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_files_ns_namespace_id OWNER TO prisma;
--
  -- Name: seq_files_orphan_files_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_files_orphan_files_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_files_orphan_files_id OWNER TO prisma;
--
  -- Name: seq_gamification_badge_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gamification_badge_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gamification_badge_id OWNER TO prisma;
--
  -- Name: seq_gamification_domain_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gamification_domain_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gamification_domain_id OWNER TO prisma;
--
  -- Name: seq_gamification_rule_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gamification_rule_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gamification_rule_id OWNER TO prisma;
--
  -- Name: seq_gamification_score_history_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gamification_score_history_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gamification_score_history_id OWNER TO prisma;
--
  -- Name: seq_gatein_token_id_generator; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gatein_token_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gatein_token_id_generator OWNER TO prisma;
--
  -- Name: seq_gtn_application_cat_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gtn_application_cat_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gtn_application_cat_id OWNER TO prisma;
--
  -- Name: seq_gtn_application_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gtn_application_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gtn_application_id OWNER TO prisma;
--
  -- Name: seq_gtn_navigation_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gtn_navigation_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gtn_navigation_id OWNER TO prisma;
--
  -- Name: seq_gtn_navigation_node_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_gtn_navigation_node_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_gtn_navigation_node_id OWNER TO prisma;
--
  -- Name: seq_idm_queue_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_idm_queue_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_idm_queue_id OWNER TO prisma;
--
  -- Name: seq_msg_devices_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_msg_devices_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_msg_devices_id OWNER TO prisma;
--
  -- Name: seq_ntf_email_digest; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_email_digest START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_email_digest OWNER TO prisma;
--
  -- Name: seq_ntf_email_notif; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_email_notif START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_email_notif OWNER TO prisma;
--
  -- Name: seq_ntf_email_params; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_email_params START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_email_params OWNER TO prisma;
--
  -- Name: seq_ntf_email_queue; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_email_queue START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_email_queue OWNER TO prisma;
--
  -- Name: seq_ntf_web_notifs; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_web_notifs START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_web_notifs OWNER TO prisma;
--
  -- Name: seq_ntf_web_params; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_web_params START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_web_params OWNER TO prisma;
--
  -- Name: seq_ntf_web_users; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_ntf_web_users START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_ntf_web_users OWNER TO prisma;
--
  -- Name: seq_page_id_generator; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_page_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_page_id_generator OWNER TO prisma;
--
  -- Name: seq_portal_descriptions_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_portal_descriptions_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_portal_descriptions_id OWNER TO prisma;
--
  -- Name: seq_portal_permissions_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_portal_permissions_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_portal_permissions_id OWNER TO prisma;
--
  -- Name: seq_site_id_generator; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_site_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_site_id_generator OWNER TO prisma;
--
  -- Name: seq_soc_activities_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_activities_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_activities_id OWNER TO prisma;
--
  -- Name: seq_soc_connections_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_connections_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_connections_id OWNER TO prisma;
--
  -- Name: seq_soc_experience_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_experience_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_experience_id OWNER TO prisma;
--
  -- Name: seq_soc_identity_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_identity_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_identity_id OWNER TO prisma;
--
  -- Name: seq_soc_mentions_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_mentions_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_mentions_id OWNER TO prisma;
--
  -- Name: seq_soc_space_member_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_space_member_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_space_member_id OWNER TO prisma;
--
  -- Name: seq_soc_spaces_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_spaces_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_spaces_id OWNER TO prisma;
--
  -- Name: seq_soc_stream_items_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_soc_stream_items_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_soc_stream_items_id OWNER TO prisma;
--
  -- Name: seq_stg_context_common_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_stg_context_common_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_stg_context_common_id OWNER TO prisma;
--
  -- Name: seq_stg_scope_common_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_stg_scope_common_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_stg_scope_common_id OWNER TO prisma;
--
  -- Name: seq_stg_settings_common_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_stg_settings_common_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_stg_settings_common_id OWNER TO prisma;
--
  -- Name: seq_task_change_log_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_task_change_log_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_task_change_log_id OWNER TO prisma;
--
  -- Name: seq_task_comments_comment_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_task_comments_comment_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_task_comments_comment_id OWNER TO prisma;
--
  -- Name: seq_task_labels_label_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_task_labels_label_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_task_labels_label_id OWNER TO prisma;
--
  -- Name: seq_task_projects_project_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_task_projects_project_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_task_projects_project_id OWNER TO prisma;
--
  -- Name: seq_task_status_status_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_task_status_status_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_task_status_status_id OWNER TO prisma;
--
  -- Name: seq_task_tasks_task_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_task_tasks_task_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_task_tasks_task_id OWNER TO prisma;
--
  -- Name: seq_wallet_gam_team_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_gam_team_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_gam_team_id OWNER TO prisma;
--
  -- Name: seq_wallet_gam_team_member_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_gam_team_member_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_gam_team_member_id OWNER TO prisma;
--
  -- Name: seq_wallet_key; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_key START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_key OWNER TO prisma;
--
  -- Name: seq_wallet_label; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_label START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_label OWNER TO prisma;
--
  -- Name: seq_wallet_reward_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_reward_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_reward_id OWNER TO prisma;
--
  -- Name: seq_wallet_reward_period_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_reward_period_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_reward_period_id OWNER TO prisma;
--
  -- Name: seq_wallet_reward_plugin_id; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_reward_plugin_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_reward_plugin_id OWNER TO prisma;
--
  -- Name: seq_wallet_state; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_state START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_state OWNER TO prisma;
--
  -- Name: seq_wallet_transaction; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_wallet_transaction START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_wallet_transaction OWNER TO prisma;
--
  -- Name: seq_window_id_generator; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.seq_window_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.seq_window_id_generator OWNER TO prisma;
--
  -- Name: soc_activities; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_activities (
    activity_id bigint NOT NULL,
    app_id character varying(200),
    body text,
    external_id character varying(200),
    provider_id character varying(200),
    hidden boolean NOT NULL,
    updated_date bigint NOT NULL,
    locked boolean NOT NULL,
    owner_id character varying(200),
    permalink character varying(500),
    posted bigint NOT NULL,
    poster_id character varying(200) NOT NULL,
    title text NOT NULL,
    title_id character varying(1024),
    type character varying(255),
    is_comment boolean NOT NULL,
    parent_id bigint
  );
ALTER TABLE public.soc_activities OWNER TO prisma;
--
  -- Name: soc_activity_likers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_activity_likers (
    activity_id bigint NOT NULL,
    liker_id character varying(200) NOT NULL,
    created_date timestamp without time zone NOT NULL
  );
ALTER TABLE public.soc_activity_likers OWNER TO prisma;
--
  -- Name: soc_activity_template_params; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_activity_template_params (
    activity_id bigint NOT NULL,
    template_param_value text,
    template_param_key character varying(255) NOT NULL
  );
ALTER TABLE public.soc_activity_template_params OWNER TO prisma;
--
  -- Name: soc_apps; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_apps (
    space_id bigint NOT NULL,
    app_id character varying(200) NOT NULL,
    app_name character varying(550) NOT NULL,
    removable boolean NOT NULL,
    status smallint NOT NULL
  );
ALTER TABLE public.soc_apps OWNER TO prisma;
--
  -- Name: soc_connections; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_connections (
    connection_id bigint NOT NULL,
    sender_id bigint NOT NULL,
    receiver_id bigint NOT NULL,
    status integer NOT NULL,
    updated_date timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.soc_connections OWNER TO prisma;
--
  -- Name: soc_identities; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_identities (
    identity_id bigint NOT NULL,
    provider_id character varying(200) NOT NULL,
    remote_id character varying(200) NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    deleted boolean DEFAULT false NOT NULL,
    avatar_file_id bigint,
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    banner_file_id bigint
  );
ALTER TABLE public.soc_identities OWNER TO prisma;
--
  -- Name: soc_identity_experiences; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_identity_experiences (
    identity_id bigint NOT NULL,
    company character varying(250),
    "position" character varying(500),
    start_date character(10),
    end_date character(10),
    skills character varying(2000),
    description text,
    experience_id bigint NOT NULL
  );
ALTER TABLE public.soc_identity_experiences OWNER TO prisma;
--
  -- Name: soc_identity_properties; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_identity_properties (
    identity_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    value character varying(2000)
  );
ALTER TABLE public.soc_identity_properties OWNER TO prisma;
--
  -- Name: soc_mentions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_mentions (
    mention_id bigint NOT NULL,
    activity_id bigint NOT NULL,
    mentioner_id character varying(200) NOT NULL
  );
ALTER TABLE public.soc_mentions OWNER TO prisma;
--
  -- Name: soc_spaces; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_spaces (
    space_id bigint NOT NULL,
    pretty_name character varying(200) NOT NULL,
    display_name character varying(200) NOT NULL,
    registration smallint NOT NULL,
    description character varying(2000),
    avatar_last_updated timestamp without time zone,
    visibility smallint NOT NULL,
    priority smallint,
    group_id character varying(250) NOT NULL,
    url character varying(500),
    created_date timestamp without time zone DEFAULT now() NOT NULL,
    template character varying(200),
    banner_last_updated timestamp without time zone
  );
ALTER TABLE public.soc_spaces OWNER TO prisma;
--
  -- Name: soc_spaces_members; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_spaces_members (
    space_member_id bigint NOT NULL,
    space_id bigint NOT NULL,
    user_id character varying(200) NOT NULL,
    status integer NOT NULL,
    last_access timestamp without time zone,
    visited boolean
  );
ALTER TABLE public.soc_spaces_members OWNER TO prisma;
--
  -- Name: soc_stream_items; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.soc_stream_items (
    stream_item_id bigint NOT NULL,
    owner_id bigint NOT NULL,
    stream_type integer NOT NULL,
    activity_id bigint NOT NULL,
    updated_date bigint NOT NULL
  );
ALTER TABLE public.soc_stream_items OWNER TO prisma;
--
  -- Name: stg_contexts; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.stg_contexts (
    context_id bigint NOT NULL,
    type character varying(200) NOT NULL,
    name character varying(200) NOT NULL
  );
ALTER TABLE public.stg_contexts OWNER TO prisma;
--
  -- Name: stg_scopes; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.stg_scopes (
    scope_id bigint NOT NULL,
    type character varying(200) NOT NULL,
    name character varying(200)
  );
ALTER TABLE public.stg_scopes OWNER TO prisma;
--
  -- Name: stg_settings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.stg_settings (
    setting_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    value text,
    context_id bigint NOT NULL,
    scope_id bigint NOT NULL
  );
ALTER TABLE public.stg_settings OWNER TO prisma;
--
  -- Name: task_change_logs; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_change_logs (
    change_log_id bigint NOT NULL,
    task_id bigint NOT NULL,
    author character varying(100) NOT NULL,
    action_name character varying(2000) NOT NULL,
    target character varying(100),
    created_time bigint NOT NULL
  );
ALTER TABLE public.task_change_logs OWNER TO prisma;
--
  -- Name: task_comment_mentioned_users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_comment_mentioned_users (
    comment_id bigint NOT NULL,
    mentioned_users character varying(50) NOT NULL
  );
ALTER TABLE public.task_comment_mentioned_users OWNER TO prisma;
--
  -- Name: task_comments; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_comments (
    comment_id bigint NOT NULL,
    author character varying(100) NOT NULL,
    cmt character varying(2000) NOT NULL,
    created_time timestamp without time zone,
    task_id bigint NOT NULL,
    parent_comment_id bigint
  );
ALTER TABLE public.task_comments OWNER TO prisma;
--
  -- Name: task_hidden_projects; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_hidden_projects (
    username character varying(50) NOT NULL,
    project_id bigint NOT NULL
  );
ALTER TABLE public.task_hidden_projects OWNER TO prisma;
--
  -- Name: task_label_task; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_label_task (
    label_id bigint NOT NULL,
    task_id bigint NOT NULL
  );
ALTER TABLE public.task_label_task OWNER TO prisma;
--
  -- Name: task_labels; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_labels (
    label_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    color character varying(100),
    hidden boolean DEFAULT false,
    parent_label_id bigint
  );
ALTER TABLE public.task_labels OWNER TO prisma;
--
  -- Name: task_project_managers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_project_managers (
    project_id bigint NOT NULL,
    manager character varying(250) NOT NULL
  );
ALTER TABLE public.task_project_managers OWNER TO prisma;
--
  -- Name: task_project_participators; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_project_participators (
    project_id bigint NOT NULL,
    participator character varying(250) NOT NULL
  );
ALTER TABLE public.task_project_participators OWNER TO prisma;
--
  -- Name: task_projects; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_projects (
    project_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(2000),
    color character varying(100),
    calendar_integrated boolean DEFAULT false NOT NULL,
    due_date timestamp without time zone,
    parent_project_id bigint
  );
ALTER TABLE public.task_projects OWNER TO prisma;
--
  -- Name: task_status; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_status (
    status_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    rank integer NOT NULL,
    project_id bigint NOT NULL
  );
ALTER TABLE public.task_status OWNER TO prisma;
--
  -- Name: task_task_coworkers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_task_coworkers (
    task_id bigint NOT NULL,
    coworker character varying(50) NOT NULL
  );
ALTER TABLE public.task_task_coworkers OWNER TO prisma;
--
  -- Name: task_tasks; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_tasks (
    task_id bigint NOT NULL,
    title character varying(250) NOT NULL,
    description character varying(2000),
    priority integer DEFAULT 0,
    context character varying(255),
    assignee character varying(50),
    status_id bigint,
    created_by character varying(50),
    created_time timestamp without time zone,
    end_date timestamp without time zone,
    start_date timestamp without time zone,
    due_date timestamp without time zone,
    completed boolean DEFAULT false NOT NULL,
    calendar_integrated boolean DEFAULT true NOT NULL,
    rank integer DEFAULT 0,
    activity_id character varying(50) DEFAULT '' :: character varying
  );
ALTER TABLE public.task_tasks OWNER TO prisma;
--
  -- Name: task_user_settings; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.task_user_settings (
    username character varying(50) NOT NULL,
    show_hidden_project boolean DEFAULT false,
    show_hidden_label boolean DEFAULT false
  );
ALTER TABLE public.task_user_settings OWNER TO prisma;
--
  -- Name: wbc_calls; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.wbc_calls (
    id character varying(255) NOT NULL,
    provider_type character varying(32) NOT NULL,
    owner_id character varying(255) NOT NULL,
    owner_type character varying(32) NOT NULL,
    state character varying(32),
    title character varying(255),
    settings character varying(2000),
    last_date timestamp without time zone DEFAULT now() NOT NULL,
    is_group boolean NOT NULL,
    is_user boolean NOT NULL
  );
ALTER TABLE public.wbc_calls OWNER TO prisma;
--
  -- Name: wbc_participants; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.wbc_participants (
    id character varying(255) NOT NULL,
    call_id character varying(255) NOT NULL,
    type character varying(32) NOT NULL,
    state character varying(32),
    client_id character varying(255)
  );
ALTER TABLE public.wbc_participants OWNER TO prisma;
--
  -- Name: jcr_svalue id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jcr_svalue
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.jcr_svalue_id_seq' :: regclass);
--
  -- Name: files_binary files_binary_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_binary
ADD
  CONSTRAINT files_binary_name_key UNIQUE (name);
--
  -- Name: gamification_rule gamification_rule_title_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_rule
ADD
  CONSTRAINT gamification_rule_title_key UNIQUE (title);
--
  -- Name: gamification_user_reputation gamification_user_reputation_username_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_user_reputation
ADD
  CONSTRAINT gamification_user_reputation_username_key UNIQUE (username);
--
  -- Name: jbid_io id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io
ADD
  CONSTRAINT id UNIQUE (identity_type, name, realm);
--
  -- Name: jbid_attr_bin_value jbid_attr_bin_value_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_attr_bin_value
ADD
  CONSTRAINT jbid_attr_bin_value_pkey PRIMARY KEY (bin_value_id);
--
  -- Name: jbid_creden_bin_value jbid_creden_bin_value_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_creden_bin_value
ADD
  CONSTRAINT jbid_creden_bin_value_pkey PRIMARY KEY (bin_value_id);
--
  -- Name: jbid_io_attr jbid_io_attr_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_attr
ADD
  CONSTRAINT jbid_io_attr_pkey PRIMARY KEY (attribute_id);
--
  -- Name: jbid_io_creden jbid_io_creden_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden
ADD
  CONSTRAINT jbid_io_creden_pkey PRIMARY KEY (id);
--
  -- Name: jbid_io_creden_props jbid_io_creden_props_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden_props
ADD
  CONSTRAINT jbid_io_creden_props_pkey PRIMARY KEY (prop_id, prop_name);
--
  -- Name: jbid_io_creden_type jbid_io_creden_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden_type
ADD
  CONSTRAINT jbid_io_creden_type_pkey PRIMARY KEY (id);
--
  -- Name: jbid_io jbid_io_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io
ADD
  CONSTRAINT jbid_io_pkey PRIMARY KEY (id);
--
  -- Name: jbid_io_props jbid_io_props_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_props
ADD
  CONSTRAINT jbid_io_props_pkey PRIMARY KEY (prop_id, prop_name);
--
  -- Name: jbid_io_rel_name jbid_io_rel_name_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_name
ADD
  CONSTRAINT jbid_io_rel_name_pkey PRIMARY KEY (id);
--
  -- Name: jbid_io_rel_name_props jbid_io_rel_name_props_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_name_props
ADD
  CONSTRAINT jbid_io_rel_name_props_pkey PRIMARY KEY (prop_id, prop_name);
--
  -- Name: jbid_io_rel jbid_io_rel_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel
ADD
  CONSTRAINT jbid_io_rel_pkey PRIMARY KEY (id);
--
  -- Name: jbid_io_rel_props jbid_io_rel_props_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_props
ADD
  CONSTRAINT jbid_io_rel_props_pkey PRIMARY KEY (prop_id, prop_name);
--
  -- Name: jbid_io_rel_type jbid_io_rel_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_type
ADD
  CONSTRAINT jbid_io_rel_type_pkey PRIMARY KEY (id);
--
  -- Name: jbid_io_type jbid_io_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_type
ADD
  CONSTRAINT jbid_io_type_pkey PRIMARY KEY (id);
--
  -- Name: jbid_real_props jbid_real_props_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_real_props
ADD
  CONSTRAINT jbid_real_props_pkey PRIMARY KEY (prop_id, prop_name);
--
  -- Name: jbid_realm jbid_realm_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_realm
ADD
  CONSTRAINT jbid_realm_pkey PRIMARY KEY (id);
--
  -- Name: jcr_sitem jcr_pk_sitem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jcr_sitem
ADD
  CONSTRAINT jcr_pk_sitem PRIMARY KEY (id);
--
  -- Name: jcr_sref jcr_pk_sref; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jcr_sref
ADD
  CONSTRAINT jcr_pk_sref PRIMARY KEY (node_id, property_id, order_num);
--
  -- Name: jcr_svalue jcr_pk_svalue; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jcr_svalue
ADD
  CONSTRAINT jcr_pk_svalue PRIMARY KEY (id);
--
  -- Name: addons_kudos pk_addons_kudos; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_kudos
ADD
  CONSTRAINT pk_addons_kudos PRIMARY KEY (kudos_id);
--
  -- Name: databasechangeloglock pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.databasechangeloglock
ADD
  CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);
--
  -- Name: email_queue pk_email_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.email_queue
ADD
  CONSTRAINT pk_email_id PRIMARY KEY (email_id);
--
  -- Name: es_indexing_queue pk_es_indexing_queue; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.es_indexing_queue
ADD
  CONSTRAINT pk_es_indexing_queue PRIMARY KEY (operation_id);
--
  -- Name: files_binary pk_files_blob_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_binary
ADD
  CONSTRAINT pk_files_blob_id PRIMARY KEY (blob_id);
--
  -- Name: files_files pk_files_files_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_files
ADD
  CONSTRAINT pk_files_files_id PRIMARY KEY (file_id);
--
  -- Name: files_namespaces pk_files_namespaces_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_namespaces
ADD
  CONSTRAINT pk_files_namespaces_id PRIMARY KEY (namespace_id);
--
  -- Name: files_orphan_files pk_files_orphan_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_orphan_files
ADD
  CONSTRAINT pk_files_orphan_id PRIMARY KEY (id);
--
  -- Name: gamification_actions_history pk_gamification_action_history; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_actions_history
ADD
  CONSTRAINT pk_gamification_action_history PRIMARY KEY (id);
--
  -- Name: gamification_badges pk_gamification_badges; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_badges
ADD
  CONSTRAINT pk_gamification_badges PRIMARY KEY (badge_id);
--
  -- Name: gamification_context_items pk_gamification_context_items; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_context_items
ADD
  CONSTRAINT pk_gamification_context_items PRIMARY KEY (id);
--
  -- Name: gamification_domain pk_gamification_domain; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_domain
ADD
  CONSTRAINT pk_gamification_domain PRIMARY KEY (id);
--
  -- Name: gamification_rule pk_gamification_rule; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_rule
ADD
  CONSTRAINT pk_gamification_rule PRIMARY KEY (id);
--
  -- Name: gamification_user_reputation pk_gamification_user_reputation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_user_reputation
ADD
  CONSTRAINT pk_gamification_user_reputation PRIMARY KEY (id);
--
  -- Name: idm_queue pk_idm_queue_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.idm_queue
ADD
  CONSTRAINT pk_idm_queue_id PRIMARY KEY (idm_queue_id);
--
  -- Name: msg_devices pk_msg_devices; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.msg_devices
ADD
  CONSTRAINT pk_msg_devices PRIMARY KEY (id);
--
  -- Name: ntf_email_notifs_digest pk_ntf_email_notif_digest_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_email_notifs_digest
ADD
  CONSTRAINT pk_ntf_email_notif_digest_id PRIMARY KEY (email_notif_digest_id);
--
  -- Name: ntf_email_notifs pk_ntf_email_notif_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_email_notifs
ADD
  CONSTRAINT pk_ntf_email_notif_id PRIMARY KEY (email_notif_id);
--
  -- Name: ntf_email_notifs_params pk_ntf_email_notif_params_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_email_notifs_params
ADD
  CONSTRAINT pk_ntf_email_notif_params_id PRIMARY KEY (email_notif_params_id);
--
  -- Name: ntf_web_notifs pk_ntf_web_notif_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_web_notifs
ADD
  CONSTRAINT pk_ntf_web_notif_id PRIMARY KEY (web_notif_id);
--
  -- Name: ntf_web_notifs_params pk_ntf_web_notif_params_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_web_notifs_params
ADD
  CONSTRAINT pk_ntf_web_notif_params_id PRIMARY KEY (web_notif_params_id);
--
  -- Name: ntf_web_notifs_users pk_ntf_web_notifs_users_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_web_notifs_users
ADD
  CONSTRAINT pk_ntf_web_notifs_users_id PRIMARY KEY (web_notifs_users_id);
--
  -- Name: addons_perkstore_product_order pk_perkstore_order; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product_order
ADD
  CONSTRAINT pk_perkstore_order PRIMARY KEY (order_id);
--
  -- Name: addons_perkstore_product pk_perkstore_product; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product
ADD
  CONSTRAINT pk_perkstore_product PRIMARY KEY (product_id);
--
  -- Name: addons_perkstore_image pk_perkstore_product_image; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_image
ADD
  CONSTRAINT pk_perkstore_product_image PRIMARY KEY (image_file_id, product_id);
--
  -- Name: addons_perkstore_product_marchand pk_perkstore_product_marchand; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product_marchand
ADD
  CONSTRAINT pk_perkstore_product_marchand PRIMARY KEY (marchand_identity_id, product_id);
--
  -- Name: addons_perkstore_product_permission pk_perkstore_product_permission; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product_permission
ADD
  CONSTRAINT pk_perkstore_product_permission PRIMARY KEY (permission_identity_id, product_id);
--
  -- Name: portal_app_categories pk_portal_app_category; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_app_categories
ADD
  CONSTRAINT pk_portal_app_category PRIMARY KEY (id);
--
  -- Name: portal_applications pk_portal_application; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_applications
ADD
  CONSTRAINT pk_portal_application PRIMARY KEY (id);
--
  -- Name: portal_containers pk_portal_container; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_containers
ADD
  CONSTRAINT pk_portal_container PRIMARY KEY (id);
--
  -- Name: portal_descriptions pk_portal_descriptions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_descriptions
ADD
  CONSTRAINT pk_portal_descriptions PRIMARY KEY (description_id);
--
  -- Name: portal_navigations pk_portal_navigation; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_navigations
ADD
  CONSTRAINT pk_portal_navigation PRIMARY KEY (navigation_id);
--
  -- Name: portal_navigation_nodes pk_portal_navigation_node; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_navigation_nodes
ADD
  CONSTRAINT pk_portal_navigation_node PRIMARY KEY (node_id);
--
  -- Name: portal_pages pk_portal_page; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_pages
ADD
  CONSTRAINT pk_portal_page PRIMARY KEY (id);
--
  -- Name: portal_permissions pk_portal_permissions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_permissions
ADD
  CONSTRAINT pk_portal_permissions PRIMARY KEY (permission_id);
--
  -- Name: portal_sites pk_portal_site; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_sites
ADD
  CONSTRAINT pk_portal_site PRIMARY KEY (id);
--
  -- Name: portal_tokens pk_portal_tokens; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_tokens
ADD
  CONSTRAINT pk_portal_tokens PRIMARY KEY (id);
--
  -- Name: portal_windows pk_portal_window; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_windows
ADD
  CONSTRAINT pk_portal_window PRIMARY KEY (id);
--
  -- Name: soc_activity_template_params pk_soc_act_template_params_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_activity_template_params
ADD
  CONSTRAINT pk_soc_act_template_params_01 PRIMARY KEY (activity_id, template_param_key);
--
  -- Name: soc_activities pk_soc_activities; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_activities
ADD
  CONSTRAINT pk_soc_activities PRIMARY KEY (activity_id);
--
  -- Name: soc_activity_likers pk_soc_activity_liker_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_activity_likers
ADD
  CONSTRAINT pk_soc_activity_liker_01 PRIMARY KEY (activity_id, liker_id);
--
  -- Name: soc_connections pk_soc_connections; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_connections
ADD
  CONSTRAINT pk_soc_connections PRIMARY KEY (connection_id);
--
  -- Name: soc_identities pk_soc_identities; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_identities
ADD
  CONSTRAINT pk_soc_identities PRIMARY KEY (identity_id);
--
  -- Name: soc_identity_properties pk_soc_identity_properties_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_identity_properties
ADD
  CONSTRAINT pk_soc_identity_properties_01 PRIMARY KEY (identity_id, name);
--
  -- Name: soc_mentions pk_soc_mentions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_mentions
ADD
  CONSTRAINT pk_soc_mentions PRIMARY KEY (mention_id);
--
  -- Name: soc_spaces pk_soc_spaces; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_spaces
ADD
  CONSTRAINT pk_soc_spaces PRIMARY KEY (space_id);
--
  -- Name: soc_spaces_members pk_soc_spaces_members; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_spaces_members
ADD
  CONSTRAINT pk_soc_spaces_members PRIMARY KEY (space_member_id);
--
  -- Name: soc_stream_items pk_soc_stream_items; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_stream_items
ADD
  CONSTRAINT pk_soc_stream_items PRIMARY KEY (stream_item_id);
--
  -- Name: stg_contexts pk_stg_context_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_contexts
ADD
  CONSTRAINT pk_stg_context_id PRIMARY KEY (context_id);
--
  -- Name: stg_scopes pk_stg_scope_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_scopes
ADD
  CONSTRAINT pk_stg_scope_id PRIMARY KEY (scope_id);
--
  -- Name: stg_settings pk_stg_settings_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_settings
ADD
  CONSTRAINT pk_stg_settings_id PRIMARY KEY (setting_id);
--
  -- Name: task_change_logs pk_task_change_log; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_change_logs
ADD
  CONSTRAINT pk_task_change_log PRIMARY KEY (change_log_id);
--
  -- Name: task_comments pk_task_comments; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_comments
ADD
  CONSTRAINT pk_task_comments PRIMARY KEY (comment_id);
--
  -- Name: task_labels pk_task_labels; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_labels
ADD
  CONSTRAINT pk_task_labels PRIMARY KEY (label_id);
--
  -- Name: task_projects pk_task_projects; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_projects
ADD
  CONSTRAINT pk_task_projects PRIMARY KEY (project_id);
--
  -- Name: task_status pk_task_status; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_status
ADD
  CONSTRAINT pk_task_status PRIMARY KEY (status_id);
--
  -- Name: task_tasks pk_task_tasks; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_tasks
ADD
  CONSTRAINT pk_task_tasks PRIMARY KEY (task_id);
--
  -- Name: task_user_settings pk_task_user_settings; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_user_settings
ADD
  CONSTRAINT pk_task_user_settings PRIMARY KEY (username);
--
  -- Name: addons_wallet_blockchain_state pk_wallet_blockchain_state_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_blockchain_state
ADD
  CONSTRAINT pk_wallet_blockchain_state_id PRIMARY KEY (blockchain_state_id);
--
  -- Name: addons_wallet_gam_team pk_wallet_gam_team; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_gam_team
ADD
  CONSTRAINT pk_wallet_gam_team PRIMARY KEY (team_id);
--
  -- Name: addons_wallet_gam_team_member pk_wallet_gam_team_mem; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_gam_team_member
ADD
  CONSTRAINT pk_wallet_gam_team_mem PRIMARY KEY (member_id);
--
  -- Name: addons_wallet_account pk_wallet_identity_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_account
ADD
  CONSTRAINT pk_wallet_identity_id PRIMARY KEY (identity_id);
--
  -- Name: addons_wallet_key pk_wallet_key_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_key
ADD
  CONSTRAINT pk_wallet_key_id PRIMARY KEY (key_id);
--
  -- Name: addons_wallet_label pk_wallet_label_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_label
ADD
  CONSTRAINT pk_wallet_label_id PRIMARY KEY (label_id);
--
  -- Name: addons_wallet_reward pk_wallet_reward_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_reward
ADD
  CONSTRAINT pk_wallet_reward_id PRIMARY KEY (reward_id);
--
  -- Name: addons_wallet_reward_period pk_wallet_reward_period_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_reward_period
ADD
  CONSTRAINT pk_wallet_reward_period_id PRIMARY KEY (reward_period_id);
--
  -- Name: addons_wallet_reward_plugin pk_wallet_reward_plugin_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_reward_plugin
ADD
  CONSTRAINT pk_wallet_reward_plugin_id PRIMARY KEY (reward_plugin_id);
--
  -- Name: addons_wallet_transaction pk_wallet_transaction_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_transaction
ADD
  CONSTRAINT pk_wallet_transaction_id PRIMARY KEY (transaction_id);
--
  -- Name: wbc_calls pk_wbc_callid; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.wbc_calls
ADD
  CONSTRAINT pk_wbc_callid PRIMARY KEY (id);
--
  -- Name: wbc_participants pk_wbc_callpart; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.wbc_participants
ADD
  CONSTRAINT pk_wbc_callpart PRIMARY KEY (id, call_id);
--
  -- Name: qrtz_blob_triggers qrtz_blob_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_blob_triggers
ADD
  CONSTRAINT qrtz_blob_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_calendars qrtz_calendars_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_calendars
ADD
  CONSTRAINT qrtz_calendars_pkey PRIMARY KEY (sched_name, calendar_name);
--
  -- Name: qrtz_cron_triggers qrtz_cron_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_cron_triggers
ADD
  CONSTRAINT qrtz_cron_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_fired_triggers qrtz_fired_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_fired_triggers
ADD
  CONSTRAINT qrtz_fired_triggers_pkey PRIMARY KEY (sched_name, entry_id);
--
  -- Name: qrtz_job_details qrtz_job_details_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_job_details
ADD
  CONSTRAINT qrtz_job_details_pkey PRIMARY KEY (sched_name, job_name, job_group);
--
  -- Name: qrtz_locks qrtz_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_locks
ADD
  CONSTRAINT qrtz_locks_pkey PRIMARY KEY (sched_name, lock_name);
--
  -- Name: qrtz_paused_trigger_grps qrtz_paused_trigger_grps_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_paused_trigger_grps
ADD
  CONSTRAINT qrtz_paused_trigger_grps_pkey PRIMARY KEY (sched_name, trigger_group);
--
  -- Name: qrtz_scheduler_state qrtz_scheduler_state_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_scheduler_state
ADD
  CONSTRAINT qrtz_scheduler_state_pkey PRIMARY KEY (sched_name, instance_name);
--
  -- Name: qrtz_simple_triggers qrtz_simple_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_simple_triggers
ADD
  CONSTRAINT qrtz_simple_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_simprop_triggers qrtz_simprop_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_simprop_triggers
ADD
  CONSTRAINT qrtz_simprop_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_triggers qrtz_triggers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_triggers
ADD
  CONSTRAINT qrtz_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);
--
  -- Name: soc_identity_experiences soc_identity_experiences_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_identity_experiences
ADD
  CONSTRAINT soc_identity_experiences_pkey PRIMARY KEY (experience_id);
--
  -- Name: jbid_io_type uk_6qhvm42s96tyb1ul648ogjamq; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_type
ADD
  CONSTRAINT uk_6qhvm42s96tyb1ul648ogjamq UNIQUE (name);
--
  -- Name: soc_mentions uk_activity_mentioner_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_mentions
ADD
  CONSTRAINT uk_activity_mentioner_01 UNIQUE (activity_id, mentioner_id);
--
  -- Name: addons_kudos uk_addons_kudos_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_kudos
ADD
  CONSTRAINT uk_addons_kudos_01 UNIQUE (created_date);
--
  -- Name: portal_tokens uk_gatein_token_id; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_tokens
ADD
  CONSTRAINT uk_gatein_token_id UNIQUE (token_id);
--
  -- Name: jbid_io_creden_type uk_iqgcb1lwma9oj85v1dvu0s7oo; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden_type
ADD
  CONSTRAINT uk_iqgcb1lwma9oj85v1dvu0s7oo UNIQUE (name);
--
  -- Name: msg_devices uk_msg_devices_token_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.msg_devices
ADD
  CONSTRAINT uk_msg_devices_token_01 UNIQUE (token);
--
  -- Name: portal_applications uk_portal_app_content_category; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_applications
ADD
  CONSTRAINT uk_portal_app_content_category UNIQUE (category_id, content_id);
--
  -- Name: portal_applications uk_portal_app_name_category; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_applications
ADD
  CONSTRAINT uk_portal_app_name_category UNIQUE (category_id, app_name);
--
  -- Name: portal_permissions uk_portal_permissions; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_permissions
ADD
  CONSTRAINT uk_portal_permissions UNIQUE (ref_type, ref_id, permission, type);
--
  -- Name: portal_sites uk_portal_site_name_type; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_sites
ADD
  CONSTRAINT uk_portal_site_name_type UNIQUE (type, name);
--
  -- Name: portal_pages uk_portal_site_page_name; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_pages
ADD
  CONSTRAINT uk_portal_site_page_name UNIQUE (site_id, name);
--
  -- Name: soc_identities uk_provider_id_remote_id_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_identities
ADD
  CONSTRAINT uk_provider_id_remote_id_01 UNIQUE (provider_id, remote_id);
--
  -- Name: jbid_io_rel_type uk_q0viotf5dq1gpwliq817lmfdb; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_type
ADD
  CONSTRAINT uk_q0viotf5dq1gpwliq817lmfdb UNIQUE (name);
--
  -- Name: soc_connections uk_sender_id_receiver_id_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_connections
ADD
  CONSTRAINT uk_sender_id_receiver_id_01 UNIQUE (sender_id, receiver_id);
--
  -- Name: soc_spaces uk_soc_space_pretty_name; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_spaces
ADD
  CONSTRAINT uk_soc_space_pretty_name UNIQUE (pretty_name);
--
  -- Name: soc_apps uk_space_app_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_apps
ADD
  CONSTRAINT uk_space_app_01 UNIQUE (space_id, app_id);
--
  -- Name: soc_spaces_members uk_space_user_status_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_spaces_members
ADD
  CONSTRAINT uk_space_user_status_01 UNIQUE (space_id, user_id, status);
--
  -- Name: stg_contexts uk_stg_context_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_contexts
ADD
  CONSTRAINT uk_stg_context_01 UNIQUE (type, name);
--
  -- Name: stg_scopes uk_stg_scope_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_scopes
ADD
  CONSTRAINT uk_stg_scope_01 UNIQUE (type, name);
--
  -- Name: stg_settings uk_stg_setting_01; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_settings
ADD
  CONSTRAINT uk_stg_setting_01 UNIQUE (name, scope_id, context_id);
--
  -- Name: addons_wallet_gam_team uk_wallet_gam_team_name; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_gam_team
ADD
  CONSTRAINT uk_wallet_gam_team_name UNIQUE (team_name);
--
  -- Name: addons_wallet_transaction uk_wallet_transaction_hash; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_transaction
ADD
  CONSTRAINT uk_wallet_transaction_hash UNIQUE (hash);
--
  -- Name: wbc_calls uk_wbc_group_call; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.wbc_calls
ADD
  CONSTRAINT uk_wbc_group_call UNIQUE (owner_id, is_group);
--
  -- Name: task_label_task uq_task_label_task; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_label_task
ADD
  CONSTRAINT uq_task_label_task UNIQUE (label_id, task_id);
--
  -- Name: idx_addons_kudos_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_kudos_01 ON public.addons_kudos USING btree (created_date);
--
  -- Name: idx_addons_kudos_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_kudos_02 ON public.addons_kudos USING btree (created_date, sender_id);
--
  -- Name: idx_addons_kudos_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_kudos_03 ON public.addons_kudos USING btree (created_date, receiver_id, is_receiver_user);
--
  -- Name: idx_addons_kudos_04; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_kudos_04 ON public.addons_kudos USING btree (created_date, entity_id, entity_type);
--
  -- Name: idx_addons_kudos_05; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_kudos_05 ON public.addons_kudos USING btree (
    created_date,
    parent_entity_id,
    entity_id,
    entity_type
  );
--
  -- Name: idx_addons_perkstore_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_01 ON public.addons_perkstore_product USING btree (created_date);
--
  -- Name: idx_addons_perkstore_order_index_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_order_index_01 ON public.addons_perkstore_product_order USING btree (product_id);
--
  -- Name: idx_addons_perkstore_order_index_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_order_index_02 ON public.addons_perkstore_product_order USING btree (product_id, created_date);
--
  -- Name: idx_addons_perkstore_order_index_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_order_index_03 ON public.addons_perkstore_product_order USING btree (product_id, sender_id);
--
  -- Name: idx_addons_perkstore_order_index_04; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_order_index_04 ON public.addons_perkstore_product_order USING btree (product_id, sender_id, created_date);
--
  -- Name: idx_addons_perkstore_order_index_05; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_order_index_05 ON public.addons_perkstore_product_order USING btree (transaction_hash);
--
  -- Name: idx_addons_perkstore_order_index_06; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_perkstore_order_index_06 ON public.addons_perkstore_product_order USING btree (refund_transaction_hash);
--
  -- Name: idx_addons_wallet_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_wallet_01 ON public.addons_wallet_account USING btree (address);
--
  -- Name: idx_addons_wallet_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_wallet_02 ON public.addons_wallet_transaction USING btree (
    network_id,
    to_address,
    contract_address,
    created_date
  );
--
  -- Name: idx_addons_wallet_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_wallet_03 ON public.addons_wallet_transaction USING btree (
    network_id,
    admin_op,
    from_address,
    to_address,
    by_address,
    created_date
  );
--
  -- Name: idx_addons_wallet_04; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_wallet_04 ON public.addons_wallet_transaction USING btree (hash);
--
  -- Name: idx_addons_wallet_05; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_wallet_05 ON public.addons_wallet_blockchain_state USING btree (wallet_id, contract_address);
--
  -- Name: idx_addons_wallet_06; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_addons_wallet_06 ON public.addons_wallet_transaction USING btree (pending, network_id);
--
  -- Name: idx_files_binary_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_files_binary_01 ON public.files_binary USING btree (name);
--
  -- Name: idx_files_files_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_files_files_01 ON public.files_files USING btree (checksum);
--
  -- Name: idx_files_files_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_files_files_02 ON public.files_files USING btree (deleted, updated_date);
--
  -- Name: idx_files_namespaces_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_files_namespaces_01 ON public.files_namespaces USING btree (name);
--
  -- Name: idx_files_orphan_files_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_files_orphan_files_01 ON public.files_orphan_files USING btree (deleted_date);
--
  -- Name: idx_game_context_item_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_game_context_item_01 ON public.gamification_context_items USING btree (gamification_user_id);
--
  -- Name: idx_gamification_actions_history_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_gamification_actions_history_01 ON public.gamification_actions_history USING btree (action_date);
--
  -- Name: idx_idm_queue_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_idm_queue_01 ON public.idm_queue USING btree (processed);
--
  -- Name: idx_idm_queue_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_idm_queue_02 ON public.idm_queue USING btree (nb_retries);
--
  -- Name: idx_qrtz_ft_inst_job_req_rcvry; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_inst_job_req_rcvry ON public.qrtz_fired_triggers USING btree (sched_name, instance_name, requests_recovery);
--
  -- Name: idx_qrtz_ft_j_g; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_j_g ON public.qrtz_fired_triggers USING btree (sched_name, job_name, job_group);
--
  -- Name: idx_qrtz_ft_jg; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_jg ON public.qrtz_fired_triggers USING btree (sched_name, job_group);
--
  -- Name: idx_qrtz_ft_t_g; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_t_g ON public.qrtz_fired_triggers USING btree (sched_name, trigger_name, trigger_group);
--
  -- Name: idx_qrtz_ft_tg; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_tg ON public.qrtz_fired_triggers USING btree (sched_name, trigger_group);
--
  -- Name: idx_qrtz_ft_trig_inst_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_ft_trig_inst_name ON public.qrtz_fired_triggers USING btree (sched_name, instance_name);
--
  -- Name: idx_qrtz_j_grp; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_j_grp ON public.qrtz_job_details USING btree (sched_name, job_group);
--
  -- Name: idx_qrtz_j_req_recovery; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_j_req_recovery ON public.qrtz_job_details USING btree (sched_name, requests_recovery);
--
  -- Name: idx_qrtz_t_c; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_c ON public.qrtz_triggers USING btree (sched_name, calendar_name);
--
  -- Name: idx_qrtz_t_g; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_g ON public.qrtz_triggers USING btree (sched_name, trigger_group);
--
  -- Name: idx_qrtz_t_j; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_j ON public.qrtz_triggers USING btree (sched_name, job_name, job_group);
--
  -- Name: idx_qrtz_t_jg; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_jg ON public.qrtz_triggers USING btree (sched_name, job_group);
--
  -- Name: idx_qrtz_t_n_g_state; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_n_g_state ON public.qrtz_triggers USING btree (sched_name, trigger_group, trigger_state);
--
  -- Name: idx_qrtz_t_n_state; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_n_state ON public.qrtz_triggers USING btree (
    sched_name,
    trigger_name,
    trigger_group,
    trigger_state
  );
--
  -- Name: idx_qrtz_t_next_fire_time; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_next_fire_time ON public.qrtz_triggers USING btree (sched_name, next_fire_time);
--
  -- Name: idx_qrtz_t_nft_misfire; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_misfire ON public.qrtz_triggers USING btree (sched_name, misfire_instr, next_fire_time);
--
  -- Name: idx_qrtz_t_nft_st; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_st ON public.qrtz_triggers USING btree (sched_name, trigger_state, next_fire_time);
--
  -- Name: idx_qrtz_t_nft_st_misfire; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_st_misfire ON public.qrtz_triggers USING btree (
    sched_name,
    misfire_instr,
    next_fire_time,
    trigger_state
  );
--
  -- Name: idx_qrtz_t_nft_st_misfire_grp; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_nft_st_misfire_grp ON public.qrtz_triggers USING btree (
    sched_name,
    misfire_instr,
    next_fire_time,
    trigger_group,
    trigger_state
  );
--
  -- Name: idx_qrtz_t_state; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_qrtz_t_state ON public.qrtz_triggers USING btree (sched_name, trigger_state);
--
  -- Name: idx_soc_activities_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_activities_01 ON public.soc_activities USING btree (updated_date);
--
  -- Name: idx_soc_activities_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_activities_02 ON public.soc_activities USING btree (poster_id);
--
  -- Name: idx_soc_activities_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_activities_03 ON public.soc_activities USING btree (owner_id);
--
  -- Name: idx_soc_activities_04; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_activities_04 ON public.soc_activities USING btree (hidden);
--
  -- Name: idx_soc_activities_05; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_activities_05 ON public.soc_activities USING btree (provider_id);
--
  -- Name: idx_soc_activity_likers_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_activity_likers_01 ON public.soc_activity_likers USING btree (activity_id);
--
  -- Name: idx_soc_connections_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_connections_01 ON public.soc_connections USING btree (receiver_id);
--
  -- Name: idx_soc_connections_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_connections_02 ON public.soc_connections USING btree (sender_id);
--
  -- Name: idx_soc_connections_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_connections_03 ON public.soc_connections USING btree (updated_date);
--
  -- Name: idx_soc_connections_04; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_connections_04 ON public.soc_connections USING btree (status);
--
  -- Name: idx_soc_connections_05; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_connections_05 ON public.soc_connections USING btree (receiver_id, status);
--
  -- Name: idx_soc_connections_06; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_connections_06 ON public.soc_connections USING btree (sender_id, status);
--
  -- Name: idx_soc_mentions_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_mentions_01 ON public.soc_mentions USING btree (mentioner_id);
--
  -- Name: idx_soc_stream_items_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_stream_items_01 ON public.soc_stream_items USING btree (updated_date);
--
  -- Name: idx_soc_stream_items_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_stream_items_02 ON public.soc_stream_items USING btree (stream_type);
--
  -- Name: idx_soc_stream_items_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_stream_items_03 ON public.soc_stream_items USING btree (owner_id);
--
  -- Name: idx_soc_stream_items_04; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_soc_stream_items_04 ON public.soc_stream_items USING btree (owner_id, activity_id, stream_type, updated_date);
--
  -- Name: idx_stg_settings_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_stg_settings_01 ON public.stg_settings USING btree (name);
--
  -- Name: idx_stg_settings_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_stg_settings_02 ON public.stg_settings USING btree (scope_id);
--
  -- Name: idx_stg_settings_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_stg_settings_03 ON public.stg_settings USING btree (context_id);
--
  -- Name: idx_task_comment_mentioned_users_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_comment_mentioned_users_01 ON public.task_comment_mentioned_users USING btree (mentioned_users);
--
  -- Name: idx_task_labels_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_labels_01 ON public.task_labels USING btree (username);
--
  -- Name: idx_task_prj_mgr_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_prj_mgr_01 ON public.task_project_managers USING btree (manager);
--
  -- Name: idx_task_prj_ptor_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_prj_ptor_01 ON public.task_project_participators USING btree (participator);
--
  -- Name: idx_task_task_coworkers_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_task_coworkers_01 ON public.task_task_coworkers USING btree (coworker);
--
  -- Name: idx_task_tasks_01; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_tasks_01 ON public.task_tasks USING btree (completed);
--
  -- Name: idx_task_tasks_02; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_tasks_02 ON public.task_tasks USING btree (assignee);
--
  -- Name: idx_task_tasks_03; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX idx_task_tasks_03 ON public.task_tasks USING btree (created_by);
--
  -- Name: jcr_idx_sitem_n_order_num; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX jcr_idx_sitem_n_order_num ON public.jcr_sitem USING btree (i_class, container_name, parent_id, n_order_num);
--
  -- Name: jcr_idx_sitem_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX jcr_idx_sitem_name ON public.jcr_sitem USING btree (i_class, container_name, name);
--
  -- Name: jcr_idx_sitem_parent; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX jcr_idx_sitem_parent ON public.jcr_sitem USING btree (
    container_name,
    parent_id,
    name,
    i_index,
    i_class,
    version
  );
--
  -- Name: jcr_idx_sitem_parent_fk; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX jcr_idx_sitem_parent_fk ON public.jcr_sitem USING btree (parent_id);
--
  -- Name: jcr_idx_sitem_parent_id; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX jcr_idx_sitem_parent_id ON public.jcr_sitem USING btree (i_class, container_name, parent_id, id, version);
--
  -- Name: jcr_idx_sitem_parent_name; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX jcr_idx_sitem_parent_name ON public.jcr_sitem USING btree (
    i_class,
    container_name,
    parent_id,
    name,
    i_index,
    version
  );
--
  -- Name: jcr_idx_sref_property; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX jcr_idx_sref_property ON public.jcr_sref USING btree (property_id, order_num);
--
  -- Name: jcr_idx_svalue_property; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE UNIQUE INDEX jcr_idx_svalue_property ON public.jcr_svalue USING btree (property_id, order_num);
--
  -- Name: text_attr_value_id_idx; Type: INDEX; Schema: public; Owner: prisma
  --
  CREATE INDEX text_attr_value_id_idx ON public.jbid_io_attr_text_values USING btree (text_attr_value_id);
--
  -- Name: jbid_io fk_1524d961cmjrfv470i376n1df; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io
ADD
  CONSTRAINT fk_1524d961cmjrfv470i376n1df FOREIGN KEY (realm) REFERENCES public.jbid_realm(id);
--
  -- Name: jbid_io_creden fk_4ptntoev8jb05281319wltg07; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden
ADD
  CONSTRAINT fk_4ptntoev8jb05281319wltg07 FOREIGN KEY (credential_type) REFERENCES public.jbid_io_creden_type(id);
--
  -- Name: jbid_io fk_5j9pr8t7b237yfhe3q4u820y6; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io
ADD
  CONSTRAINT fk_5j9pr8t7b237yfhe3q4u820y6 FOREIGN KEY (identity_type) REFERENCES public.jbid_io_type(id);
--
  -- Name: jbid_io_rel fk_60mbu620sn7pqmj1wdqfux7de; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel
ADD
  CONSTRAINT fk_60mbu620sn7pqmj1wdqfux7de FOREIGN KEY (to_identity) REFERENCES public.jbid_io(id);
--
  -- Name: jbid_io_rel_name fk_7fkcek6fgih072s18cper1g9t; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_name
ADD
  CONSTRAINT fk_7fkcek6fgih072s18cper1g9t FOREIGN KEY (realm) REFERENCES public.jbid_realm(id);
--
  -- Name: jbid_io_rel_name_props fk_8kjju28ee6sd26amdxuq82oee; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_name_props
ADD
  CONSTRAINT fk_8kjju28ee6sd26amdxuq82oee FOREIGN KEY (prop_id) REFERENCES public.jbid_io_rel_name(id);
--
  -- Name: jbid_io_rel_props fk_8xd4s1so6bgygp2eced42bdd5; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel_props
ADD
  CONSTRAINT fk_8xd4s1so6bgygp2eced42bdd5 FOREIGN KEY (prop_id) REFERENCES public.jbid_io_rel(id);
--
  -- Name: jbid_io_attr_text_values fk_9t69d6ilqtu0tr4j8ab2bw9ev; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_attr_text_values
ADD
  CONSTRAINT fk_9t69d6ilqtu0tr4j8ab2bw9ev FOREIGN KEY (text_attr_value_id) REFERENCES public.jbid_io_attr(attribute_id);
--
  -- Name: soc_activities fk_activity_parent_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_activities
ADD
  CONSTRAINT fk_activity_parent_id FOREIGN KEY (parent_id) REFERENCES public.soc_activities(activity_id) ON DELETE CASCADE;
--
  -- Name: jbid_io_creden fk_avbrewjv8179ugkt6ttuk85e; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden
ADD
  CONSTRAINT fk_avbrewjv8179ugkt6ttuk85e FOREIGN KEY (bin_value_id) REFERENCES public.jbid_creden_bin_value(bin_value_id);
--
  -- Name: task_comments fk_comment_task_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_comments
ADD
  CONSTRAINT fk_comment_task_01 FOREIGN KEY (task_id) REFERENCES public.task_tasks(task_id);
--
  -- Name: jbid_io_rel fk_ddl776m12nmg0j0fieodyykyy; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel
ADD
  CONSTRAINT fk_ddl776m12nmg0j0fieodyykyy FOREIGN KEY (name) REFERENCES public.jbid_io_rel_name(id);
--
  -- Name: files_files fk_files_files_namespace_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_files
ADD
  CONSTRAINT fk_files_files_namespace_id FOREIGN KEY (namespace_id) REFERENCES public.files_namespaces(namespace_id);
--
  -- Name: files_orphan_files fk_files_orphan_file_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.files_orphan_files
ADD
  CONSTRAINT fk_files_orphan_file_id FOREIGN KEY (file_id) REFERENCES public.files_files(file_id);
--
  -- Name: gamification_actions_history fk_gamification_actions_history_domain; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_actions_history
ADD
  CONSTRAINT fk_gamification_actions_history_domain FOREIGN KEY (domain_id) REFERENCES public.gamification_domain(id);
--
  -- Name: gamification_badges fk_gamification_badges_domain; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_badges
ADD
  CONSTRAINT fk_gamification_badges_domain FOREIGN KEY (domain_id) REFERENCES public.gamification_domain(id);
--
  -- Name: gamification_context_items fk_gamification_context_item_context_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_context_items
ADD
  CONSTRAINT fk_gamification_context_item_context_01 FOREIGN KEY (gamification_user_id) REFERENCES public.gamification_user_reputation(id);
--
  -- Name: gamification_rule fk_gamification_rules_domain; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.gamification_rule
ADD
  CONSTRAINT fk_gamification_rules_domain FOREIGN KEY (domain_id) REFERENCES public.gamification_domain(id);
--
  -- Name: jbid_real_props fk_hv1at4rpxkgkgcrd4pi3cq706; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_real_props
ADD
  CONSTRAINT fk_hv1at4rpxkgkgcrd4pi3cq706 FOREIGN KEY (prop_id) REFERENCES public.jbid_realm(id);
--
  -- Name: jbid_io_props fk_idt21674gp6njdxo68qo5590u; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_props
ADD
  CONSTRAINT fk_idt21674gp6njdxo68qo5590u FOREIGN KEY (prop_id) REFERENCES public.jbid_io(id);
--
  -- Name: jbid_io_attr fk_jk4i7udwn5obtux8wr62sw6wg; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_attr
ADD
  CONSTRAINT fk_jk4i7udwn5obtux8wr62sw6wg FOREIGN KEY (identity_object_id) REFERENCES public.jbid_io(id);
--
  -- Name: jbid_io_rel fk_jn0uhpfjr7nh4lr4qbe9wk3n3; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel
ADD
  CONSTRAINT fk_jn0uhpfjr7nh4lr4qbe9wk3n3 FOREIGN KEY (rel_type) REFERENCES public.jbid_io_rel_type(id);
--
  -- Name: task_change_logs fk_log_task; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_change_logs
ADD
  CONSTRAINT fk_log_task FOREIGN KEY (task_id) REFERENCES public.task_tasks(task_id);
--
  -- Name: ntf_email_notifs_digest fk_ntf_email_notifs_digest_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_email_notifs_digest
ADD
  CONSTRAINT fk_ntf_email_notifs_digest_01 FOREIGN KEY (email_notif_id) REFERENCES public.ntf_email_notifs(email_notif_id);
--
  -- Name: ntf_email_notifs_params fk_ntf_email_notifs_params_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_email_notifs_params
ADD
  CONSTRAINT fk_ntf_email_notifs_params_01 FOREIGN KEY (email_notif_id) REFERENCES public.ntf_email_notifs(email_notif_id);
--
  -- Name: ntf_web_notifs_params fk_ntf_web_notifs_params_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_web_notifs_params
ADD
  CONSTRAINT fk_ntf_web_notifs_params_01 FOREIGN KEY (web_notif_id) REFERENCES public.ntf_web_notifs(web_notif_id);
--
  -- Name: ntf_web_notifs_users fk_ntf_web_notifs_users_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.ntf_web_notifs_users
ADD
  CONSTRAINT fk_ntf_web_notifs_users_01 FOREIGN KEY (web_notif_id) REFERENCES public.ntf_web_notifs(web_notif_id);
--
  -- Name: jbid_io_creden_props fk_o8vcn5cjmisu2fpygubl4p1l9; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden_props
ADD
  CONSTRAINT fk_o8vcn5cjmisu2fpygubl4p1l9 FOREIGN KEY (prop_id) REFERENCES public.jbid_io_creden(id);
--
  -- Name: jbid_io_creden fk_otmncrr31bm1f9c7gyywe30u9; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_creden
ADD
  CONSTRAINT fk_otmncrr31bm1f9c7gyywe30u9 FOREIGN KEY (identity_object_id) REFERENCES public.jbid_io(id);
--
  -- Name: jbid_io_attr fk_pbtnw2uh4v9g6ykci74woc0x8; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_attr
ADD
  CONSTRAINT fk_pbtnw2uh4v9g6ykci74woc0x8 FOREIGN KEY (bin_value_id) REFERENCES public.jbid_attr_bin_value(bin_value_id);
--
  -- Name: addons_perkstore_product_order fk_perkstore_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product_order
ADD
  CONSTRAINT fk_perkstore_01 FOREIGN KEY (product_id) REFERENCES public.addons_perkstore_product(product_id);
--
  -- Name: addons_perkstore_image fk_perkstore_product_image; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_image
ADD
  CONSTRAINT fk_perkstore_product_image FOREIGN KEY (product_id) REFERENCES public.addons_perkstore_product(product_id);
--
  -- Name: addons_perkstore_product_marchand fk_perkstore_product_marchand; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product_marchand
ADD
  CONSTRAINT fk_perkstore_product_marchand FOREIGN KEY (product_id) REFERENCES public.addons_perkstore_product(product_id);
--
  -- Name: addons_perkstore_product_permission fk_perkstore_product_permission; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_perkstore_product_permission
ADD
  CONSTRAINT fk_perkstore_product_permission FOREIGN KEY (product_id) REFERENCES public.addons_perkstore_product(product_id);
--
  -- Name: portal_applications fk_portal_app_category; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_applications
ADD
  CONSTRAINT fk_portal_app_category FOREIGN KEY (category_id) REFERENCES public.portal_app_categories(id) ON DELETE CASCADE;
--
  -- Name: portal_description_localized fk_portal_description_localized_description_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_description_localized
ADD
  CONSTRAINT fk_portal_description_localized_description_id FOREIGN KEY (description_id) REFERENCES public.portal_descriptions(description_id) ON DELETE CASCADE;
--
  -- Name: portal_navigations fk_portal_nav_node; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_navigations
ADD
  CONSTRAINT fk_portal_nav_node FOREIGN KEY (node_id) REFERENCES public.portal_navigation_nodes(node_id) ON DELETE CASCADE;
--
  -- Name: portal_navigations fk_portal_nav_site; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_navigations
ADD
  CONSTRAINT fk_portal_nav_site FOREIGN KEY (site_id) REFERENCES public.portal_sites(id) ON DELETE CASCADE;
--
  -- Name: portal_navigation_nodes fk_portal_node_page; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_navigation_nodes
ADD
  CONSTRAINT fk_portal_node_page FOREIGN KEY (page_id) REFERENCES public.portal_pages(id) ON DELETE
SET
  NULL;
--
  -- Name: portal_navigation_nodes fk_portal_node_parent; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_navigation_nodes
ADD
  CONSTRAINT fk_portal_node_parent FOREIGN KEY (parent_id) REFERENCES public.portal_navigation_nodes(node_id) ON DELETE CASCADE;
--
  -- Name: portal_pages fk_portal_page_site; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.portal_pages
ADD
  CONSTRAINT fk_portal_page_site FOREIGN KEY (site_id) REFERENCES public.portal_sites(id) ON DELETE CASCADE;
--
  -- Name: jbid_io_rel fk_r5hojsy1l0exg60afyvcjh6ff; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jbid_io_rel
ADD
  CONSTRAINT fk_r5hojsy1l0exg60afyvcjh6ff FOREIGN KEY (from_identity) REFERENCES public.jbid_io(id);
--
  -- Name: soc_activity_likers fk_soc_act_likers_act_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_activity_likers
ADD
  CONSTRAINT fk_soc_act_likers_act_01 FOREIGN KEY (activity_id) REFERENCES public.soc_activities(activity_id) ON DELETE CASCADE;
--
  -- Name: soc_activity_template_params fk_soc_act_temp_par_act_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_activity_template_params
ADD
  CONSTRAINT fk_soc_act_temp_par_act_01 FOREIGN KEY (activity_id) REFERENCES public.soc_activities(activity_id) ON DELETE CASCADE;
--
  -- Name: soc_apps fk_soc_app_space_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_apps
ADD
  CONSTRAINT fk_soc_app_space_01 FOREIGN KEY (space_id) REFERENCES public.soc_spaces(space_id);
--
  -- Name: soc_connections fk_soc_connection_receiver; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_connections
ADD
  CONSTRAINT fk_soc_connection_receiver FOREIGN KEY (receiver_id) REFERENCES public.soc_identities(identity_id);
--
  -- Name: soc_connections fk_soc_connection_sender; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_connections
ADD
  CONSTRAINT fk_soc_connection_sender FOREIGN KEY (sender_id) REFERENCES public.soc_identities(identity_id);
--
  -- Name: soc_identity_experiences fk_soc_identity_experiences; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_identity_experiences
ADD
  CONSTRAINT fk_soc_identity_experiences FOREIGN KEY (identity_id) REFERENCES public.soc_identities(identity_id);
--
  -- Name: soc_identity_properties fk_soc_identity_properties; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_identity_properties
ADD
  CONSTRAINT fk_soc_identity_properties FOREIGN KEY (identity_id) REFERENCES public.soc_identities(identity_id);
--
  -- Name: soc_spaces_members fk_soc_mem_space_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_spaces_members
ADD
  CONSTRAINT fk_soc_mem_space_01 FOREIGN KEY (space_id) REFERENCES public.soc_spaces(space_id);
--
  -- Name: soc_mentions fk_soc_mentions_act_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_mentions
ADD
  CONSTRAINT fk_soc_mentions_act_01 FOREIGN KEY (activity_id) REFERENCES public.soc_activities(activity_id) ON DELETE CASCADE;
--
  -- Name: soc_stream_items fk_soc_stream_items_act_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.soc_stream_items
ADD
  CONSTRAINT fk_soc_stream_items_act_01 FOREIGN KEY (activity_id) REFERENCES public.soc_activities(activity_id) ON DELETE CASCADE;
--
  -- Name: stg_settings fk_stg_settings_context_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_settings
ADD
  CONSTRAINT fk_stg_settings_context_01 FOREIGN KEY (context_id) REFERENCES public.stg_contexts(context_id);
--
  -- Name: stg_settings fk_stg_settings_scope_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.stg_settings
ADD
  CONSTRAINT fk_stg_settings_scope_01 FOREIGN KEY (scope_id) REFERENCES public.stg_scopes(scope_id);
--
  -- Name: task_comments fk_task_comment_parent_cmt_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_comments
ADD
  CONSTRAINT fk_task_comment_parent_cmt_id FOREIGN KEY (parent_comment_id) REFERENCES public.task_comments(comment_id) ON DELETE CASCADE;
--
  -- Name: task_hidden_projects fk_task_hid_prj_tk_prj_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_hidden_projects
ADD
  CONSTRAINT fk_task_hid_prj_tk_prj_01 FOREIGN KEY (project_id) REFERENCES public.task_projects(project_id) ON DELETE CASCADE;
--
  -- Name: task_labels fk_task_lbl_task_lbl_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_labels
ADD
  CONSTRAINT fk_task_lbl_task_lbl_01 FOREIGN KEY (parent_label_id) REFERENCES public.task_labels(label_id);
--
  -- Name: task_project_managers fk_task_prj_mgr_task_prj_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_project_managers
ADD
  CONSTRAINT fk_task_prj_mgr_task_prj_01 FOREIGN KEY (project_id) REFERENCES public.task_projects(project_id);
--
  -- Name: task_project_participators fk_task_prj_ptor_task_prj_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_project_participators
ADD
  CONSTRAINT fk_task_prj_ptor_task_prj_01 FOREIGN KEY (project_id) REFERENCES public.task_projects(project_id);
--
  -- Name: task_projects fk_task_prj_task_prj_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_projects
ADD
  CONSTRAINT fk_task_prj_task_prj_01 FOREIGN KEY (parent_project_id) REFERENCES public.task_projects(project_id);
--
  -- Name: task_status fk_task_status_task_prj_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_status
ADD
  CONSTRAINT fk_task_status_task_prj_01 FOREIGN KEY (project_id) REFERENCES public.task_projects(project_id);
--
  -- Name: task_tasks fk_task_tasks_task_status_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_tasks
ADD
  CONSTRAINT fk_task_tasks_task_status_01 FOREIGN KEY (status_id) REFERENCES public.task_status(status_id);
--
  -- Name: task_comment_mentioned_users fk_tk_cm_ment_tk_cm_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_comment_mentioned_users
ADD
  CONSTRAINT fk_tk_cm_ment_tk_cm_01 FOREIGN KEY (comment_id) REFERENCES public.task_comments(comment_id);
--
  -- Name: task_hidden_projects fk_tk_hid_prj_tk_usr_set_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_hidden_projects
ADD
  CONSTRAINT fk_tk_hid_prj_tk_usr_set_01 FOREIGN KEY (username) REFERENCES public.task_user_settings(username) ON DELETE CASCADE;
--
  -- Name: task_label_task fk_tk_lbl_tk_lbl_tk_lbl__01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_label_task
ADD
  CONSTRAINT fk_tk_lbl_tk_lbl_tk_lbl__01 FOREIGN KEY (label_id) REFERENCES public.task_labels(label_id);
--
  -- Name: task_label_task fk_tk_lbl_tk_tk_tk_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_label_task
ADD
  CONSTRAINT fk_tk_lbl_tk_tk_tk_01 FOREIGN KEY (task_id) REFERENCES public.task_tasks(task_id);
--
  -- Name: task_task_coworkers fk_tk_tk_cowkr_tk_tk_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.task_task_coworkers
ADD
  CONSTRAINT fk_tk_tk_cowkr_tk_tk_01 FOREIGN KEY (task_id) REFERENCES public.task_tasks(task_id);
--
  -- Name: addons_wallet_key fk_wallet_account_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_key
ADD
  CONSTRAINT fk_wallet_account_01 FOREIGN KEY (wallet_id) REFERENCES public.addons_wallet_account(identity_id);
--
  -- Name: addons_wallet_blockchain_state fk_wallet_account_02; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_blockchain_state
ADD
  CONSTRAINT fk_wallet_account_02 FOREIGN KEY (wallet_id) REFERENCES public.addons_wallet_account(identity_id);
--
  -- Name: addons_wallet_gam_team_member fk_wallet_gam_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_gam_team_member
ADD
  CONSTRAINT fk_wallet_gam_01 FOREIGN KEY (team_id) REFERENCES public.addons_wallet_gam_team(team_id);
--
  -- Name: addons_wallet_reward fk_wallet_gam_02; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_reward
ADD
  CONSTRAINT fk_wallet_gam_02 FOREIGN KEY (team_id) REFERENCES public.addons_wallet_gam_team(team_id);
--
  -- Name: addons_wallet_reward_plugin fk_wallet_reward_id_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_reward_plugin
ADD
  CONSTRAINT fk_wallet_reward_id_01 FOREIGN KEY (reward_id) REFERENCES public.addons_wallet_reward(reward_id);
--
  -- Name: addons_wallet_reward fk_wallet_reward_period_01; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.addons_wallet_reward
ADD
  CONSTRAINT fk_wallet_reward_period_01 FOREIGN KEY (reward_period_id) REFERENCES public.addons_wallet_reward_period(reward_period_id);
--
  -- Name: wbc_participants fk_wbc_partcall; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.wbc_participants
ADD
  CONSTRAINT fk_wbc_partcall FOREIGN KEY (call_id) REFERENCES public.wbc_calls(id) ON UPDATE CASCADE ON DELETE CASCADE;
--
  -- Name: jcr_sitem jcr_fk_sitem_parent; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jcr_sitem
ADD
  CONSTRAINT jcr_fk_sitem_parent FOREIGN KEY (parent_id) REFERENCES public.jcr_sitem(id);
--
  -- Name: jcr_svalue jcr_fk_svalue_property; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.jcr_svalue
ADD
  CONSTRAINT jcr_fk_svalue_property FOREIGN KEY (property_id) REFERENCES public.jcr_sitem(id);
--
  -- Name: qrtz_blob_triggers qrtz_blob_triggers_sched_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_blob_triggers
ADD
  CONSTRAINT qrtz_blob_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_cron_triggers qrtz_cron_triggers_sched_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_cron_triggers
ADD
  CONSTRAINT qrtz_cron_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_simple_triggers qrtz_simple_triggers_sched_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_simple_triggers
ADD
  CONSTRAINT qrtz_simple_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_simprop_triggers qrtz_simprop_triggers_sched_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_simprop_triggers
ADD
  CONSTRAINT qrtz_simprop_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES public.qrtz_triggers(sched_name, trigger_name, trigger_group);
--
  -- Name: qrtz_triggers qrtz_triggers_sched_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.qrtz_triggers
ADD
  CONSTRAINT qrtz_triggers_sched_name_fkey FOREIGN KEY (sched_name, job_name, job_group) REFERENCES public.qrtz_job_details(sched_name, job_name, job_group);
--
  -- PostgreSQL database dump complete
  --