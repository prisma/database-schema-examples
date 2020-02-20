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
-- Name: base_cache_signaling; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_cache_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_cache_signaling OWNER TO prisma;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: base_import_import; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_import (
    id integer NOT NULL,
    res_model character varying,
    file bytea,
    file_name character varying,
    file_type character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_import OWNER TO prisma;

--
-- Name: TABLE base_import_import; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_import IS 'Base Import';


--
-- Name: COLUMN base_import_import.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.res_model IS 'Model';


--
-- Name: COLUMN base_import_import.file; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.file IS 'File';


--
-- Name: COLUMN base_import_import.file_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.file_name IS 'File Name';


--
-- Name: COLUMN base_import_import.file_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.file_type IS 'File Type';


--
-- Name: COLUMN base_import_import.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_import.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.create_date IS 'Created on';


--
-- Name: COLUMN base_import_import.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_import.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_import.write_date IS 'Last Updated on';


--
-- Name: base_import_import_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_import_id_seq OWNER TO prisma;

--
-- Name: base_import_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_import_id_seq OWNED BY public.base_import_import.id;


--
-- Name: base_import_mapping; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_mapping (
    id integer NOT NULL,
    res_model character varying,
    column_name character varying,
    field_name character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_mapping OWNER TO prisma;

--
-- Name: TABLE base_import_mapping; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_mapping IS 'Base Import Mapping';


--
-- Name: COLUMN base_import_mapping.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.res_model IS 'Res Model';


--
-- Name: COLUMN base_import_mapping.column_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.column_name IS 'Column Name';


--
-- Name: COLUMN base_import_mapping.field_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.field_name IS 'Field Name';


--
-- Name: COLUMN base_import_mapping.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_mapping.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.create_date IS 'Created on';


--
-- Name: COLUMN base_import_mapping.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_mapping.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_mapping.write_date IS 'Last Updated on';


--
-- Name: base_import_mapping_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_mapping_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_mapping_id_seq OWNER TO prisma;

--
-- Name: base_import_mapping_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_mapping_id_seq OWNED BY public.base_import_mapping.id;


--
-- Name: base_import_tests_models_char; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_char (
    id integer NOT NULL,
    value character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_char OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_char; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_char IS 'Tests : Base Import Model, Character';


--
-- Name: COLUMN base_import_tests_models_char.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_char.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_char_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_char_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_char_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_char_id_seq OWNED BY public.base_import_tests_models_char.id;


--
-- Name: base_import_tests_models_char_noreadonly; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_char_noreadonly (
    id integer NOT NULL,
    value character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_char_noreadonly OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_char_noreadonly; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_char_noreadonly IS 'Tests : Base Import Model, Character No readonly';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_noreadonly.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_noreadonly.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_noreadonly.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_noreadonly.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_noreadonly.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_noreadonly.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_noreadonly_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_char_noreadonly_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_char_noreadonly_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_char_noreadonly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_char_noreadonly_id_seq OWNED BY public.base_import_tests_models_char_noreadonly.id;


--
-- Name: base_import_tests_models_char_readonly; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_char_readonly (
    id integer NOT NULL,
    value character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_char_readonly OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_char_readonly; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_char_readonly IS 'Tests : Base Import Model, Character readonly';


--
-- Name: COLUMN base_import_tests_models_char_readonly.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_readonly.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_char_readonly.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_readonly.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_readonly.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_readonly.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_readonly.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_readonly.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_readonly.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_readonly.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_readonly_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_char_readonly_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_char_readonly_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_char_readonly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_char_readonly_id_seq OWNED BY public.base_import_tests_models_char_readonly.id;


--
-- Name: base_import_tests_models_char_required; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_char_required (
    id integer NOT NULL,
    value character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_char_required OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_char_required; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_char_required IS 'Tests : Base Import Model, Character required';


--
-- Name: COLUMN base_import_tests_models_char_required.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_required.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_char_required.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_required.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_required.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_required.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_required.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_required.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_required.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_required.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_required_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_char_required_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_char_required_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_char_required_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_char_required_id_seq OWNED BY public.base_import_tests_models_char_required.id;


--
-- Name: base_import_tests_models_char_states; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_char_states (
    id integer NOT NULL,
    value character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_char_states OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_char_states; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_char_states IS 'Tests : Base Import Model, Character states';


--
-- Name: COLUMN base_import_tests_models_char_states.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_states.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_char_states.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_states.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_states.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_states.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_states.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_states.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_states.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_states.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_states_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_char_states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_char_states_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_char_states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_char_states_id_seq OWNED BY public.base_import_tests_models_char_states.id;


--
-- Name: base_import_tests_models_char_stillreadonly; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_char_stillreadonly (
    id integer NOT NULL,
    value character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_char_stillreadonly OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_char_stillreadonly; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_char_stillreadonly IS 'Tests : Base Import Model, Character still readonly';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_stillreadonly.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_stillreadonly.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_stillreadonly.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_stillreadonly.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_char_stillreadonly.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_char_stillreadonly.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_char_stillreadonly_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_char_stillreadonly_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_char_stillreadonly_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_char_stillreadonly_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_char_stillreadonly_id_seq OWNED BY public.base_import_tests_models_char_stillreadonly.id;


--
-- Name: base_import_tests_models_complex; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_complex (
    id integer NOT NULL,
    f double precision,
    m numeric,
    c character varying,
    currency_id integer,
    d date,
    dt timestamp without time zone,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_complex OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_complex; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_complex IS 'Tests: Base Import Model Complex';


--
-- Name: COLUMN base_import_tests_models_complex.f; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.f IS 'F';


--
-- Name: COLUMN base_import_tests_models_complex.m; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.m IS 'M';


--
-- Name: COLUMN base_import_tests_models_complex.c; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.c IS 'C';


--
-- Name: COLUMN base_import_tests_models_complex.currency_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.currency_id IS 'Currency';


--
-- Name: COLUMN base_import_tests_models_complex.d; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.d IS 'D';


--
-- Name: COLUMN base_import_tests_models_complex.dt; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.dt IS 'Dt';


--
-- Name: COLUMN base_import_tests_models_complex.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_complex.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_complex.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_complex.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_complex.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_complex_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_complex_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_complex_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_complex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_complex_id_seq OWNED BY public.base_import_tests_models_complex.id;


--
-- Name: base_import_tests_models_float; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_float (
    id integer NOT NULL,
    value double precision,
    value2 numeric,
    currency_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_float OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_float; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_float IS 'Tests: Base Import Model Float';


--
-- Name: COLUMN base_import_tests_models_float.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_float.value2; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.value2 IS 'Value2';


--
-- Name: COLUMN base_import_tests_models_float.currency_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.currency_id IS 'Currency';


--
-- Name: COLUMN base_import_tests_models_float.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_float.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_float.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_float.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_float.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_float_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_float_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_float_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_float_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_float_id_seq OWNED BY public.base_import_tests_models_float.id;


--
-- Name: base_import_tests_models_m2o; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_m2o (
    id integer NOT NULL,
    value integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_m2o OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_m2o; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_m2o IS 'Tests : Base Import Model, Many to One';


--
-- Name: COLUMN base_import_tests_models_m2o.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_m2o.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_m2o_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_m2o_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_m2o_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_m2o_id_seq OWNED BY public.base_import_tests_models_m2o.id;


--
-- Name: base_import_tests_models_m2o_related; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_m2o_related (
    id integer NOT NULL,
    value integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_m2o_related OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_m2o_related; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_m2o_related IS 'Tests : Base Import Model, Many to One related';


--
-- Name: COLUMN base_import_tests_models_m2o_related.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_related.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_m2o_related.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_related.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o_related.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_related.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o_related.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_related.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o_related.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_related.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_related_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_m2o_related_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_m2o_related_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_m2o_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_m2o_related_id_seq OWNED BY public.base_import_tests_models_m2o_related.id;


--
-- Name: base_import_tests_models_m2o_required; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_m2o_required (
    id integer NOT NULL,
    value integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_m2o_required OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_m2o_required; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_m2o_required IS 'Tests : Base Import Model, Many to One required';


--
-- Name: COLUMN base_import_tests_models_m2o_required.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_m2o_required.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o_required.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o_required.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o_required.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_required_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_m2o_required_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_m2o_required_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_m2o_required_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_m2o_required_id_seq OWNED BY public.base_import_tests_models_m2o_required.id;


--
-- Name: base_import_tests_models_m2o_required_related; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_m2o_required_related (
    id integer NOT NULL,
    value integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_m2o_required_related OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_m2o_required_related; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_m2o_required_related IS 'Tests : Base Import Model, Many to One required related';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required_related.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required_related.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required_related.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required_related.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_m2o_required_related.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_m2o_required_related.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_m2o_required_related_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_m2o_required_related_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_m2o_required_related_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_m2o_required_related_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_m2o_required_related_id_seq OWNED BY public.base_import_tests_models_m2o_required_related.id;


--
-- Name: base_import_tests_models_o2m; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_o2m (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_o2m OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_o2m; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_o2m IS 'Tests : Base Import Model, One to Many';


--
-- Name: COLUMN base_import_tests_models_o2m.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_o2m.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_o2m.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_o2m.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_o2m_child; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_o2m_child (
    id integer NOT NULL,
    parent_id integer,
    value integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_o2m_child OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_o2m_child; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_o2m_child IS 'Tests : Base Import Model, One to Many child';


--
-- Name: COLUMN base_import_tests_models_o2m_child.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m_child.parent_id IS 'Parent';


--
-- Name: COLUMN base_import_tests_models_o2m_child.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m_child.value IS 'Value';


--
-- Name: COLUMN base_import_tests_models_o2m_child.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m_child.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_o2m_child.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m_child.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_o2m_child.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m_child.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_o2m_child.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_o2m_child.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_o2m_child_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_o2m_child_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_o2m_child_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_o2m_child_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_o2m_child_id_seq OWNED BY public.base_import_tests_models_o2m_child.id;


--
-- Name: base_import_tests_models_o2m_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_o2m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_o2m_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_o2m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_o2m_id_seq OWNED BY public.base_import_tests_models_o2m.id;


--
-- Name: base_import_tests_models_preview; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_import_tests_models_preview (
    id integer NOT NULL,
    name character varying,
    somevalue integer NOT NULL,
    othervalue integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_import_tests_models_preview OWNER TO prisma;

--
-- Name: TABLE base_import_tests_models_preview; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_import_tests_models_preview IS 'Tests : Base Import Model Preview';


--
-- Name: COLUMN base_import_tests_models_preview.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.name IS 'Name';


--
-- Name: COLUMN base_import_tests_models_preview.somevalue; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.somevalue IS 'Some Value';


--
-- Name: COLUMN base_import_tests_models_preview.othervalue; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.othervalue IS 'Other Variable';


--
-- Name: COLUMN base_import_tests_models_preview.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.create_uid IS 'Created by';


--
-- Name: COLUMN base_import_tests_models_preview.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.create_date IS 'Created on';


--
-- Name: COLUMN base_import_tests_models_preview.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_import_tests_models_preview.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_import_tests_models_preview.write_date IS 'Last Updated on';


--
-- Name: base_import_tests_models_preview_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_import_tests_models_preview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_import_tests_models_preview_id_seq OWNER TO prisma;

--
-- Name: base_import_tests_models_preview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_import_tests_models_preview_id_seq OWNED BY public.base_import_tests_models_preview.id;


--
-- Name: base_language_export; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_language_export (
    id integer NOT NULL,
    name character varying,
    lang character varying NOT NULL,
    format character varying NOT NULL,
    data bytea,
    state character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_language_export OWNER TO prisma;

--
-- Name: TABLE base_language_export; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_language_export IS 'Language Export';


--
-- Name: COLUMN base_language_export.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.name IS 'File Name';


--
-- Name: COLUMN base_language_export.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.lang IS 'Language';


--
-- Name: COLUMN base_language_export.format; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.format IS 'File Format';


--
-- Name: COLUMN base_language_export.data; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.data IS 'File';


--
-- Name: COLUMN base_language_export.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.state IS 'State';


--
-- Name: COLUMN base_language_export.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.create_uid IS 'Created by';


--
-- Name: COLUMN base_language_export.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.create_date IS 'Created on';


--
-- Name: COLUMN base_language_export.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_language_export.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_export.write_date IS 'Last Updated on';


--
-- Name: base_language_export_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_language_export_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_language_export_id_seq OWNER TO prisma;

--
-- Name: base_language_export_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_language_export_id_seq OWNED BY public.base_language_export.id;


--
-- Name: base_language_import; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_language_import (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying(6) NOT NULL,
    data bytea NOT NULL,
    filename character varying NOT NULL,
    overwrite boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_language_import OWNER TO prisma;

--
-- Name: TABLE base_language_import; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_language_import IS 'Language Import';


--
-- Name: COLUMN base_language_import.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.name IS 'Language Name';


--
-- Name: COLUMN base_language_import.code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.code IS 'ISO Code';


--
-- Name: COLUMN base_language_import.data; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.data IS 'File';


--
-- Name: COLUMN base_language_import.filename; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.filename IS 'File Name';


--
-- Name: COLUMN base_language_import.overwrite; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.overwrite IS 'Overwrite Existing Terms';


--
-- Name: COLUMN base_language_import.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.create_uid IS 'Created by';


--
-- Name: COLUMN base_language_import.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.create_date IS 'Created on';


--
-- Name: COLUMN base_language_import.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_language_import.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_import.write_date IS 'Last Updated on';


--
-- Name: base_language_import_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_language_import_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_language_import_id_seq OWNER TO prisma;

--
-- Name: base_language_import_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_language_import_id_seq OWNED BY public.base_language_import.id;


--
-- Name: base_language_install; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_language_install (
    id integer NOT NULL,
    lang character varying NOT NULL,
    overwrite boolean,
    state character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_language_install OWNER TO prisma;

--
-- Name: TABLE base_language_install; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_language_install IS 'Install Language';


--
-- Name: COLUMN base_language_install.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.lang IS 'Language';


--
-- Name: COLUMN base_language_install.overwrite; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.overwrite IS 'Overwrite Existing Terms';


--
-- Name: COLUMN base_language_install.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.state IS 'Status';


--
-- Name: COLUMN base_language_install.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.create_uid IS 'Created by';


--
-- Name: COLUMN base_language_install.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.create_date IS 'Created on';


--
-- Name: COLUMN base_language_install.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_language_install.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_language_install.write_date IS 'Last Updated on';


--
-- Name: base_language_install_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_language_install_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_language_install_id_seq OWNER TO prisma;

--
-- Name: base_language_install_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_language_install_id_seq OWNED BY public.base_language_install.id;


--
-- Name: base_language_install_website_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_language_install_website_rel (
    base_language_install_id integer NOT NULL,
    website_id integer NOT NULL
);


ALTER TABLE public.base_language_install_website_rel OWNER TO prisma;

--
-- Name: TABLE base_language_install_website_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_language_install_website_rel IS 'RELATION BETWEEN base_language_install AND website';


--
-- Name: base_module_uninstall; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_module_uninstall (
    id integer NOT NULL,
    show_all boolean,
    module_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_module_uninstall OWNER TO prisma;

--
-- Name: TABLE base_module_uninstall; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_module_uninstall IS 'Module Uninstall';


--
-- Name: COLUMN base_module_uninstall.show_all; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_uninstall.show_all IS 'Show All';


--
-- Name: COLUMN base_module_uninstall.module_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_uninstall.module_id IS 'Module';


--
-- Name: COLUMN base_module_uninstall.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_uninstall.create_uid IS 'Created by';


--
-- Name: COLUMN base_module_uninstall.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_uninstall.create_date IS 'Created on';


--
-- Name: COLUMN base_module_uninstall.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_uninstall.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_module_uninstall.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_uninstall.write_date IS 'Last Updated on';


--
-- Name: base_module_uninstall_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_module_uninstall_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_module_uninstall_id_seq OWNER TO prisma;

--
-- Name: base_module_uninstall_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_module_uninstall_id_seq OWNED BY public.base_module_uninstall.id;


--
-- Name: base_module_update; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_module_update (
    id integer NOT NULL,
    updated integer,
    added integer,
    state character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_module_update OWNER TO prisma;

--
-- Name: TABLE base_module_update; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_module_update IS 'Update Module';


--
-- Name: COLUMN base_module_update.updated; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.updated IS 'Number of modules updated';


--
-- Name: COLUMN base_module_update.added; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.added IS 'Number of modules added';


--
-- Name: COLUMN base_module_update.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.state IS 'Status';


--
-- Name: COLUMN base_module_update.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.create_uid IS 'Created by';


--
-- Name: COLUMN base_module_update.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.create_date IS 'Created on';


--
-- Name: COLUMN base_module_update.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_module_update.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_update.write_date IS 'Last Updated on';


--
-- Name: base_module_update_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_module_update_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_module_update_id_seq OWNER TO prisma;

--
-- Name: base_module_update_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_module_update_id_seq OWNED BY public.base_module_update.id;


--
-- Name: base_module_upgrade; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_module_upgrade (
    id integer NOT NULL,
    module_info text,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_module_upgrade OWNER TO prisma;

--
-- Name: TABLE base_module_upgrade; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_module_upgrade IS 'Upgrade Module';


--
-- Name: COLUMN base_module_upgrade.module_info; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_upgrade.module_info IS 'Apps to Update';


--
-- Name: COLUMN base_module_upgrade.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_upgrade.create_uid IS 'Created by';


--
-- Name: COLUMN base_module_upgrade.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_upgrade.create_date IS 'Created on';


--
-- Name: COLUMN base_module_upgrade.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_upgrade.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_module_upgrade.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_module_upgrade.write_date IS 'Last Updated on';


--
-- Name: base_module_upgrade_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_module_upgrade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_module_upgrade_id_seq OWNER TO prisma;

--
-- Name: base_module_upgrade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_module_upgrade_id_seq OWNED BY public.base_module_upgrade.id;


--
-- Name: base_partner_merge_automatic_wizard; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_partner_merge_automatic_wizard (
    id integer NOT NULL,
    group_by_email boolean,
    group_by_name boolean,
    group_by_is_company boolean,
    group_by_vat boolean,
    group_by_parent_id boolean,
    state character varying NOT NULL,
    number_group integer,
    current_line_id integer,
    dst_partner_id integer,
    exclude_contact boolean,
    exclude_journal_item boolean,
    maximum_group integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_partner_merge_automatic_wizard OWNER TO prisma;

--
-- Name: TABLE base_partner_merge_automatic_wizard; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_partner_merge_automatic_wizard IS 'Merge Partner Wizard';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.group_by_email IS 'Email';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.group_by_name IS 'Name';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_is_company; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.group_by_is_company IS 'Is Company';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_vat; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.group_by_vat IS 'VAT';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.group_by_parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.group_by_parent_id IS 'Parent Company';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.state IS 'State';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.number_group; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.number_group IS 'Group of Contacts';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.current_line_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.current_line_id IS 'Current Line';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.dst_partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.dst_partner_id IS 'Destination Contact';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.exclude_contact; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.exclude_contact IS 'A user associated to the contact';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.exclude_journal_item; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.exclude_journal_item IS 'Journal Items associated to the contact';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.maximum_group; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.maximum_group IS 'Maximum of Group of Contacts';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.create_date IS 'Created on';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_partner_merge_automatic_wizard.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_automatic_wizard.write_date IS 'Last Updated on';


--
-- Name: base_partner_merge_automatic_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_partner_merge_automatic_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_partner_merge_automatic_wizard_id_seq OWNER TO prisma;

--
-- Name: base_partner_merge_automatic_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_partner_merge_automatic_wizard_id_seq OWNED BY public.base_partner_merge_automatic_wizard.id;


--
-- Name: base_partner_merge_automatic_wizard_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_partner_merge_automatic_wizard_res_partner_rel (
    base_partner_merge_automatic_wizard_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.base_partner_merge_automatic_wizard_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE base_partner_merge_automatic_wizard_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_partner_merge_automatic_wizard_res_partner_rel IS 'RELATION BETWEEN base_partner_merge_automatic_wizard AND res_partner';


--
-- Name: base_partner_merge_line; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_partner_merge_line (
    id integer NOT NULL,
    wizard_id integer,
    min_id integer,
    aggr_ids character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_partner_merge_line OWNER TO prisma;

--
-- Name: TABLE base_partner_merge_line; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_partner_merge_line IS 'Merge Partner Line';


--
-- Name: COLUMN base_partner_merge_line.wizard_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.wizard_id IS 'Wizard';


--
-- Name: COLUMN base_partner_merge_line.min_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.min_id IS 'MinID';


--
-- Name: COLUMN base_partner_merge_line.aggr_ids; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.aggr_ids IS 'Ids';


--
-- Name: COLUMN base_partner_merge_line.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.create_uid IS 'Created by';


--
-- Name: COLUMN base_partner_merge_line.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.create_date IS 'Created on';


--
-- Name: COLUMN base_partner_merge_line.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_partner_merge_line.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_partner_merge_line.write_date IS 'Last Updated on';


--
-- Name: base_partner_merge_line_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_partner_merge_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_partner_merge_line_id_seq OWNER TO prisma;

--
-- Name: base_partner_merge_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_partner_merge_line_id_seq OWNED BY public.base_partner_merge_line.id;


--
-- Name: base_registry_signaling; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_registry_signaling
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_registry_signaling OWNER TO prisma;

--
-- Name: base_update_translations; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.base_update_translations (
    id integer NOT NULL,
    lang character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.base_update_translations OWNER TO prisma;

--
-- Name: TABLE base_update_translations; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.base_update_translations IS 'Update Translations';


--
-- Name: COLUMN base_update_translations.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_update_translations.lang IS 'Language';


--
-- Name: COLUMN base_update_translations.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_update_translations.create_uid IS 'Created by';


--
-- Name: COLUMN base_update_translations.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_update_translations.create_date IS 'Created on';


--
-- Name: COLUMN base_update_translations.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_update_translations.write_uid IS 'Last Updated by';


--
-- Name: COLUMN base_update_translations.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.base_update_translations.write_date IS 'Last Updated on';


--
-- Name: base_update_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.base_update_translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.base_update_translations_id_seq OWNER TO prisma;

--
-- Name: base_update_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.base_update_translations_id_seq OWNED BY public.base_update_translations.id;


--
-- Name: bus_bus; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.bus_bus (
    id integer NOT NULL,
    channel character varying,
    message character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.bus_bus OWNER TO prisma;

--
-- Name: TABLE bus_bus; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.bus_bus IS 'Communication Bus';


--
-- Name: COLUMN bus_bus.channel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_bus.channel IS 'Channel';


--
-- Name: COLUMN bus_bus.message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_bus.message IS 'Message';


--
-- Name: COLUMN bus_bus.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_bus.create_uid IS 'Created by';


--
-- Name: COLUMN bus_bus.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_bus.create_date IS 'Created on';


--
-- Name: COLUMN bus_bus.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_bus.write_uid IS 'Last Updated by';


--
-- Name: COLUMN bus_bus.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_bus.write_date IS 'Last Updated on';


--
-- Name: bus_bus_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bus_bus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_bus_id_seq OWNER TO prisma;

--
-- Name: bus_bus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.bus_bus_id_seq OWNED BY public.bus_bus.id;


--
-- Name: bus_presence; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.bus_presence (
    id integer NOT NULL,
    user_id integer NOT NULL,
    last_poll timestamp without time zone,
    last_presence timestamp without time zone,
    status character varying
);


ALTER TABLE public.bus_presence OWNER TO prisma;

--
-- Name: TABLE bus_presence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.bus_presence IS 'User Presence';


--
-- Name: COLUMN bus_presence.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_presence.user_id IS 'Users';


--
-- Name: COLUMN bus_presence.last_poll; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_presence.last_poll IS 'Last Poll';


--
-- Name: COLUMN bus_presence.last_presence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_presence.last_presence IS 'Last Presence';


--
-- Name: COLUMN bus_presence.status; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bus_presence.status IS 'IM Status';


--
-- Name: bus_presence_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bus_presence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bus_presence_id_seq OWNER TO prisma;

--
-- Name: bus_presence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.bus_presence_id_seq OWNED BY public.bus_presence.id;


--
-- Name: change_password_user; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.change_password_user (
    id integer NOT NULL,
    wizard_id integer NOT NULL,
    user_id integer NOT NULL,
    user_login character varying,
    new_passwd character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.change_password_user OWNER TO prisma;

--
-- Name: TABLE change_password_user; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.change_password_user IS 'User, Change Password Wizard';


--
-- Name: COLUMN change_password_user.wizard_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.wizard_id IS 'Wizard';


--
-- Name: COLUMN change_password_user.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.user_id IS 'User';


--
-- Name: COLUMN change_password_user.user_login; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.user_login IS 'User Login';


--
-- Name: COLUMN change_password_user.new_passwd; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.new_passwd IS 'New Password';


--
-- Name: COLUMN change_password_user.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.create_uid IS 'Created by';


--
-- Name: COLUMN change_password_user.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.create_date IS 'Created on';


--
-- Name: COLUMN change_password_user.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.write_uid IS 'Last Updated by';


--
-- Name: COLUMN change_password_user.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_user.write_date IS 'Last Updated on';


--
-- Name: change_password_user_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.change_password_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_password_user_id_seq OWNER TO prisma;

--
-- Name: change_password_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.change_password_user_id_seq OWNED BY public.change_password_user.id;


--
-- Name: change_password_wizard; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.change_password_wizard (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.change_password_wizard OWNER TO prisma;

--
-- Name: TABLE change_password_wizard; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.change_password_wizard IS 'Change Password Wizard';


--
-- Name: COLUMN change_password_wizard.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN change_password_wizard.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_wizard.create_date IS 'Created on';


--
-- Name: COLUMN change_password_wizard.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN change_password_wizard.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.change_password_wizard.write_date IS 'Last Updated on';


--
-- Name: change_password_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.change_password_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.change_password_wizard_id_seq OWNER TO prisma;

--
-- Name: change_password_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.change_password_wizard_id_seq OWNED BY public.change_password_wizard.id;


--
-- Name: email_template_attachment_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.email_template_attachment_rel (
    email_template_id integer NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE public.email_template_attachment_rel OWNER TO prisma;

--
-- Name: TABLE email_template_attachment_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.email_template_attachment_rel IS 'RELATION BETWEEN mail_template AND ir_attachment';


--
-- Name: email_template_preview; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.email_template_preview (
    id integer NOT NULL,
    res_id character varying,
    name character varying,
    model_id integer,
    model character varying,
    lang character varying,
    user_signature boolean,
    subject character varying,
    email_from character varying,
    use_default_to boolean,
    email_to character varying,
    partner_to character varying,
    email_cc character varying,
    reply_to character varying,
    mail_server_id integer,
    body_html text,
    report_name character varying,
    report_template integer,
    ref_ir_act_window integer,
    auto_delete boolean,
    model_object_field integer,
    sub_object integer,
    sub_model_object_field integer,
    null_value character varying,
    copyvalue character varying,
    scheduled_date character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.email_template_preview OWNER TO prisma;

--
-- Name: TABLE email_template_preview; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.email_template_preview IS 'Email Template Preview';


--
-- Name: COLUMN email_template_preview.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.res_id IS 'Sample Document';


--
-- Name: COLUMN email_template_preview.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.name IS 'Name';


--
-- Name: COLUMN email_template_preview.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.model_id IS 'Applies to';


--
-- Name: COLUMN email_template_preview.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.model IS 'Related Document Model';


--
-- Name: COLUMN email_template_preview.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.lang IS 'Language';


--
-- Name: COLUMN email_template_preview.user_signature; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.user_signature IS 'Add Signature';


--
-- Name: COLUMN email_template_preview.subject; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.subject IS 'Subject';


--
-- Name: COLUMN email_template_preview.email_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.email_from IS 'From';


--
-- Name: COLUMN email_template_preview.use_default_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.use_default_to IS 'Default recipients';


--
-- Name: COLUMN email_template_preview.email_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.email_to IS 'To (Emails)';


--
-- Name: COLUMN email_template_preview.partner_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.partner_to IS 'To (Partners)';


--
-- Name: COLUMN email_template_preview.email_cc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.email_cc IS 'Cc';


--
-- Name: COLUMN email_template_preview.reply_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.reply_to IS 'Reply-To';


--
-- Name: COLUMN email_template_preview.mail_server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.mail_server_id IS 'Outgoing Mail Server';


--
-- Name: COLUMN email_template_preview.body_html; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.body_html IS 'Body';


--
-- Name: COLUMN email_template_preview.report_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.report_name IS 'Report Filename';


--
-- Name: COLUMN email_template_preview.report_template; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.report_template IS 'Optional report to print and attach';


--
-- Name: COLUMN email_template_preview.ref_ir_act_window; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.ref_ir_act_window IS 'Sidebar action';


--
-- Name: COLUMN email_template_preview.auto_delete; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.auto_delete IS 'Auto Delete';


--
-- Name: COLUMN email_template_preview.model_object_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.model_object_field IS 'Field';


--
-- Name: COLUMN email_template_preview.sub_object; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.sub_object IS 'Sub-model';


--
-- Name: COLUMN email_template_preview.sub_model_object_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.sub_model_object_field IS 'Sub-field';


--
-- Name: COLUMN email_template_preview.null_value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.null_value IS 'Default Value';


--
-- Name: COLUMN email_template_preview.copyvalue; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.copyvalue IS 'Placeholder Expression';


--
-- Name: COLUMN email_template_preview.scheduled_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.scheduled_date IS 'Scheduled Date';


--
-- Name: COLUMN email_template_preview.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.create_uid IS 'Created by';


--
-- Name: COLUMN email_template_preview.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.create_date IS 'Created on';


--
-- Name: COLUMN email_template_preview.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.write_uid IS 'Last Updated by';


--
-- Name: COLUMN email_template_preview.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.email_template_preview.write_date IS 'Last Updated on';


--
-- Name: email_template_preview_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.email_template_preview_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_template_preview_id_seq OWNER TO prisma;

--
-- Name: email_template_preview_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.email_template_preview_id_seq OWNED BY public.email_template_preview.id;


--
-- Name: email_template_preview_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.email_template_preview_res_partner_rel (
    email_template_preview_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.email_template_preview_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE email_template_preview_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.email_template_preview_res_partner_rel IS 'RELATION BETWEEN email_template_preview AND res_partner';


--
-- Name: fetchmail_server; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.fetchmail_server (
    id integer NOT NULL,
    name character varying NOT NULL,
    active boolean,
    state character varying,
    server character varying,
    port integer,
    type character varying NOT NULL,
    is_ssl boolean,
    attach boolean,
    original boolean,
    date timestamp without time zone,
    "user" character varying,
    password character varying,
    object_id integer,
    priority integer,
    configuration text,
    script character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.fetchmail_server OWNER TO prisma;

--
-- Name: TABLE fetchmail_server; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.fetchmail_server IS 'Incoming Mail Server';


--
-- Name: COLUMN fetchmail_server.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.name IS 'Name';


--
-- Name: COLUMN fetchmail_server.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.active IS 'Active';


--
-- Name: COLUMN fetchmail_server.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.state IS 'Status';


--
-- Name: COLUMN fetchmail_server.server; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.server IS 'Server Name';


--
-- Name: COLUMN fetchmail_server.port; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.port IS 'Port';


--
-- Name: COLUMN fetchmail_server.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.type IS 'Server Type';


--
-- Name: COLUMN fetchmail_server.is_ssl; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.is_ssl IS 'SSL/TLS';


--
-- Name: COLUMN fetchmail_server.attach; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.attach IS 'Keep Attachments';


--
-- Name: COLUMN fetchmail_server.original; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.original IS 'Keep Original';


--
-- Name: COLUMN fetchmail_server.date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.date IS 'Last Fetch Date';


--
-- Name: COLUMN fetchmail_server."user"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server."user" IS 'Username';


--
-- Name: COLUMN fetchmail_server.password; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.password IS 'Password';


--
-- Name: COLUMN fetchmail_server.object_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.object_id IS 'Create a New Record';


--
-- Name: COLUMN fetchmail_server.priority; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.priority IS 'Server Priority';


--
-- Name: COLUMN fetchmail_server.configuration; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.configuration IS 'Configuration';


--
-- Name: COLUMN fetchmail_server.script; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.script IS 'Script';


--
-- Name: COLUMN fetchmail_server.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.create_uid IS 'Created by';


--
-- Name: COLUMN fetchmail_server.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.create_date IS 'Created on';


--
-- Name: COLUMN fetchmail_server.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.write_uid IS 'Last Updated by';


--
-- Name: COLUMN fetchmail_server.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.fetchmail_server.write_date IS 'Last Updated on';


--
-- Name: fetchmail_server_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.fetchmail_server_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fetchmail_server_id_seq OWNER TO prisma;

--
-- Name: fetchmail_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.fetchmail_server_id_seq OWNED BY public.fetchmail_server.id;


--
-- Name: iap_account; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.iap_account (
    id integer NOT NULL,
    service_name character varying,
    account_token character varying,
    company_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.iap_account OWNER TO prisma;

--
-- Name: TABLE iap_account; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.iap_account IS 'IAP Account';


--
-- Name: COLUMN iap_account.service_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.service_name IS 'Service Name';


--
-- Name: COLUMN iap_account.account_token; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.account_token IS 'Account Token';


--
-- Name: COLUMN iap_account.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.company_id IS 'Company';


--
-- Name: COLUMN iap_account.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.create_uid IS 'Created by';


--
-- Name: COLUMN iap_account.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.create_date IS 'Created on';


--
-- Name: COLUMN iap_account.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.write_uid IS 'Last Updated by';


--
-- Name: COLUMN iap_account.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.iap_account.write_date IS 'Last Updated on';


--
-- Name: iap_account_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.iap_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.iap_account_id_seq OWNER TO prisma;

--
-- Name: iap_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.iap_account_id_seq OWNED BY public.iap_account.id;


--
-- Name: ir_actions; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_actions (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying NOT NULL,
    help text,
    binding_model_id integer,
    binding_type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_actions OWNER TO prisma;

--
-- Name: COLUMN ir_actions.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.name IS 'Name';


--
-- Name: COLUMN ir_actions.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.type IS 'Action Type';


--
-- Name: COLUMN ir_actions.help; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.help IS 'Action Description';


--
-- Name: COLUMN ir_actions.binding_model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.binding_model_id IS 'Binding Model';


--
-- Name: COLUMN ir_actions.binding_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.binding_type IS 'Binding Type';


--
-- Name: COLUMN ir_actions.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.create_uid IS 'Created by';


--
-- Name: COLUMN ir_actions.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.create_date IS 'Created on';


--
-- Name: COLUMN ir_actions.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_actions.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions.write_date IS 'Last Updated on';


--
-- Name: ir_act_client; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_client (
    tag character varying NOT NULL,
    target character varying,
    res_model character varying,
    context character varying NOT NULL,
    params_store bytea
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_client OWNER TO prisma;

--
-- Name: COLUMN ir_act_client.tag; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_client.tag IS 'Client action tag';


--
-- Name: COLUMN ir_act_client.target; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_client.target IS 'Target Window';


--
-- Name: COLUMN ir_act_client.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_client.res_model IS 'Destination Model';


--
-- Name: COLUMN ir_act_client.context; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_client.context IS 'Context Value';


--
-- Name: COLUMN ir_act_client.params_store; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_client.params_store IS 'Params storage';


--
-- Name: ir_act_report_xml; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_report_xml (
    model character varying NOT NULL,
    report_type character varying NOT NULL,
    report_name character varying NOT NULL,
    report_file character varying,
    multi boolean,
    paperformat_id integer,
    print_report_name character varying,
    attachment_use boolean,
    attachment character varying
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_report_xml OWNER TO prisma;

--
-- Name: COLUMN ir_act_report_xml.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.model IS 'Model Name';


--
-- Name: COLUMN ir_act_report_xml.report_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.report_type IS 'Report Type';


--
-- Name: COLUMN ir_act_report_xml.report_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.report_name IS 'Template Name';


--
-- Name: COLUMN ir_act_report_xml.report_file; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.report_file IS 'Report File';


--
-- Name: COLUMN ir_act_report_xml.multi; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.multi IS 'On Multiple Doc.';


--
-- Name: COLUMN ir_act_report_xml.paperformat_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.paperformat_id IS 'Paper Format';


--
-- Name: COLUMN ir_act_report_xml.print_report_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.print_report_name IS 'Printed Report Name';


--
-- Name: COLUMN ir_act_report_xml.attachment_use; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.attachment_use IS 'Reload from Attachment';


--
-- Name: COLUMN ir_act_report_xml.attachment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_report_xml.attachment IS 'Save as Attachment Prefix';


--
-- Name: ir_act_server; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_server (
    usage character varying NOT NULL,
    state character varying NOT NULL,
    sequence integer,
    model_id integer NOT NULL,
    model_name character varying,
    code text,
    crud_model_id integer,
    link_field_id integer,
    template_id integer,
    activity_type_id integer,
    activity_summary character varying,
    activity_note text,
    activity_date_deadline_range integer,
    activity_date_deadline_range_type character varying,
    activity_user_type character varying NOT NULL,
    activity_user_id integer,
    activity_user_field_name character varying,
    website_path character varying,
    website_published boolean
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_server OWNER TO prisma;

--
-- Name: COLUMN ir_act_server.usage; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.usage IS 'Usage';


--
-- Name: COLUMN ir_act_server.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.state IS 'Action To Do';


--
-- Name: COLUMN ir_act_server.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.sequence IS 'Sequence';


--
-- Name: COLUMN ir_act_server.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.model_id IS 'Model';


--
-- Name: COLUMN ir_act_server.model_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.model_name IS 'Model Name';


--
-- Name: COLUMN ir_act_server.code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.code IS 'Python Code';


--
-- Name: COLUMN ir_act_server.crud_model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.crud_model_id IS 'Create/Write Target Model';


--
-- Name: COLUMN ir_act_server.link_field_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.link_field_id IS 'Link using field';


--
-- Name: COLUMN ir_act_server.template_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.template_id IS 'Email Template';


--
-- Name: COLUMN ir_act_server.activity_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_type_id IS 'Activity';


--
-- Name: COLUMN ir_act_server.activity_summary; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_summary IS 'Summary';


--
-- Name: COLUMN ir_act_server.activity_note; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_note IS 'Note';


--
-- Name: COLUMN ir_act_server.activity_date_deadline_range; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_date_deadline_range IS 'Due Date In';


--
-- Name: COLUMN ir_act_server.activity_date_deadline_range_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_date_deadline_range_type IS 'Due type';


--
-- Name: COLUMN ir_act_server.activity_user_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_user_type IS 'Activity User Type';


--
-- Name: COLUMN ir_act_server.activity_user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_user_id IS 'Responsible';


--
-- Name: COLUMN ir_act_server.activity_user_field_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.activity_user_field_name IS 'User field name';


--
-- Name: COLUMN ir_act_server.website_path; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.website_path IS 'Website Path';


--
-- Name: COLUMN ir_act_server.website_published; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_server.website_published IS 'Available on the Website';


--
-- Name: ir_act_server_mail_channel_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_server_mail_channel_rel (
    ir_act_server_id integer NOT NULL,
    mail_channel_id integer NOT NULL
);


ALTER TABLE public.ir_act_server_mail_channel_rel OWNER TO prisma;

--
-- Name: TABLE ir_act_server_mail_channel_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_act_server_mail_channel_rel IS 'RELATION BETWEEN ir_act_server AND mail_channel';


--
-- Name: ir_act_server_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_server_res_partner_rel (
    ir_act_server_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.ir_act_server_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE ir_act_server_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_act_server_res_partner_rel IS 'RELATION BETWEEN ir_act_server AND res_partner';


--
-- Name: ir_act_url; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_url (
    url text NOT NULL,
    target character varying NOT NULL
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_url OWNER TO prisma;

--
-- Name: COLUMN ir_act_url.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_url.url IS 'Action URL';


--
-- Name: COLUMN ir_act_url.target; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_url.target IS 'Action Target';


--
-- Name: ir_act_window; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_window (
    view_id integer,
    domain character varying,
    context character varying NOT NULL,
    res_id integer,
    res_model character varying NOT NULL,
    src_model character varying,
    target character varying,
    view_mode character varying NOT NULL,
    view_type character varying NOT NULL,
    usage character varying,
    "limit" integer,
    search_view_id integer,
    filter boolean,
    auto_search boolean,
    multi boolean
)
INHERITS (public.ir_actions);


ALTER TABLE public.ir_act_window OWNER TO prisma;

--
-- Name: COLUMN ir_act_window.view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.view_id IS 'View Ref.';


--
-- Name: COLUMN ir_act_window.domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.domain IS 'Domain Value';


--
-- Name: COLUMN ir_act_window.context; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.context IS 'Context Value';


--
-- Name: COLUMN ir_act_window.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.res_id IS 'Record ID';


--
-- Name: COLUMN ir_act_window.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.res_model IS 'Destination Model';


--
-- Name: COLUMN ir_act_window.src_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.src_model IS 'Source Model';


--
-- Name: COLUMN ir_act_window.target; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.target IS 'Target Window';


--
-- Name: COLUMN ir_act_window.view_mode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.view_mode IS 'View Mode';


--
-- Name: COLUMN ir_act_window.view_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.view_type IS 'View Type';


--
-- Name: COLUMN ir_act_window.usage; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.usage IS 'Action Usage';


--
-- Name: COLUMN ir_act_window."limit"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window."limit" IS 'Limit';


--
-- Name: COLUMN ir_act_window.search_view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.search_view_id IS 'Search View Ref.';


--
-- Name: COLUMN ir_act_window.filter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.filter IS 'Filter';


--
-- Name: COLUMN ir_act_window.auto_search; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.auto_search IS 'Auto Search';


--
-- Name: COLUMN ir_act_window.multi; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window.multi IS 'Restrict to lists';


--
-- Name: ir_act_window_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_window_group_rel (
    act_id integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE public.ir_act_window_group_rel OWNER TO prisma;

--
-- Name: TABLE ir_act_window_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_act_window_group_rel IS 'RELATION BETWEEN ir_act_window AND res_groups';


--
-- Name: ir_act_window_view; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_act_window_view (
    id integer NOT NULL,
    sequence integer,
    view_id integer,
    view_mode character varying NOT NULL,
    act_window_id integer,
    multi boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_act_window_view OWNER TO prisma;

--
-- Name: TABLE ir_act_window_view; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_act_window_view IS 'Action Window View';


--
-- Name: COLUMN ir_act_window_view.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.sequence IS 'Sequence';


--
-- Name: COLUMN ir_act_window_view.view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.view_id IS 'View';


--
-- Name: COLUMN ir_act_window_view.view_mode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.view_mode IS 'View Type';


--
-- Name: COLUMN ir_act_window_view.act_window_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.act_window_id IS 'Action';


--
-- Name: COLUMN ir_act_window_view.multi; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.multi IS 'On Multiple Doc.';


--
-- Name: COLUMN ir_act_window_view.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.create_uid IS 'Created by';


--
-- Name: COLUMN ir_act_window_view.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.create_date IS 'Created on';


--
-- Name: COLUMN ir_act_window_view.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_act_window_view.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_act_window_view.write_date IS 'Last Updated on';


--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_act_window_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_act_window_view_id_seq OWNER TO prisma;

--
-- Name: ir_act_window_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_act_window_view_id_seq OWNED BY public.ir_act_window_view.id;


--
-- Name: ir_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_actions_id_seq OWNER TO prisma;

--
-- Name: ir_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_actions_id_seq OWNED BY public.ir_actions.id;


--
-- Name: ir_actions_todo; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_actions_todo (
    id integer NOT NULL,
    action_id integer NOT NULL,
    sequence integer,
    state character varying NOT NULL,
    name character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_actions_todo OWNER TO prisma;

--
-- Name: TABLE ir_actions_todo; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_actions_todo IS 'Configuration Wizards';


--
-- Name: COLUMN ir_actions_todo.action_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.action_id IS 'Action';


--
-- Name: COLUMN ir_actions_todo.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.sequence IS 'Sequence';


--
-- Name: COLUMN ir_actions_todo.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.state IS 'Status';


--
-- Name: COLUMN ir_actions_todo.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.name IS 'Name';


--
-- Name: COLUMN ir_actions_todo.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.create_uid IS 'Created by';


--
-- Name: COLUMN ir_actions_todo.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.create_date IS 'Created on';


--
-- Name: COLUMN ir_actions_todo.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_actions_todo.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_actions_todo.write_date IS 'Last Updated on';


--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_actions_todo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_actions_todo_id_seq OWNER TO prisma;

--
-- Name: ir_actions_todo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_actions_todo_id_seq OWNED BY public.ir_actions_todo.id;


--
-- Name: ir_attachment; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_attachment (
    id integer NOT NULL,
    name character varying NOT NULL,
    datas_fname character varying,
    description text,
    res_name character varying,
    res_model character varying,
    res_model_name character varying,
    res_field character varying,
    res_id integer,
    company_id integer,
    type character varying NOT NULL,
    url character varying(1024),
    public boolean,
    access_token character varying,
    db_datas bytea,
    store_fname character varying,
    file_size integer,
    checksum character varying(40),
    mimetype character varying,
    index_content text,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    key character varying,
    website_id integer,
    theme_template_id integer
);


ALTER TABLE public.ir_attachment OWNER TO prisma;

--
-- Name: TABLE ir_attachment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_attachment IS 'Attachment';


--
-- Name: COLUMN ir_attachment.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.name IS 'Name';


--
-- Name: COLUMN ir_attachment.datas_fname; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.datas_fname IS 'Filename';


--
-- Name: COLUMN ir_attachment.description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.description IS 'Description';


--
-- Name: COLUMN ir_attachment.res_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.res_name IS 'Resource Name';


--
-- Name: COLUMN ir_attachment.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.res_model IS 'Resource Model';


--
-- Name: COLUMN ir_attachment.res_model_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.res_model_name IS 'Res Model Name';


--
-- Name: COLUMN ir_attachment.res_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.res_field IS 'Resource Field';


--
-- Name: COLUMN ir_attachment.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.res_id IS 'Resource ID';


--
-- Name: COLUMN ir_attachment.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.company_id IS 'Company';


--
-- Name: COLUMN ir_attachment.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.type IS 'Type';


--
-- Name: COLUMN ir_attachment.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.url IS 'Url';


--
-- Name: COLUMN ir_attachment.public; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.public IS 'Is public document';


--
-- Name: COLUMN ir_attachment.access_token; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.access_token IS 'Access Token';


--
-- Name: COLUMN ir_attachment.db_datas; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.db_datas IS 'Database Data';


--
-- Name: COLUMN ir_attachment.store_fname; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.store_fname IS 'Stored Filename';


--
-- Name: COLUMN ir_attachment.file_size; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.file_size IS 'File Size';


--
-- Name: COLUMN ir_attachment.checksum; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.checksum IS 'Checksum/SHA1';


--
-- Name: COLUMN ir_attachment.mimetype; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.mimetype IS 'Mime Type';


--
-- Name: COLUMN ir_attachment.index_content; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.index_content IS 'Indexed Content';


--
-- Name: COLUMN ir_attachment.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.active IS 'Active';


--
-- Name: COLUMN ir_attachment.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.create_uid IS 'Created by';


--
-- Name: COLUMN ir_attachment.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.create_date IS 'Created on';


--
-- Name: COLUMN ir_attachment.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_attachment.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_attachment.key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.key IS 'Key';


--
-- Name: COLUMN ir_attachment.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.website_id IS 'Website';


--
-- Name: COLUMN ir_attachment.theme_template_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_attachment.theme_template_id IS 'Theme Template';


--
-- Name: ir_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_attachment_id_seq OWNER TO prisma;

--
-- Name: ir_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_attachment_id_seq OWNED BY public.ir_attachment.id;


--
-- Name: ir_config_parameter; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_config_parameter (
    id integer NOT NULL,
    key character varying NOT NULL,
    value text NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_config_parameter OWNER TO prisma;

--
-- Name: TABLE ir_config_parameter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_config_parameter IS 'System Parameter';


--
-- Name: COLUMN ir_config_parameter.key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_config_parameter.key IS 'Key';


--
-- Name: COLUMN ir_config_parameter.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_config_parameter.value IS 'Value';


--
-- Name: COLUMN ir_config_parameter.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_config_parameter.create_uid IS 'Created by';


--
-- Name: COLUMN ir_config_parameter.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_config_parameter.create_date IS 'Created on';


--
-- Name: COLUMN ir_config_parameter.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_config_parameter.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_config_parameter.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_config_parameter.write_date IS 'Last Updated on';


--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_config_parameter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_config_parameter_id_seq OWNER TO prisma;

--
-- Name: ir_config_parameter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_config_parameter_id_seq OWNED BY public.ir_config_parameter.id;


--
-- Name: ir_cron; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_cron (
    id integer NOT NULL,
    ir_actions_server_id integer NOT NULL,
    cron_name character varying,
    user_id integer NOT NULL,
    active boolean,
    interval_number integer,
    interval_type character varying,
    numbercall integer,
    doall boolean,
    nextcall timestamp without time zone NOT NULL,
    priority integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_cron OWNER TO prisma;

--
-- Name: TABLE ir_cron; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_cron IS 'Scheduled Actions';


--
-- Name: COLUMN ir_cron.ir_actions_server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.ir_actions_server_id IS 'Server action';


--
-- Name: COLUMN ir_cron.cron_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.cron_name IS 'Name';


--
-- Name: COLUMN ir_cron.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.user_id IS 'Scheduler User';


--
-- Name: COLUMN ir_cron.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.active IS 'Active';


--
-- Name: COLUMN ir_cron.interval_number; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.interval_number IS 'Interval Number';


--
-- Name: COLUMN ir_cron.interval_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.interval_type IS 'Interval Unit';


--
-- Name: COLUMN ir_cron.numbercall; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.numbercall IS 'Number of Calls';


--
-- Name: COLUMN ir_cron.doall; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.doall IS 'Repeat Missed';


--
-- Name: COLUMN ir_cron.nextcall; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.nextcall IS 'Next Execution Date';


--
-- Name: COLUMN ir_cron.priority; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.priority IS 'Priority';


--
-- Name: COLUMN ir_cron.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.create_uid IS 'Created by';


--
-- Name: COLUMN ir_cron.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.create_date IS 'Created on';


--
-- Name: COLUMN ir_cron.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_cron.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_cron.write_date IS 'Last Updated on';


--
-- Name: ir_cron_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_cron_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_cron_id_seq OWNER TO prisma;

--
-- Name: ir_cron_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_cron_id_seq OWNED BY public.ir_cron.id;


--
-- Name: ir_default; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_default (
    id integer NOT NULL,
    field_id integer NOT NULL,
    user_id integer,
    company_id integer,
    condition character varying,
    json_value character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_default OWNER TO prisma;

--
-- Name: TABLE ir_default; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_default IS 'Default Values';


--
-- Name: COLUMN ir_default.field_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.field_id IS 'Field';


--
-- Name: COLUMN ir_default.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.user_id IS 'User';


--
-- Name: COLUMN ir_default.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.company_id IS 'Company';


--
-- Name: COLUMN ir_default.condition; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.condition IS 'Condition';


--
-- Name: COLUMN ir_default.json_value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.json_value IS 'Default Value (JSON format)';


--
-- Name: COLUMN ir_default.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.create_uid IS 'Created by';


--
-- Name: COLUMN ir_default.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.create_date IS 'Created on';


--
-- Name: COLUMN ir_default.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_default.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_default.write_date IS 'Last Updated on';


--
-- Name: ir_default_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_default_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_default_id_seq OWNER TO prisma;

--
-- Name: ir_default_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_default_id_seq OWNED BY public.ir_default.id;


--
-- Name: ir_demo; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_demo (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_demo OWNER TO prisma;

--
-- Name: TABLE ir_demo; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_demo IS 'Demo';


--
-- Name: COLUMN ir_demo.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo.create_uid IS 'Created by';


--
-- Name: COLUMN ir_demo.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo.create_date IS 'Created on';


--
-- Name: COLUMN ir_demo.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_demo.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo.write_date IS 'Last Updated on';


--
-- Name: ir_demo_failure; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_demo_failure (
    id integer NOT NULL,
    module_id integer NOT NULL,
    error character varying,
    wizard_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_demo_failure OWNER TO prisma;

--
-- Name: TABLE ir_demo_failure; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_demo_failure IS 'Demo failure';


--
-- Name: COLUMN ir_demo_failure.module_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.module_id IS 'Module';


--
-- Name: COLUMN ir_demo_failure.error; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.error IS 'Error';


--
-- Name: COLUMN ir_demo_failure.wizard_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.wizard_id IS 'Wizard';


--
-- Name: COLUMN ir_demo_failure.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.create_uid IS 'Created by';


--
-- Name: COLUMN ir_demo_failure.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.create_date IS 'Created on';


--
-- Name: COLUMN ir_demo_failure.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_demo_failure.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure.write_date IS 'Last Updated on';


--
-- Name: ir_demo_failure_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_demo_failure_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_demo_failure_id_seq OWNER TO prisma;

--
-- Name: ir_demo_failure_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_demo_failure_id_seq OWNED BY public.ir_demo_failure.id;


--
-- Name: ir_demo_failure_wizard; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_demo_failure_wizard (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_demo_failure_wizard OWNER TO prisma;

--
-- Name: TABLE ir_demo_failure_wizard; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_demo_failure_wizard IS 'Demo Failure wizard';


--
-- Name: COLUMN ir_demo_failure_wizard.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN ir_demo_failure_wizard.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure_wizard.create_date IS 'Created on';


--
-- Name: COLUMN ir_demo_failure_wizard.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_demo_failure_wizard.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_demo_failure_wizard.write_date IS 'Last Updated on';


--
-- Name: ir_demo_failure_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_demo_failure_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_demo_failure_wizard_id_seq OWNER TO prisma;

--
-- Name: ir_demo_failure_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_demo_failure_wizard_id_seq OWNED BY public.ir_demo_failure_wizard.id;


--
-- Name: ir_demo_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_demo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_demo_id_seq OWNER TO prisma;

--
-- Name: ir_demo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_demo_id_seq OWNED BY public.ir_demo.id;


--
-- Name: ir_exports; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_exports (
    id integer NOT NULL,
    name character varying,
    resource character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_exports OWNER TO prisma;

--
-- Name: TABLE ir_exports; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_exports IS 'Exports';


--
-- Name: COLUMN ir_exports.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports.name IS 'Export Name';


--
-- Name: COLUMN ir_exports.resource; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports.resource IS 'Resource';


--
-- Name: COLUMN ir_exports.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports.create_uid IS 'Created by';


--
-- Name: COLUMN ir_exports.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports.create_date IS 'Created on';


--
-- Name: COLUMN ir_exports.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_exports.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports.write_date IS 'Last Updated on';


--
-- Name: ir_exports_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_exports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_exports_id_seq OWNER TO prisma;

--
-- Name: ir_exports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_exports_id_seq OWNED BY public.ir_exports.id;


--
-- Name: ir_exports_line; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_exports_line (
    id integer NOT NULL,
    name character varying,
    export_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_exports_line OWNER TO prisma;

--
-- Name: TABLE ir_exports_line; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_exports_line IS 'Exports Line';


--
-- Name: COLUMN ir_exports_line.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports_line.name IS 'Field Name';


--
-- Name: COLUMN ir_exports_line.export_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports_line.export_id IS 'Export';


--
-- Name: COLUMN ir_exports_line.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports_line.create_uid IS 'Created by';


--
-- Name: COLUMN ir_exports_line.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports_line.create_date IS 'Created on';


--
-- Name: COLUMN ir_exports_line.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports_line.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_exports_line.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_exports_line.write_date IS 'Last Updated on';


--
-- Name: ir_exports_line_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_exports_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_exports_line_id_seq OWNER TO prisma;

--
-- Name: ir_exports_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_exports_line_id_seq OWNED BY public.ir_exports_line.id;


--
-- Name: ir_filters; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_filters (
    id integer NOT NULL,
    name character varying NOT NULL,
    user_id integer,
    domain text NOT NULL,
    context text NOT NULL,
    sort text NOT NULL,
    model_id character varying NOT NULL,
    is_default boolean,
    action_id integer,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_filters OWNER TO prisma;

--
-- Name: TABLE ir_filters; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_filters IS 'Filters';


--
-- Name: COLUMN ir_filters.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.name IS 'Filter Name';


--
-- Name: COLUMN ir_filters.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.user_id IS 'User';


--
-- Name: COLUMN ir_filters.domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.domain IS 'Domain';


--
-- Name: COLUMN ir_filters.context; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.context IS 'Context';


--
-- Name: COLUMN ir_filters.sort; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.sort IS 'Sort';


--
-- Name: COLUMN ir_filters.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.model_id IS 'Model';


--
-- Name: COLUMN ir_filters.is_default; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.is_default IS 'Default Filter';


--
-- Name: COLUMN ir_filters.action_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.action_id IS 'Action';


--
-- Name: COLUMN ir_filters.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.active IS 'Active';


--
-- Name: COLUMN ir_filters.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.create_uid IS 'Created by';


--
-- Name: COLUMN ir_filters.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.create_date IS 'Created on';


--
-- Name: COLUMN ir_filters.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_filters.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_filters.write_date IS 'Last Updated on';


--
-- Name: ir_filters_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_filters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_filters_id_seq OWNER TO prisma;

--
-- Name: ir_filters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_filters_id_seq OWNED BY public.ir_filters.id;


--
-- Name: ir_logging; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_logging (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    name character varying NOT NULL,
    type character varying NOT NULL,
    dbname character varying,
    level character varying,
    message text NOT NULL,
    path character varying NOT NULL,
    func character varying NOT NULL,
    line character varying NOT NULL
);


ALTER TABLE public.ir_logging OWNER TO prisma;

--
-- Name: TABLE ir_logging; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_logging IS 'Logging';


--
-- Name: COLUMN ir_logging.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.create_uid IS 'Created by';


--
-- Name: COLUMN ir_logging.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.create_date IS 'Created on';


--
-- Name: COLUMN ir_logging.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_logging.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_logging.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.name IS 'Name';


--
-- Name: COLUMN ir_logging.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.type IS 'Type';


--
-- Name: COLUMN ir_logging.dbname; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.dbname IS 'Database Name';


--
-- Name: COLUMN ir_logging.level; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.level IS 'Level';


--
-- Name: COLUMN ir_logging.message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.message IS 'Message';


--
-- Name: COLUMN ir_logging.path; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.path IS 'Path';


--
-- Name: COLUMN ir_logging.func; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.func IS 'Function';


--
-- Name: COLUMN ir_logging.line; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_logging.line IS 'Line';


--
-- Name: ir_logging_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_logging_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_logging_id_seq OWNER TO prisma;

--
-- Name: ir_logging_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_logging_id_seq OWNED BY public.ir_logging.id;


--
-- Name: ir_mail_server; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_mail_server (
    id integer NOT NULL,
    name character varying NOT NULL,
    smtp_host character varying NOT NULL,
    smtp_port integer NOT NULL,
    smtp_user character varying,
    smtp_pass character varying,
    smtp_encryption character varying NOT NULL,
    smtp_debug boolean,
    sequence integer,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_mail_server OWNER TO prisma;

--
-- Name: TABLE ir_mail_server; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_mail_server IS 'Mail Server';


--
-- Name: COLUMN ir_mail_server.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.name IS 'Description';


--
-- Name: COLUMN ir_mail_server.smtp_host; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.smtp_host IS 'SMTP Server';


--
-- Name: COLUMN ir_mail_server.smtp_port; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.smtp_port IS 'SMTP Port';


--
-- Name: COLUMN ir_mail_server.smtp_user; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.smtp_user IS 'Username';


--
-- Name: COLUMN ir_mail_server.smtp_pass; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.smtp_pass IS 'Password';


--
-- Name: COLUMN ir_mail_server.smtp_encryption; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.smtp_encryption IS 'Connection Security';


--
-- Name: COLUMN ir_mail_server.smtp_debug; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.smtp_debug IS 'Debugging';


--
-- Name: COLUMN ir_mail_server.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.sequence IS 'Priority';


--
-- Name: COLUMN ir_mail_server.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.active IS 'Active';


--
-- Name: COLUMN ir_mail_server.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.create_uid IS 'Created by';


--
-- Name: COLUMN ir_mail_server.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.create_date IS 'Created on';


--
-- Name: COLUMN ir_mail_server.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_mail_server.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_mail_server.write_date IS 'Last Updated on';


--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_mail_server_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_mail_server_id_seq OWNER TO prisma;

--
-- Name: ir_mail_server_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_mail_server_id_seq OWNED BY public.ir_mail_server.id;


--
-- Name: ir_model; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model (
    id integer NOT NULL,
    name character varying NOT NULL,
    model character varying NOT NULL,
    info text,
    state character varying,
    transient boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    is_mail_thread boolean
);


ALTER TABLE public.ir_model OWNER TO prisma;

--
-- Name: TABLE ir_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_model IS 'Models';


--
-- Name: COLUMN ir_model.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.name IS 'Model Description';


--
-- Name: COLUMN ir_model.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.model IS 'Model';


--
-- Name: COLUMN ir_model.info; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.info IS 'Information';


--
-- Name: COLUMN ir_model.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.state IS 'Type';


--
-- Name: COLUMN ir_model.transient; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.transient IS 'Transient Model';


--
-- Name: COLUMN ir_model.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.create_date IS 'Created on';


--
-- Name: COLUMN ir_model.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_model.is_mail_thread; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model.is_mail_thread IS 'Mail Thread';


--
-- Name: ir_model_access; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model_access (
    id integer NOT NULL,
    name character varying NOT NULL,
    active boolean,
    model_id integer NOT NULL,
    group_id integer,
    perm_read boolean,
    perm_write boolean,
    perm_create boolean,
    perm_unlink boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_model_access OWNER TO prisma;

--
-- Name: TABLE ir_model_access; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_model_access IS 'Model Access';


--
-- Name: COLUMN ir_model_access.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.name IS 'Name';


--
-- Name: COLUMN ir_model_access.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.active IS 'Active';


--
-- Name: COLUMN ir_model_access.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.model_id IS 'Object';


--
-- Name: COLUMN ir_model_access.group_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.group_id IS 'Group';


--
-- Name: COLUMN ir_model_access.perm_read; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.perm_read IS 'Read Access';


--
-- Name: COLUMN ir_model_access.perm_write; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.perm_write IS 'Write Access';


--
-- Name: COLUMN ir_model_access.perm_create; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.perm_create IS 'Create Access';


--
-- Name: COLUMN ir_model_access.perm_unlink; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.perm_unlink IS 'Delete Access';


--
-- Name: COLUMN ir_model_access.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_access.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_access.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_access.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_access.write_date IS 'Last Updated on';


--
-- Name: ir_model_access_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_model_access_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_access_id_seq OWNER TO prisma;

--
-- Name: ir_model_access_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_model_access_id_seq OWNED BY public.ir_model_access.id;


--
-- Name: ir_model_constraint; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model_constraint (
    id integer NOT NULL,
    name character varying NOT NULL,
    definition character varying,
    model integer NOT NULL,
    module integer NOT NULL,
    type character varying(1) NOT NULL,
    date_update timestamp without time zone,
    date_init timestamp without time zone,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_model_constraint OWNER TO prisma;

--
-- Name: TABLE ir_model_constraint; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_model_constraint IS 'Model Constraint';


--
-- Name: COLUMN ir_model_constraint.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.name IS 'Constraint';


--
-- Name: COLUMN ir_model_constraint.definition; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.definition IS 'Definition';


--
-- Name: COLUMN ir_model_constraint.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.model IS 'Model';


--
-- Name: COLUMN ir_model_constraint.module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.module IS 'Module';


--
-- Name: COLUMN ir_model_constraint.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.type IS 'Constraint Type';


--
-- Name: COLUMN ir_model_constraint.date_update; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.date_update IS 'Update Date';


--
-- Name: COLUMN ir_model_constraint.date_init; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.date_init IS 'Initialization Date';


--
-- Name: COLUMN ir_model_constraint.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_constraint.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_constraint.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_constraint.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_constraint.write_date IS 'Last Updated on';


--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_model_constraint_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_constraint_id_seq OWNER TO prisma;

--
-- Name: ir_model_constraint_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_model_constraint_id_seq OWNED BY public.ir_model_constraint.id;


--
-- Name: ir_model_data; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model_data (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    noupdate boolean,
    name character varying NOT NULL,
    date_init timestamp without time zone,
    date_update timestamp without time zone,
    module character varying NOT NULL,
    model character varying NOT NULL,
    res_id integer
);


ALTER TABLE public.ir_model_data OWNER TO prisma;

--
-- Name: ir_model_data_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_model_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_data_id_seq OWNER TO prisma;

--
-- Name: ir_model_data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_model_data_id_seq OWNED BY public.ir_model_data.id;


--
-- Name: ir_model_fields; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model_fields (
    id integer NOT NULL,
    name character varying NOT NULL,
    complete_name character varying,
    model character varying NOT NULL,
    relation character varying,
    relation_field character varying,
    relation_field_id integer,
    model_id integer NOT NULL,
    field_description character varying NOT NULL,
    help text,
    ttype character varying NOT NULL,
    selection character varying,
    copied boolean,
    related character varying,
    related_field_id integer,
    required boolean,
    readonly boolean,
    index boolean,
    translate boolean,
    size integer,
    state character varying NOT NULL,
    on_delete character varying,
    domain character varying,
    selectable boolean,
    relation_table character varying,
    column1 character varying,
    column2 character varying,
    compute text,
    depends character varying,
    store boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    track_visibility character varying,
    CONSTRAINT ir_model_fields_size_gt_zero CHECK ((size >= 0))
);


ALTER TABLE public.ir_model_fields OWNER TO prisma;

--
-- Name: TABLE ir_model_fields; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_model_fields IS 'Fields';


--
-- Name: COLUMN ir_model_fields.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.name IS 'Field Name';


--
-- Name: COLUMN ir_model_fields.complete_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.complete_name IS 'Complete Name';


--
-- Name: COLUMN ir_model_fields.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.model IS 'Object Name';


--
-- Name: COLUMN ir_model_fields.relation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.relation IS 'Object Relation';


--
-- Name: COLUMN ir_model_fields.relation_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.relation_field IS 'Relation Field';


--
-- Name: COLUMN ir_model_fields.relation_field_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.relation_field_id IS 'Relation field';


--
-- Name: COLUMN ir_model_fields.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.model_id IS 'Model';


--
-- Name: COLUMN ir_model_fields.field_description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.field_description IS 'Field Label';


--
-- Name: COLUMN ir_model_fields.help; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.help IS 'Field Help';


--
-- Name: COLUMN ir_model_fields.ttype; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.ttype IS 'Field Type';


--
-- Name: COLUMN ir_model_fields.selection; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.selection IS 'Selection Options';


--
-- Name: COLUMN ir_model_fields.copied; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.copied IS 'Copied';


--
-- Name: COLUMN ir_model_fields.related; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.related IS 'Related Field';


--
-- Name: COLUMN ir_model_fields.related_field_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.related_field_id IS 'Related field';


--
-- Name: COLUMN ir_model_fields.required; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.required IS 'Required';


--
-- Name: COLUMN ir_model_fields.readonly; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.readonly IS 'Readonly';


--
-- Name: COLUMN ir_model_fields.index; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.index IS 'Indexed';


--
-- Name: COLUMN ir_model_fields.translate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.translate IS 'Translatable';


--
-- Name: COLUMN ir_model_fields.size; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.size IS 'Size';


--
-- Name: COLUMN ir_model_fields.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.state IS 'Type';


--
-- Name: COLUMN ir_model_fields.on_delete; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.on_delete IS 'On Delete';


--
-- Name: COLUMN ir_model_fields.domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.domain IS 'Domain';


--
-- Name: COLUMN ir_model_fields.selectable; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.selectable IS 'Selectable';


--
-- Name: COLUMN ir_model_fields.relation_table; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.relation_table IS 'Relation Table';


--
-- Name: COLUMN ir_model_fields.column1; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.column1 IS 'Column 1';


--
-- Name: COLUMN ir_model_fields.column2; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.column2 IS 'Column 2';


--
-- Name: COLUMN ir_model_fields.compute; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.compute IS 'Compute';


--
-- Name: COLUMN ir_model_fields.depends; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.depends IS 'Dependencies';


--
-- Name: COLUMN ir_model_fields.store; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.store IS 'Stored';


--
-- Name: COLUMN ir_model_fields.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_fields.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_fields.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_fields.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_model_fields.track_visibility; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_fields.track_visibility IS 'Tracking';


--
-- Name: CONSTRAINT ir_model_fields_size_gt_zero ON ir_model_fields; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_model_fields_size_gt_zero ON public.ir_model_fields IS 'CHECK (size>=0)';


--
-- Name: ir_model_fields_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model_fields_group_rel (
    field_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.ir_model_fields_group_rel OWNER TO prisma;

--
-- Name: TABLE ir_model_fields_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_model_fields_group_rel IS 'RELATION BETWEEN ir_model_fields AND res_groups';


--
-- Name: ir_model_fields_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_model_fields_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_fields_id_seq OWNER TO prisma;

--
-- Name: ir_model_fields_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_model_fields_id_seq OWNED BY public.ir_model_fields.id;


--
-- Name: ir_model_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_id_seq OWNER TO prisma;

--
-- Name: ir_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_model_id_seq OWNED BY public.ir_model.id;


--
-- Name: ir_model_relation; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_model_relation (
    id integer NOT NULL,
    name character varying NOT NULL,
    model integer NOT NULL,
    module integer NOT NULL,
    date_update timestamp without time zone,
    date_init timestamp without time zone,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_model_relation OWNER TO prisma;

--
-- Name: TABLE ir_model_relation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_model_relation IS 'Relation Model';


--
-- Name: COLUMN ir_model_relation.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.name IS 'Relation Name';


--
-- Name: COLUMN ir_model_relation.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.model IS 'Model';


--
-- Name: COLUMN ir_model_relation.module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.module IS 'Module';


--
-- Name: COLUMN ir_model_relation.date_update; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.date_update IS 'Update Date';


--
-- Name: COLUMN ir_model_relation.date_init; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.date_init IS 'Initialization Date';


--
-- Name: COLUMN ir_model_relation.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.create_uid IS 'Created by';


--
-- Name: COLUMN ir_model_relation.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.create_date IS 'Created on';


--
-- Name: COLUMN ir_model_relation.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_model_relation.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_model_relation.write_date IS 'Last Updated on';


--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_model_relation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_relation_id_seq OWNER TO prisma;

--
-- Name: ir_model_relation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_model_relation_id_seq OWNED BY public.ir_model_relation.id;


--
-- Name: ir_module_category; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_module_category (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    parent_id integer,
    name character varying NOT NULL,
    description text,
    sequence integer,
    visible boolean,
    exclusive boolean
);


ALTER TABLE public.ir_module_category OWNER TO prisma;

--
-- Name: COLUMN ir_module_category.description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_category.description IS 'Description';


--
-- Name: COLUMN ir_module_category.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_category.sequence IS 'Sequence';


--
-- Name: COLUMN ir_module_category.visible; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_category.visible IS 'Visible';


--
-- Name: COLUMN ir_module_category.exclusive; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_category.exclusive IS 'Exclusive';


--
-- Name: ir_module_category_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_module_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_category_id_seq OWNER TO prisma;

--
-- Name: ir_module_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_module_category_id_seq OWNED BY public.ir_module_category.id;


--
-- Name: ir_module_module; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_module_module (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    website character varying,
    summary character varying,
    name character varying NOT NULL,
    author character varying,
    icon character varying,
    state character varying(16),
    latest_version character varying,
    shortdesc character varying,
    category_id integer,
    description text,
    application boolean DEFAULT false,
    demo boolean DEFAULT false,
    web boolean DEFAULT false,
    license character varying(32),
    sequence integer DEFAULT 100,
    auto_install boolean DEFAULT false,
    to_buy boolean DEFAULT false,
    maintainer character varying,
    contributors text,
    published_version character varying,
    url character varying,
    menus_by_module text,
    reports_by_module text,
    views_by_module text
);


ALTER TABLE public.ir_module_module OWNER TO prisma;

--
-- Name: COLUMN ir_module_module.maintainer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.maintainer IS 'Maintainer';


--
-- Name: COLUMN ir_module_module.contributors; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.contributors IS 'Contributors';


--
-- Name: COLUMN ir_module_module.published_version; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.published_version IS 'Published Version';


--
-- Name: COLUMN ir_module_module.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.url IS 'URL';


--
-- Name: COLUMN ir_module_module.menus_by_module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.menus_by_module IS 'Menus';


--
-- Name: COLUMN ir_module_module.reports_by_module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.reports_by_module IS 'Reports';


--
-- Name: COLUMN ir_module_module.views_by_module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module.views_by_module IS 'Views';


--
-- Name: ir_module_module_dependency; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_module_module_dependency (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    name character varying,
    module_id integer
);


ALTER TABLE public.ir_module_module_dependency OWNER TO prisma;

--
-- Name: ir_module_module_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_module_module_dependency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_module_dependency_id_seq OWNER TO prisma;

--
-- Name: ir_module_module_dependency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_module_module_dependency_id_seq OWNED BY public.ir_module_module_dependency.id;


--
-- Name: ir_module_module_exclusion; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_module_module_exclusion (
    id integer NOT NULL,
    name character varying,
    module_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_module_module_exclusion OWNER TO prisma;

--
-- Name: TABLE ir_module_module_exclusion; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_module_module_exclusion IS 'Module exclusion';


--
-- Name: COLUMN ir_module_module_exclusion.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module_exclusion.name IS 'Name';


--
-- Name: COLUMN ir_module_module_exclusion.module_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module_exclusion.module_id IS 'Module';


--
-- Name: COLUMN ir_module_module_exclusion.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module_exclusion.create_uid IS 'Created by';


--
-- Name: COLUMN ir_module_module_exclusion.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module_exclusion.create_date IS 'Created on';


--
-- Name: COLUMN ir_module_module_exclusion.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module_exclusion.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_module_module_exclusion.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_module_module_exclusion.write_date IS 'Last Updated on';


--
-- Name: ir_module_module_exclusion_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_module_module_exclusion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_module_exclusion_id_seq OWNER TO prisma;

--
-- Name: ir_module_module_exclusion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_module_module_exclusion_id_seq OWNED BY public.ir_module_module_exclusion.id;


--
-- Name: ir_module_module_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_module_module_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_module_id_seq OWNER TO prisma;

--
-- Name: ir_module_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_module_module_id_seq OWNED BY public.ir_module_module.id;


--
-- Name: ir_property; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_property (
    id integer NOT NULL,
    name character varying,
    res_id character varying,
    company_id integer,
    fields_id integer NOT NULL,
    value_float double precision,
    value_integer integer,
    value_text text,
    value_binary bytea,
    value_reference character varying,
    value_datetime timestamp without time zone,
    type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_property OWNER TO prisma;

--
-- Name: TABLE ir_property; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_property IS 'Company Property';


--
-- Name: COLUMN ir_property.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.name IS 'Name';


--
-- Name: COLUMN ir_property.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.res_id IS 'Resource';


--
-- Name: COLUMN ir_property.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.company_id IS 'Company';


--
-- Name: COLUMN ir_property.fields_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.fields_id IS 'Field';


--
-- Name: COLUMN ir_property.value_float; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.value_float IS 'Value Float';


--
-- Name: COLUMN ir_property.value_integer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.value_integer IS 'Value Integer';


--
-- Name: COLUMN ir_property.value_text; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.value_text IS 'Value Text';


--
-- Name: COLUMN ir_property.value_binary; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.value_binary IS 'Value Binary';


--
-- Name: COLUMN ir_property.value_reference; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.value_reference IS 'Value Reference';


--
-- Name: COLUMN ir_property.value_datetime; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.value_datetime IS 'Value Datetime';


--
-- Name: COLUMN ir_property.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.type IS 'Type';


--
-- Name: COLUMN ir_property.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.create_uid IS 'Created by';


--
-- Name: COLUMN ir_property.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.create_date IS 'Created on';


--
-- Name: COLUMN ir_property.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_property.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_property.write_date IS 'Last Updated on';


--
-- Name: ir_property_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_property_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_property_id_seq OWNER TO prisma;

--
-- Name: ir_property_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_property_id_seq OWNED BY public.ir_property.id;


--
-- Name: ir_rule; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_rule (
    id integer NOT NULL,
    name character varying,
    active boolean,
    model_id integer NOT NULL,
    domain_force text,
    perm_read boolean,
    perm_write boolean,
    perm_create boolean,
    perm_unlink boolean,
    global boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    CONSTRAINT ir_rule_no_access_rights CHECK (((perm_read <> false) OR (perm_write <> false) OR (perm_create <> false) OR (perm_unlink <> false)))
);


ALTER TABLE public.ir_rule OWNER TO prisma;

--
-- Name: TABLE ir_rule; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_rule IS 'Record Rule';


--
-- Name: COLUMN ir_rule.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.name IS 'Name';


--
-- Name: COLUMN ir_rule.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.active IS 'Active';


--
-- Name: COLUMN ir_rule.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.model_id IS 'Object';


--
-- Name: COLUMN ir_rule.domain_force; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.domain_force IS 'Domain';


--
-- Name: COLUMN ir_rule.perm_read; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.perm_read IS 'Apply for Read';


--
-- Name: COLUMN ir_rule.perm_write; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.perm_write IS 'Apply for Write';


--
-- Name: COLUMN ir_rule.perm_create; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.perm_create IS 'Apply for Create';


--
-- Name: COLUMN ir_rule.perm_unlink; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.perm_unlink IS 'Apply for Delete';


--
-- Name: COLUMN ir_rule.global; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.global IS 'Global';


--
-- Name: COLUMN ir_rule.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.create_uid IS 'Created by';


--
-- Name: COLUMN ir_rule.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.create_date IS 'Created on';


--
-- Name: COLUMN ir_rule.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_rule.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_rule.write_date IS 'Last Updated on';


--
-- Name: CONSTRAINT ir_rule_no_access_rights ON ir_rule; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_rule_no_access_rights ON public.ir_rule IS 'CHECK (perm_read!=False or perm_write!=False or perm_create!=False or perm_unlink!=False)';


--
-- Name: ir_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_rule_id_seq OWNER TO prisma;

--
-- Name: ir_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_rule_id_seq OWNED BY public.ir_rule.id;


--
-- Name: ir_sequence; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_sequence (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying,
    implementation character varying NOT NULL,
    active boolean,
    prefix character varying,
    suffix character varying,
    number_next integer NOT NULL,
    number_increment integer NOT NULL,
    padding integer NOT NULL,
    company_id integer,
    use_date_range boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_sequence OWNER TO prisma;

--
-- Name: TABLE ir_sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_sequence IS 'Sequence';


--
-- Name: COLUMN ir_sequence.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.name IS 'Name';


--
-- Name: COLUMN ir_sequence.code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.code IS 'Sequence Code';


--
-- Name: COLUMN ir_sequence.implementation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.implementation IS 'Implementation';


--
-- Name: COLUMN ir_sequence.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.active IS 'Active';


--
-- Name: COLUMN ir_sequence.prefix; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.prefix IS 'Prefix';


--
-- Name: COLUMN ir_sequence.suffix; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.suffix IS 'Suffix';


--
-- Name: COLUMN ir_sequence.number_next; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.number_next IS 'Next Number';


--
-- Name: COLUMN ir_sequence.number_increment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.number_increment IS 'Step';


--
-- Name: COLUMN ir_sequence.padding; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.padding IS 'Sequence Size';


--
-- Name: COLUMN ir_sequence.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.company_id IS 'Company';


--
-- Name: COLUMN ir_sequence.use_date_range; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.use_date_range IS 'Use subsequences per date_range';


--
-- Name: COLUMN ir_sequence.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.create_uid IS 'Created by';


--
-- Name: COLUMN ir_sequence.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.create_date IS 'Created on';


--
-- Name: COLUMN ir_sequence.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_sequence.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence.write_date IS 'Last Updated on';


--
-- Name: ir_sequence_date_range; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_sequence_date_range (
    id integer NOT NULL,
    date_from date NOT NULL,
    date_to date NOT NULL,
    sequence_id integer NOT NULL,
    number_next integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_sequence_date_range OWNER TO prisma;

--
-- Name: TABLE ir_sequence_date_range; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_sequence_date_range IS 'Sequence Date Range';


--
-- Name: COLUMN ir_sequence_date_range.date_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.date_from IS 'From';


--
-- Name: COLUMN ir_sequence_date_range.date_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.date_to IS 'To';


--
-- Name: COLUMN ir_sequence_date_range.sequence_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.sequence_id IS 'Main Sequence';


--
-- Name: COLUMN ir_sequence_date_range.number_next; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.number_next IS 'Next Number';


--
-- Name: COLUMN ir_sequence_date_range.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.create_uid IS 'Created by';


--
-- Name: COLUMN ir_sequence_date_range.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.create_date IS 'Created on';


--
-- Name: COLUMN ir_sequence_date_range.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_sequence_date_range.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_sequence_date_range.write_date IS 'Last Updated on';


--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_sequence_date_range_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_date_range_id_seq OWNER TO prisma;

--
-- Name: ir_sequence_date_range_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_sequence_date_range_id_seq OWNED BY public.ir_sequence_date_range.id;


--
-- Name: ir_sequence_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_sequence_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_id_seq OWNER TO prisma;

--
-- Name: ir_sequence_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_sequence_id_seq OWNED BY public.ir_sequence.id;


--
-- Name: ir_server_object_lines; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_server_object_lines (
    id integer NOT NULL,
    server_id integer,
    col1 integer NOT NULL,
    value text NOT NULL,
    type character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_server_object_lines OWNER TO prisma;

--
-- Name: TABLE ir_server_object_lines; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_server_object_lines IS 'Server Action value mapping';


--
-- Name: COLUMN ir_server_object_lines.server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.server_id IS 'Related Server Action';


--
-- Name: COLUMN ir_server_object_lines.col1; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.col1 IS 'Field';


--
-- Name: COLUMN ir_server_object_lines.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.value IS 'Value';


--
-- Name: COLUMN ir_server_object_lines.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.type IS 'Evaluation Type';


--
-- Name: COLUMN ir_server_object_lines.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.create_uid IS 'Created by';


--
-- Name: COLUMN ir_server_object_lines.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.create_date IS 'Created on';


--
-- Name: COLUMN ir_server_object_lines.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_server_object_lines.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_server_object_lines.write_date IS 'Last Updated on';


--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_server_object_lines_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_server_object_lines_id_seq OWNER TO prisma;

--
-- Name: ir_server_object_lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_server_object_lines_id_seq OWNED BY public.ir_server_object_lines.id;


--
-- Name: ir_translation; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_translation (
    id integer NOT NULL,
    name character varying NOT NULL,
    res_id integer,
    lang character varying,
    type character varying,
    src text,
    value text,
    module character varying,
    state character varying,
    comments text
);


ALTER TABLE public.ir_translation OWNER TO prisma;

--
-- Name: TABLE ir_translation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_translation IS 'Translation';


--
-- Name: COLUMN ir_translation.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.name IS 'Translated field';


--
-- Name: COLUMN ir_translation.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.res_id IS 'Record ID';


--
-- Name: COLUMN ir_translation.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.lang IS 'Language';


--
-- Name: COLUMN ir_translation.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.type IS 'Type';


--
-- Name: COLUMN ir_translation.src; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.src IS 'Internal Source';


--
-- Name: COLUMN ir_translation.value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.value IS 'Translation Value';


--
-- Name: COLUMN ir_translation.module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.module IS 'Module';


--
-- Name: COLUMN ir_translation.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.state IS 'Status';


--
-- Name: COLUMN ir_translation.comments; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_translation.comments IS 'Translation comments';


--
-- Name: ir_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_translation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_translation_id_seq OWNER TO prisma;

--
-- Name: ir_translation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_translation_id_seq OWNED BY public.ir_translation.id;


--
-- Name: ir_ui_menu; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_ui_menu (
    id integer NOT NULL,
    parent_path character varying,
    name character varying NOT NULL,
    active boolean,
    sequence integer,
    parent_id integer,
    web_icon character varying,
    action character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_ui_menu OWNER TO prisma;

--
-- Name: TABLE ir_ui_menu; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_ui_menu IS 'Menu';


--
-- Name: COLUMN ir_ui_menu.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.name IS 'Menu';


--
-- Name: COLUMN ir_ui_menu.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.active IS 'Active';


--
-- Name: COLUMN ir_ui_menu.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.sequence IS 'Sequence';


--
-- Name: COLUMN ir_ui_menu.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.parent_id IS 'Parent Menu';


--
-- Name: COLUMN ir_ui_menu.web_icon; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.web_icon IS 'Web Icon File';


--
-- Name: COLUMN ir_ui_menu.action; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.action IS 'Action';


--
-- Name: COLUMN ir_ui_menu.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.create_uid IS 'Created by';


--
-- Name: COLUMN ir_ui_menu.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.create_date IS 'Created on';


--
-- Name: COLUMN ir_ui_menu.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_menu.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_menu.write_date IS 'Last Updated on';


--
-- Name: ir_ui_menu_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_ui_menu_group_rel (
    menu_id integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE public.ir_ui_menu_group_rel OWNER TO prisma;

--
-- Name: TABLE ir_ui_menu_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_ui_menu_group_rel IS 'RELATION BETWEEN ir_ui_menu AND res_groups';


--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_ui_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_menu_id_seq OWNER TO prisma;

--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_ui_menu_id_seq OWNED BY public.ir_ui_menu.id;


--
-- Name: ir_ui_view; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_ui_view (
    id integer NOT NULL,
    name character varying NOT NULL,
    model character varying,
    key character varying,
    priority integer NOT NULL,
    type character varying,
    arch_db text,
    arch_fs character varying,
    inherit_id integer,
    field_parent character varying,
    mode character varying NOT NULL,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    website_meta_title character varying,
    website_meta_description text,
    website_meta_keywords character varying,
    website_meta_og_img character varying,
    customize_show boolean,
    website_id integer,
    theme_template_id integer,
    CONSTRAINT ir_ui_view_inheritance_mode CHECK ((((mode)::text <> 'extension'::text) OR (inherit_id IS NOT NULL))),
    CONSTRAINT ir_ui_view_qweb_required_key CHECK ((((type)::text <> 'qweb'::text) OR (key IS NOT NULL)))
);


ALTER TABLE public.ir_ui_view OWNER TO prisma;

--
-- Name: TABLE ir_ui_view; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_ui_view IS 'View';


--
-- Name: COLUMN ir_ui_view.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.name IS 'View Name';


--
-- Name: COLUMN ir_ui_view.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.model IS 'Model';


--
-- Name: COLUMN ir_ui_view.key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.key IS 'Key';


--
-- Name: COLUMN ir_ui_view.priority; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.priority IS 'Sequence';


--
-- Name: COLUMN ir_ui_view.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.type IS 'View Type';


--
-- Name: COLUMN ir_ui_view.arch_db; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.arch_db IS 'Arch Blob';


--
-- Name: COLUMN ir_ui_view.arch_fs; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.arch_fs IS 'Arch Filename';


--
-- Name: COLUMN ir_ui_view.inherit_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.inherit_id IS 'Inherited View';


--
-- Name: COLUMN ir_ui_view.field_parent; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.field_parent IS 'Child Field';


--
-- Name: COLUMN ir_ui_view.mode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.mode IS 'View inheritance mode';


--
-- Name: COLUMN ir_ui_view.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.active IS 'Active';


--
-- Name: COLUMN ir_ui_view.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.create_uid IS 'Created by';


--
-- Name: COLUMN ir_ui_view.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.create_date IS 'Created on';


--
-- Name: COLUMN ir_ui_view.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_view.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.write_date IS 'Last Updated on';


--
-- Name: COLUMN ir_ui_view.website_meta_title; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.website_meta_title IS 'Website meta title';


--
-- Name: COLUMN ir_ui_view.website_meta_description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.website_meta_description IS 'Website meta description';


--
-- Name: COLUMN ir_ui_view.website_meta_keywords; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.website_meta_keywords IS 'Website meta keywords';


--
-- Name: COLUMN ir_ui_view.website_meta_og_img; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.website_meta_og_img IS 'Website opengraph image';


--
-- Name: COLUMN ir_ui_view.customize_show; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.customize_show IS 'Show As Optional Inherit';


--
-- Name: COLUMN ir_ui_view.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.website_id IS 'Website';


--
-- Name: COLUMN ir_ui_view.theme_template_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view.theme_template_id IS 'Theme Template';


--
-- Name: CONSTRAINT ir_ui_view_inheritance_mode ON ir_ui_view; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_ui_view_inheritance_mode ON public.ir_ui_view IS 'CHECK (mode != ''extension'' OR inherit_id IS NOT NULL)';


--
-- Name: CONSTRAINT ir_ui_view_qweb_required_key ON ir_ui_view; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_ui_view_qweb_required_key ON public.ir_ui_view IS 'CHECK (type != ''qweb'' OR key IS NOT NULL)';


--
-- Name: ir_ui_view_custom; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_ui_view_custom (
    id integer NOT NULL,
    ref_id integer NOT NULL,
    user_id integer NOT NULL,
    arch text NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.ir_ui_view_custom OWNER TO prisma;

--
-- Name: TABLE ir_ui_view_custom; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_ui_view_custom IS 'Custom View';


--
-- Name: COLUMN ir_ui_view_custom.ref_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.ref_id IS 'Original View';


--
-- Name: COLUMN ir_ui_view_custom.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.user_id IS 'User';


--
-- Name: COLUMN ir_ui_view_custom.arch; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.arch IS 'View Architecture';


--
-- Name: COLUMN ir_ui_view_custom.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.create_uid IS 'Created by';


--
-- Name: COLUMN ir_ui_view_custom.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.create_date IS 'Created on';


--
-- Name: COLUMN ir_ui_view_custom.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.write_uid IS 'Last Updated by';


--
-- Name: COLUMN ir_ui_view_custom.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.ir_ui_view_custom.write_date IS 'Last Updated on';


--
-- Name: ir_ui_view_custom_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_ui_view_custom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_view_custom_id_seq OWNER TO prisma;

--
-- Name: ir_ui_view_custom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_ui_view_custom_id_seq OWNED BY public.ir_ui_view_custom.id;


--
-- Name: ir_ui_view_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.ir_ui_view_group_rel (
    view_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.ir_ui_view_group_rel OWNER TO prisma;

--
-- Name: TABLE ir_ui_view_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.ir_ui_view_group_rel IS 'RELATION BETWEEN ir_ui_view AND res_groups';


--
-- Name: ir_ui_view_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.ir_ui_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_view_id_seq OWNER TO prisma;

--
-- Name: ir_ui_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.ir_ui_view_id_seq OWNED BY public.ir_ui_view.id;


--
-- Name: mail_activity; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_activity (
    id integer NOT NULL,
    res_id integer NOT NULL,
    res_model_id integer NOT NULL,
    res_model character varying,
    res_name character varying,
    activity_type_id integer,
    summary character varying,
    note text,
    feedback text,
    date_deadline date NOT NULL,
    automated boolean,
    user_id integer NOT NULL,
    create_user_id integer,
    recommended_activity_type_id integer,
    previous_activity_type_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_activity OWNER TO prisma;

--
-- Name: TABLE mail_activity; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_activity IS 'Activity';


--
-- Name: COLUMN mail_activity.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_activity.res_model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.res_model_id IS 'Document Model';


--
-- Name: COLUMN mail_activity.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.res_model IS 'Related Document Model';


--
-- Name: COLUMN mail_activity.res_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.res_name IS 'Document Name';


--
-- Name: COLUMN mail_activity.activity_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.activity_type_id IS 'Activity';


--
-- Name: COLUMN mail_activity.summary; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.summary IS 'Summary';


--
-- Name: COLUMN mail_activity.note; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.note IS 'Note';


--
-- Name: COLUMN mail_activity.feedback; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.feedback IS 'Feedback';


--
-- Name: COLUMN mail_activity.date_deadline; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.date_deadline IS 'Due Date';


--
-- Name: COLUMN mail_activity.automated; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.automated IS 'Automated activity';


--
-- Name: COLUMN mail_activity.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.user_id IS 'Assigned to';


--
-- Name: COLUMN mail_activity.create_user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.create_user_id IS 'Creator';


--
-- Name: COLUMN mail_activity.recommended_activity_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.recommended_activity_type_id IS 'Recommended Activity Type';


--
-- Name: COLUMN mail_activity.previous_activity_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.previous_activity_type_id IS 'Previous Activity Type';


--
-- Name: COLUMN mail_activity.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.create_uid IS 'Created by';


--
-- Name: COLUMN mail_activity.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.create_date IS 'Created on';


--
-- Name: COLUMN mail_activity.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_activity.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity.write_date IS 'Last Updated on';


--
-- Name: mail_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_activity_id_seq OWNER TO prisma;

--
-- Name: mail_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_activity_id_seq OWNED BY public.mail_activity.id;


--
-- Name: mail_activity_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_activity_rel (
    activity_id integer NOT NULL,
    recommended_id integer NOT NULL
);


ALTER TABLE public.mail_activity_rel OWNER TO prisma;

--
-- Name: TABLE mail_activity_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_activity_rel IS 'RELATION BETWEEN mail_activity_type AND mail_activity_type';


--
-- Name: mail_activity_type; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_activity_type (
    id integer NOT NULL,
    name character varying NOT NULL,
    summary character varying,
    sequence integer,
    active boolean,
    delay_count integer,
    delay_unit character varying NOT NULL,
    delay_from character varying NOT NULL,
    icon character varying,
    decoration_type character varying,
    res_model_id integer,
    default_next_type_id integer,
    force_next boolean,
    category character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_activity_type OWNER TO prisma;

--
-- Name: TABLE mail_activity_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_activity_type IS 'Activity Type';


--
-- Name: COLUMN mail_activity_type.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.name IS 'Name';


--
-- Name: COLUMN mail_activity_type.summary; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.summary IS 'Summary';


--
-- Name: COLUMN mail_activity_type.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.sequence IS 'Sequence';


--
-- Name: COLUMN mail_activity_type.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.active IS 'Active';


--
-- Name: COLUMN mail_activity_type.delay_count; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.delay_count IS 'After';


--
-- Name: COLUMN mail_activity_type.delay_unit; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.delay_unit IS 'Delay units';


--
-- Name: COLUMN mail_activity_type.delay_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.delay_from IS 'Delay Type';


--
-- Name: COLUMN mail_activity_type.icon; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.icon IS 'Icon';


--
-- Name: COLUMN mail_activity_type.decoration_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.decoration_type IS 'Decoration Type';


--
-- Name: COLUMN mail_activity_type.res_model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.res_model_id IS 'Model';


--
-- Name: COLUMN mail_activity_type.default_next_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.default_next_type_id IS 'Default Next Activity';


--
-- Name: COLUMN mail_activity_type.force_next; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.force_next IS 'Auto Schedule Next Activity';


--
-- Name: COLUMN mail_activity_type.category; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.category IS 'Category';


--
-- Name: COLUMN mail_activity_type.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.create_uid IS 'Created by';


--
-- Name: COLUMN mail_activity_type.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.create_date IS 'Created on';


--
-- Name: COLUMN mail_activity_type.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_activity_type.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_activity_type.write_date IS 'Last Updated on';


--
-- Name: mail_activity_type_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_activity_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_activity_type_id_seq OWNER TO prisma;

--
-- Name: mail_activity_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_activity_type_id_seq OWNED BY public.mail_activity_type.id;


--
-- Name: mail_activity_type_mail_template_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_activity_type_mail_template_rel (
    mail_activity_type_id integer NOT NULL,
    mail_template_id integer NOT NULL
);


ALTER TABLE public.mail_activity_type_mail_template_rel OWNER TO prisma;

--
-- Name: TABLE mail_activity_type_mail_template_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_activity_type_mail_template_rel IS 'RELATION BETWEEN mail_activity_type AND mail_template';


--
-- Name: mail_alias; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_alias (
    id integer NOT NULL,
    alias_name character varying,
    alias_model_id integer NOT NULL,
    alias_user_id integer,
    alias_defaults text NOT NULL,
    alias_force_thread_id integer,
    alias_parent_model_id integer,
    alias_parent_thread_id integer,
    alias_contact character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_alias OWNER TO prisma;

--
-- Name: TABLE mail_alias; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_alias IS 'Email Aliases';


--
-- Name: COLUMN mail_alias.alias_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_name IS 'Alias Name';


--
-- Name: COLUMN mail_alias.alias_model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_model_id IS 'Aliased Model';


--
-- Name: COLUMN mail_alias.alias_user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_user_id IS 'Owner';


--
-- Name: COLUMN mail_alias.alias_defaults; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_defaults IS 'Default Values';


--
-- Name: COLUMN mail_alias.alias_force_thread_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_force_thread_id IS 'Record Thread ID';


--
-- Name: COLUMN mail_alias.alias_parent_model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_parent_model_id IS 'Parent Model';


--
-- Name: COLUMN mail_alias.alias_parent_thread_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_parent_thread_id IS 'Parent Record Thread ID';


--
-- Name: COLUMN mail_alias.alias_contact; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.alias_contact IS 'Alias Contact Security';


--
-- Name: COLUMN mail_alias.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.create_uid IS 'Created by';


--
-- Name: COLUMN mail_alias.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.create_date IS 'Created on';


--
-- Name: COLUMN mail_alias.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_alias.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_alias.write_date IS 'Last Updated on';


--
-- Name: mail_alias_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_alias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_alias_id_seq OWNER TO prisma;

--
-- Name: mail_alias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_alias_id_seq OWNED BY public.mail_alias.id;


--
-- Name: mail_blacklist; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_blacklist (
    id integer NOT NULL,
    message_main_attachment_id integer,
    email character varying NOT NULL,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_blacklist OWNER TO prisma;

--
-- Name: TABLE mail_blacklist; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_blacklist IS 'Mail Blacklist';


--
-- Name: COLUMN mail_blacklist.message_main_attachment_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.message_main_attachment_id IS 'Main Attachment';


--
-- Name: COLUMN mail_blacklist.email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.email IS 'Email Address';


--
-- Name: COLUMN mail_blacklist.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.active IS 'Active';


--
-- Name: COLUMN mail_blacklist.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.create_uid IS 'Created by';


--
-- Name: COLUMN mail_blacklist.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.create_date IS 'Created on';


--
-- Name: COLUMN mail_blacklist.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_blacklist.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_blacklist.write_date IS 'Last Updated on';


--
-- Name: mail_blacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_blacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_blacklist_id_seq OWNER TO prisma;

--
-- Name: mail_blacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_blacklist_id_seq OWNED BY public.mail_blacklist.id;


--
-- Name: mail_channel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_channel (
    id integer NOT NULL,
    alias_id integer NOT NULL,
    message_main_attachment_id integer,
    name character varying NOT NULL,
    channel_type character varying,
    description text,
    uuid character varying(50),
    email_send boolean,
    public character varying NOT NULL,
    group_public_id integer,
    moderation boolean,
    moderation_notify boolean,
    moderation_notify_msg text,
    moderation_guidelines boolean,
    moderation_guidelines_msg text,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_channel OWNER TO prisma;

--
-- Name: TABLE mail_channel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_channel IS 'Discussion Channel';


--
-- Name: COLUMN mail_channel.alias_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.alias_id IS 'Alias';


--
-- Name: COLUMN mail_channel.message_main_attachment_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.message_main_attachment_id IS 'Main Attachment';


--
-- Name: COLUMN mail_channel.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.name IS 'Name';


--
-- Name: COLUMN mail_channel.channel_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.channel_type IS 'Channel Type';


--
-- Name: COLUMN mail_channel.description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.description IS 'Description';


--
-- Name: COLUMN mail_channel.uuid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.uuid IS 'UUID';


--
-- Name: COLUMN mail_channel.email_send; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.email_send IS 'Send messages by email';


--
-- Name: COLUMN mail_channel.public; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.public IS 'Privacy';


--
-- Name: COLUMN mail_channel.group_public_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.group_public_id IS 'Authorized Group';


--
-- Name: COLUMN mail_channel.moderation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.moderation IS 'Moderate this channel';


--
-- Name: COLUMN mail_channel.moderation_notify; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.moderation_notify IS 'Automatic notification';


--
-- Name: COLUMN mail_channel.moderation_notify_msg; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.moderation_notify_msg IS 'Notification message';


--
-- Name: COLUMN mail_channel.moderation_guidelines; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.moderation_guidelines IS 'Send guidelines to new subscribers';


--
-- Name: COLUMN mail_channel.moderation_guidelines_msg; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.moderation_guidelines_msg IS 'Guidelines';


--
-- Name: COLUMN mail_channel.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.create_uid IS 'Created by';


--
-- Name: COLUMN mail_channel.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.create_date IS 'Created on';


--
-- Name: COLUMN mail_channel.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_channel.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel.write_date IS 'Last Updated on';


--
-- Name: mail_channel_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_channel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_channel_id_seq OWNER TO prisma;

--
-- Name: mail_channel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_channel_id_seq OWNED BY public.mail_channel.id;


--
-- Name: mail_channel_mail_wizard_invite_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_channel_mail_wizard_invite_rel (
    mail_wizard_invite_id integer NOT NULL,
    mail_channel_id integer NOT NULL
);


ALTER TABLE public.mail_channel_mail_wizard_invite_rel OWNER TO prisma;

--
-- Name: TABLE mail_channel_mail_wizard_invite_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_channel_mail_wizard_invite_rel IS 'RELATION BETWEEN mail_wizard_invite AND mail_channel';


--
-- Name: mail_channel_moderator_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_channel_moderator_rel (
    mail_channel_id integer NOT NULL,
    res_users_id integer NOT NULL
);


ALTER TABLE public.mail_channel_moderator_rel OWNER TO prisma;

--
-- Name: TABLE mail_channel_moderator_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_channel_moderator_rel IS 'RELATION BETWEEN mail_channel AND res_users';


--
-- Name: mail_channel_partner; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_channel_partner (
    id integer NOT NULL,
    partner_id integer,
    channel_id integer,
    seen_message_id integer,
    fold_state character varying,
    is_minimized boolean,
    is_pinned boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_channel_partner OWNER TO prisma;

--
-- Name: TABLE mail_channel_partner; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_channel_partner IS 'Listeners of a Channel';


--
-- Name: COLUMN mail_channel_partner.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.partner_id IS 'Recipient';


--
-- Name: COLUMN mail_channel_partner.channel_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.channel_id IS 'Channel';


--
-- Name: COLUMN mail_channel_partner.seen_message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.seen_message_id IS 'Last Seen';


--
-- Name: COLUMN mail_channel_partner.fold_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.fold_state IS 'Conversation Fold State';


--
-- Name: COLUMN mail_channel_partner.is_minimized; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.is_minimized IS 'Conversation is minimized';


--
-- Name: COLUMN mail_channel_partner.is_pinned; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.is_pinned IS 'Is pinned on the interface';


--
-- Name: COLUMN mail_channel_partner.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.create_uid IS 'Created by';


--
-- Name: COLUMN mail_channel_partner.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.create_date IS 'Created on';


--
-- Name: COLUMN mail_channel_partner.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_channel_partner.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_channel_partner.write_date IS 'Last Updated on';


--
-- Name: mail_channel_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_channel_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_channel_partner_id_seq OWNER TO prisma;

--
-- Name: mail_channel_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_channel_partner_id_seq OWNED BY public.mail_channel_partner.id;


--
-- Name: mail_channel_res_groups_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_channel_res_groups_rel (
    mail_channel_id integer NOT NULL,
    res_groups_id integer NOT NULL
);


ALTER TABLE public.mail_channel_res_groups_rel OWNER TO prisma;

--
-- Name: TABLE mail_channel_res_groups_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_channel_res_groups_rel IS 'RELATION BETWEEN mail_channel AND res_groups';


--
-- Name: mail_compose_message; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_compose_message (
    id integer NOT NULL,
    composition_mode character varying,
    use_active_domain boolean,
    active_domain text,
    is_log boolean,
    subject character varying,
    notify boolean,
    auto_delete boolean,
    auto_delete_message boolean,
    template_id integer,
    message_type character varying NOT NULL,
    subtype_id integer,
    date timestamp without time zone,
    body text,
    parent_id integer,
    model character varying,
    res_id integer,
    record_name character varying,
    mail_activity_type_id integer,
    email_from character varying,
    author_id integer,
    no_auto_thread boolean,
    message_id character varying,
    reply_to character varying,
    mail_server_id integer,
    moderation_status character varying,
    moderator_id integer,
    layout character varying,
    add_sign boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    website_published boolean
);


ALTER TABLE public.mail_compose_message OWNER TO prisma;

--
-- Name: TABLE mail_compose_message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_compose_message IS 'Email composition wizard';


--
-- Name: COLUMN mail_compose_message.composition_mode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.composition_mode IS 'Composition mode';


--
-- Name: COLUMN mail_compose_message.use_active_domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.use_active_domain IS 'Use active domain';


--
-- Name: COLUMN mail_compose_message.active_domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.active_domain IS 'Active domain';


--
-- Name: COLUMN mail_compose_message.is_log; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.is_log IS 'Log an Internal Note';


--
-- Name: COLUMN mail_compose_message.subject; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.subject IS 'Subject';


--
-- Name: COLUMN mail_compose_message.notify; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.notify IS 'Notify followers';


--
-- Name: COLUMN mail_compose_message.auto_delete; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.auto_delete IS 'Delete Emails';


--
-- Name: COLUMN mail_compose_message.auto_delete_message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.auto_delete_message IS 'Delete Message Copy';


--
-- Name: COLUMN mail_compose_message.template_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.template_id IS 'Use template';


--
-- Name: COLUMN mail_compose_message.message_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.message_type IS 'Type';


--
-- Name: COLUMN mail_compose_message.subtype_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.subtype_id IS 'Subtype';


--
-- Name: COLUMN mail_compose_message.date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.date IS 'Date';


--
-- Name: COLUMN mail_compose_message.body; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.body IS 'Contents';


--
-- Name: COLUMN mail_compose_message.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.parent_id IS 'Parent Message';


--
-- Name: COLUMN mail_compose_message.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.model IS 'Related Document Model';


--
-- Name: COLUMN mail_compose_message.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_compose_message.record_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.record_name IS 'Message Record Name';


--
-- Name: COLUMN mail_compose_message.mail_activity_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.mail_activity_type_id IS 'Mail Activity Type';


--
-- Name: COLUMN mail_compose_message.email_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.email_from IS 'From';


--
-- Name: COLUMN mail_compose_message.author_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.author_id IS 'Author';


--
-- Name: COLUMN mail_compose_message.no_auto_thread; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.no_auto_thread IS 'No threading for answers';


--
-- Name: COLUMN mail_compose_message.message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.message_id IS 'Message-Id';


--
-- Name: COLUMN mail_compose_message.reply_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.reply_to IS 'Reply-To';


--
-- Name: COLUMN mail_compose_message.mail_server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.mail_server_id IS 'Outgoing mail server';


--
-- Name: COLUMN mail_compose_message.moderation_status; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.moderation_status IS 'Moderation Status';


--
-- Name: COLUMN mail_compose_message.moderator_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.moderator_id IS 'Moderated By';


--
-- Name: COLUMN mail_compose_message.layout; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.layout IS 'Layout';


--
-- Name: COLUMN mail_compose_message.add_sign; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.add_sign IS 'Add Sign';


--
-- Name: COLUMN mail_compose_message.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.create_uid IS 'Created by';


--
-- Name: COLUMN mail_compose_message.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.create_date IS 'Created on';


--
-- Name: COLUMN mail_compose_message.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_compose_message.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_compose_message.website_published; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_compose_message.website_published IS 'Published';


--
-- Name: mail_compose_message_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_compose_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_compose_message_id_seq OWNER TO prisma;

--
-- Name: mail_compose_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_compose_message_id_seq OWNED BY public.mail_compose_message.id;


--
-- Name: mail_compose_message_ir_attachments_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_compose_message_ir_attachments_rel (
    wizard_id integer NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE public.mail_compose_message_ir_attachments_rel OWNER TO prisma;

--
-- Name: TABLE mail_compose_message_ir_attachments_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_compose_message_ir_attachments_rel IS 'RELATION BETWEEN mail_compose_message AND ir_attachment';


--
-- Name: mail_compose_message_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_compose_message_res_partner_rel (
    wizard_id integer NOT NULL,
    partner_id integer NOT NULL
);


ALTER TABLE public.mail_compose_message_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE mail_compose_message_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_compose_message_res_partner_rel IS 'RELATION BETWEEN mail_compose_message AND res_partner';


--
-- Name: mail_followers; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_followers (
    id integer NOT NULL,
    res_model character varying NOT NULL,
    res_id integer,
    partner_id integer,
    channel_id integer,
    CONSTRAINT mail_followers_partner_xor_channel CHECK (((partner_id IS NULL) <> (channel_id IS NULL)))
);


ALTER TABLE public.mail_followers OWNER TO prisma;

--
-- Name: TABLE mail_followers; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_followers IS 'Document Followers';


--
-- Name: COLUMN mail_followers.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_followers.res_model IS 'Related Document Model Name';


--
-- Name: COLUMN mail_followers.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_followers.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_followers.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_followers.partner_id IS 'Related Partner';


--
-- Name: COLUMN mail_followers.channel_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_followers.channel_id IS 'Listener';


--
-- Name: CONSTRAINT mail_followers_partner_xor_channel ON mail_followers; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT mail_followers_partner_xor_channel ON public.mail_followers IS 'CHECK((partner_id IS NULL) != (channel_id IS NULL))';


--
-- Name: mail_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_followers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_followers_id_seq OWNER TO prisma;

--
-- Name: mail_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_followers_id_seq OWNED BY public.mail_followers.id;


--
-- Name: mail_followers_mail_message_subtype_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_followers_mail_message_subtype_rel (
    mail_followers_id integer NOT NULL,
    mail_message_subtype_id integer NOT NULL
);


ALTER TABLE public.mail_followers_mail_message_subtype_rel OWNER TO prisma;

--
-- Name: TABLE mail_followers_mail_message_subtype_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_followers_mail_message_subtype_rel IS 'RELATION BETWEEN mail_followers AND mail_message_subtype';


--
-- Name: mail_mail; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_mail (
    id integer NOT NULL,
    mail_message_id integer NOT NULL,
    body_html text,
    "references" text,
    headers text,
    notification boolean,
    email_to text,
    email_cc character varying,
    state character varying,
    auto_delete boolean,
    failure_reason text,
    scheduled_date character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    fetchmail_server_id integer
);


ALTER TABLE public.mail_mail OWNER TO prisma;

--
-- Name: TABLE mail_mail; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_mail IS 'Outgoing Mails';


--
-- Name: COLUMN mail_mail.mail_message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.mail_message_id IS 'Message';


--
-- Name: COLUMN mail_mail.body_html; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.body_html IS 'Rich-text Contents';


--
-- Name: COLUMN mail_mail."references"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail."references" IS 'References';


--
-- Name: COLUMN mail_mail.headers; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.headers IS 'Headers';


--
-- Name: COLUMN mail_mail.notification; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.notification IS 'Is Notification';


--
-- Name: COLUMN mail_mail.email_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.email_to IS 'To';


--
-- Name: COLUMN mail_mail.email_cc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.email_cc IS 'Cc';


--
-- Name: COLUMN mail_mail.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.state IS 'Status';


--
-- Name: COLUMN mail_mail.auto_delete; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.auto_delete IS 'Auto Delete';


--
-- Name: COLUMN mail_mail.failure_reason; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.failure_reason IS 'Failure Reason';


--
-- Name: COLUMN mail_mail.scheduled_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.scheduled_date IS 'Scheduled Send Date';


--
-- Name: COLUMN mail_mail.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.create_uid IS 'Created by';


--
-- Name: COLUMN mail_mail.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.create_date IS 'Created on';


--
-- Name: COLUMN mail_mail.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_mail.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_mail.fetchmail_server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_mail.fetchmail_server_id IS 'Inbound Mail Server';


--
-- Name: mail_mail_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_mail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_mail_id_seq OWNER TO prisma;

--
-- Name: mail_mail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_mail_id_seq OWNED BY public.mail_mail.id;


--
-- Name: mail_mail_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_mail_res_partner_rel (
    mail_mail_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.mail_mail_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE mail_mail_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_mail_res_partner_rel IS 'RELATION BETWEEN mail_mail AND res_partner';


--
-- Name: mail_message; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message (
    id integer NOT NULL,
    subject character varying,
    date timestamp without time zone,
    body text,
    parent_id integer,
    model character varying,
    res_id integer,
    record_name character varying,
    message_type character varying NOT NULL,
    subtype_id integer,
    mail_activity_type_id integer,
    email_from character varying,
    author_id integer,
    no_auto_thread boolean,
    message_id character varying,
    reply_to character varying,
    mail_server_id integer,
    moderation_status character varying,
    moderator_id integer,
    layout character varying,
    add_sign boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    website_published boolean
);


ALTER TABLE public.mail_message OWNER TO prisma;

--
-- Name: TABLE mail_message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message IS 'Message';


--
-- Name: COLUMN mail_message.subject; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.subject IS 'Subject';


--
-- Name: COLUMN mail_message.date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.date IS 'Date';


--
-- Name: COLUMN mail_message.body; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.body IS 'Contents';


--
-- Name: COLUMN mail_message.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.parent_id IS 'Parent Message';


--
-- Name: COLUMN mail_message.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.model IS 'Related Document Model';


--
-- Name: COLUMN mail_message.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_message.record_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.record_name IS 'Message Record Name';


--
-- Name: COLUMN mail_message.message_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.message_type IS 'Type';


--
-- Name: COLUMN mail_message.subtype_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.subtype_id IS 'Subtype';


--
-- Name: COLUMN mail_message.mail_activity_type_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.mail_activity_type_id IS 'Mail Activity Type';


--
-- Name: COLUMN mail_message.email_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.email_from IS 'From';


--
-- Name: COLUMN mail_message.author_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.author_id IS 'Author';


--
-- Name: COLUMN mail_message.no_auto_thread; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.no_auto_thread IS 'No threading for answers';


--
-- Name: COLUMN mail_message.message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.message_id IS 'Message-Id';


--
-- Name: COLUMN mail_message.reply_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.reply_to IS 'Reply-To';


--
-- Name: COLUMN mail_message.mail_server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.mail_server_id IS 'Outgoing mail server';


--
-- Name: COLUMN mail_message.moderation_status; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.moderation_status IS 'Moderation Status';


--
-- Name: COLUMN mail_message.moderator_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.moderator_id IS 'Moderated By';


--
-- Name: COLUMN mail_message.layout; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.layout IS 'Layout';


--
-- Name: COLUMN mail_message.add_sign; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.add_sign IS 'Add Sign';


--
-- Name: COLUMN mail_message.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.create_uid IS 'Created by';


--
-- Name: COLUMN mail_message.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.create_date IS 'Created on';


--
-- Name: COLUMN mail_message.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_message.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.write_date IS 'Last Updated on';


--
-- Name: COLUMN mail_message.website_published; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message.website_published IS 'Published';


--
-- Name: mail_message_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_message_id_seq OWNER TO prisma;

--
-- Name: mail_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_message_id_seq OWNED BY public.mail_message.id;


--
-- Name: mail_message_mail_channel_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message_mail_channel_rel (
    mail_message_id integer NOT NULL,
    mail_channel_id integer NOT NULL
);


ALTER TABLE public.mail_message_mail_channel_rel OWNER TO prisma;

--
-- Name: TABLE mail_message_mail_channel_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message_mail_channel_rel IS 'RELATION BETWEEN mail_message AND mail_channel';


--
-- Name: mail_message_res_partner_needaction_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message_res_partner_needaction_rel (
    id integer NOT NULL,
    mail_message_id integer NOT NULL,
    res_partner_id integer NOT NULL,
    is_read boolean,
    is_email boolean,
    email_status character varying,
    mail_id integer,
    failure_type character varying,
    failure_reason text
);


ALTER TABLE public.mail_message_res_partner_needaction_rel OWNER TO prisma;

--
-- Name: TABLE mail_message_res_partner_needaction_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message_res_partner_needaction_rel IS 'Message Notifications';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.mail_message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.mail_message_id IS 'Message';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.res_partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.res_partner_id IS 'Needaction Recipient';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.is_read; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.is_read IS 'Is Read';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.is_email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.is_email IS 'Sent by Email';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.email_status; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.email_status IS 'Email Status';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.mail_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.mail_id IS 'Mail';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.failure_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.failure_type IS 'Failure type';


--
-- Name: COLUMN mail_message_res_partner_needaction_rel.failure_reason; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_res_partner_needaction_rel.failure_reason IS 'Failure reason';


--
-- Name: mail_message_res_partner_needaction_rel_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_message_res_partner_needaction_rel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_message_res_partner_needaction_rel_id_seq OWNER TO prisma;

--
-- Name: mail_message_res_partner_needaction_rel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_message_res_partner_needaction_rel_id_seq OWNED BY public.mail_message_res_partner_needaction_rel.id;


--
-- Name: mail_message_res_partner_needaction_rel_mail_resend_message_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message_res_partner_needaction_rel_mail_resend_message_rel (
    mail_resend_message_id integer NOT NULL,
    mail_message_res_partner_needaction_rel_id integer NOT NULL
);


ALTER TABLE public.mail_message_res_partner_needaction_rel_mail_resend_message_rel OWNER TO prisma;

--
-- Name: TABLE mail_message_res_partner_needaction_rel_mail_resend_message_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message_res_partner_needaction_rel_mail_resend_message_rel IS 'RELATION BETWEEN mail_resend_message AND mail_message_res_partner_needaction_rel';


--
-- Name: mail_message_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message_res_partner_rel (
    mail_message_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.mail_message_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE mail_message_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message_res_partner_rel IS 'RELATION BETWEEN mail_message AND res_partner';


--
-- Name: mail_message_res_partner_starred_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message_res_partner_starred_rel (
    mail_message_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.mail_message_res_partner_starred_rel OWNER TO prisma;

--
-- Name: TABLE mail_message_res_partner_starred_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message_res_partner_starred_rel IS 'RELATION BETWEEN mail_message AND res_partner';


--
-- Name: mail_message_subtype; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_message_subtype (
    id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    internal boolean,
    parent_id integer,
    relation_field character varying,
    res_model character varying,
    "default" boolean,
    sequence integer,
    hidden boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_message_subtype OWNER TO prisma;

--
-- Name: TABLE mail_message_subtype; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_message_subtype IS 'Message subtypes';


--
-- Name: COLUMN mail_message_subtype.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.name IS 'Message Type';


--
-- Name: COLUMN mail_message_subtype.description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.description IS 'Description';


--
-- Name: COLUMN mail_message_subtype.internal; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.internal IS 'Internal Only';


--
-- Name: COLUMN mail_message_subtype.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.parent_id IS 'Parent';


--
-- Name: COLUMN mail_message_subtype.relation_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.relation_field IS 'Relation field';


--
-- Name: COLUMN mail_message_subtype.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.res_model IS 'Model';


--
-- Name: COLUMN mail_message_subtype."default"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype."default" IS 'Default';


--
-- Name: COLUMN mail_message_subtype.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.sequence IS 'Sequence';


--
-- Name: COLUMN mail_message_subtype.hidden; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.hidden IS 'Hidden';


--
-- Name: COLUMN mail_message_subtype.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.create_uid IS 'Created by';


--
-- Name: COLUMN mail_message_subtype.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.create_date IS 'Created on';


--
-- Name: COLUMN mail_message_subtype.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_message_subtype.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_message_subtype.write_date IS 'Last Updated on';


--
-- Name: mail_message_subtype_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_message_subtype_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_message_subtype_id_seq OWNER TO prisma;

--
-- Name: mail_message_subtype_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_message_subtype_id_seq OWNED BY public.mail_message_subtype.id;


--
-- Name: mail_moderation; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_moderation (
    id integer NOT NULL,
    email character varying NOT NULL,
    status character varying NOT NULL,
    channel_id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_moderation OWNER TO prisma;

--
-- Name: TABLE mail_moderation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_moderation IS 'Channel black/white list';


--
-- Name: COLUMN mail_moderation.email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.email IS 'Email';


--
-- Name: COLUMN mail_moderation.status; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.status IS 'Status';


--
-- Name: COLUMN mail_moderation.channel_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.channel_id IS 'Channel';


--
-- Name: COLUMN mail_moderation.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.create_uid IS 'Created by';


--
-- Name: COLUMN mail_moderation.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.create_date IS 'Created on';


--
-- Name: COLUMN mail_moderation.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_moderation.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_moderation.write_date IS 'Last Updated on';


--
-- Name: mail_moderation_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_moderation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_moderation_id_seq OWNER TO prisma;

--
-- Name: mail_moderation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_moderation_id_seq OWNED BY public.mail_moderation.id;


--
-- Name: mail_resend_cancel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_resend_cancel (
    id integer NOT NULL,
    model character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_resend_cancel OWNER TO prisma;

--
-- Name: TABLE mail_resend_cancel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_resend_cancel IS 'Dismiss notification for resend by model';


--
-- Name: COLUMN mail_resend_cancel.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_cancel.model IS 'Model';


--
-- Name: COLUMN mail_resend_cancel.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_cancel.create_uid IS 'Created by';


--
-- Name: COLUMN mail_resend_cancel.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_cancel.create_date IS 'Created on';


--
-- Name: COLUMN mail_resend_cancel.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_cancel.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_resend_cancel.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_cancel.write_date IS 'Last Updated on';


--
-- Name: mail_resend_cancel_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_resend_cancel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_resend_cancel_id_seq OWNER TO prisma;

--
-- Name: mail_resend_cancel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_resend_cancel_id_seq OWNED BY public.mail_resend_cancel.id;


--
-- Name: mail_resend_message; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_resend_message (
    id integer NOT NULL,
    mail_message_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_resend_message OWNER TO prisma;

--
-- Name: TABLE mail_resend_message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_resend_message IS 'Email resend wizard';


--
-- Name: COLUMN mail_resend_message.mail_message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_message.mail_message_id IS 'Message';


--
-- Name: COLUMN mail_resend_message.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_message.create_uid IS 'Created by';


--
-- Name: COLUMN mail_resend_message.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_message.create_date IS 'Created on';


--
-- Name: COLUMN mail_resend_message.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_message.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_resend_message.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_message.write_date IS 'Last Updated on';


--
-- Name: mail_resend_message_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_resend_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_resend_message_id_seq OWNER TO prisma;

--
-- Name: mail_resend_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_resend_message_id_seq OWNED BY public.mail_resend_message.id;


--
-- Name: mail_resend_partner; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_resend_partner (
    id integer NOT NULL,
    partner_id integer NOT NULL,
    resend boolean,
    resend_wizard_id integer,
    message character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_resend_partner OWNER TO prisma;

--
-- Name: TABLE mail_resend_partner; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_resend_partner IS 'Partner with additionnal information for mail resend';


--
-- Name: COLUMN mail_resend_partner.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.partner_id IS 'Partner';


--
-- Name: COLUMN mail_resend_partner.resend; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.resend IS 'Send Again';


--
-- Name: COLUMN mail_resend_partner.resend_wizard_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.resend_wizard_id IS 'Resend wizard';


--
-- Name: COLUMN mail_resend_partner.message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.message IS 'Help message';


--
-- Name: COLUMN mail_resend_partner.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.create_uid IS 'Created by';


--
-- Name: COLUMN mail_resend_partner.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.create_date IS 'Created on';


--
-- Name: COLUMN mail_resend_partner.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_resend_partner.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_resend_partner.write_date IS 'Last Updated on';


--
-- Name: mail_resend_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_resend_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_resend_partner_id_seq OWNER TO prisma;

--
-- Name: mail_resend_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_resend_partner_id_seq OWNED BY public.mail_resend_partner.id;


--
-- Name: mail_shortcode; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_shortcode (
    id integer NOT NULL,
    source character varying NOT NULL,
    substitution text NOT NULL,
    description character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_shortcode OWNER TO prisma;

--
-- Name: TABLE mail_shortcode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_shortcode IS 'Canned Response / Shortcode';


--
-- Name: COLUMN mail_shortcode.source; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.source IS 'Shortcut';


--
-- Name: COLUMN mail_shortcode.substitution; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.substitution IS 'Substitution';


--
-- Name: COLUMN mail_shortcode.description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.description IS 'Description';


--
-- Name: COLUMN mail_shortcode.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.create_uid IS 'Created by';


--
-- Name: COLUMN mail_shortcode.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.create_date IS 'Created on';


--
-- Name: COLUMN mail_shortcode.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_shortcode.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_shortcode.write_date IS 'Last Updated on';


--
-- Name: mail_shortcode_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_shortcode_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_shortcode_id_seq OWNER TO prisma;

--
-- Name: mail_shortcode_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_shortcode_id_seq OWNED BY public.mail_shortcode.id;


--
-- Name: mail_template; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_template (
    id integer NOT NULL,
    name character varying,
    model_id integer,
    model character varying,
    lang character varying,
    user_signature boolean,
    subject character varying,
    email_from character varying,
    use_default_to boolean,
    email_to character varying,
    partner_to character varying,
    email_cc character varying,
    reply_to character varying,
    mail_server_id integer,
    body_html text,
    report_name character varying,
    report_template integer,
    ref_ir_act_window integer,
    auto_delete boolean,
    model_object_field integer,
    sub_object integer,
    sub_model_object_field integer,
    null_value character varying,
    copyvalue character varying,
    scheduled_date character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_template OWNER TO prisma;

--
-- Name: TABLE mail_template; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_template IS 'Email Templates';


--
-- Name: COLUMN mail_template.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.name IS 'Name';


--
-- Name: COLUMN mail_template.model_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.model_id IS 'Applies to';


--
-- Name: COLUMN mail_template.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.model IS 'Related Document Model';


--
-- Name: COLUMN mail_template.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.lang IS 'Language';


--
-- Name: COLUMN mail_template.user_signature; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.user_signature IS 'Add Signature';


--
-- Name: COLUMN mail_template.subject; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.subject IS 'Subject';


--
-- Name: COLUMN mail_template.email_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.email_from IS 'From';


--
-- Name: COLUMN mail_template.use_default_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.use_default_to IS 'Default recipients';


--
-- Name: COLUMN mail_template.email_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.email_to IS 'To (Emails)';


--
-- Name: COLUMN mail_template.partner_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.partner_to IS 'To (Partners)';


--
-- Name: COLUMN mail_template.email_cc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.email_cc IS 'Cc';


--
-- Name: COLUMN mail_template.reply_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.reply_to IS 'Reply-To';


--
-- Name: COLUMN mail_template.mail_server_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.mail_server_id IS 'Outgoing Mail Server';


--
-- Name: COLUMN mail_template.body_html; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.body_html IS 'Body';


--
-- Name: COLUMN mail_template.report_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.report_name IS 'Report Filename';


--
-- Name: COLUMN mail_template.report_template; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.report_template IS 'Optional report to print and attach';


--
-- Name: COLUMN mail_template.ref_ir_act_window; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.ref_ir_act_window IS 'Sidebar action';


--
-- Name: COLUMN mail_template.auto_delete; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.auto_delete IS 'Auto Delete';


--
-- Name: COLUMN mail_template.model_object_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.model_object_field IS 'Field';


--
-- Name: COLUMN mail_template.sub_object; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.sub_object IS 'Sub-model';


--
-- Name: COLUMN mail_template.sub_model_object_field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.sub_model_object_field IS 'Sub-field';


--
-- Name: COLUMN mail_template.null_value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.null_value IS 'Default Value';


--
-- Name: COLUMN mail_template.copyvalue; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.copyvalue IS 'Placeholder Expression';


--
-- Name: COLUMN mail_template.scheduled_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.scheduled_date IS 'Scheduled Date';


--
-- Name: COLUMN mail_template.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.create_uid IS 'Created by';


--
-- Name: COLUMN mail_template.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.create_date IS 'Created on';


--
-- Name: COLUMN mail_template.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_template.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_template.write_date IS 'Last Updated on';


--
-- Name: mail_template_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_template_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_template_id_seq OWNER TO prisma;

--
-- Name: mail_template_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_template_id_seq OWNED BY public.mail_template.id;


--
-- Name: mail_tracking_value; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_tracking_value (
    id integer NOT NULL,
    field character varying NOT NULL,
    field_desc character varying NOT NULL,
    field_type character varying,
    old_value_integer integer,
    old_value_float double precision,
    old_value_monetary double precision,
    old_value_char character varying,
    old_value_text text,
    old_value_datetime timestamp without time zone,
    new_value_integer integer,
    new_value_float double precision,
    new_value_monetary double precision,
    new_value_char character varying,
    new_value_text text,
    new_value_datetime timestamp without time zone,
    mail_message_id integer NOT NULL,
    track_sequence integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_tracking_value OWNER TO prisma;

--
-- Name: TABLE mail_tracking_value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_tracking_value IS 'Mail Tracking Value';


--
-- Name: COLUMN mail_tracking_value.field; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.field IS 'Changed Field';


--
-- Name: COLUMN mail_tracking_value.field_desc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.field_desc IS 'Field Description';


--
-- Name: COLUMN mail_tracking_value.field_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.field_type IS 'Field Type';


--
-- Name: COLUMN mail_tracking_value.old_value_integer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.old_value_integer IS 'Old Value Integer';


--
-- Name: COLUMN mail_tracking_value.old_value_float; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.old_value_float IS 'Old Value Float';


--
-- Name: COLUMN mail_tracking_value.old_value_monetary; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.old_value_monetary IS 'Old Value Monetary';


--
-- Name: COLUMN mail_tracking_value.old_value_char; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.old_value_char IS 'Old Value Char';


--
-- Name: COLUMN mail_tracking_value.old_value_text; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.old_value_text IS 'Old Value Text';


--
-- Name: COLUMN mail_tracking_value.old_value_datetime; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.old_value_datetime IS 'Old Value DateTime';


--
-- Name: COLUMN mail_tracking_value.new_value_integer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.new_value_integer IS 'New Value Integer';


--
-- Name: COLUMN mail_tracking_value.new_value_float; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.new_value_float IS 'New Value Float';


--
-- Name: COLUMN mail_tracking_value.new_value_monetary; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.new_value_monetary IS 'New Value Monetary';


--
-- Name: COLUMN mail_tracking_value.new_value_char; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.new_value_char IS 'New Value Char';


--
-- Name: COLUMN mail_tracking_value.new_value_text; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.new_value_text IS 'New Value Text';


--
-- Name: COLUMN mail_tracking_value.new_value_datetime; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.new_value_datetime IS 'New Value Datetime';


--
-- Name: COLUMN mail_tracking_value.mail_message_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.mail_message_id IS 'Message ID';


--
-- Name: COLUMN mail_tracking_value.track_sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.track_sequence IS 'Tracking field sequence';


--
-- Name: COLUMN mail_tracking_value.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.create_uid IS 'Created by';


--
-- Name: COLUMN mail_tracking_value.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.create_date IS 'Created on';


--
-- Name: COLUMN mail_tracking_value.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_tracking_value.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_tracking_value.write_date IS 'Last Updated on';


--
-- Name: mail_tracking_value_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_tracking_value_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_tracking_value_id_seq OWNER TO prisma;

--
-- Name: mail_tracking_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_tracking_value_id_seq OWNED BY public.mail_tracking_value.id;


--
-- Name: mail_wizard_invite; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_wizard_invite (
    id integer NOT NULL,
    res_model character varying NOT NULL,
    res_id integer,
    message text,
    send_mail boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.mail_wizard_invite OWNER TO prisma;

--
-- Name: TABLE mail_wizard_invite; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_wizard_invite IS 'Invite wizard';


--
-- Name: COLUMN mail_wizard_invite.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.res_model IS 'Related Document Model';


--
-- Name: COLUMN mail_wizard_invite.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.res_id IS 'Related Document ID';


--
-- Name: COLUMN mail_wizard_invite.message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.message IS 'Message';


--
-- Name: COLUMN mail_wizard_invite.send_mail; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.send_mail IS 'Send Email';


--
-- Name: COLUMN mail_wizard_invite.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.create_uid IS 'Created by';


--
-- Name: COLUMN mail_wizard_invite.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.create_date IS 'Created on';


--
-- Name: COLUMN mail_wizard_invite.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.write_uid IS 'Last Updated by';


--
-- Name: COLUMN mail_wizard_invite.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mail_wizard_invite.write_date IS 'Last Updated on';


--
-- Name: mail_wizard_invite_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mail_wizard_invite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_wizard_invite_id_seq OWNER TO prisma;

--
-- Name: mail_wizard_invite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mail_wizard_invite_id_seq OWNED BY public.mail_wizard_invite.id;


--
-- Name: mail_wizard_invite_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mail_wizard_invite_res_partner_rel (
    mail_wizard_invite_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.mail_wizard_invite_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE mail_wizard_invite_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mail_wizard_invite_res_partner_rel IS 'RELATION BETWEEN mail_wizard_invite AND res_partner';


--
-- Name: message_attachment_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.message_attachment_rel (
    message_id integer NOT NULL,
    attachment_id integer NOT NULL
);


ALTER TABLE public.message_attachment_rel OWNER TO prisma;

--
-- Name: TABLE message_attachment_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.message_attachment_rel IS 'RELATION BETWEEN mail_message AND ir_attachment';


--
-- Name: portal_share; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.portal_share (
    id integer NOT NULL,
    res_model character varying NOT NULL,
    res_id integer NOT NULL,
    note text,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.portal_share OWNER TO prisma;

--
-- Name: TABLE portal_share; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.portal_share IS 'Portal Sharing';


--
-- Name: COLUMN portal_share.res_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.res_model IS 'Related Document Model';


--
-- Name: COLUMN portal_share.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.res_id IS 'Related Document ID';


--
-- Name: COLUMN portal_share.note; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.note IS 'Note';


--
-- Name: COLUMN portal_share.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.create_uid IS 'Created by';


--
-- Name: COLUMN portal_share.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.create_date IS 'Created on';


--
-- Name: COLUMN portal_share.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.write_uid IS 'Last Updated by';


--
-- Name: COLUMN portal_share.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_share.write_date IS 'Last Updated on';


--
-- Name: portal_share_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.portal_share_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portal_share_id_seq OWNER TO prisma;

--
-- Name: portal_share_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.portal_share_id_seq OWNED BY public.portal_share.id;


--
-- Name: portal_share_res_partner_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.portal_share_res_partner_rel (
    portal_share_id integer NOT NULL,
    res_partner_id integer NOT NULL
);


ALTER TABLE public.portal_share_res_partner_rel OWNER TO prisma;

--
-- Name: TABLE portal_share_res_partner_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.portal_share_res_partner_rel IS 'RELATION BETWEEN portal_share AND res_partner';


--
-- Name: portal_wizard; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.portal_wizard (
    id integer NOT NULL,
    welcome_message text,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.portal_wizard OWNER TO prisma;

--
-- Name: TABLE portal_wizard; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.portal_wizard IS 'Grant Portal Access';


--
-- Name: COLUMN portal_wizard.welcome_message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard.welcome_message IS 'Invitation Message';


--
-- Name: COLUMN portal_wizard.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard.create_uid IS 'Created by';


--
-- Name: COLUMN portal_wizard.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard.create_date IS 'Created on';


--
-- Name: COLUMN portal_wizard.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard.write_uid IS 'Last Updated by';


--
-- Name: COLUMN portal_wizard.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard.write_date IS 'Last Updated on';


--
-- Name: portal_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.portal_wizard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portal_wizard_id_seq OWNER TO prisma;

--
-- Name: portal_wizard_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.portal_wizard_id_seq OWNED BY public.portal_wizard.id;


--
-- Name: portal_wizard_user; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.portal_wizard_user (
    id integer NOT NULL,
    wizard_id integer NOT NULL,
    partner_id integer NOT NULL,
    email character varying,
    in_portal boolean,
    user_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.portal_wizard_user OWNER TO prisma;

--
-- Name: TABLE portal_wizard_user; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.portal_wizard_user IS 'Portal User Config';


--
-- Name: COLUMN portal_wizard_user.wizard_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.wizard_id IS 'Wizard';


--
-- Name: COLUMN portal_wizard_user.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.partner_id IS 'Contact';


--
-- Name: COLUMN portal_wizard_user.email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.email IS 'Email';


--
-- Name: COLUMN portal_wizard_user.in_portal; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.in_portal IS 'In Portal';


--
-- Name: COLUMN portal_wizard_user.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.user_id IS 'Login User';


--
-- Name: COLUMN portal_wizard_user.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.create_uid IS 'Created by';


--
-- Name: COLUMN portal_wizard_user.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.create_date IS 'Created on';


--
-- Name: COLUMN portal_wizard_user.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.write_uid IS 'Last Updated by';


--
-- Name: COLUMN portal_wizard_user.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.portal_wizard_user.write_date IS 'Last Updated on';


--
-- Name: portal_wizard_user_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.portal_wizard_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.portal_wizard_user_id_seq OWNER TO prisma;

--
-- Name: portal_wizard_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.portal_wizard_user_id_seq OWNED BY public.portal_wizard_user.id;


--
-- Name: rel_modules_langexport; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.rel_modules_langexport (
    wiz_id integer NOT NULL,
    module_id integer NOT NULL
);


ALTER TABLE public.rel_modules_langexport OWNER TO prisma;

--
-- Name: TABLE rel_modules_langexport; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.rel_modules_langexport IS 'RELATION BETWEEN base_language_export AND ir_module_module';


--
-- Name: rel_server_actions; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.rel_server_actions (
    server_id integer NOT NULL,
    action_id integer NOT NULL
);


ALTER TABLE public.rel_server_actions OWNER TO prisma;

--
-- Name: TABLE rel_server_actions; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.rel_server_actions IS 'RELATION BETWEEN ir_act_server AND ir_act_server';


--
-- Name: report_layout; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.report_layout (
    id integer NOT NULL,
    view_id integer NOT NULL,
    image character varying,
    pdf character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.report_layout OWNER TO prisma;

--
-- Name: TABLE report_layout; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.report_layout IS 'Report Layout';


--
-- Name: COLUMN report_layout.view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.view_id IS 'Document Template';


--
-- Name: COLUMN report_layout.image; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.image IS 'Preview image src';


--
-- Name: COLUMN report_layout.pdf; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.pdf IS 'Preview pdf src';


--
-- Name: COLUMN report_layout.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.create_uid IS 'Created by';


--
-- Name: COLUMN report_layout.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.create_date IS 'Created on';


--
-- Name: COLUMN report_layout.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.write_uid IS 'Last Updated by';


--
-- Name: COLUMN report_layout.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_layout.write_date IS 'Last Updated on';


--
-- Name: report_layout_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.report_layout_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_layout_id_seq OWNER TO prisma;

--
-- Name: report_layout_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.report_layout_id_seq OWNED BY public.report_layout.id;


--
-- Name: report_paperformat; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.report_paperformat (
    id integer NOT NULL,
    name character varying NOT NULL,
    "default" boolean,
    format character varying,
    margin_top double precision,
    margin_bottom double precision,
    margin_left double precision,
    margin_right double precision,
    page_height integer,
    page_width integer,
    orientation character varying,
    header_line boolean,
    header_spacing integer,
    dpi integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.report_paperformat OWNER TO prisma;

--
-- Name: TABLE report_paperformat; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.report_paperformat IS 'Paper Format Config';


--
-- Name: COLUMN report_paperformat.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.name IS 'Name';


--
-- Name: COLUMN report_paperformat."default"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat."default" IS 'Default paper format ?';


--
-- Name: COLUMN report_paperformat.format; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.format IS 'Paper size';


--
-- Name: COLUMN report_paperformat.margin_top; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.margin_top IS 'Top Margin (mm)';


--
-- Name: COLUMN report_paperformat.margin_bottom; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.margin_bottom IS 'Bottom Margin (mm)';


--
-- Name: COLUMN report_paperformat.margin_left; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.margin_left IS 'Left Margin (mm)';


--
-- Name: COLUMN report_paperformat.margin_right; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.margin_right IS 'Right Margin (mm)';


--
-- Name: COLUMN report_paperformat.page_height; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.page_height IS 'Page height (mm)';


--
-- Name: COLUMN report_paperformat.page_width; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.page_width IS 'Page width (mm)';


--
-- Name: COLUMN report_paperformat.orientation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.orientation IS 'Orientation';


--
-- Name: COLUMN report_paperformat.header_line; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.header_line IS 'Display a header line';


--
-- Name: COLUMN report_paperformat.header_spacing; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.header_spacing IS 'Header spacing';


--
-- Name: COLUMN report_paperformat.dpi; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.dpi IS 'Output DPI';


--
-- Name: COLUMN report_paperformat.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.create_uid IS 'Created by';


--
-- Name: COLUMN report_paperformat.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.create_date IS 'Created on';


--
-- Name: COLUMN report_paperformat.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.write_uid IS 'Last Updated by';


--
-- Name: COLUMN report_paperformat.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.report_paperformat.write_date IS 'Last Updated on';


--
-- Name: report_paperformat_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.report_paperformat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_paperformat_id_seq OWNER TO prisma;

--
-- Name: report_paperformat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.report_paperformat_id_seq OWNED BY public.report_paperformat.id;


--
-- Name: res_bank; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_bank (
    id integer NOT NULL,
    name character varying NOT NULL,
    street character varying,
    street2 character varying,
    zip character varying,
    city character varying,
    state integer,
    country integer,
    email character varying,
    phone character varying,
    active boolean,
    bic character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_bank OWNER TO prisma;

--
-- Name: TABLE res_bank; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_bank IS 'Bank';


--
-- Name: COLUMN res_bank.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.name IS 'Name';


--
-- Name: COLUMN res_bank.street; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.street IS 'Street';


--
-- Name: COLUMN res_bank.street2; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.street2 IS 'Street2';


--
-- Name: COLUMN res_bank.zip; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.zip IS 'Zip';


--
-- Name: COLUMN res_bank.city; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.city IS 'City';


--
-- Name: COLUMN res_bank.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.state IS 'Fed. State';


--
-- Name: COLUMN res_bank.country; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.country IS 'Country';


--
-- Name: COLUMN res_bank.email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.email IS 'Email';


--
-- Name: COLUMN res_bank.phone; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.phone IS 'Phone';


--
-- Name: COLUMN res_bank.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.active IS 'Active';


--
-- Name: COLUMN res_bank.bic; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.bic IS 'Bank Identifier Code';


--
-- Name: COLUMN res_bank.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.create_uid IS 'Created by';


--
-- Name: COLUMN res_bank.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.create_date IS 'Created on';


--
-- Name: COLUMN res_bank.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_bank.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_bank.write_date IS 'Last Updated on';


--
-- Name: res_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_bank_id_seq OWNER TO prisma;

--
-- Name: res_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_bank_id_seq OWNED BY public.res_bank.id;


--
-- Name: res_company; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_company (
    id integer NOT NULL,
    name character varying NOT NULL,
    partner_id integer NOT NULL,
    currency_id integer NOT NULL,
    sequence integer,
    create_date timestamp without time zone,
    parent_id integer,
    report_header text,
    report_footer text,
    logo_web bytea,
    account_no character varying,
    email character varying,
    phone character varying,
    company_registry character varying,
    paperformat_id integer,
    external_report_layout_id integer,
    base_onboarding_company_state character varying,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone,
    social_twitter character varying,
    social_facebook character varying,
    social_github character varying,
    social_linkedin character varying,
    social_youtube character varying,
    social_googleplus character varying,
    social_instagram character varying,
    partner_gid integer,
    snailmail_color boolean,
    snailmail_duplex boolean
);


ALTER TABLE public.res_company OWNER TO prisma;

--
-- Name: COLUMN res_company.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.parent_id IS 'Parent Company';


--
-- Name: COLUMN res_company.report_header; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.report_header IS 'Company Tagline';


--
-- Name: COLUMN res_company.report_footer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.report_footer IS 'Report Footer';


--
-- Name: COLUMN res_company.logo_web; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.logo_web IS 'Logo Web';


--
-- Name: COLUMN res_company.account_no; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.account_no IS 'Account No.';


--
-- Name: COLUMN res_company.email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.email IS 'Email';


--
-- Name: COLUMN res_company.phone; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.phone IS 'Phone';


--
-- Name: COLUMN res_company.company_registry; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.company_registry IS 'Company Registry';


--
-- Name: COLUMN res_company.paperformat_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.paperformat_id IS 'Paper format';


--
-- Name: COLUMN res_company.external_report_layout_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.external_report_layout_id IS 'Document Template';


--
-- Name: COLUMN res_company.base_onboarding_company_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.base_onboarding_company_state IS 'State of the onboarding company step';


--
-- Name: COLUMN res_company.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.create_uid IS 'Created by';


--
-- Name: COLUMN res_company.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_company.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_company.social_twitter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_twitter IS 'Twitter Account';


--
-- Name: COLUMN res_company.social_facebook; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_facebook IS 'Facebook Account';


--
-- Name: COLUMN res_company.social_github; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_github IS 'GitHub Account';


--
-- Name: COLUMN res_company.social_linkedin; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_linkedin IS 'LinkedIn Account';


--
-- Name: COLUMN res_company.social_youtube; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_youtube IS 'Youtube Account';


--
-- Name: COLUMN res_company.social_googleplus; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_googleplus IS 'Google+ Account';


--
-- Name: COLUMN res_company.social_instagram; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.social_instagram IS 'Instagram Account';


--
-- Name: COLUMN res_company.partner_gid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.partner_gid IS 'Company database ID';


--
-- Name: COLUMN res_company.snailmail_color; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.snailmail_color IS 'Color';


--
-- Name: COLUMN res_company.snailmail_duplex; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_company.snailmail_duplex IS 'Both sides';


--
-- Name: res_company_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_company_id_seq OWNER TO prisma;

--
-- Name: res_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_company_id_seq OWNED BY public.res_company.id;


--
-- Name: res_company_users_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_company_users_rel (
    cid integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.res_company_users_rel OWNER TO prisma;

--
-- Name: TABLE res_company_users_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_company_users_rel IS 'RELATION BETWEEN res_company AND res_users';


--
-- Name: res_config; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_config (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_config OWNER TO prisma;

--
-- Name: TABLE res_config; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_config IS 'Config';


--
-- Name: COLUMN res_config.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config.create_uid IS 'Created by';


--
-- Name: COLUMN res_config.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config.create_date IS 'Created on';


--
-- Name: COLUMN res_config.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_config.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config.write_date IS 'Last Updated on';


--
-- Name: res_config_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_config_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_config_id_seq OWNER TO prisma;

--
-- Name: res_config_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_config_id_seq OWNED BY public.res_config.id;


--
-- Name: res_config_installer; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_config_installer (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_config_installer OWNER TO prisma;

--
-- Name: TABLE res_config_installer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_config_installer IS 'Config Installer';


--
-- Name: COLUMN res_config_installer.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_installer.create_uid IS 'Created by';


--
-- Name: COLUMN res_config_installer.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_installer.create_date IS 'Created on';


--
-- Name: COLUMN res_config_installer.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_installer.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_config_installer.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_installer.write_date IS 'Last Updated on';


--
-- Name: res_config_installer_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_config_installer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_config_installer_id_seq OWNER TO prisma;

--
-- Name: res_config_installer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_config_installer_id_seq OWNED BY public.res_config_installer.id;


--
-- Name: res_config_settings; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_config_settings (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    group_multi_company boolean,
    company_id integer NOT NULL,
    user_default_rights boolean,
    external_email_server_default boolean,
    module_base_import boolean,
    module_google_calendar boolean,
    module_google_drive boolean,
    module_google_spreadsheet boolean,
    module_auth_oauth boolean,
    module_auth_ldap boolean,
    module_base_gengo boolean,
    module_inter_company_rules boolean,
    module_pad boolean,
    module_voip boolean,
    module_web_unsplash boolean,
    module_partner_autocomplete boolean,
    company_share_partner boolean,
    group_multi_currency boolean,
    show_effect boolean,
    fail_counter integer,
    alias_domain character varying,
    unsplash_access_key character varying,
    auth_signup_reset_password boolean,
    auth_signup_uninvited character varying,
    auth_signup_template_user_id integer,
    website_id integer,
    module_website_version boolean,
    module_website_links boolean,
    group_multi_website boolean
);


ALTER TABLE public.res_config_settings OWNER TO prisma;

--
-- Name: TABLE res_config_settings; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_config_settings IS 'Config Settings';


--
-- Name: COLUMN res_config_settings.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.create_uid IS 'Created by';


--
-- Name: COLUMN res_config_settings.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.create_date IS 'Created on';


--
-- Name: COLUMN res_config_settings.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_config_settings.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_config_settings.group_multi_company; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.group_multi_company IS 'Manage multiple companies';


--
-- Name: COLUMN res_config_settings.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.company_id IS 'Company';


--
-- Name: COLUMN res_config_settings.user_default_rights; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.user_default_rights IS 'Default Access Rights';


--
-- Name: COLUMN res_config_settings.external_email_server_default; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.external_email_server_default IS 'External Email Servers';


--
-- Name: COLUMN res_config_settings.module_base_import; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_base_import IS 'Allow users to import data from CSV/XLS/XLSX/ODS files';


--
-- Name: COLUMN res_config_settings.module_google_calendar; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_google_calendar IS 'Allow the users to synchronize their calendar  with Google Calendar';


--
-- Name: COLUMN res_config_settings.module_google_drive; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_google_drive IS 'Attach Google documents to any record';


--
-- Name: COLUMN res_config_settings.module_google_spreadsheet; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_google_spreadsheet IS 'Google Spreadsheet';


--
-- Name: COLUMN res_config_settings.module_auth_oauth; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_auth_oauth IS 'Use external authentication providers (OAuth)';


--
-- Name: COLUMN res_config_settings.module_auth_ldap; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_auth_ldap IS 'LDAP Authentication';


--
-- Name: COLUMN res_config_settings.module_base_gengo; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_base_gengo IS 'Translate Your Website with Gengo';


--
-- Name: COLUMN res_config_settings.module_inter_company_rules; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_inter_company_rules IS 'Manage Inter Company';


--
-- Name: COLUMN res_config_settings.module_pad; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_pad IS 'Collaborative Pads';


--
-- Name: COLUMN res_config_settings.module_voip; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_voip IS 'Asterisk (VoIP)';


--
-- Name: COLUMN res_config_settings.module_web_unsplash; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_web_unsplash IS 'Unsplash Image Library';


--
-- Name: COLUMN res_config_settings.module_partner_autocomplete; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_partner_autocomplete IS 'Auto-populate company data';


--
-- Name: COLUMN res_config_settings.company_share_partner; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.company_share_partner IS 'Share partners to all companies';


--
-- Name: COLUMN res_config_settings.group_multi_currency; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.group_multi_currency IS 'Multi-Currencies';


--
-- Name: COLUMN res_config_settings.show_effect; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.show_effect IS 'Show Effect';


--
-- Name: COLUMN res_config_settings.fail_counter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.fail_counter IS 'Fail Mail';


--
-- Name: COLUMN res_config_settings.alias_domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.alias_domain IS 'Alias Domain';


--
-- Name: COLUMN res_config_settings.unsplash_access_key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.unsplash_access_key IS 'Access Key';


--
-- Name: COLUMN res_config_settings.auth_signup_reset_password; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.auth_signup_reset_password IS 'Enable password reset from Login page';


--
-- Name: COLUMN res_config_settings.auth_signup_uninvited; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.auth_signup_uninvited IS 'Customer Account';


--
-- Name: COLUMN res_config_settings.auth_signup_template_user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.auth_signup_template_user_id IS 'Template user for new users created through signup';


--
-- Name: COLUMN res_config_settings.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.website_id IS 'website';


--
-- Name: COLUMN res_config_settings.module_website_version; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_website_version IS 'A/B Testing';


--
-- Name: COLUMN res_config_settings.module_website_links; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.module_website_links IS 'Link Trackers';


--
-- Name: COLUMN res_config_settings.group_multi_website; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_config_settings.group_multi_website IS 'Multi-website';


--
-- Name: res_config_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_config_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_config_settings_id_seq OWNER TO prisma;

--
-- Name: res_config_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_config_settings_id_seq OWNED BY public.res_config_settings.id;


--
-- Name: res_country; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_country (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying(2),
    address_format text,
    address_view_id integer,
    currency_id integer,
    phone_code integer,
    name_position character varying,
    vat_label character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_country OWNER TO prisma;

--
-- Name: TABLE res_country; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_country IS 'Country';


--
-- Name: COLUMN res_country.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.name IS 'Country Name';


--
-- Name: COLUMN res_country.code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.code IS 'Country Code';


--
-- Name: COLUMN res_country.address_format; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.address_format IS 'Layout in Reports';


--
-- Name: COLUMN res_country.address_view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.address_view_id IS 'Input View';


--
-- Name: COLUMN res_country.currency_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.currency_id IS 'Currency';


--
-- Name: COLUMN res_country.phone_code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.phone_code IS 'Country Calling Code';


--
-- Name: COLUMN res_country.name_position; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.name_position IS 'Customer Name Position';


--
-- Name: COLUMN res_country.vat_label; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.vat_label IS 'Vat Label';


--
-- Name: COLUMN res_country.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.create_uid IS 'Created by';


--
-- Name: COLUMN res_country.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.create_date IS 'Created on';


--
-- Name: COLUMN res_country.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_country.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country.write_date IS 'Last Updated on';


--
-- Name: res_country_group; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_country_group (
    id integer NOT NULL,
    name character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_country_group OWNER TO prisma;

--
-- Name: TABLE res_country_group; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_country_group IS 'Country Group';


--
-- Name: COLUMN res_country_group.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_group.name IS 'Name';


--
-- Name: COLUMN res_country_group.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_group.create_uid IS 'Created by';


--
-- Name: COLUMN res_country_group.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_group.create_date IS 'Created on';


--
-- Name: COLUMN res_country_group.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_group.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_country_group.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_group.write_date IS 'Last Updated on';


--
-- Name: res_country_group_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_country_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_country_group_id_seq OWNER TO prisma;

--
-- Name: res_country_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_country_group_id_seq OWNED BY public.res_country_group.id;


--
-- Name: res_country_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_country_id_seq OWNER TO prisma;

--
-- Name: res_country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_country_id_seq OWNED BY public.res_country.id;


--
-- Name: res_country_res_country_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_country_res_country_group_rel (
    res_country_id integer NOT NULL,
    res_country_group_id integer NOT NULL
);


ALTER TABLE public.res_country_res_country_group_rel OWNER TO prisma;

--
-- Name: TABLE res_country_res_country_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_country_res_country_group_rel IS 'RELATION BETWEEN res_country AND res_country_group';


--
-- Name: res_country_state; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_country_state (
    id integer NOT NULL,
    country_id integer NOT NULL,
    name character varying NOT NULL,
    code character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_country_state OWNER TO prisma;

--
-- Name: TABLE res_country_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_country_state IS 'Country state';


--
-- Name: COLUMN res_country_state.country_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.country_id IS 'Country';


--
-- Name: COLUMN res_country_state.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.name IS 'State Name';


--
-- Name: COLUMN res_country_state.code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.code IS 'State Code';


--
-- Name: COLUMN res_country_state.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.create_uid IS 'Created by';


--
-- Name: COLUMN res_country_state.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.create_date IS 'Created on';


--
-- Name: COLUMN res_country_state.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_country_state.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_country_state.write_date IS 'Last Updated on';


--
-- Name: res_country_state_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_country_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_country_state_id_seq OWNER TO prisma;

--
-- Name: res_country_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_country_state_id_seq OWNED BY public.res_country_state.id;


--
-- Name: res_currency; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_currency (
    id integer NOT NULL,
    name character varying NOT NULL,
    symbol character varying NOT NULL,
    rounding numeric,
    decimal_places integer,
    active boolean,
    "position" character varying,
    currency_unit_label character varying,
    currency_subunit_label character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    CONSTRAINT res_currency_rounding_gt_zero CHECK ((rounding > (0)::numeric))
);


ALTER TABLE public.res_currency OWNER TO prisma;

--
-- Name: COLUMN res_currency.rounding; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.rounding IS 'Rounding Factor';


--
-- Name: COLUMN res_currency.decimal_places; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.decimal_places IS 'Decimal Places';


--
-- Name: COLUMN res_currency.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.active IS 'Active';


--
-- Name: COLUMN res_currency."position"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency."position" IS 'Symbol Position';


--
-- Name: COLUMN res_currency.currency_unit_label; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.currency_unit_label IS 'Currency Unit';


--
-- Name: COLUMN res_currency.currency_subunit_label; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.currency_subunit_label IS 'Currency Subunit';


--
-- Name: COLUMN res_currency.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.create_uid IS 'Created by';


--
-- Name: COLUMN res_currency.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.create_date IS 'Created on';


--
-- Name: COLUMN res_currency.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_currency.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency.write_date IS 'Last Updated on';


--
-- Name: CONSTRAINT res_currency_rounding_gt_zero ON res_currency; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_currency_rounding_gt_zero ON public.res_currency IS 'CHECK (rounding>0)';


--
-- Name: res_currency_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_currency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_currency_id_seq OWNER TO prisma;

--
-- Name: res_currency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_currency_id_seq OWNED BY public.res_currency.id;


--
-- Name: res_currency_rate; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_currency_rate (
    id integer NOT NULL,
    name date NOT NULL,
    rate numeric,
    currency_id integer,
    company_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    CONSTRAINT res_currency_rate_currency_rate_check CHECK ((rate > (0)::numeric))
);


ALTER TABLE public.res_currency_rate OWNER TO prisma;

--
-- Name: TABLE res_currency_rate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_currency_rate IS 'Currency Rate';


--
-- Name: COLUMN res_currency_rate.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.name IS 'Date';


--
-- Name: COLUMN res_currency_rate.rate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.rate IS 'Rate';


--
-- Name: COLUMN res_currency_rate.currency_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.currency_id IS 'Currency';


--
-- Name: COLUMN res_currency_rate.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.company_id IS 'Company';


--
-- Name: COLUMN res_currency_rate.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.create_uid IS 'Created by';


--
-- Name: COLUMN res_currency_rate.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.create_date IS 'Created on';


--
-- Name: COLUMN res_currency_rate.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_currency_rate.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_currency_rate.write_date IS 'Last Updated on';


--
-- Name: CONSTRAINT res_currency_rate_currency_rate_check ON res_currency_rate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_currency_rate_currency_rate_check ON public.res_currency_rate IS 'CHECK (rate>0)';


--
-- Name: res_currency_rate_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_currency_rate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_currency_rate_id_seq OWNER TO prisma;

--
-- Name: res_currency_rate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_currency_rate_id_seq OWNED BY public.res_currency_rate.id;


--
-- Name: res_groups; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_groups (
    id integer NOT NULL,
    name character varying NOT NULL,
    comment text,
    category_id integer,
    color integer,
    share boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_groups OWNER TO prisma;

--
-- Name: COLUMN res_groups.comment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.comment IS 'Comment';


--
-- Name: COLUMN res_groups.category_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.category_id IS 'Application';


--
-- Name: COLUMN res_groups.color; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.color IS 'Color Index';


--
-- Name: COLUMN res_groups.share; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.share IS 'Share Group';


--
-- Name: COLUMN res_groups.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.create_uid IS 'Created by';


--
-- Name: COLUMN res_groups.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.create_date IS 'Created on';


--
-- Name: COLUMN res_groups.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_groups.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_groups.write_date IS 'Last Updated on';


--
-- Name: res_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_groups_id_seq OWNER TO prisma;

--
-- Name: res_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_groups_id_seq OWNED BY public.res_groups.id;


--
-- Name: res_groups_implied_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_groups_implied_rel (
    gid integer NOT NULL,
    hid integer NOT NULL
);


ALTER TABLE public.res_groups_implied_rel OWNER TO prisma;

--
-- Name: TABLE res_groups_implied_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_groups_implied_rel IS 'RELATION BETWEEN res_groups AND res_groups';


--
-- Name: res_groups_report_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_groups_report_rel (
    uid integer NOT NULL,
    gid integer NOT NULL
);


ALTER TABLE public.res_groups_report_rel OWNER TO prisma;

--
-- Name: TABLE res_groups_report_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_groups_report_rel IS 'RELATION BETWEEN ir_act_report_xml AND res_groups';


--
-- Name: res_groups_users_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_groups_users_rel (
    gid integer NOT NULL,
    uid integer NOT NULL
);


ALTER TABLE public.res_groups_users_rel OWNER TO prisma;

--
-- Name: TABLE res_groups_users_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_groups_users_rel IS 'RELATION BETWEEN res_groups AND res_users';


--
-- Name: res_lang; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_lang (
    id integer NOT NULL,
    name character varying NOT NULL,
    code character varying NOT NULL,
    iso_code character varying,
    translatable boolean,
    active boolean,
    direction character varying NOT NULL,
    date_format character varying NOT NULL,
    time_format character varying NOT NULL,
    week_start integer NOT NULL,
    "grouping" character varying NOT NULL,
    decimal_point character varying NOT NULL,
    thousands_sep character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_lang OWNER TO prisma;

--
-- Name: TABLE res_lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_lang IS 'Languages';


--
-- Name: COLUMN res_lang.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.name IS 'Name';


--
-- Name: COLUMN res_lang.code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.code IS 'Locale Code';


--
-- Name: COLUMN res_lang.iso_code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.iso_code IS 'ISO code';


--
-- Name: COLUMN res_lang.translatable; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.translatable IS 'Translatable';


--
-- Name: COLUMN res_lang.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.active IS 'Active';


--
-- Name: COLUMN res_lang.direction; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.direction IS 'Direction';


--
-- Name: COLUMN res_lang.date_format; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.date_format IS 'Date Format';


--
-- Name: COLUMN res_lang.time_format; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.time_format IS 'Time Format';


--
-- Name: COLUMN res_lang.week_start; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.week_start IS 'First Day of Week';


--
-- Name: COLUMN res_lang."grouping"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang."grouping" IS 'Separator Format';


--
-- Name: COLUMN res_lang.decimal_point; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.decimal_point IS 'Decimal Separator';


--
-- Name: COLUMN res_lang.thousands_sep; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.thousands_sep IS 'Thousands Separator';


--
-- Name: COLUMN res_lang.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.create_uid IS 'Created by';


--
-- Name: COLUMN res_lang.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.create_date IS 'Created on';


--
-- Name: COLUMN res_lang.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_lang.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_lang.write_date IS 'Last Updated on';


--
-- Name: res_lang_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_lang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_lang_id_seq OWNER TO prisma;

--
-- Name: res_lang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_lang_id_seq OWNED BY public.res_lang.id;


--
-- Name: res_partner; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner (
    id integer NOT NULL,
    name character varying,
    company_id integer,
    create_date timestamp without time zone,
    display_name character varying,
    date date,
    title integer,
    parent_id integer,
    ref character varying,
    lang character varying,
    tz character varying,
    user_id integer,
    vat character varying,
    website character varying,
    comment text,
    credit_limit double precision,
    barcode character varying,
    active boolean,
    customer boolean,
    supplier boolean,
    employee boolean,
    function character varying,
    type character varying,
    street character varying,
    street2 character varying,
    zip character varying,
    city character varying,
    state_id integer,
    country_id integer,
    email character varying,
    phone character varying,
    mobile character varying,
    is_company boolean,
    industry_id integer,
    color integer,
    partner_share boolean,
    commercial_partner_id integer,
    commercial_company_name character varying,
    company_name character varying,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone,
    message_main_attachment_id integer,
    message_bounce integer,
    signup_token character varying,
    signup_type character varying,
    signup_expiration timestamp without time zone,
    partner_gid integer,
    additional_info character varying,
    website_id integer,
    CONSTRAINT res_partner_check_name CHECK (((((type)::text = 'contact'::text) AND (name IS NOT NULL)) OR ((type)::text <> 'contact'::text)))
);


ALTER TABLE public.res_partner OWNER TO prisma;

--
-- Name: COLUMN res_partner.display_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.display_name IS 'Display Name';


--
-- Name: COLUMN res_partner.date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.date IS 'Date';


--
-- Name: COLUMN res_partner.title; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.title IS 'Title';


--
-- Name: COLUMN res_partner.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.parent_id IS 'Related Company';


--
-- Name: COLUMN res_partner.ref; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.ref IS 'Internal Reference';


--
-- Name: COLUMN res_partner.lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.lang IS 'Language';


--
-- Name: COLUMN res_partner.tz; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.tz IS 'Timezone';


--
-- Name: COLUMN res_partner.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.user_id IS 'Salesperson';


--
-- Name: COLUMN res_partner.vat; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.vat IS 'Tax ID';


--
-- Name: COLUMN res_partner.website; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.website IS 'Website';


--
-- Name: COLUMN res_partner.comment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.comment IS 'Notes';


--
-- Name: COLUMN res_partner.credit_limit; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.credit_limit IS 'Credit Limit';


--
-- Name: COLUMN res_partner.barcode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.barcode IS 'Barcode';


--
-- Name: COLUMN res_partner.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.active IS 'Active';


--
-- Name: COLUMN res_partner.customer; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.customer IS 'Is a Customer';


--
-- Name: COLUMN res_partner.supplier; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.supplier IS 'Is a Vendor';


--
-- Name: COLUMN res_partner.employee; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.employee IS 'Employee';


--
-- Name: COLUMN res_partner.function; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.function IS 'Job Position';


--
-- Name: COLUMN res_partner.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.type IS 'Address Type';


--
-- Name: COLUMN res_partner.street; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.street IS 'Street';


--
-- Name: COLUMN res_partner.street2; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.street2 IS 'Street2';


--
-- Name: COLUMN res_partner.zip; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.zip IS 'Zip';


--
-- Name: COLUMN res_partner.city; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.city IS 'City';


--
-- Name: COLUMN res_partner.state_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.state_id IS 'State';


--
-- Name: COLUMN res_partner.country_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.country_id IS 'Country';


--
-- Name: COLUMN res_partner.email; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.email IS 'Email';


--
-- Name: COLUMN res_partner.phone; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.phone IS 'Phone';


--
-- Name: COLUMN res_partner.mobile; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.mobile IS 'Mobile';


--
-- Name: COLUMN res_partner.is_company; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.is_company IS 'Is a Company';


--
-- Name: COLUMN res_partner.industry_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.industry_id IS 'Industry';


--
-- Name: COLUMN res_partner.color; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.color IS 'Color Index';


--
-- Name: COLUMN res_partner.partner_share; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.partner_share IS 'Share Partner';


--
-- Name: COLUMN res_partner.commercial_partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.commercial_partner_id IS 'Commercial Entity';


--
-- Name: COLUMN res_partner.commercial_company_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.commercial_company_name IS 'Company Name Entity';


--
-- Name: COLUMN res_partner.company_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.company_name IS 'Company Name';


--
-- Name: COLUMN res_partner.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_partner.message_main_attachment_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.message_main_attachment_id IS 'Main Attachment';


--
-- Name: COLUMN res_partner.message_bounce; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.message_bounce IS 'Bounce';


--
-- Name: COLUMN res_partner.signup_token; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.signup_token IS 'Signup Token';


--
-- Name: COLUMN res_partner.signup_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.signup_type IS 'Signup Token Type';


--
-- Name: COLUMN res_partner.signup_expiration; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.signup_expiration IS 'Signup Expiration';


--
-- Name: COLUMN res_partner.partner_gid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.partner_gid IS 'Company database ID';


--
-- Name: COLUMN res_partner.additional_info; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.additional_info IS 'Additional info';


--
-- Name: COLUMN res_partner.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner.website_id IS 'Registration Website';


--
-- Name: CONSTRAINT res_partner_check_name ON res_partner; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_partner_check_name ON public.res_partner IS 'CHECK( (type=''contact'' AND name IS NOT NULL) or (type!=''contact'') )';


--
-- Name: res_partner_autocomplete_sync; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner_autocomplete_sync (
    id integer NOT NULL,
    partner_id integer,
    synched boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_partner_autocomplete_sync OWNER TO prisma;

--
-- Name: TABLE res_partner_autocomplete_sync; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_partner_autocomplete_sync IS 'Partner Autocomplete Sync';


--
-- Name: COLUMN res_partner_autocomplete_sync.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_autocomplete_sync.partner_id IS 'Partner';


--
-- Name: COLUMN res_partner_autocomplete_sync.synched; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_autocomplete_sync.synched IS 'Is synched';


--
-- Name: COLUMN res_partner_autocomplete_sync.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_autocomplete_sync.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_autocomplete_sync.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_autocomplete_sync.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_autocomplete_sync.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_autocomplete_sync.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_autocomplete_sync.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_autocomplete_sync.write_date IS 'Last Updated on';


--
-- Name: res_partner_autocomplete_sync_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_partner_autocomplete_sync_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_partner_autocomplete_sync_id_seq OWNER TO prisma;

--
-- Name: res_partner_autocomplete_sync_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_partner_autocomplete_sync_id_seq OWNED BY public.res_partner_autocomplete_sync.id;


--
-- Name: res_partner_bank; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner_bank (
    id integer NOT NULL,
    acc_number character varying NOT NULL,
    sanitized_acc_number character varying,
    acc_holder_name character varying,
    partner_id integer NOT NULL,
    bank_id integer,
    sequence integer,
    currency_id integer,
    company_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_partner_bank OWNER TO prisma;

--
-- Name: TABLE res_partner_bank; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_partner_bank IS 'Bank Accounts';


--
-- Name: COLUMN res_partner_bank.acc_number; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.acc_number IS 'Account Number';


--
-- Name: COLUMN res_partner_bank.sanitized_acc_number; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.sanitized_acc_number IS 'Sanitized Account Number';


--
-- Name: COLUMN res_partner_bank.acc_holder_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.acc_holder_name IS 'Account Holder Name';


--
-- Name: COLUMN res_partner_bank.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.partner_id IS 'Account Holder';


--
-- Name: COLUMN res_partner_bank.bank_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.bank_id IS 'Bank';


--
-- Name: COLUMN res_partner_bank.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.sequence IS 'Sequence';


--
-- Name: COLUMN res_partner_bank.currency_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.currency_id IS 'Currency';


--
-- Name: COLUMN res_partner_bank.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.company_id IS 'Company';


--
-- Name: COLUMN res_partner_bank.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_bank.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_bank.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_bank.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_bank.write_date IS 'Last Updated on';


--
-- Name: res_partner_bank_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_partner_bank_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_partner_bank_id_seq OWNER TO prisma;

--
-- Name: res_partner_bank_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_partner_bank_id_seq OWNED BY public.res_partner_bank.id;


--
-- Name: res_partner_category; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner_category (
    id integer NOT NULL,
    parent_path character varying,
    name character varying NOT NULL,
    color integer,
    parent_id integer,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_partner_category OWNER TO prisma;

--
-- Name: TABLE res_partner_category; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_partner_category IS 'Partner Tags';


--
-- Name: COLUMN res_partner_category.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.name IS 'Tag Name';


--
-- Name: COLUMN res_partner_category.color; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.color IS 'Color Index';


--
-- Name: COLUMN res_partner_category.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.parent_id IS 'Parent Category';


--
-- Name: COLUMN res_partner_category.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.active IS 'Active';


--
-- Name: COLUMN res_partner_category.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_category.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_category.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_category.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_category.write_date IS 'Last Updated on';


--
-- Name: res_partner_category_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_partner_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_partner_category_id_seq OWNER TO prisma;

--
-- Name: res_partner_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_partner_category_id_seq OWNED BY public.res_partner_category.id;


--
-- Name: res_partner_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_partner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_partner_id_seq OWNER TO prisma;

--
-- Name: res_partner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_partner_id_seq OWNED BY public.res_partner.id;


--
-- Name: res_partner_industry; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner_industry (
    id integer NOT NULL,
    name character varying,
    full_name character varying,
    active boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_partner_industry OWNER TO prisma;

--
-- Name: TABLE res_partner_industry; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_partner_industry IS 'Industry';


--
-- Name: COLUMN res_partner_industry.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.name IS 'Name';


--
-- Name: COLUMN res_partner_industry.full_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.full_name IS 'Full Name';


--
-- Name: COLUMN res_partner_industry.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.active IS 'Active';


--
-- Name: COLUMN res_partner_industry.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_industry.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_industry.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_industry.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_industry.write_date IS 'Last Updated on';


--
-- Name: res_partner_industry_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_partner_industry_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_partner_industry_id_seq OWNER TO prisma;

--
-- Name: res_partner_industry_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_partner_industry_id_seq OWNED BY public.res_partner_industry.id;


--
-- Name: res_partner_res_partner_category_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner_res_partner_category_rel (
    category_id integer NOT NULL,
    partner_id integer NOT NULL
);


ALTER TABLE public.res_partner_res_partner_category_rel OWNER TO prisma;

--
-- Name: TABLE res_partner_res_partner_category_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_partner_res_partner_category_rel IS 'RELATION BETWEEN res_partner_category AND res_partner';


--
-- Name: res_partner_title; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_partner_title (
    id integer NOT NULL,
    name character varying NOT NULL,
    shortcut character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_partner_title OWNER TO prisma;

--
-- Name: TABLE res_partner_title; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_partner_title IS 'Partner Title';


--
-- Name: COLUMN res_partner_title.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_title.name IS 'Title';


--
-- Name: COLUMN res_partner_title.shortcut; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_title.shortcut IS 'Abbreviation';


--
-- Name: COLUMN res_partner_title.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_title.create_uid IS 'Created by';


--
-- Name: COLUMN res_partner_title.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_title.create_date IS 'Created on';


--
-- Name: COLUMN res_partner_title.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_title.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_partner_title.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_partner_title.write_date IS 'Last Updated on';


--
-- Name: res_partner_title_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_partner_title_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_partner_title_id_seq OWNER TO prisma;

--
-- Name: res_partner_title_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_partner_title_id_seq OWNED BY public.res_partner_title.id;


--
-- Name: res_users; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_users (
    id integer NOT NULL,
    active boolean DEFAULT true,
    login character varying NOT NULL,
    password character varying,
    company_id integer NOT NULL,
    partner_id integer NOT NULL,
    create_date timestamp without time zone,
    signature text,
    action_id integer,
    share boolean,
    create_uid integer,
    write_uid integer,
    write_date timestamp without time zone,
    alias_id integer,
    notification_type character varying NOT NULL,
    odoobot_state character varying NOT NULL,
    website_id integer
);

ALTER TABLE public.res_users OWNER TO prisma;

--
-- Name: COLUMN res_users.signature; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.signature IS 'Signature';


--
-- Name: COLUMN res_users.action_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.action_id IS 'Home Action';


--
-- Name: COLUMN res_users.share; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.share IS 'Share User';


--
-- Name: COLUMN res_users.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.create_uid IS 'Created by';


--
-- Name: COLUMN res_users.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_users.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.write_date IS 'Last Updated on';


--
-- Name: COLUMN res_users.alias_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.alias_id IS 'Alias';


--
-- Name: COLUMN res_users.notification_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.notification_type IS 'Notification Management';


--
-- Name: COLUMN res_users.odoobot_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.odoobot_state IS 'OdooBot Status';


--
-- Name: COLUMN res_users.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users.website_id IS 'Registration Website';


--
-- Name: res_users_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_users_id_seq OWNER TO prisma;

--
-- Name: res_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_users_id_seq OWNED BY public.res_users.id;


--
-- Name: res_users_log; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.res_users_log (
    id integer NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.res_users_log OWNER TO prisma;

--
-- Name: TABLE res_users_log; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.res_users_log IS 'Users Log';


--
-- Name: COLUMN res_users_log.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users_log.create_uid IS 'Created by';


--
-- Name: COLUMN res_users_log.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users_log.create_date IS 'Created on';


--
-- Name: COLUMN res_users_log.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users_log.write_uid IS 'Last Updated by';


--
-- Name: COLUMN res_users_log.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.res_users_log.write_date IS 'Last Updated on';


--
-- Name: res_users_log_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.res_users_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_users_log_id_seq OWNER TO prisma;

--
-- Name: res_users_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.res_users_log_id_seq OWNED BY public.res_users_log.id;


--
-- Name: rule_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.rule_group_rel (
    rule_group_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.rule_group_rel OWNER TO prisma;

--
-- Name: TABLE rule_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.rule_group_rel IS 'RELATION BETWEEN ir_rule AND res_groups';


--
-- Name: sms_send_sms; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.sms_send_sms (
    id integer NOT NULL,
    recipients character varying NOT NULL,
    message text NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.sms_send_sms OWNER TO prisma;

--
-- Name: TABLE sms_send_sms; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.sms_send_sms IS 'Send SMS';


--
-- Name: COLUMN sms_send_sms.recipients; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.sms_send_sms.recipients IS 'Recipients';


--
-- Name: COLUMN sms_send_sms.message; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.sms_send_sms.message IS 'Message';


--
-- Name: COLUMN sms_send_sms.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.sms_send_sms.create_uid IS 'Created by';


--
-- Name: COLUMN sms_send_sms.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.sms_send_sms.create_date IS 'Created on';


--
-- Name: COLUMN sms_send_sms.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.sms_send_sms.write_uid IS 'Last Updated by';


--
-- Name: COLUMN sms_send_sms.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.sms_send_sms.write_date IS 'Last Updated on';


--
-- Name: sms_send_sms_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.sms_send_sms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sms_send_sms_id_seq OWNER TO prisma;

--
-- Name: sms_send_sms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.sms_send_sms_id_seq OWNED BY public.sms_send_sms.id;


--
-- Name: snailmail_letter; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.snailmail_letter (
    id integer NOT NULL,
    user_id integer,
    model character varying NOT NULL,
    res_id integer NOT NULL,
    partner_id integer NOT NULL,
    company_id integer NOT NULL,
    report_template integer,
    attachment_id integer,
    color boolean,
    duplex boolean,
    state character varying,
    info_msg character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.snailmail_letter OWNER TO prisma;

--
-- Name: TABLE snailmail_letter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.snailmail_letter IS 'Snailmail Letter';


--
-- Name: COLUMN snailmail_letter.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.user_id IS 'User sending the letter';


--
-- Name: COLUMN snailmail_letter.model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.model IS 'Model';


--
-- Name: COLUMN snailmail_letter.res_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.res_id IS 'Document ID';


--
-- Name: COLUMN snailmail_letter.partner_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.partner_id IS 'Recipient';


--
-- Name: COLUMN snailmail_letter.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.company_id IS 'Company';


--
-- Name: COLUMN snailmail_letter.report_template; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.report_template IS 'Optional report to print and attach';


--
-- Name: COLUMN snailmail_letter.attachment_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.attachment_id IS 'Attachment';


--
-- Name: COLUMN snailmail_letter.color; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.color IS 'Color';


--
-- Name: COLUMN snailmail_letter.duplex; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.duplex IS 'Both side';


--
-- Name: COLUMN snailmail_letter.state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.state IS 'Status';


--
-- Name: COLUMN snailmail_letter.info_msg; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.info_msg IS 'Information';


--
-- Name: COLUMN snailmail_letter.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.create_uid IS 'Created by';


--
-- Name: COLUMN snailmail_letter.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.create_date IS 'Created on';


--
-- Name: COLUMN snailmail_letter.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.write_uid IS 'Last Updated by';


--
-- Name: COLUMN snailmail_letter.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.snailmail_letter.write_date IS 'Last Updated on';


--
-- Name: snailmail_letter_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.snailmail_letter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.snailmail_letter_id_seq OWNER TO prisma;

--
-- Name: snailmail_letter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.snailmail_letter_id_seq OWNED BY public.snailmail_letter.id;


--
-- Name: theme_ir_attachment; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.theme_ir_attachment (
    id integer NOT NULL,
    name character varying NOT NULL,
    key character varying NOT NULL,
    url character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.theme_ir_attachment OWNER TO prisma;

--
-- Name: TABLE theme_ir_attachment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.theme_ir_attachment IS 'Theme Attachments';


--
-- Name: COLUMN theme_ir_attachment.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.name IS 'Name';


--
-- Name: COLUMN theme_ir_attachment.key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.key IS 'Key';


--
-- Name: COLUMN theme_ir_attachment.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.url IS 'Url';


--
-- Name: COLUMN theme_ir_attachment.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.create_uid IS 'Created by';


--
-- Name: COLUMN theme_ir_attachment.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.create_date IS 'Created on';


--
-- Name: COLUMN theme_ir_attachment.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.write_uid IS 'Last Updated by';


--
-- Name: COLUMN theme_ir_attachment.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_attachment.write_date IS 'Last Updated on';


--
-- Name: theme_ir_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.theme_ir_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_ir_attachment_id_seq OWNER TO prisma;

--
-- Name: theme_ir_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.theme_ir_attachment_id_seq OWNED BY public.theme_ir_attachment.id;


--
-- Name: theme_ir_ui_view; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.theme_ir_ui_view (
    id integer NOT NULL,
    name character varying NOT NULL,
    key character varying,
    type character varying,
    priority integer NOT NULL,
    mode character varying,
    active boolean,
    arch text,
    arch_fs character varying,
    inherit_id character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.theme_ir_ui_view OWNER TO prisma;

--
-- Name: TABLE theme_ir_ui_view; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.theme_ir_ui_view IS 'Theme UI View';


--
-- Name: COLUMN theme_ir_ui_view.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.name IS 'Name';


--
-- Name: COLUMN theme_ir_ui_view.key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.key IS 'Key';


--
-- Name: COLUMN theme_ir_ui_view.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.type IS 'Type';


--
-- Name: COLUMN theme_ir_ui_view.priority; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.priority IS 'Priority';


--
-- Name: COLUMN theme_ir_ui_view.mode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.mode IS 'Mode';


--
-- Name: COLUMN theme_ir_ui_view.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.active IS 'Active';


--
-- Name: COLUMN theme_ir_ui_view.arch; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.arch IS 'Arch';


--
-- Name: COLUMN theme_ir_ui_view.arch_fs; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.arch_fs IS 'Arch Fs';


--
-- Name: COLUMN theme_ir_ui_view.inherit_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.inherit_id IS 'Inherit';


--
-- Name: COLUMN theme_ir_ui_view.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.create_uid IS 'Created by';


--
-- Name: COLUMN theme_ir_ui_view.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.create_date IS 'Created on';


--
-- Name: COLUMN theme_ir_ui_view.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.write_uid IS 'Last Updated by';


--
-- Name: COLUMN theme_ir_ui_view.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_ir_ui_view.write_date IS 'Last Updated on';


--
-- Name: theme_ir_ui_view_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.theme_ir_ui_view_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_ir_ui_view_id_seq OWNER TO prisma;

--
-- Name: theme_ir_ui_view_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.theme_ir_ui_view_id_seq OWNED BY public.theme_ir_ui_view.id;


--
-- Name: theme_website_menu; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.theme_website_menu (
    id integer NOT NULL,
    name character varying NOT NULL,
    url character varying,
    page_id integer,
    new_window boolean,
    sequence integer,
    parent_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.theme_website_menu OWNER TO prisma;

--
-- Name: TABLE theme_website_menu; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.theme_website_menu IS 'Website Theme Menu';


--
-- Name: COLUMN theme_website_menu.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.name IS 'Name';


--
-- Name: COLUMN theme_website_menu.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.url IS 'Url';


--
-- Name: COLUMN theme_website_menu.page_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.page_id IS 'Page';


--
-- Name: COLUMN theme_website_menu.new_window; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.new_window IS 'New Window';


--
-- Name: COLUMN theme_website_menu.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.sequence IS 'Sequence';


--
-- Name: COLUMN theme_website_menu.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.parent_id IS 'Parent';


--
-- Name: COLUMN theme_website_menu.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.create_uid IS 'Created by';


--
-- Name: COLUMN theme_website_menu.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.create_date IS 'Created on';


--
-- Name: COLUMN theme_website_menu.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.write_uid IS 'Last Updated by';


--
-- Name: COLUMN theme_website_menu.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_menu.write_date IS 'Last Updated on';


--
-- Name: theme_website_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.theme_website_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_website_menu_id_seq OWNER TO prisma;

--
-- Name: theme_website_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.theme_website_menu_id_seq OWNED BY public.theme_website_menu.id;


--
-- Name: theme_website_page; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.theme_website_page (
    id integer NOT NULL,
    url character varying,
    view_id integer NOT NULL,
    website_indexed boolean,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.theme_website_page OWNER TO prisma;

--
-- Name: TABLE theme_website_page; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.theme_website_page IS 'Website Theme Page';


--
-- Name: COLUMN theme_website_page.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.url IS 'Url';


--
-- Name: COLUMN theme_website_page.view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.view_id IS 'View';


--
-- Name: COLUMN theme_website_page.website_indexed; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.website_indexed IS 'Page Indexed';


--
-- Name: COLUMN theme_website_page.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.create_uid IS 'Created by';


--
-- Name: COLUMN theme_website_page.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.create_date IS 'Created on';


--
-- Name: COLUMN theme_website_page.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.write_uid IS 'Last Updated by';


--
-- Name: COLUMN theme_website_page.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.theme_website_page.write_date IS 'Last Updated on';


--
-- Name: theme_website_page_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.theme_website_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.theme_website_page_id_seq OWNER TO prisma;

--
-- Name: theme_website_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.theme_website_page_id_seq OWNED BY public.theme_website_page.id;


--
-- Name: web_editor_converter_test; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.web_editor_converter_test (
    id integer NOT NULL,
    "char" character varying,
    "integer" integer,
    "float" double precision,
    "numeric" numeric,
    many2one integer,
    "binary" bytea,
    date date,
    datetime timestamp without time zone,
    selection integer,
    selection_str character varying,
    html text,
    text text,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.web_editor_converter_test OWNER TO prisma;

--
-- Name: TABLE web_editor_converter_test; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.web_editor_converter_test IS 'Web Editor Converter Test';


--
-- Name: COLUMN web_editor_converter_test."char"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test."char" IS 'Char';


--
-- Name: COLUMN web_editor_converter_test."integer"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test."integer" IS 'Integer';


--
-- Name: COLUMN web_editor_converter_test."float"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test."float" IS 'Float';


--
-- Name: COLUMN web_editor_converter_test."numeric"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test."numeric" IS 'Numeric';


--
-- Name: COLUMN web_editor_converter_test.many2one; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.many2one IS 'Many2One';


--
-- Name: COLUMN web_editor_converter_test."binary"; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test."binary" IS 'Binary';


--
-- Name: COLUMN web_editor_converter_test.date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.date IS 'Date';


--
-- Name: COLUMN web_editor_converter_test.datetime; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.datetime IS 'Datetime';


--
-- Name: COLUMN web_editor_converter_test.selection; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.selection IS 'Selection';


--
-- Name: COLUMN web_editor_converter_test.selection_str; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.selection_str IS 'Lorsqu''un pancake prend l''avion à destination de Toronto et qu''il fait une escale technique à St Claude, on dit:';


--
-- Name: COLUMN web_editor_converter_test.html; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.html IS 'Html';


--
-- Name: COLUMN web_editor_converter_test.text; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.text IS 'Text';


--
-- Name: COLUMN web_editor_converter_test.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.create_uid IS 'Created by';


--
-- Name: COLUMN web_editor_converter_test.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.create_date IS 'Created on';


--
-- Name: COLUMN web_editor_converter_test.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.write_uid IS 'Last Updated by';


--
-- Name: COLUMN web_editor_converter_test.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test.write_date IS 'Last Updated on';


--
-- Name: web_editor_converter_test_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.web_editor_converter_test_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_editor_converter_test_id_seq OWNER TO prisma;

--
-- Name: web_editor_converter_test_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.web_editor_converter_test_id_seq OWNED BY public.web_editor_converter_test.id;


--
-- Name: web_editor_converter_test_sub; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.web_editor_converter_test_sub (
    id integer NOT NULL,
    name character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.web_editor_converter_test_sub OWNER TO prisma;

--
-- Name: TABLE web_editor_converter_test_sub; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.web_editor_converter_test_sub IS 'Web Editor Converter Subtest';


--
-- Name: COLUMN web_editor_converter_test_sub.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test_sub.name IS 'Name';


--
-- Name: COLUMN web_editor_converter_test_sub.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test_sub.create_uid IS 'Created by';


--
-- Name: COLUMN web_editor_converter_test_sub.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test_sub.create_date IS 'Created on';


--
-- Name: COLUMN web_editor_converter_test_sub.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test_sub.write_uid IS 'Last Updated by';


--
-- Name: COLUMN web_editor_converter_test_sub.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_editor_converter_test_sub.write_date IS 'Last Updated on';


--
-- Name: web_editor_converter_test_sub_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.web_editor_converter_test_sub_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_editor_converter_test_sub_id_seq OWNER TO prisma;

--
-- Name: web_editor_converter_test_sub_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.web_editor_converter_test_sub_id_seq OWNED BY public.web_editor_converter_test_sub.id;


--
-- Name: web_tour_tour; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.web_tour_tour (
    id integer NOT NULL,
    name character varying NOT NULL,
    user_id integer
);


ALTER TABLE public.web_tour_tour OWNER TO prisma;

--
-- Name: TABLE web_tour_tour; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.web_tour_tour IS 'Tours';


--
-- Name: COLUMN web_tour_tour.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_tour_tour.name IS 'Tour name';


--
-- Name: COLUMN web_tour_tour.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.web_tour_tour.user_id IS 'Consumed by';


--
-- Name: web_tour_tour_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.web_tour_tour_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_tour_tour_id_seq OWNER TO prisma;

--
-- Name: web_tour_tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.web_tour_tour_id_seq OWNED BY public.web_tour_tour.id;


--
-- Name: website; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.website (
    id integer NOT NULL,
    name character varying NOT NULL,
    domain character varying,
    company_id integer NOT NULL,
    default_lang_id integer NOT NULL,
    default_lang_code character varying,
    auto_redirect_lang boolean,
    social_twitter character varying,
    social_facebook character varying,
    social_github character varying,
    social_linkedin character varying,
    social_youtube character varying,
    social_googleplus character varying,
    social_instagram character varying,
    google_analytics_key character varying,
    google_management_client_id character varying,
    google_management_client_secret character varying,
    google_maps_api_key character varying,
    user_id integer NOT NULL,
    cdn_activated boolean,
    cdn_url character varying,
    cdn_filters text,
    homepage_id integer,
    favicon bytea,
    theme_id integer,
    specific_user_account boolean,
    auth_signup_uninvited character varying,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.website OWNER TO prisma;

--
-- Name: TABLE website; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.website IS 'Website';


--
-- Name: COLUMN website.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.name IS 'Website Name';


--
-- Name: COLUMN website.domain; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.domain IS 'Website Domain';


--
-- Name: COLUMN website.company_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.company_id IS 'Company';


--
-- Name: COLUMN website.default_lang_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.default_lang_id IS 'Default Language';


--
-- Name: COLUMN website.default_lang_code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.default_lang_code IS 'Default language code';


--
-- Name: COLUMN website.auto_redirect_lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.auto_redirect_lang IS 'Autoredirect Language';


--
-- Name: COLUMN website.social_twitter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_twitter IS 'Twitter Account';


--
-- Name: COLUMN website.social_facebook; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_facebook IS 'Facebook Account';


--
-- Name: COLUMN website.social_github; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_github IS 'GitHub Account';


--
-- Name: COLUMN website.social_linkedin; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_linkedin IS 'LinkedIn Account';


--
-- Name: COLUMN website.social_youtube; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_youtube IS 'Youtube Account';


--
-- Name: COLUMN website.social_googleplus; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_googleplus IS 'Google+ Account';


--
-- Name: COLUMN website.social_instagram; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.social_instagram IS 'Instagram Account';


--
-- Name: COLUMN website.google_analytics_key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.google_analytics_key IS 'Google Analytics Key';


--
-- Name: COLUMN website.google_management_client_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.google_management_client_id IS 'Google Client ID';


--
-- Name: COLUMN website.google_management_client_secret; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.google_management_client_secret IS 'Google Client Secret';


--
-- Name: COLUMN website.google_maps_api_key; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.google_maps_api_key IS 'Google Maps API Key';


--
-- Name: COLUMN website.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.user_id IS 'Public User';


--
-- Name: COLUMN website.cdn_activated; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.cdn_activated IS 'Content Delivery Network (CDN)';


--
-- Name: COLUMN website.cdn_url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.cdn_url IS 'CDN Base URL';


--
-- Name: COLUMN website.cdn_filters; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.cdn_filters IS 'CDN Filters';


--
-- Name: COLUMN website.homepage_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.homepage_id IS 'Homepage';


--
-- Name: COLUMN website.favicon; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.favicon IS 'Website Favicon';


--
-- Name: COLUMN website.theme_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.theme_id IS 'Theme';


--
-- Name: COLUMN website.specific_user_account; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.specific_user_account IS 'Specific User Account';


--
-- Name: COLUMN website.auth_signup_uninvited; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.auth_signup_uninvited IS 'Customer Account';


--
-- Name: COLUMN website.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.create_uid IS 'Created by';


--
-- Name: COLUMN website.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.create_date IS 'Created on';


--
-- Name: COLUMN website.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website.write_date IS 'Last Updated on';


--
-- Name: website_country_group_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.website_country_group_rel (
    website_id integer NOT NULL,
    country_group_id integer NOT NULL
);


ALTER TABLE public.website_country_group_rel OWNER TO prisma;

--
-- Name: TABLE website_country_group_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.website_country_group_rel IS 'RELATION BETWEEN website AND res_country_group';


--
-- Name: website_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.website_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.website_id_seq OWNER TO prisma;

--
-- Name: website_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.website_id_seq OWNED BY public.website.id;


--
-- Name: website_lang_rel; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.website_lang_rel (
    website_id integer NOT NULL,
    lang_id integer NOT NULL
);


ALTER TABLE public.website_lang_rel OWNER TO prisma;

--
-- Name: TABLE website_lang_rel; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.website_lang_rel IS 'RELATION BETWEEN website AND res_lang';


--
-- Name: website_menu; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.website_menu (
    id integer NOT NULL,
    parent_path character varying,
    name character varying NOT NULL,
    url character varying,
    page_id integer,
    new_window boolean,
    sequence integer,
    website_id integer,
    parent_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    theme_template_id integer
);


ALTER TABLE public.website_menu OWNER TO prisma;

--
-- Name: TABLE website_menu; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.website_menu IS 'Website Menu';


--
-- Name: COLUMN website_menu.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.name IS 'Menu';


--
-- Name: COLUMN website_menu.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.url IS 'Url';


--
-- Name: COLUMN website_menu.page_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.page_id IS 'Related Page';


--
-- Name: COLUMN website_menu.new_window; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.new_window IS 'New Window';


--
-- Name: COLUMN website_menu.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.sequence IS 'Sequence';


--
-- Name: COLUMN website_menu.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.website_id IS 'Website';


--
-- Name: COLUMN website_menu.parent_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.parent_id IS 'Parent Menu';


--
-- Name: COLUMN website_menu.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.create_uid IS 'Created by';


--
-- Name: COLUMN website_menu.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.create_date IS 'Created on';


--
-- Name: COLUMN website_menu.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_menu.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.write_date IS 'Last Updated on';


--
-- Name: COLUMN website_menu.theme_template_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_menu.theme_template_id IS 'Theme Template';


--
-- Name: website_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.website_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.website_menu_id_seq OWNER TO prisma;

--
-- Name: website_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.website_menu_id_seq OWNED BY public.website_menu.id;


--
-- Name: website_page; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.website_page (
    id integer NOT NULL,
    is_published boolean,
    url character varying,
    view_id integer NOT NULL,
    website_indexed boolean,
    date_publish timestamp without time zone,
    header_overlay boolean,
    header_color character varying,
    website_id integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone,
    theme_template_id integer
);


ALTER TABLE public.website_page OWNER TO prisma;

--
-- Name: TABLE website_page; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.website_page IS 'Page';


--
-- Name: COLUMN website_page.is_published; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.is_published IS 'Is published';


--
-- Name: COLUMN website_page.url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.url IS 'Page URL';


--
-- Name: COLUMN website_page.view_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.view_id IS 'View';


--
-- Name: COLUMN website_page.website_indexed; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.website_indexed IS 'Page Indexed';


--
-- Name: COLUMN website_page.date_publish; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.date_publish IS 'Publishing Date';


--
-- Name: COLUMN website_page.header_overlay; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.header_overlay IS 'Header Overlay';


--
-- Name: COLUMN website_page.header_color; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.header_color IS 'Header Color';


--
-- Name: COLUMN website_page.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.website_id IS 'Website';


--
-- Name: COLUMN website_page.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.create_uid IS 'Created by';


--
-- Name: COLUMN website_page.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.create_date IS 'Created on';


--
-- Name: COLUMN website_page.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_page.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.write_date IS 'Last Updated on';


--
-- Name: COLUMN website_page.theme_template_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_page.theme_template_id IS 'Theme Template';


--
-- Name: website_page_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.website_page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.website_page_id_seq OWNER TO prisma;

--
-- Name: website_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.website_page_id_seq OWNED BY public.website_page.id;


--
-- Name: website_redirect; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.website_redirect (
    id integer NOT NULL,
    type character varying NOT NULL,
    url_from character varying NOT NULL,
    url_to character varying NOT NULL,
    website_id integer,
    active boolean,
    sequence integer,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.website_redirect OWNER TO prisma;

--
-- Name: TABLE website_redirect; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.website_redirect IS 'Website Redirect';


--
-- Name: COLUMN website_redirect.type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.type IS 'Redirection Type';


--
-- Name: COLUMN website_redirect.url_from; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.url_from IS 'Redirect From';


--
-- Name: COLUMN website_redirect.url_to; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.url_to IS 'Redirect To';


--
-- Name: COLUMN website_redirect.website_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.website_id IS 'Website';


--
-- Name: COLUMN website_redirect.active; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.active IS 'Active';


--
-- Name: COLUMN website_redirect.sequence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.sequence IS 'Sequence';


--
-- Name: COLUMN website_redirect.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.create_uid IS 'Created by';


--
-- Name: COLUMN website_redirect.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.create_date IS 'Created on';


--
-- Name: COLUMN website_redirect.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.write_uid IS 'Last Updated by';


--
-- Name: COLUMN website_redirect.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.website_redirect.write_date IS 'Last Updated on';


--
-- Name: website_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.website_redirect_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.website_redirect_id_seq OWNER TO prisma;

--
-- Name: website_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.website_redirect_id_seq OWNED BY public.website_redirect.id;


--
-- Name: wizard_ir_model_menu_create; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.wizard_ir_model_menu_create (
    id integer NOT NULL,
    menu_id integer NOT NULL,
    name character varying NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_uid integer,
    write_date timestamp without time zone
);


ALTER TABLE public.wizard_ir_model_menu_create OWNER TO prisma;

--
-- Name: TABLE wizard_ir_model_menu_create; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.wizard_ir_model_menu_create IS 'Create Menu Wizard';


--
-- Name: COLUMN wizard_ir_model_menu_create.menu_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.wizard_ir_model_menu_create.menu_id IS 'Parent Menu';


--
-- Name: COLUMN wizard_ir_model_menu_create.name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.wizard_ir_model_menu_create.name IS 'Menu Name';


--
-- Name: COLUMN wizard_ir_model_menu_create.create_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.wizard_ir_model_menu_create.create_uid IS 'Created by';


--
-- Name: COLUMN wizard_ir_model_menu_create.create_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.wizard_ir_model_menu_create.create_date IS 'Created on';


--
-- Name: COLUMN wizard_ir_model_menu_create.write_uid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.wizard_ir_model_menu_create.write_uid IS 'Last Updated by';


--
-- Name: COLUMN wizard_ir_model_menu_create.write_date; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.wizard_ir_model_menu_create.write_date IS 'Last Updated on';


--
-- Name: wizard_ir_model_menu_create_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.wizard_ir_model_menu_create_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wizard_ir_model_menu_create_id_seq OWNER TO prisma;

--
-- Name: wizard_ir_model_menu_create_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.wizard_ir_model_menu_create_id_seq OWNED BY public.wizard_ir_model_menu_create.id;


--
-- Name: base_import_import id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_import ALTER COLUMN id SET DEFAULT nextval('public.base_import_import_id_seq'::regclass);


--
-- Name: base_import_mapping id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_mapping ALTER COLUMN id SET DEFAULT nextval('public.base_import_mapping_id_seq'::regclass);


--
-- Name: base_import_tests_models_char id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_char_id_seq'::regclass);


--
-- Name: base_import_tests_models_char_noreadonly id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_noreadonly ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_char_noreadonly_id_seq'::regclass);


--
-- Name: base_import_tests_models_char_readonly id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_readonly ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_char_readonly_id_seq'::regclass);


--
-- Name: base_import_tests_models_char_required id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_required ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_char_required_id_seq'::regclass);


--
-- Name: base_import_tests_models_char_states id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_states ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_char_states_id_seq'::regclass);


--
-- Name: base_import_tests_models_char_stillreadonly id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_stillreadonly ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_char_stillreadonly_id_seq'::regclass);


--
-- Name: base_import_tests_models_complex id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_complex ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_complex_id_seq'::regclass);


--
-- Name: base_import_tests_models_float id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_float ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_float_id_seq'::regclass);


--
-- Name: base_import_tests_models_m2o id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_m2o_id_seq'::regclass);


--
-- Name: base_import_tests_models_m2o_related id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_related ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_m2o_related_id_seq'::regclass);


--
-- Name: base_import_tests_models_m2o_required id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_m2o_required_id_seq'::regclass);


--
-- Name: base_import_tests_models_m2o_required_related id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required_related ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_m2o_required_related_id_seq'::regclass);


--
-- Name: base_import_tests_models_o2m id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_o2m_id_seq'::regclass);


--
-- Name: base_import_tests_models_o2m_child id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m_child ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_o2m_child_id_seq'::regclass);


--
-- Name: base_import_tests_models_preview id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_preview ALTER COLUMN id SET DEFAULT nextval('public.base_import_tests_models_preview_id_seq'::regclass);


--
-- Name: base_language_export id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_export ALTER COLUMN id SET DEFAULT nextval('public.base_language_export_id_seq'::regclass);


--
-- Name: base_language_import id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_import ALTER COLUMN id SET DEFAULT nextval('public.base_language_import_id_seq'::regclass);


--
-- Name: base_language_install id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install ALTER COLUMN id SET DEFAULT nextval('public.base_language_install_id_seq'::regclass);


--
-- Name: base_module_uninstall id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_uninstall ALTER COLUMN id SET DEFAULT nextval('public.base_module_uninstall_id_seq'::regclass);


--
-- Name: base_module_update id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_update ALTER COLUMN id SET DEFAULT nextval('public.base_module_update_id_seq'::regclass);


--
-- Name: base_module_upgrade id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_upgrade ALTER COLUMN id SET DEFAULT nextval('public.base_module_upgrade_id_seq'::regclass);


--
-- Name: base_partner_merge_automatic_wizard id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard ALTER COLUMN id SET DEFAULT nextval('public.base_partner_merge_automatic_wizard_id_seq'::regclass);


--
-- Name: base_partner_merge_line id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_line ALTER COLUMN id SET DEFAULT nextval('public.base_partner_merge_line_id_seq'::regclass);


--
-- Name: base_update_translations id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_update_translations ALTER COLUMN id SET DEFAULT nextval('public.base_update_translations_id_seq'::regclass);


--
-- Name: bus_bus id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_bus ALTER COLUMN id SET DEFAULT nextval('public.bus_bus_id_seq'::regclass);


--
-- Name: bus_presence id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_presence ALTER COLUMN id SET DEFAULT nextval('public.bus_presence_id_seq'::regclass);


--
-- Name: change_password_user id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_user ALTER COLUMN id SET DEFAULT nextval('public.change_password_user_id_seq'::regclass);


--
-- Name: change_password_wizard id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_wizard ALTER COLUMN id SET DEFAULT nextval('public.change_password_wizard_id_seq'::regclass);


--
-- Name: email_template_preview id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview ALTER COLUMN id SET DEFAULT nextval('public.email_template_preview_id_seq'::regclass);


--
-- Name: fetchmail_server id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fetchmail_server ALTER COLUMN id SET DEFAULT nextval('public.fetchmail_server_id_seq'::regclass);


--
-- Name: iap_account id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.iap_account ALTER COLUMN id SET DEFAULT nextval('public.iap_account_id_seq'::regclass);


--
-- Name: ir_act_client id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_client ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Name: ir_act_report_xml id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_report_xml ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Name: ir_act_server id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Name: ir_act_url id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_url ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Name: ir_act_window id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Name: ir_act_window_view id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_view ALTER COLUMN id SET DEFAULT nextval('public.ir_act_window_view_id_seq'::regclass);


--
-- Name: ir_actions id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_id_seq'::regclass);


--
-- Name: ir_actions_todo id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions_todo ALTER COLUMN id SET DEFAULT nextval('public.ir_actions_todo_id_seq'::regclass);


--
-- Name: ir_attachment id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment ALTER COLUMN id SET DEFAULT nextval('public.ir_attachment_id_seq'::regclass);


--
-- Name: ir_config_parameter id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_config_parameter ALTER COLUMN id SET DEFAULT nextval('public.ir_config_parameter_id_seq'::regclass);


--
-- Name: ir_cron id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_cron ALTER COLUMN id SET DEFAULT nextval('public.ir_cron_id_seq'::regclass);


--
-- Name: ir_default id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default ALTER COLUMN id SET DEFAULT nextval('public.ir_default_id_seq'::regclass);


--
-- Name: ir_demo id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo ALTER COLUMN id SET DEFAULT nextval('public.ir_demo_id_seq'::regclass);


--
-- Name: ir_demo_failure id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure ALTER COLUMN id SET DEFAULT nextval('public.ir_demo_failure_id_seq'::regclass);


--
-- Name: ir_demo_failure_wizard id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure_wizard ALTER COLUMN id SET DEFAULT nextval('public.ir_demo_failure_wizard_id_seq'::regclass);


--
-- Name: ir_exports id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports ALTER COLUMN id SET DEFAULT nextval('public.ir_exports_id_seq'::regclass);


--
-- Name: ir_exports_line id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports_line ALTER COLUMN id SET DEFAULT nextval('public.ir_exports_line_id_seq'::regclass);


--
-- Name: ir_filters id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_filters ALTER COLUMN id SET DEFAULT nextval('public.ir_filters_id_seq'::regclass);


--
-- Name: ir_logging id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_logging ALTER COLUMN id SET DEFAULT nextval('public.ir_logging_id_seq'::regclass);


--
-- Name: ir_mail_server id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_mail_server ALTER COLUMN id SET DEFAULT nextval('public.ir_mail_server_id_seq'::regclass);


--
-- Name: ir_model id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model ALTER COLUMN id SET DEFAULT nextval('public.ir_model_id_seq'::regclass);


--
-- Name: ir_model_access id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_access ALTER COLUMN id SET DEFAULT nextval('public.ir_model_access_id_seq'::regclass);


--
-- Name: ir_model_constraint id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint ALTER COLUMN id SET DEFAULT nextval('public.ir_model_constraint_id_seq'::regclass);


--
-- Name: ir_model_data id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_data ALTER COLUMN id SET DEFAULT nextval('public.ir_model_data_id_seq'::regclass);


--
-- Name: ir_model_fields id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields ALTER COLUMN id SET DEFAULT nextval('public.ir_model_fields_id_seq'::regclass);


--
-- Name: ir_model_relation id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_relation ALTER COLUMN id SET DEFAULT nextval('public.ir_model_relation_id_seq'::regclass);


--
-- Name: ir_module_category id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_category ALTER COLUMN id SET DEFAULT nextval('public.ir_module_category_id_seq'::regclass);


--
-- Name: ir_module_module id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module ALTER COLUMN id SET DEFAULT nextval('public.ir_module_module_id_seq'::regclass);


--
-- Name: ir_module_module_dependency id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_dependency ALTER COLUMN id SET DEFAULT nextval('public.ir_module_module_dependency_id_seq'::regclass);


--
-- Name: ir_module_module_exclusion id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_exclusion ALTER COLUMN id SET DEFAULT nextval('public.ir_module_module_exclusion_id_seq'::regclass);


--
-- Name: ir_property id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_property ALTER COLUMN id SET DEFAULT nextval('public.ir_property_id_seq'::regclass);


--
-- Name: ir_rule id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_rule ALTER COLUMN id SET DEFAULT nextval('public.ir_rule_id_seq'::regclass);


--
-- Name: ir_sequence id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence ALTER COLUMN id SET DEFAULT nextval('public.ir_sequence_id_seq'::regclass);


--
-- Name: ir_sequence_date_range id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence_date_range ALTER COLUMN id SET DEFAULT nextval('public.ir_sequence_date_range_id_seq'::regclass);


--
-- Name: ir_server_object_lines id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_server_object_lines ALTER COLUMN id SET DEFAULT nextval('public.ir_server_object_lines_id_seq'::regclass);


--
-- Name: ir_translation id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_translation ALTER COLUMN id SET DEFAULT nextval('public.ir_translation_id_seq'::regclass);


--
-- Name: ir_ui_menu id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu ALTER COLUMN id SET DEFAULT nextval('public.ir_ui_menu_id_seq'::regclass);


--
-- Name: ir_ui_view id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view ALTER COLUMN id SET DEFAULT nextval('public.ir_ui_view_id_seq'::regclass);


--
-- Name: ir_ui_view_custom id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_custom ALTER COLUMN id SET DEFAULT nextval('public.ir_ui_view_custom_id_seq'::regclass);


--
-- Name: mail_activity id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity ALTER COLUMN id SET DEFAULT nextval('public.mail_activity_id_seq'::regclass);


--
-- Name: mail_activity_type id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type ALTER COLUMN id SET DEFAULT nextval('public.mail_activity_type_id_seq'::regclass);


--
-- Name: mail_alias id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias ALTER COLUMN id SET DEFAULT nextval('public.mail_alias_id_seq'::regclass);


--
-- Name: mail_blacklist id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_blacklist ALTER COLUMN id SET DEFAULT nextval('public.mail_blacklist_id_seq'::regclass);


--
-- Name: mail_channel id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel ALTER COLUMN id SET DEFAULT nextval('public.mail_channel_id_seq'::regclass);


--
-- Name: mail_channel_partner id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner ALTER COLUMN id SET DEFAULT nextval('public.mail_channel_partner_id_seq'::regclass);


--
-- Name: mail_compose_message id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message ALTER COLUMN id SET DEFAULT nextval('public.mail_compose_message_id_seq'::regclass);


--
-- Name: mail_followers id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers ALTER COLUMN id SET DEFAULT nextval('public.mail_followers_id_seq'::regclass);


--
-- Name: mail_mail id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail ALTER COLUMN id SET DEFAULT nextval('public.mail_mail_id_seq'::regclass);


--
-- Name: mail_message id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message ALTER COLUMN id SET DEFAULT nextval('public.mail_message_id_seq'::regclass);


--
-- Name: mail_message_res_partner_needaction_rel id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel ALTER COLUMN id SET DEFAULT nextval('public.mail_message_res_partner_needaction_rel_id_seq'::regclass);


--
-- Name: mail_message_subtype id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_subtype ALTER COLUMN id SET DEFAULT nextval('public.mail_message_subtype_id_seq'::regclass);


--
-- Name: mail_moderation id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_moderation ALTER COLUMN id SET DEFAULT nextval('public.mail_moderation_id_seq'::regclass);


--
-- Name: mail_resend_cancel id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_cancel ALTER COLUMN id SET DEFAULT nextval('public.mail_resend_cancel_id_seq'::regclass);


--
-- Name: mail_resend_message id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_message ALTER COLUMN id SET DEFAULT nextval('public.mail_resend_message_id_seq'::regclass);


--
-- Name: mail_resend_partner id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_partner ALTER COLUMN id SET DEFAULT nextval('public.mail_resend_partner_id_seq'::regclass);


--
-- Name: mail_shortcode id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_shortcode ALTER COLUMN id SET DEFAULT nextval('public.mail_shortcode_id_seq'::regclass);


--
-- Name: mail_template id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template ALTER COLUMN id SET DEFAULT nextval('public.mail_template_id_seq'::regclass);


--
-- Name: mail_tracking_value id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_tracking_value ALTER COLUMN id SET DEFAULT nextval('public.mail_tracking_value_id_seq'::regclass);


--
-- Name: mail_wizard_invite id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite ALTER COLUMN id SET DEFAULT nextval('public.mail_wizard_invite_id_seq'::regclass);


--
-- Name: portal_share id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share ALTER COLUMN id SET DEFAULT nextval('public.portal_share_id_seq'::regclass);


--
-- Name: portal_wizard id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard ALTER COLUMN id SET DEFAULT nextval('public.portal_wizard_id_seq'::regclass);


--
-- Name: portal_wizard_user id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user ALTER COLUMN id SET DEFAULT nextval('public.portal_wizard_user_id_seq'::regclass);


--
-- Name: report_layout id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_layout ALTER COLUMN id SET DEFAULT nextval('public.report_layout_id_seq'::regclass);


--
-- Name: report_paperformat id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_paperformat ALTER COLUMN id SET DEFAULT nextval('public.report_paperformat_id_seq'::regclass);


--
-- Name: res_bank id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_bank ALTER COLUMN id SET DEFAULT nextval('public.res_bank_id_seq'::regclass);


--
-- Name: res_company id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company ALTER COLUMN id SET DEFAULT nextval('public.res_company_id_seq'::regclass);


--
-- Name: res_config id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config ALTER COLUMN id SET DEFAULT nextval('public.res_config_id_seq'::regclass);


--
-- Name: res_config_installer id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_installer ALTER COLUMN id SET DEFAULT nextval('public.res_config_installer_id_seq'::regclass);


--
-- Name: res_config_settings id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings ALTER COLUMN id SET DEFAULT nextval('public.res_config_settings_id_seq'::regclass);


--
-- Name: res_country id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country ALTER COLUMN id SET DEFAULT nextval('public.res_country_id_seq'::regclass);


--
-- Name: res_country_group id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_group ALTER COLUMN id SET DEFAULT nextval('public.res_country_group_id_seq'::regclass);


--
-- Name: res_country_state id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_state ALTER COLUMN id SET DEFAULT nextval('public.res_country_state_id_seq'::regclass);


--
-- Name: res_currency id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency ALTER COLUMN id SET DEFAULT nextval('public.res_currency_id_seq'::regclass);


--
-- Name: res_currency_rate id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate ALTER COLUMN id SET DEFAULT nextval('public.res_currency_rate_id_seq'::regclass);


--
-- Name: res_groups id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups ALTER COLUMN id SET DEFAULT nextval('public.res_groups_id_seq'::regclass);


--
-- Name: res_lang id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_lang ALTER COLUMN id SET DEFAULT nextval('public.res_lang_id_seq'::regclass);


--
-- Name: res_partner id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner ALTER COLUMN id SET DEFAULT nextval('public.res_partner_id_seq'::regclass);


--
-- Name: res_partner_autocomplete_sync id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_autocomplete_sync ALTER COLUMN id SET DEFAULT nextval('public.res_partner_autocomplete_sync_id_seq'::regclass);


--
-- Name: res_partner_bank id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank ALTER COLUMN id SET DEFAULT nextval('public.res_partner_bank_id_seq'::regclass);


--
-- Name: res_partner_category id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_category ALTER COLUMN id SET DEFAULT nextval('public.res_partner_category_id_seq'::regclass);


--
-- Name: res_partner_industry id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_industry ALTER COLUMN id SET DEFAULT nextval('public.res_partner_industry_id_seq'::regclass);


--
-- Name: res_partner_title id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_title ALTER COLUMN id SET DEFAULT nextval('public.res_partner_title_id_seq'::regclass);


--
-- Name: res_users id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users ALTER COLUMN id SET DEFAULT nextval('public.res_users_id_seq'::regclass);


--
-- Name: res_users_log id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users_log ALTER COLUMN id SET DEFAULT nextval('public.res_users_log_id_seq'::regclass);


--
-- Name: sms_send_sms id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.sms_send_sms ALTER COLUMN id SET DEFAULT nextval('public.sms_send_sms_id_seq'::regclass);


--
-- Name: snailmail_letter id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter ALTER COLUMN id SET DEFAULT nextval('public.snailmail_letter_id_seq'::regclass);


--
-- Name: theme_ir_attachment id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_attachment ALTER COLUMN id SET DEFAULT nextval('public.theme_ir_attachment_id_seq'::regclass);


--
-- Name: theme_ir_ui_view id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_ui_view ALTER COLUMN id SET DEFAULT nextval('public.theme_ir_ui_view_id_seq'::regclass);


--
-- Name: theme_website_menu id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_menu ALTER COLUMN id SET DEFAULT nextval('public.theme_website_menu_id_seq'::regclass);


--
-- Name: theme_website_page id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_page ALTER COLUMN id SET DEFAULT nextval('public.theme_website_page_id_seq'::regclass);


--
-- Name: web_editor_converter_test id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test ALTER COLUMN id SET DEFAULT nextval('public.web_editor_converter_test_id_seq'::regclass);


--
-- Name: web_editor_converter_test_sub id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test_sub ALTER COLUMN id SET DEFAULT nextval('public.web_editor_converter_test_sub_id_seq'::regclass);


--
-- Name: web_tour_tour id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_tour_tour ALTER COLUMN id SET DEFAULT nextval('public.web_tour_tour_id_seq'::regclass);


--
-- Name: website id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website ALTER COLUMN id SET DEFAULT nextval('public.website_id_seq'::regclass);


--
-- Name: website_menu id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu ALTER COLUMN id SET DEFAULT nextval('public.website_menu_id_seq'::regclass);


--
-- Name: website_page id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page ALTER COLUMN id SET DEFAULT nextval('public.website_page_id_seq'::regclass);


--
-- Name: website_redirect id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_redirect ALTER COLUMN id SET DEFAULT nextval('public.website_redirect_id_seq'::regclass);


--
-- Name: wizard_ir_model_menu_create id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.wizard_ir_model_menu_create ALTER COLUMN id SET DEFAULT nextval('public.wizard_ir_model_menu_create_id_seq'::regclass);


--
-- Name: base_import_import base_import_import_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_import
    ADD CONSTRAINT base_import_import_pkey PRIMARY KEY (id);


--
-- Name: base_import_mapping base_import_mapping_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_mapping
    ADD CONSTRAINT base_import_mapping_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_char_noreadonly base_import_tests_models_char_noreadonly_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_noreadonly
    ADD CONSTRAINT base_import_tests_models_char_noreadonly_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_char base_import_tests_models_char_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char
    ADD CONSTRAINT base_import_tests_models_char_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_char_readonly base_import_tests_models_char_readonly_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_readonly
    ADD CONSTRAINT base_import_tests_models_char_readonly_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_char_required base_import_tests_models_char_required_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_required
    ADD CONSTRAINT base_import_tests_models_char_required_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_char_states base_import_tests_models_char_states_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_states
    ADD CONSTRAINT base_import_tests_models_char_states_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_char_stillreadonly base_import_tests_models_char_stillreadonly_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_stillreadonly
    ADD CONSTRAINT base_import_tests_models_char_stillreadonly_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_complex base_import_tests_models_complex_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_complex
    ADD CONSTRAINT base_import_tests_models_complex_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_float base_import_tests_models_float_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_float
    ADD CONSTRAINT base_import_tests_models_float_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_m2o base_import_tests_models_m2o_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o
    ADD CONSTRAINT base_import_tests_models_m2o_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_m2o_related base_import_tests_models_m2o_related_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_related
    ADD CONSTRAINT base_import_tests_models_m2o_related_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_m2o_required base_import_tests_models_m2o_required_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required
    ADD CONSTRAINT base_import_tests_models_m2o_required_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_m2o_required_related base_import_tests_models_m2o_required_related_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required_related
    ADD CONSTRAINT base_import_tests_models_m2o_required_related_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_o2m_child base_import_tests_models_o2m_child_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m_child
    ADD CONSTRAINT base_import_tests_models_o2m_child_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_o2m base_import_tests_models_o2m_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m
    ADD CONSTRAINT base_import_tests_models_o2m_pkey PRIMARY KEY (id);


--
-- Name: base_import_tests_models_preview base_import_tests_models_preview_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_preview
    ADD CONSTRAINT base_import_tests_models_preview_pkey PRIMARY KEY (id);


--
-- Name: base_language_export base_language_export_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_export
    ADD CONSTRAINT base_language_export_pkey PRIMARY KEY (id);


--
-- Name: base_language_import base_language_import_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_import
    ADD CONSTRAINT base_language_import_pkey PRIMARY KEY (id);


--
-- Name: base_language_install base_language_install_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install
    ADD CONSTRAINT base_language_install_pkey PRIMARY KEY (id);


--
-- Name: base_language_install_website_rel base_language_install_website_base_language_install_id_webs_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install_website_rel
    ADD CONSTRAINT base_language_install_website_base_language_install_id_webs_key UNIQUE (base_language_install_id, website_id);


--
-- Name: base_module_uninstall base_module_uninstall_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_uninstall
    ADD CONSTRAINT base_module_uninstall_pkey PRIMARY KEY (id);


--
-- Name: base_module_update base_module_update_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_update
    ADD CONSTRAINT base_module_update_pkey PRIMARY KEY (id);


--
-- Name: base_module_upgrade base_module_upgrade_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_upgrade
    ADD CONSTRAINT base_module_upgrade_pkey PRIMARY KEY (id);


--
-- Name: base_partner_merge_automatic_wizard_res_partner_rel base_partner_merge_automatic__base_partner_merge_automatic__key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard_res_partner_rel
    ADD CONSTRAINT base_partner_merge_automatic__base_partner_merge_automatic__key UNIQUE (base_partner_merge_automatic_wizard_id, res_partner_id);


--
-- Name: base_partner_merge_automatic_wizard base_partner_merge_automatic_wizard_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard
    ADD CONSTRAINT base_partner_merge_automatic_wizard_pkey PRIMARY KEY (id);


--
-- Name: base_partner_merge_line base_partner_merge_line_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_line
    ADD CONSTRAINT base_partner_merge_line_pkey PRIMARY KEY (id);


--
-- Name: base_update_translations base_update_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_update_translations
    ADD CONSTRAINT base_update_translations_pkey PRIMARY KEY (id);


--
-- Name: bus_bus bus_bus_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_pkey PRIMARY KEY (id);


--
-- Name: bus_presence bus_presence_bus_user_presence_unique; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_bus_user_presence_unique UNIQUE (user_id);


--
-- Name: CONSTRAINT bus_presence_bus_user_presence_unique ON bus_presence; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT bus_presence_bus_user_presence_unique ON public.bus_presence IS 'unique(user_id)';


--
-- Name: bus_presence bus_presence_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_pkey PRIMARY KEY (id);


--
-- Name: change_password_user change_password_user_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_user
    ADD CONSTRAINT change_password_user_pkey PRIMARY KEY (id);


--
-- Name: change_password_wizard change_password_wizard_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_wizard
    ADD CONSTRAINT change_password_wizard_pkey PRIMARY KEY (id);


--
-- Name: email_template_attachment_rel email_template_attachment_rel_email_template_id_attachment__key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_attachment_rel
    ADD CONSTRAINT email_template_attachment_rel_email_template_id_attachment__key UNIQUE (email_template_id, attachment_id);


--
-- Name: email_template_preview email_template_preview_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_pkey PRIMARY KEY (id);


--
-- Name: email_template_preview_res_partner_rel email_template_preview_res_pa_email_template_preview_id_res_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview_res_partner_rel
    ADD CONSTRAINT email_template_preview_res_pa_email_template_preview_id_res_key UNIQUE (email_template_preview_id, res_partner_id);


--
-- Name: fetchmail_server fetchmail_server_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fetchmail_server
    ADD CONSTRAINT fetchmail_server_pkey PRIMARY KEY (id);


--
-- Name: iap_account iap_account_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.iap_account
    ADD CONSTRAINT iap_account_pkey PRIMARY KEY (id);


--
-- Name: ir_act_client ir_act_client_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_pkey PRIMARY KEY (id);


--
-- Name: ir_act_report_xml ir_act_report_xml_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_pkey PRIMARY KEY (id);


--
-- Name: ir_act_server_mail_channel_rel ir_act_server_mail_channel_re_ir_act_server_id_mail_channel_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server_mail_channel_rel
    ADD CONSTRAINT ir_act_server_mail_channel_re_ir_act_server_id_mail_channel_key UNIQUE (ir_act_server_id, mail_channel_id);


--
-- Name: ir_act_server ir_act_server_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_pkey PRIMARY KEY (id);


--
-- Name: ir_act_server_res_partner_rel ir_act_server_res_partner_rel_ir_act_server_id_res_partner__key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server_res_partner_rel
    ADD CONSTRAINT ir_act_server_res_partner_rel_ir_act_server_id_res_partner__key UNIQUE (ir_act_server_id, res_partner_id);


--
-- Name: ir_act_url ir_act_url_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_pkey PRIMARY KEY (id);


--
-- Name: ir_act_window_group_rel ir_act_window_group_rel_act_id_gid_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_group_rel
    ADD CONSTRAINT ir_act_window_group_rel_act_id_gid_key UNIQUE (act_id, gid);


--
-- Name: ir_act_window ir_act_window_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window
    ADD CONSTRAINT ir_act_window_pkey PRIMARY KEY (id);


--
-- Name: ir_act_window_view ir_act_window_view_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_pkey PRIMARY KEY (id);


--
-- Name: ir_actions ir_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_pkey PRIMARY KEY (id);


--
-- Name: ir_actions_todo ir_actions_todo_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions_todo
    ADD CONSTRAINT ir_actions_todo_pkey PRIMARY KEY (id);


--
-- Name: ir_attachment ir_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_pkey PRIMARY KEY (id);


--
-- Name: ir_config_parameter ir_config_parameter_key_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_key_uniq UNIQUE (key);


--
-- Name: CONSTRAINT ir_config_parameter_key_uniq ON ir_config_parameter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_config_parameter_key_uniq ON public.ir_config_parameter IS 'unique (key)';


--
-- Name: ir_config_parameter ir_config_parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_pkey PRIMARY KEY (id);


--
-- Name: ir_cron ir_cron_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_pkey PRIMARY KEY (id);


--
-- Name: ir_default ir_default_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_pkey PRIMARY KEY (id);


--
-- Name: ir_demo_failure ir_demo_failure_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_pkey PRIMARY KEY (id);


--
-- Name: ir_demo_failure_wizard ir_demo_failure_wizard_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure_wizard
    ADD CONSTRAINT ir_demo_failure_wizard_pkey PRIMARY KEY (id);


--
-- Name: ir_demo ir_demo_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo
    ADD CONSTRAINT ir_demo_pkey PRIMARY KEY (id);


--
-- Name: ir_exports_line ir_exports_line_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports_line
    ADD CONSTRAINT ir_exports_line_pkey PRIMARY KEY (id);


--
-- Name: ir_exports ir_exports_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports
    ADD CONSTRAINT ir_exports_pkey PRIMARY KEY (id);


--
-- Name: ir_filters ir_filters_name_model_uid_unique; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_name_model_uid_unique UNIQUE (name, model_id, user_id, action_id);


--
-- Name: CONSTRAINT ir_filters_name_model_uid_unique ON ir_filters; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_filters_name_model_uid_unique ON public.ir_filters IS 'unique (name, model_id, user_id, action_id)';


--
-- Name: ir_filters ir_filters_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_pkey PRIMARY KEY (id);


--
-- Name: ir_logging ir_logging_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_logging
    ADD CONSTRAINT ir_logging_pkey PRIMARY KEY (id);


--
-- Name: ir_mail_server ir_mail_server_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_mail_server
    ADD CONSTRAINT ir_mail_server_pkey PRIMARY KEY (id);


--
-- Name: ir_model_access ir_model_access_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_pkey PRIMARY KEY (id);


--
-- Name: ir_model_constraint ir_model_constraint_module_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_module_name_uniq UNIQUE (name, module);


--
-- Name: CONSTRAINT ir_model_constraint_module_name_uniq ON ir_model_constraint; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_model_constraint_module_name_uniq ON public.ir_model_constraint IS 'unique(name, module)';


--
-- Name: ir_model_constraint ir_model_constraint_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_pkey PRIMARY KEY (id);


--
-- Name: ir_model_data ir_model_data_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_data
    ADD CONSTRAINT ir_model_data_pkey PRIMARY KEY (id);


--
-- Name: ir_model_fields_group_rel ir_model_fields_group_rel_field_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields_group_rel
    ADD CONSTRAINT ir_model_fields_group_rel_field_id_group_id_key UNIQUE (field_id, group_id);


--
-- Name: ir_model_fields ir_model_fields_name_unique; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_name_unique UNIQUE (model, name);


--
-- Name: CONSTRAINT ir_model_fields_name_unique ON ir_model_fields; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_model_fields_name_unique ON public.ir_model_fields IS 'UNIQUE(model, name)';


--
-- Name: ir_model_fields ir_model_fields_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_pkey PRIMARY KEY (id);


--
-- Name: ir_model ir_model_obj_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model
    ADD CONSTRAINT ir_model_obj_name_uniq UNIQUE (model);


--
-- Name: CONSTRAINT ir_model_obj_name_uniq ON ir_model; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_model_obj_name_uniq ON public.ir_model IS 'unique (model)';


--
-- Name: ir_model ir_model_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model
    ADD CONSTRAINT ir_model_pkey PRIMARY KEY (id);


--
-- Name: ir_model_relation ir_model_relation_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_pkey PRIMARY KEY (id);


--
-- Name: ir_module_category ir_module_category_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_pkey PRIMARY KEY (id);


--
-- Name: ir_module_module_dependency ir_module_module_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_dependency
    ADD CONSTRAINT ir_module_module_dependency_pkey PRIMARY KEY (id);


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_pkey PRIMARY KEY (id);


--
-- Name: ir_module_module ir_module_module_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module
    ADD CONSTRAINT ir_module_module_name_uniq UNIQUE (name);


--
-- Name: CONSTRAINT ir_module_module_name_uniq ON ir_module_module; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_module_module_name_uniq ON public.ir_module_module IS 'UNIQUE (name)';


--
-- Name: ir_module_module ir_module_module_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module
    ADD CONSTRAINT ir_module_module_pkey PRIMARY KEY (id);


--
-- Name: ir_property ir_property_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_pkey PRIMARY KEY (id);


--
-- Name: ir_rule ir_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence_date_range ir_sequence_date_range_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence ir_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_pkey PRIMARY KEY (id);


--
-- Name: ir_server_object_lines ir_server_object_lines_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_pkey PRIMARY KEY (id);


--
-- Name: ir_translation ir_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_translation
    ADD CONSTRAINT ir_translation_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_menu_group_rel ir_ui_menu_group_rel_menu_id_gid_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu_group_rel
    ADD CONSTRAINT ir_ui_menu_group_rel_menu_id_gid_key UNIQUE (menu_id, gid);


--
-- Name: ir_ui_menu ir_ui_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_view_custom ir_ui_view_custom_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_custom
    ADD CONSTRAINT ir_ui_view_custom_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_view_group_rel ir_ui_view_group_rel_view_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_group_rel
    ADD CONSTRAINT ir_ui_view_group_rel_view_id_group_id_key UNIQUE (view_id, group_id);


--
-- Name: ir_ui_view ir_ui_view_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_pkey PRIMARY KEY (id);


--
-- Name: mail_activity mail_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_pkey PRIMARY KEY (id);


--
-- Name: mail_activity_rel mail_activity_rel_activity_id_recommended_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_rel
    ADD CONSTRAINT mail_activity_rel_activity_id_recommended_id_key UNIQUE (activity_id, recommended_id);


--
-- Name: mail_activity_type_mail_template_rel mail_activity_type_mail_templ_mail_activity_type_id_mail_te_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type_mail_template_rel
    ADD CONSTRAINT mail_activity_type_mail_templ_mail_activity_type_id_mail_te_key UNIQUE (mail_activity_type_id, mail_template_id);


--
-- Name: mail_activity_type mail_activity_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type
    ADD CONSTRAINT mail_activity_type_pkey PRIMARY KEY (id);


--
-- Name: mail_alias mail_alias_alias_unique; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_alias_unique UNIQUE (alias_name);


--
-- Name: CONSTRAINT mail_alias_alias_unique ON mail_alias; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT mail_alias_alias_unique ON public.mail_alias IS 'UNIQUE(alias_name)';


--
-- Name: mail_alias mail_alias_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_pkey PRIMARY KEY (id);


--
-- Name: mail_blacklist mail_blacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_blacklist
    ADD CONSTRAINT mail_blacklist_pkey PRIMARY KEY (id);


--
-- Name: mail_blacklist mail_blacklist_unique_email; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_blacklist
    ADD CONSTRAINT mail_blacklist_unique_email UNIQUE (email);


--
-- Name: CONSTRAINT mail_blacklist_unique_email ON mail_blacklist; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT mail_blacklist_unique_email ON public.mail_blacklist IS 'unique (email)';


--
-- Name: mail_channel_mail_wizard_invite_rel mail_channel_mail_wizard_invi_mail_wizard_invite_id_mail_ch_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_mail_wizard_invite_rel
    ADD CONSTRAINT mail_channel_mail_wizard_invi_mail_wizard_invite_id_mail_ch_key UNIQUE (mail_wizard_invite_id, mail_channel_id);


--
-- Name: mail_channel_moderator_rel mail_channel_moderator_rel_mail_channel_id_res_users_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_moderator_rel
    ADD CONSTRAINT mail_channel_moderator_rel_mail_channel_id_res_users_id_key UNIQUE (mail_channel_id, res_users_id);


--
-- Name: mail_channel_partner mail_channel_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner
    ADD CONSTRAINT mail_channel_partner_pkey PRIMARY KEY (id);


--
-- Name: mail_channel mail_channel_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel
    ADD CONSTRAINT mail_channel_pkey PRIMARY KEY (id);


--
-- Name: mail_channel_res_groups_rel mail_channel_res_groups_rel_mail_channel_id_res_groups_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_res_groups_rel
    ADD CONSTRAINT mail_channel_res_groups_rel_mail_channel_id_res_groups_id_key UNIQUE (mail_channel_id, res_groups_id);


--
-- Name: mail_compose_message_ir_attachments_rel mail_compose_message_ir_attachments_wizard_id_attachment_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message_ir_attachments_rel
    ADD CONSTRAINT mail_compose_message_ir_attachments_wizard_id_attachment_id_key UNIQUE (wizard_id, attachment_id);


--
-- Name: mail_compose_message mail_compose_message_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_pkey PRIMARY KEY (id);


--
-- Name: mail_compose_message_res_partner_rel mail_compose_message_res_partner_rel_wizard_id_partner_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message_res_partner_rel
    ADD CONSTRAINT mail_compose_message_res_partner_rel_wizard_id_partner_id_key UNIQUE (wizard_id, partner_id);


--
-- Name: mail_followers mail_followers_mail_followers_res_channel_res_model_id_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers
    ADD CONSTRAINT mail_followers_mail_followers_res_channel_res_model_id_uniq UNIQUE (res_model, res_id, channel_id);


--
-- Name: CONSTRAINT mail_followers_mail_followers_res_channel_res_model_id_uniq ON mail_followers; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT mail_followers_mail_followers_res_channel_res_model_id_uniq ON public.mail_followers IS 'unique(res_model,res_id,channel_id)';


--
-- Name: mail_followers mail_followers_mail_followers_res_partner_res_model_id_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers
    ADD CONSTRAINT mail_followers_mail_followers_res_partner_res_model_id_uniq UNIQUE (res_model, res_id, partner_id);


--
-- Name: CONSTRAINT mail_followers_mail_followers_res_partner_res_model_id_uniq ON mail_followers; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT mail_followers_mail_followers_res_partner_res_model_id_uniq ON public.mail_followers IS 'unique(res_model,res_id,partner_id)';


--
-- Name: mail_followers_mail_message_subtype_rel mail_followers_mail_message_s_mail_followers_id_mail_messag_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers_mail_message_subtype_rel
    ADD CONSTRAINT mail_followers_mail_message_s_mail_followers_id_mail_messag_key UNIQUE (mail_followers_id, mail_message_subtype_id);


--
-- Name: mail_followers mail_followers_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers
    ADD CONSTRAINT mail_followers_pkey PRIMARY KEY (id);


--
-- Name: mail_mail mail_mail_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail
    ADD CONSTRAINT mail_mail_pkey PRIMARY KEY (id);


--
-- Name: mail_mail_res_partner_rel mail_mail_res_partner_rel_mail_mail_id_res_partner_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail_res_partner_rel
    ADD CONSTRAINT mail_mail_res_partner_rel_mail_mail_id_res_partner_id_key UNIQUE (mail_mail_id, res_partner_id);


--
-- Name: mail_message_mail_channel_rel mail_message_mail_channel_rel_mail_message_id_mail_channel__key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_mail_channel_rel
    ADD CONSTRAINT mail_message_mail_channel_rel_mail_message_id_mail_channel__key UNIQUE (mail_message_id, mail_channel_id);


--
-- Name: mail_message mail_message_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_pkey PRIMARY KEY (id);


--
-- Name: mail_message_res_partner_needaction_rel_mail_resend_message_rel mail_message_res_partner_need_mail_resend_message_id_mail_m_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel_mail_resend_message_rel
    ADD CONSTRAINT mail_message_res_partner_need_mail_resend_message_id_mail_m_key UNIQUE (mail_resend_message_id, mail_message_res_partner_needaction_rel_id);


--
-- Name: mail_message_res_partner_needaction_rel mail_message_res_partner_needaction_rel_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel
    ADD CONSTRAINT mail_message_res_partner_needaction_rel_pkey PRIMARY KEY (id);


--
-- Name: mail_message_res_partner_rel mail_message_res_partner_rel_mail_message_id_res_partner_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_rel
    ADD CONSTRAINT mail_message_res_partner_rel_mail_message_id_res_partner_id_key UNIQUE (mail_message_id, res_partner_id);


--
-- Name: mail_message_res_partner_starred_rel mail_message_res_partner_star_mail_message_id_res_partner_i_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_starred_rel
    ADD CONSTRAINT mail_message_res_partner_star_mail_message_id_res_partner_i_key UNIQUE (mail_message_id, res_partner_id);


--
-- Name: mail_message_subtype mail_message_subtype_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_subtype
    ADD CONSTRAINT mail_message_subtype_pkey PRIMARY KEY (id);


--
-- Name: mail_moderation mail_moderation_channel_email_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_moderation
    ADD CONSTRAINT mail_moderation_channel_email_uniq UNIQUE (email, channel_id);


--
-- Name: CONSTRAINT mail_moderation_channel_email_uniq ON mail_moderation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT mail_moderation_channel_email_uniq ON public.mail_moderation IS 'unique (email,channel_id)';


--
-- Name: mail_moderation mail_moderation_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_moderation
    ADD CONSTRAINT mail_moderation_pkey PRIMARY KEY (id);


--
-- Name: mail_resend_cancel mail_resend_cancel_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_cancel
    ADD CONSTRAINT mail_resend_cancel_pkey PRIMARY KEY (id);


--
-- Name: mail_resend_message mail_resend_message_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_message
    ADD CONSTRAINT mail_resend_message_pkey PRIMARY KEY (id);


--
-- Name: mail_resend_partner mail_resend_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_partner
    ADD CONSTRAINT mail_resend_partner_pkey PRIMARY KEY (id);


--
-- Name: mail_shortcode mail_shortcode_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_shortcode
    ADD CONSTRAINT mail_shortcode_pkey PRIMARY KEY (id);


--
-- Name: mail_template mail_template_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_pkey PRIMARY KEY (id);


--
-- Name: mail_tracking_value mail_tracking_value_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_tracking_value
    ADD CONSTRAINT mail_tracking_value_pkey PRIMARY KEY (id);


--
-- Name: mail_wizard_invite mail_wizard_invite_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite
    ADD CONSTRAINT mail_wizard_invite_pkey PRIMARY KEY (id);


--
-- Name: mail_wizard_invite_res_partner_rel mail_wizard_invite_res_partne_mail_wizard_invite_id_res_par_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite_res_partner_rel
    ADD CONSTRAINT mail_wizard_invite_res_partne_mail_wizard_invite_id_res_par_key UNIQUE (mail_wizard_invite_id, res_partner_id);


--
-- Name: message_attachment_rel message_attachment_rel_message_id_attachment_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.message_attachment_rel
    ADD CONSTRAINT message_attachment_rel_message_id_attachment_id_key UNIQUE (message_id, attachment_id);


--
-- Name: ir_module_module name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module
    ADD CONSTRAINT name_uniq UNIQUE (name);


--
-- Name: portal_share portal_share_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share
    ADD CONSTRAINT portal_share_pkey PRIMARY KEY (id);


--
-- Name: portal_share_res_partner_rel portal_share_res_partner_rel_portal_share_id_res_partner_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share_res_partner_rel
    ADD CONSTRAINT portal_share_res_partner_rel_portal_share_id_res_partner_id_key UNIQUE (portal_share_id, res_partner_id);


--
-- Name: portal_wizard portal_wizard_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard
    ADD CONSTRAINT portal_wizard_pkey PRIMARY KEY (id);


--
-- Name: portal_wizard_user portal_wizard_user_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user
    ADD CONSTRAINT portal_wizard_user_pkey PRIMARY KEY (id);


--
-- Name: rel_modules_langexport rel_modules_langexport_wiz_id_module_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rel_modules_langexport
    ADD CONSTRAINT rel_modules_langexport_wiz_id_module_id_key UNIQUE (wiz_id, module_id);


--
-- Name: rel_server_actions rel_server_actions_server_id_action_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rel_server_actions
    ADD CONSTRAINT rel_server_actions_server_id_action_id_key UNIQUE (server_id, action_id);


--
-- Name: report_layout report_layout_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_layout
    ADD CONSTRAINT report_layout_pkey PRIMARY KEY (id);


--
-- Name: report_paperformat report_paperformat_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_paperformat
    ADD CONSTRAINT report_paperformat_pkey PRIMARY KEY (id);


--
-- Name: res_bank res_bank_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_bank
    ADD CONSTRAINT res_bank_pkey PRIMARY KEY (id);


--
-- Name: res_company res_company_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_name_uniq UNIQUE (name);


--
-- Name: CONSTRAINT res_company_name_uniq ON res_company; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_company_name_uniq ON public.res_company IS 'unique (name)';


--
-- Name: res_company res_company_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_pkey PRIMARY KEY (id);


--
-- Name: res_company_users_rel res_company_users_rel_cid_user_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company_users_rel
    ADD CONSTRAINT res_company_users_rel_cid_user_id_key UNIQUE (cid, user_id);


--
-- Name: res_config_installer res_config_installer_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_installer
    ADD CONSTRAINT res_config_installer_pkey PRIMARY KEY (id);


--
-- Name: res_config res_config_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config
    ADD CONSTRAINT res_config_pkey PRIMARY KEY (id);


--
-- Name: res_config_settings res_config_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings
    ADD CONSTRAINT res_config_settings_pkey PRIMARY KEY (id);


--
-- Name: res_country res_country_code_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_code_uniq UNIQUE (code);


--
-- Name: CONSTRAINT res_country_code_uniq ON res_country; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_country_code_uniq ON public.res_country IS 'unique (code)';


--
-- Name: res_country_group res_country_group_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_group
    ADD CONSTRAINT res_country_group_pkey PRIMARY KEY (id);


--
-- Name: res_country res_country_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_name_uniq UNIQUE (name);


--
-- Name: CONSTRAINT res_country_name_uniq ON res_country; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_country_name_uniq ON public.res_country IS 'unique (name)';


--
-- Name: res_country res_country_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_pkey PRIMARY KEY (id);


--
-- Name: res_country_res_country_group_rel res_country_res_country_group_res_country_id_res_country_gr_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_res_country_group_rel
    ADD CONSTRAINT res_country_res_country_group_res_country_id_res_country_gr_key UNIQUE (res_country_id, res_country_group_id);


--
-- Name: res_country_state res_country_state_name_code_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_state
    ADD CONSTRAINT res_country_state_name_code_uniq UNIQUE (country_id, code);


--
-- Name: CONSTRAINT res_country_state_name_code_uniq ON res_country_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_country_state_name_code_uniq ON public.res_country_state IS 'unique(country_id, code)';


--
-- Name: res_country_state res_country_state_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_state
    ADD CONSTRAINT res_country_state_pkey PRIMARY KEY (id);


--
-- Name: res_currency res_currency_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency
    ADD CONSTRAINT res_currency_pkey PRIMARY KEY (id);


--
-- Name: res_currency_rate res_currency_rate_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate
    ADD CONSTRAINT res_currency_rate_pkey PRIMARY KEY (id);


--
-- Name: res_currency_rate res_currency_rate_unique_name_per_day; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate
    ADD CONSTRAINT res_currency_rate_unique_name_per_day UNIQUE (name, currency_id, company_id);


--
-- Name: CONSTRAINT res_currency_rate_unique_name_per_day ON res_currency_rate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_currency_rate_unique_name_per_day ON public.res_currency_rate IS 'unique (name,currency_id,company_id)';


--
-- Name: res_currency res_currency_unique_name; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency
    ADD CONSTRAINT res_currency_unique_name UNIQUE (name);


--
-- Name: CONSTRAINT res_currency_unique_name ON res_currency; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_currency_unique_name ON public.res_currency IS 'unique (name)';


--
-- Name: res_groups_implied_rel res_groups_implied_rel_gid_hid_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_implied_rel
    ADD CONSTRAINT res_groups_implied_rel_gid_hid_key UNIQUE (gid, hid);


--
-- Name: res_groups res_groups_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups
    ADD CONSTRAINT res_groups_name_uniq UNIQUE (category_id, name);


--
-- Name: CONSTRAINT res_groups_name_uniq ON res_groups; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_groups_name_uniq ON public.res_groups IS 'unique (category_id, name)';


--
-- Name: res_groups res_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups
    ADD CONSTRAINT res_groups_pkey PRIMARY KEY (id);


--
-- Name: res_groups_report_rel res_groups_report_rel_uid_gid_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_report_rel
    ADD CONSTRAINT res_groups_report_rel_uid_gid_key UNIQUE (uid, gid);


--
-- Name: res_groups_users_rel res_groups_users_rel_gid_uid_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_users_rel
    ADD CONSTRAINT res_groups_users_rel_gid_uid_key UNIQUE (gid, uid);


--
-- Name: res_lang res_lang_code_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_lang
    ADD CONSTRAINT res_lang_code_uniq UNIQUE (code);


--
-- Name: CONSTRAINT res_lang_code_uniq ON res_lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_lang_code_uniq ON public.res_lang IS 'unique(code)';


--
-- Name: res_lang res_lang_name_uniq; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_lang
    ADD CONSTRAINT res_lang_name_uniq UNIQUE (name);


--
-- Name: CONSTRAINT res_lang_name_uniq ON res_lang; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_lang_name_uniq ON public.res_lang IS 'unique(name)';


--
-- Name: res_lang res_lang_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_lang
    ADD CONSTRAINT res_lang_pkey PRIMARY KEY (id);


--
-- Name: res_partner_autocomplete_sync res_partner_autocomplete_sync_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_autocomplete_sync
    ADD CONSTRAINT res_partner_autocomplete_sync_pkey PRIMARY KEY (id);


--
-- Name: res_partner_bank res_partner_bank_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_pkey PRIMARY KEY (id);


--
-- Name: res_partner_bank res_partner_bank_unique_number; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_unique_number UNIQUE (sanitized_acc_number, company_id);


--
-- Name: CONSTRAINT res_partner_bank_unique_number ON res_partner_bank; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_partner_bank_unique_number ON public.res_partner_bank IS 'unique(sanitized_acc_number, company_id)';


--
-- Name: res_partner_category res_partner_category_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_category
    ADD CONSTRAINT res_partner_category_pkey PRIMARY KEY (id);


--
-- Name: res_partner_industry res_partner_industry_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_industry
    ADD CONSTRAINT res_partner_industry_pkey PRIMARY KEY (id);


--
-- Name: res_partner res_partner_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_pkey PRIMARY KEY (id);


--
-- Name: res_partner_res_partner_category_rel res_partner_res_partner_category_rel_category_id_partner_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_res_partner_category_rel
    ADD CONSTRAINT res_partner_res_partner_category_rel_category_id_partner_id_key UNIQUE (category_id, partner_id);


--
-- Name: res_partner_title res_partner_title_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_title
    ADD CONSTRAINT res_partner_title_pkey PRIMARY KEY (id);


--
-- Name: res_users_log res_users_log_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users_log
    ADD CONSTRAINT res_users_log_pkey PRIMARY KEY (id);


--
-- Name: res_users res_users_login_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_login_key UNIQUE (login, website_id);


--
-- Name: CONSTRAINT res_users_login_key ON res_users; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT res_users_login_key ON public.res_users IS 'unique (login, website_id)';


--
-- Name: res_users res_users_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_pkey PRIMARY KEY (id);


--
-- Name: rule_group_rel rule_group_rel_rule_group_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rule_group_rel
    ADD CONSTRAINT rule_group_rel_rule_group_id_group_id_key UNIQUE (rule_group_id, group_id);


--
-- Name: sms_send_sms sms_send_sms_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.sms_send_sms
    ADD CONSTRAINT sms_send_sms_pkey PRIMARY KEY (id);


--
-- Name: snailmail_letter snailmail_letter_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_pkey PRIMARY KEY (id);


--
-- Name: theme_ir_attachment theme_ir_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_attachment
    ADD CONSTRAINT theme_ir_attachment_pkey PRIMARY KEY (id);


--
-- Name: theme_ir_ui_view theme_ir_ui_view_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_ui_view
    ADD CONSTRAINT theme_ir_ui_view_pkey PRIMARY KEY (id);


--
-- Name: theme_website_menu theme_website_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_menu
    ADD CONSTRAINT theme_website_menu_pkey PRIMARY KEY (id);


--
-- Name: theme_website_page theme_website_page_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_page
    ADD CONSTRAINT theme_website_page_pkey PRIMARY KEY (id);


--
-- Name: web_editor_converter_test web_editor_converter_test_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test
    ADD CONSTRAINT web_editor_converter_test_pkey PRIMARY KEY (id);


--
-- Name: web_editor_converter_test_sub web_editor_converter_test_sub_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test_sub
    ADD CONSTRAINT web_editor_converter_test_sub_pkey PRIMARY KEY (id);


--
-- Name: web_tour_tour web_tour_tour_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_tour_tour
    ADD CONSTRAINT web_tour_tour_pkey PRIMARY KEY (id);


--
-- Name: website_country_group_rel website_country_group_rel_website_id_country_group_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_country_group_rel
    ADD CONSTRAINT website_country_group_rel_website_id_country_group_id_key UNIQUE (website_id, country_group_id);


--
-- Name: website_lang_rel website_lang_rel_website_id_lang_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_lang_rel
    ADD CONSTRAINT website_lang_rel_website_id_lang_id_key UNIQUE (website_id, lang_id);


--
-- Name: website_menu website_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_pkey PRIMARY KEY (id);


--
-- Name: website_page website_page_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page
    ADD CONSTRAINT website_page_pkey PRIMARY KEY (id);


--
-- Name: website website_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_pkey PRIMARY KEY (id);


--
-- Name: website_redirect website_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_redirect
    ADD CONSTRAINT website_redirect_pkey PRIMARY KEY (id);


--
-- Name: wizard_ir_model_menu_create wizard_ir_model_menu_create_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.wizard_ir_model_menu_create
    ADD CONSTRAINT wizard_ir_model_menu_create_pkey PRIMARY KEY (id);


--
-- Name: act_window_view_unique_mode_per_action; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX act_window_view_unique_mode_per_action ON public.ir_act_window_view USING btree (act_window_id, view_mode);


--
-- Name: base_import_mapping_res_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX base_import_mapping_res_model_index ON public.base_import_mapping USING btree (res_model);


--
-- Name: base_language_install_website_rel_base_language_install_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX base_language_install_website_rel_base_language_install_id_idx ON public.base_language_install_website_rel USING btree (base_language_install_id);


--
-- Name: base_language_install_website_rel_website_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX base_language_install_website_rel_website_id_idx ON public.base_language_install_website_rel USING btree (website_id);


--
-- Name: base_partner_merge_automatic__base_partner_merge_automatic__idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX base_partner_merge_automatic__base_partner_merge_automatic__idx ON public.base_partner_merge_automatic_wizard_res_partner_rel USING btree (base_partner_merge_automatic_wizard_id);


--
-- Name: base_partner_merge_automatic_wizard_res_part_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX base_partner_merge_automatic_wizard_res_part_res_partner_id_idx ON public.base_partner_merge_automatic_wizard_res_partner_rel USING btree (res_partner_id);


--
-- Name: bus_presence_user_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX bus_presence_user_id_index ON public.bus_presence USING btree (user_id);


--
-- Name: email_template_attachment_rel_attachment_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX email_template_attachment_rel_attachment_id_idx ON public.email_template_attachment_rel USING btree (attachment_id);


--
-- Name: email_template_attachment_rel_email_template_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX email_template_attachment_rel_email_template_id_idx ON public.email_template_attachment_rel USING btree (email_template_id);


--
-- Name: email_template_preview_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX email_template_preview_model_index ON public.email_template_preview USING btree (model);


--
-- Name: email_template_preview_res_partne_email_template_preview_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX email_template_preview_res_partne_email_template_preview_id_idx ON public.email_template_preview_res_partner_rel USING btree (email_template_preview_id);


--
-- Name: email_template_preview_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX email_template_preview_res_partner_rel_res_partner_id_idx ON public.email_template_preview_res_partner_rel USING btree (res_partner_id);


--
-- Name: fetchmail_server_state_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fetchmail_server_state_index ON public.fetchmail_server USING btree (state);


--
-- Name: fetchmail_server_type_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fetchmail_server_type_index ON public.fetchmail_server USING btree (type);


--
-- Name: ir_act_server_mail_channel_rel_ir_act_server_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_act_server_mail_channel_rel_ir_act_server_id_idx ON public.ir_act_server_mail_channel_rel USING btree (ir_act_server_id);


--
-- Name: ir_act_server_mail_channel_rel_mail_channel_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_act_server_mail_channel_rel_mail_channel_id_idx ON public.ir_act_server_mail_channel_rel USING btree (mail_channel_id);


--
-- Name: ir_act_server_res_partner_rel_ir_act_server_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_act_server_res_partner_rel_ir_act_server_id_idx ON public.ir_act_server_res_partner_rel USING btree (ir_act_server_id);


--
-- Name: ir_act_server_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_act_server_res_partner_rel_res_partner_id_idx ON public.ir_act_server_res_partner_rel USING btree (res_partner_id);


--
-- Name: ir_act_window_group_rel_act_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_act_window_group_rel_act_id_idx ON public.ir_act_window_group_rel USING btree (act_id);


--
-- Name: ir_act_window_group_rel_gid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_act_window_group_rel_gid_idx ON public.ir_act_window_group_rel USING btree (gid);


--
-- Name: ir_actions_todo_action_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_actions_todo_action_id_index ON public.ir_actions_todo USING btree (action_id);


--
-- Name: ir_attachment_checksum_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_attachment_checksum_index ON public.ir_attachment USING btree (checksum);


--
-- Name: ir_attachment_res_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_attachment_res_idx ON public.ir_attachment USING btree (res_model, res_id);


--
-- Name: ir_attachment_res_model_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_attachment_res_model_name_index ON public.ir_attachment USING btree (res_model_name);


--
-- Name: ir_attachment_url_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_attachment_url_index ON public.ir_attachment USING btree (url);


--
-- Name: ir_config_parameter_key_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_config_parameter_key_index ON public.ir_config_parameter USING btree (key);


--
-- Name: ir_default_company_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_default_company_id_index ON public.ir_default USING btree (company_id);


--
-- Name: ir_default_field_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_default_field_id_index ON public.ir_default USING btree (field_id);


--
-- Name: ir_default_user_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_default_user_id_index ON public.ir_default USING btree (user_id);


--
-- Name: ir_exports_line_export_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_exports_line_export_id_index ON public.ir_exports_line USING btree (export_id);


--
-- Name: ir_exports_resource_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_exports_resource_index ON public.ir_exports USING btree (resource);


--
-- Name: ir_filters_name_model_uid_unique_action_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ir_filters_name_model_uid_unique_action_index ON public.ir_filters USING btree (lower((name)::text), model_id, COALESCE(user_id, '-1'::integer), COALESCE(action_id, '-1'::integer));


--
-- Name: ir_logging_dbname_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_logging_dbname_index ON public.ir_logging USING btree (dbname);


--
-- Name: ir_logging_level_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_logging_level_index ON public.ir_logging USING btree (level);


--
-- Name: ir_logging_type_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_logging_type_index ON public.ir_logging USING btree (type);


--
-- Name: ir_mail_server_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_mail_server_name_index ON public.ir_mail_server USING btree (name);


--
-- Name: ir_model_access_group_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_access_group_id_index ON public.ir_model_access USING btree (group_id);


--
-- Name: ir_model_access_model_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_access_model_id_index ON public.ir_model_access USING btree (model_id);


--
-- Name: ir_model_access_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_access_name_index ON public.ir_model_access USING btree (name);


--
-- Name: ir_model_constraint_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_constraint_model_index ON public.ir_model_constraint USING btree (model);


--
-- Name: ir_model_constraint_module_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_constraint_module_index ON public.ir_model_constraint USING btree (module);


--
-- Name: ir_model_constraint_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_constraint_name_index ON public.ir_model_constraint USING btree (name);


--
-- Name: ir_model_constraint_type_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_constraint_type_index ON public.ir_model_constraint USING btree (type);


--
-- Name: ir_model_data_model_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_data_model_res_id_index ON public.ir_model_data USING btree (model, res_id);


--
-- Name: ir_model_data_module_name_uniq_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ir_model_data_module_name_uniq_index ON public.ir_model_data USING btree (module, name);


--
-- Name: ir_model_fields_complete_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_complete_name_index ON public.ir_model_fields USING btree (complete_name);


--
-- Name: ir_model_fields_group_rel_field_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_group_rel_field_id_idx ON public.ir_model_fields_group_rel USING btree (field_id);


--
-- Name: ir_model_fields_group_rel_group_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_group_rel_group_id_idx ON public.ir_model_fields_group_rel USING btree (group_id);


--
-- Name: ir_model_fields_model_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_model_id_index ON public.ir_model_fields USING btree (model_id);


--
-- Name: ir_model_fields_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_model_index ON public.ir_model_fields USING btree (model);


--
-- Name: ir_model_fields_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_name_index ON public.ir_model_fields USING btree (name);


--
-- Name: ir_model_fields_state_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_fields_state_index ON public.ir_model_fields USING btree (state);


--
-- Name: ir_model_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_model_index ON public.ir_model USING btree (model);


--
-- Name: ir_model_relation_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_relation_model_index ON public.ir_model_relation USING btree (model);


--
-- Name: ir_model_relation_module_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_relation_module_index ON public.ir_model_relation USING btree (module);


--
-- Name: ir_model_relation_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_model_relation_name_index ON public.ir_model_relation USING btree (name);


--
-- Name: ir_module_category_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_category_name_index ON public.ir_module_category USING btree (name);


--
-- Name: ir_module_category_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_category_parent_id_index ON public.ir_module_category USING btree (parent_id);


--
-- Name: ir_module_module_category_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_module_category_id_index ON public.ir_module_module USING btree (category_id);


--
-- Name: ir_module_module_dependency_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_module_dependency_name_index ON public.ir_module_module_dependency USING btree (name);


--
-- Name: ir_module_module_exclusion_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_module_exclusion_name_index ON public.ir_module_module_exclusion USING btree (name);


--
-- Name: ir_module_module_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_module_name_index ON public.ir_module_module USING btree (name);


--
-- Name: ir_module_module_state_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_module_module_state_index ON public.ir_module_module USING btree (state);


--
-- Name: ir_property_company_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_property_company_id_index ON public.ir_property USING btree (company_id);


--
-- Name: ir_property_fields_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_property_fields_id_index ON public.ir_property USING btree (fields_id);


--
-- Name: ir_property_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_property_name_index ON public.ir_property USING btree (name);


--
-- Name: ir_property_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_property_res_id_index ON public.ir_property USING btree (res_id);


--
-- Name: ir_property_type_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_property_type_index ON public.ir_property USING btree (type);


--
-- Name: ir_rule_model_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_rule_model_id_index ON public.ir_rule USING btree (model_id);


--
-- Name: ir_rule_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_rule_name_index ON public.ir_rule USING btree (name);


--
-- Name: ir_translation_code_unique; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ir_translation_code_unique ON public.ir_translation USING btree (type, lang, md5(src)) WHERE ((type)::text = 'code'::text);


--
-- Name: ir_translation_comments_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_translation_comments_index ON public.ir_translation USING btree (comments);


--
-- Name: ir_translation_model_unique; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ir_translation_model_unique ON public.ir_translation USING btree (type, lang, name, res_id) WHERE ((type)::text = 'model'::text);


--
-- Name: ir_translation_module_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_translation_module_index ON public.ir_translation USING btree (module);


--
-- Name: ir_translation_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_translation_res_id_index ON public.ir_translation USING btree (res_id);


--
-- Name: ir_translation_selection_unique; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ir_translation_selection_unique ON public.ir_translation USING btree (type, lang, name, md5(src)) WHERE ((type)::text = ANY ((ARRAY['selection'::character varying, 'constraint'::character varying, 'sql_constraint'::character varying])::text[]));


--
-- Name: ir_translation_src_md5; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_translation_src_md5 ON public.ir_translation USING btree (md5(src));


--
-- Name: ir_translation_type_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_translation_type_index ON public.ir_translation USING btree (type);


--
-- Name: ir_translation_unique; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ir_translation_unique ON public.ir_translation USING btree (type, name, lang, res_id, md5(src));


--
-- Name: ir_ui_menu_group_rel_gid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_menu_group_rel_gid_idx ON public.ir_ui_menu_group_rel USING btree (gid);


--
-- Name: ir_ui_menu_group_rel_menu_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_menu_group_rel_menu_id_idx ON public.ir_ui_menu_group_rel USING btree (menu_id);


--
-- Name: ir_ui_menu_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_menu_parent_id_index ON public.ir_ui_menu USING btree (parent_id);


--
-- Name: ir_ui_menu_parent_path_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_menu_parent_path_index ON public.ir_ui_menu USING btree (parent_path);


--
-- Name: ir_ui_view_custom_ref_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_custom_ref_id_index ON public.ir_ui_view_custom USING btree (ref_id);


--
-- Name: ir_ui_view_custom_user_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_custom_user_id_index ON public.ir_ui_view_custom USING btree (user_id);


--
-- Name: ir_ui_view_custom_user_id_ref_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_custom_user_id_ref_id ON public.ir_ui_view_custom USING btree (user_id, ref_id);


--
-- Name: ir_ui_view_group_rel_group_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_group_rel_group_id_idx ON public.ir_ui_view_group_rel USING btree (group_id);


--
-- Name: ir_ui_view_group_rel_view_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_group_rel_view_id_idx ON public.ir_ui_view_group_rel USING btree (view_id);


--
-- Name: ir_ui_view_inherit_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_inherit_id_index ON public.ir_ui_view USING btree (inherit_id);


--
-- Name: ir_ui_view_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_model_index ON public.ir_ui_view USING btree (model);


--
-- Name: ir_ui_view_model_type_inherit_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX ir_ui_view_model_type_inherit_id ON public.ir_ui_view USING btree (model, inherit_id);


--
-- Name: mail_activity_create_user_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_create_user_id_index ON public.mail_activity USING btree (create_user_id);


--
-- Name: mail_activity_date_deadline_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_date_deadline_index ON public.mail_activity USING btree (date_deadline);


--
-- Name: mail_activity_rel_activity_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_rel_activity_id_idx ON public.mail_activity_rel USING btree (activity_id);


--
-- Name: mail_activity_rel_recommended_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_rel_recommended_id_idx ON public.mail_activity_rel USING btree (recommended_id);


--
-- Name: mail_activity_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_res_id_index ON public.mail_activity USING btree (res_id);


--
-- Name: mail_activity_res_model_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_res_model_id_index ON public.mail_activity USING btree (res_model_id);


--
-- Name: mail_activity_res_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_res_model_index ON public.mail_activity USING btree (res_model);


--
-- Name: mail_activity_type_mail_template_rel_mail_activity_type_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_type_mail_template_rel_mail_activity_type_id_idx ON public.mail_activity_type_mail_template_rel USING btree (mail_activity_type_id);


--
-- Name: mail_activity_type_mail_template_rel_mail_template_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_type_mail_template_rel_mail_template_id_idx ON public.mail_activity_type_mail_template_rel USING btree (mail_template_id);


--
-- Name: mail_activity_type_res_model_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_type_res_model_id_index ON public.mail_activity_type USING btree (res_model_id);


--
-- Name: mail_activity_user_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_activity_user_id_index ON public.mail_activity USING btree (user_id);


--
-- Name: mail_blacklist_email_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_blacklist_email_index ON public.mail_blacklist USING btree (email);


--
-- Name: mail_blacklist_message_main_attachment_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_blacklist_message_main_attachment_id_index ON public.mail_blacklist USING btree (message_main_attachment_id);


--
-- Name: mail_channel_mail_wizard_invite_rel_mail_channel_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_mail_wizard_invite_rel_mail_channel_id_idx ON public.mail_channel_mail_wizard_invite_rel USING btree (mail_channel_id);


--
-- Name: mail_channel_mail_wizard_invite_rel_mail_wizard_invite_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_mail_wizard_invite_rel_mail_wizard_invite_id_idx ON public.mail_channel_mail_wizard_invite_rel USING btree (mail_wizard_invite_id);


--
-- Name: mail_channel_message_main_attachment_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_message_main_attachment_id_index ON public.mail_channel USING btree (message_main_attachment_id);


--
-- Name: mail_channel_moderator_rel_mail_channel_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_moderator_rel_mail_channel_id_idx ON public.mail_channel_moderator_rel USING btree (mail_channel_id);


--
-- Name: mail_channel_moderator_rel_res_users_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_moderator_rel_res_users_id_idx ON public.mail_channel_moderator_rel USING btree (res_users_id);


--
-- Name: mail_channel_partner_seen_message_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_partner_seen_message_id_idx ON public.mail_channel_partner USING btree (channel_id, partner_id, seen_message_id);


--
-- Name: mail_channel_res_groups_rel_mail_channel_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_res_groups_rel_mail_channel_id_idx ON public.mail_channel_res_groups_rel USING btree (mail_channel_id);


--
-- Name: mail_channel_res_groups_rel_res_groups_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_res_groups_rel_res_groups_id_idx ON public.mail_channel_res_groups_rel USING btree (res_groups_id);


--
-- Name: mail_channel_uuid_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_channel_uuid_index ON public.mail_channel USING btree (uuid);


--
-- Name: mail_compose_message_author_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_author_id_index ON public.mail_compose_message USING btree (author_id);


--
-- Name: mail_compose_message_ir_attachments_rel_attachment_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_ir_attachments_rel_attachment_id_idx ON public.mail_compose_message_ir_attachments_rel USING btree (attachment_id);


--
-- Name: mail_compose_message_ir_attachments_rel_wizard_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_ir_attachments_rel_wizard_id_idx ON public.mail_compose_message_ir_attachments_rel USING btree (wizard_id);


--
-- Name: mail_compose_message_mail_activity_type_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_mail_activity_type_id_index ON public.mail_compose_message USING btree (mail_activity_type_id);


--
-- Name: mail_compose_message_message_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_message_id_index ON public.mail_compose_message USING btree (message_id);


--
-- Name: mail_compose_message_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_model_index ON public.mail_compose_message USING btree (model);


--
-- Name: mail_compose_message_moderation_status_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_moderation_status_index ON public.mail_compose_message USING btree (moderation_status);


--
-- Name: mail_compose_message_moderator_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_moderator_id_index ON public.mail_compose_message USING btree (moderator_id);


--
-- Name: mail_compose_message_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_parent_id_index ON public.mail_compose_message USING btree (parent_id);


--
-- Name: mail_compose_message_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_res_id_index ON public.mail_compose_message USING btree (res_id);


--
-- Name: mail_compose_message_res_partner_rel_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_res_partner_rel_partner_id_idx ON public.mail_compose_message_res_partner_rel USING btree (partner_id);


--
-- Name: mail_compose_message_res_partner_rel_wizard_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_res_partner_rel_wizard_id_idx ON public.mail_compose_message_res_partner_rel USING btree (wizard_id);


--
-- Name: mail_compose_message_subtype_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_subtype_id_index ON public.mail_compose_message USING btree (subtype_id);


--
-- Name: mail_compose_message_template_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_compose_message_template_id_index ON public.mail_compose_message USING btree (template_id);


--
-- Name: mail_followers_channel_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_followers_channel_id_index ON public.mail_followers USING btree (channel_id);


--
-- Name: mail_followers_mail_message_subtype_mail_message_subtype_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_followers_mail_message_subtype_mail_message_subtype_id_idx ON public.mail_followers_mail_message_subtype_rel USING btree (mail_message_subtype_id);


--
-- Name: mail_followers_mail_message_subtype_rel_mail_followers_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_followers_mail_message_subtype_rel_mail_followers_id_idx ON public.mail_followers_mail_message_subtype_rel USING btree (mail_followers_id);


--
-- Name: mail_followers_partner_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_followers_partner_id_index ON public.mail_followers USING btree (partner_id);


--
-- Name: mail_followers_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_followers_res_id_index ON public.mail_followers USING btree (res_id);


--
-- Name: mail_followers_res_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_followers_res_model_index ON public.mail_followers USING btree (res_model);


--
-- Name: mail_mail_fetchmail_server_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_mail_fetchmail_server_id_index ON public.mail_mail USING btree (fetchmail_server_id);


--
-- Name: mail_mail_mail_message_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_mail_mail_message_id_index ON public.mail_mail USING btree (mail_message_id);


--
-- Name: mail_mail_res_partner_rel_mail_mail_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_mail_res_partner_rel_mail_mail_id_idx ON public.mail_mail_res_partner_rel USING btree (mail_mail_id);


--
-- Name: mail_mail_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_mail_res_partner_rel_res_partner_id_idx ON public.mail_mail_res_partner_rel USING btree (res_partner_id);


--
-- Name: mail_message_author_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_author_id_index ON public.mail_message USING btree (author_id);


--
-- Name: mail_message_mail_activity_type_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_mail_activity_type_id_index ON public.mail_message USING btree (mail_activity_type_id);


--
-- Name: mail_message_mail_channel_rel_mail_channel_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_mail_channel_rel_mail_channel_id_idx ON public.mail_message_mail_channel_rel USING btree (mail_channel_id);


--
-- Name: mail_message_mail_channel_rel_mail_message_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_mail_channel_rel_mail_message_id_idx ON public.mail_message_mail_channel_rel USING btree (mail_message_id);


--
-- Name: mail_message_message_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_message_id_index ON public.mail_message USING btree (message_id);


--
-- Name: mail_message_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_model_index ON public.mail_message USING btree (model);


--
-- Name: mail_message_model_res_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_model_res_id_idx ON public.mail_message USING btree (model, res_id);


--
-- Name: mail_message_moderation_status_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_moderation_status_index ON public.mail_message USING btree (moderation_status);


--
-- Name: mail_message_moderator_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_moderator_id_index ON public.mail_message USING btree (moderator_id);


--
-- Name: mail_message_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_parent_id_index ON public.mail_message USING btree (parent_id);


--
-- Name: mail_message_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_id_index ON public.mail_message USING btree (res_id);


--
-- Name: mail_message_res_partner_need_mail_message_res_partner_need_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_need_mail_message_res_partner_need_idx ON public.mail_message_res_partner_needaction_rel_mail_resend_message_rel USING btree (mail_message_res_partner_needaction_rel_id);


--
-- Name: mail_message_res_partner_needaction__mail_resend_message_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction__mail_resend_message_id_idx ON public.mail_message_res_partner_needaction_rel_mail_resend_message_rel USING btree (mail_resend_message_id);


--
-- Name: mail_message_res_partner_needaction_rel_email_status_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction_rel_email_status_index ON public.mail_message_res_partner_needaction_rel USING btree (email_status);


--
-- Name: mail_message_res_partner_needaction_rel_is_email_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction_rel_is_email_index ON public.mail_message_res_partner_needaction_rel USING btree (is_email);


--
-- Name: mail_message_res_partner_needaction_rel_is_read_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction_rel_is_read_index ON public.mail_message_res_partner_needaction_rel USING btree (is_read);


--
-- Name: mail_message_res_partner_needaction_rel_mail_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction_rel_mail_id_index ON public.mail_message_res_partner_needaction_rel USING btree (mail_id);


--
-- Name: mail_message_res_partner_needaction_rel_mail_message_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction_rel_mail_message_id_index ON public.mail_message_res_partner_needaction_rel USING btree (mail_message_id);


--
-- Name: mail_message_res_partner_needaction_rel_res_partner_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_needaction_rel_res_partner_id_index ON public.mail_message_res_partner_needaction_rel USING btree (res_partner_id);


--
-- Name: mail_message_res_partner_rel_mail_message_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_rel_mail_message_id_idx ON public.mail_message_res_partner_rel USING btree (mail_message_id);


--
-- Name: mail_message_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_rel_res_partner_id_idx ON public.mail_message_res_partner_rel USING btree (res_partner_id);


--
-- Name: mail_message_res_partner_starred_rel_mail_message_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_starred_rel_mail_message_id_idx ON public.mail_message_res_partner_starred_rel USING btree (mail_message_id);


--
-- Name: mail_message_res_partner_starred_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_res_partner_starred_rel_res_partner_id_idx ON public.mail_message_res_partner_starred_rel USING btree (res_partner_id);


--
-- Name: mail_message_subtype_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_message_subtype_id_index ON public.mail_message USING btree (subtype_id);


--
-- Name: mail_moderation_channel_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_moderation_channel_id_index ON public.mail_moderation USING btree (channel_id);


--
-- Name: mail_moderation_email_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_moderation_email_index ON public.mail_moderation USING btree (email);


--
-- Name: mail_notification_res_partner_id_is_read_email_status_mail_mess; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_notification_res_partner_id_is_read_email_status_mail_mess ON public.mail_message_res_partner_needaction_rel USING btree (res_partner_id, is_read, email_status, mail_message_id);


--
-- Name: mail_shortcode_source_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_shortcode_source_index ON public.mail_shortcode USING btree (source);


--
-- Name: mail_shortcode_substitution_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_shortcode_substitution_index ON public.mail_shortcode USING btree (substitution);


--
-- Name: mail_template_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_template_model_index ON public.mail_template USING btree (model);


--
-- Name: mail_tracking_value_mail_message_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_tracking_value_mail_message_id_index ON public.mail_tracking_value USING btree (mail_message_id);


--
-- Name: mail_wizard_invite_res_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_wizard_invite_res_id_index ON public.mail_wizard_invite USING btree (res_id);


--
-- Name: mail_wizard_invite_res_model_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_wizard_invite_res_model_index ON public.mail_wizard_invite USING btree (res_model);


--
-- Name: mail_wizard_invite_res_partner_rel_mail_wizard_invite_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_wizard_invite_res_partner_rel_mail_wizard_invite_id_idx ON public.mail_wizard_invite_res_partner_rel USING btree (mail_wizard_invite_id);


--
-- Name: mail_wizard_invite_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX mail_wizard_invite_res_partner_rel_res_partner_id_idx ON public.mail_wizard_invite_res_partner_rel USING btree (res_partner_id);


--
-- Name: message_attachment_rel_attachment_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX message_attachment_rel_attachment_id_idx ON public.message_attachment_rel USING btree (attachment_id);


--
-- Name: message_attachment_rel_message_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX message_attachment_rel_message_id_idx ON public.message_attachment_rel USING btree (message_id);


--
-- Name: portal_share_res_partner_rel_portal_share_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX portal_share_res_partner_rel_portal_share_id_idx ON public.portal_share_res_partner_rel USING btree (portal_share_id);


--
-- Name: portal_share_res_partner_rel_res_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX portal_share_res_partner_rel_res_partner_id_idx ON public.portal_share_res_partner_rel USING btree (res_partner_id);


--
-- Name: rel_modules_langexport_module_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX rel_modules_langexport_module_id_idx ON public.rel_modules_langexport USING btree (module_id);


--
-- Name: rel_modules_langexport_wiz_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX rel_modules_langexport_wiz_id_idx ON public.rel_modules_langexport USING btree (wiz_id);


--
-- Name: rel_server_actions_action_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX rel_server_actions_action_id_idx ON public.rel_server_actions USING btree (action_id);


--
-- Name: rel_server_actions_server_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX rel_server_actions_server_id_idx ON public.rel_server_actions USING btree (server_id);


--
-- Name: res_bank_bic_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_bank_bic_index ON public.res_bank USING btree (bic);


--
-- Name: res_company_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_company_parent_id_index ON public.res_company USING btree (parent_id);


--
-- Name: res_company_users_rel_cid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_company_users_rel_cid_idx ON public.res_company_users_rel USING btree (cid);


--
-- Name: res_company_users_rel_user_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_company_users_rel_user_id_idx ON public.res_company_users_rel USING btree (user_id);


--
-- Name: res_country_res_country_group_rel_res_country_group_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_country_res_country_group_rel_res_country_group_id_idx ON public.res_country_res_country_group_rel USING btree (res_country_group_id);


--
-- Name: res_country_res_country_group_rel_res_country_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_country_res_country_group_rel_res_country_id_idx ON public.res_country_res_country_group_rel USING btree (res_country_id);


--
-- Name: res_currency_rate_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_currency_rate_name_index ON public.res_currency_rate USING btree (name);


--
-- Name: res_groups_category_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_category_id_index ON public.res_groups USING btree (category_id);


--
-- Name: res_groups_implied_rel_gid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_implied_rel_gid_idx ON public.res_groups_implied_rel USING btree (gid);


--
-- Name: res_groups_implied_rel_hid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_implied_rel_hid_idx ON public.res_groups_implied_rel USING btree (hid);


--
-- Name: res_groups_report_rel_gid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_report_rel_gid_idx ON public.res_groups_report_rel USING btree (gid);


--
-- Name: res_groups_report_rel_uid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_report_rel_uid_idx ON public.res_groups_report_rel USING btree (uid);


--
-- Name: res_groups_users_rel_gid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_users_rel_gid_idx ON public.res_groups_users_rel USING btree (gid);


--
-- Name: res_groups_users_rel_uid_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_groups_users_rel_uid_idx ON public.res_groups_users_rel USING btree (uid);


--
-- Name: res_partner_bank_partner_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_bank_partner_id_index ON public.res_partner_bank USING btree (partner_id);


--
-- Name: res_partner_category_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_category_parent_id_index ON public.res_partner_category USING btree (parent_id);


--
-- Name: res_partner_category_parent_path_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_category_parent_path_index ON public.res_partner_category USING btree (parent_path);


--
-- Name: res_partner_commercial_partner_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_commercial_partner_id_index ON public.res_partner USING btree (commercial_partner_id);


--
-- Name: res_partner_company_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_company_id_index ON public.res_partner USING btree (company_id);


--
-- Name: res_partner_date_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_date_index ON public.res_partner USING btree (date);


--
-- Name: res_partner_display_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_display_name_index ON public.res_partner USING btree (display_name);


--
-- Name: res_partner_message_main_attachment_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_message_main_attachment_id_index ON public.res_partner USING btree (message_main_attachment_id);


--
-- Name: res_partner_name_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_name_index ON public.res_partner USING btree (name);


--
-- Name: res_partner_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_parent_id_index ON public.res_partner USING btree (parent_id);


--
-- Name: res_partner_ref_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_ref_index ON public.res_partner USING btree (ref);


--
-- Name: res_partner_res_partner_category_rel_category_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_res_partner_category_rel_category_id_idx ON public.res_partner_res_partner_category_rel USING btree (category_id);


--
-- Name: res_partner_res_partner_category_rel_partner_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_res_partner_category_rel_partner_id_idx ON public.res_partner_res_partner_category_rel USING btree (partner_id);


--
-- Name: res_partner_vat_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX res_partner_vat_index ON public.res_partner USING btree (regexp_replace(upper((vat)::text), '[^A-Z0-9]+'::text, ''::text, 'g'::text));


--
-- Name: res_users_login_key_unique_website_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX res_users_login_key_unique_website_index ON public.res_users USING btree (login, COALESCE(website_id, '-1'::integer));


--
-- Name: rule_group_rel_group_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX rule_group_rel_group_id_idx ON public.rule_group_rel USING btree (group_id);


--
-- Name: rule_group_rel_rule_group_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX rule_group_rel_rule_group_id_idx ON public.rule_group_rel USING btree (rule_group_id);


--
-- Name: theme_website_menu_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX theme_website_menu_parent_id_index ON public.theme_website_menu USING btree (parent_id);


--
-- Name: website_country_group_rel_country_group_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX website_country_group_rel_country_group_id_idx ON public.website_country_group_rel USING btree (country_group_id);


--
-- Name: website_country_group_rel_website_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX website_country_group_rel_website_id_idx ON public.website_country_group_rel USING btree (website_id);


--
-- Name: website_lang_rel_lang_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX website_lang_rel_lang_id_idx ON public.website_lang_rel USING btree (lang_id);


--
-- Name: website_lang_rel_website_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX website_lang_rel_website_id_idx ON public.website_lang_rel USING btree (website_id);


--
-- Name: website_menu_parent_id_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX website_menu_parent_id_index ON public.website_menu USING btree (parent_id);


--
-- Name: website_menu_parent_path_index; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX website_menu_parent_path_index ON public.website_menu USING btree (parent_path);


--
-- Name: base_import_import base_import_import_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_import
    ADD CONSTRAINT base_import_import_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_import base_import_import_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_import
    ADD CONSTRAINT base_import_import_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_mapping base_import_mapping_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_mapping
    ADD CONSTRAINT base_import_mapping_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_mapping base_import_mapping_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_mapping
    ADD CONSTRAINT base_import_mapping_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char base_import_tests_models_char_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char
    ADD CONSTRAINT base_import_tests_models_char_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_noreadonly base_import_tests_models_char_noreadonly_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_noreadonly
    ADD CONSTRAINT base_import_tests_models_char_noreadonly_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_noreadonly base_import_tests_models_char_noreadonly_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_noreadonly
    ADD CONSTRAINT base_import_tests_models_char_noreadonly_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_readonly base_import_tests_models_char_readonly_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_readonly
    ADD CONSTRAINT base_import_tests_models_char_readonly_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_readonly base_import_tests_models_char_readonly_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_readonly
    ADD CONSTRAINT base_import_tests_models_char_readonly_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_required base_import_tests_models_char_required_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_required
    ADD CONSTRAINT base_import_tests_models_char_required_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_required base_import_tests_models_char_required_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_required
    ADD CONSTRAINT base_import_tests_models_char_required_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_states base_import_tests_models_char_states_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_states
    ADD CONSTRAINT base_import_tests_models_char_states_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_states base_import_tests_models_char_states_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_states
    ADD CONSTRAINT base_import_tests_models_char_states_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_stillreadonly base_import_tests_models_char_stillreadonly_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_stillreadonly
    ADD CONSTRAINT base_import_tests_models_char_stillreadonly_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char_stillreadonly base_import_tests_models_char_stillreadonly_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char_stillreadonly
    ADD CONSTRAINT base_import_tests_models_char_stillreadonly_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_char base_import_tests_models_char_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_char
    ADD CONSTRAINT base_import_tests_models_char_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_complex base_import_tests_models_complex_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_complex
    ADD CONSTRAINT base_import_tests_models_complex_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_complex base_import_tests_models_complex_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_complex
    ADD CONSTRAINT base_import_tests_models_complex_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.res_currency(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_complex base_import_tests_models_complex_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_complex
    ADD CONSTRAINT base_import_tests_models_complex_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_float base_import_tests_models_float_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_float
    ADD CONSTRAINT base_import_tests_models_float_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_float base_import_tests_models_float_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_float
    ADD CONSTRAINT base_import_tests_models_float_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.res_currency(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_float base_import_tests_models_float_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_float
    ADD CONSTRAINT base_import_tests_models_float_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o base_import_tests_models_m2o_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o
    ADD CONSTRAINT base_import_tests_models_m2o_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_related base_import_tests_models_m2o_related_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_related
    ADD CONSTRAINT base_import_tests_models_m2o_related_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_related base_import_tests_models_m2o_related_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_related
    ADD CONSTRAINT base_import_tests_models_m2o_related_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_required base_import_tests_models_m2o_required_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required
    ADD CONSTRAINT base_import_tests_models_m2o_required_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_required_related base_import_tests_models_m2o_required_related_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required_related
    ADD CONSTRAINT base_import_tests_models_m2o_required_related_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_required_related base_import_tests_models_m2o_required_related_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required_related
    ADD CONSTRAINT base_import_tests_models_m2o_required_related_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_required base_import_tests_models_m2o_required_value_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required
    ADD CONSTRAINT base_import_tests_models_m2o_required_value_fkey FOREIGN KEY (value) REFERENCES public.base_import_tests_models_m2o_required_related(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o_required base_import_tests_models_m2o_required_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o_required
    ADD CONSTRAINT base_import_tests_models_m2o_required_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o base_import_tests_models_m2o_value_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o
    ADD CONSTRAINT base_import_tests_models_m2o_value_fkey FOREIGN KEY (value) REFERENCES public.base_import_tests_models_m2o_related(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_m2o base_import_tests_models_m2o_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_m2o
    ADD CONSTRAINT base_import_tests_models_m2o_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_o2m_child base_import_tests_models_o2m_child_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m_child
    ADD CONSTRAINT base_import_tests_models_o2m_child_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_o2m_child base_import_tests_models_o2m_child_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m_child
    ADD CONSTRAINT base_import_tests_models_o2m_child_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.base_import_tests_models_o2m(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_o2m_child base_import_tests_models_o2m_child_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m_child
    ADD CONSTRAINT base_import_tests_models_o2m_child_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_o2m base_import_tests_models_o2m_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m
    ADD CONSTRAINT base_import_tests_models_o2m_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_o2m base_import_tests_models_o2m_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_o2m
    ADD CONSTRAINT base_import_tests_models_o2m_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_preview base_import_tests_models_preview_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_preview
    ADD CONSTRAINT base_import_tests_models_preview_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_import_tests_models_preview base_import_tests_models_preview_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_import_tests_models_preview
    ADD CONSTRAINT base_import_tests_models_preview_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_language_export base_language_export_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_export
    ADD CONSTRAINT base_language_export_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_language_export base_language_export_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_export
    ADD CONSTRAINT base_language_export_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_language_import base_language_import_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_import
    ADD CONSTRAINT base_language_import_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_language_import base_language_import_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_import
    ADD CONSTRAINT base_language_import_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_language_install base_language_install_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install
    ADD CONSTRAINT base_language_install_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_language_install_website_rel base_language_install_website_rel_base_language_install_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install_website_rel
    ADD CONSTRAINT base_language_install_website_rel_base_language_install_id_fkey FOREIGN KEY (base_language_install_id) REFERENCES public.base_language_install(id) ON DELETE CASCADE;


--
-- Name: base_language_install_website_rel base_language_install_website_rel_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install_website_rel
    ADD CONSTRAINT base_language_install_website_rel_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: base_language_install base_language_install_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_language_install
    ADD CONSTRAINT base_language_install_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_module_uninstall base_module_uninstall_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_uninstall
    ADD CONSTRAINT base_module_uninstall_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_module_uninstall base_module_uninstall_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_uninstall
    ADD CONSTRAINT base_module_uninstall_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE CASCADE;


--
-- Name: base_module_uninstall base_module_uninstall_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_uninstall
    ADD CONSTRAINT base_module_uninstall_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_module_update base_module_update_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_update
    ADD CONSTRAINT base_module_update_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_module_update base_module_update_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_update
    ADD CONSTRAINT base_module_update_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_module_upgrade base_module_upgrade_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_upgrade
    ADD CONSTRAINT base_module_upgrade_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_module_upgrade base_module_upgrade_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_module_upgrade
    ADD CONSTRAINT base_module_upgrade_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_automatic_wizard_res_partner_rel base_partner_merge_automatic__base_partner_merge_automatic_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard_res_partner_rel
    ADD CONSTRAINT base_partner_merge_automatic__base_partner_merge_automatic_fkey FOREIGN KEY (base_partner_merge_automatic_wizard_id) REFERENCES public.base_partner_merge_automatic_wizard(id) ON DELETE CASCADE;


--
-- Name: base_partner_merge_automatic_wizard base_partner_merge_automatic_wizard_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard
    ADD CONSTRAINT base_partner_merge_automatic_wizard_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_automatic_wizard base_partner_merge_automatic_wizard_current_line_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard
    ADD CONSTRAINT base_partner_merge_automatic_wizard_current_line_id_fkey FOREIGN KEY (current_line_id) REFERENCES public.base_partner_merge_line(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_automatic_wizard base_partner_merge_automatic_wizard_dst_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard
    ADD CONSTRAINT base_partner_merge_automatic_wizard_dst_partner_id_fkey FOREIGN KEY (dst_partner_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_automatic_wizard_res_partner_rel base_partner_merge_automatic_wizard_res_par_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard_res_partner_rel
    ADD CONSTRAINT base_partner_merge_automatic_wizard_res_par_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: base_partner_merge_automatic_wizard base_partner_merge_automatic_wizard_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_automatic_wizard
    ADD CONSTRAINT base_partner_merge_automatic_wizard_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_line base_partner_merge_line_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_line
    ADD CONSTRAINT base_partner_merge_line_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_line base_partner_merge_line_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_line
    ADD CONSTRAINT base_partner_merge_line_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.base_partner_merge_automatic_wizard(id) ON DELETE SET NULL;


--
-- Name: base_partner_merge_line base_partner_merge_line_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_partner_merge_line
    ADD CONSTRAINT base_partner_merge_line_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_update_translations base_update_translations_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_update_translations
    ADD CONSTRAINT base_update_translations_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: base_update_translations base_update_translations_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.base_update_translations
    ADD CONSTRAINT base_update_translations_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: bus_bus bus_bus_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: bus_bus bus_bus_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_bus
    ADD CONSTRAINT bus_bus_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: bus_presence bus_presence_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bus_presence
    ADD CONSTRAINT bus_presence_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: change_password_user change_password_user_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_user
    ADD CONSTRAINT change_password_user_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: change_password_user change_password_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_user
    ADD CONSTRAINT change_password_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: change_password_user change_password_user_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_user
    ADD CONSTRAINT change_password_user_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.change_password_wizard(id) ON DELETE CASCADE;


--
-- Name: change_password_user change_password_user_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_user
    ADD CONSTRAINT change_password_user_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: change_password_wizard change_password_wizard_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_wizard
    ADD CONSTRAINT change_password_wizard_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: change_password_wizard change_password_wizard_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.change_password_wizard
    ADD CONSTRAINT change_password_wizard_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: email_template_attachment_rel email_template_attachment_rel_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_attachment_rel
    ADD CONSTRAINT email_template_attachment_rel_attachment_id_fkey FOREIGN KEY (attachment_id) REFERENCES public.ir_attachment(id) ON DELETE CASCADE;


--
-- Name: email_template_attachment_rel email_template_attachment_rel_email_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_attachment_rel
    ADD CONSTRAINT email_template_attachment_rel_email_template_id_fkey FOREIGN KEY (email_template_id) REFERENCES public.mail_template(id) ON DELETE CASCADE;


--
-- Name: email_template_preview email_template_preview_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_mail_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_mail_server_id_fkey FOREIGN KEY (mail_server_id) REFERENCES public.ir_mail_server(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_model_object_field_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_model_object_field_fkey FOREIGN KEY (model_object_field) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_ref_ir_act_window_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_ref_ir_act_window_fkey FOREIGN KEY (ref_ir_act_window) REFERENCES public.ir_act_window(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_report_template_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_report_template_fkey FOREIGN KEY (report_template) REFERENCES public.ir_act_report_xml(id) ON DELETE SET NULL;


--
-- Name: email_template_preview_res_partner_rel email_template_preview_res_partn_email_template_preview_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview_res_partner_rel
    ADD CONSTRAINT email_template_preview_res_partn_email_template_preview_id_fkey FOREIGN KEY (email_template_preview_id) REFERENCES public.email_template_preview(id) ON DELETE CASCADE;


--
-- Name: email_template_preview_res_partner_rel email_template_preview_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview_res_partner_rel
    ADD CONSTRAINT email_template_preview_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: email_template_preview email_template_preview_sub_model_object_field_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_sub_model_object_field_fkey FOREIGN KEY (sub_model_object_field) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_sub_object_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_sub_object_fkey FOREIGN KEY (sub_object) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: email_template_preview email_template_preview_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.email_template_preview
    ADD CONSTRAINT email_template_preview_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: fetchmail_server fetchmail_server_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fetchmail_server
    ADD CONSTRAINT fetchmail_server_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: fetchmail_server fetchmail_server_object_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fetchmail_server
    ADD CONSTRAINT fetchmail_server_object_id_fkey FOREIGN KEY (object_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: fetchmail_server fetchmail_server_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fetchmail_server
    ADD CONSTRAINT fetchmail_server_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: iap_account iap_account_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.iap_account
    ADD CONSTRAINT iap_account_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: iap_account iap_account_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.iap_account
    ADD CONSTRAINT iap_account_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: iap_account iap_account_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.iap_account
    ADD CONSTRAINT iap_account_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_client ir_act_client_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_client ir_act_client_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_client ir_act_client_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_client
    ADD CONSTRAINT ir_act_client_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_report_xml ir_act_report_xml_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_report_xml ir_act_report_xml_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_report_xml ir_act_report_xml_paperformat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_paperformat_id_fkey FOREIGN KEY (paperformat_id) REFERENCES public.report_paperformat(id) ON DELETE SET NULL;


--
-- Name: ir_act_report_xml ir_act_report_xml_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_report_xml
    ADD CONSTRAINT ir_act_report_xml_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_activity_type_id_fkey FOREIGN KEY (activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_activity_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_activity_user_id_fkey FOREIGN KEY (activity_user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_server ir_act_server_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_crud_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_crud_model_id_fkey FOREIGN KEY (crud_model_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_link_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_link_field_id_fkey FOREIGN KEY (link_field_id) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: ir_act_server_mail_channel_rel ir_act_server_mail_channel_rel_ir_act_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server_mail_channel_rel
    ADD CONSTRAINT ir_act_server_mail_channel_rel_ir_act_server_id_fkey FOREIGN KEY (ir_act_server_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: ir_act_server_mail_channel_rel ir_act_server_mail_channel_rel_mail_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server_mail_channel_rel
    ADD CONSTRAINT ir_act_server_mail_channel_rel_mail_channel_id_fkey FOREIGN KEY (mail_channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: ir_act_server ir_act_server_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_server_res_partner_rel ir_act_server_res_partner_rel_ir_act_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server_res_partner_rel
    ADD CONSTRAINT ir_act_server_res_partner_rel_ir_act_server_id_fkey FOREIGN KEY (ir_act_server_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: ir_act_server_res_partner_rel ir_act_server_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server_res_partner_rel
    ADD CONSTRAINT ir_act_server_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: ir_act_server ir_act_server_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_template_id_fkey FOREIGN KEY (template_id) REFERENCES public.mail_template(id) ON DELETE SET NULL;


--
-- Name: ir_act_server ir_act_server_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_server
    ADD CONSTRAINT ir_act_server_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_url ir_act_url_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_url ir_act_url_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_url ir_act_url_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_url
    ADD CONSTRAINT ir_act_url_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_window ir_act_window_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window
    ADD CONSTRAINT ir_act_window_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_act_window ir_act_window_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window
    ADD CONSTRAINT ir_act_window_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_window_group_rel ir_act_window_group_rel_act_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_group_rel
    ADD CONSTRAINT ir_act_window_group_rel_act_id_fkey FOREIGN KEY (act_id) REFERENCES public.ir_act_window(id) ON DELETE CASCADE;


--
-- Name: ir_act_window_group_rel ir_act_window_group_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_group_rel
    ADD CONSTRAINT ir_act_window_group_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_act_window ir_act_window_search_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window
    ADD CONSTRAINT ir_act_window_search_view_id_fkey FOREIGN KEY (search_view_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: ir_act_window_view ir_act_window_view_act_window_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_act_window_id_fkey FOREIGN KEY (act_window_id) REFERENCES public.ir_act_window(id) ON DELETE CASCADE;


--
-- Name: ir_act_window_view ir_act_window_view_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_window ir_act_window_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window
    ADD CONSTRAINT ir_act_window_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: ir_act_window_view ir_act_window_view_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: ir_act_window_view ir_act_window_view_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window_view
    ADD CONSTRAINT ir_act_window_view_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_act_window ir_act_window_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_act_window
    ADD CONSTRAINT ir_act_window_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_actions ir_actions_binding_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_binding_model_id_fkey FOREIGN KEY (binding_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_actions ir_actions_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_actions_todo ir_actions_todo_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions_todo
    ADD CONSTRAINT ir_actions_todo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_actions_todo ir_actions_todo_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions_todo
    ADD CONSTRAINT ir_actions_todo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_actions ir_actions_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_actions
    ADD CONSTRAINT ir_actions_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_attachment ir_attachment_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: ir_attachment ir_attachment_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_attachment ir_attachment_theme_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_theme_template_id_fkey FOREIGN KEY (theme_template_id) REFERENCES public.theme_ir_attachment(id) ON DELETE SET NULL;


--
-- Name: ir_attachment ir_attachment_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE SET NULL;


--
-- Name: ir_attachment ir_attachment_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_config_parameter ir_config_parameter_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_config_parameter ir_config_parameter_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_config_parameter
    ADD CONSTRAINT ir_config_parameter_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_cron ir_cron_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_cron ir_cron_ir_actions_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_ir_actions_server_id_fkey FOREIGN KEY (ir_actions_server_id) REFERENCES public.ir_act_server(id) ON DELETE RESTRICT;


--
-- Name: ir_cron ir_cron_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_cron ir_cron_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_default ir_default_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE CASCADE;


--
-- Name: ir_default ir_default_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_default ir_default_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_field_id_fkey FOREIGN KEY (field_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_default ir_default_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: ir_default ir_default_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_default
    ADD CONSTRAINT ir_default_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo ir_demo_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo
    ADD CONSTRAINT ir_demo_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure ir_demo_failure_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure ir_demo_failure_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure_wizard ir_demo_failure_wizard_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure_wizard
    ADD CONSTRAINT ir_demo_failure_wizard_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure ir_demo_failure_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.ir_demo_failure_wizard(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure_wizard ir_demo_failure_wizard_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure_wizard
    ADD CONSTRAINT ir_demo_failure_wizard_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo_failure ir_demo_failure_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo_failure
    ADD CONSTRAINT ir_demo_failure_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_demo ir_demo_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_demo
    ADD CONSTRAINT ir_demo_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_exports ir_exports_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports
    ADD CONSTRAINT ir_exports_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_exports_line ir_exports_line_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports_line
    ADD CONSTRAINT ir_exports_line_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_exports_line ir_exports_line_export_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports_line
    ADD CONSTRAINT ir_exports_line_export_id_fkey FOREIGN KEY (export_id) REFERENCES public.ir_exports(id) ON DELETE CASCADE;


--
-- Name: ir_exports_line ir_exports_line_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports_line
    ADD CONSTRAINT ir_exports_line_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_exports ir_exports_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_exports
    ADD CONSTRAINT ir_exports_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_filters ir_filters_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_filters ir_filters_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: ir_filters ir_filters_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_filters
    ADD CONSTRAINT ir_filters_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_mail_server ir_mail_server_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_mail_server
    ADD CONSTRAINT ir_mail_server_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_mail_server ir_mail_server_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_mail_server
    ADD CONSTRAINT ir_mail_server_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_access ir_model_access_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_access ir_model_access_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_model_access ir_model_access_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_access ir_model_access_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_constraint ir_model_constraint_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_constraint ir_model_constraint_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_constraint ir_model_constraint_module_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_module_fkey FOREIGN KEY (module) REFERENCES public.ir_module_module(id) ON DELETE SET NULL;


--
-- Name: ir_model_constraint ir_model_constraint_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_constraint
    ADD CONSTRAINT ir_model_constraint_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model ir_model_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model
    ADD CONSTRAINT ir_model_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_data ir_model_data_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_data
    ADD CONSTRAINT ir_model_data_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_data ir_model_data_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_data
    ADD CONSTRAINT ir_model_data_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_fields ir_model_fields_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_fields_group_rel ir_model_fields_group_rel_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields_group_rel
    ADD CONSTRAINT ir_model_fields_group_rel_field_id_fkey FOREIGN KEY (field_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_model_fields_group_rel ir_model_fields_group_rel_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields_group_rel
    ADD CONSTRAINT ir_model_fields_group_rel_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_model_fields ir_model_fields_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_fields ir_model_fields_related_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_related_field_id_fkey FOREIGN KEY (related_field_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_model_fields ir_model_fields_relation_field_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_relation_field_id_fkey FOREIGN KEY (relation_field_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_model_fields ir_model_fields_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_fields
    ADD CONSTRAINT ir_model_fields_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_relation ir_model_relation_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model_relation ir_model_relation_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: ir_model_relation ir_model_relation_module_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_module_fkey FOREIGN KEY (module) REFERENCES public.ir_module_module(id) ON DELETE SET NULL;


--
-- Name: ir_model_relation ir_model_relation_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model_relation
    ADD CONSTRAINT ir_model_relation_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_model ir_model_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_model
    ADD CONSTRAINT ir_model_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_category ir_module_category_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_category ir_module_category_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.ir_module_category(id) ON DELETE SET NULL;


--
-- Name: ir_module_category ir_module_category_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_category
    ADD CONSTRAINT ir_module_category_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module ir_module_module_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module
    ADD CONSTRAINT ir_module_module_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.ir_module_category(id) ON DELETE SET NULL;


--
-- Name: ir_module_module ir_module_module_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module
    ADD CONSTRAINT ir_module_module_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module_dependency ir_module_module_dependency_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_dependency
    ADD CONSTRAINT ir_module_module_dependency_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module_dependency ir_module_module_dependency_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_dependency
    ADD CONSTRAINT ir_module_module_dependency_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE CASCADE;


--
-- Name: ir_module_module_dependency ir_module_module_dependency_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_dependency
    ADD CONSTRAINT ir_module_module_dependency_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE CASCADE;


--
-- Name: ir_module_module_exclusion ir_module_module_exclusion_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module_exclusion
    ADD CONSTRAINT ir_module_module_exclusion_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_module_module ir_module_module_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_module_module
    ADD CONSTRAINT ir_module_module_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_property ir_property_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: ir_property ir_property_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_property ir_property_fields_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_fields_id_fkey FOREIGN KEY (fields_id) REFERENCES public.ir_model_fields(id) ON DELETE CASCADE;


--
-- Name: ir_property ir_property_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_property
    ADD CONSTRAINT ir_property_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_rule ir_rule_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_rule ir_rule_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_rule ir_rule_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_sequence ir_sequence_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: ir_sequence ir_sequence_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_sequence_date_range ir_sequence_date_range_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_sequence_date_range ir_sequence_date_range_sequence_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_sequence_id_fkey FOREIGN KEY (sequence_id) REFERENCES public.ir_sequence(id) ON DELETE CASCADE;


--
-- Name: ir_sequence_date_range ir_sequence_date_range_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence_date_range
    ADD CONSTRAINT ir_sequence_date_range_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_sequence ir_sequence_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_server_object_lines ir_server_object_lines_col1_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_col1_fkey FOREIGN KEY (col1) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: ir_server_object_lines ir_server_object_lines_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_server_object_lines ir_server_object_lines_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: ir_server_object_lines ir_server_object_lines_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_server_object_lines
    ADD CONSTRAINT ir_server_object_lines_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_translation ir_translation_lang_fkey_res_lang; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_translation
    ADD CONSTRAINT ir_translation_lang_fkey_res_lang FOREIGN KEY (lang) REFERENCES public.res_lang(code);


--
-- Name: CONSTRAINT ir_translation_lang_fkey_res_lang ON ir_translation; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT ir_translation_lang_fkey_res_lang ON public.ir_translation IS 'FOREIGN KEY(lang) REFERENCES res_lang(code)';


--
-- Name: ir_ui_menu ir_ui_menu_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_ui_menu_group_rel ir_ui_menu_group_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu_group_rel
    ADD CONSTRAINT ir_ui_menu_group_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu_group_rel ir_ui_menu_group_rel_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu_group_rel
    ADD CONSTRAINT ir_ui_menu_group_rel_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.ir_ui_menu(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu ir_ui_menu_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.ir_ui_menu(id) ON DELETE RESTRICT;


--
-- Name: ir_ui_menu ir_ui_menu_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_ui_view ir_ui_view_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_ui_view_custom ir_ui_view_custom_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_custom
    ADD CONSTRAINT ir_ui_view_custom_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_ui_view_custom ir_ui_view_custom_ref_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_custom
    ADD CONSTRAINT ir_ui_view_custom_ref_id_fkey FOREIGN KEY (ref_id) REFERENCES public.ir_ui_view(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_custom ir_ui_view_custom_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_custom
    ADD CONSTRAINT ir_ui_view_custom_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_custom ir_ui_view_custom_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_custom
    ADD CONSTRAINT ir_ui_view_custom_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: ir_ui_view_group_rel ir_ui_view_group_rel_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_group_rel
    ADD CONSTRAINT ir_ui_view_group_rel_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_group_rel ir_ui_view_group_rel_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view_group_rel
    ADD CONSTRAINT ir_ui_view_group_rel_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view ir_ui_view_inherit_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_inherit_id_fkey FOREIGN KEY (inherit_id) REFERENCES public.ir_ui_view(id) ON DELETE RESTRICT;


--
-- Name: ir_ui_view ir_ui_view_theme_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_theme_template_id_fkey FOREIGN KEY (theme_template_id) REFERENCES public.theme_ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: ir_ui_view ir_ui_view_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view ir_ui_view_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_activity mail_activity_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_activity_type_id_fkey FOREIGN KEY (activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE RESTRICT;


--
-- Name: mail_activity mail_activity_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_activity mail_activity_create_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_create_user_id_fkey FOREIGN KEY (create_user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_activity mail_activity_previous_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_previous_activity_type_id_fkey FOREIGN KEY (previous_activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: mail_activity mail_activity_recommended_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_recommended_activity_type_id_fkey FOREIGN KEY (recommended_activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: mail_activity_rel mail_activity_rel_activity_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_rel
    ADD CONSTRAINT mail_activity_rel_activity_id_fkey FOREIGN KEY (activity_id) REFERENCES public.mail_activity_type(id) ON DELETE CASCADE;


--
-- Name: mail_activity_rel mail_activity_rel_recommended_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_rel
    ADD CONSTRAINT mail_activity_rel_recommended_id_fkey FOREIGN KEY (recommended_id) REFERENCES public.mail_activity_type(id) ON DELETE CASCADE;


--
-- Name: mail_activity mail_activity_res_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_res_model_id_fkey FOREIGN KEY (res_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: mail_activity_type mail_activity_type_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type
    ADD CONSTRAINT mail_activity_type_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_activity_type mail_activity_type_default_next_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type
    ADD CONSTRAINT mail_activity_type_default_next_type_id_fkey FOREIGN KEY (default_next_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: mail_activity_type_mail_template_rel mail_activity_type_mail_template_rel_mail_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type_mail_template_rel
    ADD CONSTRAINT mail_activity_type_mail_template_rel_mail_activity_type_id_fkey FOREIGN KEY (mail_activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE CASCADE;


--
-- Name: mail_activity_type_mail_template_rel mail_activity_type_mail_template_rel_mail_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type_mail_template_rel
    ADD CONSTRAINT mail_activity_type_mail_template_rel_mail_template_id_fkey FOREIGN KEY (mail_template_id) REFERENCES public.mail_template(id) ON DELETE CASCADE;


--
-- Name: mail_activity_type mail_activity_type_res_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type
    ADD CONSTRAINT mail_activity_type_res_model_id_fkey FOREIGN KEY (res_model_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: mail_activity_type mail_activity_type_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity_type
    ADD CONSTRAINT mail_activity_type_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_activity mail_activity_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_activity mail_activity_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_activity
    ADD CONSTRAINT mail_activity_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_alias mail_alias_alias_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_alias_model_id_fkey FOREIGN KEY (alias_model_id) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: mail_alias mail_alias_alias_parent_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_alias_parent_model_id_fkey FOREIGN KEY (alias_parent_model_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: mail_alias mail_alias_alias_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_alias_user_id_fkey FOREIGN KEY (alias_user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_alias mail_alias_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_alias mail_alias_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_alias
    ADD CONSTRAINT mail_alias_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_blacklist mail_blacklist_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_blacklist
    ADD CONSTRAINT mail_blacklist_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_blacklist mail_blacklist_message_main_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_blacklist
    ADD CONSTRAINT mail_blacklist_message_main_attachment_id_fkey FOREIGN KEY (message_main_attachment_id) REFERENCES public.ir_attachment(id) ON DELETE SET NULL;


--
-- Name: mail_blacklist mail_blacklist_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_blacklist
    ADD CONSTRAINT mail_blacklist_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_channel mail_channel_alias_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel
    ADD CONSTRAINT mail_channel_alias_id_fkey FOREIGN KEY (alias_id) REFERENCES public.mail_alias(id) ON DELETE RESTRICT;


--
-- Name: mail_channel mail_channel_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel
    ADD CONSTRAINT mail_channel_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_channel mail_channel_group_public_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel
    ADD CONSTRAINT mail_channel_group_public_id_fkey FOREIGN KEY (group_public_id) REFERENCES public.res_groups(id) ON DELETE SET NULL;


--
-- Name: mail_channel_mail_wizard_invite_rel mail_channel_mail_wizard_invite_rel_mail_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_mail_wizard_invite_rel
    ADD CONSTRAINT mail_channel_mail_wizard_invite_rel_mail_channel_id_fkey FOREIGN KEY (mail_channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: mail_channel_mail_wizard_invite_rel mail_channel_mail_wizard_invite_rel_mail_wizard_invite_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_mail_wizard_invite_rel
    ADD CONSTRAINT mail_channel_mail_wizard_invite_rel_mail_wizard_invite_id_fkey FOREIGN KEY (mail_wizard_invite_id) REFERENCES public.mail_wizard_invite(id) ON DELETE CASCADE;


--
-- Name: mail_channel mail_channel_message_main_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel
    ADD CONSTRAINT mail_channel_message_main_attachment_id_fkey FOREIGN KEY (message_main_attachment_id) REFERENCES public.ir_attachment(id) ON DELETE SET NULL;


--
-- Name: mail_channel_moderator_rel mail_channel_moderator_rel_mail_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_moderator_rel
    ADD CONSTRAINT mail_channel_moderator_rel_mail_channel_id_fkey FOREIGN KEY (mail_channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: mail_channel_moderator_rel mail_channel_moderator_rel_res_users_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_moderator_rel
    ADD CONSTRAINT mail_channel_moderator_rel_res_users_id_fkey FOREIGN KEY (res_users_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: mail_channel_partner mail_channel_partner_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner
    ADD CONSTRAINT mail_channel_partner_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: mail_channel_partner mail_channel_partner_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner
    ADD CONSTRAINT mail_channel_partner_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_channel_partner mail_channel_partner_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner
    ADD CONSTRAINT mail_channel_partner_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_channel_partner mail_channel_partner_seen_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner
    ADD CONSTRAINT mail_channel_partner_seen_message_id_fkey FOREIGN KEY (seen_message_id) REFERENCES public.mail_message(id) ON DELETE SET NULL;


--
-- Name: mail_channel_partner mail_channel_partner_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_partner
    ADD CONSTRAINT mail_channel_partner_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_channel_res_groups_rel mail_channel_res_groups_rel_mail_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_res_groups_rel
    ADD CONSTRAINT mail_channel_res_groups_rel_mail_channel_id_fkey FOREIGN KEY (mail_channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: mail_channel_res_groups_rel mail_channel_res_groups_rel_res_groups_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel_res_groups_rel
    ADD CONSTRAINT mail_channel_res_groups_rel_res_groups_id_fkey FOREIGN KEY (res_groups_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: mail_channel mail_channel_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_channel
    ADD CONSTRAINT mail_channel_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message_ir_attachments_rel mail_compose_message_ir_attachments_rel_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message_ir_attachments_rel
    ADD CONSTRAINT mail_compose_message_ir_attachments_rel_attachment_id_fkey FOREIGN KEY (attachment_id) REFERENCES public.ir_attachment(id) ON DELETE CASCADE;


--
-- Name: mail_compose_message_ir_attachments_rel mail_compose_message_ir_attachments_rel_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message_ir_attachments_rel
    ADD CONSTRAINT mail_compose_message_ir_attachments_rel_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.mail_compose_message(id) ON DELETE CASCADE;


--
-- Name: mail_compose_message mail_compose_message_mail_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_mail_activity_type_id_fkey FOREIGN KEY (mail_activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_mail_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_mail_server_id_fkey FOREIGN KEY (mail_server_id) REFERENCES public.ir_mail_server(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_moderator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_moderator_id_fkey FOREIGN KEY (moderator_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.mail_message(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message_res_partner_rel mail_compose_message_res_partner_rel_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message_res_partner_rel
    ADD CONSTRAINT mail_compose_message_res_partner_rel_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_compose_message_res_partner_rel mail_compose_message_res_partner_rel_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message_res_partner_rel
    ADD CONSTRAINT mail_compose_message_res_partner_rel_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.mail_compose_message(id) ON DELETE CASCADE;


--
-- Name: mail_compose_message mail_compose_message_subtype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_subtype_id_fkey FOREIGN KEY (subtype_id) REFERENCES public.mail_message_subtype(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_template_id_fkey FOREIGN KEY (template_id) REFERENCES public.mail_template(id) ON DELETE SET NULL;


--
-- Name: mail_compose_message mail_compose_message_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_compose_message
    ADD CONSTRAINT mail_compose_message_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_followers mail_followers_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers
    ADD CONSTRAINT mail_followers_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: mail_followers_mail_message_subtype_rel mail_followers_mail_message_subtyp_mail_message_subtype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers_mail_message_subtype_rel
    ADD CONSTRAINT mail_followers_mail_message_subtyp_mail_message_subtype_id_fkey FOREIGN KEY (mail_message_subtype_id) REFERENCES public.mail_message_subtype(id) ON DELETE CASCADE;


--
-- Name: mail_followers_mail_message_subtype_rel mail_followers_mail_message_subtype_rel_mail_followers_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers_mail_message_subtype_rel
    ADD CONSTRAINT mail_followers_mail_message_subtype_rel_mail_followers_id_fkey FOREIGN KEY (mail_followers_id) REFERENCES public.mail_followers(id) ON DELETE CASCADE;


--
-- Name: mail_followers mail_followers_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_followers
    ADD CONSTRAINT mail_followers_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_mail mail_mail_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail
    ADD CONSTRAINT mail_mail_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_mail mail_mail_fetchmail_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail
    ADD CONSTRAINT mail_mail_fetchmail_server_id_fkey FOREIGN KEY (fetchmail_server_id) REFERENCES public.fetchmail_server(id) ON DELETE SET NULL;


--
-- Name: mail_mail mail_mail_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail
    ADD CONSTRAINT mail_mail_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: mail_mail_res_partner_rel mail_mail_res_partner_rel_mail_mail_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail_res_partner_rel
    ADD CONSTRAINT mail_mail_res_partner_rel_mail_mail_id_fkey FOREIGN KEY (mail_mail_id) REFERENCES public.mail_mail(id) ON DELETE CASCADE;


--
-- Name: mail_mail_res_partner_rel mail_mail_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail_res_partner_rel
    ADD CONSTRAINT mail_mail_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_mail mail_mail_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_mail
    ADD CONSTRAINT mail_mail_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_author_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_author_id_fkey FOREIGN KEY (author_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_mail_activity_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_mail_activity_type_id_fkey FOREIGN KEY (mail_activity_type_id) REFERENCES public.mail_activity_type(id) ON DELETE SET NULL;


--
-- Name: mail_message_mail_channel_rel mail_message_mail_channel_rel_mail_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_mail_channel_rel
    ADD CONSTRAINT mail_message_mail_channel_rel_mail_channel_id_fkey FOREIGN KEY (mail_channel_id) REFERENCES public.mail_channel(id) ON DELETE CASCADE;


--
-- Name: mail_message_mail_channel_rel mail_message_mail_channel_rel_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_mail_channel_rel
    ADD CONSTRAINT mail_message_mail_channel_rel_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: mail_message mail_message_mail_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_mail_server_id_fkey FOREIGN KEY (mail_server_id) REFERENCES public.ir_mail_server(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_moderator_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_moderator_id_fkey FOREIGN KEY (moderator_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.mail_message(id) ON DELETE SET NULL;


--
-- Name: mail_message_res_partner_needaction_rel_mail_resend_message_rel mail_message_res_partner_need_mail_message_res_partner_nee_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel_mail_resend_message_rel
    ADD CONSTRAINT mail_message_res_partner_need_mail_message_res_partner_nee_fkey FOREIGN KEY (mail_message_res_partner_needaction_rel_id) REFERENCES public.mail_message_res_partner_needaction_rel(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_needaction_rel_mail_resend_message_rel mail_message_res_partner_needaction_mail_resend_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel_mail_resend_message_rel
    ADD CONSTRAINT mail_message_res_partner_needaction_mail_resend_message_id_fkey FOREIGN KEY (mail_resend_message_id) REFERENCES public.mail_resend_message(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_needaction_rel mail_message_res_partner_needaction_rel_mail_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel
    ADD CONSTRAINT mail_message_res_partner_needaction_rel_mail_id_fkey FOREIGN KEY (mail_id) REFERENCES public.mail_mail(id) ON DELETE SET NULL;


--
-- Name: mail_message_res_partner_needaction_rel mail_message_res_partner_needaction_rel_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel
    ADD CONSTRAINT mail_message_res_partner_needaction_rel_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_needaction_rel mail_message_res_partner_needaction_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_needaction_rel
    ADD CONSTRAINT mail_message_res_partner_needaction_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_rel mail_message_res_partner_rel_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_rel
    ADD CONSTRAINT mail_message_res_partner_rel_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_rel mail_message_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_rel
    ADD CONSTRAINT mail_message_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_starred_rel mail_message_res_partner_starred_rel_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_starred_rel
    ADD CONSTRAINT mail_message_res_partner_starred_rel_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: mail_message_res_partner_starred_rel mail_message_res_partner_starred_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_res_partner_starred_rel
    ADD CONSTRAINT mail_message_res_partner_starred_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_message_subtype mail_message_subtype_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_subtype
    ADD CONSTRAINT mail_message_subtype_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_subtype_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_subtype_id_fkey FOREIGN KEY (subtype_id) REFERENCES public.mail_message_subtype(id) ON DELETE SET NULL;


--
-- Name: mail_message_subtype mail_message_subtype_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_subtype
    ADD CONSTRAINT mail_message_subtype_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.mail_message_subtype(id) ON DELETE SET NULL;


--
-- Name: mail_message_subtype mail_message_subtype_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message_subtype
    ADD CONSTRAINT mail_message_subtype_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_message mail_message_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_message
    ADD CONSTRAINT mail_message_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_moderation mail_moderation_channel_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_moderation
    ADD CONSTRAINT mail_moderation_channel_id_fkey FOREIGN KEY (channel_id) REFERENCES public.mail_channel(id) ON DELETE SET NULL;


--
-- Name: mail_moderation mail_moderation_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_moderation
    ADD CONSTRAINT mail_moderation_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_moderation mail_moderation_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_moderation
    ADD CONSTRAINT mail_moderation_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_resend_cancel mail_resend_cancel_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_cancel
    ADD CONSTRAINT mail_resend_cancel_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_resend_cancel mail_resend_cancel_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_cancel
    ADD CONSTRAINT mail_resend_cancel_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_resend_message mail_resend_message_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_message
    ADD CONSTRAINT mail_resend_message_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_resend_message mail_resend_message_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_message
    ADD CONSTRAINT mail_resend_message_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE SET NULL;


--
-- Name: mail_resend_message mail_resend_message_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_message
    ADD CONSTRAINT mail_resend_message_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_resend_partner mail_resend_partner_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_partner
    ADD CONSTRAINT mail_resend_partner_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_resend_partner mail_resend_partner_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_partner
    ADD CONSTRAINT mail_resend_partner_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_resend_partner mail_resend_partner_resend_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_partner
    ADD CONSTRAINT mail_resend_partner_resend_wizard_id_fkey FOREIGN KEY (resend_wizard_id) REFERENCES public.mail_resend_message(id) ON DELETE SET NULL;


--
-- Name: mail_resend_partner mail_resend_partner_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_resend_partner
    ADD CONSTRAINT mail_resend_partner_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_shortcode mail_shortcode_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_shortcode
    ADD CONSTRAINT mail_shortcode_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_shortcode mail_shortcode_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_shortcode
    ADD CONSTRAINT mail_shortcode_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_mail_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_mail_server_id_fkey FOREIGN KEY (mail_server_id) REFERENCES public.ir_mail_server(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_model_id_fkey FOREIGN KEY (model_id) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_model_object_field_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_model_object_field_fkey FOREIGN KEY (model_object_field) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_ref_ir_act_window_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_ref_ir_act_window_fkey FOREIGN KEY (ref_ir_act_window) REFERENCES public.ir_act_window(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_report_template_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_report_template_fkey FOREIGN KEY (report_template) REFERENCES public.ir_act_report_xml(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_sub_model_object_field_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_sub_model_object_field_fkey FOREIGN KEY (sub_model_object_field) REFERENCES public.ir_model_fields(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_sub_object_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_sub_object_fkey FOREIGN KEY (sub_object) REFERENCES public.ir_model(id) ON DELETE SET NULL;


--
-- Name: mail_template mail_template_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_template
    ADD CONSTRAINT mail_template_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_tracking_value mail_tracking_value_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_tracking_value
    ADD CONSTRAINT mail_tracking_value_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_tracking_value mail_tracking_value_mail_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_tracking_value
    ADD CONSTRAINT mail_tracking_value_mail_message_id_fkey FOREIGN KEY (mail_message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: mail_tracking_value mail_tracking_value_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_tracking_value
    ADD CONSTRAINT mail_tracking_value_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_wizard_invite mail_wizard_invite_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite
    ADD CONSTRAINT mail_wizard_invite_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: mail_wizard_invite_res_partner_rel mail_wizard_invite_res_partner_rel_mail_wizard_invite_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite_res_partner_rel
    ADD CONSTRAINT mail_wizard_invite_res_partner_rel_mail_wizard_invite_id_fkey FOREIGN KEY (mail_wizard_invite_id) REFERENCES public.mail_wizard_invite(id) ON DELETE CASCADE;


--
-- Name: mail_wizard_invite_res_partner_rel mail_wizard_invite_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite_res_partner_rel
    ADD CONSTRAINT mail_wizard_invite_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: mail_wizard_invite mail_wizard_invite_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mail_wizard_invite
    ADD CONSTRAINT mail_wizard_invite_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: message_attachment_rel message_attachment_rel_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.message_attachment_rel
    ADD CONSTRAINT message_attachment_rel_attachment_id_fkey FOREIGN KEY (attachment_id) REFERENCES public.ir_attachment(id) ON DELETE CASCADE;


--
-- Name: message_attachment_rel message_attachment_rel_message_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.message_attachment_rel
    ADD CONSTRAINT message_attachment_rel_message_id_fkey FOREIGN KEY (message_id) REFERENCES public.mail_message(id) ON DELETE CASCADE;


--
-- Name: portal_share portal_share_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share
    ADD CONSTRAINT portal_share_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: portal_share_res_partner_rel portal_share_res_partner_rel_portal_share_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share_res_partner_rel
    ADD CONSTRAINT portal_share_res_partner_rel_portal_share_id_fkey FOREIGN KEY (portal_share_id) REFERENCES public.portal_share(id) ON DELETE CASCADE;


--
-- Name: portal_share_res_partner_rel portal_share_res_partner_rel_res_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share_res_partner_rel
    ADD CONSTRAINT portal_share_res_partner_rel_res_partner_id_fkey FOREIGN KEY (res_partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: portal_share portal_share_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_share
    ADD CONSTRAINT portal_share_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: portal_wizard portal_wizard_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard
    ADD CONSTRAINT portal_wizard_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: portal_wizard_user portal_wizard_user_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user
    ADD CONSTRAINT portal_wizard_user_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: portal_wizard_user portal_wizard_user_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user
    ADD CONSTRAINT portal_wizard_user_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: portal_wizard_user portal_wizard_user_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user
    ADD CONSTRAINT portal_wizard_user_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: portal_wizard_user portal_wizard_user_wizard_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user
    ADD CONSTRAINT portal_wizard_user_wizard_id_fkey FOREIGN KEY (wizard_id) REFERENCES public.portal_wizard(id) ON DELETE CASCADE;


--
-- Name: portal_wizard_user portal_wizard_user_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard_user
    ADD CONSTRAINT portal_wizard_user_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: portal_wizard portal_wizard_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.portal_wizard
    ADD CONSTRAINT portal_wizard_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: rel_modules_langexport rel_modules_langexport_module_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rel_modules_langexport
    ADD CONSTRAINT rel_modules_langexport_module_id_fkey FOREIGN KEY (module_id) REFERENCES public.ir_module_module(id) ON DELETE CASCADE;


--
-- Name: rel_modules_langexport rel_modules_langexport_wiz_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rel_modules_langexport
    ADD CONSTRAINT rel_modules_langexport_wiz_id_fkey FOREIGN KEY (wiz_id) REFERENCES public.base_language_export(id) ON DELETE CASCADE;


--
-- Name: rel_server_actions rel_server_actions_action_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rel_server_actions
    ADD CONSTRAINT rel_server_actions_action_id_fkey FOREIGN KEY (action_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: rel_server_actions rel_server_actions_server_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rel_server_actions
    ADD CONSTRAINT rel_server_actions_server_id_fkey FOREIGN KEY (server_id) REFERENCES public.ir_act_server(id) ON DELETE CASCADE;


--
-- Name: report_layout report_layout_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_layout
    ADD CONSTRAINT report_layout_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: report_layout report_layout_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_layout
    ADD CONSTRAINT report_layout_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: report_layout report_layout_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_layout
    ADD CONSTRAINT report_layout_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: report_paperformat report_paperformat_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_paperformat
    ADD CONSTRAINT report_paperformat_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: report_paperformat report_paperformat_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.report_paperformat
    ADD CONSTRAINT report_paperformat_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_bank res_bank_country_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_bank
    ADD CONSTRAINT res_bank_country_fkey FOREIGN KEY (country) REFERENCES public.res_country(id) ON DELETE SET NULL;


--
-- Name: res_bank res_bank_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_bank
    ADD CONSTRAINT res_bank_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_bank res_bank_state_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_bank
    ADD CONSTRAINT res_bank_state_fkey FOREIGN KEY (state) REFERENCES public.res_country_state(id) ON DELETE SET NULL;


--
-- Name: res_bank res_bank_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_bank
    ADD CONSTRAINT res_bank_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_company res_company_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_company res_company_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.res_currency(id) ON DELETE SET NULL;


--
-- Name: res_company res_company_external_report_layout_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_external_report_layout_id_fkey FOREIGN KEY (external_report_layout_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: res_company res_company_paperformat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_paperformat_id_fkey FOREIGN KEY (paperformat_id) REFERENCES public.report_paperformat(id) ON DELETE SET NULL;


--
-- Name: res_company res_company_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: res_company res_company_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: res_company_users_rel res_company_users_rel_cid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company_users_rel
    ADD CONSTRAINT res_company_users_rel_cid_fkey FOREIGN KEY (cid) REFERENCES public.res_company(id) ON DELETE CASCADE;


--
-- Name: res_company_users_rel res_company_users_rel_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company_users_rel
    ADD CONSTRAINT res_company_users_rel_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: res_company res_company_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_company
    ADD CONSTRAINT res_company_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config res_config_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config
    ADD CONSTRAINT res_config_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config_installer res_config_installer_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_installer
    ADD CONSTRAINT res_config_installer_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config_installer res_config_installer_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_installer
    ADD CONSTRAINT res_config_installer_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config_settings res_config_settings_auth_signup_template_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings
    ADD CONSTRAINT res_config_settings_auth_signup_template_user_id_fkey FOREIGN KEY (auth_signup_template_user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config_settings res_config_settings_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings
    ADD CONSTRAINT res_config_settings_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: res_config_settings res_config_settings_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings
    ADD CONSTRAINT res_config_settings_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config_settings res_config_settings_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings
    ADD CONSTRAINT res_config_settings_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: res_config_settings res_config_settings_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config_settings
    ADD CONSTRAINT res_config_settings_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_config res_config_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_config
    ADD CONSTRAINT res_config_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_country res_country_address_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_address_view_id_fkey FOREIGN KEY (address_view_id) REFERENCES public.ir_ui_view(id) ON DELETE SET NULL;


--
-- Name: res_country res_country_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_country res_country_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.res_currency(id) ON DELETE SET NULL;


--
-- Name: res_country_group res_country_group_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_group
    ADD CONSTRAINT res_country_group_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_country_group res_country_group_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_group
    ADD CONSTRAINT res_country_group_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_country_res_country_group_rel res_country_res_country_group_rel_res_country_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_res_country_group_rel
    ADD CONSTRAINT res_country_res_country_group_rel_res_country_group_id_fkey FOREIGN KEY (res_country_group_id) REFERENCES public.res_country_group(id) ON DELETE CASCADE;


--
-- Name: res_country_res_country_group_rel res_country_res_country_group_rel_res_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_res_country_group_rel
    ADD CONSTRAINT res_country_res_country_group_rel_res_country_id_fkey FOREIGN KEY (res_country_id) REFERENCES public.res_country(id) ON DELETE CASCADE;


--
-- Name: res_country_state res_country_state_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_state
    ADD CONSTRAINT res_country_state_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.res_country(id) ON DELETE SET NULL;


--
-- Name: res_country_state res_country_state_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_state
    ADD CONSTRAINT res_country_state_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_country_state res_country_state_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country_state
    ADD CONSTRAINT res_country_state_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_country res_country_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_country
    ADD CONSTRAINT res_country_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_currency res_currency_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency
    ADD CONSTRAINT res_currency_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_currency_rate res_currency_rate_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate
    ADD CONSTRAINT res_currency_rate_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: res_currency_rate res_currency_rate_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate
    ADD CONSTRAINT res_currency_rate_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_currency_rate res_currency_rate_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate
    ADD CONSTRAINT res_currency_rate_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.res_currency(id) ON DELETE SET NULL;


--
-- Name: res_currency_rate res_currency_rate_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency_rate
    ADD CONSTRAINT res_currency_rate_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_currency res_currency_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_currency
    ADD CONSTRAINT res_currency_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_groups res_groups_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups
    ADD CONSTRAINT res_groups_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.ir_module_category(id) ON DELETE SET NULL;


--
-- Name: res_groups res_groups_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups
    ADD CONSTRAINT res_groups_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_groups_implied_rel res_groups_implied_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_implied_rel
    ADD CONSTRAINT res_groups_implied_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: res_groups_implied_rel res_groups_implied_rel_hid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_implied_rel
    ADD CONSTRAINT res_groups_implied_rel_hid_fkey FOREIGN KEY (hid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: res_groups_report_rel res_groups_report_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_report_rel
    ADD CONSTRAINT res_groups_report_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: res_groups_report_rel res_groups_report_rel_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_report_rel
    ADD CONSTRAINT res_groups_report_rel_uid_fkey FOREIGN KEY (uid) REFERENCES public.ir_act_report_xml(id) ON DELETE CASCADE;


--
-- Name: res_groups_users_rel res_groups_users_rel_gid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_users_rel
    ADD CONSTRAINT res_groups_users_rel_gid_fkey FOREIGN KEY (gid) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: res_groups_users_rel res_groups_users_rel_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups_users_rel
    ADD CONSTRAINT res_groups_users_rel_uid_fkey FOREIGN KEY (uid) REFERENCES public.res_users(id) ON DELETE CASCADE;


--
-- Name: res_groups res_groups_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_groups
    ADD CONSTRAINT res_groups_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_lang res_lang_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_lang
    ADD CONSTRAINT res_lang_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_lang res_lang_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_lang
    ADD CONSTRAINT res_lang_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_autocomplete_sync res_partner_autocomplete_sync_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_autocomplete_sync
    ADD CONSTRAINT res_partner_autocomplete_sync_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_autocomplete_sync res_partner_autocomplete_sync_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_autocomplete_sync
    ADD CONSTRAINT res_partner_autocomplete_sync_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: res_partner_autocomplete_sync res_partner_autocomplete_sync_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_autocomplete_sync
    ADD CONSTRAINT res_partner_autocomplete_sync_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_bank res_partner_bank_bank_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_bank_id_fkey FOREIGN KEY (bank_id) REFERENCES public.res_bank(id) ON DELETE SET NULL;


--
-- Name: res_partner_bank res_partner_bank_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE CASCADE;


--
-- Name: res_partner_bank res_partner_bank_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_bank res_partner_bank_currency_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_currency_id_fkey FOREIGN KEY (currency_id) REFERENCES public.res_currency(id) ON DELETE SET NULL;


--
-- Name: res_partner_bank res_partner_bank_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: res_partner_bank res_partner_bank_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_bank
    ADD CONSTRAINT res_partner_bank_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_category res_partner_category_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_category
    ADD CONSTRAINT res_partner_category_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_category res_partner_category_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_category
    ADD CONSTRAINT res_partner_category_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.res_partner_category(id) ON DELETE CASCADE;


--
-- Name: res_partner_category res_partner_category_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_category
    ADD CONSTRAINT res_partner_category_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_commercial_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_commercial_partner_id_fkey FOREIGN KEY (commercial_partner_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.res_country(id) ON DELETE RESTRICT;


--
-- Name: res_partner res_partner_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner_industry res_partner_industry_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_industry
    ADD CONSTRAINT res_partner_industry_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_industry_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_industry_id_fkey FOREIGN KEY (industry_id) REFERENCES public.res_partner_industry(id) ON DELETE SET NULL;


--
-- Name: res_partner_industry res_partner_industry_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_industry
    ADD CONSTRAINT res_partner_industry_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_message_main_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_message_main_attachment_id_fkey FOREIGN KEY (message_main_attachment_id) REFERENCES public.ir_attachment(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: res_partner_res_partner_category_rel res_partner_res_partner_category_rel_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_res_partner_category_rel
    ADD CONSTRAINT res_partner_res_partner_category_rel_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.res_partner_category(id) ON DELETE CASCADE;


--
-- Name: res_partner_res_partner_category_rel res_partner_res_partner_category_rel_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_res_partner_category_rel
    ADD CONSTRAINT res_partner_res_partner_category_rel_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE CASCADE;


--
-- Name: res_partner res_partner_state_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_state_id_fkey FOREIGN KEY (state_id) REFERENCES public.res_country_state(id) ON DELETE RESTRICT;


--
-- Name: res_partner_title res_partner_title_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_title
    ADD CONSTRAINT res_partner_title_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_title_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_title_fkey FOREIGN KEY (title) REFERENCES public.res_partner_title(id) ON DELETE SET NULL;


--
-- Name: res_partner_title res_partner_title_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner_title
    ADD CONSTRAINT res_partner_title_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE SET NULL;


--
-- Name: res_partner res_partner_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_partner
    ADD CONSTRAINT res_partner_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_users res_users_alias_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_alias_id_fkey FOREIGN KEY (alias_id) REFERENCES public.mail_alias(id) ON DELETE SET NULL;


--
-- Name: res_users res_users_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: res_users res_users_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_users_log res_users_log_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users_log
    ADD CONSTRAINT res_users_log_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_users_log res_users_log_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users_log
    ADD CONSTRAINT res_users_log_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: res_users res_users_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE RESTRICT;


--
-- Name: res_users res_users_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE SET NULL;


--
-- Name: res_users res_users_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.res_users
    ADD CONSTRAINT res_users_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: rule_group_rel rule_group_rel_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rule_group_rel
    ADD CONSTRAINT rule_group_rel_group_id_fkey FOREIGN KEY (group_id) REFERENCES public.res_groups(id) ON DELETE CASCADE;


--
-- Name: rule_group_rel rule_group_rel_rule_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.rule_group_rel
    ADD CONSTRAINT rule_group_rel_rule_group_id_fkey FOREIGN KEY (rule_group_id) REFERENCES public.ir_rule(id) ON DELETE CASCADE;


--
-- Name: sms_send_sms sms_send_sms_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.sms_send_sms
    ADD CONSTRAINT sms_send_sms_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: sms_send_sms sms_send_sms_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.sms_send_sms
    ADD CONSTRAINT sms_send_sms_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: snailmail_letter snailmail_letter_attachment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_attachment_id_fkey FOREIGN KEY (attachment_id) REFERENCES public.ir_attachment(id) ON DELETE CASCADE;


--
-- Name: snailmail_letter snailmail_letter_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: snailmail_letter snailmail_letter_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: snailmail_letter snailmail_letter_partner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_partner_id_fkey FOREIGN KEY (partner_id) REFERENCES public.res_partner(id) ON DELETE SET NULL;


--
-- Name: snailmail_letter snailmail_letter_report_template_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_report_template_fkey FOREIGN KEY (report_template) REFERENCES public.ir_act_report_xml(id) ON DELETE SET NULL;


--
-- Name: snailmail_letter snailmail_letter_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: snailmail_letter snailmail_letter_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.snailmail_letter
    ADD CONSTRAINT snailmail_letter_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_ir_attachment theme_ir_attachment_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_attachment
    ADD CONSTRAINT theme_ir_attachment_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_ir_attachment theme_ir_attachment_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_attachment
    ADD CONSTRAINT theme_ir_attachment_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_ir_ui_view theme_ir_ui_view_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_ui_view
    ADD CONSTRAINT theme_ir_ui_view_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_ir_ui_view theme_ir_ui_view_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_ir_ui_view
    ADD CONSTRAINT theme_ir_ui_view_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_website_menu theme_website_menu_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_menu
    ADD CONSTRAINT theme_website_menu_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_website_menu theme_website_menu_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_menu
    ADD CONSTRAINT theme_website_menu_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.theme_website_page(id) ON DELETE CASCADE;


--
-- Name: theme_website_menu theme_website_menu_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_menu
    ADD CONSTRAINT theme_website_menu_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.theme_website_menu(id) ON DELETE CASCADE;


--
-- Name: theme_website_menu theme_website_menu_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_menu
    ADD CONSTRAINT theme_website_menu_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_website_page theme_website_page_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_page
    ADD CONSTRAINT theme_website_page_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: theme_website_page theme_website_page_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_page
    ADD CONSTRAINT theme_website_page_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.theme_ir_ui_view(id) ON DELETE CASCADE;


--
-- Name: theme_website_page theme_website_page_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.theme_website_page
    ADD CONSTRAINT theme_website_page_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: web_editor_converter_test web_editor_converter_test_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test
    ADD CONSTRAINT web_editor_converter_test_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: web_editor_converter_test web_editor_converter_test_many2one_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test
    ADD CONSTRAINT web_editor_converter_test_many2one_fkey FOREIGN KEY (many2one) REFERENCES public.web_editor_converter_test_sub(id) ON DELETE SET NULL;


--
-- Name: web_editor_converter_test_sub web_editor_converter_test_sub_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test_sub
    ADD CONSTRAINT web_editor_converter_test_sub_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: web_editor_converter_test_sub web_editor_converter_test_sub_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test_sub
    ADD CONSTRAINT web_editor_converter_test_sub_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: web_editor_converter_test web_editor_converter_test_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_editor_converter_test
    ADD CONSTRAINT web_editor_converter_test_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: web_tour_tour web_tour_tour_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.web_tour_tour
    ADD CONSTRAINT web_tour_tour_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website website_company_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_company_id_fkey FOREIGN KEY (company_id) REFERENCES public.res_company(id) ON DELETE SET NULL;


--
-- Name: website_country_group_rel website_country_group_rel_country_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_country_group_rel
    ADD CONSTRAINT website_country_group_rel_country_group_id_fkey FOREIGN KEY (country_group_id) REFERENCES public.res_country_group(id) ON DELETE CASCADE;


--
-- Name: website_country_group_rel website_country_group_rel_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_country_group_rel
    ADD CONSTRAINT website_country_group_rel_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: website website_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website website_default_lang_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_default_lang_id_fkey FOREIGN KEY (default_lang_id) REFERENCES public.res_lang(id) ON DELETE SET NULL;


--
-- Name: website website_homepage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_homepage_id_fkey FOREIGN KEY (homepage_id) REFERENCES public.website_page(id) ON DELETE SET NULL;


--
-- Name: website_lang_rel website_lang_rel_lang_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_lang_rel
    ADD CONSTRAINT website_lang_rel_lang_id_fkey FOREIGN KEY (lang_id) REFERENCES public.res_lang(id) ON DELETE CASCADE;


--
-- Name: website_lang_rel website_lang_rel_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_lang_rel
    ADD CONSTRAINT website_lang_rel_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: website_menu website_menu_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website_menu website_menu_page_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_page_id_fkey FOREIGN KEY (page_id) REFERENCES public.website_page(id) ON DELETE CASCADE;


--
-- Name: website_menu website_menu_parent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_parent_id_fkey FOREIGN KEY (parent_id) REFERENCES public.website_menu(id) ON DELETE CASCADE;


--
-- Name: website_menu website_menu_theme_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_theme_template_id_fkey FOREIGN KEY (theme_template_id) REFERENCES public.theme_website_menu(id) ON DELETE SET NULL;


--
-- Name: website_menu website_menu_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: website_menu website_menu_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_menu
    ADD CONSTRAINT website_menu_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website_page website_page_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page
    ADD CONSTRAINT website_page_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website_page website_page_theme_template_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page
    ADD CONSTRAINT website_page_theme_template_id_fkey FOREIGN KEY (theme_template_id) REFERENCES public.theme_website_page(id) ON DELETE SET NULL;


--
-- Name: website_page website_page_view_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page
    ADD CONSTRAINT website_page_view_id_fkey FOREIGN KEY (view_id) REFERENCES public.ir_ui_view(id) ON DELETE CASCADE;


--
-- Name: website_page website_page_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page
    ADD CONSTRAINT website_page_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE RESTRICT;


--
-- Name: website_page website_page_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_page
    ADD CONSTRAINT website_page_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website_redirect website_redirect_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_redirect
    ADD CONSTRAINT website_redirect_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website_redirect website_redirect_website_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_redirect
    ADD CONSTRAINT website_redirect_website_id_fkey FOREIGN KEY (website_id) REFERENCES public.website(id) ON DELETE CASCADE;


--
-- Name: website_redirect website_redirect_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website_redirect
    ADD CONSTRAINT website_redirect_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website website_theme_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_theme_id_fkey FOREIGN KEY (theme_id) REFERENCES public.ir_module_module(id) ON DELETE SET NULL;


--
-- Name: website website_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: website website_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.website
    ADD CONSTRAINT website_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: wizard_ir_model_menu_create wizard_ir_model_menu_create_create_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.wizard_ir_model_menu_create
    ADD CONSTRAINT wizard_ir_model_menu_create_create_uid_fkey FOREIGN KEY (create_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- Name: wizard_ir_model_menu_create wizard_ir_model_menu_create_menu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.wizard_ir_model_menu_create
    ADD CONSTRAINT wizard_ir_model_menu_create_menu_id_fkey FOREIGN KEY (menu_id) REFERENCES public.ir_ui_menu(id) ON DELETE CASCADE;


--
-- Name: wizard_ir_model_menu_create wizard_ir_model_menu_create_write_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.wizard_ir_model_menu_create
    ADD CONSTRAINT wizard_ir_model_menu_create_write_uid_fkey FOREIGN KEY (write_uid) REFERENCES public.res_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

