--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: timestamp_id(text); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.timestamp_id(table_name text) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
  DECLARE
    time_part bigint;
    sequence_base bigint;
    tail bigint;
  BEGIN
    time_part := (
      -- Get the time in milliseconds
      ((date_part('epoch', now()) * 1000))::bigint
      -- And shift it over two bytes
      << 16);

    sequence_base := (
      'x' ||
      -- Take the first two bytes (four hex characters)
      substr(
        -- Of the MD5 hash of the data we documented
        md5(table_name ||
          'e8f7e67b68e3c8a94a64e38fefd6eee1' ||
          time_part::text
        ),
        1, 4
      )
    -- And turn it into a bigint
    )::bit(16)::bigint;

    -- Finally, add our sequence number to our base, and chop
    -- it to the last two bytes
    tail := (
      (sequence_base + nextval(table_name || '_id_seq'))
      & 65535);

    -- Return the time part and the sequence part. OR appears
    -- faster here than addition, but they're equivalent:
    -- time_part has no trailing two bytes, and tail is only
    -- the last two bytes.
    RETURN time_part | tail;
  END
$$;


ALTER FUNCTION public.timestamp_id(table_name text) OWNER TO prisma;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: account_aliases; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_aliases (
    id bigint NOT NULL,
    account_id bigint,
    acct character varying DEFAULT ''::character varying NOT NULL,
    uri character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_aliases OWNER TO prisma;

--
-- Name: account_aliases_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_aliases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_aliases_id_seq OWNER TO prisma;

--
-- Name: account_aliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_aliases_id_seq OWNED BY public.account_aliases.id;


--
-- Name: account_conversations; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_conversations (
    id bigint NOT NULL,
    account_id bigint,
    conversation_id bigint,
    participant_account_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    status_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    last_status_id bigint,
    lock_version integer DEFAULT 0 NOT NULL,
    unread boolean DEFAULT false NOT NULL
);


ALTER TABLE public.account_conversations OWNER TO prisma;

--
-- Name: account_conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_conversations_id_seq OWNER TO prisma;

--
-- Name: account_conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_conversations_id_seq OWNED BY public.account_conversations.id;


--
-- Name: account_domain_blocks; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_domain_blocks (
    id bigint NOT NULL,
    domain character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint
);


ALTER TABLE public.account_domain_blocks OWNER TO prisma;

--
-- Name: account_domain_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_domain_blocks_id_seq OWNER TO prisma;

--
-- Name: account_domain_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_domain_blocks_id_seq OWNED BY public.account_domain_blocks.id;


--
-- Name: account_identity_proofs; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_identity_proofs (
    id bigint NOT NULL,
    account_id bigint,
    provider character varying DEFAULT ''::character varying NOT NULL,
    provider_username character varying DEFAULT ''::character varying NOT NULL,
    token text DEFAULT ''::text NOT NULL,
    verified boolean DEFAULT false NOT NULL,
    live boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_identity_proofs OWNER TO prisma;

--
-- Name: account_identity_proofs_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_identity_proofs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_identity_proofs_id_seq OWNER TO prisma;

--
-- Name: account_identity_proofs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_identity_proofs_id_seq OWNED BY public.account_identity_proofs.id;


--
-- Name: account_migrations; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_migrations (
    id bigint NOT NULL,
    account_id bigint,
    acct character varying DEFAULT ''::character varying NOT NULL,
    followers_count bigint DEFAULT 0 NOT NULL,
    target_account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_migrations OWNER TO prisma;

--
-- Name: account_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_migrations_id_seq OWNER TO prisma;

--
-- Name: account_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_migrations_id_seq OWNED BY public.account_migrations.id;


--
-- Name: account_moderation_notes; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_moderation_notes (
    id bigint NOT NULL,
    content text NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_moderation_notes OWNER TO prisma;

--
-- Name: account_moderation_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_moderation_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_moderation_notes_id_seq OWNER TO prisma;

--
-- Name: account_moderation_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_moderation_notes_id_seq OWNED BY public.account_moderation_notes.id;


--
-- Name: account_pins; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_pins (
    id bigint NOT NULL,
    account_id bigint,
    target_account_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_pins OWNER TO prisma;

--
-- Name: account_pins_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_pins_id_seq OWNER TO prisma;

--
-- Name: account_pins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_pins_id_seq OWNED BY public.account_pins.id;


--
-- Name: account_stats; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_stats (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    statuses_count bigint DEFAULT 0 NOT NULL,
    following_count bigint DEFAULT 0 NOT NULL,
    followers_count bigint DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    last_status_at timestamp without time zone,
    lock_version integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.account_stats OWNER TO prisma;

--
-- Name: account_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_stats_id_seq OWNER TO prisma;

--
-- Name: account_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_stats_id_seq OWNED BY public.account_stats.id;


--
-- Name: account_tag_stats; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_tag_stats (
    id bigint NOT NULL,
    tag_id bigint NOT NULL,
    accounts_count bigint DEFAULT 0 NOT NULL,
    hidden boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_tag_stats OWNER TO prisma;

--
-- Name: account_tag_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_tag_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_tag_stats_id_seq OWNER TO prisma;

--
-- Name: account_tag_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_tag_stats_id_seq OWNED BY public.account_tag_stats.id;


--
-- Name: account_warning_presets; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_warning_presets (
    id bigint NOT NULL,
    text text DEFAULT ''::text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_warning_presets OWNER TO prisma;

--
-- Name: account_warning_presets_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_warning_presets_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_warning_presets_id_seq OWNER TO prisma;

--
-- Name: account_warning_presets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_warning_presets_id_seq OWNED BY public.account_warning_presets.id;


--
-- Name: account_warnings; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.account_warnings (
    id bigint NOT NULL,
    account_id bigint,
    target_account_id bigint,
    action integer DEFAULT 0 NOT NULL,
    text text DEFAULT ''::text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.account_warnings OWNER TO prisma;

--
-- Name: account_warnings_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.account_warnings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_warnings_id_seq OWNER TO prisma;

--
-- Name: account_warnings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.account_warnings_id_seq OWNED BY public.account_warnings.id;


--
-- Name: accounts; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.accounts (
    id bigint NOT NULL,
    username character varying DEFAULT ''::character varying NOT NULL,
    domain character varying,
    secret character varying DEFAULT ''::character varying NOT NULL,
    private_key text,
    public_key text DEFAULT ''::text NOT NULL,
    remote_url character varying DEFAULT ''::character varying NOT NULL,
    salmon_url character varying DEFAULT ''::character varying NOT NULL,
    hub_url character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    note text DEFAULT ''::text NOT NULL,
    display_name character varying DEFAULT ''::character varying NOT NULL,
    uri character varying DEFAULT ''::character varying NOT NULL,
    url character varying,
    avatar_file_name character varying,
    avatar_content_type character varying,
    avatar_file_size integer,
    avatar_updated_at timestamp without time zone,
    header_file_name character varying,
    header_content_type character varying,
    header_file_size integer,
    header_updated_at timestamp without time zone,
    avatar_remote_url character varying,
    subscription_expires_at timestamp without time zone,
    locked boolean DEFAULT false NOT NULL,
    header_remote_url character varying DEFAULT ''::character varying NOT NULL,
    last_webfingered_at timestamp without time zone,
    inbox_url character varying DEFAULT ''::character varying NOT NULL,
    outbox_url character varying DEFAULT ''::character varying NOT NULL,
    shared_inbox_url character varying DEFAULT ''::character varying NOT NULL,
    followers_url character varying DEFAULT ''::character varying NOT NULL,
    protocol integer DEFAULT 0 NOT NULL,
    memorial boolean DEFAULT false NOT NULL,
    moved_to_account_id bigint,
    featured_collection_url character varying,
    fields jsonb,
    actor_type character varying,
    discoverable boolean,
    also_known_as character varying[],
    silenced_at timestamp without time zone,
    suspended_at timestamp without time zone,
    trust_level integer
);


ALTER TABLE public.accounts OWNER TO prisma;

--
-- Name: accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accounts_id_seq OWNER TO prisma;

--
-- Name: accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.accounts_id_seq OWNED BY public.accounts.id;


--
-- Name: accounts_tags; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.accounts_tags (
    account_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.accounts_tags OWNER TO prisma;

--
-- Name: admin_action_logs; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.admin_action_logs (
    id bigint NOT NULL,
    account_id bigint,
    action character varying DEFAULT ''::character varying NOT NULL,
    target_type character varying,
    target_id bigint,
    recorded_changes text DEFAULT ''::text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_action_logs OWNER TO prisma;

--
-- Name: admin_action_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.admin_action_logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_action_logs_id_seq OWNER TO prisma;

--
-- Name: admin_action_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.admin_action_logs_id_seq OWNED BY public.admin_action_logs.id;


--
-- Name: announcement_mutes; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.announcement_mutes (
    id bigint NOT NULL,
    account_id bigint,
    announcement_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.announcement_mutes OWNER TO prisma;

--
-- Name: announcement_mutes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.announcement_mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcement_mutes_id_seq OWNER TO prisma;

--
-- Name: announcement_mutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.announcement_mutes_id_seq OWNED BY public.announcement_mutes.id;


--
-- Name: announcement_reactions; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.announcement_reactions (
    id bigint NOT NULL,
    account_id bigint,
    announcement_id bigint,
    name character varying DEFAULT ''::character varying NOT NULL,
    custom_emoji_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.announcement_reactions OWNER TO prisma;

--
-- Name: announcement_reactions_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.announcement_reactions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcement_reactions_id_seq OWNER TO prisma;

--
-- Name: announcement_reactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.announcement_reactions_id_seq OWNED BY public.announcement_reactions.id;


--
-- Name: announcements; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.announcements (
    id bigint NOT NULL,
    text text DEFAULT ''::text NOT NULL,
    published boolean DEFAULT false NOT NULL,
    all_day boolean DEFAULT false NOT NULL,
    scheduled_at timestamp without time zone,
    starts_at timestamp without time zone,
    ends_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    published_at timestamp without time zone
);


ALTER TABLE public.announcements OWNER TO prisma;

--
-- Name: announcements_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.announcements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.announcements_id_seq OWNER TO prisma;

--
-- Name: announcements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.announcements_id_seq OWNED BY public.announcements.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO prisma;

--
-- Name: backups; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.backups (
    id bigint NOT NULL,
    user_id bigint,
    dump_file_name character varying,
    dump_content_type character varying,
    dump_updated_at timestamp without time zone,
    processed boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    dump_file_size bigint
);


ALTER TABLE public.backups OWNER TO prisma;

--
-- Name: backups_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.backups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.backups_id_seq OWNER TO prisma;

--
-- Name: backups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.backups_id_seq OWNED BY public.backups.id;


--
-- Name: blocks; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.blocks (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    uri character varying
);


ALTER TABLE public.blocks OWNER TO prisma;

--
-- Name: blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.blocks_id_seq OWNER TO prisma;

--
-- Name: blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.blocks_id_seq OWNED BY public.blocks.id;


--
-- Name: bookmarks; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.bookmarks (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.bookmarks OWNER TO prisma;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bookmarks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookmarks_id_seq OWNER TO prisma;

--
-- Name: bookmarks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.bookmarks_id_seq OWNED BY public.bookmarks.id;


--
-- Name: conversation_mutes; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.conversation_mutes (
    id bigint NOT NULL,
    conversation_id bigint NOT NULL,
    account_id bigint NOT NULL
);


ALTER TABLE public.conversation_mutes OWNER TO prisma;

--
-- Name: conversation_mutes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.conversation_mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversation_mutes_id_seq OWNER TO prisma;

--
-- Name: conversation_mutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.conversation_mutes_id_seq OWNED BY public.conversation_mutes.id;


--
-- Name: conversations; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.conversations (
    id bigint NOT NULL,
    uri character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.conversations OWNER TO prisma;

--
-- Name: conversations_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.conversations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.conversations_id_seq OWNER TO prisma;

--
-- Name: conversations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.conversations_id_seq OWNED BY public.conversations.id;


--
-- Name: custom_emoji_categories; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.custom_emoji_categories (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.custom_emoji_categories OWNER TO prisma;

--
-- Name: custom_emoji_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.custom_emoji_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_emoji_categories_id_seq OWNER TO prisma;

--
-- Name: custom_emoji_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.custom_emoji_categories_id_seq OWNED BY public.custom_emoji_categories.id;


--
-- Name: custom_emojis; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.custom_emojis (
    id bigint NOT NULL,
    shortcode character varying DEFAULT ''::character varying NOT NULL,
    domain character varying,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    disabled boolean DEFAULT false NOT NULL,
    uri character varying,
    image_remote_url character varying,
    visible_in_picker boolean DEFAULT true NOT NULL,
    category_id bigint
);


ALTER TABLE public.custom_emojis OWNER TO prisma;

--
-- Name: custom_emojis_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.custom_emojis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_emojis_id_seq OWNER TO prisma;

--
-- Name: custom_emojis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.custom_emojis_id_seq OWNED BY public.custom_emojis.id;


--
-- Name: custom_filters; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.custom_filters (
    id bigint NOT NULL,
    account_id bigint,
    expires_at timestamp without time zone,
    phrase text DEFAULT ''::text NOT NULL,
    context character varying[] DEFAULT '{}'::character varying[] NOT NULL,
    irreversible boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    whole_word boolean DEFAULT true NOT NULL
);


ALTER TABLE public.custom_filters OWNER TO prisma;

--
-- Name: custom_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.custom_filters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.custom_filters_id_seq OWNER TO prisma;

--
-- Name: custom_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.custom_filters_id_seq OWNED BY public.custom_filters.id;


--
-- Name: domain_allows; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.domain_allows (
    id bigint NOT NULL,
    domain character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.domain_allows OWNER TO prisma;

--
-- Name: domain_allows_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.domain_allows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_allows_id_seq OWNER TO prisma;

--
-- Name: domain_allows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.domain_allows_id_seq OWNED BY public.domain_allows.id;


--
-- Name: domain_blocks; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.domain_blocks (
    id bigint NOT NULL,
    domain character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    severity integer DEFAULT 0,
    reject_media boolean DEFAULT false NOT NULL,
    reject_reports boolean DEFAULT false NOT NULL,
    private_comment text,
    public_comment text
);


ALTER TABLE public.domain_blocks OWNER TO prisma;

--
-- Name: domain_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.domain_blocks_id_seq OWNER TO prisma;

--
-- Name: domain_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.domain_blocks_id_seq OWNED BY public.domain_blocks.id;


--
-- Name: email_domain_blocks; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.email_domain_blocks (
    id bigint NOT NULL,
    domain character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.email_domain_blocks OWNER TO prisma;

--
-- Name: email_domain_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.email_domain_blocks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_domain_blocks_id_seq OWNER TO prisma;

--
-- Name: email_domain_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.email_domain_blocks_id_seq OWNED BY public.email_domain_blocks.id;


--
-- Name: favourites; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.favourites (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public.favourites OWNER TO prisma;

--
-- Name: favourites_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.favourites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.favourites_id_seq OWNER TO prisma;

--
-- Name: favourites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.favourites_id_seq OWNED BY public.favourites.id;


--
-- Name: featured_tags; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.featured_tags (
    id bigint NOT NULL,
    account_id bigint,
    tag_id bigint,
    statuses_count bigint DEFAULT 0 NOT NULL,
    last_status_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.featured_tags OWNER TO prisma;

--
-- Name: featured_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.featured_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.featured_tags_id_seq OWNER TO prisma;

--
-- Name: featured_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.featured_tags_id_seq OWNED BY public.featured_tags.id;


--
-- Name: follow_requests; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.follow_requests (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    show_reblogs boolean DEFAULT true NOT NULL,
    uri character varying
);


ALTER TABLE public.follow_requests OWNER TO prisma;

--
-- Name: follow_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.follow_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.follow_requests_id_seq OWNER TO prisma;

--
-- Name: follow_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.follow_requests_id_seq OWNED BY public.follow_requests.id;


--
-- Name: follows; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.follows (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL,
    show_reblogs boolean DEFAULT true NOT NULL,
    uri character varying
);


ALTER TABLE public.follows OWNER TO prisma;

--
-- Name: follows_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.follows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.follows_id_seq OWNER TO prisma;

--
-- Name: follows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.follows_id_seq OWNED BY public.follows.id;


--
-- Name: identities; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.identities (
    id bigint NOT NULL,
    provider character varying DEFAULT ''::character varying NOT NULL,
    uid character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public.identities OWNER TO prisma;

--
-- Name: identities_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.identities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.identities_id_seq OWNER TO prisma;

--
-- Name: identities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.identities_id_seq OWNED BY public.identities.id;


--
-- Name: imports; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.imports (
    id bigint NOT NULL,
    type integer NOT NULL,
    approved boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    data_file_name character varying,
    data_content_type character varying,
    data_file_size integer,
    data_updated_at timestamp without time zone,
    account_id bigint NOT NULL,
    overwrite boolean DEFAULT false NOT NULL
);


ALTER TABLE public.imports OWNER TO prisma;

--
-- Name: imports_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.imports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.imports_id_seq OWNER TO prisma;

--
-- Name: imports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.imports_id_seq OWNED BY public.imports.id;


--
-- Name: invites; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.invites (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    code character varying DEFAULT ''::character varying NOT NULL,
    expires_at timestamp without time zone,
    max_uses integer,
    uses integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    autofollow boolean DEFAULT false NOT NULL,
    comment text
);


ALTER TABLE public.invites OWNER TO prisma;

--
-- Name: invites_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.invites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.invites_id_seq OWNER TO prisma;

--
-- Name: invites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.invites_id_seq OWNED BY public.invites.id;


--
-- Name: list_accounts; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.list_accounts (
    id bigint NOT NULL,
    list_id bigint NOT NULL,
    account_id bigint NOT NULL,
    follow_id bigint
);


ALTER TABLE public.list_accounts OWNER TO prisma;

--
-- Name: list_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.list_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.list_accounts_id_seq OWNER TO prisma;

--
-- Name: list_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.list_accounts_id_seq OWNED BY public.list_accounts.id;


--
-- Name: lists; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.lists (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.lists OWNER TO prisma;

--
-- Name: lists_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.lists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lists_id_seq OWNER TO prisma;

--
-- Name: lists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.lists_id_seq OWNED BY public.lists.id;


--
-- Name: markers; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.markers (
    id bigint NOT NULL,
    user_id bigint,
    timeline character varying DEFAULT ''::character varying NOT NULL,
    last_read_id bigint DEFAULT 0 NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.markers OWNER TO prisma;

--
-- Name: markers_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.markers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.markers_id_seq OWNER TO prisma;

--
-- Name: markers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.markers_id_seq OWNED BY public.markers.id;


--
-- Name: media_attachments; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.media_attachments (
    id bigint NOT NULL,
    status_id bigint,
    file_file_name character varying,
    file_content_type character varying,
    file_file_size integer,
    file_updated_at timestamp without time zone,
    remote_url character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    shortcode character varying,
    type integer DEFAULT 0 NOT NULL,
    file_meta json,
    account_id bigint,
    description text,
    scheduled_status_id bigint,
    blurhash character varying
);


ALTER TABLE public.media_attachments OWNER TO prisma;

--
-- Name: media_attachments_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.media_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.media_attachments_id_seq OWNER TO prisma;

--
-- Name: media_attachments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.media_attachments_id_seq OWNED BY public.media_attachments.id;


--
-- Name: mentions; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mentions (
    id bigint NOT NULL,
    status_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint,
    silent boolean DEFAULT false NOT NULL
);


ALTER TABLE public.mentions OWNER TO prisma;

--
-- Name: mentions_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mentions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mentions_id_seq OWNER TO prisma;

--
-- Name: mentions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mentions_id_seq OWNED BY public.mentions.id;


--
-- Name: mutes; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mutes (
    id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    hide_notifications boolean DEFAULT true NOT NULL,
    account_id bigint NOT NULL,
    target_account_id bigint NOT NULL
);


ALTER TABLE public.mutes OWNER TO prisma;

--
-- Name: mutes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mutes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mutes_id_seq OWNER TO prisma;

--
-- Name: mutes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mutes_id_seq OWNED BY public.mutes.id;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.notifications (
    id bigint NOT NULL,
    activity_id bigint NOT NULL,
    activity_type character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint NOT NULL,
    from_account_id bigint NOT NULL
);


ALTER TABLE public.notifications OWNER TO prisma;

--
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.notifications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_id_seq OWNER TO prisma;

--
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- Name: oauth_access_grants; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.oauth_access_grants (
    id bigint NOT NULL,
    token character varying NOT NULL,
    expires_in integer NOT NULL,
    redirect_uri text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    revoked_at timestamp without time zone,
    scopes character varying,
    application_id bigint NOT NULL,
    resource_owner_id bigint NOT NULL
);


ALTER TABLE public.oauth_access_grants OWNER TO prisma;

--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.oauth_access_grants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_access_grants_id_seq OWNER TO prisma;

--
-- Name: oauth_access_grants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.oauth_access_grants_id_seq OWNED BY public.oauth_access_grants.id;


--
-- Name: oauth_access_tokens; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.oauth_access_tokens (
    id bigint NOT NULL,
    token character varying NOT NULL,
    refresh_token character varying,
    expires_in integer,
    revoked_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    scopes character varying,
    application_id bigint,
    resource_owner_id bigint
);


ALTER TABLE public.oauth_access_tokens OWNER TO prisma;

--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.oauth_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_access_tokens_id_seq OWNER TO prisma;

--
-- Name: oauth_access_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.oauth_access_tokens_id_seq OWNED BY public.oauth_access_tokens.id;


--
-- Name: oauth_applications; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.oauth_applications (
    id bigint NOT NULL,
    name character varying NOT NULL,
    uid character varying NOT NULL,
    secret character varying NOT NULL,
    redirect_uri text NOT NULL,
    scopes character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    superapp boolean DEFAULT false NOT NULL,
    website character varying,
    owner_type character varying,
    owner_id bigint,
    confidential boolean DEFAULT true NOT NULL
);


ALTER TABLE public.oauth_applications OWNER TO prisma;

--
-- Name: oauth_applications_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.oauth_applications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oauth_applications_id_seq OWNER TO prisma;

--
-- Name: oauth_applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.oauth_applications_id_seq OWNED BY public.oauth_applications.id;


--
-- Name: pghero_space_stats; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.pghero_space_stats (
    id bigint NOT NULL,
    database text,
    schema text,
    relation text,
    size bigint,
    captured_at timestamp without time zone
);


ALTER TABLE public.pghero_space_stats OWNER TO prisma;

--
-- Name: pghero_space_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.pghero_space_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pghero_space_stats_id_seq OWNER TO prisma;

--
-- Name: pghero_space_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.pghero_space_stats_id_seq OWNED BY public.pghero_space_stats.id;


--
-- Name: poll_votes; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.poll_votes (
    id bigint NOT NULL,
    account_id bigint,
    poll_id bigint,
    choice integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    uri character varying
);


ALTER TABLE public.poll_votes OWNER TO prisma;

--
-- Name: poll_votes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.poll_votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poll_votes_id_seq OWNER TO prisma;

--
-- Name: poll_votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.poll_votes_id_seq OWNED BY public.poll_votes.id;


--
-- Name: polls; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.polls (
    id bigint NOT NULL,
    account_id bigint,
    status_id bigint,
    expires_at timestamp without time zone,
    options character varying[] DEFAULT '{}'::character varying[] NOT NULL,
    cached_tallies bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    multiple boolean DEFAULT false NOT NULL,
    hide_totals boolean DEFAULT false NOT NULL,
    votes_count bigint DEFAULT 0 NOT NULL,
    last_fetched_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    lock_version integer DEFAULT 0 NOT NULL,
    voters_count bigint
);


ALTER TABLE public.polls OWNER TO prisma;

--
-- Name: polls_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.polls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.polls_id_seq OWNER TO prisma;

--
-- Name: polls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.polls_id_seq OWNED BY public.polls.id;


--
-- Name: preview_cards; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.preview_cards (
    id bigint NOT NULL,
    url character varying DEFAULT ''::character varying NOT NULL,
    title character varying DEFAULT ''::character varying NOT NULL,
    description character varying DEFAULT ''::character varying NOT NULL,
    image_file_name character varying,
    image_content_type character varying,
    image_file_size integer,
    image_updated_at timestamp without time zone,
    type integer DEFAULT 0 NOT NULL,
    html text DEFAULT ''::text NOT NULL,
    author_name character varying DEFAULT ''::character varying NOT NULL,
    author_url character varying DEFAULT ''::character varying NOT NULL,
    provider_name character varying DEFAULT ''::character varying NOT NULL,
    provider_url character varying DEFAULT ''::character varying NOT NULL,
    width integer DEFAULT 0 NOT NULL,
    height integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    embed_url character varying DEFAULT ''::character varying NOT NULL
);


ALTER TABLE public.preview_cards OWNER TO prisma;

--
-- Name: preview_cards_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.preview_cards_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preview_cards_id_seq OWNER TO prisma;

--
-- Name: preview_cards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.preview_cards_id_seq OWNED BY public.preview_cards.id;


--
-- Name: preview_cards_statuses; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.preview_cards_statuses (
    preview_card_id bigint NOT NULL,
    status_id bigint NOT NULL
);


ALTER TABLE public.preview_cards_statuses OWNER TO prisma;

--
-- Name: relays; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.relays (
    id bigint NOT NULL,
    inbox_url character varying DEFAULT ''::character varying NOT NULL,
    follow_activity_id character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    state integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.relays OWNER TO prisma;

--
-- Name: relays_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.relays_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relays_id_seq OWNER TO prisma;

--
-- Name: relays_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.relays_id_seq OWNED BY public.relays.id;


--
-- Name: report_notes; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.report_notes (
    id bigint NOT NULL,
    content text NOT NULL,
    report_id bigint NOT NULL,
    account_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.report_notes OWNER TO prisma;

--
-- Name: report_notes_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.report_notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_notes_id_seq OWNER TO prisma;

--
-- Name: report_notes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.report_notes_id_seq OWNED BY public.report_notes.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.reports (
    id bigint NOT NULL,
    status_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    comment text DEFAULT ''::text NOT NULL,
    action_taken boolean DEFAULT false NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    account_id bigint NOT NULL,
    action_taken_by_account_id bigint,
    target_account_id bigint NOT NULL,
    assigned_account_id bigint,
    uri character varying
);


ALTER TABLE public.reports OWNER TO prisma;

--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reports_id_seq OWNER TO prisma;

--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: scheduled_statuses; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.scheduled_statuses (
    id bigint NOT NULL,
    account_id bigint,
    scheduled_at timestamp without time zone,
    params jsonb
);


ALTER TABLE public.scheduled_statuses OWNER TO prisma;

--
-- Name: scheduled_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.scheduled_statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scheduled_statuses_id_seq OWNER TO prisma;

--
-- Name: scheduled_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.scheduled_statuses_id_seq OWNED BY public.scheduled_statuses.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO prisma;

--
-- Name: session_activations; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.session_activations (
    id bigint NOT NULL,
    session_id character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_agent character varying DEFAULT ''::character varying NOT NULL,
    ip inet,
    access_token_id bigint,
    user_id bigint NOT NULL,
    web_push_subscription_id bigint
);


ALTER TABLE public.session_activations OWNER TO prisma;

--
-- Name: session_activations_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.session_activations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.session_activations_id_seq OWNER TO prisma;

--
-- Name: session_activations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.session_activations_id_seq OWNED BY public.session_activations.id;


--
-- Name: settings; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.settings (
    id bigint NOT NULL,
    var character varying NOT NULL,
    value text,
    thing_type character varying,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    thing_id bigint
);


ALTER TABLE public.settings OWNER TO prisma;

--
-- Name: settings_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.settings_id_seq OWNER TO prisma;

--
-- Name: settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;


--
-- Name: site_uploads; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.site_uploads (
    id bigint NOT NULL,
    var character varying DEFAULT ''::character varying NOT NULL,
    file_file_name character varying,
    file_content_type character varying,
    file_file_size integer,
    file_updated_at timestamp without time zone,
    meta json,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.site_uploads OWNER TO prisma;

--
-- Name: site_uploads_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.site_uploads_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.site_uploads_id_seq OWNER TO prisma;

--
-- Name: site_uploads_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.site_uploads_id_seq OWNED BY public.site_uploads.id;


--
-- Name: status_pins; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.status_pins (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    status_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.status_pins OWNER TO prisma;

--
-- Name: status_pins_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.status_pins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_pins_id_seq OWNER TO prisma;

--
-- Name: status_pins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.status_pins_id_seq OWNED BY public.status_pins.id;


--
-- Name: status_stats; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.status_stats (
    id bigint NOT NULL,
    status_id bigint NOT NULL,
    replies_count bigint DEFAULT 0 NOT NULL,
    reblogs_count bigint DEFAULT 0 NOT NULL,
    favourites_count bigint DEFAULT 0 NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.status_stats OWNER TO prisma;

--
-- Name: status_stats_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.status_stats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.status_stats_id_seq OWNER TO prisma;

--
-- Name: status_stats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.status_stats_id_seq OWNED BY public.status_stats.id;


--
-- Name: statuses; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.statuses (
    id bigint DEFAULT public.timestamp_id('statuses'::text) NOT NULL,
    uri character varying,
    text text DEFAULT ''::text NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    in_reply_to_id bigint,
    reblog_of_id bigint,
    url character varying,
    sensitive boolean DEFAULT false NOT NULL,
    visibility integer DEFAULT 0 NOT NULL,
    spoiler_text text DEFAULT ''::text NOT NULL,
    reply boolean DEFAULT false NOT NULL,
    language character varying,
    conversation_id bigint,
    local boolean,
    account_id bigint NOT NULL,
    application_id bigint,
    in_reply_to_account_id bigint,
    poll_id bigint,
    deleted_at timestamp without time zone
);


ALTER TABLE public.statuses OWNER TO prisma;

--
-- Name: statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.statuses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.statuses_id_seq OWNER TO prisma;

--
-- Name: statuses_tags; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.statuses_tags (
    status_id bigint NOT NULL,
    tag_id bigint NOT NULL
);


ALTER TABLE public.statuses_tags OWNER TO prisma;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    name character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    usable boolean,
    trendable boolean,
    listable boolean,
    reviewed_at timestamp without time zone,
    requested_review_at timestamp without time zone,
    last_status_at timestamp without time zone,
    max_score double precision,
    max_score_at timestamp without time zone
);


ALTER TABLE public.tags OWNER TO prisma;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO prisma;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: tombstones; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tombstones (
    id bigint NOT NULL,
    account_id bigint,
    uri character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    by_moderator boolean
);


ALTER TABLE public.tombstones OWNER TO prisma;

--
-- Name: tombstones_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.tombstones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tombstones_id_seq OWNER TO prisma;

--
-- Name: tombstones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.tombstones_id_seq OWNED BY public.tombstones.id;


--
-- Name: user_invite_requests; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_invite_requests (
    id bigint NOT NULL,
    user_id bigint,
    text text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.user_invite_requests OWNER TO prisma;

--
-- Name: user_invite_requests_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.user_invite_requests_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_invite_requests_id_seq OWNER TO prisma;

--
-- Name: user_invite_requests_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.user_invite_requests_id_seq OWNED BY public.user_invite_requests.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0 NOT NULL,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip inet,
    last_sign_in_ip inet,
    admin boolean DEFAULT false NOT NULL,
    confirmation_token character varying,
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    unconfirmed_email character varying,
    locale character varying,
    encrypted_otp_secret character varying,
    encrypted_otp_secret_iv character varying,
    encrypted_otp_secret_salt character varying,
    consumed_timestep integer,
    otp_required_for_login boolean DEFAULT false NOT NULL,
    last_emailed_at timestamp without time zone,
    otp_backup_codes character varying[],
    filtered_languages character varying[] DEFAULT '{}'::character varying[] NOT NULL,
    account_id bigint NOT NULL,
    disabled boolean DEFAULT false NOT NULL,
    moderator boolean DEFAULT false NOT NULL,
    invite_id bigint,
    remember_token character varying,
    chosen_languages character varying[],
    created_by_application_id bigint,
    approved boolean DEFAULT true NOT NULL
);


ALTER TABLE public.users OWNER TO prisma;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO prisma;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: web_push_subscriptions; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.web_push_subscriptions (
    id bigint NOT NULL,
    endpoint character varying NOT NULL,
    key_p256dh character varying NOT NULL,
    key_auth character varying NOT NULL,
    data json,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    access_token_id bigint,
    user_id bigint
);


ALTER TABLE public.web_push_subscriptions OWNER TO prisma;

--
-- Name: web_push_subscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.web_push_subscriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_push_subscriptions_id_seq OWNER TO prisma;

--
-- Name: web_push_subscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.web_push_subscriptions_id_seq OWNED BY public.web_push_subscriptions.id;


--
-- Name: web_settings; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.web_settings (
    id bigint NOT NULL,
    data json,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    user_id bigint NOT NULL
);


ALTER TABLE public.web_settings OWNER TO prisma;

--
-- Name: web_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.web_settings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_settings_id_seq OWNER TO prisma;

--
-- Name: web_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.web_settings_id_seq OWNED BY public.web_settings.id;


--
-- Name: account_aliases id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_aliases ALTER COLUMN id SET DEFAULT nextval('public.account_aliases_id_seq'::regclass);


--
-- Name: account_conversations id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_conversations ALTER COLUMN id SET DEFAULT nextval('public.account_conversations_id_seq'::regclass);


--
-- Name: account_domain_blocks id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_domain_blocks ALTER COLUMN id SET DEFAULT nextval('public.account_domain_blocks_id_seq'::regclass);


--
-- Name: account_identity_proofs id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_identity_proofs ALTER COLUMN id SET DEFAULT nextval('public.account_identity_proofs_id_seq'::regclass);


--
-- Name: account_migrations id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_migrations ALTER COLUMN id SET DEFAULT nextval('public.account_migrations_id_seq'::regclass);


--
-- Name: account_moderation_notes id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_moderation_notes ALTER COLUMN id SET DEFAULT nextval('public.account_moderation_notes_id_seq'::regclass);


--
-- Name: account_pins id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_pins ALTER COLUMN id SET DEFAULT nextval('public.account_pins_id_seq'::regclass);


--
-- Name: account_stats id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_stats ALTER COLUMN id SET DEFAULT nextval('public.account_stats_id_seq'::regclass);


--
-- Name: account_tag_stats id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_tag_stats ALTER COLUMN id SET DEFAULT nextval('public.account_tag_stats_id_seq'::regclass);


--
-- Name: account_warning_presets id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_warning_presets ALTER COLUMN id SET DEFAULT nextval('public.account_warning_presets_id_seq'::regclass);


--
-- Name: account_warnings id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_warnings ALTER COLUMN id SET DEFAULT nextval('public.account_warnings_id_seq'::regclass);


--
-- Name: accounts id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.accounts ALTER COLUMN id SET DEFAULT nextval('public.accounts_id_seq'::regclass);


--
-- Name: admin_action_logs id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.admin_action_logs ALTER COLUMN id SET DEFAULT nextval('public.admin_action_logs_id_seq'::regclass);


--
-- Name: announcement_mutes id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_mutes ALTER COLUMN id SET DEFAULT nextval('public.announcement_mutes_id_seq'::regclass);


--
-- Name: announcement_reactions id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_reactions ALTER COLUMN id SET DEFAULT nextval('public.announcement_reactions_id_seq'::regclass);


--
-- Name: announcements id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcements ALTER COLUMN id SET DEFAULT nextval('public.announcements_id_seq'::regclass);


--
-- Name: backups id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.backups ALTER COLUMN id SET DEFAULT nextval('public.backups_id_seq'::regclass);


--
-- Name: blocks id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.blocks ALTER COLUMN id SET DEFAULT nextval('public.blocks_id_seq'::regclass);


--
-- Name: bookmarks id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bookmarks ALTER COLUMN id SET DEFAULT nextval('public.bookmarks_id_seq'::regclass);


--
-- Name: conversation_mutes id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.conversation_mutes ALTER COLUMN id SET DEFAULT nextval('public.conversation_mutes_id_seq'::regclass);


--
-- Name: conversations id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.conversations ALTER COLUMN id SET DEFAULT nextval('public.conversations_id_seq'::regclass);


--
-- Name: custom_emoji_categories id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_emoji_categories ALTER COLUMN id SET DEFAULT nextval('public.custom_emoji_categories_id_seq'::regclass);


--
-- Name: custom_emojis id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_emojis ALTER COLUMN id SET DEFAULT nextval('public.custom_emojis_id_seq'::regclass);


--
-- Name: custom_filters id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_filters ALTER COLUMN id SET DEFAULT nextval('public.custom_filters_id_seq'::regclass);


--
-- Name: domain_allows id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.domain_allows ALTER COLUMN id SET DEFAULT nextval('public.domain_allows_id_seq'::regclass);


--
-- Name: domain_blocks id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.domain_blocks ALTER COLUMN id SET DEFAULT nextval('public.domain_blocks_id_seq'::regclass);


--
-- Name: email_domain_blocks id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_domain_blocks ALTER COLUMN id SET DEFAULT nextval('public.email_domain_blocks_id_seq'::regclass);


--
-- Name: favourites id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.favourites ALTER COLUMN id SET DEFAULT nextval('public.favourites_id_seq'::regclass);


--
-- Name: featured_tags id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.featured_tags ALTER COLUMN id SET DEFAULT nextval('public.featured_tags_id_seq'::regclass);


--
-- Name: follow_requests id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follow_requests ALTER COLUMN id SET DEFAULT nextval('public.follow_requests_id_seq'::regclass);


--
-- Name: follows id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follows ALTER COLUMN id SET DEFAULT nextval('public.follows_id_seq'::regclass);


--
-- Name: identities id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.identities ALTER COLUMN id SET DEFAULT nextval('public.identities_id_seq'::regclass);


--
-- Name: imports id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.imports ALTER COLUMN id SET DEFAULT nextval('public.imports_id_seq'::regclass);


--
-- Name: invites id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.invites ALTER COLUMN id SET DEFAULT nextval('public.invites_id_seq'::regclass);


--
-- Name: list_accounts id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.list_accounts ALTER COLUMN id SET DEFAULT nextval('public.list_accounts_id_seq'::regclass);


--
-- Name: lists id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.lists ALTER COLUMN id SET DEFAULT nextval('public.lists_id_seq'::regclass);


--
-- Name: markers id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.markers ALTER COLUMN id SET DEFAULT nextval('public.markers_id_seq'::regclass);


--
-- Name: media_attachments id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.media_attachments ALTER COLUMN id SET DEFAULT nextval('public.media_attachments_id_seq'::regclass);


--
-- Name: mentions id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mentions ALTER COLUMN id SET DEFAULT nextval('public.mentions_id_seq'::regclass);


--
-- Name: mutes id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mutes ALTER COLUMN id SET DEFAULT nextval('public.mutes_id_seq'::regclass);


--
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- Name: oauth_access_grants id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_grants ALTER COLUMN id SET DEFAULT nextval('public.oauth_access_grants_id_seq'::regclass);


--
-- Name: oauth_access_tokens id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.oauth_access_tokens_id_seq'::regclass);


--
-- Name: oauth_applications id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_applications ALTER COLUMN id SET DEFAULT nextval('public.oauth_applications_id_seq'::regclass);


--
-- Name: pghero_space_stats id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.pghero_space_stats ALTER COLUMN id SET DEFAULT nextval('public.pghero_space_stats_id_seq'::regclass);


--
-- Name: poll_votes id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.poll_votes ALTER COLUMN id SET DEFAULT nextval('public.poll_votes_id_seq'::regclass);


--
-- Name: polls id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.polls ALTER COLUMN id SET DEFAULT nextval('public.polls_id_seq'::regclass);


--
-- Name: preview_cards id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.preview_cards ALTER COLUMN id SET DEFAULT nextval('public.preview_cards_id_seq'::regclass);


--
-- Name: relays id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.relays ALTER COLUMN id SET DEFAULT nextval('public.relays_id_seq'::regclass);


--
-- Name: report_notes id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_notes ALTER COLUMN id SET DEFAULT nextval('public.report_notes_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: scheduled_statuses id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.scheduled_statuses ALTER COLUMN id SET DEFAULT nextval('public.scheduled_statuses_id_seq'::regclass);


--
-- Name: session_activations id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.session_activations ALTER COLUMN id SET DEFAULT nextval('public.session_activations_id_seq'::regclass);


--
-- Name: settings id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);


--
-- Name: site_uploads id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.site_uploads ALTER COLUMN id SET DEFAULT nextval('public.site_uploads_id_seq'::regclass);


--
-- Name: status_pins id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_pins ALTER COLUMN id SET DEFAULT nextval('public.status_pins_id_seq'::regclass);


--
-- Name: status_stats id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_stats ALTER COLUMN id SET DEFAULT nextval('public.status_stats_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: tombstones id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tombstones ALTER COLUMN id SET DEFAULT nextval('public.tombstones_id_seq'::regclass);


--
-- Name: user_invite_requests id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_invite_requests ALTER COLUMN id SET DEFAULT nextval('public.user_invite_requests_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: web_push_subscriptions id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_push_subscriptions ALTER COLUMN id SET DEFAULT nextval('public.web_push_subscriptions_id_seq'::regclass);


--
-- Name: web_settings id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_settings ALTER COLUMN id SET DEFAULT nextval('public.web_settings_id_seq'::regclass);


--
-- Name: account_aliases account_aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_aliases
    ADD CONSTRAINT account_aliases_pkey PRIMARY KEY (id);


--
-- Name: account_conversations account_conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_conversations
    ADD CONSTRAINT account_conversations_pkey PRIMARY KEY (id);


--
-- Name: account_domain_blocks account_domain_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_domain_blocks
    ADD CONSTRAINT account_domain_blocks_pkey PRIMARY KEY (id);


--
-- Name: account_identity_proofs account_identity_proofs_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_identity_proofs
    ADD CONSTRAINT account_identity_proofs_pkey PRIMARY KEY (id);


--
-- Name: account_migrations account_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_migrations
    ADD CONSTRAINT account_migrations_pkey PRIMARY KEY (id);


--
-- Name: account_moderation_notes account_moderation_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_moderation_notes
    ADD CONSTRAINT account_moderation_notes_pkey PRIMARY KEY (id);


--
-- Name: account_pins account_pins_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_pins
    ADD CONSTRAINT account_pins_pkey PRIMARY KEY (id);


--
-- Name: account_stats account_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_stats
    ADD CONSTRAINT account_stats_pkey PRIMARY KEY (id);


--
-- Name: account_tag_stats account_tag_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_tag_stats
    ADD CONSTRAINT account_tag_stats_pkey PRIMARY KEY (id);


--
-- Name: account_warning_presets account_warning_presets_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_warning_presets
    ADD CONSTRAINT account_warning_presets_pkey PRIMARY KEY (id);


--
-- Name: account_warnings account_warnings_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_warnings
    ADD CONSTRAINT account_warnings_pkey PRIMARY KEY (id);


--
-- Name: accounts accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT accounts_pkey PRIMARY KEY (id);


--
-- Name: admin_action_logs admin_action_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.admin_action_logs
    ADD CONSTRAINT admin_action_logs_pkey PRIMARY KEY (id);


--
-- Name: announcement_mutes announcement_mutes_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_mutes
    ADD CONSTRAINT announcement_mutes_pkey PRIMARY KEY (id);


--
-- Name: announcement_reactions announcement_reactions_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_reactions
    ADD CONSTRAINT announcement_reactions_pkey PRIMARY KEY (id);


--
-- Name: announcements announcements_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcements
    ADD CONSTRAINT announcements_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: backups backups_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.backups
    ADD CONSTRAINT backups_pkey PRIMARY KEY (id);


--
-- Name: blocks blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.blocks
    ADD CONSTRAINT blocks_pkey PRIMARY KEY (id);


--
-- Name: bookmarks bookmarks_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT bookmarks_pkey PRIMARY KEY (id);


--
-- Name: conversation_mutes conversation_mutes_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.conversation_mutes
    ADD CONSTRAINT conversation_mutes_pkey PRIMARY KEY (id);


--
-- Name: conversations conversations_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.conversations
    ADD CONSTRAINT conversations_pkey PRIMARY KEY (id);


--
-- Name: custom_emoji_categories custom_emoji_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_emoji_categories
    ADD CONSTRAINT custom_emoji_categories_pkey PRIMARY KEY (id);


--
-- Name: custom_emojis custom_emojis_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_emojis
    ADD CONSTRAINT custom_emojis_pkey PRIMARY KEY (id);


--
-- Name: custom_filters custom_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_filters
    ADD CONSTRAINT custom_filters_pkey PRIMARY KEY (id);


--
-- Name: domain_allows domain_allows_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.domain_allows
    ADD CONSTRAINT domain_allows_pkey PRIMARY KEY (id);


--
-- Name: domain_blocks domain_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.domain_blocks
    ADD CONSTRAINT domain_blocks_pkey PRIMARY KEY (id);


--
-- Name: email_domain_blocks email_domain_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_domain_blocks
    ADD CONSTRAINT email_domain_blocks_pkey PRIMARY KEY (id);


--
-- Name: favourites favourites_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT favourites_pkey PRIMARY KEY (id);


--
-- Name: featured_tags featured_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.featured_tags
    ADD CONSTRAINT featured_tags_pkey PRIMARY KEY (id);


--
-- Name: follow_requests follow_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follow_requests
    ADD CONSTRAINT follow_requests_pkey PRIMARY KEY (id);


--
-- Name: follows follows_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT follows_pkey PRIMARY KEY (id);


--
-- Name: identities identities_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.identities
    ADD CONSTRAINT identities_pkey PRIMARY KEY (id);


--
-- Name: imports imports_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.imports
    ADD CONSTRAINT imports_pkey PRIMARY KEY (id);


--
-- Name: invites invites_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.invites
    ADD CONSTRAINT invites_pkey PRIMARY KEY (id);


--
-- Name: list_accounts list_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.list_accounts
    ADD CONSTRAINT list_accounts_pkey PRIMARY KEY (id);


--
-- Name: lists lists_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT lists_pkey PRIMARY KEY (id);


--
-- Name: markers markers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.markers
    ADD CONSTRAINT markers_pkey PRIMARY KEY (id);


--
-- Name: media_attachments media_attachments_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.media_attachments
    ADD CONSTRAINT media_attachments_pkey PRIMARY KEY (id);


--
-- Name: mentions mentions_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mentions
    ADD CONSTRAINT mentions_pkey PRIMARY KEY (id);


--
-- Name: mutes mutes_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mutes
    ADD CONSTRAINT mutes_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_grants oauth_access_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT oauth_access_grants_pkey PRIMARY KEY (id);


--
-- Name: oauth_access_tokens oauth_access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT oauth_access_tokens_pkey PRIMARY KEY (id);


--
-- Name: oauth_applications oauth_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_applications
    ADD CONSTRAINT oauth_applications_pkey PRIMARY KEY (id);


--
-- Name: pghero_space_stats pghero_space_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.pghero_space_stats
    ADD CONSTRAINT pghero_space_stats_pkey PRIMARY KEY (id);


--
-- Name: poll_votes poll_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_pkey PRIMARY KEY (id);


--
-- Name: polls polls_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (id);


--
-- Name: preview_cards preview_cards_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.preview_cards
    ADD CONSTRAINT preview_cards_pkey PRIMARY KEY (id);


--
-- Name: relays relays_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.relays
    ADD CONSTRAINT relays_pkey PRIMARY KEY (id);


--
-- Name: report_notes report_notes_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_notes
    ADD CONSTRAINT report_notes_pkey PRIMARY KEY (id);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: scheduled_statuses scheduled_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.scheduled_statuses
    ADD CONSTRAINT scheduled_statuses_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: session_activations session_activations_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.session_activations
    ADD CONSTRAINT session_activations_pkey PRIMARY KEY (id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);


--
-- Name: site_uploads site_uploads_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.site_uploads
    ADD CONSTRAINT site_uploads_pkey PRIMARY KEY (id);


--
-- Name: status_pins status_pins_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_pins
    ADD CONSTRAINT status_pins_pkey PRIMARY KEY (id);


--
-- Name: status_stats status_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_stats
    ADD CONSTRAINT status_stats_pkey PRIMARY KEY (id);


--
-- Name: statuses statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT statuses_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: tombstones tombstones_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tombstones
    ADD CONSTRAINT tombstones_pkey PRIMARY KEY (id);


--
-- Name: user_invite_requests user_invite_requests_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_invite_requests
    ADD CONSTRAINT user_invite_requests_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: web_push_subscriptions web_push_subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_push_subscriptions
    ADD CONSTRAINT web_push_subscriptions_pkey PRIMARY KEY (id);


--
-- Name: web_settings web_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_settings
    ADD CONSTRAINT web_settings_pkey PRIMARY KEY (id);


--
-- Name: account_activity; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX account_activity ON public.notifications USING btree (account_id, activity_id, activity_type);


--
-- Name: index_account_aliases_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_aliases_on_account_id ON public.account_aliases USING btree (account_id);


--
-- Name: index_account_conversations_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_conversations_on_account_id ON public.account_conversations USING btree (account_id);


--
-- Name: index_account_conversations_on_conversation_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_conversations_on_conversation_id ON public.account_conversations USING btree (conversation_id);


--
-- Name: index_account_domain_blocks_on_account_id_and_domain; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_account_domain_blocks_on_account_id_and_domain ON public.account_domain_blocks USING btree (account_id, domain);


--
-- Name: index_account_identity_proofs_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_identity_proofs_on_account_id ON public.account_identity_proofs USING btree (account_id);


--
-- Name: index_account_migrations_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_migrations_on_account_id ON public.account_migrations USING btree (account_id);


--
-- Name: index_account_migrations_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_migrations_on_target_account_id ON public.account_migrations USING btree (target_account_id);


--
-- Name: index_account_moderation_notes_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_moderation_notes_on_account_id ON public.account_moderation_notes USING btree (account_id);


--
-- Name: index_account_moderation_notes_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_moderation_notes_on_target_account_id ON public.account_moderation_notes USING btree (target_account_id);


--
-- Name: index_account_pins_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_pins_on_account_id ON public.account_pins USING btree (account_id);


--
-- Name: index_account_pins_on_account_id_and_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_account_pins_on_account_id_and_target_account_id ON public.account_pins USING btree (account_id, target_account_id);


--
-- Name: index_account_pins_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_pins_on_target_account_id ON public.account_pins USING btree (target_account_id);


--
-- Name: index_account_proofs_on_account_and_provider_and_username; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_account_proofs_on_account_and_provider_and_username ON public.account_identity_proofs USING btree (account_id, provider, provider_username);


--
-- Name: index_account_stats_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_account_stats_on_account_id ON public.account_stats USING btree (account_id);


--
-- Name: index_account_tag_stats_on_tag_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_account_tag_stats_on_tag_id ON public.account_tag_stats USING btree (tag_id);


--
-- Name: index_account_warnings_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_warnings_on_account_id ON public.account_warnings USING btree (account_id);


--
-- Name: index_account_warnings_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_account_warnings_on_target_account_id ON public.account_warnings USING btree (target_account_id);


--
-- Name: index_accounts_on_moved_to_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_accounts_on_moved_to_account_id ON public.accounts USING btree (moved_to_account_id);


--
-- Name: index_accounts_on_uri; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_accounts_on_uri ON public.accounts USING btree (uri);


--
-- Name: index_accounts_on_url; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_accounts_on_url ON public.accounts USING btree (url);


--
-- Name: index_accounts_on_username_and_domain_lower; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_accounts_on_username_and_domain_lower ON public.accounts USING btree (lower((username)::text), lower((domain)::text));


--
-- Name: index_accounts_tags_on_account_id_and_tag_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_accounts_tags_on_account_id_and_tag_id ON public.accounts_tags USING btree (account_id, tag_id);


--
-- Name: index_accounts_tags_on_tag_id_and_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_accounts_tags_on_tag_id_and_account_id ON public.accounts_tags USING btree (tag_id, account_id);


--
-- Name: index_admin_action_logs_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_admin_action_logs_on_account_id ON public.admin_action_logs USING btree (account_id);


--
-- Name: index_admin_action_logs_on_target_type_and_target_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_admin_action_logs_on_target_type_and_target_id ON public.admin_action_logs USING btree (target_type, target_id);


--
-- Name: index_announcement_mutes_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_announcement_mutes_on_account_id ON public.announcement_mutes USING btree (account_id);


--
-- Name: index_announcement_mutes_on_account_id_and_announcement_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_announcement_mutes_on_account_id_and_announcement_id ON public.announcement_mutes USING btree (account_id, announcement_id);


--
-- Name: index_announcement_mutes_on_announcement_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_announcement_mutes_on_announcement_id ON public.announcement_mutes USING btree (announcement_id);


--
-- Name: index_announcement_reactions_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_announcement_reactions_on_account_id ON public.announcement_reactions USING btree (account_id);


--
-- Name: index_announcement_reactions_on_account_id_and_announcement_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_announcement_reactions_on_account_id_and_announcement_id ON public.announcement_reactions USING btree (account_id, announcement_id, name);


--
-- Name: index_announcement_reactions_on_announcement_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_announcement_reactions_on_announcement_id ON public.announcement_reactions USING btree (announcement_id);


--
-- Name: index_announcement_reactions_on_custom_emoji_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_announcement_reactions_on_custom_emoji_id ON public.announcement_reactions USING btree (custom_emoji_id);


--
-- Name: index_blocks_on_account_id_and_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_blocks_on_account_id_and_target_account_id ON public.blocks USING btree (account_id, target_account_id);


--
-- Name: index_blocks_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_blocks_on_target_account_id ON public.blocks USING btree (target_account_id);


--
-- Name: index_bookmarks_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_bookmarks_on_account_id ON public.bookmarks USING btree (account_id);


--
-- Name: index_bookmarks_on_account_id_and_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_bookmarks_on_account_id_and_status_id ON public.bookmarks USING btree (account_id, status_id);


--
-- Name: index_bookmarks_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_bookmarks_on_status_id ON public.bookmarks USING btree (status_id);


--
-- Name: index_conversation_mutes_on_account_id_and_conversation_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_conversation_mutes_on_account_id_and_conversation_id ON public.conversation_mutes USING btree (account_id, conversation_id);


--
-- Name: index_conversations_on_uri; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_conversations_on_uri ON public.conversations USING btree (uri);


--
-- Name: index_custom_emoji_categories_on_name; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_custom_emoji_categories_on_name ON public.custom_emoji_categories USING btree (name);


--
-- Name: index_custom_emojis_on_shortcode_and_domain; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_custom_emojis_on_shortcode_and_domain ON public.custom_emojis USING btree (shortcode, domain);


--
-- Name: index_custom_filters_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_custom_filters_on_account_id ON public.custom_filters USING btree (account_id);


--
-- Name: index_domain_allows_on_domain; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_domain_allows_on_domain ON public.domain_allows USING btree (domain);


--
-- Name: index_domain_blocks_on_domain; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_domain_blocks_on_domain ON public.domain_blocks USING btree (domain);


--
-- Name: index_email_domain_blocks_on_domain; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_email_domain_blocks_on_domain ON public.email_domain_blocks USING btree (domain);


--
-- Name: index_favourites_on_account_id_and_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_favourites_on_account_id_and_id ON public.favourites USING btree (account_id, id);


--
-- Name: index_favourites_on_account_id_and_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_favourites_on_account_id_and_status_id ON public.favourites USING btree (account_id, status_id);


--
-- Name: index_favourites_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_favourites_on_status_id ON public.favourites USING btree (status_id);


--
-- Name: index_featured_tags_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_featured_tags_on_account_id ON public.featured_tags USING btree (account_id);


--
-- Name: index_featured_tags_on_tag_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_featured_tags_on_tag_id ON public.featured_tags USING btree (tag_id);


--
-- Name: index_follow_requests_on_account_id_and_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_follow_requests_on_account_id_and_target_account_id ON public.follow_requests USING btree (account_id, target_account_id);


--
-- Name: index_follows_on_account_id_and_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_follows_on_account_id_and_target_account_id ON public.follows USING btree (account_id, target_account_id);


--
-- Name: index_follows_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_follows_on_target_account_id ON public.follows USING btree (target_account_id);


--
-- Name: index_identities_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_identities_on_user_id ON public.identities USING btree (user_id);


--
-- Name: index_invites_on_code; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_invites_on_code ON public.invites USING btree (code);


--
-- Name: index_invites_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_invites_on_user_id ON public.invites USING btree (user_id);


--
-- Name: index_list_accounts_on_account_id_and_list_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_list_accounts_on_account_id_and_list_id ON public.list_accounts USING btree (account_id, list_id);


--
-- Name: index_list_accounts_on_follow_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_list_accounts_on_follow_id ON public.list_accounts USING btree (follow_id);


--
-- Name: index_list_accounts_on_list_id_and_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_list_accounts_on_list_id_and_account_id ON public.list_accounts USING btree (list_id, account_id);


--
-- Name: index_lists_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_lists_on_account_id ON public.lists USING btree (account_id);


--
-- Name: index_markers_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_markers_on_user_id ON public.markers USING btree (user_id);


--
-- Name: index_markers_on_user_id_and_timeline; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_markers_on_user_id_and_timeline ON public.markers USING btree (user_id, timeline);


--
-- Name: index_media_attachments_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_media_attachments_on_account_id ON public.media_attachments USING btree (account_id);


--
-- Name: index_media_attachments_on_scheduled_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_media_attachments_on_scheduled_status_id ON public.media_attachments USING btree (scheduled_status_id);


--
-- Name: index_media_attachments_on_shortcode; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_media_attachments_on_shortcode ON public.media_attachments USING btree (shortcode);


--
-- Name: index_media_attachments_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_media_attachments_on_status_id ON public.media_attachments USING btree (status_id);


--
-- Name: index_mentions_on_account_id_and_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_mentions_on_account_id_and_status_id ON public.mentions USING btree (account_id, status_id);


--
-- Name: index_mentions_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_mentions_on_status_id ON public.mentions USING btree (status_id);


--
-- Name: index_mutes_on_account_id_and_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_mutes_on_account_id_and_target_account_id ON public.mutes USING btree (account_id, target_account_id);


--
-- Name: index_mutes_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_mutes_on_target_account_id ON public.mutes USING btree (target_account_id);


--
-- Name: index_notifications_on_account_id_and_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_notifications_on_account_id_and_id ON public.notifications USING btree (account_id, id DESC);


--
-- Name: index_notifications_on_activity_id_and_activity_type; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_notifications_on_activity_id_and_activity_type ON public.notifications USING btree (activity_id, activity_type);


--
-- Name: index_notifications_on_from_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_notifications_on_from_account_id ON public.notifications USING btree (from_account_id);


--
-- Name: index_oauth_access_grants_on_resource_owner_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_oauth_access_grants_on_resource_owner_id ON public.oauth_access_grants USING btree (resource_owner_id);


--
-- Name: index_oauth_access_grants_on_token; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_oauth_access_grants_on_token ON public.oauth_access_grants USING btree (token);


--
-- Name: index_oauth_access_tokens_on_refresh_token; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_oauth_access_tokens_on_refresh_token ON public.oauth_access_tokens USING btree (refresh_token);


--
-- Name: index_oauth_access_tokens_on_resource_owner_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_oauth_access_tokens_on_resource_owner_id ON public.oauth_access_tokens USING btree (resource_owner_id);


--
-- Name: index_oauth_access_tokens_on_token; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_oauth_access_tokens_on_token ON public.oauth_access_tokens USING btree (token);


--
-- Name: index_oauth_applications_on_owner_id_and_owner_type; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_oauth_applications_on_owner_id_and_owner_type ON public.oauth_applications USING btree (owner_id, owner_type);


--
-- Name: index_oauth_applications_on_uid; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_oauth_applications_on_uid ON public.oauth_applications USING btree (uid);


--
-- Name: index_pghero_space_stats_on_database_and_captured_at; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_pghero_space_stats_on_database_and_captured_at ON public.pghero_space_stats USING btree (database, captured_at);


--
-- Name: index_poll_votes_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_poll_votes_on_account_id ON public.poll_votes USING btree (account_id);


--
-- Name: index_poll_votes_on_poll_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_poll_votes_on_poll_id ON public.poll_votes USING btree (poll_id);


--
-- Name: index_polls_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_polls_on_account_id ON public.polls USING btree (account_id);


--
-- Name: index_polls_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_polls_on_status_id ON public.polls USING btree (status_id);


--
-- Name: index_preview_cards_on_url; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_preview_cards_on_url ON public.preview_cards USING btree (url);


--
-- Name: index_preview_cards_statuses_on_status_id_and_preview_card_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_preview_cards_statuses_on_status_id_and_preview_card_id ON public.preview_cards_statuses USING btree (status_id, preview_card_id);


--
-- Name: index_report_notes_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_report_notes_on_account_id ON public.report_notes USING btree (account_id);


--
-- Name: index_report_notes_on_report_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_report_notes_on_report_id ON public.report_notes USING btree (report_id);


--
-- Name: index_reports_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_reports_on_account_id ON public.reports USING btree (account_id);


--
-- Name: index_reports_on_target_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_reports_on_target_account_id ON public.reports USING btree (target_account_id);


--
-- Name: index_scheduled_statuses_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_scheduled_statuses_on_account_id ON public.scheduled_statuses USING btree (account_id);


--
-- Name: index_scheduled_statuses_on_scheduled_at; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_scheduled_statuses_on_scheduled_at ON public.scheduled_statuses USING btree (scheduled_at);


--
-- Name: index_session_activations_on_access_token_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_session_activations_on_access_token_id ON public.session_activations USING btree (access_token_id);


--
-- Name: index_session_activations_on_session_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_session_activations_on_session_id ON public.session_activations USING btree (session_id);


--
-- Name: index_session_activations_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_session_activations_on_user_id ON public.session_activations USING btree (user_id);


--
-- Name: index_settings_on_thing_type_and_thing_id_and_var; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_settings_on_thing_type_and_thing_id_and_var ON public.settings USING btree (thing_type, thing_id, var);


--
-- Name: index_site_uploads_on_var; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_site_uploads_on_var ON public.site_uploads USING btree (var);


--
-- Name: index_status_pins_on_account_id_and_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_status_pins_on_account_id_and_status_id ON public.status_pins USING btree (account_id, status_id);


--
-- Name: index_status_stats_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_status_stats_on_status_id ON public.status_stats USING btree (status_id);


--
-- Name: index_statuses_20190820; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_20190820 ON public.statuses USING btree (account_id, id DESC, visibility, updated_at) WHERE (deleted_at IS NULL);


--
-- Name: index_statuses_local_20190824; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_local_20190824 ON public.statuses USING btree (id DESC, account_id) WHERE ((local OR (uri IS NULL)) AND (deleted_at IS NULL) AND (visibility = 0) AND (reblog_of_id IS NULL) AND ((NOT reply) OR (in_reply_to_account_id = account_id)));


--
-- Name: index_statuses_on_in_reply_to_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_on_in_reply_to_account_id ON public.statuses USING btree (in_reply_to_account_id);


--
-- Name: index_statuses_on_in_reply_to_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_on_in_reply_to_id ON public.statuses USING btree (in_reply_to_id);


--
-- Name: index_statuses_on_reblog_of_id_and_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_on_reblog_of_id_and_account_id ON public.statuses USING btree (reblog_of_id, account_id);


--
-- Name: index_statuses_on_uri; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_statuses_on_uri ON public.statuses USING btree (uri);


--
-- Name: index_statuses_public_20200119; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_public_20200119 ON public.statuses USING btree (id DESC, account_id) WHERE ((deleted_at IS NULL) AND (visibility = 0) AND (reblog_of_id IS NULL) AND ((NOT reply) OR (in_reply_to_account_id = account_id)));


--
-- Name: index_statuses_tags_on_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_statuses_tags_on_status_id ON public.statuses_tags USING btree (status_id);


--
-- Name: index_statuses_tags_on_tag_id_and_status_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_statuses_tags_on_tag_id_and_status_id ON public.statuses_tags USING btree (tag_id, status_id);


--
-- Name: index_tags_on_name_lower; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_tags_on_name_lower ON public.tags USING btree (lower((name)::text));


--
-- Name: index_tombstones_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_tombstones_on_account_id ON public.tombstones USING btree (account_id);


--
-- Name: index_tombstones_on_uri; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_tombstones_on_uri ON public.tombstones USING btree (uri);


--
-- Name: index_unique_conversations; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_unique_conversations ON public.account_conversations USING btree (account_id, conversation_id, participant_account_ids);


--
-- Name: index_user_invite_requests_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_user_invite_requests_on_user_id ON public.user_invite_requests USING btree (user_id);


--
-- Name: index_users_on_account_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_users_on_account_id ON public.users USING btree (account_id);


--
-- Name: index_users_on_confirmation_token; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_users_on_confirmation_token ON public.users USING btree (confirmation_token);


--
-- Name: index_users_on_created_by_application_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_users_on_created_by_application_id ON public.users USING btree (created_by_application_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_remember_token; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_users_on_remember_token ON public.users USING btree (remember_token);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: index_web_push_subscriptions_on_access_token_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_web_push_subscriptions_on_access_token_id ON public.web_push_subscriptions USING btree (access_token_id);


--
-- Name: index_web_push_subscriptions_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX index_web_push_subscriptions_on_user_id ON public.web_push_subscriptions USING btree (user_id);


--
-- Name: index_web_settings_on_user_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX index_web_settings_on_user_id ON public.web_settings USING btree (user_id);


--
-- Name: search_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX search_index ON public.accounts USING gin ((((setweight(to_tsvector('simple'::regconfig, (display_name)::text), 'A'::"char") || setweight(to_tsvector('simple'::regconfig, (username)::text), 'B'::"char")) || setweight(to_tsvector('simple'::regconfig, (COALESCE(domain, ''::character varying))::text), 'C'::"char"))));


--
-- Name: web_settings fk_11910667b2; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_settings
    ADD CONSTRAINT fk_11910667b2 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: account_domain_blocks fk_206c6029bd; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_domain_blocks
    ADD CONSTRAINT fk_206c6029bd FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: conversation_mutes fk_225b4212bb; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.conversation_mutes
    ADD CONSTRAINT fk_225b4212bb FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: statuses_tags fk_3081861e21; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses_tags
    ADD CONSTRAINT fk_3081861e21 FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: follows fk_32ed1b5560; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT fk_32ed1b5560 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: oauth_access_grants fk_34d54b0a33; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT fk_34d54b0a33 FOREIGN KEY (application_id) REFERENCES public.oauth_applications(id) ON DELETE CASCADE;


--
-- Name: blocks fk_4269e03e65; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.blocks
    ADD CONSTRAINT fk_4269e03e65 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: reports fk_4b81f7522c; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT fk_4b81f7522c FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: users fk_50500f500d; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_50500f500d FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: favourites fk_5eb6c2b873; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT fk_5eb6c2b873 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: oauth_access_grants fk_63b044929b; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_grants
    ADD CONSTRAINT fk_63b044929b FOREIGN KEY (resource_owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: imports fk_6db1b6e408; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.imports
    ADD CONSTRAINT fk_6db1b6e408 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: follows fk_745ca29eac; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follows
    ADD CONSTRAINT fk_745ca29eac FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: follow_requests fk_76d644b0e7; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follow_requests
    ADD CONSTRAINT fk_76d644b0e7 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: follow_requests fk_9291ec025d; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.follow_requests
    ADD CONSTRAINT fk_9291ec025d FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: blocks fk_9571bfabc1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.blocks
    ADD CONSTRAINT fk_9571bfabc1 FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: session_activations fk_957e5bda89; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.session_activations
    ADD CONSTRAINT fk_957e5bda89 FOREIGN KEY (access_token_id) REFERENCES public.oauth_access_tokens(id) ON DELETE CASCADE;


--
-- Name: media_attachments fk_96dd81e81b; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.media_attachments
    ADD CONSTRAINT fk_96dd81e81b FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: mentions fk_970d43f9d1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mentions
    ADD CONSTRAINT fk_970d43f9d1 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: statuses fk_9bda1543f7; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT fk_9bda1543f7 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: oauth_applications fk_b0988c7c0a; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_applications
    ADD CONSTRAINT fk_b0988c7c0a FOREIGN KEY (owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: favourites fk_b0e856845e; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.favourites
    ADD CONSTRAINT fk_b0e856845e FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: mutes fk_b8d8daf315; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mutes
    ADD CONSTRAINT fk_b8d8daf315 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: reports fk_bca45b75fd; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT fk_bca45b75fd FOREIGN KEY (action_taken_by_account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: identities fk_bea040f377; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.identities
    ADD CONSTRAINT fk_bea040f377 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: notifications fk_c141c8ee55; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_c141c8ee55 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: statuses fk_c7fa917661; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT fk_c7fa917661 FOREIGN KEY (in_reply_to_account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: status_pins fk_d4cb435b62; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_pins
    ADD CONSTRAINT fk_d4cb435b62 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: session_activations fk_e5fda67334; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.session_activations
    ADD CONSTRAINT fk_e5fda67334 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: oauth_access_tokens fk_e84df68546; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT fk_e84df68546 FOREIGN KEY (resource_owner_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: reports fk_eb37af34f0; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT fk_eb37af34f0 FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: mutes fk_eecff219ea; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mutes
    ADD CONSTRAINT fk_eecff219ea FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: oauth_access_tokens fk_f5fc4c1ee3; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.oauth_access_tokens
    ADD CONSTRAINT fk_f5fc4c1ee3 FOREIGN KEY (application_id) REFERENCES public.oauth_applications(id) ON DELETE CASCADE;


--
-- Name: notifications fk_fbd6b0bf9e; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT fk_fbd6b0bf9e FOREIGN KEY (from_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: backups fk_rails_096669d221; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.backups
    ADD CONSTRAINT fk_rails_096669d221 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;


--
-- Name: bookmarks fk_rails_11207ffcfd; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT fk_rails_11207ffcfd FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: account_conversations fk_rails_1491654f9f; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_conversations
    ADD CONSTRAINT fk_rails_1491654f9f FOREIGN KEY (conversation_id) REFERENCES public.conversations(id) ON DELETE CASCADE;


--
-- Name: featured_tags fk_rails_174efcf15f; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.featured_tags
    ADD CONSTRAINT fk_rails_174efcf15f FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_tag_stats fk_rails_1fa34bab2d; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_tag_stats
    ADD CONSTRAINT fk_rails_1fa34bab2d FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: account_stats fk_rails_215bb31ff1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_stats
    ADD CONSTRAINT fk_rails_215bb31ff1 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: accounts fk_rails_2320833084; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT fk_rails_2320833084 FOREIGN KEY (moved_to_account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: featured_tags fk_rails_23a9055c7c; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.featured_tags
    ADD CONSTRAINT fk_rails_23a9055c7c FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: scheduled_statuses fk_rails_23bd9018f9; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.scheduled_statuses
    ADD CONSTRAINT fk_rails_23bd9018f9 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: statuses fk_rails_256483a9ab; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT fk_rails_256483a9ab FOREIGN KEY (reblog_of_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: media_attachments fk_rails_31fc5aeef1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.media_attachments
    ADD CONSTRAINT fk_rails_31fc5aeef1 FOREIGN KEY (scheduled_status_id) REFERENCES public.scheduled_statuses(id) ON DELETE SET NULL;


--
-- Name: user_invite_requests fk_rails_3773f15361; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_invite_requests
    ADD CONSTRAINT fk_rails_3773f15361 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: lists fk_rails_3853b78dac; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.lists
    ADD CONSTRAINT fk_rails_3853b78dac FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: polls fk_rails_3e0d9f1115; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT fk_rails_3e0d9f1115 FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: media_attachments fk_rails_3ec0cfdd70; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.media_attachments
    ADD CONSTRAINT fk_rails_3ec0cfdd70 FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE SET NULL;


--
-- Name: account_moderation_notes fk_rails_3f8b75089b; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_moderation_notes
    ADD CONSTRAINT fk_rails_3f8b75089b FOREIGN KEY (account_id) REFERENCES public.accounts(id);


--
-- Name: list_accounts fk_rails_40f9cc29f1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.list_accounts
    ADD CONSTRAINT fk_rails_40f9cc29f1 FOREIGN KEY (follow_id) REFERENCES public.follows(id) ON DELETE CASCADE;


--
-- Name: status_stats fk_rails_4a247aac42; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_stats
    ADD CONSTRAINT fk_rails_4a247aac42 FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: reports fk_rails_4e7a498fb4; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT fk_rails_4e7a498fb4 FOREIGN KEY (assigned_account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: mentions fk_rails_59edbe2887; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mentions
    ADD CONSTRAINT fk_rails_59edbe2887 FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: conversation_mutes fk_rails_5ab139311f; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.conversation_mutes
    ADD CONSTRAINT fk_rails_5ab139311f FOREIGN KEY (conversation_id) REFERENCES public.conversations(id) ON DELETE CASCADE;


--
-- Name: polls fk_rails_5b19a0c011; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT fk_rails_5b19a0c011 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: status_pins fk_rails_65c05552f1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.status_pins
    ADD CONSTRAINT fk_rails_65c05552f1 FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: account_identity_proofs fk_rails_6a219ca385; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_identity_proofs
    ADD CONSTRAINT fk_rails_6a219ca385 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_conversations fk_rails_6f5278b6e9; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_conversations
    ADD CONSTRAINT fk_rails_6f5278b6e9 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: announcement_reactions fk_rails_7444ad831f; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_reactions
    ADD CONSTRAINT fk_rails_7444ad831f FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: web_push_subscriptions fk_rails_751a9f390b; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_push_subscriptions
    ADD CONSTRAINT fk_rails_751a9f390b FOREIGN KEY (access_token_id) REFERENCES public.oauth_access_tokens(id) ON DELETE CASCADE;


--
-- Name: report_notes fk_rails_7fa83a61eb; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_notes
    ADD CONSTRAINT fk_rails_7fa83a61eb FOREIGN KEY (report_id) REFERENCES public.reports(id) ON DELETE CASCADE;


--
-- Name: list_accounts fk_rails_85fee9d6ab; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.list_accounts
    ADD CONSTRAINT fk_rails_85fee9d6ab FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: custom_filters fk_rails_8b8d786993; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.custom_filters
    ADD CONSTRAINT fk_rails_8b8d786993 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: users fk_rails_8fb2a43e88; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_8fb2a43e88 FOREIGN KEY (invite_id) REFERENCES public.invites(id) ON DELETE SET NULL;


--
-- Name: statuses fk_rails_94a6f70399; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses
    ADD CONSTRAINT fk_rails_94a6f70399 FOREIGN KEY (in_reply_to_id) REFERENCES public.statuses(id) ON DELETE SET NULL;


--
-- Name: announcement_mutes fk_rails_9c99f8e835; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_mutes
    ADD CONSTRAINT fk_rails_9c99f8e835 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: bookmarks fk_rails_9f6ac182a6; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bookmarks
    ADD CONSTRAINT fk_rails_9f6ac182a6 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: announcement_reactions fk_rails_a1226eaa5c; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_reactions
    ADD CONSTRAINT fk_rails_a1226eaa5c FOREIGN KEY (announcement_id) REFERENCES public.announcements(id) ON DELETE CASCADE;


--
-- Name: account_pins fk_rails_a176e26c37; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_pins
    ADD CONSTRAINT fk_rails_a176e26c37 FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_warnings fk_rails_a65a1bf71b; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_warnings
    ADD CONSTRAINT fk_rails_a65a1bf71b FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: poll_votes fk_rails_a6e6974b7e; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT fk_rails_a6e6974b7e FOREIGN KEY (poll_id) REFERENCES public.polls(id) ON DELETE CASCADE;


--
-- Name: markers fk_rails_a7009bc2b6; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.markers
    ADD CONSTRAINT fk_rails_a7009bc2b6 FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: admin_action_logs fk_rails_a7667297fa; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.admin_action_logs
    ADD CONSTRAINT fk_rails_a7667297fa FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_warnings fk_rails_a7ebbb1e37; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_warnings
    ADD CONSTRAINT fk_rails_a7ebbb1e37 FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: web_push_subscriptions fk_rails_b006f28dac; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_push_subscriptions
    ADD CONSTRAINT fk_rails_b006f28dac FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: poll_votes fk_rails_b6c18cf44a; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT fk_rails_b6c18cf44a FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: announcement_reactions fk_rails_b742c91c0e; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_reactions
    ADD CONSTRAINT fk_rails_b742c91c0e FOREIGN KEY (custom_emoji_id) REFERENCES public.custom_emojis(id) ON DELETE CASCADE;


--
-- Name: account_migrations fk_rails_c9f701caaf; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_migrations
    ADD CONSTRAINT fk_rails_c9f701caaf FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: report_notes fk_rails_cae66353f3; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_notes
    ADD CONSTRAINT fk_rails_cae66353f3 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_pins fk_rails_d44979e5dd; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_pins
    ADD CONSTRAINT fk_rails_d44979e5dd FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_migrations fk_rails_d9a8dad070; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_migrations
    ADD CONSTRAINT fk_rails_d9a8dad070 FOREIGN KEY (target_account_id) REFERENCES public.accounts(id) ON DELETE SET NULL;


--
-- Name: account_moderation_notes fk_rails_dd62ed5ac3; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_moderation_notes
    ADD CONSTRAINT fk_rails_dd62ed5ac3 FOREIGN KEY (target_account_id) REFERENCES public.accounts(id);


--
-- Name: statuses_tags fk_rails_df0fe11427; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.statuses_tags
    ADD CONSTRAINT fk_rails_df0fe11427 FOREIGN KEY (status_id) REFERENCES public.statuses(id) ON DELETE CASCADE;


--
-- Name: announcement_mutes fk_rails_e35401adf1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.announcement_mutes
    ADD CONSTRAINT fk_rails_e35401adf1 FOREIGN KEY (announcement_id) REFERENCES public.announcements(id) ON DELETE CASCADE;


--
-- Name: list_accounts fk_rails_e54e356c88; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.list_accounts
    ADD CONSTRAINT fk_rails_e54e356c88 FOREIGN KEY (list_id) REFERENCES public.lists(id) ON DELETE CASCADE;


--
-- Name: users fk_rails_ecc9536e7c; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT fk_rails_ecc9536e7c FOREIGN KEY (created_by_application_id) REFERENCES public.oauth_applications(id) ON DELETE SET NULL;


--
-- Name: tombstones fk_rails_f95b861449; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tombstones
    ADD CONSTRAINT fk_rails_f95b861449 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: account_aliases fk_rails_fc91575d08; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.account_aliases
    ADD CONSTRAINT fk_rails_fc91575d08 FOREIGN KEY (account_id) REFERENCES public.accounts(id) ON DELETE CASCADE;


--
-- Name: invites fk_rails_ff69dbb2ac; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.invites
    ADD CONSTRAINT fk_rails_ff69dbb2ac FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

