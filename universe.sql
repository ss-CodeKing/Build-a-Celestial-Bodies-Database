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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    diameter_km numeric,
    distance_from_earth_km numeric,
    is_active boolean
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    galaxy_type character varying(50),
    age_in_millions_of_years integer,
    is_spherical boolean
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
    planet_id integer,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer
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
    star_id integer,
    name character varying(100) NOT NULL,
    description text,
    planet_type character varying(50),
    age_in_millions_of_years integer
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
    galaxy_id integer,
    name character varying(100) NOT NULL,
    description text,
    distance_from_earth integer,
    has_life boolean
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Halley''s Comet', 'Famous periodic comet', 15.0, 43.2, true);
INSERT INTO public.comet VALUES (2, 'Comet Lovejoy', 'Bright comet visible in 2011', 5.3, 80.6, false);
INSERT INTO public.comet VALUES (3, 'Comet Hale-Bopp', 'Widely observed comet in 1997', 60.0, 215.0, false);
INSERT INTO public.comet VALUES (4, 'Comet McNaught', 'Brightest comet visible in 40 years (2007)', 3.5, 147.2, false);
INSERT INTO public.comet VALUES (5, 'Comet ISON', 'Potential "comet of the century" (2013)', 4.0, 370.0, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 'Spiral', 13000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest spiral galaxy to Milky Way', 'Spiral', 22000, true);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 'Known for its spiral arms', 'Spiral', 25000, true);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 'Elliptical galaxy with prominent dust lane', 'Elliptical', 12000, false);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 'Cigar-shaped galaxy', 'Irregular', 7000, false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 'Sombrero-shaped galaxy', 'Spiral', 8000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (26, 1, 'Moon', 'Earth''s natural satellite', 4500);
INSERT INTO public.moon VALUES (27, 3, 'Io', 'Jupiter''s moon', 100);
INSERT INTO public.moon VALUES (28, 3, 'Callisto', 'Jupiter''s moon', 100);
INSERT INTO public.moon VALUES (29, 3, 'Ganymede', 'Jupiter''s moon', 100);
INSERT INTO public.moon VALUES (30, 4, 'Enceladus', 'Saturn''s moon', 200);
INSERT INTO public.moon VALUES (31, 4, 'Rhea', 'Saturn''s moon', 200);
INSERT INTO public.moon VALUES (32, 5, 'Triton', 'Neptune''s moon', 300);
INSERT INTO public.moon VALUES (33, 6, 'Titania', 'Uranus''s moon', 400);
INSERT INTO public.moon VALUES (34, 6, 'Oberon', 'Uranus''s moon', 400);
INSERT INTO public.moon VALUES (35, 6, 'Charon', 'Pluto''s moon', 4600);
INSERT INTO public.moon VALUES (36, 7, 'Europa', 'Jupiter''s moon', 100);
INSERT INTO public.moon VALUES (37, 8, 'Titan', 'Saturn''s moon', 200);
INSERT INTO public.moon VALUES (38, 9, 'Nix', 'Pluto''s moon', 4600);
INSERT INTO public.moon VALUES (39, 9, 'Hydra', 'Pluto''s moon', 4600);
INSERT INTO public.moon VALUES (40, 9, 'Kerberos', 'Pluto''s moon', 4600);
INSERT INTO public.moon VALUES (41, 9, 'Styx', 'Pluto''s moon', 4600);
INSERT INTO public.moon VALUES (42, 10, 'Luna', 'Earth''s moon', 4500);
INSERT INTO public.moon VALUES (43, 10, 'Phobos', 'Mars''s moon', 3500);
INSERT INTO public.moon VALUES (44, 10, 'Deimos', 'Mars''s moon', 3500);
INSERT INTO public.moon VALUES (45, 7, 'Larissa', 'Neptune''s moon', 500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', 'Our home planet', 'Terrestrial', 4500);
INSERT INTO public.planet VALUES (2, 1, 'Mars', 'The Red Planet', 'Terrestrial', 3500);
INSERT INTO public.planet VALUES (3, 2, 'Jupiter', 'Largest planet in the Solar System', 'Gas Giant', 4600);
INSERT INTO public.planet VALUES (4, 2, 'Saturn', 'Known for its rings', 'Gas Giant', 4400);
INSERT INTO public.planet VALUES (5, 3, 'Mercury', 'Closest planet to the Sun', 'Terrestrial', 4000);
INSERT INTO public.planet VALUES (6, 4, 'Venus', 'Second planet from the Sun', 'Terrestrial', 4200);
INSERT INTO public.planet VALUES (7, 5, 'Neptune', 'Eighth planet from the Sun', 'Ice Giant', 4200);
INSERT INTO public.planet VALUES (8, 6, 'Uranus', 'Seventh planet from the Sun', 'Ice Giant', 4300);
INSERT INTO public.planet VALUES (9, 6, 'Pluto', 'Dwarf planet', 'Dwarf', 4600);
INSERT INTO public.planet VALUES (10, 3, 'Europa', 'Jupiter''s moon', 'Moon', 100);
INSERT INTO public.planet VALUES (11, 3, 'Ganymede', 'Largest moon in the Solar System', 'Moon', 100);
INSERT INTO public.planet VALUES (12, 4, 'Titan', 'Saturn''s moon', 'Moon', 200);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 'Our star', 0, true);
INSERT INTO public.star VALUES (2, 1, 'Sirius', 'Brightest star in the night sky', 9, false);
INSERT INTO public.star VALUES (3, 2, 'Proxima Centauri', 'Closest known star to the Sun', 4, false);
INSERT INTO public.star VALUES (4, 2, 'Alpha Centauri A', 'Closest star system to the Sun', 4, false);
INSERT INTO public.star VALUES (5, 3, 'Betelgeuse', 'Red supergiant in the constellation Orion', 640, false);
INSERT INTO public.star VALUES (6, 3, 'Polaris', 'North Star', 434, false);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 45, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_name UNIQUE (name);


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

