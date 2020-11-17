USE [ruma]
GO

DECLARE @statement_timeout integer;
SET
  @statement_timeout = 0;
DECLARE @lock_timeout integer;
SET
  @lock_timeout = 0;
DECLARE @idle_in_transaction_session_timeout integer;
SET
  @idle_in_transaction_session_timeout = 0;
-- DECLARE @client_encoding integer;
-- SET
--   @client_encoding = 'UTF8';

  CREATE TABLE dbo.access_tokens (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    value varchar(max) NOT NULL,
    revoked bit DEFAULT 0 NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE SEQUENCE dbo.access_tokens_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.account_data (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    data_type varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );

  CREATE SEQUENCE dbo.account_data_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

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

  CREATE SEQUENCE dbo.events_ordering_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.filters (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );

  CREATE SEQUENCE dbo.filters_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.presence_list (
    user_id varchar(max) NOT NULL,
    observed_user_id varchar(max) NOT NULL
  );

  CREATE TABLE dbo.presence_status (
    user_id varchar(max) NOT NULL,
    event_id varchar(max) NOT NULL,
    presence varchar(max) NOT NULL,
    status_msg varchar(max),
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE TABLE dbo.profiles (
    id varchar(max) NOT NULL,
    avatar_url varchar(max),
    displayname varchar(max)
  );

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

  CREATE TABLE dbo.room_account_data (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    data_type varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );

  CREATE SEQUENCE dbo.room_account_data_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.room_aliases (
    alias varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    user_id varchar(max) NOT NULL,
    servers varchar(max) NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE TABLE dbo.room_memberships (
    event_id varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    user_id varchar(max) NOT NULL,
    sender varchar(max) NOT NULL,
    membership varchar(max) NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE TABLE dbo.room_tags (
    id bigint NOT NULL,
    user_id varchar(max) NOT NULL,
    room_id varchar(max) NOT NULL,
    tag varchar(max) NOT NULL,
    content varchar(max) NOT NULL
  );

  CREATE SEQUENCE dbo.room_tags_id_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

  CREATE TABLE dbo.rooms (
    id varchar(max) NOT NULL,
    user_id varchar(max) NOT NULL,
    dbo bit NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL
  );

  CREATE TABLE dbo.transactions (
    path varchar(max) NOT NULL,
    access_token varchar(max) NOT NULL,
    response varchar(max) NOT NULL
  );

  CREATE TABLE dbo.users (
    id varchar(max) NOT NULL,
    password_hash varchar(max) NOT NULL,
    active bit DEFAULT 1 NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
  );


ALTER TABLE dbo.access_tokens ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.access_tokens_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.account_data ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.account_data_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.events ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.events_ordering_seq as NVARCHAR(20)) FOR ordering;

ALTER TABLE dbo.filters ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.filters_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.room_account_data ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.room_account_data_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE dbo.room_tags ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.room_tags_id_seq as NVARCHAR(20)) FOR id;

ALTER TABLE  dbo.access_tokens
ADD
  CONSTRAINT access_tokens_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_data
ADD
  CONSTRAINT account_data_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.account_data
ADD
  CONSTRAINT account_data_user_id_data_type_key UNIQUE (user_id, data_type);

ALTER TABLE  dbo.events
ADD
  CONSTRAINT events_ordering_key UNIQUE (ordering);

ALTER TABLE  dbo.events
ADD
  CONSTRAINT events_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.filters
ADD
  CONSTRAINT filters_id_user_id_key UNIQUE (id, user_id);

ALTER TABLE  dbo.filters
ADD
  CONSTRAINT filters_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.presence_list
ADD
  CONSTRAINT presence_list_pkey PRIMARY KEY (user_id, observed_user_id);

ALTER TABLE  dbo.presence_status
ADD
  CONSTRAINT presence_status_pkey PRIMARY KEY (user_id);

ALTER TABLE  dbo.profiles
ADD
  CONSTRAINT profiles_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.pushers
ADD
  CONSTRAINT pushers_pkey PRIMARY KEY (user_id, app_id);

ALTER TABLE  dbo.room_account_data
ADD
  CONSTRAINT room_account_data_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.room_account_data
ADD
  CONSTRAINT room_account_data_user_id_room_id_data_type_key UNIQUE (user_id, room_id, data_type);

ALTER TABLE  dbo.room_aliases
ADD
  CONSTRAINT room_aliases_pkey PRIMARY KEY (alias);

ALTER TABLE  dbo.room_memberships
ADD
  CONSTRAINT room_memberships_pkey PRIMARY KEY (event_id);

ALTER TABLE  dbo.room_memberships
ADD
  CONSTRAINT room_memberships_room_id_user_id_key UNIQUE (room_id, user_id);

ALTER TABLE  dbo.room_tags
ADD
  CONSTRAINT room_tags_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.room_tags
ADD
  CONSTRAINT room_tags_user_id_room_id_tag_key UNIQUE (user_id, room_id, tag);

ALTER TABLE  dbo.rooms
ADD
  CONSTRAINT rooms_pkey PRIMARY KEY (id);

ALTER TABLE  dbo.transactions
ADD
  CONSTRAINT transactions_pkey PRIMARY KEY (path, access_token);

ALTER TABLE  dbo.users
ADD
  CONSTRAINT users_pkey PRIMARY KEY (id);
