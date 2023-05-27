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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: gi; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gi (
    user_id integer,
    game_id integer NOT NULL,
    num_of_g integer
);


ALTER TABLE public.gi OWNER TO freecodecamp;

--
-- Name: gi_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gi_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gi_game_id_seq OWNER TO freecodecamp;

--
-- Name: gi_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gi_game_id_seq OWNED BY public.gi.game_id;


--
-- Name: ng; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ng (
    user_id integer NOT NULL,
    user_name character varying(22)
);


ALTER TABLE public.ng OWNER TO freecodecamp;

--
-- Name: ng_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ng_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ng_user_id_seq OWNER TO freecodecamp;

--
-- Name: ng_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ng_user_id_seq OWNED BY public.ng.user_id;


--
-- Name: gi game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gi ALTER COLUMN game_id SET DEFAULT nextval('public.gi_game_id_seq'::regclass);


--
-- Name: ng user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ng ALTER COLUMN user_id SET DEFAULT nextval('public.ng_user_id_seq'::regclass);


--
-- Data for Name: gi; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gi VALUES (1, 1, 3);
INSERT INTO public.gi VALUES (2, 2, 2);
INSERT INTO public.gi VALUES (1, 3, 3);
INSERT INTO public.gi VALUES (1, 4, 2);
INSERT INTO public.gi VALUES (1, 5, 3);
INSERT INTO public.gi VALUES (3, 6, 1);
INSERT INTO public.gi VALUES (4, 7, 1);
INSERT INTO public.gi VALUES (3, 8, 5);
INSERT INTO public.gi VALUES (3, 9, 4);
INSERT INTO public.gi VALUES (3, 10, 2);
INSERT INTO public.gi VALUES (5, 11, 1);
INSERT INTO public.gi VALUES (6, 12, 1);
INSERT INTO public.gi VALUES (5, 13, 5);
INSERT INTO public.gi VALUES (5, 14, 3);
INSERT INTO public.gi VALUES (5, 15, 2);
INSERT INTO public.gi VALUES (7, 16, 571);
INSERT INTO public.gi VALUES (7, 17, 3);
INSERT INTO public.gi VALUES (8, 18, 778);
INSERT INTO public.gi VALUES (8, 19, 2);
INSERT INTO public.gi VALUES (7, 20, 5);
INSERT INTO public.gi VALUES (7, 21, 4);
INSERT INTO public.gi VALUES (7, 22, 2);
INSERT INTO public.gi VALUES (9, 23, 2);
INSERT INTO public.gi VALUES (10, 24, 275);
INSERT INTO public.gi VALUES (10, 25, 2);
INSERT INTO public.gi VALUES (9, 26, 5);
INSERT INTO public.gi VALUES (9, 27, 4);
INSERT INTO public.gi VALUES (9, 28, 2);
INSERT INTO public.gi VALUES (11, 29, 447);
INSERT INTO public.gi VALUES (11, 30, 1);
INSERT INTO public.gi VALUES (12, 31, 1);
INSERT INTO public.gi VALUES (11, 32, 3);
INSERT INTO public.gi VALUES (11, 33, 2);
INSERT INTO public.gi VALUES (11, 34, 1);
INSERT INTO public.gi VALUES (13, 35, 3);
INSERT INTO public.gi VALUES (14, 36, 149);
INSERT INTO public.gi VALUES (14, 37, 1);
INSERT INTO public.gi VALUES (13, 38, 3);
INSERT INTO public.gi VALUES (13, 39, 4);
INSERT INTO public.gi VALUES (13, 40, 1);
INSERT INTO public.gi VALUES (15, 41, 206);
INSERT INTO public.gi VALUES (15, 42, 2);
INSERT INTO public.gi VALUES (16, 43, 1);
INSERT INTO public.gi VALUES (15, 44, 3);
INSERT INTO public.gi VALUES (15, 45, 2);
INSERT INTO public.gi VALUES (15, 46, 1);
INSERT INTO public.gi VALUES (17, 47, 17);
INSERT INTO public.gi VALUES (17, 48, 13);
INSERT INTO public.gi VALUES (17, 49, 3);
INSERT INTO public.gi VALUES (18, 50, 15);
INSERT INTO public.gi VALUES (19, 51, 3);
INSERT INTO public.gi VALUES (20, 52, 303);
INSERT INTO public.gi VALUES (20, 53, 1);
INSERT INTO public.gi VALUES (19, 54, 1);
INSERT INTO public.gi VALUES (19, 55, 3);
INSERT INTO public.gi VALUES (19, 56, 1);
INSERT INTO public.gi VALUES (21, 57, 2);
INSERT INTO public.gi VALUES (22, 58, 2);
INSERT INTO public.gi VALUES (21, 59, 5);
INSERT INTO public.gi VALUES (21, 60, 2);
INSERT INTO public.gi VALUES (21, 61, 2);
INSERT INTO public.gi VALUES (24, 62, 1);
INSERT INTO public.gi VALUES (23, 63, 1);
INSERT INTO public.gi VALUES (25, 64, 343);
INSERT INTO public.gi VALUES (25, 65, 2);
INSERT INTO public.gi VALUES (26, 66, 338);
INSERT INTO public.gi VALUES (26, 67, 2);
INSERT INTO public.gi VALUES (25, 68, 5);
INSERT INTO public.gi VALUES (25, 69, 3);
INSERT INTO public.gi VALUES (25, 70, 2);
INSERT INTO public.gi VALUES (27, 71, 154);
INSERT INTO public.gi VALUES (27, 72, 2);
INSERT INTO public.gi VALUES (28, 73, 248);
INSERT INTO public.gi VALUES (28, 74, 2);
INSERT INTO public.gi VALUES (27, 75, 3);
INSERT INTO public.gi VALUES (27, 76, 2);
INSERT INTO public.gi VALUES (27, 77, 1);
INSERT INTO public.gi VALUES (29, 78, 595);
INSERT INTO public.gi VALUES (29, 79, 2);
INSERT INTO public.gi VALUES (30, 80, 16);
INSERT INTO public.gi VALUES (30, 81, 3);
INSERT INTO public.gi VALUES (29, 82, 5);
INSERT INTO public.gi VALUES (29, 83, 4);
INSERT INTO public.gi VALUES (29, 84, 3);


--
-- Data for Name: ng; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ng VALUES (1, 'user_1685122447214');
INSERT INTO public.ng VALUES (2, 'user_1685122447213');
INSERT INTO public.ng VALUES (3, 'user_1685122714613');
INSERT INTO public.ng VALUES (4, 'user_1685122714612');
INSERT INTO public.ng VALUES (5, 'user_1685122764221');
INSERT INTO public.ng VALUES (6, 'user_1685122764220');
INSERT INTO public.ng VALUES (7, 'user_1685122874167');
INSERT INTO public.ng VALUES (8, 'user_1685122874166');
INSERT INTO public.ng VALUES (9, 'user_1685122953085');
INSERT INTO public.ng VALUES (10, 'user_1685122953084');
INSERT INTO public.ng VALUES (11, 'user_1685122985806');
INSERT INTO public.ng VALUES (12, 'user_1685122985805');
INSERT INTO public.ng VALUES (13, 'user_1685123293094');
INSERT INTO public.ng VALUES (14, 'user_1685123293093');
INSERT INTO public.ng VALUES (15, 'user_1685123704074');
INSERT INTO public.ng VALUES (16, 'user_1685123704073');
INSERT INTO public.ng VALUES (17, 'oe');
INSERT INTO public.ng VALUES (18, '1');
INSERT INTO public.ng VALUES (19, 'user_1685123956638');
INSERT INTO public.ng VALUES (20, 'user_1685123956637');
INSERT INTO public.ng VALUES (21, 'user_1685124331984');
INSERT INTO public.ng VALUES (22, 'user_1685124331983');
INSERT INTO public.ng VALUES (23, 'user_1685156816035');
INSERT INTO public.ng VALUES (24, 'user_1685156816034');
INSERT INTO public.ng VALUES (25, 'user_1685156872422');
INSERT INTO public.ng VALUES (26, 'user_1685156872421');
INSERT INTO public.ng VALUES (27, 'user_1685156940442');
INSERT INTO public.ng VALUES (28, 'user_1685156940441');
INSERT INTO public.ng VALUES (29, 'user_1685156971880');
INSERT INTO public.ng VALUES (30, 'user_1685156971879');


--
-- Name: gi_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gi_game_id_seq', 84, true);


--
-- Name: ng_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ng_user_id_seq', 30, true);


--
-- Name: gi gi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gi
    ADD CONSTRAINT gi_pkey PRIMARY KEY (game_id);


--
-- Name: ng ng_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ng
    ADD CONSTRAINT ng_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

