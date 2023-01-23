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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    round character varying(50) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Final', 2018, 195, 196, 4, 2);
INSERT INTO public.games VALUES (2, 'Third Place', 2018, 197, 198, 2, 0);
INSERT INTO public.games VALUES (3, 'Semi-Final', 2018, 196, 198, 2, 1);
INSERT INTO public.games VALUES (4, 'Semi-Final', 2018, 195, 197, 1, 0);
INSERT INTO public.games VALUES (5, 'Quarter-Final', 2018, 196, 199, 3, 2);
INSERT INTO public.games VALUES (6, 'Quarter-Final', 2018, 198, 200, 2, 0);
INSERT INTO public.games VALUES (7, 'Quarter-Final', 2018, 197, 201, 2, 1);
INSERT INTO public.games VALUES (8, 'Quarter-Final', 2018, 195, 202, 2, 0);
INSERT INTO public.games VALUES (9, 'Eighth-Final', 2018, 198, 203, 2, 1);
INSERT INTO public.games VALUES (10, 'Eighth-Final', 2018, 200, 204, 1, 0);
INSERT INTO public.games VALUES (11, 'Eighth-Final', 2018, 197, 205, 3, 2);
INSERT INTO public.games VALUES (12, 'Eighth-Final', 2018, 201, 206, 2, 0);
INSERT INTO public.games VALUES (13, 'Eighth-Final', 2018, 196, 207, 2, 1);
INSERT INTO public.games VALUES (14, 'Eighth-Final', 2018, 199, 208, 2, 1);
INSERT INTO public.games VALUES (15, 'Eighth-Final', 2018, 202, 209, 2, 1);
INSERT INTO public.games VALUES (16, 'Eighth-Final', 2018, 195, 210, 4, 3);
INSERT INTO public.games VALUES (17, 'Final', 2014, 211, 210, 1, 0);
INSERT INTO public.games VALUES (18, 'Third Place', 2014, 212, 201, 3, 0);
INSERT INTO public.games VALUES (19, 'Semi-Final', 2014, 210, 212, 1, 0);
INSERT INTO public.games VALUES (20, 'Semi-Final', 2014, 211, 201, 7, 1);
INSERT INTO public.games VALUES (21, 'Quarter-Final', 2014, 212, 213, 1, 0);
INSERT INTO public.games VALUES (22, 'Quarter-Final', 2014, 210, 197, 1, 0);
INSERT INTO public.games VALUES (23, 'Quarter-Final', 2014, 201, 203, 2, 1);
INSERT INTO public.games VALUES (24, 'Quarter-Final', 2014, 211, 195, 1, 0);
INSERT INTO public.games VALUES (25, 'Eighth-Final', 2014, 201, 214, 2, 1);
INSERT INTO public.games VALUES (26, 'Eighth-Final', 2014, 203, 202, 2, 0);
INSERT INTO public.games VALUES (27, 'Eighth-Final', 2014, 195, 215, 2, 0);
INSERT INTO public.games VALUES (28, 'Eighth-Final', 2014, 211, 216, 2, 1);
INSERT INTO public.games VALUES (29, 'Eighth-Final', 2014, 212, 206, 2, 1);
INSERT INTO public.games VALUES (30, 'Eighth-Final', 2014, 213, 217, 2, 1);
INSERT INTO public.games VALUES (31, 'Eighth-Final', 2014, 210, 204, 1, 0);
INSERT INTO public.games VALUES (32, 'Eighth-Final', 2014, 197, 218, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (195, 'France');
INSERT INTO public.teams VALUES (196, 'Croatia');
INSERT INTO public.teams VALUES (197, 'Belgium');
INSERT INTO public.teams VALUES (198, 'England');
INSERT INTO public.teams VALUES (199, 'Russia');
INSERT INTO public.teams VALUES (200, 'Sweden');
INSERT INTO public.teams VALUES (201, 'Brazil');
INSERT INTO public.teams VALUES (202, 'Uruguay');
INSERT INTO public.teams VALUES (203, 'Colombia');
INSERT INTO public.teams VALUES (204, 'Switzerland');
INSERT INTO public.teams VALUES (205, 'Japan');
INSERT INTO public.teams VALUES (206, 'Mexico');
INSERT INTO public.teams VALUES (207, 'Denmark');
INSERT INTO public.teams VALUES (208, 'Spain');
INSERT INTO public.teams VALUES (209, 'Portugal');
INSERT INTO public.teams VALUES (210, 'Argentina');
INSERT INTO public.teams VALUES (211, 'Germany');
INSERT INTO public.teams VALUES (212, 'Netherlands');
INSERT INTO public.teams VALUES (213, 'Costa Rica');
INSERT INTO public.teams VALUES (214, 'Chile');
INSERT INTO public.teams VALUES (215, 'Nigeria');
INSERT INTO public.teams VALUES (216, 'Algeria');
INSERT INTO public.teams VALUES (217, 'Greece');
INSERT INTO public.teams VALUES (218, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 218, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

