--
-- SQLINES DEMO *** se dump
--
-- SQLINES DEMO *** ase version 11.6
-- SQLINES DEMO ***  version 11.6
DECLARE @statement_timeout integer;
SET
  @statement_timeout = 0;
DECLARE @lock_timeout integer;
SET
  @lock_timeout = 0;
DECLARE @idle_in_transaction_session_timeout integer;
SET
  @idle_in_transaction_session_timeout = 0;
DECLARE @client_encoding integer;
SET
  @client_encoding = 'UTF8';
-- DECLARE @standard_conforming_strings;
-- SET
--   @standard_conforming_strings = on;
-- -- SQLINES LICENSE FOR EVALUATION USE 
-- SELECT
--   pg_catalog.set_config('search_path', '', 0);
-- DECLARE @check_function_bodies bit;
-- SET
--   @check_function_bodies = 0;
-- DECLARE @xmloption integer;
-- SET
--   @xmloption = content;
--     DECLARE @client_min_messages integer;
-- SET
--   @client_min_messages = warning;
-- DECLARE @row_security integer;
-- SET
--   @row_security = off;
-- DECLARE @default_tablespace NVARCHAR;
-- SET
--   @default_tablespace = '';
-- DECLARE @default_with_oids bit;
-- SET
--   @default_with_oids = 0;
-- --
  -- SQLINES DEMO *** ns; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.access_tokens (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    value varchar(max) NOT NULL,
    revoked bit DEFAULT 0 NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.access_tokens OWNER TO prisma;
--
  -- SQLINES DEMO *** ns_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.access_tokens_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.access_tokens_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** ns_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: prisma
  --
--  ALTER SEQUENCE dbo.access_tokens_id_seq OWNED BY dbo.access_tokens.id;
--
  -- SQLINES DEMO *** a; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.account_data (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    data_type varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );
--ALTER TABLE dbo.account_data OWNER TO prisma;
--
  -- SQLINES DEMO *** a_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.account_data_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.account_data_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** a_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.account_data_id_seq OWNED BY dbo.account_data.id;
--
  -- SQLINES DEMO *** e: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.events (
    id varchar(max) NOT NULL,
    ordering bigint NOT NULL,
    room_id varchar(max),
    sender varchar(max) NOT NULL,
    event_type varchar(max) NOT NULL,
    state_key varchar(max),
    content varchar(max) NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.events OWNER TO prisma;
--
  -- SQLINES DEMO *** ring_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.events_ordering_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.events_ordering_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** ring_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.events_ordering_seq OWNED BY dbo.events.ordering;
--
  -- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.filters (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );
--ALTER TABLE dbo.filters OWNER TO prisma;
--
  -- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.filters_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.filters_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.filters_id_seq OWNED BY dbo.filters.id;
--
  -- SQLINES DEMO *** st; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.presence_list (
    user_id varchar(max) NOT NULL,
    observed_user_id varchar(max) NOT NULL
  );
--ALTER TABLE dbo.presence_list OWNER TO prisma;
--
  -- SQLINES DEMO *** atus; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.presence_status (
    user_id varchar(max) NOT NULL,
    event_id varchar(max) NOT NULL,
    presence varchar(max) NOT NULL,
    status_msg varchar(max),
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.presence_status OWNER TO prisma;
--
  -- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.profiles (
    id varchar(max) NOT NULL,
    avatar_url varchar(max),
    displayname varchar(max)
  );
--ALTER TABLE dbo.profiles OWNER TO prisma;
--
  -- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.pushers (
    user_id varchar(max) NOT NULL,
    lang varchar(max) NOT NULL,
    kind varchar(max) NOT NULL,
    url varchar(max),
    device_display_name varchar(max) NOT NULL,
    app_id varchar(max) NOT NULL,
    profile_tag varchar(max),
    pushkey varchar(max) NOT NULL,
    app_display_name varchar(max) NOT NULL
  );
--ALTER TABLE dbo.pushers OWNER TO prisma;
--
  -- SQLINES DEMO *** t_data; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.room_account_data (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    data_type varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );
--ALTER TABLE dbo.room_account_data OWNER TO prisma;
--
  -- SQLINES DEMO *** t_data_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.room_account_data_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.room_account_data_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** t_data_id_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.room_account_data_id_seq OWNED BY dbo.room_account_data.id;
--
  -- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.room_aliases (
    alias varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    user_id varchar(max) NOT NULL,
    servers varchar(max) NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.room_aliases OWNER TO prisma;
--
  -- SQLINES DEMO *** ships; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.room_memberships (
    event_id varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    user_id varchar(max) NOT NULL,
    sender varchar(max) NOT NULL,
    membership varchar(max) NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.room_memberships OWNER TO prisma;
--
  -- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.room_tags (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    tag varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );
--ALTER TABLE dbo.room_tags OWNER TO prisma;
--
  -- SQLINES DEMO *** d_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
  --
  CREATE SEQUENCE dbo.room_tags_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
--ALTER TABLE dbo.room_tags_id_seq OWNER TO prisma;
--
  -- SQLINES DEMO *** d_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: prisma
  --
  --ALTER SEQUENCE dbo.room_tags_id_seq OWNED BY dbo.room_tags.id;
--
  -- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.rooms (
    id varchar(max) NOT NULL,
    user_id varchar(max) NOT NULL,
    dbo bit NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.rooms OWNER TO prisma;
--
  -- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.transactions (
    path varchar(max) NOT NULL,
    access_token varchar(max) NOT NULL,
    response varchar(max) NOT NULL
  );
--ALTER TABLE dbo.transactions OWNER TO prisma;
--
  -- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: prisma
  --
  CREATE TABLE dbo.users (
    id varchar(max) NOT NULL,
    password_hash varchar(max) NOT NULL,
    active bit DEFAULT 1 NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );
--ALTER TABLE dbo.users OWNER TO prisma;
--
  -- SQLINES DEMO *** ns id; Type: DEFAULT; Schema: dbo; Owner: prisma
  --

ALTER TABLE dbo.access_tokens ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.access_tokens_id_seq as NVARCHAR(20)) FOR id;

--
  -- SQLINES DEMO *** a id; Type: DEFAULT; Schema: dbo; Owner: prisma
  --
ALTER TABLE dbo.account_data ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.account_data_id_seq as NVARCHAR(20)) FOR id;
--
  -- SQLINES DEMO *** ring; Type: DEFAULT; Schema: dbo; Owner: prisma
  --
ALTER TABLE dbo.events ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.events_ordering_seq as NVARCHAR(20)) FOR ordering;

-- ALTER TABLE  dbo.events
-- ALTER COLUMN
--   ordering
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.events_ordering_seq'  as  regclass));
--
  -- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
  --
  ALTER TABLE dbo.filters ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.filters_id_seq as NVARCHAR(20)) FOR id;

-- ALTER TABLE  dbo.filters
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.filters_id_seq'  as  regclass));
-- --
  -- SQLINES DEMO *** t_data id; Type: DEFAULT; Schema: dbo; Owner: prisma
  --

ALTER TABLE dbo.room_account_data ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.room_account_data_id_seq as NVARCHAR(20)) FOR id;

-- ALTER TABLE  dbo.room_account_data
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.room_account_data_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** d; Type: DEFAULT; Schema: dbo; Owner: prisma
  --
ALTER TABLE dbo.room_tags ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.room_tags_id_seq as NVARCHAR(20)) FOR id;

-- ALTER TABLE  dbo.room_tags
-- ALTER COLUMN
--   id
-- SET
--   @DEFAULT dbo.nextval(cast('dbo.room_tags_id_seq'  as  regclass));
--
  -- SQLINES DEMO *** ns access_tokens_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --

ALTER TABLE  dbo.access_tokens
ADD
  CONSTRAINT access_tokens_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** a account_data_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.account_data
ADD
  CONSTRAINT account_data_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** a account_data_user_id_data_type_key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.account_data
ADD
  CONSTRAINT account_data_user_id_data_type_key UNIQUE (user_id, data_type);
--
  -- SQLINES DEMO *** ts_ordering_key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.events
ADD
  CONSTRAINT events_ordering_key UNIQUE (ordering);
--
  -- SQLINES DEMO *** ts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.events
ADD
  CONSTRAINT events_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** ters_id_user_id_key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.filters
ADD
  CONSTRAINT filters_id_user_id_key UNIQUE (id, user_id);
--
  -- SQLINES DEMO *** ters_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.filters
ADD
  CONSTRAINT filters_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** st presence_list_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.presence_list
ADD
  CONSTRAINT presence_list_pkey PRIMARY KEY (user_id, observed_user_id);
--
  -- SQLINES DEMO *** atus presence_status_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.presence_status
ADD
  CONSTRAINT presence_status_pkey PRIMARY KEY (user_id);
--
  -- SQLINES DEMO *** ofiles_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.profiles
ADD
  CONSTRAINT profiles_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** hers_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.pushers
ADD
  CONSTRAINT pushers_pkey PRIMARY KEY (user_id, app_id);
--
  -- SQLINES DEMO *** t_data room_account_data_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_account_data
ADD
  CONSTRAINT room_account_data_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** t_data room_account_data_user_id_room_id_data_type_key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_account_data
ADD
  CONSTRAINT room_account_data_user_id_room_id_data_type_key UNIQUE (user_id, room_id, data_type);
--
  -- SQLINES DEMO *** s room_aliases_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_aliases
ADD
  CONSTRAINT room_aliases_pkey PRIMARY KEY (alias);
--
  -- SQLINES DEMO *** ships room_memberships_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_memberships
ADD
  CONSTRAINT room_memberships_pkey PRIMARY KEY (event_id);
--
  -- SQLINES DEMO *** ships room_memberships_room_id_user_id_key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_memberships
ADD
  CONSTRAINT room_memberships_room_id_user_id_key UNIQUE (room_id, user_id);
--
  -- SQLINES DEMO *** oom_tags_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_tags
ADD
  CONSTRAINT room_tags_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** oom_tags_user_id_room_id_tag_key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.room_tags
ADD
  CONSTRAINT room_tags_user_id_room_id_tag_key UNIQUE (user_id, room_id, tag);
--
  -- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.rooms
ADD
  CONSTRAINT rooms_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** s transactions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.transactions
ADD
  CONSTRAINT transactions_pkey PRIMARY KEY (path, access_token);
--
  -- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
  --
ALTER TABLE  dbo.users
ADD
  CONSTRAINT users_pkey PRIMARY KEY (id);
--
  -- SQLINES DEMO *** se dump complete
  --