--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3 (Debian 11.3-1.pgdg90+1)
-- Dumped by pg_dump version 11.4

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: eventsources; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.eventsources (
    eventsource_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    enabled boolean DEFAULT true NOT NULL,
    contract_address character varying(255) NOT NULL,
    kernel_address character varying(255) NOT NULL,
    ens_name character varying(255),
    abi jsonb,
    event_name character varying(255) NOT NULL,
    app_name character varying(255) NOT NULL,
    network character varying(255) NOT NULL,
    from_block bigint NOT NULL,
    last_poll timestamp with time zone
);


ALTER TABLE public.eventsources OWNER TO "notification-service";

--
-- Name: eventsources_eventsource_id_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.eventsources_eventsource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.eventsources_eventsource_id_seq OWNER TO "notification-service";

--
-- Name: eventsources_eventsource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.eventsources_eventsource_id_seq OWNED BY public.eventsources.eventsource_id;


--
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO "notification-service";

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_id_seq OWNER TO "notification-service";

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO "notification-service";

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_lock_index_seq OWNER TO "notification-service";

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: notifications; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.notifications (
    notification_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    subscription_id integer NOT NULL,
    return_values jsonb,
    block_time timestamp with time zone NOT NULL,
    transaction_hash character varying(255) NOT NULL,
    block bigint NOT NULL,
    sent boolean DEFAULT false NOT NULL
);


ALTER TABLE public.notifications OWNER TO "notification-service";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.notifications_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.notifications_notification_id_seq OWNER TO "notification-service";

--
-- Name: notifications_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.notifications_notification_id_seq OWNED BY public.notifications.notification_id;


--
-- Name: subscriptions; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.subscriptions (
    subscription_id integer NOT NULL,
    user_id integer NOT NULL,
    eventsource_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    join_block bigint NOT NULL
);


ALTER TABLE public.subscriptions OWNER TO "notification-service";

--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.subscriptions_subscription_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscriptions_subscription_id_seq OWNER TO "notification-service";

--
-- Name: subscriptions_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.subscriptions_subscription_id_seq OWNED BY public.subscriptions.subscription_id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.tokens (
    token_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    user_id integer NOT NULL,
    token_scope text DEFAULT 'MAGICLINK'::text,
    valid boolean DEFAULT true NOT NULL,
    some_new_field character varying(255),
    CONSTRAINT tokens_token_scope_check CHECK ((token_scope = ANY (ARRAY['MAGICLINK'::text, 'API'::text])))
);


ALTER TABLE public.tokens OWNER TO "notification-service";

--
-- Name: tokens_token_id_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.tokens_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tokens_token_id_seq OWNER TO "notification-service";

--
-- Name: tokens_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.tokens_token_id_seq OWNED BY public.tokens.token_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: notification-service
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    email character varying(255) NOT NULL,
    verified boolean DEFAULT false NOT NULL
);


ALTER TABLE public.users OWNER TO "notification-service";

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: notification-service
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO "notification-service";

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notification-service
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: eventsources eventsource_id; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.eventsources ALTER COLUMN eventsource_id SET DEFAULT nextval('public.eventsources_eventsource_id_seq'::regclass);


--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Name: notifications notification_id; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.notifications ALTER COLUMN notification_id SET DEFAULT nextval('public.notifications_notification_id_seq'::regclass);


--
-- Name: subscriptions subscription_id; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.subscriptions ALTER COLUMN subscription_id SET DEFAULT nextval('public.subscriptions_subscription_id_seq'::regclass);


--
-- Name: tokens token_id; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.tokens ALTER COLUMN token_id SET DEFAULT nextval('public.tokens_token_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: eventsources eventsources_contract_address_event_name_network_unique; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.eventsources
    ADD CONSTRAINT eventsources_contract_address_event_name_network_unique UNIQUE (contract_address, event_name, network);


--
-- Name: eventsources eventsources_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.eventsources
    ADD CONSTRAINT eventsources_pkey PRIMARY KEY (eventsource_id);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (notification_id);


--
-- Name: subscriptions subscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_pkey PRIMARY KEY (subscription_id);


--
-- Name: subscriptions subscriptions_user_id_eventsource_id_unique; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_user_id_eventsource_id_unique UNIQUE (user_id, eventsource_id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (token_id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: notifications_subscription_id_index; Type: INDEX; Schema: public; Owner: notification-service
--

CREATE INDEX notifications_subscription_id_index ON public.notifications USING btree (subscription_id);


--
-- Name: subscriptions_eventsource_id_index; Type: INDEX; Schema: public; Owner: notification-service
--

CREATE INDEX subscriptions_eventsource_id_index ON public.subscriptions USING btree (eventsource_id);


--
-- Name: subscriptions_user_id_index; Type: INDEX; Schema: public; Owner: notification-service
--

CREATE INDEX subscriptions_user_id_index ON public.subscriptions USING btree (user_id);


--
-- Name: tokens_user_id_index; Type: INDEX; Schema: public; Owner: notification-service
--

CREATE INDEX tokens_user_id_index ON public.tokens USING btree (user_id);


--
-- Name: users_email_index; Type: INDEX; Schema: public; Owner: notification-service
--

CREATE INDEX users_email_index ON public.users USING btree (email);


--
-- Name: notifications notifications_subscription_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_subscription_id_foreign FOREIGN KEY (subscription_id) REFERENCES public.subscriptions(subscription_id) ON DELETE CASCADE;


--
-- Name: subscriptions subscriptions_eventsource_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_eventsource_id_foreign FOREIGN KEY (eventsource_id) REFERENCES public.eventsources(eventsource_id);


--
-- Name: subscriptions subscriptions_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.subscriptions
    ADD CONSTRAINT subscriptions_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- Name: tokens tokens_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: notification-service
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

