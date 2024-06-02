--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: free1; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.free1 (
    free1_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_km numeric(10,8),
    description text,
    destroyed boolean,
    temperature_celcius integer,
    family_numbers integer,
    habitat_human boolean,
    number_unique integer,
    foreign_key_column integer NOT NULL
);


ALTER TABLE public.free1 OWNER TO freecodecamp;

--
-- Name: free1_foreign_key_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.free1_foreign_key_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.free1_foreign_key_column_seq OWNER TO freecodecamp;

--
-- Name: free1_foreign_key_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.free1_foreign_key_column_seq OWNED BY public.free1.foreign_key_column;


--
-- Name: free1_free1_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.free1_free1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.free1_free1_id_seq OWNER TO freecodecamp;

--
-- Name: free1_free1_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.free1_free1_id_seq OWNED BY public.free1.free1_id;


--
-- Name: free2; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.free2 (
    free2_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_km numeric(10,8),
    description text,
    destroyed boolean,
    temperature_celcius integer,
    family_numbers integer,
    habitat_human boolean,
    number_unique integer,
    foreign_key_column integer NOT NULL
);


ALTER TABLE public.free2 OWNER TO freecodecamp;

--
-- Name: free2_foreign_key_column_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.free2_foreign_key_column_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.free2_foreign_key_column_seq OWNER TO freecodecamp;

--
-- Name: free2_foreign_key_column_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.free2_foreign_key_column_seq OWNED BY public.free2.foreign_key_column;


--
-- Name: free2_free2_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.free2_free2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.free2_free2_id_seq OWNER TO freecodecamp;

--
-- Name: free2_free2_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.free2_free2_id_seq OWNED BY public.free2.free2_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_km numeric(10,8),
    description text,
    destroyed boolean,
    temperature_celcius integer,
    family_numbers integer,
    habitat_human boolean,
    number_unique integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_km numeric(10,8),
    description text,
    destroyed boolean,
    temperature_celcius integer,
    family_numbers integer,
    habitat_human boolean,
    number_unique integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_km numeric(10,8),
    description text,
    destroyed boolean,
    temperature_celcius integer,
    family_numbers integer,
    habitat_human boolean,
    number_unique integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    distance_from_earth_km numeric(10,8),
    description text,
    destroyed boolean,
    temperature_celcius integer,
    family_numbers integer,
    habitat_human boolean,
    number_unique integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: free1 free1_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free1 ALTER COLUMN free1_id SET DEFAULT nextval('public.free1_free1_id_seq'::regclass);


--
-- Name: free1 foreign_key_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free1 ALTER COLUMN foreign_key_column SET DEFAULT nextval('public.free1_foreign_key_column_seq'::regclass);


--
-- Name: free2 free2_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free2 ALTER COLUMN free2_id SET DEFAULT nextval('public.free2_free2_id_seq'::regclass);


--
-- Name: free2 foreign_key_column; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free2 ALTER COLUMN foreign_key_column SET DEFAULT nextval('public.free2_foreign_key_column_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: free1; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.free1 VALUES (1, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 454, 1);
INSERT INTO public.free1 VALUES (2, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 325, 2);
INSERT INTO public.free1 VALUES (3, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 323, 3);


--
-- Data for Name: free2; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.free2 VALUES (1, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 448, 1);
INSERT INTO public.free2 VALUES (2, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 3229, 2);
INSERT INTO public.free2 VALUES (3, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 696969, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 44545);
INSERT INTO public.galaxy VALUES (2, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 44546);
INSERT INTO public.galaxy VALUES (3, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 44547);
INSERT INTO public.galaxy VALUES (4, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 44548);
INSERT INTO public.galaxy VALUES (5, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 44549);
INSERT INTO public.galaxy VALUES (6, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445410);
INSERT INTO public.galaxy VALUES (7, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50000);
INSERT INTO public.galaxy VALUES (8, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50001);
INSERT INTO public.galaxy VALUES (9, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50002);
INSERT INTO public.galaxy VALUES (10, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50003);
INSERT INTO public.galaxy VALUES (11, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50004);
INSERT INTO public.galaxy VALUES (12, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50005);
INSERT INTO public.galaxy VALUES (13, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50006);
INSERT INTO public.galaxy VALUES (14, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50007);
INSERT INTO public.galaxy VALUES (15, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50008);
INSERT INTO public.galaxy VALUES (16, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50009);
INSERT INTO public.galaxy VALUES (17, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50010);
INSERT INTO public.galaxy VALUES (18, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50011);
INSERT INTO public.galaxy VALUES (19, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50012);
INSERT INTO public.galaxy VALUES (20, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 50013);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600008, 1);
INSERT INTO public.moon VALUES (2, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600009, 2);
INSERT INTO public.moon VALUES (3, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600010, 3);
INSERT INTO public.moon VALUES (4, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600011, 4);
INSERT INTO public.moon VALUES (5, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600012, 5);
INSERT INTO public.moon VALUES (6, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600013, 6);
INSERT INTO public.moon VALUES (7, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600014, 7);
INSERT INTO public.moon VALUES (8, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600015, 8);
INSERT INTO public.moon VALUES (9, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600030, 9);
INSERT INTO public.moon VALUES (10, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600032, 10);
INSERT INTO public.moon VALUES (11, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600033, 11);
INSERT INTO public.moon VALUES (12, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600034, 12);
INSERT INTO public.moon VALUES (13, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600036, 13);
INSERT INTO public.moon VALUES (14, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600038, 14);
INSERT INTO public.moon VALUES (15, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600040, 15);
INSERT INTO public.moon VALUES (16, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600042, 16);
INSERT INTO public.moon VALUES (17, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600045, 17);
INSERT INTO public.moon VALUES (18, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600047, 18);
INSERT INTO public.moon VALUES (19, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600048, 19);
INSERT INTO public.moon VALUES (20, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600049, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445427, 1);
INSERT INTO public.planet VALUES (2, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445428, 2);
INSERT INTO public.planet VALUES (3, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445429, 3);
INSERT INTO public.planet VALUES (4, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445430, 4);
INSERT INTO public.planet VALUES (5, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445431, 5);
INSERT INTO public.planet VALUES (6, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445432, 6);
INSERT INTO public.planet VALUES (7, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445433, 7);
INSERT INTO public.planet VALUES (8, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445434, 8);
INSERT INTO public.planet VALUES (9, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445435, 9);
INSERT INTO public.planet VALUES (10, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445436, 10);
INSERT INTO public.planet VALUES (11, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445437, 11);
INSERT INTO public.planet VALUES (12, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445438, 12);
INSERT INTO public.planet VALUES (13, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600000, 13);
INSERT INTO public.planet VALUES (14, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600001, 14);
INSERT INTO public.planet VALUES (15, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600002, 15);
INSERT INTO public.planet VALUES (16, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600003, 16);
INSERT INTO public.planet VALUES (17, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600004, 17);
INSERT INTO public.planet VALUES (18, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600005, 18);
INSERT INTO public.planet VALUES (19, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600006, 19);
INSERT INTO public.planet VALUES (20, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 600007, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445411, 1);
INSERT INTO public.star VALUES (2, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445412, 2);
INSERT INTO public.star VALUES (3, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445413, 3);
INSERT INTO public.star VALUES (4, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445414, 4);
INSERT INTO public.star VALUES (5, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445415, 5);
INSERT INTO public.star VALUES (6, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445416, 6);
INSERT INTO public.star VALUES (7, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445417, 7);
INSERT INTO public.star VALUES (8, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445418, 8);
INSERT INTO public.star VALUES (9, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445419, 9);
INSERT INTO public.star VALUES (10, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445420, 10);
INSERT INTO public.star VALUES (11, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445421, 11);
INSERT INTO public.star VALUES (12, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445422, 12);
INSERT INTO public.star VALUES (13, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445423, 13);
INSERT INTO public.star VALUES (14, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445424, 14);
INSERT INTO public.star VALUES (15, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445425, 15);
INSERT INTO public.star VALUES (16, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445426, 16);
INSERT INTO public.star VALUES (17, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445427, 17);
INSERT INTO public.star VALUES (18, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445428, 18);
INSERT INTO public.star VALUES (19, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445429, 19);
INSERT INTO public.star VALUES (20, 'AAA', 1.10000000, 'kdsad', false, 32, 5, true, 445430, 20);


--
-- Name: free1_foreign_key_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.free1_foreign_key_column_seq', 3, true);


--
-- Name: free1_free1_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.free1_free1_id_seq', 1, false);


--
-- Name: free2_foreign_key_column_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.free2_foreign_key_column_seq', 3, true);


--
-- Name: free2_free2_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.free2_free2_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 20, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: free1 free1_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free1
    ADD CONSTRAINT free1_number_unique_key UNIQUE (number_unique);


--
-- Name: free1 free1_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free1
    ADD CONSTRAINT free1_pkey PRIMARY KEY (free1_id);


--
-- Name: free2 free2_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free2
    ADD CONSTRAINT free2_number_unique_key UNIQUE (number_unique);


--
-- Name: free2 free2_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.free2
    ADD CONSTRAINT free2_pkey PRIMARY KEY (free2_id);


--
-- Name: galaxy galaxy_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_number_unique_key UNIQUE (number_unique);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_number_unique_key UNIQUE (number_unique);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_number_unique_key UNIQUE (number_unique);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_number_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_number_unique_key UNIQUE (number_unique);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

