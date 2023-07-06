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
    name character varying,
    age numeric,
    star_composition character varying(50) NOT NULL,
    gravity_force_n integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_no_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_no_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying,
    density_in_kg integer,
    energy_amount numeric,
    description boolean NOT NULL
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
    name character varying,
    star_type boolean,
    distance_in_km numeric,
    star_composition text NOT NULL
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
-- Name: speed; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.speed (
    speed_id integer NOT NULL,
    speed_in_v integer,
    name character varying NOT NULL
);


ALTER TABLE public.speed OWNER TO freecodecamp;

--
-- Name: speed_speed_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.speed_speed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.speed_speed_id_seq OWNER TO freecodecamp;

--
-- Name: speed_speed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.speed_speed_id_seq OWNED BY public.speed.speed_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying NOT NULL,
    brightness boolean,
    age integer,
    star_id integer NOT NULL,
    gravity_force_n integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_no_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_no_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_no_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_no_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: speed speed_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.speed ALTER COLUMN speed_id SET DEFAULT nextval('public.speed_speed_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_no_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Ace', 344, 'Star', 3400);
INSERT INTO public.galaxy VALUES (2, 'Acer', 849, 'Cars', 3500);
INSERT INTO public.galaxy VALUES (3, 'Tan', 948, 'Man', 89);
INSERT INTO public.galaxy VALUES (4, 'Sand', 473, 'Scroll', 3094);
INSERT INTO public.galaxy VALUES (5, 'Dust', 389, 'Gas', 7455);
INSERT INTO public.galaxy VALUES (6, 'Wand', 445, 'Water', 2112);
INSERT INTO public.galaxy VALUES (7, 'Sac', 476, 'Moist', 1033);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Spiral', 438, 74000, true);
INSERT INTO public.moon VALUES (2, 'Hubble', 3744, 297400, false);
INSERT INTO public.moon VALUES (3, 'Bhubble', 9483, 99002, true);
INSERT INTO public.moon VALUES (4, 'Trand', 3874, 892330, true);
INSERT INTO public.moon VALUES (5, 'Brand', 2983, 939837, false);
INSERT INTO public.moon VALUES (6, 'Beans', 479, 938890, true);
INSERT INTO public.moon VALUES (7, 'Samb', 487, 943882, true);
INSERT INTO public.moon VALUES (8, 'Sanguine', 4328, 74900, true);
INSERT INTO public.moon VALUES (9, 'Grain', 5344, 295400, true);
INSERT INTO public.moon VALUES (10, 'Hubble', 4783, 93202, false);
INSERT INTO public.moon VALUES (11, 'Track', 38374, 89927, true);
INSERT INTO public.moon VALUES (12, 'Bronze', 83983, 91337, false);
INSERT INTO public.moon VALUES (13, 'Spir', 4384, 74034, true);
INSERT INTO public.moon VALUES (14, 'Horse', 3392, 29745, false);
INSERT INTO public.moon VALUES (15, 'Bhubb', 6532, 99081, false);
INSERT INTO public.moon VALUES (16, 'Trau', 38894, 88712, true);
INSERT INTO public.moon VALUES (17, 'Trad', 3479, 298351, true);
INSERT INTO public.moon VALUES (18, 'Okay', 58479, 3966, false);
INSERT INTO public.moon VALUES (19, 'Samble', 48756, 9432, true);
INSERT INTO public.moon VALUES (20, 'Sprite', 4354, 74234, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sound', true, 23000, 'Cars');
INSERT INTO public.planet VALUES (2, 'South', false, 230499, 'Star');
INSERT INTO public.planet VALUES (3, 'Nest', true, 123377, 'Man');
INSERT INTO public.planet VALUES (4, 'West', false, 38968, 'Scroll');
INSERT INTO public.planet VALUES (5, 'Mind', true, 12837, 'Gas');
INSERT INTO public.planet VALUES (6, 'Sars', false, 4803, 'Wand');
INSERT INTO public.planet VALUES (7, 'Find', true, 12838, 'Cars');
INSERT INTO public.planet VALUES (8, 'Ghast', false, 289740, 'Sac');
INSERT INTO public.planet VALUES (9, 'Trunk', true, 13883, 'Dust');
INSERT INTO public.planet VALUES (10, 'Mand', false, 308848, 'Man');
INSERT INTO public.planet VALUES (11, 'Train', true, 466647, 'Scroll');
INSERT INTO public.planet VALUES (12, 'Soun', true, 23500, 'Wand');


--
-- Data for Name: speed; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.speed VALUES (1, 40000, 'Ace');
INSERT INTO public.speed VALUES (2, 354000, 'Sac');
INSERT INTO public.speed VALUES (3, 46883, 'Tan');
INSERT INTO public.speed VALUES (4, 297399, 'Dust');
INSERT INTO public.speed VALUES (5, 3974, 'Wand');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Acarma', true, 983, 3, 3500);
INSERT INTO public.star VALUES ('Neutron', true, 1983, 4, 3400);
INSERT INTO public.star VALUES ('Red Giant', false, 384, 5, 89);
INSERT INTO public.star VALUES ('Red Dwarf', true, 3879, 6, 3094);
INSERT INTO public.star VALUES ('Pulsar', false, 8635, 7, 1033);
INSERT INTO public.star VALUES ('Sun', true, 4793, 8, 2112);
INSERT INTO public.star VALUES ('Red Dwarfs', true, 2388, 9, 7455);


--
-- Name: galaxy_galaxy_id_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_no_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 31, true);


--
-- Name: speed_speed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.speed_speed_id_seq', 5, true);


--
-- Name: star_star_id_no_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_no_seq', 9, true);


--
-- Name: galaxy galaxy_gravity_force_n_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_gravity_force_n_key UNIQUE (gravity_force_n);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_energy_amount_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_energy_amount_key UNIQUE (energy_amount);


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
-- Name: speed speed_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.speed
    ADD CONSTRAINT speed_name_key UNIQUE (name);


--
-- Name: speed speed_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.speed
    ADD CONSTRAINT speed_pkey PRIMARY KEY (speed_id);


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
-- Name: star star_gravity_force_n_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_gravity_force_n_fkey FOREIGN KEY (gravity_force_n) REFERENCES public.galaxy(gravity_force_n);


--
-- PostgreSQL database dump complete
--

