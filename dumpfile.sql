--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: Task1; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Task1";


ALTER SCHEMA "Task1" OWNER TO postgres;

--
-- Name: SCHEMA "Task1"; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA "Task1" IS 'standard public schema';


--
-- Name: Task2; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Task2";


ALTER SCHEMA "Task2" OWNER TO postgres;

--
-- Name: Task3; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Task3";


ALTER SCHEMA "Task3" OWNER TO postgres;

--
-- Name: Task4; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Task4";


ALTER SCHEMA "Task4" OWNER TO postgres;

--
-- Name: Task5; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Task5";


ALTER SCHEMA "Task5" OWNER TO postgres;

--
-- Name: Task6; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "Task6";


ALTER SCHEMA "Task6" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: address; Type: TABLE; Schema: Task1; Owner: postgres
--

CREATE TABLE "Task1".address (
    addressid integer,
    personid integer NOT NULL,
    city character varying(255),
    state character varying(255)
);


ALTER TABLE "Task1".address OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: Task1; Owner: postgres
--

CREATE TABLE "Task1".person (
    personid integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255)
);


ALTER TABLE "Task1".person OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: Task2; Owner: postgres
--

CREATE TABLE "Task2".employee (
    id integer NOT NULL,
    salary integer
);


ALTER TABLE "Task2".employee OWNER TO postgres;

--
-- Name: employee; Type: TABLE; Schema: Task3; Owner: postgres
--

CREATE TABLE "Task3".employee (
    id integer NOT NULL,
    name character varying(255),
    salary integer,
    managerid integer
);


ALTER TABLE "Task3".employee OWNER TO postgres;

--
-- Name: person; Type: TABLE; Schema: Task4; Owner: postgres
--

CREATE TABLE "Task4".person (
    id integer NOT NULL,
    email character varying(255)
);


ALTER TABLE "Task4".person OWNER TO postgres;

--
-- Name: customers; Type: TABLE; Schema: Task5; Owner: postgres
--

CREATE TABLE "Task5".customers (
    id integer NOT NULL,
    name character varying
);


ALTER TABLE "Task5".customers OWNER TO postgres;

--
-- Name: orders; Type: TABLE; Schema: Task5; Owner: postgres
--

CREATE TABLE "Task5".orders (
    id integer,
    customerid integer NOT NULL
);


ALTER TABLE "Task5".orders OWNER TO postgres;

--
-- Name: courses; Type: TABLE; Schema: Task6; Owner: postgres
--

CREATE TABLE "Task6".courses (
    student character varying(255) NOT NULL,
    class character varying(255)
);


ALTER TABLE "Task6".courses OWNER TO postgres;

--
-- Data for Name: address; Type: TABLE DATA; Schema: Task1; Owner: postgres
--

COPY "Task1".address (addressid, personid, city, state) FROM stdin;
1	2	New York City	New York
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: Task1; Owner: postgres
--

COPY "Task1".person (personid, firstname, lastname) FROM stdin;
1	Wang\n	Allen
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: Task2; Owner: postgres
--

COPY "Task2".employee (id, salary) FROM stdin;
1	100
2	200
3	300
\.


--
-- Data for Name: employee; Type: TABLE DATA; Schema: Task3; Owner: postgres
--

COPY "Task3".employee (id, name, salary, managerid) FROM stdin;
1	Joe	70000	3
2	Henry	80000	4
3	Sam	60000	\N
4	Max	90000	\N
\.


--
-- Data for Name: person; Type: TABLE DATA; Schema: Task4; Owner: postgres
--

COPY "Task4".person (id, email) FROM stdin;
1	a@b.com
2	c@d.com
3	a@b.com
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: Task5; Owner: postgres
--

COPY "Task5".customers (id, name) FROM stdin;
1	Joe\n
2	Henry
3	Sam
4	Max
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: Task5; Owner: postgres
--

COPY "Task5".orders (id, customerid) FROM stdin;
1	3
2	1
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: Task6; Owner: postgres
--

COPY "Task6".courses (student, class) FROM stdin;
A	Math\n
B	English
C	Math
D	Biology
E	Math
F	Computer
G	Math
H	Math
I	Math
\.


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: Task1; Owner: postgres
--

ALTER TABLE ONLY "Task1".address
    ADD CONSTRAINT address_pkey PRIMARY KEY (personid);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: Task1; Owner: postgres
--

ALTER TABLE ONLY "Task1".person
    ADD CONSTRAINT person_pkey PRIMARY KEY (personid);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: Task2; Owner: postgres
--

ALTER TABLE ONLY "Task2".employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: Task3; Owner: postgres
--

ALTER TABLE ONLY "Task3".employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (id);


--
-- Name: person person_pkey; Type: CONSTRAINT; Schema: Task4; Owner: postgres
--

ALTER TABLE ONLY "Task4".person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: Task5; Owner: postgres
--

ALTER TABLE ONLY "Task5".customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: Task5; Owner: postgres
--

ALTER TABLE ONLY "Task5".orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (customerid);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: Task6; Owner: postgres
--

ALTER TABLE ONLY "Task6".courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (student);


--
-- PostgreSQL database dump complete
--

