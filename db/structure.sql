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
-- Name: banana; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA banana;


--
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA public;


--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- Name: bananas; Type: TABLE; Schema: banana; Owner: -
--

CREATE TABLE banana.bananas (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: bananas_id_seq; Type: SEQUENCE; Schema: banana; Owner: -
--

CREATE SEQUENCE banana.bananas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: bananas_id_seq; Type: SEQUENCE OWNED BY; Schema: banana; Owner: -
--

ALTER SEQUENCE banana.bananas_id_seq OWNED BY banana.bananas.id;


--
-- Name: apples; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.apples (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: apples_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.apples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: apples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.apples_id_seq OWNED BY public.apples.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


--
-- Name: bananas id; Type: DEFAULT; Schema: banana; Owner: -
--

ALTER TABLE ONLY banana.bananas ALTER COLUMN id SET DEFAULT nextval('banana.bananas_id_seq'::regclass);


--
-- Name: apples id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.apples ALTER COLUMN id SET DEFAULT nextval('public.apples_id_seq'::regclass);


--
-- Name: bananas bananas_pkey; Type: CONSTRAINT; Schema: banana; Owner: -
--

ALTER TABLE ONLY banana.bananas
    ADD CONSTRAINT bananas_pkey PRIMARY KEY (id);


--
-- Name: apples apples_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.apples
    ADD CONSTRAINT apples_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

SET search_path TO public,banana;

INSERT INTO "schema_migrations" (version) VALUES
('20210709163610'),
('20210709164042'),
('20210709164057');


