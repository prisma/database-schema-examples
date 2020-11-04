--
-- SQLINES DEMO *** se dump
--

-- SQLINES DEMO *** ase version 10.6
-- SQLINES DEMO ***  version 10.6

-- SET @statement_timeout = 0;
-- SET @lock_timeout = 0;
-- SET @idle_in_transaction_session_timeout = 0;
-- SET @client_encoding = 'UTF8';
-- SET @standard_conforming_strings = on;
-- -- SQLINES LICENSE FOR EVALUATION USE 
-- SELECT pg_catalog.set_config('search_path', '', 0);
-- SET @check_function_bodies = 0;
-- SET @client_min_messages = warning;
-- SET @row_security = off;

--
-- SQLINES DEMO *** : SCHEMA; Schema: -; Owner: -
--

-- CREATE SCHEMA convo;


--
-- SQLINES DEMO *** : SCHEMA; Schema: -; Owner: -
--

-- CREATE SCHEMA dbo;


--
-- SQLINES DEMO *** pe: EXTENSION; Schema: -; Owner: -
--

-- CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


-- --
-- -- SQLINES DEMO *** lpgsql; Type: COMMENT; Schema: -; Owner: -
-- --

-- COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- SQLINES DEMO *** e: EXTENSION; Schema: -; Owner: -
--

-- CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA dbo;


-- --
-- -- SQLINES DEMO *** itext; Type: COMMENT; Schema: -; Owner: -
-- --

-- COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- SQLINES DEMO *** us; Type: TYPE; Schema: dbo; Owner: -
--

-- CREATE TYPE dbo.report_status_base AS ENUM (
--     'ASKED',
--     'SKIP',
--     'COMPLETE',
--     'PENDING'
-- );


--
-- SQLINES DEMO *** ; Type: TYPE; Schema: dbo; Owner: -
--

-- CREATE TYPE dbo.review_type AS ENUM (
--     'REFERRED_BY',
--     'COMMENT',
--     'EXIT_FEEDBACK'
-- );


--
-- SQLINES DEMO *** r_status; Type: TYPE; Schema: dbo; Owner: -
--

-- CREATE TYPE dbo.standup_user_status_base AS ENUM (
--     'ACTIVE',
--     'INACTIVE',
--     'INVITED'
-- );


--
-- SQLINES DEMO *** ; Type: TYPE; Schema: dbo; Owner: -
--

-- CREATE TYPE dbo.team_status_base AS ENUM (
--     'ACTIVE',
--     'INACTIVE',
--     'DELINQUENT'
-- );


--
-- SQLINES DEMO *** _at(); Type: FUNCTION; Schema: convo; Owner: -
--

-- SQLINES LICENSE FOR EVALUATION USE 
-- CREATE FUNCTION dbo.set_updated_at() RETURNS trigger
--     LANGUAGE declare @plpgsql
--     AS
--     BEGIN $$
--  Return null;
--  End;
--   begin
--     set @new.updated_at = getdate();
--     return new;
--   end;
--   $$;


--
-- SQLINES DEMO *** _at(); Type: FUNCTION; Schema: dbo; Owner: -
--

-- SQLINES LICENSE FOR EVALUATION USE 
-- CREATE FUNCTION dbo.set_updated_at() RETURNS trigger
--     LANGUAGE declare @plpgsql
--     AS
--     BEGIN $$
--  Return null;
--  End;
--   begin
--     set @new.updated_at = getdate();
--     return new;
--   end;
--   $$;


-- --
-- -- SQLINES DEMO *** _at(); Type: FUNCTION; Schema: dbo; Owner: -
-- --

-- -- SQLINES LICENSE FOR EVALUATION USE 
-- CREATE FUNCTION dbo.set_updated_at() RETURNS trigger
--     LANGUAGE declare @plpgsql
--     AS
--     BEGIN $$
--  Return null;
--  End;
--   begin
--     set @new.updated_at = getdate();
--     return new;
----   end;
--   $$;


-- SET @default_tablespace = '';

-- SET @default_with_oids = 0;

--
-- SQLINES DEMO *** e: TABLE; Schema: convo; Owner: -
--

CREATE TABLE dbo.convos (
    "user" varchar(max) NOT NULL,
    intent varchar(max),
    slot varchar(max),
    state NVARCHAR DEFAULT cast('{}' as NVARCHAR) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL, 
);


--
-- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.eventids (
    event_id varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.migrate (
    version bigint NOT NULL
);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.posts (
    id integer NOT NULL,
    standup_id integer NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** q; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.posts_id_seq OWNED BY dbo.posts.id;


--
-- SQLINES DEMO *** Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.questions (
    id integer NOT NULL,
    standup_id integer NOT NULL,
    "order" smallint NOT NULL,
    question varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** d_seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** d_seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.questions_id_seq OWNED BY dbo.questions.id;


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.reports (
    id integer NOT NULL,
    user_id integer NOT NULL,
    standup_id integer NOT NULL,
    post_id integer,
    -- status_base VARCHAR(10) NOT NULL CHECK (status_base IN('ASKED', 'SKIP', 'COMPLETE', 'PENDING'))
    questions NVARCHAR NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.reports_id_seq OWNED BY dbo.reports.id;


--
-- SQLINES DEMO *** pe: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.reviews (
    id integer NOT NULL,
    user_id integer NOT NULL,
    -- type VARCHAR(10) NOT NULL CHECK (type IN('REFERRED_BY', 'COMMENT', 'EXIT_FEEDBACK'))
    text varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.reviews_id_seq OWNED BY dbo.reviews.id;


--
-- SQLINES DEMO *** ype: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.standups (
    id integer NOT NULL,
    team_id integer NOT NULL,
    name NVARCHAR(100) NOT NULL,
    "time" time NOT NULL,
    timezone varchar(max) NOT NULL,
    channel_id varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL,
    is_threaded bit DEFAULT 0 NOT NULL
);


--
-- SQLINES DEMO *** _seq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.standups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** _seq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.standups_id_seq OWNED BY dbo.standups.id;


--
-- SQLINES DEMO *** ers; Type: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.standups_users (
    standup_id integer NOT NULL,
    user_id integer NOT NULL,
    "time" time NOT NULL,
    -- status_base VARCHAR(10) NOT NULL CHECK(status_base IN ('ACTIVE','INACTIVE','INVITED'))
    is_standup_owner bit DEFAULT 0 NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.teams (
    id integer NOT NULL,
    team_access_token varchar(max) NOT NULL,
    team_slack_id varchar(max) NOT NULL,
    bot_access_token varchar(max) NOT NULL,
    bot_slack_id varchar(max) NOT NULL,
    team_name varchar(max) NOT NULL,
    scope varchar(max) DEFAULT cast('{}' as varchar(max)) NOT NULL,
    stripe_id varchar(max),
    cost_per_user integer DEFAULT 100 NOT NULL,
    minimum_monthly_cost integer DEFAULT 0 NOT NULL,
    trial_ends datetimeoffset DEFAULT getdate() NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL,
    -- status_base VARCHAR(10) NOT NULL DEFAULT 'ACTIVE' CHECK(status_base IN('ACTIVE','INACTIVE','DELINQUENT'))
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** q; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.teams_id_seq OWNED BY dbo.teams.id;


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.users (
    id integer NOT NULL,
    team_id integer NOT NULL,
    slack_id varchar(max) NOT NULL,
    username varchar(max) NOT NULL,
    timezone varchar(max) NOT NULL,
    email varchar(max),
    first_name varchar(max),
    last_name varchar(max),
    avatar_url varchar(max),
    is_team_owner bit DEFAULT 0 NOT NULL,
    created_at datetimeoffset DEFAULT getdate() NOT NULL,
    updated_at datetimeoffset DEFAULT getdate() NOT NULL
);


--
-- SQLINES DEMO *** q; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** q; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.users_id_seq OWNED BY dbo.users.id;


--
-- SQLINES DEMO *** e: TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.events (
    id integer NOT NULL,
    -- create index varchar on dbo.events(max) NOT NULL,
    "time" datetimeoffset NOT NULL,
    checked_at datetimeoffset,
    created_at datetimeoffset DEFAULT dbo.timezone(cast('utc' as varchar(max)), getdate())
);


--
-- SQLINES DEMO *** eq; Type: SEQUENCE; Schema: dbo; Owner: -
--

CREATE SEQUENCE dbo.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- SQLINES DEMO --*** eq; Type: SEQUENCE OWNED BY; Schema: dbo; Owner: -
--

--ALTER SEQUENCE dbo.events_id_seq OWNED BY dbo.events.id;


--
-- SQLINES DEMO *** : TABLE; Schema: dbo; Owner: -
--

CREATE TABLE dbo.tasks (
    -- create index varchar on dbo.tasks(max) NOT NULL,
    active bit DEFAULT 1 NOT NULL,
    rate varchar(max) NOT NULL,
    timezone varchar(max) NOT NULL,
    created_at datetimeoffset DEFAULT dbo.timezone(cast('utc' as varchar(max)), getdate()),
    updated_at datetimeoffset DEFAULT dbo.timezone(cast('utc' as varchar(max)), getdate()),
    rate_type varchar(max) DEFAULT cast('CRON' as varchar(max)) NOT NULL,
    -- CONSTRAINT tasks_rate_type_check CHECK ((rate_type = ANY (ARRAY['CRON'::text, 'RRULE'::text])))
);


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.posts ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.posts_id_seq' as regclass));


--
-- SQLINES DEMO *** d; Type: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.questions ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.questions_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.reports ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.reports_id_seq' as regclass));


--
-- SQLINES DEMO ***  Type: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.reviews ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.reviews_id_seq' as regclass));


--
-- SQLINES DEMO *** ; Type: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.standups ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.standups_id_seq' as regclass));


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.teams ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.teams_id_seq' as regclass));


--
-- SQLINES DEMO *** ype: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.users ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.users_id_seq' as regclass));


--
-- SQLINES DEMO *** Type: DEFAULT; Schema: dbo; Owner: -
--

--ALTER TABLE  dbo.events ALTER COLUMN id SET @DEFAULT dbo.nextval(cast('dbo.events_id_seq' as regclass));


--
-- SQLINES DEMO *** os_pkey; Type: CONSTRAINT; Schema: convo; Owner: -
--

ALTER TABLE  dbo.convos
    ADD CONSTRAINT convos_pkey PRIMARY KEY ("user");


--
-- SQLINES DEMO *** entids_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.eventids
    ADD CONSTRAINT eventids_pkey PRIMARY KEY (event_id);


--
-- SQLINES DEMO *** rate_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.migrate
    ADD CONSTRAINT migrate_pkey PRIMARY KEY (version);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** uestions_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** orts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** orts_user_id_post_id_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_user_id_post_id_key UNIQUE (user_id, post_id);


--
-- SQLINES DEMO *** iews_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** andups_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.standups
    ADD CONSTRAINT standups_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** andups_team_id_name_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.standups
    ADD CONSTRAINT standups_team_id_name_key UNIQUE (team_id, name);


--
-- SQLINES DEMO *** ers standups_users_standup_id_user_id_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.standups_users
    ADD CONSTRAINT standups_users_standup_id_user_id_key UNIQUE (standup_id, user_id);


--
-- SQLINES DEMO *** _bot_access_token_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_bot_access_token_key UNIQUE (bot_access_token);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _team_access_token_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_team_access_token_key UNIQUE (team_access_token);


--
-- SQLINES DEMO *** _team_slack_id_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.teams
    ADD CONSTRAINT teams_team_slack_id_key UNIQUE (team_slack_id);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** _slack_id_team_id_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT users_slack_id_team_id_key UNIQUE (slack_id, team_id);


--
-- SQLINES DEMO *** ts_pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- SQLINES DEMO *** ts_time_key_key; Type: CONSTRAINT; Schema: dbo; Owner: -
--

-- ALTER TABLE  dbo.events
--     ADD CONSTRAINT events_time_key_key UNIQUE ("time", key);


--
-- SQLINES DEMO *** _pkey; Type: CONSTRAINT; Schema: dbo; Owner: -
--

-- ALTER TABLE  dbo.tasks
--     ADD CONSTRAINT tasks_pkey PRIMARY KEY (key);


--
-- SQLINES DEMO *** ted_at; Type: TRIGGER; Schema: convo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.convos INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** ed_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.teams INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** ed_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.users INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** dated_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.standups INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** pdated_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.questions INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** ers updated_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.standups_users INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** ed_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.posts INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** ated_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.reports INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** ed_at; Type: TRIGGER; Schema: dbo; Owner: -
--

--CREATE TRIGGER updated_at ON dbo.tasks INSTEAD OF UPDATE  AS EXECUTE PROCEDURE dbo.set_updated_at();


--
-- SQLINES DEMO *** _standup_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.posts
    ADD CONSTRAINT posts_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** uestions_standup_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.questions
    ADD CONSTRAINT questions_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** orts_post_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_post_id_fkey FOREIGN KEY (post_id) REFERENCES dbo.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** orts_standup_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** orts_user_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reports
    ADD CONSTRAINT reports_user_id_fkey FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** iews_user_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.reviews
    ADD CONSTRAINT reviews_user_id_fkey FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** andups_team_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.standups
    ADD CONSTRAINT standups_team_id_fkey FOREIGN KEY (team_id) REFERENCES dbo.teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** ers standups_users_standup_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.standups_users
    ADD CONSTRAINT standups_users_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES dbo.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** ers standups_users_user_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.standups_users
    ADD CONSTRAINT standups_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES dbo.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** _team_id_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

ALTER TABLE  dbo.users
    ADD CONSTRAINT users_team_id_fkey FOREIGN KEY (team_id) REFERENCES dbo.teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** ts_key_fkey; Type: FK CONSTRAINT; Schema: dbo; Owner: -
--

-- ALTER TABLE  dbo.events
--     ADD CONSTRAINT events_key_fkey FOREIGN KEY (key) REFERENCES dbo.tasks(key) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- SQLINES DEMO *** se dump complete
--

