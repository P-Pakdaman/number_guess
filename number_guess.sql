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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    frequent_games integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, NULL, NULL);
INSERT INTO public.games VALUES (2, 1, NULL, NULL);
INSERT INTO public.games VALUES (3, 2, NULL, NULL);
INSERT INTO public.games VALUES (4, 2, NULL, NULL);
INSERT INTO public.games VALUES (5, 1, NULL, NULL);
INSERT INTO public.games VALUES (6, 1, NULL, NULL);
INSERT INTO public.games VALUES (7, 1, NULL, NULL);
INSERT INTO public.games VALUES (34, 34, NULL, NULL);
INSERT INTO public.games VALUES (35, 35, NULL, NULL);
INSERT INTO public.games VALUES (36, 35, NULL, NULL);
INSERT INTO public.games VALUES (37, 35, NULL, NULL);
INSERT INTO public.games VALUES (81, 59, 908, 907);
INSERT INTO public.games VALUES (82, 59, 738, 737);
INSERT INTO public.games VALUES (83, 60, 733, 732);
INSERT INTO public.games VALUES (84, 60, 584, 583);
INSERT INTO public.games VALUES (85, 59, 448, 445);
INSERT INTO public.games VALUES (86, 59, 25, 23);
INSERT INTO public.games VALUES (87, 59, 849, 848);
INSERT INTO public.games VALUES (88, 61, 582, 581);
INSERT INTO public.games VALUES (89, 61, 118, 117);
INSERT INTO public.games VALUES (90, 62, 25, 24);
INSERT INTO public.games VALUES (91, 62, 951, 950);
INSERT INTO public.games VALUES (92, 61, 69, 66);
INSERT INTO public.games VALUES (93, 61, 359, 357);
INSERT INTO public.games VALUES (94, 61, 628, 627);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1693812792599', 2);
INSERT INTO public.users VALUES (1, 'user_1693812792600', 5);
INSERT INTO public.users VALUES (34, 'user_1693813061819', 1);
INSERT INTO public.users VALUES (35, 'user_1693813061820', 3);
INSERT INTO public.users VALUES (36, 'user_1693814030975', NULL);
INSERT INTO public.users VALUES (37, 'user_1693814030974', NULL);
INSERT INTO public.users VALUES (38, 'Pardis', NULL);
INSERT INTO public.users VALUES (39, 'user_1693814244227', NULL);
INSERT INTO public.users VALUES (40, 'user_1693814244226', NULL);
INSERT INTO public.users VALUES (41, 'user_1693814519331', NULL);
INSERT INTO public.users VALUES (42, 'user_1693814519330', NULL);
INSERT INTO public.users VALUES (43, 'user_1693814768088', NULL);
INSERT INTO public.users VALUES (44, 'user_1693814768087', NULL);
INSERT INTO public.users VALUES (45, 'user_1693814836686', NULL);
INSERT INTO public.users VALUES (46, 'user_1693814836685', NULL);
INSERT INTO public.users VALUES (47, 'user_1693815003428', NULL);
INSERT INTO public.users VALUES (48, 'user_1693815003427', NULL);
INSERT INTO public.users VALUES (49, 'user_1693815059612', NULL);
INSERT INTO public.users VALUES (50, 'user_1693815059611', NULL);
INSERT INTO public.users VALUES (51, 'user_1693815093215', NULL);
INSERT INTO public.users VALUES (52, 'user_1693815093214', NULL);
INSERT INTO public.users VALUES (53, 'user_1693815155579', NULL);
INSERT INTO public.users VALUES (54, 'user_1693815155578', NULL);
INSERT INTO public.users VALUES (55, 'user_1693815204085', NULL);
INSERT INTO public.users VALUES (56, 'user_1693815204084', NULL);
INSERT INTO public.users VALUES (57, 'user_1693815232061', NULL);
INSERT INTO public.users VALUES (58, 'user_1693815232060', NULL);
INSERT INTO public.users VALUES (59, 'user_1693815523917', NULL);
INSERT INTO public.users VALUES (60, 'user_1693815523916', NULL);
INSERT INTO public.users VALUES (61, 'user_1693815619371', NULL);
INSERT INTO public.users VALUES (62, 'user_1693815619370', NULL);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 94, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 62, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

