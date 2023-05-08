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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
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
    name character varying(100) NOT NULL
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

INSERT INTO public.games VALUES (155, 2018, 'Final', 674, 675, 4, 2);
INSERT INTO public.games VALUES (156, 2018, 'Third Place', 676, 677, 2, 0);
INSERT INTO public.games VALUES (157, 2018, 'Semi-Final', 675, 677, 2, 1);
INSERT INTO public.games VALUES (158, 2018, 'Semi-Final', 674, 676, 1, 0);
INSERT INTO public.games VALUES (159, 2018, 'Quarter-Final', 675, 678, 3, 2);
INSERT INTO public.games VALUES (160, 2018, 'Quarter-Final', 677, 679, 2, 0);
INSERT INTO public.games VALUES (161, 2018, 'Quarter-Final', 676, 680, 2, 1);
INSERT INTO public.games VALUES (162, 2018, 'Quarter-Final', 674, 681, 2, 0);
INSERT INTO public.games VALUES (163, 2018, 'Eighth-Final', 677, 682, 2, 1);
INSERT INTO public.games VALUES (164, 2018, 'Eighth-Final', 679, 683, 1, 0);
INSERT INTO public.games VALUES (165, 2018, 'Eighth-Final', 676, 684, 3, 2);
INSERT INTO public.games VALUES (166, 2018, 'Eighth-Final', 680, 685, 2, 0);
INSERT INTO public.games VALUES (167, 2018, 'Eighth-Final', 675, 686, 2, 1);
INSERT INTO public.games VALUES (168, 2018, 'Eighth-Final', 678, 687, 2, 1);
INSERT INTO public.games VALUES (169, 2018, 'Eighth-Final', 681, 688, 2, 1);
INSERT INTO public.games VALUES (170, 2018, 'Eighth-Final', 674, 689, 4, 3);
INSERT INTO public.games VALUES (171, 2014, 'Final', 690, 689, 1, 0);
INSERT INTO public.games VALUES (172, 2014, 'Third Place', 691, 680, 3, 0);
INSERT INTO public.games VALUES (173, 2014, 'Semi-Final', 689, 691, 1, 0);
INSERT INTO public.games VALUES (174, 2014, 'Semi-Final', 690, 680, 7, 1);
INSERT INTO public.games VALUES (175, 2014, 'Quarter-Final', 691, 692, 1, 0);
INSERT INTO public.games VALUES (176, 2014, 'Quarter-Final', 689, 676, 1, 0);
INSERT INTO public.games VALUES (177, 2014, 'Quarter-Final', 680, 682, 2, 1);
INSERT INTO public.games VALUES (178, 2014, 'Quarter-Final', 690, 674, 1, 0);
INSERT INTO public.games VALUES (179, 2014, 'Eighth-Final', 680, 693, 2, 1);
INSERT INTO public.games VALUES (180, 2014, 'Eighth-Final', 682, 681, 2, 0);
INSERT INTO public.games VALUES (181, 2014, 'Eighth-Final', 674, 694, 2, 0);
INSERT INTO public.games VALUES (182, 2014, 'Eighth-Final', 690, 695, 2, 1);
INSERT INTO public.games VALUES (183, 2014, 'Eighth-Final', 691, 685, 2, 1);
INSERT INTO public.games VALUES (184, 2014, 'Eighth-Final', 692, 696, 2, 1);
INSERT INTO public.games VALUES (185, 2014, 'Eighth-Final', 689, 683, 1, 0);
INSERT INTO public.games VALUES (186, 2014, 'Eighth-Final', 676, 697, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (674, 'France');
INSERT INTO public.teams VALUES (675, 'Croatia');
INSERT INTO public.teams VALUES (676, 'Belgium');
INSERT INTO public.teams VALUES (677, 'England');
INSERT INTO public.teams VALUES (678, 'Russia');
INSERT INTO public.teams VALUES (679, 'Sweden');
INSERT INTO public.teams VALUES (680, 'Brazil');
INSERT INTO public.teams VALUES (681, 'Uruguay');
INSERT INTO public.teams VALUES (682, 'Colombia');
INSERT INTO public.teams VALUES (683, 'Switzerland');
INSERT INTO public.teams VALUES (684, 'Japan');
INSERT INTO public.teams VALUES (685, 'Mexico');
INSERT INTO public.teams VALUES (686, 'Denmark');
INSERT INTO public.teams VALUES (687, 'Spain');
INSERT INTO public.teams VALUES (688, 'Portugal');
INSERT INTO public.teams VALUES (689, 'Argentina');
INSERT INTO public.teams VALUES (690, 'Germany');
INSERT INTO public.teams VALUES (691, 'Netherlands');
INSERT INTO public.teams VALUES (692, 'Costa Rica');
INSERT INTO public.teams VALUES (693, 'Chile');
INSERT INTO public.teams VALUES (694, 'Nigeria');
INSERT INTO public.teams VALUES (695, 'Algeria');
INSERT INTO public.teams VALUES (696, 'Greece');
INSERT INTO public.teams VALUES (697, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 186, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 697, true);


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

