--
-- PostgreSQL database dump
--
-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6
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
SET
  default_tablespace = '';
SET
  default_with_oids = false;
--
  -- Name: access_tokens; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.access_tokens (
    id bigint NOT NULL,
    user_id text NOT NULL,
    value text NOT NULL,
    revoked boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.access_tokens OWNER TO prisma;
--
  -- Name: access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.access_tokens_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.access_tokens_id_seq OWNER TO prisma;
--
  -- Name: access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.access_tokens_id_seq OWNED BY public.access_tokens.id;
--
  -- Name: account_data; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.account_data (
    id bigint NOT NULL,
    user_id text NOT NULL,
    data_type text NOT NULL,
    content text NOT NULL
  );
ALTER TABLE public.account_data OWNER TO prisma;
--
  -- Name: account_data_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.account_data_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.account_data_id_seq OWNER TO prisma;
--
  -- Name: account_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.account_data_id_seq OWNED BY public.account_data.id;
--
  -- Name: events; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.events (
    id text NOT NULL,
    ordering bigint NOT NULL,
    room_id text,
    sender text NOT NULL,
    event_type text NOT NULL,
    state_key text,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.events OWNER TO prisma;
--
  -- Name: events_ordering_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.events_ordering_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.events_ordering_seq OWNER TO prisma;
--
  -- Name: events_ordering_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.events_ordering_seq OWNED BY public.events.ordering;
--
  -- Name: filters; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.filters (
    id bigint NOT NULL,
    user_id text NOT NULL,
    content text NOT NULL
  );
ALTER TABLE public.filters OWNER TO prisma;
--
  -- Name: filters_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.filters_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.filters_id_seq OWNER TO prisma;
--
  -- Name: filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.filters_id_seq OWNED BY public.filters.id;
--
  -- Name: presence_list; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.presence_list (
    user_id text NOT NULL,
    observed_user_id text NOT NULL
  );
ALTER TABLE public.presence_list OWNER TO prisma;
--
  -- Name: presence_status; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.presence_status (
    user_id text NOT NULL,
    event_id text NOT NULL,
    presence text NOT NULL,
    status_msg text,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.presence_status OWNER TO prisma;
--
  -- Name: profiles; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.profiles (
    id text NOT NULL,
    avatar_url text,
    displayname text
  );
ALTER TABLE public.profiles OWNER TO prisma;
--
  -- Name: pushers; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.pushers (
    user_id text NOT NULL,
    lang text NOT NULL,
    kind text NOT NULL,
    url text,
    device_display_name text NOT NULL,
    app_id text NOT NULL,
    profile_tag text,
    pushkey text NOT NULL,
    app_display_name text NOT NULL
  );
ALTER TABLE public.pushers OWNER TO prisma;
--
  -- Name: room_account_data; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.room_account_data (
    id bigint NOT NULL,
    user_id text NOT NULL,
    room_id text NOT NULL,
    data_type text NOT NULL,
    content text NOT NULL
  );
ALTER TABLE public.room_account_data OWNER TO prisma;
--
  -- Name: room_account_data_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.room_account_data_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.room_account_data_id_seq OWNER TO prisma;
--
  -- Name: room_account_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.room_account_data_id_seq OWNED BY public.room_account_data.id;
--
  -- Name: room_aliases; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.room_aliases (
    alias text NOT NULL,
    room_id text NOT NULL,
    user_id text NOT NULL,
    servers text [] NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.room_aliases OWNER TO prisma;
--
  -- Name: room_memberships; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.room_memberships (
    event_id text NOT NULL,
    room_id text NOT NULL,
    user_id text NOT NULL,
    sender text NOT NULL,
    membership text NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.room_memberships OWNER TO prisma;
--
  -- Name: room_tags; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.room_tags (
    id bigint NOT NULL,
    user_id text NOT NULL,
    room_id text NOT NULL,
    tag text NOT NULL,
    content text NOT NULL
  );
ALTER TABLE public.room_tags OWNER TO prisma;
--
  -- Name: room_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
  --
  CREATE SEQUENCE public.room_tags_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;
ALTER TABLE public.room_tags_id_seq OWNER TO prisma;
--
  -- Name: room_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
  --
  ALTER SEQUENCE public.room_tags_id_seq OWNED BY public.room_tags.id;
--
  -- Name: rooms; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.rooms (
    id text NOT NULL,
    user_id text NOT NULL,
    public boolean NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.rooms OWNER TO prisma;
--
  -- Name: transactions; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.transactions (
    path text NOT NULL,
    access_token text NOT NULL,
    response text NOT NULL
  );
ALTER TABLE public.transactions OWNER TO prisma;
--
  -- Name: users; Type: TABLE; Schema: public; Owner: prisma
  --
  CREATE TABLE public.users (
    id text NOT NULL,
    password_hash text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
  );
ALTER TABLE public.users OWNER TO prisma;
--
  -- Name: access_tokens id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.access_tokens
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.access_tokens_id_seq' :: regclass);
--
  -- Name: account_data id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.account_data
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.account_data_id_seq' :: regclass);
--
  -- Name: events ordering; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.events
ALTER COLUMN
  ordering
SET
  DEFAULT nextval('public.events_ordering_seq' :: regclass);
--
  -- Name: filters id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.filters
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.filters_id_seq' :: regclass);
--
  -- Name: room_account_data id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_account_data
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.room_account_data_id_seq' :: regclass);
--
  -- Name: room_tags id; Type: DEFAULT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_tags
ALTER COLUMN
  id
SET
  DEFAULT nextval('public.room_tags_id_seq' :: regclass);
--
  -- Name: access_tokens access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.access_tokens
ADD
  CONSTRAINT access_tokens_pkey PRIMARY KEY (id);
--
  -- Name: account_data account_data_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.account_data
ADD
  CONSTRAINT account_data_pkey PRIMARY KEY (id);
--
  -- Name: account_data account_data_user_id_data_type_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.account_data
ADD
  CONSTRAINT account_data_user_id_data_type_key UNIQUE (user_id, data_type);
--
  -- Name: events events_ordering_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.events
ADD
  CONSTRAINT events_ordering_key UNIQUE (ordering);
--
  -- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.events
ADD
  CONSTRAINT events_pkey PRIMARY KEY (id);
--
  -- Name: filters filters_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.filters
ADD
  CONSTRAINT filters_id_user_id_key UNIQUE (id, user_id);
--
  -- Name: filters filters_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.filters
ADD
  CONSTRAINT filters_pkey PRIMARY KEY (id);
--
  -- Name: presence_list presence_list_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.presence_list
ADD
  CONSTRAINT presence_list_pkey PRIMARY KEY (user_id, observed_user_id);
--
  -- Name: presence_status presence_status_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.presence_status
ADD
  CONSTRAINT presence_status_pkey PRIMARY KEY (user_id);
--
  -- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.profiles
ADD
  CONSTRAINT profiles_pkey PRIMARY KEY (id);
--
  -- Name: pushers pushers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.pushers
ADD
  CONSTRAINT pushers_pkey PRIMARY KEY (user_id, app_id);
--
  -- Name: room_account_data room_account_data_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_account_data
ADD
  CONSTRAINT room_account_data_pkey PRIMARY KEY (id);
--
  -- Name: room_account_data room_account_data_user_id_room_id_data_type_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_account_data
ADD
  CONSTRAINT room_account_data_user_id_room_id_data_type_key UNIQUE (user_id, room_id, data_type);
--
  -- Name: room_aliases room_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_aliases
ADD
  CONSTRAINT room_aliases_pkey PRIMARY KEY (alias);
--
  -- Name: room_memberships room_memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_memberships
ADD
  CONSTRAINT room_memberships_pkey PRIMARY KEY (event_id);
--
  -- Name: room_memberships room_memberships_room_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_memberships
ADD
  CONSTRAINT room_memberships_room_id_user_id_key UNIQUE (room_id, user_id);
--
  -- Name: room_tags room_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_tags
ADD
  CONSTRAINT room_tags_pkey PRIMARY KEY (id);
--
  -- Name: room_tags room_tags_user_id_room_id_tag_key; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.room_tags
ADD
  CONSTRAINT room_tags_user_id_room_id_tag_key UNIQUE (user_id, room_id, tag);
--
  -- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.rooms
ADD
  CONSTRAINT rooms_pkey PRIMARY KEY (id);
--
  -- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.transactions
ADD
  CONSTRAINT transactions_pkey PRIMARY KEY (path, access_token);
--
  -- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
  --
ALTER TABLE ONLY public.users
ADD
  CONSTRAINT users_pkey PRIMARY KEY (id);
--
  -- PostgreSQL database dump complete
  --