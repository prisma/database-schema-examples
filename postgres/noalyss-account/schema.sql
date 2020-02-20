--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
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
-- Name: limit_user(); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.limit_user() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin                                                  
NEW.ac_user := substring(NEW.ac_user from 1 for 80);   
return NEW;                                            
end; $$;


ALTER FUNCTION public.limit_user() OWNER TO prisma;

--
-- Name: upgrade_repo(integer); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.upgrade_repo(p_version integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
        is_mono integer;
begin
        select count (*) into is_mono from information_schema.tables where table_name='repo_version';
        if is_mono = 1 then
                update repo_version set val=p_version;
        else
                update version set val=p_version;
        end if;
end;
$$;


ALTER FUNCTION public.upgrade_repo(p_version integer) OWNER TO prisma;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ac_dossier; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ac_dossier (
    dos_id integer DEFAULT nextval(('dossier_id'::text)::regclass) NOT NULL,
    dos_name text NOT NULL,
    dos_description text,
    dos_email integer DEFAULT '-1'::integer
);


ALTER TABLE public.ac_dossier OWNER TO prisma;

--
-- Name: COLUMN ac_dossier.dos_email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ac_dossier.dos_email IS 'Max emails per day : 0 none , -1 unlimited or  max value';


--
-- Name: ac_users; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ac_users (
    use_id integer DEFAULT nextval(('users_id'::text)::regclass) NOT NULL,
    use_first_name text,
    use_name text,
    use_login text NOT NULL,
    use_active integer DEFAULT 0,
    use_pass text,
    use_admin integer DEFAULT 0,
    use_email text,
    CONSTRAINT ac_users_use_active_check CHECK (((use_active = 0) OR (use_active = 1)))
);


ALTER TABLE public.ac_users OWNER TO prisma;

--
-- Name: COLUMN ac_users.use_email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ac_users.use_email IS 'Email of the user';


--
-- Name: audit_connect; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.audit_connect (
    ac_id integer NOT NULL,
    ac_user text,
    ac_date timestamp without time zone DEFAULT now(),
    ac_ip text,
    ac_state text,
    ac_module text,
    ac_url text,
    CONSTRAINT valid_state CHECK (((ac_state = 'FAIL'::text) OR (ac_state = 'SUCCESS'::text) OR (ac_state = 'AUDIT'::text)))
);


ALTER TABLE public.audit_connect OWNER TO prisma;

--
-- Name: audit_connect_ac_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.audit_connect_ac_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.audit_connect_ac_id_seq OWNER TO prisma;

--
-- Name: audit_connect_ac_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.audit_connect_ac_id_seq OWNED BY public.audit_connect.ac_id;


--
-- Name: dossier_id; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.dossier_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dossier_id OWNER TO prisma;

--
-- Name: dossier_sent_email; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.dossier_sent_email (
    id integer NOT NULL,
    de_date character varying(8) NOT NULL,
    de_sent_email integer NOT NULL,
    dos_id integer NOT NULL
);


ALTER TABLE public.dossier_sent_email OWNER TO prisma;

--
-- Name: TABLE dossier_sent_email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.dossier_sent_email IS 'Count the sent email by folder';


--
-- Name: COLUMN dossier_sent_email.id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.dossier_sent_email.id IS 'primary key';


--
-- Name: COLUMN dossier_sent_email.de_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.dossier_sent_email.de_date IS 'Date YYYYMMDD';


--
-- Name: COLUMN dossier_sent_email.de_sent_email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.dossier_sent_email.de_sent_email IS 'Number of sent emails';


--
-- Name: COLUMN dossier_sent_email.dos_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.dossier_sent_email.dos_id IS 'Link to ac_dossier';


--
-- Name: dossier_sent_email_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.dossier_sent_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dossier_sent_email_id_seq OWNER TO prisma;

--
-- Name: dossier_sent_email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.dossier_sent_email_id_seq OWNED BY public.dossier_sent_email.id;


--
-- Name: jnt_use_dos; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jnt_use_dos (
    jnt_id integer DEFAULT nextval(('seq_jnt_use_dos'::text)::regclass) NOT NULL,
    use_id integer NOT NULL,
    dos_id integer NOT NULL
);


ALTER TABLE public.jnt_use_dos OWNER TO prisma;

--
-- Name: modeledef; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.modeledef (
    mod_id integer DEFAULT nextval(('s_modid'::text)::regclass) NOT NULL,
    mod_name text NOT NULL,
    mod_desc text
);


ALTER TABLE public.modeledef OWNER TO prisma;

--
-- Name: progress; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.progress (
    p_id character varying(16) NOT NULL,
    p_value numeric(5,2) NOT NULL,
    p_created timestamp without time zone DEFAULT now()
);


ALTER TABLE public.progress OWNER TO prisma;

--
-- Name: recover_pass; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.recover_pass (
    use_id bigint NOT NULL,
    request text NOT NULL,
    password text NOT NULL,
    created_on timestamp with time zone,
    created_host text,
    recover_on timestamp with time zone,
    recover_by text
);


ALTER TABLE public.recover_pass OWNER TO prisma;

--
-- Name: s_modid; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_modid
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_modid OWNER TO prisma;

--
-- Name: seq_jnt_use_dos; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_jnt_use_dos
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_jnt_use_dos OWNER TO prisma;

--
-- Name: seq_priv_user; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_priv_user
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_priv_user OWNER TO prisma;

--
-- Name: theme; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.theme (
    the_name text NOT NULL,
    the_filestyle text,
    the_filebutton text
);


ALTER TABLE public.theme OWNER TO prisma;

--
-- Name: user_global_pref; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_global_pref (
    user_id text NOT NULL,
    parameter_type text NOT NULL,
    parameter_value text
);


ALTER TABLE public.user_global_pref OWNER TO prisma;

--
-- Name: TABLE user_global_pref; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.user_global_pref IS 'The user''s global parameter ';


--
-- Name: COLUMN user_global_pref.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_global_pref.user_id IS 'user''s login ';


--
-- Name: COLUMN user_global_pref.parameter_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_global_pref.parameter_type IS 'the type of parameter ';


--
-- Name: COLUMN user_global_pref.parameter_value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_global_pref.parameter_value IS 'the value of parameter ';


--
-- Name: users_id; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.users_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id OWNER TO prisma;

--
-- Name: version; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.version (
    val integer NOT NULL
);


ALTER TABLE public.version OWNER TO prisma;

--
-- Name: audit_connect ac_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.audit_connect ALTER COLUMN ac_id SET DEFAULT nextval('public.audit_connect_ac_id_seq'::regclass);


--
-- Name: dossier_sent_email id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.dossier_sent_email ALTER COLUMN id SET DEFAULT nextval('public.dossier_sent_email_id_seq'::regclass);


--
-- Name: ac_dossier ac_dossier_dos_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ac_dossier
    ADD CONSTRAINT ac_dossier_dos_name_key UNIQUE (dos_name);


--
-- Name: ac_dossier ac_dossier_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ac_dossier
    ADD CONSTRAINT ac_dossier_pkey PRIMARY KEY (dos_id);


--
-- Name: ac_users ac_users_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ac_users
    ADD CONSTRAINT ac_users_pkey PRIMARY KEY (use_id);


--
-- Name: ac_users ac_users_use_login_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ac_users
    ADD CONSTRAINT ac_users_use_login_key UNIQUE (use_login);


--
-- Name: audit_connect audit_connect_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.audit_connect
    ADD CONSTRAINT audit_connect_pkey PRIMARY KEY (ac_id);


--
-- Name: dossier_sent_email de_date_dos_id_ux; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.dossier_sent_email
    ADD CONSTRAINT de_date_dos_id_ux UNIQUE (de_date, dos_id);


--
-- Name: dossier_sent_email dossier_sent_email_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.dossier_sent_email
    ADD CONSTRAINT dossier_sent_email_pkey PRIMARY KEY (id);


--
-- Name: jnt_use_dos jnt_use_dos_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_use_dos
    ADD CONSTRAINT jnt_use_dos_pkey PRIMARY KEY (jnt_id);


--
-- Name: modeledef modeledef_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.modeledef
    ADD CONSTRAINT modeledef_pkey PRIMARY KEY (mod_id);


--
-- Name: user_global_pref pk_user_global_pref; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_global_pref
    ADD CONSTRAINT pk_user_global_pref PRIMARY KEY (user_id, parameter_type);


--
-- Name: progress progress_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.progress
    ADD CONSTRAINT progress_pkey PRIMARY KEY (p_id);


--
-- Name: recover_pass recover_pass_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.recover_pass
    ADD CONSTRAINT recover_pass_pkey PRIMARY KEY (request);


--
-- Name: jnt_use_dos use_id_dos_id_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_use_dos
    ADD CONSTRAINT use_id_dos_id_uniq UNIQUE (use_id, dos_id);


--
-- Name: version version_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_pkey PRIMARY KEY (val);


--
-- Name: audit_connect_ac_user; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX audit_connect_ac_user ON public.audit_connect USING btree (ac_user);


--
-- Name: fk_jnt_dos_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_jnt_dos_id ON public.jnt_use_dos USING btree (dos_id);


--
-- Name: fk_jnt_use_dos; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_jnt_use_dos ON public.jnt_use_dos USING btree (use_id);


--
-- Name: fki_ac_users_recover_pass_fk; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_ac_users_recover_pass_fk ON public.recover_pass USING btree (use_id);


--
-- Name: audit_connect limit_user_trg; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER limit_user_trg BEFORE INSERT OR UPDATE ON public.audit_connect FOR EACH ROW EXECUTE PROCEDURE public.limit_user();


--
-- Name: recover_pass ac_users_recover_pass_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.recover_pass
    ADD CONSTRAINT ac_users_recover_pass_fk FOREIGN KEY (use_id) REFERENCES public.ac_users(use_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: dossier_sent_email de_ac_dossier_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.dossier_sent_email
    ADD CONSTRAINT de_ac_dossier_fk FOREIGN KEY (dos_id) REFERENCES public.ac_dossier(dos_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_global_pref fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_global_pref
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.ac_users(use_login) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jnt_use_dos jnt_use_dos_dos_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_use_dos
    ADD CONSTRAINT jnt_use_dos_dos_id_fkey FOREIGN KEY (dos_id) REFERENCES public.ac_dossier(dos_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jnt_use_dos jnt_use_dos_use_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_use_dos
    ADD CONSTRAINT jnt_use_dos_use_id_fkey FOREIGN KEY (use_id) REFERENCES public.ac_users(use_id);


--
-- PostgreSQL database dump complete
--

