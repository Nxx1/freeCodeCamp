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
-- Name: celestial_bodies; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_bodies (
    celestial_bodies_id integer NOT NULL,
    body_name character varying(100) NOT NULL,
    description text NOT NULL,
    name character varying(100)
);


ALTER TABLE public.celestial_bodies OWNER TO freecodecamp;

--
-- Name: celestial_bodies_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_bodies_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_bodies_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_bodies_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_bodies_body_id_seq OWNED BY public.celestial_bodies.celestial_bodies_id;


--
-- Name: celestial_body_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body_info (
    celestial_body_info_id integer NOT NULL,
    celestial_bodies_id integer NOT NULL,
    celestial_body_type_id integer,
    info text NOT NULL,
    name character varying
);


ALTER TABLE public.celestial_body_info OWNER TO freecodecamp;

--
-- Name: celestial_body_info_body_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_info_body_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_info_body_info_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_info_body_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_info_body_info_id_seq OWNED BY public.celestial_body_info.celestial_body_info_id;


--
-- Name: celestial_body_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body_type (
    celestial_body_type_id integer NOT NULL,
    type_name character varying(100) NOT NULL,
    description text,
    name character varying
);


ALTER TABLE public.celestial_body_type OWNER TO freecodecamp;

--
-- Name: celestial_body_type_body_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_type_body_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_type_body_type_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_type_body_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_type_body_type_id_seq OWNED BY public.celestial_body_type.celestial_body_type_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    distance_from_earth integer NOT NULL,
    description text,
    has_life boolean NOT NULL
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years numeric,
    planet_id integer,
    description text
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
    name character varying(100) NOT NULL,
    distance_from_earth integer,
    has_life boolean NOT NULL,
    star_id integer,
    moon_id integer,
    surface_temperature numeric,
    is_habitable boolean NOT NULL
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
    name character varying(100) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer,
    distance_from_galaxy_center integer,
    is_super_giant boolean NOT NULL
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
-- Name: celestial_bodies celestial_bodies_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies ALTER COLUMN celestial_bodies_id SET DEFAULT nextval('public.celestial_bodies_body_id_seq'::regclass);


--
-- Name: celestial_body_info celestial_body_info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_info ALTER COLUMN celestial_body_info_id SET DEFAULT nextval('public.celestial_body_info_body_info_id_seq'::regclass);


--
-- Name: celestial_body_type celestial_body_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type ALTER COLUMN celestial_body_type_id SET DEFAULT nextval('public.celestial_body_type_body_type_id_seq'::regclass);


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
-- Data for Name: celestial_bodies; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_bodies VALUES (1, 'Body 1', 'Description of Body 1', 'Name 1');
INSERT INTO public.celestial_bodies VALUES (2, 'Body 2', 'Description of Body 2', 'Name 2');
INSERT INTO public.celestial_bodies VALUES (3, 'Body 3', 'Description of Body 3', 'Name 3');


--
-- Data for Name: celestial_body_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body_info VALUES (1, 1, 1, 'Info 1', 'Name 1');
INSERT INTO public.celestial_body_info VALUES (2, 2, 2, 'Info 2', 'Name 2');
INSERT INTO public.celestial_body_info VALUES (3, 3, 3, 'Info 3', 'Name 3');


--
-- Data for Name: celestial_body_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body_type VALUES (1, 'Star', NULL, NULL);
INSERT INTO public.celestial_body_type VALUES (2, 'Planet', NULL, NULL);
INSERT INTO public.celestial_body_type VALUES (3, 'Moon', NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10000, 'Our home galaxy', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 15000, 'Closest to Milky Way', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 18000, 'Third-largest galaxy in Local Group', false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 20000, 'Located in the Virgo Cluster', false);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 22000, 'Radio galaxy', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 23000, 'Galaxy with a prominent dust lane', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500, 1, 'Earth''s natural satellite');
INSERT INTO public.moon VALUES (2, 'Phobos', 6000, 2, 'Mars''s innermost moon');
INSERT INTO public.moon VALUES (3, 'Io', 5500, 3, 'Jupiter''s volcanic moon');
INSERT INTO public.moon VALUES (4, 'Titan', 4700, 4, 'Saturn''s largest moon');
INSERT INTO public.moon VALUES (5, 'Titania', 4800, 5, 'Uranus''s largest moon');
INSERT INTO public.moon VALUES (6, 'Triton', 4900, 6, 'Neptune''s largest moon');
INSERT INTO public.moon VALUES (7, 'Callisto', 5100, 7, 'Jupiter''s second-largest moon');
INSERT INTO public.moon VALUES (8, 'Ganymede', 5200, 8, 'Jupiter''s largest moon');
INSERT INTO public.moon VALUES (9, 'Charon', 5400, 9, 'Pluto''s largest moon');
INSERT INTO public.moon VALUES (10, 'Europa', 5500, 3, 'Jupiter''s ice-covered moon');
INSERT INTO public.moon VALUES (11, 'Enceladus', 4700, 4, 'Saturn''s icy moon');
INSERT INTO public.moon VALUES (12, 'Miranda', 4800, 5, 'Uranus''s smallest moon');
INSERT INTO public.moon VALUES (13, 'Nereid', 4900, 6, 'Neptune''s third-largest moon');
INSERT INTO public.moon VALUES (14, 'Luna', 5100, 1, 'Earth''s main satellite');
INSERT INTO public.moon VALUES (15, 'Deimos', 5200, 2, 'Mars''s smaller moon');
INSERT INTO public.moon VALUES (16, 'Moon16', 6000, 1, 'Description 16');
INSERT INTO public.moon VALUES (17, 'Moon17', 6100, 2, 'Description 17');
INSERT INTO public.moon VALUES (18, 'Moon18', 6200, 3, 'Description 18');
INSERT INTO public.moon VALUES (19, 'Moon19', 6300, 4, 'Description 19');
INSERT INTO public.moon VALUES (20, 'Moon20', 6400, 5, 'Description 20');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 0, true, 1, NULL, 288, true);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 1, NULL, -63, false);
INSERT INTO public.planet VALUES (3, 'Jupiter', 2, false, 1, NULL, -145, false);
INSERT INTO public.planet VALUES (4, 'Saturn', 3, false, 1, NULL, -178, false);
INSERT INTO public.planet VALUES (5, 'Uranus', 4, false, 1, NULL, -216, false);
INSERT INTO public.planet VALUES (6, 'Neptune', 5, false, 1, NULL, -214, false);
INSERT INTO public.planet VALUES (7, 'Mercury', 6, false, 1, NULL, 167, false);
INSERT INTO public.planet VALUES (8, 'Venus', 7, false, 1, NULL, 464, false);
INSERT INTO public.planet VALUES (9, 'Pluto', 8, false, 1, NULL, -225, false);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 9, true, 1, NULL, NULL, true);
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 10, false, 1, NULL, NULL, false);
INSERT INTO public.planet VALUES (12, 'WASP-12b', 11, false, 1, NULL, NULL, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5000, 1, 0, false);
INSERT INTO public.star VALUES (2, 'Betelgeuse', 8000, 2, 1000, true);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 6000, 1, 2000, false);
INSERT INTO public.star VALUES (4, 'Sirius', 10000, 1, 3000, false);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 7000, 1, 4000, false);
INSERT INTO public.star VALUES (6, 'Vega', 9000, 1, 5000, false);


--
-- Name: celestial_bodies_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_bodies_body_id_seq', 3, true);


--
-- Name: celestial_body_info_body_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_info_body_info_id_seq', 3, true);


--
-- Name: celestial_body_type_body_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_type_body_type_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_bodies celestial_bodies_body_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_body_name_key UNIQUE (body_name);


--
-- Name: celestial_bodies celestial_bodies_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_bodies
    ADD CONSTRAINT celestial_bodies_pkey PRIMARY KEY (celestial_bodies_id);


--
-- Name: celestial_body_info celestial_body_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_info
    ADD CONSTRAINT celestial_body_info_pkey PRIMARY KEY (celestial_body_info_id);


--
-- Name: celestial_body_type celestial_body_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type
    ADD CONSTRAINT celestial_body_type_pkey PRIMARY KEY (celestial_body_type_id);


--
-- Name: celestial_body_type celestial_body_type_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type
    ADD CONSTRAINT celestial_body_type_type_name_key UNIQUE (type_name);


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
-- Name: celestial_body_info unique_body_info_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_info
    ADD CONSTRAINT unique_body_info_id UNIQUE (celestial_body_info_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: celestial_body_type unique_type_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_type
    ADD CONSTRAINT unique_type_name UNIQUE (type_name);


--
-- Name: celestial_body_info celestial_body_info_body_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_info
    ADD CONSTRAINT celestial_body_info_body_id_fkey FOREIGN KEY (celestial_bodies_id) REFERENCES public.celestial_bodies(celestial_bodies_id);


--
-- Name: celestial_body_info celestial_body_info_body_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body_info
    ADD CONSTRAINT celestial_body_info_body_type_id_fkey FOREIGN KEY (celestial_body_type_id) REFERENCES public.celestial_body_type(celestial_body_type_id);


--
-- Name: moon moon_moon_of_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_of_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star star_star_of_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_of_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

