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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40),
    description text,
    escape_velocity_in_kmps integer,
    no_of_stars integer,
    hidden boolean DEFAULT false NOT NULL
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
    name character varying(40),
    age_in_million_of_years integer,
    distance_from_earth numeric,
    description text,
    planet_id integer,
    hidden boolean DEFAULT false NOT NULL
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
    name character varying(40),
    age_in_million_of_years integer,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    hidden boolean DEFAULT false NOT NULL
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(40),
    planet_id integer,
    hidden boolean DEFAULT false NOT NULL
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    description text,
    galaxy_id integer,
    distance_in_light_yrs numeric(4,2),
    hidden boolean DEFAULT false NOT NULL
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'Messier 81', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Cygnus A', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'Virgo A', NULL, NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Magellanic Clouds', NULL, NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Titan', 30, 384400, NULL, 1, false);
INSERT INTO public.moon VALUES (2, 'Hyperion', 55, 178400, NULL, 2, false);
INSERT INTO public.moon VALUES (3, 'Mimas', 71, 513600, NULL, 3, false);
INSERT INTO public.moon VALUES (4, 'Deimos', 22, 323800, NULL, 4, false);
INSERT INTO public.moon VALUES (5, 'Phobos', 22, 323800, NULL, 2, false);
INSERT INTO public.moon VALUES (6, 'Thebe', 12, 423700, NULL, 2, false);
INSERT INTO public.moon VALUES (7, 'Io', 42, 523700, NULL, 5, false);
INSERT INTO public.moon VALUES (8, 'Europa', 42, 523700, NULL, 6, false);
INSERT INTO public.moon VALUES (9, 'Ganymade', 54, 223400, NULL, 6, false);
INSERT INTO public.moon VALUES (10, 'Callisto', 56, 513400, NULL, 4, false);
INSERT INTO public.moon VALUES (11, 'Himalia', 67, 313700, NULL, 1, false);
INSERT INTO public.moon VALUES (12, 'Pan', 60, 413700, NULL, 1, false);
INSERT INTO public.moon VALUES (13, 'Atlas', 46, 393700, NULL, 1, false);
INSERT INTO public.moon VALUES (14, 'Prometheus', 51, 241700, NULL, 5, false);
INSERT INTO public.moon VALUES (15, 'Pandora', 50, 342700, NULL, 5, false);
INSERT INTO public.moon VALUES (16, 'Janus', 40, 332100, NULL, 5, false);
INSERT INTO public.moon VALUES (18, 'Tethys', 36, 453400, NULL, 3, false);
INSERT INTO public.moon VALUES (19, 'Dione', 26, 223300, NULL, 3, false);
INSERT INTO public.moon VALUES (20, 'Puck', 46, 358300, NULL, 3, false);
INSERT INTO public.moon VALUES (17, 'Miamz', 44, 133400, NULL, 6, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4, NULL, false, true, 1, false);
INSERT INTO public.planet VALUES (2, 'Venus', 7, NULL, false, true, 2, false);
INSERT INTO public.planet VALUES (3, 'Neptune', 2, NULL, false, true, 3, false);
INSERT INTO public.planet VALUES (4, 'Pluto', 2, NULL, true, false, 4, false);
INSERT INTO public.planet VALUES (5, 'Earth', 8, NULL, true, true, 5, false);
INSERT INTO public.planet VALUES (6, 'Mars', 6, NULL, true, true, 1, false);
INSERT INTO public.planet VALUES (7, 'Uranus', 5, NULL, false, true, 6, false);
INSERT INTO public.planet VALUES (8, 'Jupiter', 9, NULL, false, false, 2, false);
INSERT INTO public.planet VALUES (9, 'Saturn', 9, NULL, true, true, 5, false);
INSERT INTO public.planet VALUES (10, 'Orbitar', 11, NULL, true, true, 6, false);
INSERT INTO public.planet VALUES (11, 'Dimidium', 1, NULL, false, false, 2, false);
INSERT INTO public.planet VALUES (12, 'Galileo', 3, NULL, true, false, 3, false);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'AIM', 1, false);
INSERT INTO public.satellite VALUES (2, 'Ariel', 2, false);
INSERT INTO public.satellite VALUES (3, 'Biosatellite', 3, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', NULL, 1, NULL, false);
INSERT INTO public.star VALUES (2, 'Canopus', NULL, 2, NULL, false);
INSERT INTO public.star VALUES (3, 'Rigel', NULL, 3, NULL, false);
INSERT INTO public.star VALUES (4, 'Procyon', NULL, 4, NULL, false);
INSERT INTO public.star VALUES (5, 'Vega', NULL, 5, NULL, false);
INSERT INTO public.star VALUES (6, 'Arcturus', NULL, 6, NULL, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
-- Name: satellite satellite_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

