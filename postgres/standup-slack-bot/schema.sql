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

SET default_tablespace = '';

SET default_with_oids = false;

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
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: -
--



--
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.reports_id_seq', 1, false);


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
-- Name: reports updated_at; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER updated_at BEFORE UPDATE ON public.reports FOR EACH ROW EXECUTE PROCEDURE public.set_updated_at();


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
-- PostgreSQL database dump complete
--


-- This is incomplete (just shows the setup script), I can do a pg_dump if it's useful to have an exact match

-- updated_at trigger
create or replace function set_updated_at() returns trigger as $$
  begin
    new.updated_at := current_timestamp;
    return new;
  end;
  $$ language plpgsql;

-- teams table
create table teams (
  -- relationships
  id serial primary key not null,

  -- data
  team_access_token text not null unique,
  team_slack_id text not null unique,
  bot_access_token text not null unique,
  bot_slack_id text not null,
  team_name text not null,
  scope text[] not null default '{}'::text[],
  stripe_id text,
  active boolean not null default true,
  cost_per_user integer not null default 1,
  minimum_monthly_cost integer not null default 25,
  trial_ends timestamp with time zone not null default (now() at time zone 'utc' + interval '14 days'),

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on teams for each row execute procedure set_updated_at();

-- users table
create table users (
  -- relationships
  id serial primary key not null,
  team_id integer not null references teams (id) on delete cascade on update cascade,

  -- data
  slack_id text not null unique,
  username text not null,
  timezone text not null,
  email text,
  first_name text,
  last_name text,
  avatar_url text,
  is_team_owner boolean not null default 'false',

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on users for each row execute procedure set_updated_at();

create type review_type as enum ('REFERRED_BY','COMMENT','EXIT_FEEDBACK');

create table reviews (
  id serial primary key not null,
  "user_id" integer not null references users(id) on delete cascade on update cascade,

  "type" review_type not null,
  "text" text not null,

  created_at timestamp with time zone not null default (now() at time zone 'utc')
);

-- standups table
create table standups (
  -- relationships
  id serial primary key not null,
  team_id integer not null references teams (id) on delete cascade on update cascade,

  -- data
  "name" text not null,
  "time" time without time zone not null,
  timezone text not null,
  channel_id text not null,

  -- constraints
  unique(team_id, "name"), -- standup names should be unique through the org

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on standups for each row execute procedure set_updated_at();

-- questions
create table questions (
  -- relationships
  id serial primary key not null,
  standup_id integer not null references standups(id) on delete cascade on update cascade,

  "order" smallint not null,
  question text not null,

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on questions for each row execute procedure set_updated_at();

create type standup_user_status as enum ('INVITED','ACTIVE','INACTIVE');

-- standups_users table
create table standups_users (
  -- relationships
  standup_id integer not null references standups(id) on delete cascade on update cascade,
  "user_id" integer not null references users(id) on delete cascade on update cascade,
  unique(standup_id, "user_id"),

  -- data
  "time" time without time zone not null,
  "status" standup_user_status not null,
  is_standup_owner boolean not null default 'false',

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on standups_users for each row execute procedure set_updated_at();

-- posts table
create table if not exists posts (
  -- relationships
  id serial primary key,
  standup_id integer not null references standups(id) on delete cascade on update cascade,

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on posts for each row execute procedure set_updated_at();

-- enum
create type report_status as enum ('ASKED','SKIP','COMPLETE');

-- reports table
create table if not exists reports (
  -- relationships
  id serial primary key,
  "user_id" integer not null references users(id) on delete cascade on update cascade,
  standup_id integer not null references standups(id) on delete cascade on update cascade,

  -- post groups our reports
  post_id integer references posts(id) on delete cascade on update cascade,
  unique("user_id", post_id),

  -- data
  "status" report_status default 'ASKED' not null,
  questions jsonb not null default '[]'::jsonb,

  -- dates
  created_at timestamp with time zone not null default (now() at time zone 'utc'),
  updated_at timestamp with time zone not null default (now() at time zone 'utc')
);
create trigger updated_at before update on reports for each row execute procedure set_updated_at();