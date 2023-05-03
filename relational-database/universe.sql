--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(50) NOT NULL,
    dangerous boolean,
    age integer,
    description text
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_aliens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_aliens_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_aliens_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    size_order integer NOT NULL,
    description text,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    gravity numeric(4,1),
    description text,
    age integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50),
    population integer NOT NULL,
    gravity numeric(4,1),
    description text,
    alive boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    alive boolean,
    age integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_aliens_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Mothman', true, 12, '');
INSERT INTO public.aliens VALUES (2, 'Nommo', false, 1452, '');
INSERT INTO public.aliens VALUES (3, 'Yokaio', false, 52, '');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 1, '', 220000);
INSERT INTO public.galaxy VALUES (2, 'Pinwheel', 2, '', 170000);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel', 3, '', 130000);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 4, '', 60000);
INSERT INTO public.galaxy VALUES (5, 'Black Eye', 5, '', 52000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 6, '', 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (3, 'Moon1', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (4, 'Moon2', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (5, 'Moon3', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (6, 'Moon4', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (7, 'Moon5', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (8, 'Moon6', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (9, 'Moon7', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (10, 'Moon8', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (11, 'Moon9', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (12, 'Moon10', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (13, 'Moon11', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (14, 'Moon12', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (15, 'Moon13', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (16, 'Moon14', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (17, 'Moon15', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (18, 'Moon16', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (19, 'Moon17', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (20, 'Moon18', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (21, 'Moon19', 0.5, NULL, 20000, 1);
INSERT INTO public.moon VALUES (22, 'Moon20', 0.5, NULL, 20000, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (2, 'Earth1', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth2', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (5, 'Earth3', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (6, 'Earth4', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (7, 'Earth5', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (8, 'Earth6', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (9, 'Earth7', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (10, 'Earth8', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (11, 'Earth9', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (12, 'Earth10', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (13, 'Earth11', 90000000, 1.0, NULL, true, 1);
INSERT INTO public.planet VALUES (14, 'Earth12', 90000000, 1.0, NULL, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', true, 20000, 1);
INSERT INTO public.star VALUES (2, 'Star1', true, 20000, 1);
INSERT INTO public.star VALUES (3, 'Star2', true, 20000, 1);
INSERT INTO public.star VALUES (4, 'Star3', true, 20000, 1);
INSERT INTO public.star VALUES (5, 'Star4', true, 20000, 1);
INSERT INTO public.star VALUES (6, 'Star5', true, 20000, 1);
INSERT INTO public.star VALUES (7, 'Star6', true, 20000, 1);


--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_aliens_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 22, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 7, true);


--
-- Name: aliens aliens_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_name_key UNIQUE (name);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

