--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-3.pgdg90+1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-3.pgdg90+1)

-- Started on 2022-08-31 18:04:21 KST

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
-- TOC entry 201 (class 1259 OID 16492)
-- Name: buyer; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.buyer (
    id integer NOT NULL,
    name character varying NOT NULL,
    money bigint NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    updated_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.buyer OWNER TO test;

--
-- TOC entry 203 (class 1259 OID 16506)
-- Name: buyer_product; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.buyer_product (
    id integer NOT NULL,
    buyer integer,
    product integer
);


ALTER TABLE public.buyer_product OWNER TO test;

--
-- TOC entry 202 (class 1259 OID 16504)
-- Name: buyer_product_id_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.buyer_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.buyer_product_id_seq OWNER TO test;

--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 202
-- Name: buyer_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.buyer_product_id_seq OWNED BY public.buyer_product.id;


--
-- TOC entry 199 (class 1259 OID 16469)
-- Name: product; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying NOT NULL,
    price bigint DEFAULT 0 NOT NULL,
    "desc" character varying,
    seller integer NOT NULL,
    created_at timestamp without time zone DEFAULT now(),
    updated_at timestamp without time zone DEFAULT now()
);


ALTER TABLE public.product OWNER TO test;

--
-- TOC entry 198 (class 1259 OID 16467)
-- Name: product_id_seq1; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.product_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq1 OWNER TO test;

--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 198
-- Name: product_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.product_id_seq1 OWNED BY public.product.id;


--
-- TOC entry 197 (class 1259 OID 16456)
-- Name: seller; Type: TABLE; Schema: public; Owner: test
--

CREATE TABLE public.seller (
    id integer NOT NULL,
    name character varying NOT NULL,
    money bigint NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    update_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.seller OWNER TO test;

--
-- TOC entry 196 (class 1259 OID 16454)
-- Name: seller_id_seq1; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.seller_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seller_id_seq1 OWNER TO test;

--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 196
-- Name: seller_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.seller_id_seq1 OWNED BY public.seller.id;


--
-- TOC entry 200 (class 1259 OID 16490)
-- Name: untitled_table_194_id_seq; Type: SEQUENCE; Schema: public; Owner: test
--

CREATE SEQUENCE public.untitled_table_194_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.untitled_table_194_id_seq OWNER TO test;

--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 200
-- Name: untitled_table_194_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: test
--

ALTER SEQUENCE public.untitled_table_194_id_seq OWNED BY public.buyer.id;


--
-- TOC entry 2768 (class 2604 OID 16495)
-- Name: buyer id; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.buyer ALTER COLUMN id SET DEFAULT nextval('public.untitled_table_194_id_seq'::regclass);


--
-- TOC entry 2771 (class 2604 OID 16509)
-- Name: buyer_product id; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.buyer_product ALTER COLUMN id SET DEFAULT nextval('public.buyer_product_id_seq'::regclass);


--
-- TOC entry 2764 (class 2604 OID 16472)
-- Name: product id; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq1'::regclass);


--
-- TOC entry 2761 (class 2604 OID 16459)
-- Name: seller id; Type: DEFAULT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.seller ALTER COLUMN id SET DEFAULT nextval('public.seller_id_seq1'::regclass);


--
-- TOC entry 2908 (class 0 OID 16492)
-- Dependencies: 201
-- Data for Name: buyer; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.buyer (id, name, money, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2910 (class 0 OID 16506)
-- Dependencies: 203
-- Data for Name: buyer_product; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.buyer_product (id, buyer, product) FROM stdin;
\.


--
-- TOC entry 2906 (class 0 OID 16469)
-- Dependencies: 199
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.product (id, name, price, "desc", seller, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2904 (class 0 OID 16456)
-- Dependencies: 197
-- Data for Name: seller; Type: TABLE DATA; Schema: public; Owner: test
--

COPY public.seller (id, name, money, created_at, update_at) FROM stdin;
\.


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 202
-- Name: buyer_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.buyer_product_id_seq', 1, false);


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 198
-- Name: product_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.product_id_seq1', 1, false);


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 196
-- Name: seller_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.seller_id_seq1', 1, false);


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 200
-- Name: untitled_table_194_id_seq; Type: SEQUENCE SET; Schema: public; Owner: test
--

SELECT pg_catalog.setval('public.untitled_table_194_id_seq', 1, false);


--
-- TOC entry 2779 (class 2606 OID 16511)
-- Name: buyer_product buyer_product_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.buyer_product
    ADD CONSTRAINT buyer_product_pkey PRIMARY KEY (id);


--
-- TOC entry 2775 (class 2606 OID 16477)
-- Name: product product_pkey1; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey1 PRIMARY KEY (id);


--
-- TOC entry 2773 (class 2606 OID 16461)
-- Name: seller seller_pkey1; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey1 PRIMARY KEY (id);


--
-- TOC entry 2777 (class 2606 OID 16497)
-- Name: buyer untitled_table_194_pkey; Type: CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.buyer
    ADD CONSTRAINT untitled_table_194_pkey PRIMARY KEY (id);


--
-- TOC entry 2780 (class 2606 OID 16512)
-- Name: buyer_product buyer_product_buyer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.buyer_product
    ADD CONSTRAINT buyer_product_buyer_fkey FOREIGN KEY (buyer) REFERENCES public.buyer(id);


--
-- TOC entry 2781 (class 2606 OID 16517)
-- Name: buyer_product buyer_product_product_fkey; Type: FK CONSTRAINT; Schema: public; Owner: test
--

ALTER TABLE ONLY public.buyer_product
    ADD CONSTRAINT buyer_product_product_fkey FOREIGN KEY (product) REFERENCES public.product(id);


-- Completed on 2022-08-31 18:04:21 KST

--
-- PostgreSQL database dump complete
--

