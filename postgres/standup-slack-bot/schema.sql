--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6
-- Dumped by pg_dump version 10.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: convo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA convo;


--
-- Name: tempo; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA tempo;


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: report_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.report_status AS ENUM (
    'ASKED',
    'SKIP',
    'COMPLETE',
    'PENDING'
);


--
-- Name: review_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.review_type AS ENUM (
    'REFERRED_BY',
    'COMMENT',
    'EXIT_FEEDBACK'
);


--
-- Name: standup_user_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.standup_user_status AS ENUM (
    'ACTIVE',
    'INACTIVE',
    'INVITED'
);


--
-- Name: team_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.team_status AS ENUM (
    'ACTIVE',
    'INACTIVE',
    'DELINQUENT'
);


--
-- Name: set_updated_at(); Type: FUNCTION; Schema: convo; Owner: -
--

CREATE FUNCTION convo.set_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  begin
    new.updated_at := current_timestamp;
    return new;
  end;
  $$;


--
-- Name: set_updated_at(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.set_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  begin
    new.updated_at := current_timestamp;
    return new;
  end;
  $$;


--
-- Name: set_updated_at(); Type: FUNCTION; Schema: tempo; Owner: -
--

CREATE FUNCTION tempo.set_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
  begin
    new.updated_at := current_timestamp;
    return new;
  end;
  $$;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: convos; Type: TABLE; Schema: convo; Owner: -
--

CREATE TABLE convo.convos (
    "user" text NOT NULL,
    intent text,
    slot text,
    state jsonb DEFAULT '{}'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
    updated_at timestamp with time zone DEFAULT timezone('utc'::text, now())
);


--
-- Name: eventids; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.eventids (
    event_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: migrate; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.migrate (
    version bigint NOT NULL
);


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    standup_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: questions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    standup_id integer NOT NULL,
    "order" smallint NOT NULL,
    question text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- Name: reports; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reports (
    id integer NOT NULL,
    user_id integer NOT NULL,
    standup_id integer NOT NULL,
    post_id integer,
    status public.report_status DEFAULT 'ASKED'::public.report_status NOT NULL,
    questions jsonb DEFAULT '[]'::jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type public.review_type NOT NULL,
    text text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: standups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.standups (
    id integer NOT NULL,
    team_id integer NOT NULL,
    name public.citext NOT NULL,
    "time" time without time zone NOT NULL,
    timezone text NOT NULL,
    channel_id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    is_threaded boolean DEFAULT false NOT NULL
);


--
-- Name: standups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.standups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: standups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.standups_id_seq OWNED BY public.standups.id;


--
-- Name: standups_users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.standups_users (
    standup_id integer NOT NULL,
    user_id integer NOT NULL,
    "time" time without time zone NOT NULL,
    status public.standup_user_status NOT NULL,
    is_standup_owner boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: teams; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    team_access_token text NOT NULL,
    team_slack_id text NOT NULL,
    bot_access_token text NOT NULL,
    bot_slack_id text NOT NULL,
    team_name text NOT NULL,
    scope text[] DEFAULT '{}'::text[] NOT NULL,
    stripe_id text,
    cost_per_user integer DEFAULT 100 NOT NULL,
    minimum_monthly_cost integer DEFAULT 0 NOT NULL,
    trial_ends timestamp with time zone DEFAULT (now() + '14 days'::interval) NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    status public.team_status DEFAULT 'ACTIVE'::public.team_status NOT NULL
);


--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    team_id integer NOT NULL,
    slack_id text NOT NULL,
    username text NOT NULL,
    timezone text NOT NULL,
    email text,
    first_name text,
    last_name text,
    avatar_url text,
    is_team_owner boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: events; Type: TABLE; Schema: tempo; Owner: -
--

CREATE TABLE tempo.events (
    id integer NOT NULL,
    key text NOT NULL,
    "time" timestamp with time zone NOT NULL,
    checked_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT timezone('utc'::text, now())
);


--
-- Name: events_id_seq; Type: SEQUENCE; Schema: tempo; Owner: -
--

CREATE SEQUENCE tempo.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: tempo; Owner: -
--

ALTER SEQUENCE tempo.events_id_seq OWNED BY tempo.events.id;


--
-- Name: tasks; Type: TABLE; Schema: tempo; Owner: -
--

CREATE TABLE tempo.tasks (
    key text NOT NULL,
    active boolean DEFAULT true NOT NULL,
    rate text NOT NULL,
    timezone text NOT NULL,
    created_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
    updated_at timestamp with time zone DEFAULT timezone('utc'::text, now()),
    rate_type text DEFAULT 'CRON'::text NOT NULL,
    CONSTRAINT tasks_rate_type_check CHECK ((rate_type = ANY (ARRAY['CRON'::text, 'RRULE'::text])))
);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: standups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups ALTER COLUMN id SET DEFAULT nextval('public.standups_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: tempo; Owner: -
--

ALTER TABLE ONLY tempo.events ALTER COLUMN id SET DEFAULT nextval('tempo.events_id_seq'::regclass);


--
-- Name: convos convos_pkey; Type: CONSTRAINT; Schema: convo; Owner: -
--

ALTER TABLE ONLY convo.convos
    ADD CONSTRAINT convos_pkey PRIMARY KEY ("user");


--
-- Name: eventids eventids_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.eventids
    ADD CONSTRAINT eventids_pkey PRIMARY KEY (event_id);


--
-- Name: migrate migrate_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.migrate
    ADD CONSTRAINT migrate_pkey PRIMARY KEY (version);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- Name: reports reports_user_id_post_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_user_id_post_id_key UNIQUE (user_id, post_id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: standups standups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups
    ADD CONSTRAINT standups_pkey PRIMARY KEY (id);


--
-- Name: standups standups_team_id_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups
    ADD CONSTRAINT standups_team_id_name_key UNIQUE (team_id, name);


--
-- Name: standups_users standups_users_standup_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups_users
    ADD CONSTRAINT standups_users_standup_id_user_id_key UNIQUE (standup_id, user_id);


--
-- Name: teams teams_bot_access_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_bot_access_token_key UNIQUE (bot_access_token);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: teams teams_team_access_token_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_team_access_token_key UNIQUE (team_access_token);


--
-- Name: teams teams_team_slack_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_team_slack_id_key UNIQUE (team_slack_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_slack_id_team_id_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_slack_id_team_id_key UNIQUE (slack_id, team_id);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: tempo; Owner: -
--

ALTER TABLE ONLY tempo.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: events events_time_key_key; Type: CONSTRAINT; Schema: tempo; Owner: -
--

ALTER TABLE ONLY tempo.events
    ADD CONSTRAINT events_time_key_key UNIQUE ("time", key);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: tempo; Owner: -
--

ALTER TABLE ONLY tempo.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (key);


--
-- Name: convos updated_at; Type: TRIGGER; Schema: convo; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON convo.convos FOR EACH ROW EXECUTE PROCEDURE convo.set_updated_at();


--
-- Name: teams updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.teams FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: users updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.users FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: standups updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.standups FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: questions updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.questions FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: standups_users updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.standups_users FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: posts updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.posts FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: reports updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.reports FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


--
-- Name: tasks updated_at; Type: TRIGGER; Schema: tempo; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON tempo.tasks FOR EACH ROW EXECUTE PROCEDURE tempo.set_updated_at();


--
-- Name: posts posts_standup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES public.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: questions questions_standup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES public.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reports reports_post_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_post_id_fkey FOREIGN KEY (post_id) REFERENCES public.posts(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reports reports_standup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES public.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reports reports_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reviews reviews_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: standups standups_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups
    ADD CONSTRAINT standups_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: standups_users standups_users_standup_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups_users
    ADD CONSTRAINT standups_users_standup_id_fkey FOREIGN KEY (standup_id) REFERENCES public.standups(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: standups_users standups_users_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.standups_users
    ADD CONSTRAINT standups_users_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: users users_team_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_team_id_fkey FOREIGN KEY (team_id) REFERENCES public.teams(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: events events_key_fkey; Type: FK CONSTRAINT; Schema: tempo; Owner: -
--

ALTER TABLE ONLY tempo.events
    ADD CONSTRAINT events_key_fkey FOREIGN KEY (key) REFERENCES tempo.tasks(key) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

