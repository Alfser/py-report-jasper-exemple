--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

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

SET default_table_access_method = heap;

--
-- Name: pessoa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pessoa (
    id integer NOT NULL,
    nome character varying(100) NOT NULL,
    rua character varying(255) NOT NULL,
    cidade character varying(100) NOT NULL,
    telefone character varying(20) NOT NULL
);


ALTER TABLE public.pessoa OWNER TO postgres;

--
-- Name: pessoa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pessoa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pessoa_id_seq OWNER TO postgres;

--
-- Name: pessoa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pessoa_id_seq OWNED BY public.pessoa.id;


--
-- Name: pessoa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa ALTER COLUMN id SET DEFAULT nextval('public.pessoa_id_seq'::regclass);


--
-- Data for Name: pessoa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pessoa (id, nome, rua, cidade, telefone) FROM stdin;
1	Tony Stark	10880 Malibu Point	Malibu	555-1234
2	Steve Rogers	569 Leaman Place	Brooklyn	555-5678
3	Bruce Banner	177A Bleecker Street	New York	555-9012
4	Natasha Romanoff	76th Street & 1st Avenue	New York	555-3456
5	Clint Barton	742 Evergreen Terrace	New York	555-7890
6	Thor Odinson	Asgard Palace	Asgard	555-2345
7	Peter Parker	20 Ingram Street	New York	555-6789
8	Wanda Maximoff	Sokovia	Sokovia	555-4321
9	Vision	Avengers Compound	New York	555-8765
10	James Rhodes	2524 Sherwood Drive	Philadelphia	555-2109
\.


--
-- Name: pessoa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pessoa_id_seq', 10, true);


--
-- Name: pessoa pessoa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pessoa
    ADD CONSTRAINT pessoa_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

