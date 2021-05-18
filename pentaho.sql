--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: parcelas_pagas_por_vendedor; Type: TABLE; Schema: public; Owner: pentaho; Tablespace: 
--

CREATE TABLE public.parcelas_pagas_por_vendedor (
    vendedor character varying(30),
    count bigint,
    sum double precision
);


ALTER TABLE public.parcelas_pagas_por_vendedor OWNER TO pentaho;

--
-- Name: parcelas_previstas; Type: TABLE; Schema: public; Owner: pentaho; Tablespace: 
--

CREATE TABLE public.parcelas_previstas (
    periodo character varying,
    quantidade bigint,
    valor double precision
);


ALTER TABLE public.parcelas_previstas OWNER TO pentaho;

--
-- Name: parcelas_vencidas; Type: TABLE; Schema: public; Owner: pentaho; Tablespace: 
--

CREATE TABLE public.parcelas_vencidas (
    periodo character varying,
    quantidade bigint,
    valor double precision
);


ALTER TABLE public.parcelas_vencidas OWNER TO pentaho;

--
-- Name: vendas_por_loja_cliente; Type: TABLE; Schema: public; Owner: pentaho; Tablespace: 
--

CREATE TABLE public.vendas_por_loja_cliente (
    loja character varying(30),
    cliente character varying(30),
    count bigint,
    valor double precision
);


ALTER TABLE public.vendas_por_loja_cliente OWNER TO pentaho;

--
-- Data for Name: parcelas_pagas_por_vendedor; Type: TABLE DATA; Schema: public; Owner: pentaho
--

COPY public.parcelas_pagas_por_vendedor (vendedor, count, sum) FROM stdin;
VENDEDOR6	45	8381
VENDEDOR3	31	5840
VENDEDOR1	21	6429
VENDEDOR7	28	7852
VENDEDOR5	19	4969
VENDEDOR4	15	3789
VENDEDOR2	30	6477
\.


--
-- Data for Name: parcelas_previstas; Type: TABLE DATA; Schema: public; Owner: pentaho
--

COPY public.parcelas_previstas (periodo, quantidade, valor) FROM stdin;
2021/5	5	2160
2021/9	1	180
2021/8	1	180
2021/7	1	340
2021/5	5	2160
2021/9	1	180
2021/8	1	180
2021/7	1	340
2021/5	5	2160
2021/9	1	180
2021/8	1	180
2021/7	1	340
2021/5	5	2160
2021/9	1	180
2021/8	1	180
2021/7	1	340
2021/5	5	2160
2021/9	1	180
2021/8	1	180
2021/7	1	340
\.


--
-- Data for Name: parcelas_vencidas; Type: TABLE DATA; Schema: public; Owner: pentaho
--

COPY public.parcelas_vencidas (periodo, quantidade, valor) FROM stdin;
2021/2	8	1440
2021/4	16	6530
2021/2	8	1440
2021/4	16	6530
2021/2	8	1440
2021/4	16	6530
2021/2	8	1440
2021/4	16	6530
\.


--
-- Data for Name: vendas_por_loja_cliente; Type: TABLE DATA; Schema: public; Owner: pentaho
--

COPY public.vendas_por_loja_cliente (loja, cliente, count, valor) FROM stdin;
LOJA3	CLIENTE9	5	8110
LOJA2	CLIENTE4	7	10570
LOJA1	CLIENTE1	3	4065
LOJA2	CLIENTE5	2	2010
LOJA3	CLIENTE7	4	5385
LOJA3	CLIENTE8	5	8325
LOJA3	CLIENTE10	2	2700
LOJA2	CLIENTE3	2	3045
LOJA2	CLIENTE6	2	6960
LOJA1	CLIENTE3	3	5910
LOJA1	CLIENTE2	4	9900
LOJA3	CLIENTE3	2	1580
\.


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pentaho
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM pentaho;
GRANT ALL ON SCHEMA public TO pentaho;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

