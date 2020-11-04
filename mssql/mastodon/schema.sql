--
-- SQLINES DEMO *** se dump
--

-- SQLINES DEMO *** ase version 9.6.3
-- SQLINES DEMO ***  version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

-- SET @statement_timeout = 0;
-- SET @lock_timeout = 0;
-- SET @idle_in_transaction_session_timeout = 0;
-- SET @client_encoding = 'UTF8';
-- SET @standard_conforming_strings = on;
-- -- SQLINES LICENSE FOR EVALUATION USE 
-- SELECT pg_catalog.set_config('search_path', '', 0);
-- SET @check_function_bodies = 0;
-- SET @xmloption = content;
-- SET @client_min_messages = warning;
-- SET @row_security = off;
--
-- SQLINES DEMO *** d(text); Type: FUNCTION; Schema: dbo; Owner: prisma
--

-- SQLINES LICENSE FOR EVALUATION USE 
-- CREATE FUNCTION dbo.datetime_id(@table_name varchar(max)) RETURNS bigint
--     LANGUAGE declare @plpgsql
--     AS
--     BEGIN $$
--  Return null;
--  End;
--   DECLARE
--     @time_part bigint;
--     sequence_base bigint;
--     tail bigint;
--   BEGIN
--     SET @time_part = (
--       -- SQLINES DEMO *** illiseconds
--       cast(((dbo.date_part('epoch', getdate()) * 1000)) as bigint)
--       -- SQLINES DEMO ***  two bytes
--       << 16);

--     SET @sequence_base = cast((
--       'x' +
--       -- SQLINES DEMO *** o bytes (four hex characters)
--       isnull(substring(
--         -- SQLINES DEMO *** f the data we documented
--         dbo.md5(isnull(table_name, '') +
--           'e8f7e67b68e3c8a94a64e38fefd6eee1' +
--           cast(isnull(@time_part as varchar(max)), '')
--         ),
--         1, 4
--       ), '')
--     -- SQLINES DEMO *** a bigint
--     ) as bit(2))::bigint;

--     -- SQLINES DEMO *** sequence number to our base, and chop
--     -- SQLINES DEMO *** --o bytes
--     SET @tail = (
--       (sequence_base + dbo.nextval(isnull(table_name, '') + '_id_seq'))
--       & 65535);

--     -- SQLINES DEMO *** art and the sequence part. OR appears
--     -- SQLINES DEMO *** addition, but they're equivalent:
--     -- SQLINES DEMO *** trailing two bytes, and tail is 
--     -- the last two bytes.
--     RETURN @time_part | tail;
--   END
-- $$;


-- -- SQLINES LICENSE FOR EVALUATION USE 
-- ALTER FUNCTION dbo.datetime_id(@table_name varchar(max)) OWNER DECLARE @TO prisma;

-- DECLARE @SET default_tablespace = '';

-- DECLARE @SET default_with_oids = 0;

-- --
-- -- SQLINES DEMO *** ases; Type: TABLE; Schema: dbo; Owner: prisma
-- --

-- DECLARE @CREATE TABLE
--  BEGIN dbo.account_aliases (
--     id
--     return null;
--     end; bigint NOT NULL,
--     account_id bigint,
--     acct character varying DEFAULT cast('' as character varying) NOT NULL,
--     uri character varying DEFAULT cast('' as character varying) NOT NULL,
--     created_at datetime without time zone NOT NULL,
--     updated_at datetime without time zone NOT NULL
-- );



--
-- SQLINES DEMO *** ases_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** versations; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_conversations (
    id bigint NOT NULL,
    account_id bigint,
    conversation_id bigint,
    participant_account_ids bigint DEFAULT cast('{}' as bigint) NOT NULL,
    status_ids bigint DEFAULT cast('{}' as bigint) NOT NULL,
    last_status_id bigint,
    lock_version integer DEFAULT 0 NOT NULL,
    unread bit DEFAULT 0 NOT NULL
);



--
-- SQLINES DEMO *** versations_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ain_blocks; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_domain_blocks (
    id bigint NOT NULL,
    domain character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint
);



--
-- SQLINES DEMO *** ain_blocks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ntity_proofs; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_identity_proofs (
    id bigint NOT NULL,
    account_id bigint,
    provider character varying DEFAULT cast('' as character varying) NOT NULL,
    provider_username character varying DEFAULT cast('' as character varying) NOT NULL,
    token varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    verified bit DEFAULT 0 NOT NULL,
    live bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** ntity_proofs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_identity_proofs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** rations; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_migrations (
    id bigint NOT NULL,
    account_id bigint,
    acct character varying DEFAULT cast('' as character varying) NOT NULL,
    followers_count bigint DEFAULT 0 NOT NULL,
    target_account_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** rations_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** eration_notes; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_moderation_notes (
    id bigint NOT NULL,
    content varchar(max) NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** eration_notes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_moderation_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_pins (
    id bigint NOT NULL,
    account_id bigint,
    target_account_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** s_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ts; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_stats (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    statuses_count bigint DEFAULT 0 NOT NULL,
    following_count bigint DEFAULT 0 NOT NULL,
    followers_count bigint DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    last_status_at datetime2,
    lock_version integer DEFAULT 0 NOT NULL
);



--
-- SQLINES DEMO *** ts_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** _stats; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_tag_stats (
    id bigint NOT NULL,
    tag_id bigint NOT NULL,
    accounts_count bigint DEFAULT 0 NOT NULL,
    hidden bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** _stats_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_tag_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ning_presets; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_warning_presets (
    id bigint NOT NULL,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** ning_presets_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_warning_presets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** nings; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.account_warnings (
    id bigint NOT NULL,
    account_id bigint,
    target_account_id bigint,
    action integer DEFAULT 0 NOT NULL,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** nings_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.account_warnings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.accounts (
    id bigint NOT NULL,
    username character varying DEFAULT cast('' as character varying) NOT NULL,
    domain character varying,
    secret character varying DEFAULT cast('' as character varying) NOT NULL,
    private_key varchar(max),
    dbo_key varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    remote_url character varying DEFAULT cast('' as character varying) NOT NULL,
    salmon_url character varying DEFAULT cast('' as character varying) NOT NULL,
    hub_url character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    note varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    display_name character varying DEFAULT cast('' as character varying) NOT NULL,
    uri character varying DEFAULT cast('' as character varying) NOT NULL,
    url character varying,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at datetime2,
    header_file_name character varying,
    header_content_type character varying,
    header_file_size integer,
    header_updated_at datetime2,
    avatar_remote_url character varying,
    subscription_expires_at datetime2,
    locked bit DEFAULT 0 NOT NULL,
    header_remote_url character varying DEFAULT cast('' as character varying) NOT NULL,
    last_webfingered_at datetime2,
    inbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    outbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    shared_inbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    followers_url character varying DEFAULT cast('' as character varying) NOT NULL,
    protocol integer DEFAULT 0 NOT NULL,
    memorial bit DEFAULT 0 NOT NULL,
    moved_to_account_id bigint,
    featured_collection_url character varying,
    fields NVARCHAR(255),
    actor_type character varying,
    discoverable bit,
    also_known_as character varying,
    silenced_at datetime2,
    suspended_at datetime2,
    trust_level integer
);



--
-- SQLINES DEMO *** _seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** gs; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.accounts_tags (
    account_id bigint NOT NULL,
    tag_id bigint NOT NULL
);



--
-- SQLINES DEMO *** n_logs; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.admin_action_logs (
    id bigint NOT NULL,
    account_id bigint,
    action character varying DEFAULT cast('' as character varying) NOT NULL,
    target_type character varying,
    target_id bigint,
    recorded_changes varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** n_logs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.admin_action_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** t_mutes; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.announcement_mutes (
    id bigint NOT NULL,
    account_id bigint,
    announcement_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** t_mutes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.announcement_mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** t_reactions; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.announcement_reactions (
    id bigint NOT NULL,
    account_id bigint,
    announcement_id bigint,
    name character varying DEFAULT cast('' as character varying) NOT NULL,
    custom_emoji_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** t_reactions_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.announcement_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ts; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.announcements (
    id bigint NOT NULL,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    published bit DEFAULT 0 NOT NULL,
    all_day bit DEFAULT 0 NOT NULL,
    scheduled_at datetime2,
    starts_at datetime2,
    ends_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    published_at datetime2
);



--
-- SQLINES DEMO *** ts_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** _metadata; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.ar_internal_metadata (
    id bigint NOT NULL,
    value character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.backups (
    id bigint NOT NULL,
    user_id bigint,
    dump_file_name character varying,
    dump_content_type character varying,
    dump_updated_at datetime2,
    processed bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    dump_file_size bigint
);



--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.backups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** e: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.blocks (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    uri character varying
);



--
-- SQLINES DEMO *** eq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.bookmarks (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.bookmarks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** n_mutes; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.conversation_mutes (
    id bigint NOT NULL,
    conversation_id bigint NOT NULL,
    account_id bigint NOT NULL
);



--
-- SQLINES DEMO *** n_mutes_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.conversation_mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ns; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.conversations (
    id bigint NOT NULL,
    uri character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** ns_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** i_categories; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.custom_emoji_categories (
    id bigint NOT NULL,
    name character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** i_categories_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.custom_emoji_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** is; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.custom_emojis (
    id bigint NOT NULL,
    shortcode character varying DEFAULT cast('' as character varying) NOT NULL,
    domain character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    disabled bit DEFAULT 0 NOT NULL,
    uri character varying,
    image_remote_url character varying,
    visible_in_picker bit DEFAULT 1 NOT NULL,
    category_id bigint
);



--
-- SQLINES DEMO *** is_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.custom_emojis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ers; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.custom_filters (
    id bigint NOT NULL,
    account_id bigint,
    expires_at datetime2,
    phrase varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    context character varying DEFAULT cast('{}' as character varying) NOT NULL,
    irreversible bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    whole_word bit DEFAULT 1 NOT NULL
);



--
-- SQLINES DEMO *** ers_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.custom_filters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ws; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.domain_allows (
    id bigint NOT NULL,
    domain character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** ws_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.domain_allows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ks; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.domain_blocks (
    id bigint NOT NULL,
    domain character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    severity integer DEFAULT 0,
    reject_media bit DEFAULT 0 NOT NULL,
    reject_reports bit DEFAULT 0 NOT NULL,
    private_comment varchar(max),
    dbo_comment varchar(max)
);



--
-- SQLINES DEMO *** ks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** n_blocks; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.email_domain_blocks (
    id bigint NOT NULL,
    domain character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** n_blocks_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.email_domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.favourites (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL
);



--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.favourites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** gs; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.featured_tags (
    id bigint NOT NULL,
    account_id bigint,
    tag_id bigint,
    statuses_count bigint DEFAULT 0 NOT NULL,
    last_status_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** gs_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.featured_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ests; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.follow_requests (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    show_reblogs bit DEFAULT 1 NOT NULL,
    uri character varying
);



--
-- SQLINES DEMO *** ests_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.follow_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.follows (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    show_reblogs bit DEFAULT 1 NOT NULL,
    uri character varying
);



--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.identities (
    id bigint NOT NULL,
    provider character varying DEFAULT cast('' as character varying) NOT NULL,
    uid character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    user_id bigint
);



--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.identities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.imports (
    id bigint NOT NULL,
    type integer NOT NULL,
    approved bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    data_file_name character varying,
    data_content_type character varying,
    data_file_size integer,
    data_updated_at datetime2,
    account_id bigint NOT NULL,
    overwrite bit DEFAULT 0 NOT NULL
);



--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.imports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.invites (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    code character varying DEFAULT cast('' as character varying) NOT NULL,
    expires_at datetime2,
    max_uses integer,
    uses integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    autofollow bit DEFAULT 0 NOT NULL,
    comment varchar(max)
);



--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.invites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ts; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.list_accounts (
    id bigint NOT NULL,
    list_id bigint NOT NULL,
    account_id bigint NOT NULL,
    follow_id bigint
);



--
-- SQLINES DEMO *** ts_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.list_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.lists (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    title character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.markers (
    id bigint NOT NULL,
    user_id bigint,
    timeline character varying DEFAULT cast('' as character varying) NOT NULL,
    last_read_id bigint DEFAULT 0 NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.markers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** hments; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.media_attachments (
    id bigint NOT NULL,
    status_id bigint,
    file_file_name character varying,
    file_content_type character varying,
    file_file_size integer,
    file_updated_at datetime2,
    remote_url character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    shortcode character varying,
    type integer DEFAULT 0 NOT NULL,
    file_meta NVARCHAR(255),
    account_id bigint,
    description varchar(max),
    scheduled_status_id bigint,
    blurhash character varying
);



--
-- SQLINES DEMO *** hments_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.media_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.mentions (
    id bigint NOT NULL,
    status_id bigint,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint,
    silent bit DEFAULT 0 NOT NULL
);



--
-- SQLINES DEMO *** _seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.mentions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.mutes (
    id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    hide_notifications bit DEFAULT 1 NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL
);



--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ns; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.notifications (
    id bigint NOT NULL,
    activity_id bigint NOT NULL,
    activity_type character varying NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    from_account_id bigint NOT NULL
);



--
-- SQLINES DEMO *** ns_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s_grants; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.oauth_access_grants (
    id bigint NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri varchar(max) NOT NULL,
    created_at datetime2 NOT NULL,
    revoked_at datetime2,
    scopes character varying,
    application_id bigint NOT NULL,
    resource_owner_id bigint NOT NULL
);



--
-- SQLINES DEMO *** s_grants_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s_tokens; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.oauth_access_tokens (
    id bigint NOT NULL,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at datetime2,
    created_at datetime2 NOT NULL,
    scopes character varying,
    application_id bigint,
    resource_owner_id bigint
);



--
-- SQLINES DEMO *** s_tokens_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** cations; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.oauth_applications (
    id bigint NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri varchar(max) NOT NULL,
    scopes character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2,
    updated_at datetime2,
    superapp bit DEFAULT 0 NOT NULL,
    website character varying,
    owner_type character varying,
    owner_id bigint,
    confidential bit DEFAULT 1 NOT NULL
);



--
-- SQLINES DEMO *** cations_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** e_stats; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.pghero_space_stats (
    id bigint NOT NULL,
    database_base varchar(max),
    schema_base varchar(max),
    relation varchar(max),
    size bigint,
    captured_at datetime2
);



--
-- SQLINES DEMO *** e_stats_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.pghero_space_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.poll_votes (
    id bigint NOT NULL,
    account_id bigint,
    poll_id bigint,
    choice integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    uri character varying
);



--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.poll_votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.polls (
    id bigint NOT NULL,
    account_id bigint,
    status_id bigint,
    expires_at datetime2,
    options character varying DEFAULT cast('{}' as character varying) NOT NULL,
    cached_tallies bigint DEFAULT cast('{}' as bigint) NOT NULL,
    multiple bit DEFAULT 0 NOT NULL,
    hide_totals bit DEFAULT 0 NOT NULL,
    votes_count bigint DEFAULT 0 NOT NULL,
    last_fetched_at datetime2,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    voters_count bigint
);



--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.polls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ds; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.preview_cards (
    id bigint NOT NULL,
    url character varying DEFAULT cast('' as character varying) NOT NULL,
    title character varying DEFAULT cast('' as character varying) NOT NULL,
    description character varying DEFAULT cast('' as character varying) NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at datetime2,
    type integer DEFAULT 0 NOT NULL,
    html varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    author_name character varying DEFAULT cast('' as character varying) NOT NULL,
    author_url character varying DEFAULT cast('' as character varying) NOT NULL,
    provider_name character varying DEFAULT cast('' as character varying) NOT NULL,
    provider_url character varying DEFAULT cast('' as character varying) NOT NULL,
    width integer DEFAULT 0 NOT NULL,
    height integer DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    embed_url character varying DEFAULT cast('' as character varying) NOT NULL
);



--
-- SQLINES DEMO *** ds_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.preview_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ds_statuses; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.preview_cards_statuses (
    preview_card_id bigint NOT NULL,
    status_id bigint NOT NULL
);



--
-- SQLINES DEMO *** e: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.relays (
    id bigint NOT NULL,
    inbox_url character varying DEFAULT cast('' as character varying) NOT NULL,
    follow_activity_id character varying,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    state integer DEFAULT 0 NOT NULL
);



--
-- SQLINES DEMO *** eq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.relays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.report_notes (
    id bigint NOT NULL,
    content varchar(max) NOT NULL,
    report_id bigint NOT NULL,
    account_id bigint NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** s_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.report_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.reports (
    id bigint NOT NULL,
    status_ids bigint DEFAULT cast('{}' as bigint) NOT NULL,
    comment varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    action_taken bit DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    account_id bigint NOT NULL,
    action_taken_by_account_id bigint,
    target_account_id bigint NOT NULL,
    assigned_account_id bigint,
    uri character varying
);



--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** tatuses; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.scheduled_statuses (
    id bigint NOT NULL,
    account_id bigint,
    scheduled_at datetime2,
    params NVARCHAR(255)
);



--
-- SQLINES DEMO *** tatuses_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.scheduled_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ations; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.schema_migrations (
    version character varying NOT NULL
);



--
-- SQLINES DEMO *** ivations; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.session_activations (
    id bigint NOT NULL,
    session_id character varying NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    user_agent character varying DEFAULT cast('' as character varying) NOT NULL,
    ip NVARCHAR(255),
    access_token_id bigint,
    user_id bigint NOT NULL,
    web_push_subscription_id bigint
);



--
-- SQLINES DEMO *** ivations_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.session_activations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.settings (
    id bigint NOT NULL,
    var character varying NOT NULL,
    value varchar(max),
    thing_type character varying,
    created_at datetime2,
    updated_at datetime2,
    thing_id bigint
);



--
-- SQLINES DEMO *** _seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.site_uploads (
    id bigint NOT NULL,
    var character varying DEFAULT cast('' as character varying) NOT NULL,
    file_file_name character varying,
    file_content_type character varying,
    file_file_size integer,
    file_updated_at datetime2,
    meta NVARCHAR(255),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** s_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.site_uploads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.status_pins (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL,
    created_at datetime2 DEFAULT getdate() NOT NULL,
    updated_at datetime2 DEFAULT getdate() NOT NULL
);



--
-- SQLINES DEMO *** _id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.status_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.status_stats (
    id bigint NOT NULL,
    status_id bigint NOT NULL,
    replies_count bigint DEFAULT 0 NOT NULL,
    reblogs_count bigint DEFAULT 0 NOT NULL,
    favourites_count bigint DEFAULT 0 NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** s_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.status_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.statuses (
    id bigint DEFAULT dbo.datetime_id(cast('statuses' as varchar(max))) NOT NULL,
    uri character varying,
    text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    in_reply_to_id bigint,
    reblog_of_id bigint,
    url character varying,
    sensitive bit DEFAULT 0 NOT NULL,
    visibility integer DEFAULT 0 NOT NULL,
    spoiler_text varchar(max) DEFAULT cast('' as varchar(max)) NOT NULL,
    reply bit DEFAULT 0 NOT NULL,
    language character varying,
    conversation_id bigint,
    local bit,
    account_id bigint NOT NULL,
    application_id bigint,
    in_reply_to_account_id bigint,
    poll_id bigint,
    deleted_at datetime2
);



--
-- SQLINES DEMO *** _seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO *** gs; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.statuses_tags (
    status_id bigint NOT NULL,
    tag_id bigint NOT NULL
);



--
-- SQLINES DEMO ***  TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.tags (
    id bigint NOT NULL,
    name character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    usable bit,
    trendable bit,
    listable bit,
    reviewed_at datetime2,
    requested_review_at datetime2,
    last_status_at datetime2,
    max_score float,
    max_score_at datetime2
);



--
-- SQLINES DEMO *** ; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO  dbo; Owner: prisma
--




--
-- SQLINES DEMO ***  Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.tombstones (
    id bigint NOT NULL,
    account_id bigint,
    uri character varying NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    by_moderator bit
);



--
-- SQLINES DEMO *** id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.tombstones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** _requests; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.user_invite_requests (
    id bigint NOT NULL,
    user_id bigint,
    text varchar(max),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL
);



--
-- SQLINES DEMO *** _requests_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.user_invite_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.users (
    id bigint NOT NULL,
    email character varying DEFAULT cast('' as character varying) NOT NULL,
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    encrypted_password character varying DEFAULT cast('' as character varying) NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at datetime2,
    remember_created_at datetime2,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at datetime2,
    last_sign_in_at datetime2,
    current_sign_in_ip NVARCHAR(255),
    last_sign_in_ip NVARCHAR(255),
    admin bit DEFAULT 0 NOT NULL,
    confirmation_token character varying,
    confirmed_at datetime2,
    confirmation_sent_at datetime2,
    unconfirmed_email character varying,
    locale character varying,
    encrypted_otp_secret character varying,
    encrypted_otp_secret_iv character varying,
    encrypted_otp_secret_salt character varying,
    consumed_timestep integer,
    otp_required_for_login bit DEFAULT 0 NOT NULL,
    last_emailed_at datetime2,
    otp_backup_codes character varying,
    filtered_languages character varying DEFAULT cast('{}' as character varying) NOT NULL,
    account_id bigint NOT NULL,
    disabled bit DEFAULT 0 NOT NULL,
    moderator bit DEFAULT 0 NOT NULL,
    invite_id bigint,
    remember_token character varying,
    chosen_languages character varying,
    created_by_application_id bigint,
    approved bit DEFAULT 1 NOT NULL
);



--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** bscriptions; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.web_push_subscriptions (
    id bigint NOT NULL,
    endpoint character varying NOT NULL,
    key_p256dh character varying NOT NULL,
    key_auth character varying NOT NULL,
    data NVARCHAR(255),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    access_token_id bigint,
    user_id bigint
);



--
-- SQLINES DEMO *** bscriptions_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.web_push_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** s; Type: TABLE; Schema: dbo; Owner: prisma
--

CREATE TABLE dbo.web_settings (
    id bigint NOT NULL,
    data NVARCHAR(255),
    created_at datetime2 NOT NULL,
    updated_at datetime2 NOT NULL,
    user_id bigint NOT NULL
);



--
-- SQLINES DEMO *** s_id_seq; Type: SEQUENCE; Schema: dbo; Owner: prisma
--

CREATE SEQUENCE dbo.web_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



--
-- SQLINES DEMO : dbo; Owner: prisma
--




--
-- SQLINES DEMO *** ases id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_aliases ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_aliases_id_seq' as regclass));


--
-- SQLINES DEMO *** versations id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_conversations ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_conversations_id_seq' as regclass));


--
-- SQLINES DEMO *** ain_blocks id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_domain_blocks ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_domain_blocks_id_seq' as regclass));


--
-- SQLINES DEMO *** ntity_proofs id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_identity_proofs ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_identity_proofs_id_seq' as regclass));


--
-- SQLINES DEMO *** rations id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_migrations ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_migrations_id_seq' as regclass));


--
-- SQLINES DEMO *** eration_notes id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_moderation_notes ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_moderation_notes_id_seq' as regclass));


--
-- SQLINES DEMO *** s id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_pins ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_pins_id_seq' as regclass));


--
-- SQLINES DEMO *** ts id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_stats ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_stats_id_seq' as regclass));


--
-- SQLINES DEMO *** _stats id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_tag_stats ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_tag_stats_id_seq' as regclass));


--
-- SQLINES DEMO *** ning_presets id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_warning_presets ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_warning_presets_id_seq' as regclass));


--
-- SQLINES DEMO *** nings id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.account_warnings ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.account_warnings_id_seq' as regclass));


--
-- SQLINES DEMO *** ; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.accounts ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.accounts_id_seq' as regclass));


--
-- SQLINES DEMO *** n_logs id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.admin_action_logs ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.admin_action_logs_id_seq' as regclass));


--
-- SQLINES DEMO *** t_mutes id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.announcement_mutes ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.announcement_mutes_id_seq' as regclass));


--
-- SQLINES DEMO *** t_reactions id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.announcement_reactions ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.announcement_reactions_id_seq' as regclass));


--
-- SQLINES DEMO *** ts id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.announcements ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.announcements_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.backups ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.backups_id_seq' as regclass));


--
-- SQLINES DEMO *** Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.blocks ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.blocks_id_seq' as regclass));


--
-- SQLINES DEMO *** d; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.bookmarks ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.bookmarks_id_seq' as regclass));


--
-- SQLINES DEMO *** n_mutes id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.conversation_mutes ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.conversation_mutes_id_seq' as regclass));


--
-- SQLINES DEMO *** ns id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.conversations ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.conversations_id_seq' as regclass));


--
-- SQLINES DEMO *** i_categories id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.custom_emoji_categories ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.custom_emoji_categories_id_seq' as regclass));


--
-- SQLINES DEMO *** is id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.custom_emojis ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.custom_emojis_id_seq' as regclass));


--
-- SQLINES DEMO *** ers id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.custom_filters ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.custom_filters_id_seq' as regclass));


--
-- SQLINES DEMO *** ws id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.domain_allows ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.domain_allows_id_seq' as regclass));


--
-- SQLINES DEMO *** ks id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.domain_blocks ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.domain_blocks_id_seq' as regclass));


--
-- SQLINES DEMO *** n_blocks id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.email_domain_blocks ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.email_domain_blocks_id_seq' as regclass));


--
-- SQLINES DEMO *** id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.favourites ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.favourites_id_seq' as regclass));


--
-- SQLINES DEMO *** gs id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.featured_tags ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.featured_tags_id_seq' as regclass));


--
-- SQLINES DEMO *** ests id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.follow_requests ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.follow_requests_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.follows ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.follows_id_seq' as regclass));


--
-- SQLINES DEMO *** id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.identities ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.identities_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.imports ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.imports_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.invites ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.invites_id_seq' as regclass));


--
-- SQLINES DEMO *** ts id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.list_accounts ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.list_accounts_id_seq' as regclass));


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.lists ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.lists_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.markers ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.markers_id_seq' as regclass));


--
-- SQLINES DEMO *** hments id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.media_attachments ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.media_attachments_id_seq' as regclass));


--
-- SQLINES DEMO *** ; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.mentions ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.mentions_id_seq' as regclass));


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.mutes ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.mutes_id_seq' as regclass));


--
-- SQLINES DEMO *** ns id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.notifications ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.notifications_id_seq' as regclass));


--
-- SQLINES DEMO *** s_grants id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.oauth_access_grants ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.oauth_access_grants_id_seq' as regclass));


--
-- SQLINES DEMO *** s_tokens id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.oauth_access_tokens ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.oauth_access_tokens_id_seq' as regclass));


--
-- SQLINES DEMO *** cations id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.oauth_applications ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.oauth_applications_id_seq' as regclass));


--
-- SQLINES DEMO *** e_stats id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.pghero_space_stats ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.pghero_space_stats_id_seq' as regclass));


--
-- SQLINES DEMO *** id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.poll_votes ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.poll_votes_id_seq' as regclass));


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.polls ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.polls_id_seq' as regclass));


--
-- SQLINES DEMO *** ds id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.preview_cards ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.preview_cards_id_seq' as regclass));


--
-- SQLINES DEMO *** Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.relays ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.relays_id_seq' as regclass));


--
-- SQLINES DEMO *** s id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.report_notes ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.report_notes_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.reports ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.reports_id_seq' as regclass));


--
-- SQLINES DEMO *** tatuses id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.scheduled_statuses ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.scheduled_statuses_id_seq' as regclass));


--
-- SQLINES DEMO *** ivations id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.session_activations ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.session_activations_id_seq' as regclass));


--
-- SQLINES DEMO *** ; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.settings ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.settings_id_seq' as regclass));


--
-- SQLINES DEMO *** s id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.site_uploads ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.site_uploads_id_seq' as regclass));


--
-- SQLINES DEMO ***  id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.status_pins ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.status_pins_id_seq' as regclass));


--
-- SQLINES DEMO *** s id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.status_stats ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.status_stats_id_seq' as regclass));


--
-- SQLINES DEMO *** pe: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.tags ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.tags_id_seq' as regclass));


--
-- SQLINES DEMO *** id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.tombstones ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.tombstones_id_seq' as regclass));


--
-- SQLINES DEMO *** _requests id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.user_invite_requests ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.user_invite_requests_id_seq' as regclass));


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.users ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.users_id_seq' as regclass));


--
-- SQLINES DEMO *** bscriptions id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.web_push_subscriptions ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.web_push_subscriptions_id_seq' as regclass));


--
-- SQLINES DEMO *** s id; Type: DEFAULT; Schema: dbo; Owner: prisma
--

--ALTER TABLE  dbo.web_settings ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.web_settings_id_seq' as regclass));


--
-- SQLINES DEMO *** ases account_aliases_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_aliases
    ADD CONSTRAINT account_aliases_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** versations account_conversations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_conversations
    ADD CONSTRAINT account_conversations_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ain_blocks account_domain_blocks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_domain_blocks
    ADD CONSTRAINT account_domain_blocks_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ntity_proofs account_identity_proofs_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_identity_proofs
    ADD CONSTRAINT account_identity_proofs_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** rations account_migrations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_migrations
    ADD CONSTRAINT account_migrations_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** eration_notes account_moderation_notes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_moderation_notes
    ADD CONSTRAINT account_moderation_notes_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s account_pins_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_pins
    ADD CONSTRAINT account_pins_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ts account_stats_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_stats
    ADD CONSTRAINT account_stats_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _stats account_tag_stats_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_tag_stats
    ADD CONSTRAINT account_tag_stats_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ning_presets account_warning_presets_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_warning_presets
    ADD CONSTRAINT account_warning_presets_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** nings account_warnings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_warnings
    ADD CONSTRAINT account_warnings_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** counts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** n_logs admin_action_logs_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.admin_action_logs
    ADD CONSTRAINT admin_action_logs_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** t_mutes announcement_mutes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_mutes
    ADD CONSTRAINT announcement_mutes_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** t_reactions announcement_reactions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT announcement_reactions_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ts announcements_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key_base);


--
-- SQLINES DEMO *** kups_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.backups
    ADD CONSTRAINT backups_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ookmarks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** n_mutes conversation_mutes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.conversation_mutes
    ADD CONSTRAINT conversation_mutes_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ns conversations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** i_categories custom_emoji_categories_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.custom_emoji_categories
    ADD CONSTRAINT custom_emoji_categories_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** is custom_emojis_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.custom_emojis
    ADD CONSTRAINT custom_emojis_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ers custom_filters_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.custom_filters
    ADD CONSTRAINT custom_filters_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ws domain_allows_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.domain_allows
    ADD CONSTRAINT domain_allows_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ks domain_blocks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.domain_blocks
    ADD CONSTRAINT domain_blocks_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** n_blocks email_domain_blocks_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.email_domain_blocks
    ADD CONSTRAINT email_domain_blocks_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** favourites_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** gs featured_tags_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.featured_tags
    ADD CONSTRAINT featured_tags_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ests follow_requests_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.follow_requests
    ADD CONSTRAINT follow_requests_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** lows_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** identities_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** orts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.imports
    ADD CONSTRAINT imports_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ites_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.invites
    ADD CONSTRAINT invites_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ts list_accounts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT list_accounts_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** kers_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.markers
    ADD CONSTRAINT markers_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** hments media_attachments_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT media_attachments_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ntions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.mentions
    ADD CONSTRAINT mentions_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.mutes
    ADD CONSTRAINT mutes_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ns notifications_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s_grants oauth_access_grants_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** cations oauth_applications_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** e_stats pghero_space_stats_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.pghero_space_stats
    ADD CONSTRAINT pghero_space_stats_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** poll_votes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.poll_votes
    ADD CONSTRAINT poll_votes_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ds preview_cards_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.preview_cards
    ADD CONSTRAINT preview_cards_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ys_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.relays
    ADD CONSTRAINT relays_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s report_notes_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.report_notes
    ADD CONSTRAINT report_notes_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** orts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** tatuses scheduled_statuses_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.scheduled_statuses
    ADD CONSTRAINT scheduled_statuses_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ations schema_migrations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- SQLINES DEMO *** ivations session_activations_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.session_activations
    ADD CONSTRAINT session_activations_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ttings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s site_uploads_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.site_uploads
    ADD CONSTRAINT site_uploads_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO ***  status_pins_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.status_pins
    ADD CONSTRAINT status_pins_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s status_stats_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.status_stats
    ADD CONSTRAINT status_stats_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** atuses_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** key; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** tombstones_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.tombstones
    ADD CONSTRAINT tombstones_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _requests user_invite_requests_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.user_invite_requests
    ADD CONSTRAINT user_invite_requests_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** bscriptions web_push_subscriptions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.web_push_subscriptions
    ADD CONSTRAINT web_push_subscriptions_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** s web_settings_pkey; Type: CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.web_settings
    ADD CONSTRAINT web_settings_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ivity; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX account_activity ON dbo.notifications USING dbo.btree (account_id, activity_id, activity_type);


--
-- SQLINES DEMO *** nt_aliases_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_aliases_on_account_id ON dbo.account_aliases USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_conversations_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_conversations_on_account_id ON dbo.account_conversations USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_conversations_on_conversation_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_conversations_on_conversation_id ON dbo.account_conversations USING dbo.btree (conversation_id);


--
-- SQLINES DEMO *** nt_domain_blocks_on_account_id_and_domain; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_account_domain_blocks_on_account_id_and_domain ON dbo.account_domain_blocks USING dbo.btree (account_id, domain);


--
-- SQLINES DEMO *** nt_identity_proofs_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_identity_proofs_on_account_id ON dbo.account_identity_proofs USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_migrations_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_migrations_on_account_id ON dbo.account_migrations USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_migrations_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_migrations_on_target_account_id ON dbo.account_migrations USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** nt_moderation_notes_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_moderation_notes_on_account_id ON dbo.account_moderation_notes USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_moderation_notes_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_moderation_notes_on_target_account_id ON dbo.account_moderation_notes USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** nt_pins_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_pins_on_account_id ON dbo.account_pins USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_pins_on_account_id_and_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_account_pins_on_account_id_and_target_account_id ON dbo.account_pins USING dbo.btree (account_id, target_account_id);


--
-- SQLINES DEMO *** nt_pins_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_pins_on_target_account_id ON dbo.account_pins USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** nt_proofs_on_account_and_provider_and_username; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_account_proofs_on_account_and_provider_and_username ON dbo.account_identity_proofs USING dbo.btree (account_id, provider, provider_username);


--
-- SQLINES DEMO *** nt_stats_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_account_stats_on_account_id ON dbo.account_stats USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_tag_stats_on_tag_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_account_tag_stats_on_tag_id ON dbo.account_tag_stats USING dbo.btree (tag_id);


--
-- SQLINES DEMO *** nt_warnings_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_warnings_on_account_id ON dbo.account_warnings USING dbo.btree (account_id);


--
-- SQLINES DEMO *** nt_warnings_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_account_warnings_on_target_account_id ON dbo.account_warnings USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** nts_on_moved_to_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_accounts_on_moved_to_account_id ON dbo.accounts USING dbo.btree (moved_to_account_id);


--
-- SQLINES DEMO *** nts_on_uri; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_accounts_on_uri ON dbo.accounts USING dbo.btree (uri);


--
-- SQLINES DEMO *** nts_on_url; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_accounts_on_url ON dbo.accounts USING dbo.btree (url);


--
-- SQLINES DEMO *** nts_on_username_and_domain_lower; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_accounts_on_username_and_domain_lower ON dbo.accounts USING dbo.btree (lower(cast((username) as varchar(max))), lower(cast((domain) as varchar(max))));


--
-- SQLINES DEMO *** nts_tags_on_account_id_and_tag_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_accounts_tags_on_account_id_and_tag_id ON dbo.accounts_tags USING dbo.btree (account_id, tag_id);


--
-- SQLINES DEMO *** nts_tags_on_tag_id_and_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_accounts_tags_on_tag_id_and_account_id ON dbo.accounts_tags USING dbo.btree (tag_id, account_id);


--
-- SQLINES DEMO *** _action_logs_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_admin_action_logs_on_account_id ON dbo.admin_action_logs USING dbo.btree (account_id);


--
-- SQLINES DEMO *** _action_logs_on_target_type_and_target_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_admin_action_logs_on_target_type_and_target_id ON dbo.admin_action_logs USING dbo.btree (target_type, target_id);


--
-- SQLINES DEMO *** ncement_mutes_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_announcement_mutes_on_account_id ON dbo.announcement_mutes USING dbo.btree (account_id);


--
-- SQLINES DEMO *** ncement_mutes_on_account_id_and_announcement_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_announcement_mutes_on_account_id_and_announcement_id ON dbo.announcement_mutes USING dbo.btree (account_id, announcement_id);


--
-- SQLINES DEMO *** ncement_mutes_on_announcement_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_announcement_mutes_on_announcement_id ON dbo.announcement_mutes USING dbo.btree (announcement_id);


--
-- SQLINES DEMO *** ncement_reactions_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_announcement_reactions_on_account_id ON dbo.announcement_reactions USING dbo.btree (account_id);


--
-- SQLINES DEMO *** ncement_reactions_on_account_id_and_announcement_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_announcement_reactions_on_account_id_and_announcement_id ON dbo.announcement_reactions USING dbo.btree (account_id, announcement_id, name);


--
-- SQLINES DEMO *** ncement_reactions_on_announcement_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_announcement_reactions_on_announcement_id ON dbo.announcement_reactions USING dbo.btree (announcement_id);


--
-- SQLINES DEMO *** ncement_reactions_on_custom_emoji_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_announcement_reactions_on_custom_emoji_id ON dbo.announcement_reactions USING dbo.btree (custom_emoji_id);


--
-- SQLINES DEMO *** s_on_account_id_and_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_blocks_on_account_id_and_target_account_id ON dbo.blocks USING dbo.btree (account_id, target_account_id);


--
-- SQLINES DEMO *** s_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_blocks_on_target_account_id ON dbo.blocks USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** arks_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_bookmarks_on_account_id ON dbo.bookmarks USING dbo.btree (account_id);


--
-- SQLINES DEMO *** arks_on_account_id_and_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_bookmarks_on_account_id_and_status_id ON dbo.bookmarks USING dbo.btree (account_id, status_id);


--
-- SQLINES DEMO *** arks_on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_bookmarks_on_status_id ON dbo.bookmarks USING dbo.btree (status_id);


--
-- SQLINES DEMO *** rsation_mutes_on_account_id_and_conversation_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_conversation_mutes_on_account_id_and_conversation_id ON dbo.conversation_mutes USING dbo.btree (account_id, conversation_id);


--
-- SQLINES DEMO *** rsations_on_uri; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_conversations_on_uri ON dbo.conversations USING dbo.btree (uri);


--
-- SQLINES DEMO *** m_emoji_categories_on_name; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_custom_emoji_categories_on_name ON dbo.custom_emoji_categories USING dbo.btree (name);


--
-- SQLINES DEMO *** m_emojis_on_shortcode_and_domain; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_custom_emojis_on_shortcode_and_domain ON dbo.custom_emojis USING dbo.btree (shortcode, domain);


--
-- SQLINES DEMO *** m_filters_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_custom_filters_on_account_id ON dbo.custom_filters USING dbo.btree (account_id);


--
-- SQLINES DEMO *** n_allows_on_domain; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_domain_allows_on_domain ON dbo.domain_allows USING dbo.btree (domain);


--
-- SQLINES DEMO *** n_blocks_on_domain; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_domain_blocks_on_domain ON dbo.domain_blocks USING dbo.btree (domain);


--
-- SQLINES DEMO *** _domain_blocks_on_domain; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_email_domain_blocks_on_domain ON dbo.email_domain_blocks USING dbo.btree (domain);


--
-- SQLINES DEMO *** rites_on_account_id_and_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_favourites_on_account_id_and_id ON dbo.favourites USING dbo.btree (account_id, id);


--
-- SQLINES DEMO *** rites_on_account_id_and_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_favourites_on_account_id_and_status_id ON dbo.favourites USING dbo.btree (account_id, status_id);


--
-- SQLINES DEMO *** rites_on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_favourites_on_status_id ON dbo.favourites USING dbo.btree (status_id);


--
-- SQLINES DEMO *** red_tags_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_featured_tags_on_account_id ON dbo.featured_tags USING dbo.btree (account_id);


--
-- SQLINES DEMO *** red_tags_on_tag_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_featured_tags_on_tag_id ON dbo.featured_tags USING dbo.btree (tag_id);


--
-- SQLINES DEMO *** w_requests_on_account_id_and_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_follow_requests_on_account_id_and_target_account_id ON dbo.follow_requests USING dbo.btree (account_id, target_account_id);


--
-- SQLINES DEMO *** ws_on_account_id_and_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_follows_on_account_id_and_target_account_id ON dbo.follows USING dbo.btree (account_id, target_account_id);


--
-- SQLINES DEMO *** ws_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_follows_on_target_account_id ON dbo.follows USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** ities_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_identities_on_user_id ON dbo.identities USING dbo.btree (user_id);


--
-- SQLINES DEMO *** es_on_code; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_invites_on_code ON dbo.invites USING dbo.btree (code);


--
-- SQLINES DEMO *** es_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_invites_on_user_id ON dbo.invites USING dbo.btree (user_id);


--
-- SQLINES DEMO *** accounts_on_account_id_and_list_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_list_accounts_on_account_id_and_list_id ON dbo.list_accounts USING dbo.btree (account_id, list_id);


--
-- SQLINES DEMO *** accounts_on_follow_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_list_accounts_on_follow_id ON dbo.list_accounts USING dbo.btree (follow_id);


--
-- SQLINES DEMO *** accounts_on_list_id_and_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_list_accounts_on_list_id_and_account_id ON dbo.list_accounts USING dbo.btree (list_id, account_id);


--
-- SQLINES DEMO *** _on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_lists_on_account_id ON dbo.lists USING dbo.btree (account_id);


--
-- SQLINES DEMO *** rs_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_markers_on_user_id ON dbo.markers USING dbo.btree (user_id);


--
-- SQLINES DEMO *** rs_on_user_id_and_timeline; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_markers_on_user_id_and_timeline ON dbo.markers USING dbo.btree (user_id, timeline);


--
-- SQLINES DEMO *** _attachments_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_media_attachments_on_account_id ON dbo.media_attachments USING dbo.btree (account_id);


--
-- SQLINES DEMO *** _attachments_on_scheduled_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_media_attachments_on_scheduled_status_id ON dbo.media_attachments USING dbo.btree (scheduled_status_id);


--
-- SQLINES DEMO *** _attachments_on_shortcode; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_media_attachments_on_shortcode ON dbo.media_attachments USING dbo.btree (shortcode);


--
-- SQLINES DEMO *** _attachments_on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_media_attachments_on_status_id ON dbo.media_attachments USING dbo.btree (status_id);


--
-- SQLINES DEMO *** ons_on_account_id_and_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_mentions_on_account_id_and_status_id ON dbo.mentions USING dbo.btree (account_id, status_id);


--
-- SQLINES DEMO *** ons_on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_mentions_on_status_id ON dbo.mentions USING dbo.btree (status_id);


--
-- SQLINES DEMO *** _on_account_id_and_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_mutes_on_account_id_and_target_account_id ON dbo.mutes USING dbo.btree (account_id, target_account_id);


--
-- SQLINES DEMO *** _on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_mutes_on_target_account_id ON dbo.mutes USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** ications_on_account_id_and_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_notifications_on_account_id_and_id ON dbo.notifications USING btree (account_id, id DESC);


--
-- SQLINES DEMO *** ications_on_activity_id_and_activity_type; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_notifications_on_activity_id_and_activity_type ON dbo.notifications USING dbo.btree (activity_id, activity_type);


--
-- SQLINES DEMO *** ications_on_from_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_notifications_on_from_account_id ON dbo.notifications USING dbo.btree (from_account_id);


--
-- SQLINES DEMO *** _access_grants_on_resource_owner_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_oauth_access_grants_on_resource_owner_id ON dbo.oauth_access_grants USING dbo.btree (resource_owner_id);


--
-- SQLINES DEMO *** _access_grants_on_token; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_oauth_access_grants_on_token ON dbo.oauth_access_grants USING dbo.btree (token);


--
-- SQLINES DEMO *** _access_tokens_on_refresh_token; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_oauth_access_tokens_on_refresh_token ON dbo.oauth_access_tokens USING dbo.btree (refresh_token);


--
-- SQLINES DEMO *** _access_tokens_on_resource_owner_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_oauth_access_tokens_on_resource_owner_id ON dbo.oauth_access_tokens USING dbo.btree (resource_owner_id);


--
-- SQLINES DEMO *** _access_tokens_on_token; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_oauth_access_tokens_on_token ON dbo.oauth_access_tokens USING dbo.btree (token);


--
-- SQLINES DEMO *** _applications_on_owner_id_and_owner_type; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_oauth_applications_on_owner_id_and_owner_type ON dbo.oauth_applications USING dbo.btree (owner_id, owner_type);


--
-- SQLINES DEMO *** _applications_on_uid; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_oauth_applications_on_uid ON dbo.oauth_applications USING dbo.btree (uid);


--
-- SQLINES DEMO *** o_space_stats_on_database_and_captured_at; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_pghero_space_stats_on_database_and_captured_at ON dbo.pghero_space_stats USING dbo.btree (database, captured_at);


--
-- SQLINES DEMO *** votes_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_poll_votes_on_account_id ON dbo.poll_votes USING dbo.btree (account_id);


--
-- SQLINES DEMO *** votes_on_poll_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_poll_votes_on_poll_id ON dbo.poll_votes USING dbo.btree (poll_id);


--
-- SQLINES DEMO *** _on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_polls_on_account_id ON dbo.polls USING dbo.btree (account_id);


--
-- SQLINES DEMO *** _on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_polls_on_status_id ON dbo.polls USING dbo.btree (status_id);


--
-- SQLINES DEMO *** ew_cards_on_url; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_preview_cards_on_url ON dbo.preview_cards USING dbo.btree (url);


--
-- SQLINES DEMO *** ew_cards_statuses_on_status_id_and_preview_card_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_preview_cards_statuses_on_status_id_and_preview_card_id ON dbo.preview_cards_statuses USING dbo.btree (status_id, preview_card_id);


--
-- SQLINES DEMO *** t_notes_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_report_notes_on_account_id ON dbo.report_notes USING dbo.btree (account_id);


--
-- SQLINES DEMO *** t_notes_on_report_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_report_notes_on_report_id ON dbo.report_notes USING dbo.btree (report_id);


--
-- SQLINES DEMO *** ts_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_reports_on_account_id ON dbo.reports USING dbo.btree (account_id);


--
-- SQLINES DEMO *** ts_on_target_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_reports_on_target_account_id ON dbo.reports USING dbo.btree (target_account_id);


--
-- SQLINES DEMO *** uled_statuses_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_scheduled_statuses_on_account_id ON dbo.scheduled_statuses USING dbo.btree (account_id);


--
-- SQLINES DEMO *** uled_statuses_on_scheduled_at; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_scheduled_statuses_on_scheduled_at ON dbo.scheduled_statuses USING dbo.btree (scheduled_at);


--
-- SQLINES DEMO *** on_activations_on_access_token_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_session_activations_on_access_token_id ON dbo.session_activations USING dbo.btree (access_token_id);


--
-- SQLINES DEMO *** on_activations_on_session_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_session_activations_on_session_id ON dbo.session_activations USING dbo.btree (session_id);


--
-- SQLINES DEMO *** on_activations_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_session_activations_on_user_id ON dbo.session_activations USING dbo.btree (user_id);


--
-- SQLINES DEMO *** ngs_on_thing_type_and_thing_id_and_var; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_settings_on_thing_type_and_thing_id_and_var ON dbo.settings USING dbo.btree (thing_type, thing_id, var);


--
-- SQLINES DEMO *** uploads_on_var; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_site_uploads_on_var ON dbo.site_uploads USING dbo.btree (var);


--
-- SQLINES DEMO *** s_pins_on_account_id_and_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_status_pins_on_account_id_and_status_id ON dbo.status_pins USING dbo.btree (account_id, status_id);


--
-- SQLINES DEMO *** s_stats_on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_status_stats_on_status_id ON dbo.status_stats USING dbo.btree (status_id);


--
-- SQLINES DEMO *** ses_20190820; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_20190820 ON dbo.statuses USING btree (account_id, id DESC, visibility, updated_at) WHERE (deleted_at IS NULL);


--
-- SQLINES DEMO *** ses_local_20190824; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_local_20190824 ON dbo.statuses USING btree (id DESC, account_id) WHERE ((local OR (uri IS NULL)) AND (deleted_at IS NULL) AND (visibility = 0) AND (reblog_of_id IS NULL) AND ((NOT reply) OR (in_reply_to_account_id = account_id)));


--
-- SQLINES DEMO *** ses_on_in_reply_to_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_on_in_reply_to_account_id ON dbo.statuses USING dbo.btree (in_reply_to_account_id);


--
-- SQLINES DEMO *** ses_on_in_reply_to_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_on_in_reply_to_id ON dbo.statuses USING dbo.btree (in_reply_to_id);


--
-- SQLINES DEMO *** ses_on_reblog_of_id_and_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_on_reblog_of_id_and_account_id ON dbo.statuses USING dbo.btree (reblog_of_id, account_id);


--
-- SQLINES DEMO *** ses_on_uri; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_statuses_on_uri ON dbo.statuses USING dbo.btree (uri);


--
-- SQLINES DEMO *** ses_dbo_20200119; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_dbo_20200119 ON dbo.statuses USING btree (id DESC, account_id) WHERE ((deleted_at IS NULL) AND (visibility = 0) AND (reblog_of_id IS NULL) AND ((NOT reply) OR (in_reply_to_account_id = account_id)));


--
-- SQLINES DEMO *** ses_tags_on_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_statuses_tags_on_status_id ON dbo.statuses_tags USING dbo.btree (status_id);


--
-- SQLINES DEMO *** ses_tags_on_tag_id_and_status_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_statuses_tags_on_tag_id_and_status_id ON dbo.statuses_tags USING dbo.btree (tag_id, status_id);


--
-- SQLINES DEMO *** on_name_lower; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_tags_on_name_lower ON dbo.tags USING dbo.btree (lower(cast((name) as varchar(max))));


--
-- SQLINES DEMO *** tones_on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_tombstones_on_account_id ON dbo.tombstones USING dbo.btree (account_id);


--
-- SQLINES DEMO *** tones_on_uri; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_tombstones_on_uri ON dbo.tombstones USING dbo.btree (uri);


--
-- SQLINES DEMO *** e_conversations; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_unique_conversations ON dbo.account_conversations USING dbo.btree (account_id, conversation_id, participant_account_ids);


--
-- SQLINES DEMO *** invite_requests_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_user_invite_requests_on_user_id ON dbo.user_invite_requests USING dbo.btree (user_id);


--
-- SQLINES DEMO *** _on_account_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_users_on_account_id ON dbo.users USING dbo.btree (account_id);


--
-- SQLINES DEMO *** _on_confirmation_token; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_users_on_confirmation_token ON dbo.users USING dbo.btree (confirmation_token);


--
-- SQLINES DEMO *** _on_created_by_application_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_users_on_created_by_application_id ON dbo.users USING dbo.btree (created_by_application_id);


--
-- SQLINES DEMO *** _on_email; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_users_on_email ON dbo.users USING dbo.btree (email);


--
-- SQLINES DEMO *** _on_remember_token; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_users_on_remember_token ON dbo.users USING dbo.btree (remember_token);


--
-- SQLINES DEMO *** _on_reset_password_token; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_users_on_reset_password_token ON dbo.users USING dbo.btree (reset_password_token);


--
-- SQLINES DEMO *** ush_subscriptions_on_access_token_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_web_push_subscriptions_on_access_token_id ON dbo.web_push_subscriptions USING dbo.btree (access_token_id);


--
-- SQLINES DEMO *** ush_subscriptions_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX index_web_push_subscriptions_on_user_id ON dbo.web_push_subscriptions USING dbo.btree (user_id);


--
-- SQLINES DEMO *** ettings_on_user_id; Type: INDEX; Schema: dbo; Owner: prisma
--

--UNIQUE INDEX index_web_settings_on_user_id ON dbo.web_settings USING dbo.btree (user_id);


--
-- SQLINES DEMO *** x; Type: INDEX; Schema: dbo; Owner: prisma
--
--CREATE INDEX search_index ON dbo.accounts USING dbo.gin (((ISNULL((isnull(dbo.setweight(dbo.to_tsvector(cast('simple' as regconfig), cast((display_name) as varchar(max))), Cast('A' As "char")), '') + isnull(dbo.setweight(dbo.to_tsvector(cast('simple' as regconfig), cast((username) as varchar(max))), Cast('B' As "char")), '')), '') + isnull(dbo.setweight(dbo.to_tsvector(cast('simple' as regconfig), cast((COALESCE(domain, cast('' as character varying))) as varchar(max))), Cast('C' As "char")), ''))));


--
-- SQLINES DEMO *** s fk_11910667b2; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.web_settings
    ADD CONSTRAINT fk_11910667b2 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** ain_blocks fk_206c6029bd; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_domain_blocks
    ADD CONSTRAINT fk_206c6029bd FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** n_mutes fk_225b4212bb; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.conversation_mutes
    ADD CONSTRAINT fk_225b4212bb FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** gs fk_3081861e21; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses_tags
    ADD CONSTRAINT fk_3081861e21 FOREIGN KEY (tag_id) REFERENCES dbo.tags(id);


--
-- SQLINES DEMO *** 32ed1b5560; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.follows
    ADD CONSTRAINT fk_32ed1b5560 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** s_grants fk_34d54b0a33; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_access_grants
    ADD CONSTRAINT fk_34d54b0a33 FOREIGN KEY (application_id) REFERENCES dbo.oauth_applications(id);


--
-- SQLINES DEMO *** 269e03e65; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.blocks
    ADD CONSTRAINT fk_4269e03e65 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** 4b81f7522c; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_4b81f7522c FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** 500f500d; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT fk_50500f500d FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** fk_5eb6c2b873; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.favourites
    ADD CONSTRAINT fk_5eb6c2b873 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** s_grants fk_63b044929b; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_access_grants
    ADD CONSTRAINT fk_63b044929b FOREIGN KEY (resource_owner_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** 6db1b6e408; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.imports
    ADD CONSTRAINT fk_6db1b6e408 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** 745ca29eac; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.follows
    ADD CONSTRAINT fk_745ca29eac FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ests fk_76d644b0e7; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.follow_requests
    ADD CONSTRAINT fk_76d644b0e7 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ests fk_9291ec025d; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.follow_requests
    ADD CONSTRAINT fk_9291ec025d FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** 571bfabc1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.blocks
    ADD CONSTRAINT fk_9571bfabc1 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ivations fk_957e5bda89; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.session_activations
    ADD CONSTRAINT fk_957e5bda89 FOREIGN KEY (access_token_id) REFERENCES dbo.oauth_access_tokens(id);


--
-- SQLINES DEMO *** hments fk_96dd81e81b; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT fk_96dd81e81b FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _970d43f9d1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.mentions
    ADD CONSTRAINT fk_970d43f9d1 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _9bda1543f7; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_9bda1543f7 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** cations fk_b0988c7c0a; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_applications
    ADD CONSTRAINT fk_b0988c7c0a FOREIGN KEY (owner_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** fk_b0e856845e; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.favourites
    ADD CONSTRAINT fk_b0e856845e FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** d8daf315; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.mutes
    ADD CONSTRAINT fk_b8d8daf315 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** bca45b75fd; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_bca45b75fd FOREIGN KEY (action_taken_by_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** fk_bea040f377; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.identities
    ADD CONSTRAINT fk_bea040f377 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** ns fk_c141c8ee55; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.notifications
    ADD CONSTRAINT fk_c141c8ee55 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _c7fa917661; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_c7fa917661 FOREIGN KEY (in_reply_to_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO ***  fk_d4cb435b62; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.status_pins
    ADD CONSTRAINT fk_d4cb435b62 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ivations fk_e5fda67334; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.session_activations
    ADD CONSTRAINT fk_e5fda67334 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** s_tokens fk_e84df68546; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_access_tokens
    ADD CONSTRAINT fk_e84df68546 FOREIGN KEY (resource_owner_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** eb37af34f0; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_eb37af34f0 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** cff219ea; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.mutes
    ADD CONSTRAINT fk_eecff219ea FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** s_tokens fk_f5fc4c1ee3; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.oauth_access_tokens
    ADD CONSTRAINT fk_f5fc4c1ee3 FOREIGN KEY (application_id) REFERENCES dbo.oauth_applications(id);


--
-- SQLINES DEMO *** ns fk_fbd6b0bf9e; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.notifications
    ADD CONSTRAINT fk_fbd6b0bf9e FOREIGN KEY (from_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** rails_096669d221; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.backups
    ADD CONSTRAINT fk_rails_096669d221 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** k_rails_11207ffcfd; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.bookmarks
    ADD CONSTRAINT fk_rails_11207ffcfd FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** versations fk_rails_1491654f9f; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_conversations
    ADD CONSTRAINT fk_rails_1491654f9f FOREIGN KEY (conversation_id) REFERENCES dbo.conversations(id);


--
-- SQLINES DEMO *** gs fk_rails_174efcf15f; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.featured_tags
    ADD CONSTRAINT fk_rails_174efcf15f FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _stats fk_rails_1fa34bab2d; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_tag_stats
    ADD CONSTRAINT fk_rails_1fa34bab2d FOREIGN KEY (tag_id) REFERENCES dbo.tags(id);


--
-- SQLINES DEMO *** ts fk_rails_215bb31ff1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_stats
    ADD CONSTRAINT fk_rails_215bb31ff1 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _rails_2320833084; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.accounts
    ADD CONSTRAINT fk_rails_2320833084 FOREIGN KEY (moved_to_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** gs fk_rails_23a9055c7c; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.featured_tags
    ADD CONSTRAINT fk_rails_23a9055c7c FOREIGN KEY (tag_id) REFERENCES dbo.tags(id);


--
-- SQLINES DEMO *** tatuses fk_rails_23bd9018f9; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.scheduled_statuses
    ADD CONSTRAINT fk_rails_23bd9018f9 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _rails_256483a9ab; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_rails_256483a9ab FOREIGN KEY (reblog_of_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** hments fk_rails_31fc5aeef1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT fk_rails_31fc5aeef1 FOREIGN KEY (scheduled_status_id) REFERENCES dbo.scheduled_statuses(id);


--
-- SQLINES DEMO *** _requests fk_rails_3773f15361; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.user_invite_requests
    ADD CONSTRAINT fk_rails_3773f15361 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** ils_3853b78dac; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.lists
    ADD CONSTRAINT fk_rails_3853b78dac FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ils_3e0d9f1115; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.polls
    ADD CONSTRAINT fk_rails_3e0d9f1115 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** hments fk_rails_3ec0cfdd70; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.media_attachments
    ADD CONSTRAINT fk_rails_3ec0cfdd70 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** eration_notes fk_rails_3f8b75089b; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_moderation_notes
    ADD CONSTRAINT fk_rails_3f8b75089b FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ts fk_rails_40f9cc29f1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT fk_rails_40f9cc29f1 FOREIGN KEY (follow_id) REFERENCES dbo.follows(id);


--
-- SQLINES DEMO *** s fk_rails_4a247aac42; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.status_stats
    ADD CONSTRAINT fk_rails_4a247aac42 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** rails_4e7a498fb4; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT fk_rails_4e7a498fb4 FOREIGN KEY (assigned_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** _rails_59edbe2887; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.mentions
    ADD CONSTRAINT fk_rails_59edbe2887 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** n_mutes fk_rails_5ab139311f; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.conversation_mutes
    ADD CONSTRAINT fk_rails_5ab139311f FOREIGN KEY (conversation_id) REFERENCES dbo.conversations(id);


--
-- SQLINES DEMO *** ils_5b19a0c011; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.polls
    ADD CONSTRAINT fk_rails_5b19a0c011 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO ***  fk_rails_65c05552f1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.status_pins
    ADD CONSTRAINT fk_rails_65c05552f1 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** ntity_proofs fk_rails_6a219ca385; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_identity_proofs
    ADD CONSTRAINT fk_rails_6a219ca385 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** versations fk_rails_6f5278b6e9; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_conversations
    ADD CONSTRAINT fk_rails_6f5278b6e9 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** t_reactions fk_rails_7444ad831f; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT fk_rails_7444ad831f FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** bscriptions fk_rails_751a9f390b; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.web_push_subscriptions
    ADD CONSTRAINT fk_rails_751a9f390b FOREIGN KEY (access_token_id) REFERENCES dbo.oauth_access_tokens(id);


--
-- SQLINES DEMO *** s fk_rails_7fa83a61eb; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.report_notes
    ADD CONSTRAINT fk_rails_7fa83a61eb FOREIGN KEY (report_id) REFERENCES dbo.reports(id);


--
-- SQLINES DEMO *** ts fk_rails_85fee9d6ab; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT fk_rails_85fee9d6ab FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ers fk_rails_8b8d786993; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.custom_filters
    ADD CONSTRAINT fk_rails_8b8d786993 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ils_8fb2a43e88; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT fk_rails_8fb2a43e88 FOREIGN KEY (invite_id) REFERENCES dbo.invites(id);


--
-- SQLINES DEMO *** _rails_94a6f70399; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses
    ADD CONSTRAINT fk_rails_94a6f70399 FOREIGN KEY (in_reply_to_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** t_mutes fk_rails_9c99f8e835; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_mutes
    ADD CONSTRAINT fk_rails_9c99f8e835 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** k_rails_9f6ac182a6; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.bookmarks
    ADD CONSTRAINT fk_rails_9f6ac182a6 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** t_reactions fk_rails_a1226eaa5c; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT fk_rails_a1226eaa5c FOREIGN KEY (announcement_id) REFERENCES dbo.announcements(id);


--
-- SQLINES DEMO *** s fk_rails_a176e26c37; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_pins
    ADD CONSTRAINT fk_rails_a176e26c37 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** nings fk_rails_a65a1bf71b; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_warnings
    ADD CONSTRAINT fk_rails_a65a1bf71b FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** fk_rails_a6e6974b7e; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.poll_votes
    ADD CONSTRAINT fk_rails_a6e6974b7e FOREIGN KEY (poll_id) REFERENCES dbo.polls(id);


--
-- SQLINES DEMO *** rails_a7009bc2b6; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.markers
    ADD CONSTRAINT fk_rails_a7009bc2b6 FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** n_logs fk_rails_a7667297fa; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.admin_action_logs
    ADD CONSTRAINT fk_rails_a7667297fa FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** nings fk_rails_a7ebbb1e37; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_warnings
    ADD CONSTRAINT fk_rails_a7ebbb1e37 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** bscriptions fk_rails_b006f28dac; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.web_push_subscriptions
    ADD CONSTRAINT fk_rails_b006f28dac FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** fk_rails_b6c18cf44a; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.poll_votes
    ADD CONSTRAINT fk_rails_b6c18cf44a FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** t_reactions fk_rails_b742c91c0e; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_reactions
    ADD CONSTRAINT fk_rails_b742c91c0e FOREIGN KEY (custom_emoji_id) REFERENCES dbo.custom_emojis(id);


--
-- SQLINES DEMO *** rations fk_rails_c9f701caaf; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_migrations
    ADD CONSTRAINT fk_rails_c9f701caaf FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** s fk_rails_cae66353f3; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.report_notes
    ADD CONSTRAINT fk_rails_cae66353f3 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** s fk_rails_d44979e5dd; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_pins
    ADD CONSTRAINT fk_rails_d44979e5dd FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** rations fk_rails_d9a8dad070; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_migrations
    ADD CONSTRAINT fk_rails_d9a8dad070 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** eration_notes fk_rails_dd62ed5ac3; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_moderation_notes
    ADD CONSTRAINT fk_rails_dd62ed5ac3 FOREIGN KEY (target_account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** gs fk_rails_df0fe11427; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.statuses_tags
    ADD CONSTRAINT fk_rails_df0fe11427 FOREIGN KEY (status_id) REFERENCES dbo.statuses(id);


--
-- SQLINES DEMO *** t_mutes fk_rails_e35401adf1; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.announcement_mutes
    ADD CONSTRAINT fk_rails_e35401adf1 FOREIGN KEY (announcement_id) REFERENCES dbo.announcements(id);


--
-- SQLINES DEMO *** ts fk_rails_e54e356c88; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.list_accounts
    ADD CONSTRAINT fk_rails_e54e356c88 FOREIGN KEY (list_id) REFERENCES dbo.lists(id);


--
-- SQLINES DEMO *** ils_ecc9536e7c; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT fk_rails_ecc9536e7c FOREIGN KEY (created_by_application_id) REFERENCES dbo.oauth_applications(id);


--
-- SQLINES DEMO *** fk_rails_f95b861449; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.tombstones
    ADD CONSTRAINT fk_rails_f95b861449 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** ases fk_rails_fc91575d08; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.account_aliases
    ADD CONSTRAINT fk_rails_fc91575d08 FOREIGN KEY (account_id) REFERENCES dbo.accounts(id);


--
-- SQLINES DEMO *** rails_ff69dbb2ac; Type: FK CONSTRAINT; Schema: dbo; Owner: prisma
--

ALTER TABLE  dbo.invites
    ADD CONSTRAINT fk_rails_ff69dbb2ac FOREIGN KEY (user_id) REFERENCES dbo.users(id);


--
-- SQLINES DEMO *** se dump complete
--

