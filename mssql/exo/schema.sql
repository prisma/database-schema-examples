USE [exo]
GO

 CREATE TABLE dbo.addons_kudos (
    kudos_id bigint NOT NULL,
    sender_id bigint,
    receiver_id bigint,
    is_receiver_user bit NOT NULL,
    entity_id bigint,
    entity_type integer,
    message text,
    created_date bigint,
    parent_entity_id bigint,
    activity_id bigint
  );

  CREATE TABLE dbo.addons_perkstore_image (
    image_file_id bigint NOT NULL,
    product_id bigint NOT NULL
  );


  CREATE TABLE dbo.addons_perkstore_product (
    product_id bigint NOT NULL,
    title character varying(200),
    description character varying(2000),
    illustration_url character varying(500),
    enabled bit,
    unlimited bit,
    allow_fraction bit,
    total_supply float,
    price float,
    receiver_id bigint,
    periodicity integer,
    max_orders_per_user float,
    created_date bigint,
    last_modified_date bigint,
    creator bigint,
    last_modifier bigint
  );

  CREATE TABLE dbo.addons_perkstore_product_marchand (
    marchand_identity_id bigint NOT NULL,
    product_id bigint NOT NULL
  );

  CREATE TABLE dbo.addons_perkstore_product_order (
    order_id bigint NOT NULL,
    product_id bigint NOT NULL,
    transaction_hash character varying(66),
    refund_transaction_hash character varying(66),
    quantity float,
    delivered_quantity float,
    refunded_quantity float,
    remaining_quantity float,
    amount float,
    refunded_amount float,
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

  CREATE TABLE dbo.addons_perkstore_product_permission (
    permission_identity_id bigint NOT NULL,
    product_id bigint NOT NULL
  );

  CREATE TABLE dbo.addons_wallet_account (
    identity_id bigint NOT NULL,
    identity_type integer NOT NULL,
    address character varying(100) NOT NULL,
    phrase character varying(100) NOT NULL,
    enabled bit,
    initialization_state integer DEFAULT 0,
    backed_up bit DEFAULT 0
  );

  CREATE TABLE dbo.addons_wallet_blockchain_state (
    blockchain_state_id bigint NOT NULL,
    wallet_id bigint NOT NULL,
    contract_address character varying(100) NOT NULL,
    ether_balance float DEFAULT 0,
    token_balance float DEFAULT 0,
    reward_balance float DEFAULT 0,
    vesting_balance float DEFAULT 0,
    admin_level integer DEFAULT 0,
    is_approved bit DEFAULT 0,
    is_initialized bit DEFAULT 0
  );


  CREATE TABLE dbo.addons_wallet_gam_team (
    team_id bigint NOT NULL,
    team_name character varying(200) NOT NULL,
    team_description character varying(2000),
    team_reward_type integer,
    team_budget float,
    team_member_reward float,
    team_space_id bigint,
    team_manager_id bigint,
    team_disabled bit DEFAULT 0,
    team_deleted bit DEFAULT 0
  );

  CREATE TABLE dbo.addons_wallet_gam_team_member (
    member_id bigint NOT NULL,
    member_identity_id bigint NOT NULL,
    team_id bigint NOT NULL
  );

  CREATE TABLE dbo.addons_wallet_key (
    key_id bigint NOT NULL,
    wallet_id bigint NOT NULL,
    content varchar(max) NOT NULL
  );

  CREATE TABLE dbo.addons_wallet_label (
    label_id bigint NOT NULL,
    identity_id bigint,
    address character varying(100) NOT NULL,
    label character varying(100) NOT NULL
  );

  CREATE TABLE dbo.addons_wallet_reward (
    reward_id bigint NOT NULL,
    identity_id bigint DEFAULT 0 NOT NULL,
    reward_period_id bigint NOT NULL,
    team_id bigint,
    transaction_hash character varying(100),
    enabled bit DEFAULT 0,
    tokens_to_send float DEFAULT 0,
    tokens_sent float DEFAULT 0
  );

  CREATE TABLE dbo.addons_wallet_reward_period (
    reward_period_id bigint NOT NULL,
    period_type integer DEFAULT 0 NOT NULL,
    start_time bigint DEFAULT 0,
    end_time bigint DEFAULT 0,
    status integer DEFAULT 0
  );

  CREATE TABLE dbo.addons_wallet_reward_plugin (
    reward_plugin_id bigint NOT NULL,
    reward_id bigint NOT NULL,
    plugin_id character varying(100),
    pool_used bit DEFAULT 0,
    points float DEFAULT 0,
    amount float DEFAULT 0
  );

  CREATE TABLE dbo.addons_wallet_transaction (
    transaction_id bigint NOT NULL,
    network_id bigint NOT NULL,
    hash character varying(100) NOT NULL,
    pending bit,
    success bit,
    admin_op bit,
    from_address character varying(100) NOT NULL,
    to_address character varying(100),
    by_address character varying(100),
    label varchar(max),
    message varchar(max),
    value float,
    contract_address character varying(100),
    contract_method character varying(30),
    contract_amount float,
    created_date bigint,
    issuer_id bigint DEFAULT 0,
    gas_used integer DEFAULT 0,
    gas_price float DEFAULT 0,
    token_fee float DEFAULT 0,
    no_contract_funds bit DEFAULT 0,
    nonce bigint DEFAULT 0,
    raw_transaction varchar(max),
    sent_date bigint DEFAULT 0,
    sending_attempt_count bigint DEFAULT 0,
    ether_fee float DEFAULT 0
  );

  CREATE TABLE dbo.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted datetime2 NOT NULL,
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

  CREATE TABLE dbo.databasechangeloglock (
    id integer NOT NULL,
    locked bit NOT NULL,
    lockgranted datetime2,
    lockedby character varying(255)
  );

  
  CREATE TABLE dbo.email_queue (
    email_id bigint NOT NULL,
    creation_date datetime2,
    type character varying(550),
    sender character varying(200),
    receiver character varying(200),
    subject character varying(550),
    body varchar(max),
    footer character varying(550)
  );

  CREATE TABLE dbo.es_indexing_queue (
    operation_id bigint NOT NULL,
    entity_type character varying(50) NOT NULL,
    entity_id character varying(50),
    operation_type character(1) NOT NULL,
    operation_timestamp datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE TABLE dbo.files_binary (
    blob_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    data VARBINARY(100),
    updated_date datetime2 DEFAULT getdate()
  );

  
  CREATE TABLE dbo.files_files (
    file_id bigint NOT NULL,
    namespace_id integer NOT NULL,
    name character varying(550) NOT NULL,
    mimetype character varying(100),
    file_size bigint,
    updated_date datetime2 DEFAULT getdate() NOT NULL,
    updater character varying(200),
    checksum character varying(100),
    deleted bit DEFAULT 0
  );

  CREATE TABLE dbo.files_namespaces (
    namespace_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(100)
  );

  CREATE TABLE dbo.files_orphan_files (
    id integer NOT NULL,
    file_id bigint NOT NULL,
    deleted_date datetime2 DEFAULT getdate() NOT NULL,
    checksum character varying(100)
  );

  CREATE TABLE dbo.gamification_actions_history (
    id bigint NOT NULL,
    action_date date NOT NULL,
    user_social_id character varying(200) NOT NULL,
    global_score bigint NOT NULL,
    action_title character varying(70) NOT NULL,
    domain character varying(32) NOT NULL,
    context character varying(200),
    action_score bigint NOT NULL,
    created_by character varying(200) NOT NULL,
    created_date datetime2 DEFAULT getdate(),
    last_modified_by character varying(200),
    last_modified_date datetime2,
    receiver character varying(200),
    object_id character varying(500),
    domain_id bigint
  );

  CREATE TABLE dbo.gamification_badges (
    badge_id bigint NOT NULL,
    title character varying(50) NOT NULL,
    description character varying(255) NOT NULL,
    needed_score bigint NOT NULL,
    icon_file_id bigint,
    validity_date_start datetime2,
    validity_date_end datetime2,
    enabled bit DEFAULT 0 NOT NULL,
    created_by character varying(200) NOT NULL,
    domain character varying(70) NOT NULL,
    created_date datetime2 DEFAULT getdate() NOT NULL,
    last_modified_by character varying(200),
    last_modified_date datetime2,
    domain_id bigint,
    deleted bit DEFAULT 0 NOT NULL
  );

  CREATE TABLE dbo.gamification_context_items (
    id bigint NOT NULL,
    occurrence integer,
    operation_type character varying(255),
    zone character varying(70),
    score bigint,
    gamification_user_id bigint NOT NULL
  );

  CREATE TABLE dbo.gamification_domain (
    id bigint NOT NULL,
    title character varying(255),
    description character varying(255) NOT NULL,
    priority integer,
    created_by character varying(200) NOT NULL,
    created_date datetime2 DEFAULT getdate() NOT NULL,
    last_modified_by character varying(200),
    last_modified_date datetime2,
    enabled bit DEFAULT 1 NOT NULL,
    deleted bit DEFAULT 0 NOT NULL
  );

  CREATE TABLE dbo.gamification_rule (
    id bigint NOT NULL,
    title character varying(70) NOT NULL,
    description character varying(255) NOT NULL,
    score bigint NOT NULL,
    area character varying(32),
    enabled bit DEFAULT 0 NOT NULL,
    created_by character varying(200) NOT NULL,
    created_date datetime2 DEFAULT getdate() NOT NULL,
    last_modified_by character varying(200),
    last_modified_date datetime2,
    domain_id bigint,
    event character varying(70),
    deleted bit DEFAULT 0 NOT NULL
  );

  CREATE TABLE dbo.gamification_user_reputation (
    id bigint NOT NULL,
    score bigint,
    username character varying(200) NOT NULL
  );

  CREATE SEQUENCE dbo.hibernate_sequence START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.idm_queue (
    idm_queue_id bigint NOT NULL,
    entity_id character varying(200) NOT NULL,
    entity_type integer NOT NULL,
    nb_retries integer NOT NULL,
    processed bit NOT NULL,
    create_date datetime2 NOT NULL,
    operation_type integer NOT NULL
  );


  CREATE TABLE dbo.jbid_attr_bin_value (
    bin_value_id bigint NOT NULL,
    value character varying(100)
  );


  CREATE TABLE dbo.jbid_creden_bin_value (
    bin_value_id bigint NOT NULL,
    value character varying(100)
  );


  CREATE TABLE dbo.jbid_io (
    id bigint NOT NULL,
    identity_type bigint NOT NULL,
    name character varying(255) NOT NULL,
    realm bigint NOT NULL
  );


  CREATE TABLE dbo.jbid_io_attr (
    attribute_id bigint NOT NULL,
    identity_object_id bigint NOT NULL,
    name character varying(255),
    attribute_type character varying(255),
    bin_value_id bigint
  );


  CREATE TABLE dbo.jbid_io_attr_text_values (
    text_attr_value_id bigint NOT NULL,
    attr_value character varying(255)
  );


  CREATE TABLE dbo.jbid_io_creden (
    id bigint NOT NULL,
    bin_value_id bigint,
    identity_object_id bigint NOT NULL,
    text character varying(255),
    credential_type bigint NOT NULL
  );

  CREATE TABLE dbo.jbid_io_creden_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jbid_io_creden_type (
    id bigint NOT NULL,
    name character varying(255)
  );

  CREATE TABLE dbo.jbid_io_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );

  
  CREATE TABLE dbo.jbid_io_rel (
    id bigint NOT NULL,
    from_identity bigint NOT NULL,
    name bigint,
    to_identity bigint NOT NULL,
    rel_type bigint NOT NULL
  );

  CREATE TABLE dbo.jbid_io_rel_name (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    realm bigint NOT NULL
  );

  CREATE TABLE dbo.jbid_io_rel_name_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jbid_io_rel_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jbid_io_rel_type (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jbid_io_type (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jbid_real_props (
    prop_id bigint NOT NULL,
    prop_value character varying(255) NOT NULL,
    prop_name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jbid_realm (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
  );

  CREATE TABLE dbo.jcr_sitem (
    id character varying(96) NOT NULL,
    parent_id character varying(96) NOT NULL,
    name character varying(512) NOT NULL,
    version integer NOT NULL,
    container_name character varying(96) NOT NULL,
    i_class integer NOT NULL,
    i_index integer NOT NULL,
    n_order_num integer,
    p_type integer,
    p_multivalued bit
  );

  CREATE TABLE dbo.jcr_sref (
    node_id character varying(96) NOT NULL,
    property_id character varying(96) NOT NULL,
    order_num integer NOT NULL
  );

  CREATE TABLE dbo.jcr_svalue (
    id bigint NOT NULL,
    data VARBINARY(100),
    order_num integer NOT NULL,
    property_id character varying(96) NOT NULL,
    storage_desc character varying(512)
  );

  CREATE SEQUENCE dbo.jcr_svalue_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.msg_devices (
    id bigint NOT NULL,
    token character varying(200) NOT NULL,
    username character varying(200) NOT NULL,
    type character varying(200),
    registration_date datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE TABLE dbo.ntf_email_notifs (
    email_notif_id bigint NOT NULL,
    sender character varying(200),
    type character varying(550) NOT NULL,
    creation_date datetime2 NOT NULL,
    sending_order integer NOT NULL
  );

  CREATE TABLE dbo.ntf_email_notifs_digest (
    email_notif_digest_id bigint NOT NULL,
    email_notif_id bigint NOT NULL,
    digest_type character varying(550)
  );

  CREATE TABLE dbo.ntf_email_notifs_params (
    email_notif_params_id bigint NOT NULL,
    email_notif_id bigint NOT NULL,
    param_name character varying(550) NOT NULL,
    param_value varchar(max)
  );

  CREATE TABLE dbo.ntf_web_notifs (
    web_notif_id bigint NOT NULL,
    sender character varying(200),
    type character varying(550) NOT NULL,
    creation_date datetime2 NOT NULL,
    text varchar(max)
  );

  CREATE TABLE dbo.ntf_web_notifs_params (
    web_notif_params_id bigint NOT NULL,
    web_notif_id bigint NOT NULL,
    param_name character varying(550) NOT NULL,
    param_value varchar(max)
  );

  CREATE TABLE dbo.ntf_web_notifs_users (
    web_notifs_users_id bigint NOT NULL,
    web_notif_id bigint NOT NULL,
    receiver character varying(200) NOT NULL,
    update_date datetime2 NOT NULL,
    is_read bit,
    show_popover bit,
    reset_number_badge bit
  );

  CREATE TABLE dbo.portal_app_categories (
    id bigint NOT NULL,
    name character varying(200),
    display_name character varying(200),
    description varchar(max),
    created_date bigint,
    modified_date bigint
  );

  CREATE TABLE dbo.portal_applications (
    id bigint NOT NULL,
    display_name character varying(200),
    description varchar(max),
    created_date bigint,
    modified_date bigint,
    app_name character varying(200),
    type character varying(50),
    content_id character varying(200),
    category_id bigint NOT NULL
  );

  CREATE TABLE dbo.portal_containers (
    id bigint NOT NULL,
    webui_id character varying(200),
    name character varying(200),
    icon character varying(200),
    template character varying(500),
    factory_id character varying(200),
    title character varying(200),
    description varchar(max),
    width character varying(20),
    height character varying(20),
    properties varchar(max),
    container_body varchar(max)
  );

  CREATE TABLE dbo.portal_description_localized (
    description_id bigint,
    locale character varying(20),
    name character varying(200),
    description character varying(200)
  );

  CREATE TABLE dbo.portal_descriptions (
    description_id bigint NOT NULL,
    ref_id character varying(200),
    name character varying(200),
    description character varying(200)
  );

  CREATE TABLE dbo.portal_navigation_nodes (
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

  CREATE TABLE dbo.portal_navigations (
    navigation_id bigint NOT NULL,
    site_id bigint NOT NULL,
    priority integer,
    node_id bigint
  );

  CREATE TABLE dbo.portal_pages (
    id bigint NOT NULL,
    site_id bigint NOT NULL,
    show_max_window bit,
    display_name character varying(200),
    name character varying(200),
    description varchar(max),
    factory_id character varying(200),
    page_body varchar(max)
  );

  CREATE TABLE dbo.portal_permissions (
    permission_id bigint NOT NULL,
    ref_type character varying(200) NOT NULL,
    ref_id bigint NOT NULL,
    permission character varying(200),
    type integer
  );

  CREATE TABLE dbo.portal_sites (
    id bigint NOT NULL,
    type integer,
    name character varying(200),
    locale character varying(20),
    skin character varying(200),
    label character varying(200),
    description varchar(max),
    properties varchar(max),
    site_body varchar(max)
  );

  CREATE TABLE dbo.portal_tokens (
    id bigint NOT NULL,
    token_id character varying(200) NOT NULL,
    token_hash character varying(200),
    username character varying(200),
    password character varying(200),
    expiration_time bigint
  );

  CREATE TABLE dbo.portal_windows (
    id bigint NOT NULL,
    title character varying(200),
    icon character varying(200),
    description varchar(max),
    show_info_bar bit,
    show_app_state bit,
    show_app_mode bit,
    theme character varying(200),
    width character varying(20),
    height character varying(20),
    properties varchar(max),
    app_type integer,
    content_id character varying(200),
    customization VARBINARY(100)
  );

  CREATE TABLE dbo.qrtz_blob_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    blob_data VARBINARY(100)
  );

  CREATE TABLE dbo.qrtz_calendars (
    sched_name character varying(120) NOT NULL,
    calendar_name character varying(200) NOT NULL,
    calendar VARBINARY(100) NOT NULL
  );

  CREATE TABLE dbo.qrtz_cron_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    cron_expression character varying(120) NOT NULL,
    time_zone_id character varying(80)
  );

  CREATE TABLE dbo.qrtz_fired_triggers (
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
    is_nonconcurrent bit,
    requests_recovery bit
  );

  CREATE TABLE dbo.qrtz_job_details (
    sched_name character varying(120) NOT NULL,
    job_name character varying(200) NOT NULL,
    job_group character varying(200) NOT NULL,
    description character varying(250),
    job_class_name character varying(250) NOT NULL,
    is_durable bit NOT NULL,
    is_nonconcurrent bit NOT NULL,
    is_update_data bit NOT NULL,
    requests_recovery bit NOT NULL,
    job_data VARBINARY(100)
  );

  CREATE TABLE dbo.qrtz_locks (
    sched_name character varying(120) NOT NULL,
    lock_name character varying(40) NOT NULL
  );

  CREATE TABLE dbo.qrtz_paused_trigger_grps (
    sched_name character varying(120) NOT NULL,
    trigger_group character varying(200) NOT NULL
  );

  CREATE TABLE dbo.qrtz_scheduler_state (
    sched_name character varying(120) NOT NULL,
    instance_name character varying(200) NOT NULL,
    last_checkin_time bigint NOT NULL,
    checkin_interval bigint NOT NULL
  );

  CREATE TABLE dbo.qrtz_simple_triggers (
    sched_name character varying(120) NOT NULL,
    trigger_name character varying(200) NOT NULL,
    trigger_group character varying(200) NOT NULL,
    repeat_count bigint NOT NULL,
    repeat_interval bigint NOT NULL,
    times_triggered bigint NOT NULL
  );

  CREATE TABLE dbo.qrtz_simprop_triggers (
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
    bool_prop_1 bit,
    bool_prop_2 bit
  );

  CREATE TABLE dbo.qrtz_triggers (
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
    job_data VARBINARY(100)
  );

  CREATE SEQUENCE dbo.seq_addons_kudos_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_addons_perkstore_product_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_addons_perkstore_product_order_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_container_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_es_indexing_queue_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_files_binary_blob_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_files_files_file_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_files_ns_namespace_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_files_orphan_files_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gamification_badge_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gamification_domain_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gamification_rule_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gamification_score_history_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gatein_token_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gtn_application_cat_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gtn_application_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gtn_navigation_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_gtn_navigation_node_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_idm_queue_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_msg_devices_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_email_digest START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_email_notif START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_email_params START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_email_queue START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_web_notifs START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_web_params START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_ntf_web_users START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_page_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_portal_descriptions_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_portal_permissions_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_site_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE SEQUENCE dbo.seq_soc_activities_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_connections_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_experience_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_identity_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_mentions_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_space_member_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_spaces_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_soc_stream_items_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_stg_context_common_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_stg_scope_common_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_stg_settings_common_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_task_change_log_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_task_comments_comment_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_task_labels_label_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_task_projects_project_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_task_status_status_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_task_tasks_task_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_gam_team_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_gam_team_member_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_key START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_label START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_reward_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_reward_period_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_reward_plugin_id START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_state START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_wallet_transaction START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE SEQUENCE dbo.seq_window_id_generator START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;


  CREATE TABLE dbo.soc_activities (
    activity_id bigint NOT NULL,
    app_id character varying(200),
    body varchar(max),
    external_id character varying(200),
    provider_id character varying(200),
    hidden bit NOT NULL,
    updated_date bigint NOT NULL,
    locked bit NOT NULL,
    owner_id character varying(200),
    permalink character varying(500),
    posted bigint NOT NULL,
    poster_id character varying(200) NOT NULL,
    title varchar(max) NOT NULL,
    title_id character varying(1024),
    type character varying(255),
    is_comment bit NOT NULL,
    parent_id bigint
  );


  CREATE TABLE dbo.soc_activity_likers (
    activity_id bigint NOT NULL,
    liker_id character varying(200) NOT NULL,
    created_date datetime2 NOT NULL
  );


  CREATE TABLE dbo.soc_activity_template_params (
    activity_id bigint NOT NULL,
    template_param_value varchar(max),
    template_param_key character varying(255) NOT NULL
  );


  CREATE TABLE dbo.soc_apps (
    space_id bigint NOT NULL,
    app_id character varying(200) NOT NULL,
    app_name character varying(550) NOT NULL,
    removable bit NOT NULL,
    status smallint NOT NULL
  );


  CREATE TABLE dbo.soc_connections (
    connection_id bigint NOT NULL,
    sender_id bigint NOT NULL,
    receiver_id bigint NOT NULL,
    status integer NOT NULL,
    updated_date datetime2 DEFAULT getdate() NOT NULL
  );


  CREATE TABLE dbo.soc_identities (
    identity_id bigint NOT NULL,
    provider_id character varying(200) NOT NULL,
    remote_id character varying(200) NOT NULL,
    enabled bit DEFAULT 1 NOT NULL,
    deleted bit DEFAULT 0 NOT NULL,
    avatar_file_id bigint,
    created_date datetime2 DEFAULT getdate() NOT NULL,
    banner_file_id bigint
  );


  CREATE TABLE dbo.soc_identity_experiences (
    identity_id bigint NOT NULL,
    company character varying(250),
    position character varying(500),
    start_date character(10),
    end_date character(10),
    skills character varying(2000),
    description varchar(max),
    experience_id bigint NOT NULL
  );


  CREATE TABLE dbo.soc_identity_properties (
    identity_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    value character varying(2000)
  );


  CREATE TABLE dbo.soc_mentions (
    mention_id bigint NOT NULL,
    activity_id bigint NOT NULL,
    mentioner_id character varying(200) NOT NULL
  );


  CREATE TABLE dbo.soc_spaces (
    space_id bigint NOT NULL,
    pretty_name character varying(200) NOT NULL,
    display_name character varying(200) NOT NULL,
    registration smallint NOT NULL,
    description character varying(2000),
    avatar_last_updated datetime2,
    visibility smallint NOT NULL,
    priority smallint,
    group_id character varying(250) NOT NULL,
    url character varying(500),
    created_date datetime2 DEFAULT getdate() NOT NULL,
    template character varying(200),
    banner_last_updated datetime2
  );


  CREATE TABLE dbo.soc_spaces_members (
    space_member_id bigint NOT NULL,
    space_id bigint NOT NULL,
    user_id character varying(200) NOT NULL,
    status integer NOT NULL,
    last_access datetime2,
    visited bit
  );


  CREATE TABLE dbo.soc_stream_items (
    stream_item_id bigint NOT NULL,
    owner_id bigint NOT NULL,
    stream_type integer NOT NULL,
    activity_id bigint NOT NULL,
    updated_date bigint NOT NULL
  );


  CREATE TABLE dbo.stg_contexts (
    context_id bigint NOT NULL,
    type character varying(200) NOT NULL,
    name character varying(200) NOT NULL
  );


  CREATE TABLE dbo.stg_scopes (
    scope_id bigint NOT NULL,
    type character varying(200) NOT NULL,
    name character varying(200)
  );


  CREATE TABLE dbo.stg_settings (
    setting_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    value varchar(max),
    context_id bigint NOT NULL,
    scope_id bigint NOT NULL
  );


  CREATE TABLE dbo.task_change_logs (
    change_log_id bigint NOT NULL,
    task_id bigint NOT NULL,
    author character varying(100) NOT NULL,
    action_name character varying(2000) NOT NULL,
    target character varying(100),
    created_time bigint NOT NULL
  );


  CREATE TABLE dbo.task_comment_mentioned_users (
    comment_id bigint NOT NULL,
    mentioned_users character varying(50) NOT NULL
  );


  CREATE TABLE dbo.task_comments (
    comment_id bigint NOT NULL,
    author character varying(100) NOT NULL,
    cmt character varying(2000) NOT NULL,
    created_time datetime2,
    task_id bigint NOT NULL,
    parent_comment_id bigint
  );


  CREATE TABLE dbo.task_hidden_projects (
    username character varying(50) NOT NULL,
    project_id bigint NOT NULL
  );


  CREATE TABLE dbo.task_label_task (
    label_id bigint NOT NULL,
    task_id bigint NOT NULL
  );


  
  CREATE TABLE dbo.task_labels (
    label_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    color character varying(100),
    hidden bit DEFAULT 0,
    parent_label_id bigint
  );


  CREATE TABLE dbo.task_project_managers (
    project_id bigint NOT NULL,
    manager character varying(250) NOT NULL
  );


  CREATE TABLE dbo.task_project_participators (
    project_id bigint NOT NULL,
    participator character varying(250) NOT NULL
  );


  CREATE TABLE dbo.task_projects (
    project_id bigint NOT NULL,
    name character varying(200) NOT NULL,
    description character varying(2000),
    color character varying(100),
    calendar_integrated bit DEFAULT 0 NOT NULL,
    due_date datetime2,
    parent_project_id bigint
  );


  
  CREATE TABLE dbo.task_status (
    status_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    rank integer NOT NULL,
    project_id bigint NOT NULL
  );


  CREATE TABLE dbo.task_task_coworkers (
    task_id bigint NOT NULL,
    coworker character varying(50) NOT NULL
  );


  CREATE TABLE dbo.task_tasks (
    task_id bigint NOT NULL,
    title character varying(250) NOT NULL,
    description character varying(2000),
    priority integer DEFAULT 0,
    context character varying(255),
    assignee character varying(50),
    status_id bigint,
    created_by character varying(50),
    created_time datetime2,
    end_date datetime2,
    start_date datetime2,
    due_date datetime2,
    completed bit DEFAULT 0 NOT NULL,
    calendar_integrated bit DEFAULT 1 NOT NULL,
    rank integer DEFAULT 0,
    activity_id character varying(50) DEFAULT cast(''  as  character varying)
  );


  CREATE TABLE dbo.task_user_settings (
    username character varying(50) NOT NULL,
    show_hidden_project bit DEFAULT 0,
    show_hidden_label bit DEFAULT 0
  );


  CREATE TABLE dbo.wbc_calls (
    id character varying(255) NOT NULL,
    provider_type character varying(32) NOT NULL,
    owner_id character varying(255) NOT NULL,
    owner_type character varying(32) NOT NULL,
    state character varying(32),
    title character varying(255),
    settings character varying(2000),
    last_date datetime2 DEFAULT getdate() NOT NULL,
    is_group bit NOT NULL,
    is_user bit NOT NULL
  );


  CREATE TABLE dbo.wbc_participants (
    id character varying(255) NOT NULL,
    call_id character varying(255) NOT NULL,
    type character varying(32) NOT NULL,
    state character varying(32),
    client_id character varying(255)
  );

ALTER TABLE  dbo.files_binary
ADD
  CONSTRAINT [files_binary_name_key] UNIQUE (name);

ALTER TABLE  dbo.gamification_rule
ADD
  CONSTRAINT gamification_rule_title_key UNIQUE (title);

ALTER TABLE  dbo.gamification_user_reputation
ADD
  CONSTRAINT gamification_user_reputation_username_key UNIQUE (username);

ALTER TABLE  dbo.jbid_io
ADD
  CONSTRAINT id UNIQUE (identity_type, name, realm);

ALTER TABLE  dbo.jbid_attr_bin_value
ADD
  CONSTRAINT jbid_attr_bin_value_pkey PRIMARY KEY (bin_value_id);

ALTER TABLE  dbo.jbid_creden_bin_value
ADD
  CONSTRAINT jbid_creden_bin_value_pkey PRIMARY KEY (bin_value_id);

ALTER TABLE  dbo.jbid_io_attr
ADD
  CONSTRAINT jbid_io_attr_pkey PRIMARY KEY (attribute_id);

ALTER TABLE  dbo.jbid_io_creden
ADD
  CONSTRAINT jbid_io_creden_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_io_creden_props
ADD
  CONSTRAINT jbid_io_creden_props_pkey PRIMARY KEY (prop_id, prop_name);

ALTER TABLE  dbo.jbid_io_creden_type
ADD
  CONSTRAINT jbid_io_creden_type_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_io
ADD
  CONSTRAINT jbid_io_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_io_props
ADD
  CONSTRAINT jbid_io_props_pkey PRIMARY KEY (prop_id, prop_name);

ALTER TABLE  dbo.jbid_io_rel_name
ADD
  CONSTRAINT jbid_io_rel_name_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_io_rel_name_props
ADD
  CONSTRAINT jbid_io_rel_name_props_pkey PRIMARY KEY (prop_id, prop_name);

ALTER TABLE  dbo.jbid_io_rel
ADD
  CONSTRAINT jbid_io_rel_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_io_rel_props
ADD
  CONSTRAINT jbid_io_rel_props_pkey PRIMARY KEY (prop_id, prop_name);

ALTER TABLE  dbo.jbid_io_rel_type
ADD
  CONSTRAINT jbid_io_rel_type_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_io_type
ADD
  CONSTRAINT jbid_io_type_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jbid_real_props
ADD
  CONSTRAINT jbid_real_props_pkey PRIMARY KEY (prop_id, prop_name);

ALTER TABLE  dbo.jbid_realm
ADD
  CONSTRAINT jbid_realm_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.jcr_sitem
ADD
  CONSTRAINT jcr_pk_sitem PRIMARY KEY (id);

ALTER TABLE  dbo.jcr_sref
ADD
  CONSTRAINT jcr_pk_sref PRIMARY KEY (node_id, property_id, order_num);

ALTER TABLE  dbo.jcr_svalue
ADD
  CONSTRAINT jcr_pk_svalue PRIMARY KEY (id);

ALTER TABLE  dbo.addons_kudos
ADD
  CONSTRAINT pk_addons_kudos PRIMARY KEY (kudos_id);

ALTER TABLE  dbo.databasechangeloglock
ADD
  CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);

ALTER TABLE  dbo.email_queue
ADD
  CONSTRAINT pk_email_id PRIMARY KEY (email_id);

ALTER TABLE  dbo.es_indexing_queue
ADD
  CONSTRAINT pk_es_indexing_queue PRIMARY KEY (operation_id);

ALTER TABLE  dbo.files_binary
ADD
  CONSTRAINT pk_files_blob_id PRIMARY KEY (blob_id);

ALTER TABLE  dbo.files_files
ADD
  CONSTRAINT pk_files_files_id PRIMARY KEY (file_id);

ALTER TABLE  dbo.files_namespaces
ADD
  CONSTRAINT pk_files_namespaces_id PRIMARY KEY (namespace_id);

ALTER TABLE  dbo.files_orphan_files
ADD
  CONSTRAINT pk_files_orphan_id PRIMARY KEY (id);

ALTER TABLE  dbo.gamification_actions_history
ADD
  CONSTRAINT pk_gamification_action_history PRIMARY KEY (id);

ALTER TABLE  dbo.gamification_badges
ADD
  CONSTRAINT pk_gamification_badges PRIMARY KEY (badge_id);

ALTER TABLE  dbo.gamification_context_items
ADD
  CONSTRAINT pk_gamification_context_items PRIMARY KEY (id);

ALTER TABLE  dbo.gamification_domain
ADD
  CONSTRAINT pk_gamification_domain PRIMARY KEY (id);

ALTER TABLE  dbo.gamification_rule
ADD
  CONSTRAINT pk_gamification_rule PRIMARY KEY (id);

ALTER TABLE  dbo.gamification_user_reputation
ADD
  CONSTRAINT pk_gamification_user_reputation PRIMARY KEY (id);

ALTER TABLE  dbo.idm_queue
ADD
  CONSTRAINT pk_idm_queue_id PRIMARY KEY (idm_queue_id);

ALTER TABLE  dbo.msg_devices
ADD
  CONSTRAINT pk_msg_devices PRIMARY KEY (id);

ALTER TABLE  dbo.ntf_email_notifs_digest
ADD
  CONSTRAINT pk_ntf_email_notif_digest_id PRIMARY KEY (email_notif_digest_id);

ALTER TABLE  dbo.ntf_email_notifs
ADD
  CONSTRAINT pk_ntf_email_notif_id PRIMARY KEY (email_notif_id);

ALTER TABLE  dbo.ntf_email_notifs_params
ADD
  CONSTRAINT pk_ntf_email_notif_params_id PRIMARY KEY (email_notif_params_id);

ALTER TABLE  dbo.ntf_web_notifs
ADD
  CONSTRAINT pk_ntf_web_notif_id PRIMARY KEY (web_notif_id);

ALTER TABLE  dbo.ntf_web_notifs_params
ADD
  CONSTRAINT pk_ntf_web_notif_params_id PRIMARY KEY (web_notif_params_id);

ALTER TABLE  dbo.ntf_web_notifs_users
ADD
  CONSTRAINT pk_ntf_web_notifs_users_id PRIMARY KEY (web_notifs_users_id);

ALTER TABLE  dbo.addons_perkstore_product_order
ADD
  CONSTRAINT pk_perkstore_order PRIMARY KEY (order_id);

ALTER TABLE  dbo.addons_perkstore_product
ADD
  CONSTRAINT pk_perkstore_product PRIMARY KEY (product_id);

ALTER TABLE  dbo.addons_perkstore_image
ADD
  CONSTRAINT pk_perkstore_product_image PRIMARY KEY (image_file_id, product_id);

ALTER TABLE  dbo.addons_perkstore_product_marchand
ADD
  CONSTRAINT pk_perkstore_product_marchand PRIMARY KEY (marchand_identity_id, product_id);

ALTER TABLE  dbo.addons_perkstore_product_permission
ADD
  CONSTRAINT pk_perkstore_product_permission PRIMARY KEY (permission_identity_id, product_id);

ALTER TABLE  dbo.portal_app_categories
ADD
  CONSTRAINT pk_portal_app_category PRIMARY KEY (id);

ALTER TABLE  dbo.portal_applications
ADD
  CONSTRAINT pk_portal_application PRIMARY KEY (id);

ALTER TABLE  dbo.portal_containers
ADD
  CONSTRAINT pk_portal_container PRIMARY KEY (id);

ALTER TABLE  dbo.portal_descriptions
ADD
  CONSTRAINT pk_portal_descriptions PRIMARY KEY (description_id);

ALTER TABLE  dbo.portal_navigations
ADD
  CONSTRAINT pk_portal_navigation PRIMARY KEY (navigation_id);

ALTER TABLE  dbo.portal_navigation_nodes
ADD
  CONSTRAINT pk_portal_navigation_node PRIMARY KEY (node_id);

ALTER TABLE  dbo.portal_pages
ADD
  CONSTRAINT pk_portal_page PRIMARY KEY (id);

ALTER TABLE  dbo.portal_permissions
ADD
  CONSTRAINT pk_portal_permissions PRIMARY KEY (permission_id);

ALTER TABLE  dbo.portal_sites
ADD
  CONSTRAINT pk_portal_site PRIMARY KEY (id);

ALTER TABLE  dbo.portal_tokens
ADD
  CONSTRAINT pk_portal_tokens PRIMARY KEY (id);

ALTER TABLE  dbo.portal_windows
ADD
  CONSTRAINT pk_portal_window PRIMARY KEY (id);

ALTER TABLE  dbo.soc_activity_template_params
ADD
  CONSTRAINT pk_soc_act_template_params_01 PRIMARY KEY (activity_id, template_param_key);

ALTER TABLE  dbo.soc_activities
ADD
  CONSTRAINT pk_soc_activities PRIMARY KEY (activity_id);

ALTER TABLE  dbo.soc_activity_likers
ADD
  CONSTRAINT pk_soc_activity_liker_01 PRIMARY KEY (activity_id, liker_id);

ALTER TABLE  dbo.soc_connections
ADD
  CONSTRAINT pk_soc_connections PRIMARY KEY (connection_id);

ALTER TABLE  dbo.soc_identities
ADD
  CONSTRAINT pk_soc_identities PRIMARY KEY (identity_id);

ALTER TABLE  dbo.soc_identity_properties
ADD
  CONSTRAINT pk_soc_identity_properties_01 PRIMARY KEY (identity_id, name);

ALTER TABLE  dbo.soc_mentions
ADD
  CONSTRAINT pk_soc_mentions PRIMARY KEY (mention_id);

ALTER TABLE  dbo.soc_spaces
ADD
  CONSTRAINT pk_soc_spaces PRIMARY KEY (space_id);

ALTER TABLE  dbo.soc_spaces_members
ADD
  CONSTRAINT pk_soc_spaces_members PRIMARY KEY (space_member_id);

ALTER TABLE  dbo.soc_stream_items
ADD
  CONSTRAINT pk_soc_stream_items PRIMARY KEY (stream_item_id);

ALTER TABLE  dbo.stg_contexts
ADD
  CONSTRAINT pk_stg_context_id PRIMARY KEY (context_id);

ALTER TABLE  dbo.stg_scopes
ADD
  CONSTRAINT pk_stg_scope_id PRIMARY KEY (scope_id);

ALTER TABLE  dbo.stg_settings
ADD
  CONSTRAINT pk_stg_settings_id PRIMARY KEY (setting_id);

ALTER TABLE  dbo.task_change_logs
ADD
  CONSTRAINT pk_task_change_log PRIMARY KEY (change_log_id);

ALTER TABLE  dbo.task_comments
ADD
  CONSTRAINT pk_task_comments PRIMARY KEY (comment_id);

ALTER TABLE  dbo.task_labels
ADD
  CONSTRAINT pk_task_labels PRIMARY KEY (label_id);

ALTER TABLE  dbo.task_projects
ADD
  CONSTRAINT pk_task_projects PRIMARY KEY (project_id);

ALTER TABLE  dbo.task_status
ADD
  CONSTRAINT pk_task_status PRIMARY KEY (status_id);

ALTER TABLE  dbo.task_tasks
ADD
  CONSTRAINT pk_task_tasks PRIMARY KEY (task_id);

ALTER TABLE  dbo.task_user_settings
ADD
  CONSTRAINT pk_task_user_settings PRIMARY KEY (username);

ALTER TABLE  dbo.addons_wallet_blockchain_state
ADD
  CONSTRAINT pk_wallet_blockchain_state_id PRIMARY KEY (blockchain_state_id);

ALTER TABLE  dbo.addons_wallet_gam_team
ADD
  CONSTRAINT pk_wallet_gam_team PRIMARY KEY (team_id);

ALTER TABLE  dbo.addons_wallet_gam_team_member
ADD
  CONSTRAINT pk_wallet_gam_team_mem PRIMARY KEY (member_id);

ALTER TABLE  dbo.addons_wallet_account
ADD
  CONSTRAINT pk_wallet_identity_id PRIMARY KEY (identity_id);

ALTER TABLE  dbo.addons_wallet_key
ADD
  CONSTRAINT pk_wallet_key_id PRIMARY KEY (key_id);

ALTER TABLE  dbo.addons_wallet_label
ADD
  CONSTRAINT pk_wallet_label_id PRIMARY KEY (label_id);

ALTER TABLE  dbo.addons_wallet_reward
ADD
  CONSTRAINT pk_wallet_reward_id PRIMARY KEY (reward_id);

ALTER TABLE  dbo.addons_wallet_reward_period
ADD
  CONSTRAINT pk_wallet_reward_period_id PRIMARY KEY (reward_period_id);

ALTER TABLE  dbo.addons_wallet_reward_plugin
ADD
  CONSTRAINT pk_wallet_reward_plugin_id PRIMARY KEY (reward_plugin_id);

ALTER TABLE  dbo.addons_wallet_transaction
ADD
  CONSTRAINT pk_wallet_transaction_id PRIMARY KEY (transaction_id);

ALTER TABLE  dbo.wbc_calls
ADD
  CONSTRAINT pk_wbc_callid PRIMARY KEY (id);

ALTER TABLE  dbo.wbc_participants
ADD
  CONSTRAINT pk_wbc_callpart PRIMARY KEY (id, call_id);

ALTER TABLE  dbo.qrtz_blob_triggers
ADD
  CONSTRAINT qrtz_blob_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_calendars
ADD
  CONSTRAINT qrtz_calendars_pkey PRIMARY KEY (sched_name, calendar_name);

ALTER TABLE  dbo.qrtz_cron_triggers
ADD
  CONSTRAINT qrtz_cron_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_fired_triggers
ADD
  CONSTRAINT qrtz_fired_triggers_pkey PRIMARY KEY (sched_name, entry_id);

ALTER TABLE  dbo.qrtz_job_details
ADD
  CONSTRAINT qrtz_job_details_pkey PRIMARY KEY (sched_name, job_name, job_group);

ALTER TABLE  dbo.qrtz_locks
ADD
  CONSTRAINT qrtz_locks_pkey PRIMARY KEY (sched_name, lock_name);

ALTER TABLE  dbo.qrtz_paused_trigger_grps
ADD
  CONSTRAINT qrtz_paused_trigger_grps_pkey PRIMARY KEY (sched_name, trigger_group);

ALTER TABLE  dbo.qrtz_scheduler_state
ADD
  CONSTRAINT qrtz_scheduler_state_pkey PRIMARY KEY (sched_name, instance_name);

ALTER TABLE  dbo.qrtz_simple_triggers
ADD
  CONSTRAINT qrtz_simple_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_simprop_triggers
ADD
  CONSTRAINT qrtz_simprop_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_triggers
ADD
  CONSTRAINT qrtz_triggers_pkey PRIMARY KEY (sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.soc_identity_experiences
ADD
  CONSTRAINT soc_identity_experiences_pkey PRIMARY KEY (experience_id);

ALTER TABLE  dbo.jbid_io_type
ADD
  CONSTRAINT uk_6qhvm42s96tyb1ul648ogjamq UNIQUE (name);

ALTER TABLE  dbo.soc_mentions
ADD
  CONSTRAINT uk_activity_mentioner_01 UNIQUE (activity_id, mentioner_id);

ALTER TABLE  dbo.addons_kudos
ADD
  CONSTRAINT uk_addons_kudos_01 UNIQUE (created_date);

ALTER TABLE  dbo.portal_tokens
ADD
  CONSTRAINT uk_gatein_token_id UNIQUE (token_id);

ALTER TABLE  dbo.jbid_io_creden_type
ADD
  CONSTRAINT uk_iqgcb1lwma9oj85v1dvu0s7oo UNIQUE (name);

ALTER TABLE  dbo.msg_devices
ADD
  CONSTRAINT uk_msg_devices_token_01 UNIQUE (token);

ALTER TABLE  dbo.portal_applications
ADD
  CONSTRAINT uk_portal_app_content_category UNIQUE (category_id, content_id);

ALTER TABLE  dbo.portal_applications
ADD
  CONSTRAINT uk_portal_app_name_category UNIQUE (category_id, app_name);

ALTER TABLE  dbo.portal_permissions
ADD
  CONSTRAINT uk_portal_permissions UNIQUE (ref_type, ref_id, permission, type);

ALTER TABLE  dbo.portal_sites
ADD
  CONSTRAINT uk_portal_site_name_type UNIQUE (type, name);

ALTER TABLE  dbo.portal_pages
ADD
  CONSTRAINT uk_portal_site_page_name UNIQUE (site_id, name);

ALTER TABLE  dbo.soc_identities
ADD
  CONSTRAINT uk_provider_id_remote_id_01 UNIQUE (provider_id, remote_id);

ALTER TABLE  dbo.jbid_io_rel_type
ADD
  CONSTRAINT uk_q0viotf5dq1gpwliq817lmfdb UNIQUE (name);

ALTER TABLE  dbo.soc_connections
ADD
  CONSTRAINT uk_sender_id_receiver_id_01 UNIQUE (sender_id, receiver_id);

ALTER TABLE  dbo.soc_spaces
ADD
  CONSTRAINT uk_soc_space_pretty_name UNIQUE (pretty_name);

ALTER TABLE  dbo.soc_apps
ADD
  CONSTRAINT uk_space_app_01 UNIQUE (space_id, app_id);

ALTER TABLE  dbo.soc_spaces_members
ADD
  CONSTRAINT uk_space_user_status_01 UNIQUE (space_id, user_id, status);

ALTER TABLE  dbo.stg_contexts
ADD
  CONSTRAINT uk_stg_context_01 UNIQUE (type, name);

ALTER TABLE  dbo.stg_scopes
ADD
  CONSTRAINT uk_stg_scope_01 UNIQUE (type, name);

ALTER TABLE  dbo.stg_settings
ADD
  CONSTRAINT uk_stg_setting_01 UNIQUE (name, scope_id, context_id);

ALTER TABLE  dbo.addons_wallet_gam_team
ADD
  CONSTRAINT uk_wallet_gam_team_name UNIQUE (team_name);

ALTER TABLE  dbo.addons_wallet_transaction
ADD
  CONSTRAINT uk_wallet_transaction_hash UNIQUE (hash);

ALTER TABLE  dbo.wbc_calls
ADD
  CONSTRAINT uk_wbc_group_call UNIQUE (owner_id, is_group);

ALTER TABLE  dbo.task_label_task
ADD
  CONSTRAINT uq_task_label_task UNIQUE (label_id, task_id);

ALTER TABLE  dbo.jbid_io
ADD
  CONSTRAINT fk_1524d961cmjrfv470i376n1df FOREIGN KEY (realm) REFERENCES dbo.jbid_realm(id);

ALTER TABLE  dbo.jbid_io_creden
ADD
  CONSTRAINT fk_4ptntoev8jb05281319wltg07 FOREIGN KEY (credential_type) REFERENCES dbo.jbid_io_creden_type(id);

ALTER TABLE  dbo.jbid_io
ADD
  CONSTRAINT fk_5j9pr8t7b237yfhe3q4u820y6 FOREIGN KEY (identity_type) REFERENCES dbo.jbid_io_type(id);

ALTER TABLE  dbo.jbid_io_rel
ADD
  CONSTRAINT fk_60mbu620sn7pqmj1wdqfux7de FOREIGN KEY (to_identity) REFERENCES dbo.jbid_io(id);

ALTER TABLE  dbo.jbid_io_rel_name
ADD
  CONSTRAINT fk_7fkcek6fgih072s18cper1g9t FOREIGN KEY (realm) REFERENCES dbo.jbid_realm(id);

ALTER TABLE  dbo.jbid_io_rel_name_props
ADD
  CONSTRAINT fk_8kjju28ee6sd26amdxuq82oee FOREIGN KEY (prop_id) REFERENCES dbo.jbid_io_rel_name(id);

ALTER TABLE  dbo.jbid_io_rel_props
ADD
  CONSTRAINT fk_8xd4s1so6bgygp2eced42bdd5 FOREIGN KEY (prop_id) REFERENCES dbo.jbid_io_rel(id);

ALTER TABLE  dbo.jbid_io_attr_text_values
ADD
  CONSTRAINT fk_9t69d6ilqtu0tr4j8ab2bw9ev FOREIGN KEY (text_attr_value_id) REFERENCES dbo.jbid_io_attr(attribute_id);

ALTER TABLE  dbo.soc_activities
ADD
  CONSTRAINT fk_activity_parent_id FOREIGN KEY (parent_id) REFERENCES dbo.soc_activities(activity_id) ON DELETE CASCADE;

ALTER TABLE  dbo.jbid_io_creden
ADD
  CONSTRAINT fk_avbrewjv8179ugkt6ttuk85e FOREIGN KEY (bin_value_id) REFERENCES dbo.jbid_creden_bin_value(bin_value_id);

ALTER TABLE  dbo.task_comments
ADD
  CONSTRAINT fk_comment_task_01 FOREIGN KEY (task_id) REFERENCES dbo.task_tasks(task_id);

ALTER TABLE  dbo.jbid_io_rel
ADD
  CONSTRAINT fk_ddl776m12nmg0j0fieodyykyy FOREIGN KEY (name) REFERENCES dbo.jbid_io_rel_name(id);

ALTER TABLE  dbo.files_files
ADD
  CONSTRAINT fk_files_files_namespace_id FOREIGN KEY (namespace_id) REFERENCES dbo.files_namespaces(namespace_id);

ALTER TABLE  dbo.files_orphan_files
ADD
  CONSTRAINT fk_files_orphan_file_id FOREIGN KEY (file_id) REFERENCES dbo.files_files(file_id);

ALTER TABLE  dbo.gamification_actions_history
ADD
  CONSTRAINT fk_gamification_actions_history_domain FOREIGN KEY (domain_id) REFERENCES dbo.gamification_domain(id);

ALTER TABLE  dbo.gamification_badges
ADD
  CONSTRAINT fk_gamification_badges_domain FOREIGN KEY (domain_id) REFERENCES dbo.gamification_domain(id);

ALTER TABLE  dbo.gamification_context_items
ADD
  CONSTRAINT fk_gamification_context_item_context_01 FOREIGN KEY (gamification_user_id) REFERENCES dbo.gamification_user_reputation(id);

ALTER TABLE  dbo.gamification_rule
ADD
  CONSTRAINT fk_gamification_rules_domain FOREIGN KEY (domain_id) REFERENCES dbo.gamification_domain(id);

ALTER TABLE  dbo.jbid_real_props
ADD
  CONSTRAINT fk_hv1at4rpxkgkgcrd4pi3cq706 FOREIGN KEY (prop_id) REFERENCES dbo.jbid_realm(id);

ALTER TABLE  dbo.jbid_io_props
ADD
  CONSTRAINT fk_idt21674gp6njdxo68qo5590u FOREIGN KEY (prop_id) REFERENCES dbo.jbid_io(id);

ALTER TABLE  dbo.jbid_io_attr
ADD
  CONSTRAINT fk_jk4i7udwn5obtux8wr62sw6wg FOREIGN KEY (identity_object_id) REFERENCES dbo.jbid_io(id);

ALTER TABLE  dbo.jbid_io_rel
ADD
  CONSTRAINT fk_jn0uhpfjr7nh4lr4qbe9wk3n3 FOREIGN KEY (rel_type) REFERENCES dbo.jbid_io_rel_type(id);

ALTER TABLE  dbo.task_change_logs
ADD
  CONSTRAINT fk_log_task FOREIGN KEY (task_id) REFERENCES dbo.task_tasks(task_id);

ALTER TABLE  dbo.ntf_email_notifs_digest
ADD
  CONSTRAINT fk_ntf_email_notifs_digest_01 FOREIGN KEY (email_notif_id) REFERENCES dbo.ntf_email_notifs(email_notif_id);

ALTER TABLE  dbo.ntf_email_notifs_params
ADD
  CONSTRAINT fk_ntf_email_notifs_params_01 FOREIGN KEY (email_notif_id) REFERENCES dbo.ntf_email_notifs(email_notif_id);

ALTER TABLE  dbo.ntf_web_notifs_params
ADD
  CONSTRAINT fk_ntf_web_notifs_params_01 FOREIGN KEY (web_notif_id) REFERENCES dbo.ntf_web_notifs(web_notif_id);

ALTER TABLE  dbo.ntf_web_notifs_users
ADD
  CONSTRAINT fk_ntf_web_notifs_users_01 FOREIGN KEY (web_notif_id) REFERENCES dbo.ntf_web_notifs(web_notif_id);

ALTER TABLE  dbo.jbid_io_creden_props
ADD
  CONSTRAINT fk_o8vcn5cjmisu2fpygubl4p1l9 FOREIGN KEY (prop_id) REFERENCES dbo.jbid_io_creden(id);

ALTER TABLE  dbo.jbid_io_creden
ADD
  CONSTRAINT fk_otmncrr31bm1f9c7gyywe30u9 FOREIGN KEY (identity_object_id) REFERENCES dbo.jbid_io(id);

ALTER TABLE  dbo.jbid_io_attr
ADD
  CONSTRAINT fk_pbtnw2uh4v9g6ykci74woc0x8 FOREIGN KEY (bin_value_id) REFERENCES dbo.jbid_attr_bin_value(bin_value_id);

ALTER TABLE  dbo.addons_perkstore_product_order
ADD
  CONSTRAINT fk_perkstore_01 FOREIGN KEY (product_id) REFERENCES dbo.addons_perkstore_product(product_id);

ALTER TABLE  dbo.addons_perkstore_image
ADD
  CONSTRAINT fk_perkstore_product_image FOREIGN KEY (product_id) REFERENCES dbo.addons_perkstore_product(product_id);

ALTER TABLE  dbo.addons_perkstore_product_marchand
ADD
  CONSTRAINT fk_perkstore_product_marchand FOREIGN KEY (product_id) REFERENCES dbo.addons_perkstore_product(product_id);

ALTER TABLE  dbo.addons_perkstore_product_permission
ADD
  CONSTRAINT fk_perkstore_product_permission FOREIGN KEY (product_id) REFERENCES dbo.addons_perkstore_product(product_id);

ALTER TABLE  dbo.portal_applications
ADD
  CONSTRAINT fk_portal_app_category FOREIGN KEY (category_id) REFERENCES dbo.portal_app_categories(id) ON DELETE CASCADE;

ALTER TABLE  dbo.portal_description_localized
ADD
  CONSTRAINT fk_portal_description_localized_description_id FOREIGN KEY (description_id) REFERENCES dbo.portal_descriptions(description_id) ON DELETE CASCADE;

ALTER TABLE  dbo.portal_navigations
ADD
  CONSTRAINT fk_portal_nav_node FOREIGN KEY (node_id) REFERENCES dbo.portal_navigation_nodes(node_id) ON DELETE CASCADE;

ALTER TABLE  dbo.portal_navigations
ADD
  CONSTRAINT fk_portal_nav_site FOREIGN KEY (site_id) REFERENCES dbo.portal_sites(id) ON DELETE CASCADE;

ALTER TABLE  dbo.portal_navigation_nodes
ADD
  CONSTRAINT fk_portal_node_page FOREIGN KEY (page_id) REFERENCES dbo.portal_pages(id) ON DELETE
SET NULL;

ALTER TABLE  dbo.portal_navigation_nodes
ADD
  CONSTRAINT fk_portal_node_parent FOREIGN KEY (parent_id) REFERENCES dbo.portal_navigation_nodes(node_id) ON DELETE CASCADE;

ALTER TABLE  dbo.portal_pages
ADD
  CONSTRAINT fk_portal_page_site FOREIGN KEY (site_id) REFERENCES dbo.portal_sites(id) ON DELETE CASCADE;

ALTER TABLE  dbo.jbid_io_rel
ADD
  CONSTRAINT fk_r5hojsy1l0exg60afyvcjh6ff FOREIGN KEY (from_identity) REFERENCES dbo.jbid_io(id);

ALTER TABLE  dbo.soc_activity_likers
ADD
  CONSTRAINT fk_soc_act_likers_act_01 FOREIGN KEY (activity_id) REFERENCES dbo.soc_activities(activity_id) ON DELETE CASCADE;

ALTER TABLE  dbo.soc_activity_template_params
ADD
  CONSTRAINT fk_soc_act_temp_par_act_01 FOREIGN KEY (activity_id) REFERENCES dbo.soc_activities(activity_id) ON DELETE CASCADE;

ALTER TABLE  dbo.soc_apps
ADD
  CONSTRAINT fk_soc_app_space_01 FOREIGN KEY (space_id) REFERENCES dbo.soc_spaces(space_id);

ALTER TABLE  dbo.soc_connections
ADD
  CONSTRAINT fk_soc_connection_receiver FOREIGN KEY (receiver_id) REFERENCES dbo.soc_identities(identity_id);

ALTER TABLE  dbo.soc_connections
ADD
  CONSTRAINT fk_soc_connection_sender FOREIGN KEY (sender_id) REFERENCES dbo.soc_identities(identity_id);

ALTER TABLE  dbo.soc_identity_experiences
ADD
  CONSTRAINT fk_soc_identity_experiences FOREIGN KEY (identity_id) REFERENCES dbo.soc_identities(identity_id);

ALTER TABLE  dbo.soc_identity_properties
ADD
  CONSTRAINT fk_soc_identity_properties FOREIGN KEY (identity_id) REFERENCES dbo.soc_identities(identity_id);

ALTER TABLE  dbo.soc_spaces_members
ADD
  CONSTRAINT fk_soc_mem_space_01 FOREIGN KEY (space_id) REFERENCES dbo.soc_spaces(space_id);

ALTER TABLE  dbo.soc_mentions
ADD
  CONSTRAINT fk_soc_mentions_act_01 FOREIGN KEY (activity_id) REFERENCES dbo.soc_activities(activity_id) ON DELETE CASCADE;

ALTER TABLE  dbo.soc_stream_items
ADD
  CONSTRAINT fk_soc_stream_items_act_01 FOREIGN KEY (activity_id) REFERENCES dbo.soc_activities(activity_id) ON DELETE CASCADE;

ALTER TABLE  dbo.stg_settings
ADD
  CONSTRAINT fk_stg_settings_context_01 FOREIGN KEY (context_id) REFERENCES dbo.stg_contexts(context_id);

ALTER TABLE  dbo.stg_settings
ADD
  CONSTRAINT fk_stg_settings_scope_01 FOREIGN KEY (scope_id) REFERENCES dbo.stg_scopes(scope_id);

ALTER TABLE  dbo.task_comments
ADD
  CONSTRAINT fk_task_comment_parent_cmt_id FOREIGN KEY (parent_comment_id) REFERENCES dbo.task_comments(comment_id) ON DELETE CASCADE;

ALTER TABLE  dbo.task_hidden_projects
ADD
  CONSTRAINT fk_task_hid_prj_tk_prj_01 FOREIGN KEY (project_id) REFERENCES dbo.task_projects(project_id) ON DELETE CASCADE;

ALTER TABLE  dbo.task_labels
ADD
  CONSTRAINT fk_task_lbl_task_lbl_01 FOREIGN KEY (parent_label_id) REFERENCES dbo.task_labels(label_id);

ALTER TABLE  dbo.task_project_managers
ADD
  CONSTRAINT fk_task_prj_mgr_task_prj_01 FOREIGN KEY (project_id) REFERENCES dbo.task_projects(project_id);

ALTER TABLE  dbo.task_project_participators
ADD
  CONSTRAINT fk_task_prj_ptor_task_prj_01 FOREIGN KEY (project_id) REFERENCES dbo.task_projects(project_id);

ALTER TABLE  dbo.task_projects
ADD
  CONSTRAINT fk_task_prj_task_prj_01 FOREIGN KEY (parent_project_id) REFERENCES dbo.task_projects(project_id);

ALTER TABLE  dbo.task_status
ADD
  CONSTRAINT fk_task_status_task_prj_01 FOREIGN KEY (project_id) REFERENCES dbo.task_projects(project_id);

ALTER TABLE  dbo.task_tasks
ADD
  CONSTRAINT fk_task_tasks_task_status_01 FOREIGN KEY (status_id) REFERENCES dbo.task_status(status_id);

ALTER TABLE  dbo.task_comment_mentioned_users
ADD
  CONSTRAINT fk_tk_cm_ment_tk_cm_01 FOREIGN KEY (comment_id) REFERENCES dbo.task_comments(comment_id);

ALTER TABLE  dbo.task_hidden_projects
ADD
  CONSTRAINT fk_tk_hid_prj_tk_usr_set_01 FOREIGN KEY (username) REFERENCES dbo.task_user_settings(username) ON DELETE CASCADE;

ALTER TABLE  dbo.task_label_task
ADD
  CONSTRAINT fk_tk_lbl_tk_lbl_tk_lbl__01 FOREIGN KEY (label_id) REFERENCES dbo.task_labels(label_id);

ALTER TABLE  dbo.task_label_task
ADD
  CONSTRAINT fk_tk_lbl_tk_tk_tk_01 FOREIGN KEY (task_id) REFERENCES dbo.task_tasks(task_id);

ALTER TABLE  dbo.task_task_coworkers
ADD
  CONSTRAINT fk_tk_tk_cowkr_tk_tk_01 FOREIGN KEY (task_id) REFERENCES dbo.task_tasks(task_id);

ALTER TABLE  dbo.addons_wallet_key
ADD
  CONSTRAINT fk_wallet_account_01 FOREIGN KEY (wallet_id) REFERENCES dbo.addons_wallet_account(identity_id);

ALTER TABLE  dbo.addons_wallet_blockchain_state
ADD
  CONSTRAINT fk_wallet_account_02 FOREIGN KEY (wallet_id) REFERENCES dbo.addons_wallet_account(identity_id);

ALTER TABLE  dbo.addons_wallet_gam_team_member
ADD
  CONSTRAINT fk_wallet_gam_01 FOREIGN KEY (team_id) REFERENCES dbo.addons_wallet_gam_team(team_id);

ALTER TABLE  dbo.addons_wallet_reward
ADD
  CONSTRAINT fk_wallet_gam_02 FOREIGN KEY (team_id) REFERENCES dbo.addons_wallet_gam_team(team_id);

ALTER TABLE  dbo.addons_wallet_reward_plugin
ADD
  CONSTRAINT fk_wallet_reward_id_01 FOREIGN KEY (reward_id) REFERENCES dbo.addons_wallet_reward(reward_id);

ALTER TABLE  dbo.addons_wallet_reward
ADD
  CONSTRAINT fk_wallet_reward_period_01 FOREIGN KEY (reward_period_id) REFERENCES dbo.addons_wallet_reward_period(reward_period_id);

ALTER TABLE  dbo.wbc_participants
ADD
  CONSTRAINT fk_wbc_partcall FOREIGN KEY (call_id) REFERENCES dbo.wbc_calls(id) ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE  dbo.jcr_sitem
ADD
  CONSTRAINT jcr_fk_sitem_parent FOREIGN KEY (parent_id) REFERENCES dbo.jcr_sitem(id);

ALTER TABLE  dbo.jcr_svalue
ADD
  CONSTRAINT jcr_fk_svalue_property FOREIGN KEY (property_id) REFERENCES dbo.jcr_sitem(id);

ALTER TABLE  dbo.qrtz_blob_triggers
ADD
  CONSTRAINT qrtz_blob_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES dbo.qrtz_triggers(sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_cron_triggers
ADD
  CONSTRAINT qrtz_cron_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES dbo.qrtz_triggers(sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_simple_triggers
ADD
  CONSTRAINT qrtz_simple_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES dbo.qrtz_triggers(sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_simprop_triggers
ADD
  CONSTRAINT qrtz_simprop_triggers_sched_name_fkey FOREIGN KEY (sched_name, trigger_name, trigger_group) REFERENCES dbo.qrtz_triggers(sched_name, trigger_name, trigger_group);

ALTER TABLE  dbo.qrtz_triggers
ADD
  CONSTRAINT qrtz_triggers_sched_name_fkey FOREIGN KEY (sched_name, job_name, job_group) REFERENCES dbo.qrtz_job_details(sched_name, job_name, job_group);
