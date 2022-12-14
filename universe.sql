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
-- Name: descriptions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.descriptions (
    descriptions_id integer NOT NULL,
    object_id integer,
    name character varying NOT NULL,
    details text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.descriptions OWNER TO freecodecamp;

--
-- Name: descriptions_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.descriptions_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descriptions_description_id_seq OWNER TO freecodecamp;

--
-- Name: descriptions_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.descriptions_description_id_seq OWNED BY public.descriptions.descriptions_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years numeric(1,1),
    distance_from_earth integer,
    galaxy_type character varying
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
    name character varying NOT NULL,
    age_in_millions_of_years numeric(1,1),
    distance_from_earth integer,
    planet_id integer
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years numeric(1,1),
    distance_from_earth integer,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years numeric(1,1),
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: descriptions descriptions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions ALTER COLUMN descriptions_id SET DEFAULT nextval('public.descriptions_description_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: descriptions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.descriptions VALUES (1, 1, 'name', 'its something', false, false);
INSERT INTO public.descriptions VALUES (2, 2, 'name', 'its something', false, false);
INSERT INTO public.descriptions VALUES (3, 3, 'name', 'its something', false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 0.3, 10000, 'type1');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 0.4, 20000, 'type2');
INSERT INTO public.galaxy VALUES (3, 'Backward', 0.5, 30000, 'type3');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 0.6, 40000, 'type4');
INSERT INTO public.galaxy VALUES (5, 'Butterflu', 0.7, 50000, 'type5');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 0.8, 60000, 'type6');
INSERT INTO public.galaxy VALUES (7, 'Milkey Way', 0.1, 100, 'type7');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.1, 100, 15);
INSERT INTO public.moon VALUES (2, 'Deimos', 0.1, 100, 16);
INSERT INTO public.moon VALUES (3, 'Phobos', 0.1, 100, 16);
INSERT INTO public.moon VALUES (4, 'Amalthea', 0.1, 100, 17);
INSERT INTO public.moon VALUES (5, 'Callisto', 0.1, 100, 17);
INSERT INTO public.moon VALUES (6, 'Europa', 0.1, 100, 17);
INSERT INTO public.moon VALUES (7, 'Ganymede', 0.1, 100, 17);
INSERT INTO public.moon VALUES (8, 'Io', 0.1, 100, 17);
INSERT INTO public.moon VALUES (9, 'Dione', 0.1, 100, 18);
INSERT INTO public.moon VALUES (10, 'Enceladus', 0.1, 100, 18);
INSERT INTO public.moon VALUES (11, 'Hyperion', 0.1, 100, 18);
INSERT INTO public.moon VALUES (12, 'Iapetus', 0.1, 100, 18);
INSERT INTO public.moon VALUES (13, 'Mimas', 0.1, 100, 18);
INSERT INTO public.moon VALUES (14, 'Phoebe', 0.1, 100, 18);
INSERT INTO public.moon VALUES (15, 'Rhea', 0.1, 100, 18);
INSERT INTO public.moon VALUES (16, 'Tethys', 0.1, 100, 18);
INSERT INTO public.moon VALUES (17, 'Titan', 0.1, 100, 18);
INSERT INTO public.moon VALUES (18, 'Ariel', 0.1, 100, 19);
INSERT INTO public.moon VALUES (19, 'Miranda', 0.1, 100, 19);
INSERT INTO public.moon VALUES (20, 'Oberon', 0.1, 100, 19);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Mercury', 0.1, 10, 8);
INSERT INTO public.planet VALUES (14, 'Venus', 0.2, 10, 8);
INSERT INTO public.planet VALUES (15, 'Earth', 0.2, 0, 8);
INSERT INTO public.planet VALUES (16, 'Mars', 0.2, 20, 8);
INSERT INTO public.planet VALUES (17, 'Jupyter', 0.5, 50, 8);
INSERT INTO public.planet VALUES (18, 'Saturn', 0.6, 60, 8);
INSERT INTO public.planet VALUES (19, 'Uranus', 0.7, 70, 8);
INSERT INTO public.planet VALUES (20, 'Neptune', 0.8, 80, 8);
INSERT INTO public.planet VALUES (21, 'PlanetA', 0.9, 10000, 1);
INSERT INTO public.planet VALUES (22, 'PlanetB', 0.1, 12000, 2);
INSERT INTO public.planet VALUES (23, 'PlanetC', 0.2, 13000, 3);
INSERT INTO public.planet VALUES (24, 'PlanetD', 0.4, 50000, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Andromeda', 0.3, 10000, 1);
INSERT INTO public.star VALUES (2, 'Corvus', 0.4, 20000, 2);
INSERT INTO public.star VALUES (3, 'Centaurus', 0.5, 30000, 3);
INSERT INTO public.star VALUES (4, 'Coma Berenices', 0.6, 40000, 4);
INSERT INTO public.star VALUES (5, 'Virgo', 0.7, 50000, 5);
INSERT INTO public.star VALUES (6, 'Sculptor', 0.8, 60000, 6);
INSERT INTO public.star VALUES (8, 'Sun', 0.1, 100, 7);


--
-- Name: descriptions_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.descriptions_description_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: descriptions descriptions_description_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions
    ADD CONSTRAINT descriptions_description_id_key UNIQUE (descriptions_id);


--
-- Name: descriptions descriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.descriptions
    ADD CONSTRAINT descriptions_pkey PRIMARY KEY (descriptions_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

