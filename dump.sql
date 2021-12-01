--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1 (Debian 13.1-1.pgdg100+1)
-- Dumped by pg_dump version 13.1 (Debian 13.1-1.pgdg100+1)

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: hall_hall_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hall_hall_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hall_hall_id_seq OWNER TO postgres;

--
-- Name: hall_hall; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hall_hall (
    id integer DEFAULT nextval('public.hall_hall_id_seq'::regclass) NOT NULL,
    name character varying(200) NOT NULL,
    address character varying(600),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.hall_hall OWNER TO postgres;

--
-- Name: rank_rank_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rank_rank_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rank_rank_id_seq OWNER TO postgres;

--
-- Name: rank_rank; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rank_rank (
    id integer DEFAULT nextval('public.rank_rank_id_seq'::regclass) NOT NULL,
    name character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    hall_id integer NOT NULL,
    color character varying(16) NOT NULL,
    price numeric(9,1) NOT NULL
);


ALTER TABLE public.rank_rank OWNER TO postgres;

--
-- Name: row_row_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.row_row_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.row_row_id_seq OWNER TO postgres;

--
-- Name: row_row; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.row_row (
    id integer DEFAULT nextval('public.row_row_id_seq'::regclass) NOT NULL,
    number integer NOT NULL,
    name character varying(200),
    is_high_row boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    section_id integer NOT NULL,
    "position" integer NOT NULL
);


ALTER TABLE public.row_row OWNER TO postgres;

--
-- Name: seance_seance_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seance_seance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seance_seance_id_seq OWNER TO postgres;

--
-- Name: seance_seance; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seance_seance (
    id integer DEFAULT nextval('public.seance_seance_id_seq'::regclass) NOT NULL,
    name character varying(200) NOT NULL,
    start_date_time timestamp with time zone NOT NULL,
    end_date_time timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    hall_id integer NOT NULL
);


ALTER TABLE public.seance_seance OWNER TO postgres;

--
-- Name: seat_seat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.seat_seat_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seat_seat_id_seq OWNER TO postgres;

--
-- Name: seat_seat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.seat_seat (
    id integer DEFAULT nextval('public.seat_seat_id_seq'::regclass) NOT NULL,
    number integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    rank_id bigint NOT NULL,
    row_id integer NOT NULL
);


ALTER TABLE public.seat_seat OWNER TO postgres;

--
-- Name: section_section_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.section_section_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.section_section_id_seq OWNER TO postgres;

--
-- Name: section_section; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.section_section (
    id integer DEFAULT nextval('public.section_section_id_seq'::regclass) NOT NULL,
    name character varying(200) NOT NULL,
    is_curve boolean NOT NULL,
    is_front_space boolean NOT NULL,
    is_back_space boolean NOT NULL,
    is_right_space boolean NOT NULL,
    is_left_space boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    hall_id integer NOT NULL,
    number integer NOT NULL
);


ALTER TABLE public.section_section OWNER TO postgres;

--
-- Name: ticket_ticket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ticket_ticket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ticket_ticket_id_seq OWNER TO postgres;

--
-- Name: ticket_ticket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ticket_ticket (
    id integer DEFAULT nextval('public.ticket_ticket_id_seq'::regclass) NOT NULL,
    first_name character varying(100),
    last_name character varying(160),
    email character varying(160),
    is_reserved boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    seance_id bigint NOT NULL,
    seat_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.ticket_ticket OWNER TO postgres;

--
-- Name: user_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_user_id_seq OWNER TO postgres;

--
-- Name: user_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_user (
    id integer DEFAULT nextval('public.user_user_id_seq'::regclass) NOT NULL,
    last_login timestamp with time zone,
    phone_number character varying(11),
    password character varying(128) NOT NULL,
    first_name character varying(50),
    last_name character varying(100),
    profile_picture character varying(100),
    role smallint NOT NULL,
    email character varying(254) NOT NULL,
    birth_date date,
    gender smallint,
    one_time_password character varying(100),
    one_time_password_creation_date timestamp with time zone,
    is_banned boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    is_admin boolean NOT NULL,
    is_active boolean NOT NULL,
    is_verified boolean NOT NULL,
    CONSTRAINT user_user_gender_check CHECK ((gender >= 0)),
    CONSTRAINT user_user_role_check CHECK ((role >= 0))
);


ALTER TABLE public.user_user OWNER TO postgres;

--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add hall	7	add_hall
26	Can change hall	7	change_hall
27	Can delete hall	7	delete_hall
28	Can view hall	7	view_hall
29	Can add rank	8	add_rank
30	Can change rank	8	change_rank
31	Can delete rank	8	delete_rank
32	Can view rank	8	view_rank
33	Can add section	9	add_section
34	Can change section	9	change_section
35	Can delete section	9	delete_section
36	Can view section	9	view_section
37	Can add row	10	add_row
38	Can change row	10	change_row
39	Can delete row	10	delete_row
40	Can view row	10	view_row
41	Can add seat	11	add_seat
42	Can change seat	11	change_seat
43	Can delete seat	11	delete_seat
44	Can view seat	11	view_seat
45	Can add seance	12	add_seance
46	Can change seance	12	change_seance
47	Can delete seance	12	delete_seance
48	Can view seance	12	view_seance
49	Can add ticket	13	add_ticket
50	Can change ticket	13	change_ticket
51	Can delete ticket	13	delete_ticket
52	Can view ticket	13	view_ticket
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-11-25 16:43:59.798238+00	1	Grand Theatre	1	[{"added": {}}]	7	1
2	2021-11-25 16:44:25.950806+00	1	Seance object (1)	1	[{"added": {}}]	12	1
3	2021-11-25 16:44:56.346977+00	1	Grand Theatre | section front	1	[{"added": {}}]	9	1
4	2021-11-25 16:45:08.877312+00	2	Grand Theatre | section middle	1	[{"added": {}}]	9	1
5	2021-11-25 16:45:24.595822+00	1	1 | position: Middle -- Grand Theatre | section front	1	[{"added": {}}]	10	1
6	2021-11-25 16:45:37.64016+00	2	1 | position: Middle -- Grand Theatre | section middle	1	[{"added": {}}]	10	1
7	2021-11-25 16:45:59.95934+00	1	Business | Grand Theatre	1	[{"added": {}}]	8	1
8	2021-11-25 16:46:02.74903+00	1	1	1	[{"added": {}}]	11	1
9	2021-11-25 16:46:09.704614+00	2	1	1	[{"added": {}}]	11	1
10	2021-11-25 16:47:37.710159+00	3	2 | position: Left -- Grand Theatre | section front	1	[{"added": {}}]	10	1
11	2021-11-25 16:55:40.626882+00	3	1	1	[{"added": {}}]	11	1
12	2021-11-25 16:56:07.007759+00	4	2	1	[{"added": {}}]	11	1
13	2021-11-25 16:56:27.887802+00	4	2 | position: Middle -- Grand Theatre | section front	1	[{"added": {}}]	10	1
14	2021-11-25 16:56:52.466178+00	5	1	1	[{"added": {}}]	11	1
15	2021-11-25 16:57:21.019279+00	4	5 | position: Middle -- Grand Theatre | section front	2	[{"changed": {"fields": ["Number"]}}]	10	1
16	2021-11-25 16:58:21.444225+00	4	2 | position: Middle -- Grand Theatre | section front	2	[{"changed": {"fields": ["Number"]}}]	10	1
17	2021-11-25 16:58:28.514918+00	3	5 | position: Left -- Grand Theatre | section front	2	[{"changed": {"fields": ["Number"]}}]	10	1
18	2021-11-25 16:58:37.629421+00	5	2 | position: Left -- Grand Theatre | section front	1	[{"added": {}}]	10	1
19	2021-11-25 18:04:41.976545+00	6	6	1	[{"added": {}}]	11	1
20	2021-11-25 18:06:30.97087+00	3	5 | position: Right -- Grand Theatre | section front	2	[{"changed": {"fields": ["Position"]}}]	10	1
21	2021-11-26 09:31:01.829933+00	3	Greece Theater	3		7	1
22	2021-11-26 09:32:45.197258+00	4	Greece Theater	3		7	1
23	2021-11-26 09:35:00.707038+00	6	Greece Theater	3		7	1
24	2021-11-26 09:40:03.204872+00	8	Greece Theater	3		7	1
25	2021-11-26 09:44:52.09126+00	10	Greece Theater	3		7	1
26	2021-11-26 10:01:13.385957+00	11	Greece Theater	3		7	1
27	2021-11-26 10:03:59.793528+00	13	Greece Theater	3		7	1
28	2021-11-26 10:05:50.759421+00	2	Seance object (2)	1	[{"added": {}}]	12	1
29	2021-11-26 10:11:16.810707+00	2	Seance object (2)	2	[{"changed": {"fields": ["hall"]}}]	12	1
30	2021-11-26 10:17:42.863298+00	11	Greece Theater | main hall	2	[{"changed": {"fields": ["is_front_space", "is_back_space", "is_right_space", "is_left_space"]}}]	9	1
31	2021-11-26 10:17:48.519526+00	12	Greece Theater | middle hall	2	[{"changed": {"fields": ["is_front_space", "is_back_space", "is_right_space", "is_left_space"]}}]	9	1
32	2021-11-26 10:17:53.984637+00	13	Greece Theater | back hall	2	[{"changed": {"fields": ["is_front_space", "is_back_space", "is_right_space", "is_left_space"]}}]	9	1
33	2021-11-26 10:17:58.669125+00	14	Greece Theater | 1st balcony	2	[{"changed": {"fields": ["is_front_space", "is_back_space", "is_right_space", "is_left_space"]}}]	9	1
34	2021-11-26 10:18:03.299729+00	15	Greece Theater | 2st balcony	2	[{"changed": {"fields": ["is_front_space", "is_back_space", "is_right_space", "is_left_space"]}}]	9	1
35	2021-11-26 10:26:24.676405+00	15	Greece Theater	3		7	1
36	2021-11-26 10:34:53.463603+00	3	Seance object (3)	1	[{"added": {}}]	12	1
37	2021-11-26 14:51:18.388581+00	10	<bound method Provider.email of <faker.providers.internet.en_US.Provider object at 0x7f1d88f624c0>>	3		6	1
38	2021-11-26 14:51:18.400345+00	9	<bound method Provider.email of <faker.providers.internet.en_US.Provider object at 0x7f4314b61d30>>	3		6	1
39	2021-11-26 14:51:18.410918+00	8	<bound method Provider.email of <faker.providers.internet.en_US.Provider object at 0x7f200d13ce20>>	3		6	1
40	2021-11-26 14:51:18.417453+00	7	gregoryclark@hotmail.com	3		6	1
41	2021-11-26 14:51:18.424+00	6	stephanie33@gmail.com	3		6	1
42	2021-11-26 14:52:43.727256+00	12	<bound method Provider.email of <faker.providers.internet.en_US.Provider object at 0x7f8d3245eeb0>>	3		6	1
43	2021-11-26 14:54:32.787111+00	50	Ticket object (50)	3		13	1
44	2021-11-26 14:54:32.7998+00	49	Ticket object (49)	3		13	1
45	2021-11-26 14:54:32.805083+00	48	Ticket object (48)	3		13	1
46	2021-11-26 14:54:32.808124+00	47	Ticket object (47)	3		13	1
47	2021-11-26 14:54:32.811036+00	46	Ticket object (46)	3		13	1
48	2021-11-26 14:54:32.813895+00	45	Ticket object (45)	3		13	1
49	2021-11-26 14:54:32.817022+00	44	Ticket object (44)	3		13	1
50	2021-11-26 14:54:32.820295+00	43	Ticket object (43)	3		13	1
51	2021-11-26 14:54:32.82348+00	42	Ticket object (42)	3		13	1
52	2021-11-26 14:54:32.826712+00	41	Ticket object (41)	3		13	1
53	2021-11-26 14:54:32.829735+00	40	Ticket object (40)	3		13	1
54	2021-11-26 14:54:32.832706+00	39	Ticket object (39)	3		13	1
55	2021-11-26 14:54:32.835603+00	38	Ticket object (38)	3		13	1
56	2021-11-26 14:54:32.838473+00	37	Ticket object (37)	3		13	1
57	2021-11-26 14:54:32.841278+00	29	Ticket object (29)	3		13	1
58	2021-11-26 14:54:32.84396+00	28	Ticket object (28)	3		13	1
59	2021-11-26 14:54:32.846851+00	27	Ticket object (27)	3		13	1
60	2021-11-26 14:54:32.84976+00	26	Ticket object (26)	3		13	1
61	2021-11-26 14:54:32.852842+00	25	Ticket object (25)	3		13	1
62	2021-11-26 14:54:32.856082+00	24	Ticket object (24)	3		13	1
63	2021-11-26 14:54:32.85903+00	23	Ticket object (23)	3		13	1
64	2021-11-26 14:54:32.861742+00	22	Ticket object (22)	3		13	1
65	2021-11-26 14:54:32.86448+00	21	Ticket object (21)	3		13	1
66	2021-11-26 14:54:32.867339+00	20	Ticket object (20)	3		13	1
67	2021-11-26 14:54:32.870986+00	19	Ticket object (19)	3		13	1
68	2021-11-26 14:54:32.874115+00	18	Ticket object (18)	3		13	1
69	2021-11-26 14:54:32.877028+00	17	Ticket object (17)	3		13	1
70	2021-11-26 14:54:32.879737+00	16	Ticket object (16)	3		13	1
71	2021-11-26 14:54:32.882354+00	15	Ticket object (15)	3		13	1
72	2021-11-26 14:54:32.885252+00	14	Ticket object (14)	3		13	1
73	2021-11-26 14:54:32.88847+00	13	Ticket object (13)	3		13	1
74	2021-11-26 14:54:32.8916+00	12	Ticket object (12)	3		13	1
75	2021-11-26 14:54:32.894247+00	11	Ticket object (11)	3		13	1
76	2021-11-26 14:54:32.896954+00	10	Ticket object (10)	3		13	1
77	2021-11-26 14:54:32.899538+00	9	Ticket object (9)	3		13	1
78	2021-11-26 14:54:32.902355+00	8	Ticket object (8)	3		13	1
79	2021-11-26 14:54:32.905464+00	7	Ticket object (7)	3		13	1
80	2021-11-26 14:55:15.713173+00	64	Ticket object (64)	3		13	1
81	2021-11-26 14:55:15.718053+00	63	Ticket object (63)	3		13	1
82	2021-11-26 14:55:15.721487+00	62	Ticket object (62)	3		13	1
83	2021-11-26 14:55:15.724596+00	61	Ticket object (61)	3		13	1
84	2021-11-26 14:55:15.727411+00	60	Ticket object (60)	3		13	1
85	2021-11-26 14:55:15.730211+00	59	Ticket object (59)	3		13	1
86	2021-11-26 14:55:15.732995+00	58	Ticket object (58)	3		13	1
87	2021-11-26 14:55:15.735657+00	57	Ticket object (57)	3		13	1
88	2021-11-26 14:55:15.738554+00	56	Ticket object (56)	3		13	1
89	2021-11-26 14:55:15.741668+00	55	Ticket object (55)	3		13	1
90	2021-11-26 14:55:15.744509+00	54	Ticket object (54)	3		13	1
91	2021-11-26 14:55:15.747306+00	53	Ticket object (53)	3		13	1
92	2021-11-26 14:55:15.75003+00	52	Ticket object (52)	3		13	1
93	2021-11-26 14:55:15.75294+00	51	Ticket object (51)	3		13	1
94	2021-11-26 15:06:46.451244+00	78	Ticket object (78)	3		13	1
95	2021-11-26 15:06:46.463799+00	77	Ticket object (77)	3		13	1
96	2021-11-26 15:06:46.467224+00	76	Ticket object (76)	3		13	1
97	2021-11-26 15:06:46.47031+00	75	Ticket object (75)	3		13	1
98	2021-11-26 15:06:46.473334+00	74	Ticket object (74)	3		13	1
99	2021-11-26 15:06:46.476185+00	73	Ticket object (73)	3		13	1
100	2021-11-26 15:06:46.479175+00	72	Ticket object (72)	3		13	1
101	2021-11-26 15:06:46.482265+00	71	Ticket object (71)	3		13	1
102	2021-11-26 15:06:46.485205+00	70	Ticket object (70)	3		13	1
103	2021-11-26 15:06:46.487911+00	69	Ticket object (69)	3		13	1
104	2021-11-26 15:06:46.490677+00	68	Ticket object (68)	3		13	1
105	2021-11-26 15:06:46.493371+00	67	Ticket object (67)	3		13	1
106	2021-11-26 15:06:46.496545+00	66	Ticket object (66)	3		13	1
107	2021-11-26 15:06:46.49954+00	65	Ticket object (65)	3		13	1
108	2021-11-26 15:11:33.486227+00	1	Ticket object (1)	3		13	1
109	2021-11-26 15:15:26.419839+00	30	Ticket object (30)	3		13	1
110	2021-11-26 15:15:26.433635+00	29	Ticket object (29)	3		13	1
111	2021-11-26 15:15:26.442154+00	28	Ticket object (28)	3		13	1
112	2021-11-26 15:15:26.44714+00	27	Ticket object (27)	3		13	1
113	2021-11-26 15:15:26.45224+00	26	Ticket object (26)	3		13	1
114	2021-11-26 15:15:26.458163+00	25	Ticket object (25)	3		13	1
115	2021-11-26 15:15:26.463964+00	24	Ticket object (24)	3		13	1
116	2021-11-26 15:15:26.469762+00	23	Ticket object (23)	3		13	1
117	2021-11-26 15:15:26.475548+00	22	Ticket object (22)	3		13	1
118	2021-11-26 15:15:26.481451+00	21	Ticket object (21)	3		13	1
119	2021-11-26 15:15:26.487347+00	20	Ticket object (20)	3		13	1
120	2021-11-26 15:15:26.494075+00	19	Ticket object (19)	3		13	1
121	2021-11-26 15:15:26.500764+00	18	Ticket object (18)	3		13	1
122	2021-11-26 15:15:26.506593+00	17	Ticket object (17)	3		13	1
123	2021-11-26 15:15:26.509844+00	16	Ticket object (16)	3		13	1
124	2021-11-26 15:15:26.51295+00	15	Ticket object (15)	3		13	1
125	2021-11-26 15:15:26.516145+00	14	Ticket object (14)	3		13	1
126	2021-11-26 15:15:26.519046+00	13	Ticket object (13)	3		13	1
127	2021-11-26 15:15:26.521891+00	12	Ticket object (12)	3		13	1
128	2021-11-26 15:15:26.524966+00	11	Ticket object (11)	3		13	1
129	2021-11-26 15:15:26.528428+00	10	Ticket object (10)	3		13	1
130	2021-11-26 15:15:26.531453+00	9	Ticket object (9)	3		13	1
131	2021-11-26 15:15:26.534283+00	8	Ticket object (8)	3		13	1
132	2021-11-26 15:15:26.536968+00	7	Ticket object (7)	3		13	1
133	2021-11-26 15:15:26.539867+00	6	Ticket object (6)	3		13	1
134	2021-11-26 15:15:26.542725+00	5	Ticket object (5)	3		13	1
135	2021-11-26 15:15:26.545484+00	4	Ticket object (4)	3		13	1
136	2021-11-26 15:15:26.548234+00	3	Ticket object (3)	3		13	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	user	user
7	hall	hall
8	rank	rank
9	section	section
10	row	row
11	seat	seat
12	seance	seance
13	ticket	ticket
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	user	0001_initial	2021-11-25 16:36:12.999918+00
2	contenttypes	0001_initial	2021-11-25 16:36:13.0311+00
3	admin	0001_initial	2021-11-25 16:36:13.082822+00
4	admin	0002_logentry_remove_auto_add	2021-11-25 16:36:13.092264+00
5	admin	0003_logentry_add_action_flag_choices	2021-11-25 16:36:13.102286+00
6	contenttypes	0002_remove_content_type_name	2021-11-25 16:36:13.122888+00
7	auth	0001_initial	2021-11-25 16:36:13.224239+00
8	auth	0002_alter_permission_name_max_length	2021-11-25 16:36:13.250297+00
9	auth	0003_alter_user_email_max_length	2021-11-25 16:36:13.270651+00
10	auth	0004_alter_user_username_opts	2021-11-25 16:36:13.28347+00
11	auth	0005_alter_user_last_login_null	2021-11-25 16:36:13.291909+00
12	auth	0006_require_contenttypes_0002	2021-11-25 16:36:13.295713+00
13	auth	0007_alter_validators_add_error_messages	2021-11-25 16:36:13.303033+00
14	auth	0008_alter_user_username_max_length	2021-11-25 16:36:13.310458+00
15	auth	0009_alter_user_last_name_max_length	2021-11-25 16:36:13.32803+00
16	auth	0010_alter_group_name_max_length	2021-11-25 16:36:13.346862+00
17	auth	0011_update_proxy_permissions	2021-11-25 16:36:13.360955+00
18	auth	0012_alter_user_first_name_max_length	2021-11-25 16:36:13.369785+00
19	hall	0001_initial	2021-11-25 16:36:13.421192+00
20	rank	0001_initial	2021-11-25 16:36:13.471368+00
21	section	0001_initial	2021-11-25 16:36:13.511726+00
22	row	0001_initial	2021-11-25 16:36:13.564402+00
23	row	0002_alter_row_number	2021-11-25 16:36:13.580595+00
24	row	0003_auto_20211124_2020	2021-11-25 16:36:13.624473+00
25	seance	0001_initial	2021-11-25 16:36:13.66131+00
26	seat	0001_initial	2021-11-25 16:36:13.734344+00
27	section	0002_auto_20211124_2020	2021-11-25 16:36:13.797611+00
28	section	0003_section_number	2021-11-25 16:36:13.811402+00
29	sessions	0001_initial	2021-11-25 16:36:13.852286+00
30	user	0002_auto_20211124_1744	2021-11-25 16:36:13.88247+00
31	ticket	0001_initial	2021-11-25 18:37:27.750152+00
32	rank	0002_auto_20211125_2359	2021-11-25 23:59:53.751614+00
33	hall	0002_auto_20211126_1506	2021-11-26 15:06:26.159476+00
34	rank	0003_auto_20211126_1506	2021-11-26 15:06:26.236617+00
35	row	0004_auto_20211126_1506	2021-11-26 15:06:26.348739+00
36	seance	0002_auto_20211126_1506	2021-11-26 15:06:26.405464+00
37	seat	0002_auto_20211126_1506	2021-11-26 15:06:26.494605+00
38	section	0004_auto_20211126_1506	2021-11-26 15:06:26.541036+00
39	ticket	0002_auto_20211126_1506	2021-11-26 15:06:48.455828+00
40	user	0003_auto_20211126_1506	2021-11-26 15:06:48.645936+00
41	ticket	0003_auto_20211126_1515	2021-11-26 15:15:28.952433+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
3pffpvbr5ffnjp1njent6g4s6vb9k8kx	.eJxVjEEOgjAQRe_StWnK0GmpS_ecoSnTGUENTSisjHcXEha6_e-9_1YxbesYt8pLnLK6qkZdfrch0ZPnA-RHmu9FU5nXZRr0oeiTVt2XzK_b6f4djKmOe43GWUbjDVoI1CFZ6YCgAcmZHSK23hGbIA0hGJHdDDAASCspcfDq8wW5bzdE:1mqHqZ:7hExBkzhDvbYC2BxPuVbepWfdr4BpKjl3pFcaUSLqc8	2021-12-09 16:43:43.367958+00
ivdi5gkvw7ef5d45d8vn1c8ktefp1uy3	MzU2ODRhMjYwNDE3NjE2ZGFiNDdlZTE4OGQzMmQ3ZTllMzcxN2NkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyZTgzZjI4Njk1MWYwNDNlMzc4OGZhY2ZiMDEyZGRhYjJjNmVhNzgxIn0=	2021-12-10 09:30:53.28358+00
\.


--
-- Data for Name: hall_hall; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hall_hall (id, name, address, created_at, updated_at, user_id) FROM stdin;
1	Grand Theatre	3d apartment in the right, 10th alley, hojaj Blv	2021-11-25 16:43:59.796953+00	2021-11-25 16:43:59.796974+00	1
16	Greece Theater	\N	2021-11-26 10:34:02.982434+00	2021-11-26 10:34:02.982448+00	1
\.


--
-- Data for Name: rank_rank; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rank_rank (id, name, created_at, updated_at, hall_id, color, price) FROM stdin;
1	Business	2021-11-25 16:45:59.95813+00	2021-11-25 16:45:59.95815+00	1	gray	1.0
8	economy	2021-11-26 10:34:02.993918+00	2021-11-26 10:34:02.993929+00	16	gray	10000.0
\.


--
-- Data for Name: row_row; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.row_row (id, number, name, is_high_row, created_at, updated_at, section_id, "position") FROM stdin;
1	1	\N	f	2021-11-25 16:45:24.593516+00	2021-11-25 16:45:24.593537+00	1	0
2	1	\N	f	2021-11-25 16:45:37.637548+00	2021-11-25 16:45:37.637582+00	2	0
228	0	\N	f	2021-11-26 10:34:03.001005+00	2021-11-26 10:34:03.001013+00	16	0
229	1	\N	f	2021-11-26 10:34:03.155354+00	2021-11-26 10:34:03.155374+00	16	0
230	2	\N	f	2021-11-26 10:34:03.302117+00	2021-11-26 10:34:03.302125+00	16	0
4	2	\N	f	2021-11-25 16:56:27.885811+00	2021-11-25 16:58:21.440662+00	1	0
231	3	\N	f	2021-11-26 10:34:03.468735+00	2021-11-26 10:34:03.468745+00	16	0
5	2	\N	f	2021-11-25 16:58:37.627188+00	2021-11-25 16:58:37.627208+00	1	1
3	5	\N	f	2021-11-25 16:47:37.705665+00	2021-11-25 18:06:30.968179+00	1	2
232	4	\N	f	2021-11-26 10:34:03.622353+00	2021-11-26 10:34:03.622363+00	16	0
233	5	\N	f	2021-11-26 10:34:03.77448+00	2021-11-26 10:34:03.774491+00	16	0
234	6	\N	f	2021-11-26 10:34:03.929386+00	2021-11-26 10:34:03.929392+00	16	0
235	7	\N	f	2021-11-26 10:34:04.080714+00	2021-11-26 10:34:04.08072+00	16	0
236	8	\N	f	2021-11-26 10:34:04.246576+00	2021-11-26 10:34:04.246582+00	16	0
237	9	\N	f	2021-11-26 10:34:04.415281+00	2021-11-26 10:34:04.415292+00	16	0
238	10	\N	f	2021-11-26 10:34:04.598365+00	2021-11-26 10:34:04.598371+00	16	0
239	11	\N	f	2021-11-26 10:34:04.776787+00	2021-11-26 10:34:04.776795+00	16	0
240	12	\N	f	2021-11-26 10:34:04.93012+00	2021-11-26 10:34:04.930126+00	16	0
241	13	\N	f	2021-11-26 10:34:05.088889+00	2021-11-26 10:34:05.088896+00	16	0
242	14	\N	f	2021-11-26 10:34:05.245148+00	2021-11-26 10:34:05.245154+00	16	0
243	15	\N	f	2021-11-26 10:34:05.443342+00	2021-11-26 10:34:05.443395+00	16	0
244	16	\N	f	2021-11-26 10:34:05.633761+00	2021-11-26 10:34:05.633767+00	16	0
245	17	\N	f	2021-11-26 10:34:05.794327+00	2021-11-26 10:34:05.794334+00	16	0
246	18	\N	f	2021-11-26 10:34:05.944575+00	2021-11-26 10:34:05.944585+00	16	0
247	19	\N	f	2021-11-26 10:34:06.097528+00	2021-11-26 10:34:06.097538+00	16	0
248	20	\N	f	2021-11-26 10:34:06.254237+00	2021-11-26 10:34:06.254246+00	16	0
249	21	\N	f	2021-11-26 10:34:06.401962+00	2021-11-26 10:34:06.401971+00	16	0
250	22	\N	f	2021-11-26 10:34:06.591208+00	2021-11-26 10:34:06.591241+00	16	0
251	23	\N	f	2021-11-26 10:34:06.893478+00	2021-11-26 10:34:06.893519+00	16	0
252	24	\N	f	2021-11-26 10:34:07.127713+00	2021-11-26 10:34:07.127721+00	16	0
253	25	\N	f	2021-11-26 10:34:07.280766+00	2021-11-26 10:34:07.280771+00	16	0
254	26	\N	f	2021-11-26 10:34:07.430695+00	2021-11-26 10:34:07.430701+00	16	0
255	27	\N	f	2021-11-26 10:34:07.584772+00	2021-11-26 10:34:07.584778+00	16	0
256	28	\N	f	2021-11-26 10:34:07.851712+00	2021-11-26 10:34:07.851739+00	16	0
257	29	\N	f	2021-11-26 10:34:08.141659+00	2021-11-26 10:34:08.141685+00	16	0
258	30	\N	f	2021-11-26 10:34:08.307973+00	2021-11-26 10:34:08.307983+00	16	0
259	31	\N	f	2021-11-26 10:34:08.52843+00	2021-11-26 10:34:08.528458+00	16	0
260	32	\N	f	2021-11-26 10:34:08.830668+00	2021-11-26 10:34:08.830697+00	16	0
261	33	\N	f	2021-11-26 10:34:09.061185+00	2021-11-26 10:34:09.061191+00	16	0
262	34	\N	f	2021-11-26 10:34:09.214672+00	2021-11-26 10:34:09.214677+00	16	0
263	35	\N	f	2021-11-26 10:34:09.373325+00	2021-11-26 10:34:09.373333+00	16	0
264	36	\N	f	2021-11-26 10:34:09.528611+00	2021-11-26 10:34:09.528617+00	16	0
265	37	\N	f	2021-11-26 10:34:09.725534+00	2021-11-26 10:34:09.725564+00	16	0
266	38	\N	f	2021-11-26 10:34:10.029377+00	2021-11-26 10:34:10.029408+00	16	0
267	39	\N	f	2021-11-26 10:34:10.228253+00	2021-11-26 10:34:10.22826+00	16	0
268	40	\N	f	2021-11-26 10:34:10.426518+00	2021-11-26 10:34:10.426547+00	16	0
269	41	\N	f	2021-11-26 10:34:10.587661+00	2021-11-26 10:34:10.587673+00	16	0
270	42	\N	f	2021-11-26 10:34:10.747962+00	2021-11-26 10:34:10.747967+00	16	0
271	43	\N	f	2021-11-26 10:34:10.965975+00	2021-11-26 10:34:10.966005+00	16	0
272	44	\N	f	2021-11-26 10:34:11.132683+00	2021-11-26 10:34:11.132689+00	16	0
273	45	\N	f	2021-11-26 10:34:11.355137+00	2021-11-26 10:34:11.355147+00	16	0
274	46	\N	f	2021-11-26 10:34:11.868545+00	2021-11-26 10:34:11.868571+00	16	0
275	47	\N	f	2021-11-26 10:34:12.200612+00	2021-11-26 10:34:12.200637+00	16	0
276	48	\N	f	2021-11-26 10:34:12.450619+00	2021-11-26 10:34:12.450625+00	16	0
277	49	\N	f	2021-11-26 10:34:12.603982+00	2021-11-26 10:34:12.60399+00	16	0
278	0	\N	f	2021-11-26 10:34:12.815714+00	2021-11-26 10:34:12.81572+00	17	0
279	1	\N	f	2021-11-26 10:34:12.878706+00	2021-11-26 10:34:12.878713+00	17	0
280	2	\N	f	2021-11-26 10:34:12.95298+00	2021-11-26 10:34:12.952997+00	17	0
281	3	\N	f	2021-11-26 10:34:13.024472+00	2021-11-26 10:34:13.024482+00	17	0
282	4	\N	f	2021-11-26 10:34:13.186213+00	2021-11-26 10:34:13.18622+00	17	0
283	5	\N	f	2021-11-26 10:34:13.247514+00	2021-11-26 10:34:13.247519+00	17	0
284	6	\N	f	2021-11-26 10:34:13.306578+00	2021-11-26 10:34:13.306587+00	17	0
285	7	\N	f	2021-11-26 10:34:13.366968+00	2021-11-26 10:34:13.366974+00	17	0
286	8	\N	f	2021-11-26 10:34:13.42828+00	2021-11-26 10:34:13.428287+00	17	0
287	9	\N	f	2021-11-26 10:34:13.492359+00	2021-11-26 10:34:13.492366+00	17	0
288	10	\N	f	2021-11-26 10:34:13.556513+00	2021-11-26 10:34:13.556522+00	17	0
289	11	\N	f	2021-11-26 10:34:13.617742+00	2021-11-26 10:34:13.617748+00	17	0
290	12	\N	f	2021-11-26 10:34:13.680025+00	2021-11-26 10:34:13.680031+00	17	0
291	13	\N	f	2021-11-26 10:34:13.740454+00	2021-11-26 10:34:13.740462+00	17	0
292	14	\N	f	2021-11-26 10:34:13.798428+00	2021-11-26 10:34:13.798433+00	17	0
293	15	\N	f	2021-11-26 10:34:13.86255+00	2021-11-26 10:34:13.862556+00	17	0
294	16	\N	f	2021-11-26 10:34:13.924035+00	2021-11-26 10:34:13.924043+00	17	0
295	17	\N	f	2021-11-26 10:34:13.982226+00	2021-11-26 10:34:13.982233+00	17	0
296	18	\N	f	2021-11-26 10:34:14.042247+00	2021-11-26 10:34:14.042253+00	17	0
297	19	\N	f	2021-11-26 10:34:14.105796+00	2021-11-26 10:34:14.105807+00	17	0
298	0	\N	f	2021-11-26 10:34:14.172138+00	2021-11-26 10:34:14.172146+00	17	1
299	1	\N	f	2021-11-26 10:34:14.238365+00	2021-11-26 10:34:14.238371+00	17	1
300	2	\N	f	2021-11-26 10:34:14.304328+00	2021-11-26 10:34:14.304334+00	17	1
301	3	\N	f	2021-11-26 10:34:14.370478+00	2021-11-26 10:34:14.370487+00	17	1
302	4	\N	f	2021-11-26 10:34:14.435293+00	2021-11-26 10:34:14.435303+00	17	1
303	5	\N	f	2021-11-26 10:34:14.562547+00	2021-11-26 10:34:14.562578+00	17	1
304	6	\N	f	2021-11-26 10:34:14.676128+00	2021-11-26 10:34:14.676137+00	17	1
305	7	\N	f	2021-11-26 10:34:14.742581+00	2021-11-26 10:34:14.742587+00	17	1
306	8	\N	f	2021-11-26 10:34:14.808475+00	2021-11-26 10:34:14.808482+00	17	1
307	9	\N	f	2021-11-26 10:34:14.875679+00	2021-11-26 10:34:14.875685+00	17	1
308	10	\N	f	2021-11-26 10:34:14.940459+00	2021-11-26 10:34:14.940469+00	17	1
309	11	\N	f	2021-11-26 10:34:15.006513+00	2021-11-26 10:34:15.006519+00	17	1
310	12	\N	f	2021-11-26 10:34:15.067254+00	2021-11-26 10:34:15.067259+00	17	1
311	13	\N	f	2021-11-26 10:34:15.132721+00	2021-11-26 10:34:15.132727+00	17	1
312	14	\N	f	2021-11-26 10:34:15.195777+00	2021-11-26 10:34:15.195786+00	17	1
313	15	\N	f	2021-11-26 10:34:15.262411+00	2021-11-26 10:34:15.262417+00	17	1
314	16	\N	f	2021-11-26 10:34:15.323732+00	2021-11-26 10:34:15.323742+00	17	1
315	17	\N	f	2021-11-26 10:34:15.392085+00	2021-11-26 10:34:15.392095+00	17	1
316	18	\N	f	2021-11-26 10:34:15.459182+00	2021-11-26 10:34:15.459189+00	17	1
317	19	\N	f	2021-11-26 10:34:15.521785+00	2021-11-26 10:34:15.521793+00	17	1
318	0	\N	f	2021-11-26 10:34:15.586662+00	2021-11-26 10:34:15.586669+00	17	2
319	1	\N	f	2021-11-26 10:34:15.65164+00	2021-11-26 10:34:15.651646+00	17	2
320	2	\N	f	2021-11-26 10:34:15.715659+00	2021-11-26 10:34:15.715665+00	17	2
321	3	\N	f	2021-11-26 10:34:15.777767+00	2021-11-26 10:34:15.777778+00	17	2
322	4	\N	f	2021-11-26 10:34:15.842032+00	2021-11-26 10:34:15.842037+00	17	2
323	5	\N	f	2021-11-26 10:34:15.910175+00	2021-11-26 10:34:15.910183+00	17	2
324	6	\N	f	2021-11-26 10:34:15.978621+00	2021-11-26 10:34:15.978626+00	17	2
325	7	\N	f	2021-11-26 10:34:16.043536+00	2021-11-26 10:34:16.043542+00	17	2
326	8	\N	f	2021-11-26 10:34:16.110232+00	2021-11-26 10:34:16.11024+00	17	2
327	9	\N	f	2021-11-26 10:34:16.181657+00	2021-11-26 10:34:16.181663+00	17	2
328	10	\N	f	2021-11-26 10:34:16.253882+00	2021-11-26 10:34:16.25389+00	17	2
329	11	\N	f	2021-11-26 10:34:16.324779+00	2021-11-26 10:34:16.324788+00	17	2
330	12	\N	f	2021-11-26 10:34:16.391726+00	2021-11-26 10:34:16.391736+00	17	2
331	13	\N	f	2021-11-26 10:34:16.457409+00	2021-11-26 10:34:16.457418+00	17	2
332	14	\N	f	2021-11-26 10:34:16.528469+00	2021-11-26 10:34:16.528475+00	17	2
333	15	\N	f	2021-11-26 10:34:16.595123+00	2021-11-26 10:34:16.595129+00	17	2
334	16	\N	f	2021-11-26 10:34:16.663241+00	2021-11-26 10:34:16.663246+00	17	2
335	17	\N	f	2021-11-26 10:34:16.73615+00	2021-11-26 10:34:16.736174+00	17	2
336	18	\N	f	2021-11-26 10:34:16.86003+00	2021-11-26 10:34:16.860057+00	17	2
337	19	\N	f	2021-11-26 10:34:16.98861+00	2021-11-26 10:34:16.988638+00	17	2
338	0	\N	f	2021-11-26 10:34:17.11891+00	2021-11-26 10:34:17.118936+00	18	0
339	1	\N	f	2021-11-26 10:34:17.239427+00	2021-11-26 10:34:17.239435+00	18	0
340	2	\N	f	2021-11-26 10:34:17.338469+00	2021-11-26 10:34:17.338479+00	18	0
341	3	\N	f	2021-11-26 10:34:17.430502+00	2021-11-26 10:34:17.430508+00	18	0
342	4	\N	f	2021-11-26 10:34:17.526379+00	2021-11-26 10:34:17.526387+00	18	0
343	5	\N	f	2021-11-26 10:34:17.617774+00	2021-11-26 10:34:17.61778+00	18	0
344	6	\N	f	2021-11-26 10:34:17.71463+00	2021-11-26 10:34:17.714635+00	18	0
345	7	\N	f	2021-11-26 10:34:17.803707+00	2021-11-26 10:34:17.803714+00	18	0
346	8	\N	f	2021-11-26 10:34:17.898903+00	2021-11-26 10:34:17.898909+00	18	0
347	9	\N	f	2021-11-26 10:34:17.995281+00	2021-11-26 10:34:17.995288+00	18	0
348	10	\N	f	2021-11-26 10:34:18.089705+00	2021-11-26 10:34:18.089713+00	18	0
349	11	\N	f	2021-11-26 10:34:18.181517+00	2021-11-26 10:34:18.181523+00	18	0
350	12	\N	f	2021-11-26 10:34:18.279731+00	2021-11-26 10:34:18.279738+00	18	0
351	13	\N	f	2021-11-26 10:34:18.374916+00	2021-11-26 10:34:18.374922+00	18	0
352	14	\N	f	2021-11-26 10:34:18.512003+00	2021-11-26 10:34:18.512036+00	18	0
353	15	\N	f	2021-11-26 10:34:18.688115+00	2021-11-26 10:34:18.688142+00	18	0
354	16	\N	f	2021-11-26 10:34:18.872075+00	2021-11-26 10:34:18.872116+00	18	0
355	17	\N	f	2021-11-26 10:34:18.993377+00	2021-11-26 10:34:18.993383+00	18	0
356	18	\N	f	2021-11-26 10:34:19.089729+00	2021-11-26 10:34:19.089743+00	18	0
357	19	\N	f	2021-11-26 10:34:19.184864+00	2021-11-26 10:34:19.18487+00	18	0
358	20	\N	f	2021-11-26 10:34:19.289838+00	2021-11-26 10:34:19.289846+00	18	0
359	21	\N	f	2021-11-26 10:34:19.387183+00	2021-11-26 10:34:19.387196+00	18	0
360	22	\N	f	2021-11-26 10:34:19.495553+00	2021-11-26 10:34:19.495561+00	18	0
361	23	\N	f	2021-11-26 10:34:19.595144+00	2021-11-26 10:34:19.595151+00	18	0
362	24	\N	f	2021-11-26 10:34:19.685997+00	2021-11-26 10:34:19.686004+00	18	0
363	25	\N	f	2021-11-26 10:34:19.780471+00	2021-11-26 10:34:19.780493+00	18	0
364	26	\N	f	2021-11-26 10:34:19.959905+00	2021-11-26 10:34:19.959933+00	18	0
365	27	\N	f	2021-11-26 10:34:20.086959+00	2021-11-26 10:34:20.086973+00	18	0
366	28	\N	f	2021-11-26 10:34:20.205213+00	2021-11-26 10:34:20.205221+00	18	0
367	29	\N	f	2021-11-26 10:34:20.29758+00	2021-11-26 10:34:20.297585+00	18	0
\.


--
-- Data for Name: seance_seance; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seance_seance (id, name, start_date_time, end_date_time, created_at, updated_at, hall_id) FROM stdin;
1	Romeo And Joliet	2021-11-25 16:44:18+00	2021-11-25 20:44:22+00	2021-11-25 16:44:25.949777+00	2021-11-25 16:44:25.949788+00	1
3	Grand history	2021-11-26 10:34:51+00	2021-11-26 10:34:52+00	2021-11-26 10:34:53.463124+00	2021-11-26 10:34:53.46313+00	16
\.


--
-- Data for Name: seat_seat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.seat_seat (id, number, created_at, updated_at, rank_id, row_id) FROM stdin;
1	1	2021-11-25 16:46:02.747334+00	2021-11-25 16:46:02.747357+00	1	1
2	1	2021-11-25 16:46:09.703809+00	2021-11-25 16:46:09.703833+00	1	2
3	1	2021-11-25 16:55:40.626028+00	2021-11-25 16:55:40.626048+00	1	3
4	2	2021-11-25 16:56:07.006527+00	2021-11-25 16:56:07.006562+00	1	1
5	1	2021-11-25 16:56:52.46542+00	2021-11-25 16:56:52.465438+00	1	4
6	6	2021-11-25 18:04:41.97576+00	2021-11-25 18:04:41.975778+00	1	2
6264	0	2021-11-26 10:34:03.004674+00	2021-11-26 10:34:03.004684+00	8	228
6265	1	2021-11-26 10:34:03.008228+00	2021-11-26 10:34:03.008242+00	8	228
6266	2	2021-11-26 10:34:03.011502+00	2021-11-26 10:34:03.011512+00	8	228
6267	3	2021-11-26 10:34:03.014388+00	2021-11-26 10:34:03.014395+00	8	228
6268	4	2021-11-26 10:34:03.017271+00	2021-11-26 10:34:03.017279+00	8	228
6269	5	2021-11-26 10:34:03.020602+00	2021-11-26 10:34:03.020616+00	8	228
6270	6	2021-11-26 10:34:03.023908+00	2021-11-26 10:34:03.023917+00	8	228
6271	7	2021-11-26 10:34:03.027193+00	2021-11-26 10:34:03.027201+00	8	228
6272	8	2021-11-26 10:34:03.030433+00	2021-11-26 10:34:03.030439+00	8	228
6273	9	2021-11-26 10:34:03.033592+00	2021-11-26 10:34:03.033597+00	8	228
6274	10	2021-11-26 10:34:03.036803+00	2021-11-26 10:34:03.036809+00	8	228
6275	11	2021-11-26 10:34:03.043141+00	2021-11-26 10:34:03.043148+00	8	228
6276	12	2021-11-26 10:34:03.046148+00	2021-11-26 10:34:03.046154+00	8	228
6277	13	2021-11-26 10:34:03.049249+00	2021-11-26 10:34:03.049256+00	8	228
6278	14	2021-11-26 10:34:03.05242+00	2021-11-26 10:34:03.052434+00	8	228
6279	15	2021-11-26 10:34:03.05533+00	2021-11-26 10:34:03.055339+00	8	228
6280	16	2021-11-26 10:34:03.058294+00	2021-11-26 10:34:03.058301+00	8	228
6281	17	2021-11-26 10:34:03.061011+00	2021-11-26 10:34:03.061016+00	8	228
6282	18	2021-11-26 10:34:03.063743+00	2021-11-26 10:34:03.063749+00	8	228
6283	19	2021-11-26 10:34:03.066589+00	2021-11-26 10:34:03.066594+00	8	228
6284	20	2021-11-26 10:34:03.069381+00	2021-11-26 10:34:03.069389+00	8	228
6285	21	2021-11-26 10:34:03.072518+00	2021-11-26 10:34:03.072528+00	8	228
6286	22	2021-11-26 10:34:03.075506+00	2021-11-26 10:34:03.075516+00	8	228
6287	23	2021-11-26 10:34:03.078475+00	2021-11-26 10:34:03.078482+00	8	228
6288	24	2021-11-26 10:34:03.081379+00	2021-11-26 10:34:03.081388+00	8	228
6289	25	2021-11-26 10:34:03.084245+00	2021-11-26 10:34:03.084255+00	8	228
6290	26	2021-11-26 10:34:03.087256+00	2021-11-26 10:34:03.087269+00	8	228
6291	27	2021-11-26 10:34:03.090288+00	2021-11-26 10:34:03.090297+00	8	228
6292	28	2021-11-26 10:34:03.093063+00	2021-11-26 10:34:03.093069+00	8	228
6293	29	2021-11-26 10:34:03.095722+00	2021-11-26 10:34:03.095728+00	8	228
6294	30	2021-11-26 10:34:03.098311+00	2021-11-26 10:34:03.098316+00	8	228
6295	31	2021-11-26 10:34:03.101105+00	2021-11-26 10:34:03.101115+00	8	228
6296	32	2021-11-26 10:34:03.10403+00	2021-11-26 10:34:03.104037+00	8	228
6297	33	2021-11-26 10:34:03.106826+00	2021-11-26 10:34:03.106831+00	8	228
6298	34	2021-11-26 10:34:03.109613+00	2021-11-26 10:34:03.109621+00	8	228
6299	35	2021-11-26 10:34:03.112403+00	2021-11-26 10:34:03.11241+00	8	228
6300	36	2021-11-26 10:34:03.11502+00	2021-11-26 10:34:03.115026+00	8	228
6301	37	2021-11-26 10:34:03.118258+00	2021-11-26 10:34:03.118294+00	8	228
6302	38	2021-11-26 10:34:03.121277+00	2021-11-26 10:34:03.121285+00	8	228
6303	39	2021-11-26 10:34:03.124138+00	2021-11-26 10:34:03.124146+00	8	228
6304	40	2021-11-26 10:34:03.126827+00	2021-11-26 10:34:03.126833+00	8	228
6305	41	2021-11-26 10:34:03.129538+00	2021-11-26 10:34:03.129543+00	8	228
6306	42	2021-11-26 10:34:03.132369+00	2021-11-26 10:34:03.132375+00	8	228
6307	43	2021-11-26 10:34:03.135246+00	2021-11-26 10:34:03.135256+00	8	228
6308	44	2021-11-26 10:34:03.138411+00	2021-11-26 10:34:03.13842+00	8	228
6309	45	2021-11-26 10:34:03.141386+00	2021-11-26 10:34:03.141392+00	8	228
6310	46	2021-11-26 10:34:03.144226+00	2021-11-26 10:34:03.144235+00	8	228
6311	47	2021-11-26 10:34:03.147017+00	2021-11-26 10:34:03.147023+00	8	228
6312	48	2021-11-26 10:34:03.149693+00	2021-11-26 10:34:03.149699+00	8	228
6313	49	2021-11-26 10:34:03.152442+00	2021-11-26 10:34:03.152453+00	8	228
6314	0	2021-11-26 10:34:03.158265+00	2021-11-26 10:34:03.158272+00	8	229
6315	1	2021-11-26 10:34:03.161021+00	2021-11-26 10:34:03.161031+00	8	229
6316	2	2021-11-26 10:34:03.164124+00	2021-11-26 10:34:03.164135+00	8	229
6317	3	2021-11-26 10:34:03.166966+00	2021-11-26 10:34:03.166973+00	8	229
6318	4	2021-11-26 10:34:03.169777+00	2021-11-26 10:34:03.169787+00	8	229
6319	5	2021-11-26 10:34:03.172762+00	2021-11-26 10:34:03.172771+00	8	229
6320	6	2021-11-26 10:34:03.175527+00	2021-11-26 10:34:03.175534+00	8	229
6321	7	2021-11-26 10:34:03.17833+00	2021-11-26 10:34:03.178336+00	8	229
6322	8	2021-11-26 10:34:03.18102+00	2021-11-26 10:34:03.181026+00	8	229
6323	9	2021-11-26 10:34:03.183711+00	2021-11-26 10:34:03.183717+00	8	229
6324	10	2021-11-26 10:34:03.186511+00	2021-11-26 10:34:03.186518+00	8	229
6325	11	2021-11-26 10:34:03.189382+00	2021-11-26 10:34:03.18939+00	8	229
6326	12	2021-11-26 10:34:03.192289+00	2021-11-26 10:34:03.192299+00	8	229
6327	13	2021-11-26 10:34:03.19539+00	2021-11-26 10:34:03.195397+00	8	229
6328	14	2021-11-26 10:34:03.198357+00	2021-11-26 10:34:03.198362+00	8	229
6329	15	2021-11-26 10:34:03.201419+00	2021-11-26 10:34:03.201429+00	8	229
6330	16	2021-11-26 10:34:03.204564+00	2021-11-26 10:34:03.204577+00	8	229
6331	17	2021-11-26 10:34:03.207688+00	2021-11-26 10:34:03.207697+00	8	229
6332	18	2021-11-26 10:34:03.210483+00	2021-11-26 10:34:03.210489+00	8	229
6333	19	2021-11-26 10:34:03.213185+00	2021-11-26 10:34:03.21319+00	8	229
6334	20	2021-11-26 10:34:03.215981+00	2021-11-26 10:34:03.215987+00	8	229
6335	21	2021-11-26 10:34:03.218948+00	2021-11-26 10:34:03.218954+00	8	229
6336	22	2021-11-26 10:34:03.221724+00	2021-11-26 10:34:03.221729+00	8	229
6337	23	2021-11-26 10:34:03.224449+00	2021-11-26 10:34:03.224455+00	8	229
6338	24	2021-11-26 10:34:03.227402+00	2021-11-26 10:34:03.22741+00	8	229
6339	25	2021-11-26 10:34:03.230592+00	2021-11-26 10:34:03.230599+00	8	229
6340	26	2021-11-26 10:34:03.233688+00	2021-11-26 10:34:03.233694+00	8	229
6341	27	2021-11-26 10:34:03.236748+00	2021-11-26 10:34:03.236758+00	8	229
6342	28	2021-11-26 10:34:03.240131+00	2021-11-26 10:34:03.240139+00	8	229
6343	29	2021-11-26 10:34:03.242876+00	2021-11-26 10:34:03.242882+00	8	229
6344	30	2021-11-26 10:34:03.24557+00	2021-11-26 10:34:03.245575+00	8	229
6345	31	2021-11-26 10:34:03.248469+00	2021-11-26 10:34:03.248474+00	8	229
6346	32	2021-11-26 10:34:03.251516+00	2021-11-26 10:34:03.251529+00	8	229
6347	33	2021-11-26 10:34:03.25479+00	2021-11-26 10:34:03.254802+00	8	229
6348	34	2021-11-26 10:34:03.257749+00	2021-11-26 10:34:03.257757+00	8	229
6349	35	2021-11-26 10:34:03.260571+00	2021-11-26 10:34:03.260578+00	8	229
6350	36	2021-11-26 10:34:03.263255+00	2021-11-26 10:34:03.263261+00	8	229
6351	37	2021-11-26 10:34:03.266027+00	2021-11-26 10:34:03.266033+00	8	229
6352	38	2021-11-26 10:34:03.268764+00	2021-11-26 10:34:03.268772+00	8	229
6353	39	2021-11-26 10:34:03.271556+00	2021-11-26 10:34:03.271563+00	8	229
6354	40	2021-11-26 10:34:03.274333+00	2021-11-26 10:34:03.27434+00	8	229
6355	41	2021-11-26 10:34:03.277092+00	2021-11-26 10:34:03.277099+00	8	229
6356	42	2021-11-26 10:34:03.279682+00	2021-11-26 10:34:03.279688+00	8	229
6357	43	2021-11-26 10:34:03.282433+00	2021-11-26 10:34:03.282439+00	8	229
6358	44	2021-11-26 10:34:03.28544+00	2021-11-26 10:34:03.285451+00	8	229
6359	45	2021-11-26 10:34:03.288387+00	2021-11-26 10:34:03.288395+00	8	229
6360	46	2021-11-26 10:34:03.291164+00	2021-11-26 10:34:03.291169+00	8	229
6361	47	2021-11-26 10:34:03.293807+00	2021-11-26 10:34:03.293813+00	8	229
6362	48	2021-11-26 10:34:03.29662+00	2021-11-26 10:34:03.296625+00	8	229
6363	49	2021-11-26 10:34:03.299279+00	2021-11-26 10:34:03.299285+00	8	229
6364	0	2021-11-26 10:34:03.305374+00	2021-11-26 10:34:03.305383+00	8	230
6365	1	2021-11-26 10:34:03.308399+00	2021-11-26 10:34:03.308406+00	8	230
6366	2	2021-11-26 10:34:03.313376+00	2021-11-26 10:34:03.313384+00	8	230
6367	3	2021-11-26 10:34:03.316459+00	2021-11-26 10:34:03.316465+00	8	230
6368	4	2021-11-26 10:34:03.319446+00	2021-11-26 10:34:03.319455+00	8	230
6369	5	2021-11-26 10:34:03.32232+00	2021-11-26 10:34:03.322329+00	8	230
6370	6	2021-11-26 10:34:03.325051+00	2021-11-26 10:34:03.325057+00	8	230
6371	7	2021-11-26 10:34:03.327673+00	2021-11-26 10:34:03.327679+00	8	230
6372	8	2021-11-26 10:34:03.330314+00	2021-11-26 10:34:03.330319+00	8	230
6373	9	2021-11-26 10:34:03.333023+00	2021-11-26 10:34:03.333029+00	8	230
6374	10	2021-11-26 10:34:03.335627+00	2021-11-26 10:34:03.335635+00	8	230
6375	11	2021-11-26 10:34:03.338532+00	2021-11-26 10:34:03.33854+00	8	230
6376	12	2021-11-26 10:34:03.341303+00	2021-11-26 10:34:03.341311+00	8	230
6377	13	2021-11-26 10:34:03.344198+00	2021-11-26 10:34:03.344206+00	8	230
6378	14	2021-11-26 10:34:03.347375+00	2021-11-26 10:34:03.347385+00	8	230
6379	15	2021-11-26 10:34:03.350514+00	2021-11-26 10:34:03.350523+00	8	230
6380	16	2021-11-26 10:34:03.353781+00	2021-11-26 10:34:03.35379+00	8	230
6381	17	2021-11-26 10:34:03.3568+00	2021-11-26 10:34:03.356808+00	8	230
6382	18	2021-11-26 10:34:03.359691+00	2021-11-26 10:34:03.359697+00	8	230
6383	19	2021-11-26 10:34:03.362442+00	2021-11-26 10:34:03.362447+00	8	230
6384	20	2021-11-26 10:34:03.365155+00	2021-11-26 10:34:03.36516+00	8	230
6385	21	2021-11-26 10:34:03.367852+00	2021-11-26 10:34:03.367858+00	8	230
6386	22	2021-11-26 10:34:03.370713+00	2021-11-26 10:34:03.370719+00	8	230
6387	23	2021-11-26 10:34:03.373364+00	2021-11-26 10:34:03.373369+00	8	230
6388	24	2021-11-26 10:34:03.376173+00	2021-11-26 10:34:03.376179+00	8	230
6389	25	2021-11-26 10:34:03.37894+00	2021-11-26 10:34:03.378946+00	8	230
6390	26	2021-11-26 10:34:03.381732+00	2021-11-26 10:34:03.381737+00	8	230
6391	27	2021-11-26 10:34:03.384569+00	2021-11-26 10:34:03.384574+00	8	230
6392	28	2021-11-26 10:34:03.387805+00	2021-11-26 10:34:03.387818+00	8	230
6393	29	2021-11-26 10:34:03.39086+00	2021-11-26 10:34:03.390866+00	8	230
6394	30	2021-11-26 10:34:03.393523+00	2021-11-26 10:34:03.393528+00	8	230
6395	31	2021-11-26 10:34:03.396437+00	2021-11-26 10:34:03.396443+00	8	230
6396	32	2021-11-26 10:34:03.399374+00	2021-11-26 10:34:03.399381+00	8	230
6397	33	2021-11-26 10:34:03.402343+00	2021-11-26 10:34:03.402352+00	8	230
6398	34	2021-11-26 10:34:03.405432+00	2021-11-26 10:34:03.405442+00	8	230
6399	35	2021-11-26 10:34:03.418834+00	2021-11-26 10:34:03.418846+00	8	230
6400	36	2021-11-26 10:34:03.425577+00	2021-11-26 10:34:03.425588+00	8	230
6401	37	2021-11-26 10:34:03.428946+00	2021-11-26 10:34:03.428955+00	8	230
6402	38	2021-11-26 10:34:03.432187+00	2021-11-26 10:34:03.432196+00	8	230
6403	39	2021-11-26 10:34:03.435562+00	2021-11-26 10:34:03.435572+00	8	230
6404	40	2021-11-26 10:34:03.43896+00	2021-11-26 10:34:03.438966+00	8	230
6405	41	2021-11-26 10:34:03.44182+00	2021-11-26 10:34:03.441826+00	8	230
6406	42	2021-11-26 10:34:03.444566+00	2021-11-26 10:34:03.444572+00	8	230
6407	43	2021-11-26 10:34:03.447587+00	2021-11-26 10:34:03.447592+00	8	230
6408	44	2021-11-26 10:34:03.450549+00	2021-11-26 10:34:03.450557+00	8	230
6409	45	2021-11-26 10:34:03.453568+00	2021-11-26 10:34:03.453582+00	8	230
6410	46	2021-11-26 10:34:03.45672+00	2021-11-26 10:34:03.456728+00	8	230
6411	47	2021-11-26 10:34:03.459626+00	2021-11-26 10:34:03.459631+00	8	230
6412	48	2021-11-26 10:34:03.462566+00	2021-11-26 10:34:03.462572+00	8	230
6413	49	2021-11-26 10:34:03.46551+00	2021-11-26 10:34:03.465515+00	8	230
6414	0	2021-11-26 10:34:03.472061+00	2021-11-26 10:34:03.472071+00	8	231
6415	1	2021-11-26 10:34:03.475089+00	2021-11-26 10:34:03.475096+00	8	231
6416	2	2021-11-26 10:34:03.477915+00	2021-11-26 10:34:03.477921+00	8	231
6417	3	2021-11-26 10:34:03.481177+00	2021-11-26 10:34:03.481182+00	8	231
6418	4	2021-11-26 10:34:03.484206+00	2021-11-26 10:34:03.484213+00	8	231
6419	5	2021-11-26 10:34:03.487256+00	2021-11-26 10:34:03.487263+00	8	231
6420	6	2021-11-26 10:34:03.490324+00	2021-11-26 10:34:03.490332+00	8	231
6421	7	2021-11-26 10:34:03.493483+00	2021-11-26 10:34:03.49349+00	8	231
6422	8	2021-11-26 10:34:03.496401+00	2021-11-26 10:34:03.496407+00	8	231
6423	9	2021-11-26 10:34:03.499406+00	2021-11-26 10:34:03.499417+00	8	231
6424	10	2021-11-26 10:34:03.502478+00	2021-11-26 10:34:03.502487+00	8	231
6425	11	2021-11-26 10:34:03.505469+00	2021-11-26 10:34:03.505477+00	8	231
6426	12	2021-11-26 10:34:03.50861+00	2021-11-26 10:34:03.508618+00	8	231
6427	13	2021-11-26 10:34:03.511673+00	2021-11-26 10:34:03.51168+00	8	231
6428	14	2021-11-26 10:34:03.514881+00	2021-11-26 10:34:03.514887+00	8	231
6429	15	2021-11-26 10:34:03.517859+00	2021-11-26 10:34:03.517865+00	8	231
6430	16	2021-11-26 10:34:03.520899+00	2021-11-26 10:34:03.520905+00	8	231
6431	17	2021-11-26 10:34:03.523932+00	2021-11-26 10:34:03.523938+00	8	231
6432	18	2021-11-26 10:34:03.526833+00	2021-11-26 10:34:03.526839+00	8	231
6433	19	2021-11-26 10:34:03.529744+00	2021-11-26 10:34:03.529749+00	8	231
6434	20	2021-11-26 10:34:03.532588+00	2021-11-26 10:34:03.532594+00	8	231
6435	21	2021-11-26 10:34:03.535391+00	2021-11-26 10:34:03.535397+00	8	231
6436	22	2021-11-26 10:34:03.538379+00	2021-11-26 10:34:03.538389+00	8	231
6437	23	2021-11-26 10:34:03.541271+00	2021-11-26 10:34:03.541278+00	8	231
6438	24	2021-11-26 10:34:03.544173+00	2021-11-26 10:34:03.544178+00	8	231
6439	25	2021-11-26 10:34:03.547229+00	2021-11-26 10:34:03.547234+00	8	231
6440	26	2021-11-26 10:34:03.550481+00	2021-11-26 10:34:03.550491+00	8	231
6441	27	2021-11-26 10:34:03.553939+00	2021-11-26 10:34:03.553947+00	8	231
6442	28	2021-11-26 10:34:03.557254+00	2021-11-26 10:34:03.557261+00	8	231
6443	29	2021-11-26 10:34:03.560534+00	2021-11-26 10:34:03.560544+00	8	231
6444	30	2021-11-26 10:34:03.563926+00	2021-11-26 10:34:03.563933+00	8	231
6445	31	2021-11-26 10:34:03.567218+00	2021-11-26 10:34:03.567226+00	8	231
6446	32	2021-11-26 10:34:03.5704+00	2021-11-26 10:34:03.57041+00	8	231
6447	33	2021-11-26 10:34:03.573537+00	2021-11-26 10:34:03.573546+00	8	231
6448	34	2021-11-26 10:34:03.576492+00	2021-11-26 10:34:03.576499+00	8	231
6449	35	2021-11-26 10:34:03.579283+00	2021-11-26 10:34:03.579289+00	8	231
6450	36	2021-11-26 10:34:03.582208+00	2021-11-26 10:34:03.582213+00	8	231
6451	37	2021-11-26 10:34:03.585028+00	2021-11-26 10:34:03.585033+00	8	231
6452	38	2021-11-26 10:34:03.587872+00	2021-11-26 10:34:03.587877+00	8	231
6453	39	2021-11-26 10:34:03.59062+00	2021-11-26 10:34:03.590626+00	8	231
6454	40	2021-11-26 10:34:03.59356+00	2021-11-26 10:34:03.593565+00	8	231
6455	41	2021-11-26 10:34:03.596254+00	2021-11-26 10:34:03.596259+00	8	231
6456	42	2021-11-26 10:34:03.598999+00	2021-11-26 10:34:03.599004+00	8	231
6457	43	2021-11-26 10:34:03.601698+00	2021-11-26 10:34:03.601703+00	8	231
6458	44	2021-11-26 10:34:03.604832+00	2021-11-26 10:34:03.604843+00	8	231
6459	45	2021-11-26 10:34:03.607774+00	2021-11-26 10:34:03.60778+00	8	231
6460	46	2021-11-26 10:34:03.610525+00	2021-11-26 10:34:03.610531+00	8	231
6461	47	2021-11-26 10:34:03.613408+00	2021-11-26 10:34:03.613413+00	8	231
6462	48	2021-11-26 10:34:03.616172+00	2021-11-26 10:34:03.616177+00	8	231
6463	49	2021-11-26 10:34:03.619149+00	2021-11-26 10:34:03.619161+00	8	231
6464	0	2021-11-26 10:34:03.625634+00	2021-11-26 10:34:03.625642+00	8	232
6465	1	2021-11-26 10:34:03.628604+00	2021-11-26 10:34:03.62861+00	8	232
6466	2	2021-11-26 10:34:03.631507+00	2021-11-26 10:34:03.631513+00	8	232
6467	3	2021-11-26 10:34:03.634386+00	2021-11-26 10:34:03.634394+00	8	232
6468	4	2021-11-26 10:34:03.637482+00	2021-11-26 10:34:03.637489+00	8	232
6469	5	2021-11-26 10:34:03.640732+00	2021-11-26 10:34:03.640739+00	8	232
6470	6	2021-11-26 10:34:03.643863+00	2021-11-26 10:34:03.64387+00	8	232
6471	7	2021-11-26 10:34:03.64681+00	2021-11-26 10:34:03.646816+00	8	232
6472	8	2021-11-26 10:34:03.649812+00	2021-11-26 10:34:03.649822+00	8	232
6473	9	2021-11-26 10:34:03.653236+00	2021-11-26 10:34:03.653246+00	8	232
6474	10	2021-11-26 10:34:03.656553+00	2021-11-26 10:34:03.65656+00	8	232
6475	11	2021-11-26 10:34:03.659578+00	2021-11-26 10:34:03.659584+00	8	232
6476	12	2021-11-26 10:34:03.662668+00	2021-11-26 10:34:03.662674+00	8	232
6477	13	2021-11-26 10:34:03.665667+00	2021-11-26 10:34:03.665672+00	8	232
6478	14	2021-11-26 10:34:03.668917+00	2021-11-26 10:34:03.668925+00	8	232
6479	15	2021-11-26 10:34:03.672024+00	2021-11-26 10:34:03.672031+00	8	232
6480	16	2021-11-26 10:34:03.675039+00	2021-11-26 10:34:03.675046+00	8	232
6481	17	2021-11-26 10:34:03.677788+00	2021-11-26 10:34:03.677794+00	8	232
6482	18	2021-11-26 10:34:03.680668+00	2021-11-26 10:34:03.680674+00	8	232
6483	19	2021-11-26 10:34:03.683455+00	2021-11-26 10:34:03.68346+00	8	232
6484	20	2021-11-26 10:34:03.686399+00	2021-11-26 10:34:03.686407+00	8	232
6485	21	2021-11-26 10:34:03.689512+00	2021-11-26 10:34:03.68952+00	8	232
6486	22	2021-11-26 10:34:03.692364+00	2021-11-26 10:34:03.692371+00	8	232
6487	23	2021-11-26 10:34:03.695168+00	2021-11-26 10:34:03.695173+00	8	232
6488	24	2021-11-26 10:34:03.697955+00	2021-11-26 10:34:03.69796+00	8	232
6489	25	2021-11-26 10:34:03.700736+00	2021-11-26 10:34:03.700741+00	8	232
6490	26	2021-11-26 10:34:03.703513+00	2021-11-26 10:34:03.703521+00	8	232
6491	27	2021-11-26 10:34:03.706493+00	2021-11-26 10:34:03.7065+00	8	232
6492	28	2021-11-26 10:34:03.709376+00	2021-11-26 10:34:03.709384+00	8	232
6493	29	2021-11-26 10:34:03.712341+00	2021-11-26 10:34:03.712351+00	8	232
6494	30	2021-11-26 10:34:03.715289+00	2021-11-26 10:34:03.715296+00	8	232
6495	31	2021-11-26 10:34:03.718272+00	2021-11-26 10:34:03.718282+00	8	232
6496	32	2021-11-26 10:34:03.721394+00	2021-11-26 10:34:03.721403+00	8	232
6497	33	2021-11-26 10:34:03.724416+00	2021-11-26 10:34:03.724424+00	8	232
6498	34	2021-11-26 10:34:03.727301+00	2021-11-26 10:34:03.727307+00	8	232
6499	35	2021-11-26 10:34:03.730227+00	2021-11-26 10:34:03.730233+00	8	232
6500	36	2021-11-26 10:34:03.733069+00	2021-11-26 10:34:03.733075+00	8	232
6501	37	2021-11-26 10:34:03.735804+00	2021-11-26 10:34:03.73581+00	8	232
6502	38	2021-11-26 10:34:03.738622+00	2021-11-26 10:34:03.738628+00	8	232
6503	39	2021-11-26 10:34:03.741489+00	2021-11-26 10:34:03.741494+00	8	232
6504	40	2021-11-26 10:34:03.744511+00	2021-11-26 10:34:03.744517+00	8	232
6505	41	2021-11-26 10:34:03.747362+00	2021-11-26 10:34:03.747369+00	8	232
6506	42	2021-11-26 10:34:03.750328+00	2021-11-26 10:34:03.750334+00	8	232
6507	43	2021-11-26 10:34:03.753153+00	2021-11-26 10:34:03.753163+00	8	232
6508	44	2021-11-26 10:34:03.756228+00	2021-11-26 10:34:03.756237+00	8	232
6509	45	2021-11-26 10:34:03.759114+00	2021-11-26 10:34:03.75912+00	8	232
6510	46	2021-11-26 10:34:03.762044+00	2021-11-26 10:34:03.76205+00	8	232
6511	47	2021-11-26 10:34:03.764976+00	2021-11-26 10:34:03.764982+00	8	232
6512	48	2021-11-26 10:34:03.768076+00	2021-11-26 10:34:03.768086+00	8	232
6513	49	2021-11-26 10:34:03.771428+00	2021-11-26 10:34:03.771438+00	8	232
6514	0	2021-11-26 10:34:03.777366+00	2021-11-26 10:34:03.777373+00	8	233
6515	1	2021-11-26 10:34:03.780306+00	2021-11-26 10:34:03.780312+00	8	233
6516	2	2021-11-26 10:34:03.783177+00	2021-11-26 10:34:03.783183+00	8	233
6517	3	2021-11-26 10:34:03.786086+00	2021-11-26 10:34:03.786093+00	8	233
6518	4	2021-11-26 10:34:03.789021+00	2021-11-26 10:34:03.789026+00	8	233
6519	5	2021-11-26 10:34:03.79178+00	2021-11-26 10:34:03.791786+00	8	233
6520	6	2021-11-26 10:34:03.794526+00	2021-11-26 10:34:03.794532+00	8	233
6521	7	2021-11-26 10:34:03.797503+00	2021-11-26 10:34:03.797508+00	8	233
6522	8	2021-11-26 10:34:03.800423+00	2021-11-26 10:34:03.800428+00	8	233
6523	9	2021-11-26 10:34:03.804046+00	2021-11-26 10:34:03.804057+00	8	233
6524	10	2021-11-26 10:34:03.80732+00	2021-11-26 10:34:03.807329+00	8	233
6525	11	2021-11-26 10:34:03.810481+00	2021-11-26 10:34:03.810489+00	8	233
6526	12	2021-11-26 10:34:03.813579+00	2021-11-26 10:34:03.813585+00	8	233
6527	13	2021-11-26 10:34:03.816665+00	2021-11-26 10:34:03.816671+00	8	233
6528	14	2021-11-26 10:34:03.819689+00	2021-11-26 10:34:03.819697+00	8	233
6529	15	2021-11-26 10:34:03.822621+00	2021-11-26 10:34:03.822629+00	8	233
6530	16	2021-11-26 10:34:03.82551+00	2021-11-26 10:34:03.825517+00	8	233
6531	17	2021-11-26 10:34:03.828443+00	2021-11-26 10:34:03.828449+00	8	233
6532	18	2021-11-26 10:34:03.831278+00	2021-11-26 10:34:03.831284+00	8	233
6533	19	2021-11-26 10:34:03.834159+00	2021-11-26 10:34:03.834164+00	8	233
6534	20	2021-11-26 10:34:03.837397+00	2021-11-26 10:34:03.837408+00	8	233
6535	21	2021-11-26 10:34:03.840538+00	2021-11-26 10:34:03.840545+00	8	233
6536	22	2021-11-26 10:34:03.843619+00	2021-11-26 10:34:03.843625+00	8	233
6537	23	2021-11-26 10:34:03.846737+00	2021-11-26 10:34:03.846743+00	8	233
6538	24	2021-11-26 10:34:03.849895+00	2021-11-26 10:34:03.849901+00	8	233
6539	25	2021-11-26 10:34:03.853373+00	2021-11-26 10:34:03.853381+00	8	233
6540	26	2021-11-26 10:34:03.856709+00	2021-11-26 10:34:03.856719+00	8	233
6541	27	2021-11-26 10:34:03.859761+00	2021-11-26 10:34:03.859768+00	8	233
6542	28	2021-11-26 10:34:03.862783+00	2021-11-26 10:34:03.862793+00	8	233
6543	29	2021-11-26 10:34:03.865922+00	2021-11-26 10:34:03.86593+00	8	233
6544	30	2021-11-26 10:34:03.869027+00	2021-11-26 10:34:03.869036+00	8	233
6545	31	2021-11-26 10:34:03.872024+00	2021-11-26 10:34:03.872032+00	8	233
6546	32	2021-11-26 10:34:03.874906+00	2021-11-26 10:34:03.874913+00	8	233
6547	33	2021-11-26 10:34:03.877826+00	2021-11-26 10:34:03.877832+00	8	233
6548	34	2021-11-26 10:34:03.880696+00	2021-11-26 10:34:03.880702+00	8	233
6549	35	2021-11-26 10:34:03.883744+00	2021-11-26 10:34:03.88375+00	8	233
6550	36	2021-11-26 10:34:03.886621+00	2021-11-26 10:34:03.886627+00	8	233
6551	37	2021-11-26 10:34:03.889624+00	2021-11-26 10:34:03.88963+00	8	233
6552	38	2021-11-26 10:34:03.892507+00	2021-11-26 10:34:03.892513+00	8	233
6553	39	2021-11-26 10:34:03.895416+00	2021-11-26 10:34:03.895422+00	8	233
6554	40	2021-11-26 10:34:03.898788+00	2021-11-26 10:34:03.898801+00	8	233
6555	41	2021-11-26 10:34:03.902298+00	2021-11-26 10:34:03.902309+00	8	233
6556	42	2021-11-26 10:34:03.905667+00	2021-11-26 10:34:03.905677+00	8	233
6557	43	2021-11-26 10:34:03.908692+00	2021-11-26 10:34:03.908699+00	8	233
6558	44	2021-11-26 10:34:03.911567+00	2021-11-26 10:34:03.911573+00	8	233
6559	45	2021-11-26 10:34:03.914418+00	2021-11-26 10:34:03.914423+00	8	233
6560	46	2021-11-26 10:34:03.91722+00	2021-11-26 10:34:03.917226+00	8	233
6561	47	2021-11-26 10:34:03.920133+00	2021-11-26 10:34:03.92014+00	8	233
6562	48	2021-11-26 10:34:03.923073+00	2021-11-26 10:34:03.923082+00	8	233
6563	49	2021-11-26 10:34:03.926314+00	2021-11-26 10:34:03.926325+00	8	233
6564	0	2021-11-26 10:34:03.932284+00	2021-11-26 10:34:03.93229+00	8	234
6565	1	2021-11-26 10:34:03.935411+00	2021-11-26 10:34:03.935422+00	8	234
6566	2	2021-11-26 10:34:03.938411+00	2021-11-26 10:34:03.938419+00	8	234
6567	3	2021-11-26 10:34:03.941303+00	2021-11-26 10:34:03.94131+00	8	234
6568	4	2021-11-26 10:34:03.944228+00	2021-11-26 10:34:03.944235+00	8	234
6569	5	2021-11-26 10:34:03.947066+00	2021-11-26 10:34:03.947072+00	8	234
6570	6	2021-11-26 10:34:03.949921+00	2021-11-26 10:34:03.949929+00	8	234
6571	7	2021-11-26 10:34:03.952689+00	2021-11-26 10:34:03.952695+00	8	234
6572	8	2021-11-26 10:34:03.955608+00	2021-11-26 10:34:03.955618+00	8	234
6573	9	2021-11-26 10:34:03.958706+00	2021-11-26 10:34:03.958716+00	8	234
6574	10	2021-11-26 10:34:03.961622+00	2021-11-26 10:34:03.961628+00	8	234
6575	11	2021-11-26 10:34:03.964531+00	2021-11-26 10:34:03.964537+00	8	234
6576	12	2021-11-26 10:34:03.967273+00	2021-11-26 10:34:03.967279+00	8	234
6577	13	2021-11-26 10:34:03.970214+00	2021-11-26 10:34:03.970224+00	8	234
6578	14	2021-11-26 10:34:03.973166+00	2021-11-26 10:34:03.973174+00	8	234
6579	15	2021-11-26 10:34:03.976138+00	2021-11-26 10:34:03.976144+00	8	234
6580	16	2021-11-26 10:34:03.978975+00	2021-11-26 10:34:03.978981+00	8	234
6581	17	2021-11-26 10:34:03.981814+00	2021-11-26 10:34:03.981819+00	8	234
6582	18	2021-11-26 10:34:03.984698+00	2021-11-26 10:34:03.984706+00	8	234
6583	19	2021-11-26 10:34:03.987648+00	2021-11-26 10:34:03.987654+00	8	234
6584	20	2021-11-26 10:34:03.990571+00	2021-11-26 10:34:03.990576+00	8	234
6585	21	2021-11-26 10:34:03.993572+00	2021-11-26 10:34:03.993578+00	8	234
6586	22	2021-11-26 10:34:03.996548+00	2021-11-26 10:34:03.996554+00	8	234
6587	23	2021-11-26 10:34:03.9997+00	2021-11-26 10:34:03.999706+00	8	234
6588	24	2021-11-26 10:34:04.002919+00	2021-11-26 10:34:04.00293+00	8	234
6589	25	2021-11-26 10:34:04.006143+00	2021-11-26 10:34:04.006155+00	8	234
6590	26	2021-11-26 10:34:04.009232+00	2021-11-26 10:34:04.009239+00	8	234
6591	27	2021-11-26 10:34:04.01217+00	2021-11-26 10:34:04.012176+00	8	234
6592	28	2021-11-26 10:34:04.015241+00	2021-11-26 10:34:04.015247+00	8	234
6593	29	2021-11-26 10:34:04.018296+00	2021-11-26 10:34:04.018307+00	8	234
6594	30	2021-11-26 10:34:04.021688+00	2021-11-26 10:34:04.021698+00	8	234
6595	31	2021-11-26 10:34:04.024947+00	2021-11-26 10:34:04.024955+00	8	234
6596	32	2021-11-26 10:34:04.027774+00	2021-11-26 10:34:04.02778+00	8	234
6597	33	2021-11-26 10:34:04.030389+00	2021-11-26 10:34:04.030395+00	8	234
6598	34	2021-11-26 10:34:04.033233+00	2021-11-26 10:34:04.033239+00	8	234
6599	35	2021-11-26 10:34:04.03601+00	2021-11-26 10:34:04.036018+00	8	234
6600	36	2021-11-26 10:34:04.038742+00	2021-11-26 10:34:04.038749+00	8	234
6601	37	2021-11-26 10:34:04.041696+00	2021-11-26 10:34:04.041703+00	8	234
6602	38	2021-11-26 10:34:04.044532+00	2021-11-26 10:34:04.044538+00	8	234
6603	39	2021-11-26 10:34:04.047438+00	2021-11-26 10:34:04.047451+00	8	234
6604	40	2021-11-26 10:34:04.050291+00	2021-11-26 10:34:04.050304+00	8	234
6605	41	2021-11-26 10:34:04.053352+00	2021-11-26 10:34:04.053361+00	8	234
6606	42	2021-11-26 10:34:04.056402+00	2021-11-26 10:34:04.056411+00	8	234
6607	43	2021-11-26 10:34:04.059214+00	2021-11-26 10:34:04.05922+00	8	234
6608	44	2021-11-26 10:34:04.06215+00	2021-11-26 10:34:04.062156+00	8	234
6609	45	2021-11-26 10:34:04.065766+00	2021-11-26 10:34:04.065772+00	8	234
6610	46	2021-11-26 10:34:04.069005+00	2021-11-26 10:34:04.069011+00	8	234
6611	47	2021-11-26 10:34:04.072036+00	2021-11-26 10:34:04.072042+00	8	234
6612	48	2021-11-26 10:34:04.074912+00	2021-11-26 10:34:04.074918+00	8	234
6613	49	2021-11-26 10:34:04.077818+00	2021-11-26 10:34:04.077823+00	8	234
6614	0	2021-11-26 10:34:04.083653+00	2021-11-26 10:34:04.083658+00	8	235
6615	1	2021-11-26 10:34:04.086608+00	2021-11-26 10:34:04.086618+00	8	235
6616	2	2021-11-26 10:34:04.089876+00	2021-11-26 10:34:04.089885+00	8	235
6617	3	2021-11-26 10:34:04.092982+00	2021-11-26 10:34:04.092989+00	8	235
6618	4	2021-11-26 10:34:04.095851+00	2021-11-26 10:34:04.095857+00	8	235
6619	5	2021-11-26 10:34:04.098918+00	2021-11-26 10:34:04.098923+00	8	235
6620	6	2021-11-26 10:34:04.102039+00	2021-11-26 10:34:04.102049+00	8	235
6621	7	2021-11-26 10:34:04.105009+00	2021-11-26 10:34:04.105016+00	8	235
6622	8	2021-11-26 10:34:04.107897+00	2021-11-26 10:34:04.107909+00	8	235
6623	9	2021-11-26 10:34:04.110941+00	2021-11-26 10:34:04.110949+00	8	235
6624	10	2021-11-26 10:34:04.113695+00	2021-11-26 10:34:04.113703+00	8	235
6625	11	2021-11-26 10:34:04.116212+00	2021-11-26 10:34:04.116218+00	8	235
6626	12	2021-11-26 10:34:04.119121+00	2021-11-26 10:34:04.11913+00	8	235
6627	13	2021-11-26 10:34:04.121921+00	2021-11-26 10:34:04.121929+00	8	235
6628	14	2021-11-26 10:34:04.124709+00	2021-11-26 10:34:04.124716+00	8	235
6629	15	2021-11-26 10:34:04.12742+00	2021-11-26 10:34:04.127425+00	8	235
6630	16	2021-11-26 10:34:04.130336+00	2021-11-26 10:34:04.130342+00	8	235
6631	17	2021-11-26 10:34:04.133118+00	2021-11-26 10:34:04.133124+00	8	235
6632	18	2021-11-26 10:34:04.136056+00	2021-11-26 10:34:04.136063+00	8	235
6633	19	2021-11-26 10:34:04.13869+00	2021-11-26 10:34:04.138696+00	8	235
6634	20	2021-11-26 10:34:04.14734+00	2021-11-26 10:34:04.147395+00	8	235
6635	21	2021-11-26 10:34:04.153224+00	2021-11-26 10:34:04.153258+00	8	235
6636	22	2021-11-26 10:34:04.159043+00	2021-11-26 10:34:04.159071+00	8	235
6637	23	2021-11-26 10:34:04.164147+00	2021-11-26 10:34:04.164172+00	8	235
6638	24	2021-11-26 10:34:04.169054+00	2021-11-26 10:34:04.169064+00	8	235
6639	25	2021-11-26 10:34:04.172426+00	2021-11-26 10:34:04.172436+00	8	235
6640	26	2021-11-26 10:34:04.175637+00	2021-11-26 10:34:04.175645+00	8	235
6641	27	2021-11-26 10:34:04.178796+00	2021-11-26 10:34:04.178802+00	8	235
6642	28	2021-11-26 10:34:04.181793+00	2021-11-26 10:34:04.181799+00	8	235
6643	29	2021-11-26 10:34:04.184842+00	2021-11-26 10:34:04.184851+00	8	235
6644	30	2021-11-26 10:34:04.187895+00	2021-11-26 10:34:04.187903+00	8	235
6645	31	2021-11-26 10:34:04.19107+00	2021-11-26 10:34:04.191077+00	8	235
6646	32	2021-11-26 10:34:04.194077+00	2021-11-26 10:34:04.194083+00	8	235
6647	33	2021-11-26 10:34:04.19698+00	2021-11-26 10:34:04.196985+00	8	235
6648	34	2021-11-26 10:34:04.199737+00	2021-11-26 10:34:04.199742+00	8	235
6649	35	2021-11-26 10:34:04.202696+00	2021-11-26 10:34:04.202707+00	8	235
6650	36	2021-11-26 10:34:04.205725+00	2021-11-26 10:34:04.205732+00	8	235
6651	37	2021-11-26 10:34:04.208563+00	2021-11-26 10:34:04.208569+00	8	235
6652	38	2021-11-26 10:34:04.211471+00	2021-11-26 10:34:04.211478+00	8	235
6653	39	2021-11-26 10:34:04.214331+00	2021-11-26 10:34:04.214336+00	8	235
6654	40	2021-11-26 10:34:04.217184+00	2021-11-26 10:34:04.21719+00	8	235
6655	41	2021-11-26 10:34:04.22012+00	2021-11-26 10:34:04.220127+00	8	235
6656	42	2021-11-26 10:34:04.222936+00	2021-11-26 10:34:04.222944+00	8	235
6657	43	2021-11-26 10:34:04.225894+00	2021-11-26 10:34:04.225901+00	8	235
6658	44	2021-11-26 10:34:04.228823+00	2021-11-26 10:34:04.228829+00	8	235
6659	45	2021-11-26 10:34:04.231843+00	2021-11-26 10:34:04.231849+00	8	235
6660	46	2021-11-26 10:34:04.234676+00	2021-11-26 10:34:04.234682+00	8	235
6661	47	2021-11-26 10:34:04.237683+00	2021-11-26 10:34:04.237693+00	8	235
6662	48	2021-11-26 10:34:04.240779+00	2021-11-26 10:34:04.240786+00	8	235
6663	49	2021-11-26 10:34:04.243584+00	2021-11-26 10:34:04.24359+00	8	235
6664	0	2021-11-26 10:34:04.250126+00	2021-11-26 10:34:04.250132+00	8	236
6665	1	2021-11-26 10:34:04.253704+00	2021-11-26 10:34:04.253713+00	8	236
6666	2	2021-11-26 10:34:04.257181+00	2021-11-26 10:34:04.25719+00	8	236
6667	3	2021-11-26 10:34:04.260775+00	2021-11-26 10:34:04.260782+00	8	236
6668	4	2021-11-26 10:34:04.264074+00	2021-11-26 10:34:04.264083+00	8	236
6669	5	2021-11-26 10:34:04.267047+00	2021-11-26 10:34:04.267057+00	8	236
6670	6	2021-11-26 10:34:04.270149+00	2021-11-26 10:34:04.270159+00	8	236
6671	7	2021-11-26 10:34:04.272974+00	2021-11-26 10:34:04.272982+00	8	236
6672	8	2021-11-26 10:34:04.275814+00	2021-11-26 10:34:04.275821+00	8	236
6673	9	2021-11-26 10:34:04.278538+00	2021-11-26 10:34:04.278544+00	8	236
6674	10	2021-11-26 10:34:04.283209+00	2021-11-26 10:34:04.283215+00	8	236
6675	11	2021-11-26 10:34:04.289723+00	2021-11-26 10:34:04.28973+00	8	236
6676	12	2021-11-26 10:34:04.293014+00	2021-11-26 10:34:04.29302+00	8	236
6677	13	2021-11-26 10:34:04.296233+00	2021-11-26 10:34:04.296239+00	8	236
6678	14	2021-11-26 10:34:04.299401+00	2021-11-26 10:34:04.299407+00	8	236
6679	15	2021-11-26 10:34:04.302405+00	2021-11-26 10:34:04.302413+00	8	236
6680	16	2021-11-26 10:34:04.305395+00	2021-11-26 10:34:04.305403+00	8	236
6681	17	2021-11-26 10:34:04.308475+00	2021-11-26 10:34:04.308481+00	8	236
6682	18	2021-11-26 10:34:04.31153+00	2021-11-26 10:34:04.311536+00	8	236
6683	19	2021-11-26 10:34:04.314441+00	2021-11-26 10:34:04.314446+00	8	236
6684	20	2021-11-26 10:34:04.317362+00	2021-11-26 10:34:04.317368+00	8	236
6685	21	2021-11-26 10:34:04.320225+00	2021-11-26 10:34:04.320233+00	8	236
6686	22	2021-11-26 10:34:04.323382+00	2021-11-26 10:34:04.323393+00	8	236
6687	23	2021-11-26 10:34:04.326467+00	2021-11-26 10:34:04.326473+00	8	236
6688	24	2021-11-26 10:34:04.329348+00	2021-11-26 10:34:04.329353+00	8	236
6689	25	2021-11-26 10:34:04.332107+00	2021-11-26 10:34:04.332112+00	8	236
6690	26	2021-11-26 10:34:04.335008+00	2021-11-26 10:34:04.335018+00	8	236
6691	27	2021-11-26 10:34:04.338311+00	2021-11-26 10:34:04.33832+00	8	236
6692	28	2021-11-26 10:34:04.343297+00	2021-11-26 10:34:04.343305+00	8	236
6693	29	2021-11-26 10:34:04.346788+00	2021-11-26 10:34:04.346795+00	8	236
6694	30	2021-11-26 10:34:04.35038+00	2021-11-26 10:34:04.350385+00	8	236
6695	31	2021-11-26 10:34:04.353791+00	2021-11-26 10:34:04.353798+00	8	236
6696	32	2021-11-26 10:34:04.357805+00	2021-11-26 10:34:04.357811+00	8	236
6697	33	2021-11-26 10:34:04.360925+00	2021-11-26 10:34:04.36093+00	8	236
6698	34	2021-11-26 10:34:04.364134+00	2021-11-26 10:34:04.36414+00	8	236
6699	35	2021-11-26 10:34:04.367191+00	2021-11-26 10:34:04.367197+00	8	236
6700	36	2021-11-26 10:34:04.370166+00	2021-11-26 10:34:04.370175+00	8	236
6701	37	2021-11-26 10:34:04.37362+00	2021-11-26 10:34:04.373628+00	8	236
6702	38	2021-11-26 10:34:04.376576+00	2021-11-26 10:34:04.376583+00	8	236
6703	39	2021-11-26 10:34:04.379635+00	2021-11-26 10:34:04.379641+00	8	236
6704	40	2021-11-26 10:34:04.382678+00	2021-11-26 10:34:04.382684+00	8	236
6705	41	2021-11-26 10:34:04.38574+00	2021-11-26 10:34:04.385754+00	8	236
6706	42	2021-11-26 10:34:04.389599+00	2021-11-26 10:34:04.389611+00	8	236
6707	43	2021-11-26 10:34:04.393001+00	2021-11-26 10:34:04.393009+00	8	236
6708	44	2021-11-26 10:34:04.396332+00	2021-11-26 10:34:04.396338+00	8	236
6709	45	2021-11-26 10:34:04.399614+00	2021-11-26 10:34:04.39962+00	8	236
6710	46	2021-11-26 10:34:04.402832+00	2021-11-26 10:34:04.402839+00	8	236
6711	47	2021-11-26 10:34:04.406027+00	2021-11-26 10:34:04.406035+00	8	236
6712	48	2021-11-26 10:34:04.409046+00	2021-11-26 10:34:04.409053+00	8	236
6713	49	2021-11-26 10:34:04.4122+00	2021-11-26 10:34:04.412205+00	8	236
6714	0	2021-11-26 10:34:04.418765+00	2021-11-26 10:34:04.418777+00	8	237
6715	1	2021-11-26 10:34:04.421869+00	2021-11-26 10:34:04.421877+00	8	237
6716	2	2021-11-26 10:34:04.425157+00	2021-11-26 10:34:04.425166+00	8	237
6717	3	2021-11-26 10:34:04.42836+00	2021-11-26 10:34:04.428367+00	8	237
6718	4	2021-11-26 10:34:04.431656+00	2021-11-26 10:34:04.431662+00	8	237
6719	5	2021-11-26 10:34:04.434692+00	2021-11-26 10:34:04.434699+00	8	237
6720	6	2021-11-26 10:34:04.437876+00	2021-11-26 10:34:04.437882+00	8	237
6721	7	2021-11-26 10:34:04.441048+00	2021-11-26 10:34:04.441053+00	8	237
6722	8	2021-11-26 10:34:04.444429+00	2021-11-26 10:34:04.444434+00	8	237
6723	9	2021-11-26 10:34:04.4482+00	2021-11-26 10:34:04.448206+00	8	237
6724	10	2021-11-26 10:34:04.451852+00	2021-11-26 10:34:04.451858+00	8	237
6725	11	2021-11-26 10:34:04.45558+00	2021-11-26 10:34:04.455589+00	8	237
6726	12	2021-11-26 10:34:04.459481+00	2021-11-26 10:34:04.459486+00	8	237
6727	13	2021-11-26 10:34:04.462959+00	2021-11-26 10:34:04.462965+00	8	237
6728	14	2021-11-26 10:34:04.466811+00	2021-11-26 10:34:04.466817+00	8	237
6729	15	2021-11-26 10:34:04.470247+00	2021-11-26 10:34:04.470254+00	8	237
6730	16	2021-11-26 10:34:04.473547+00	2021-11-26 10:34:04.473556+00	8	237
6731	17	2021-11-26 10:34:04.476824+00	2021-11-26 10:34:04.476834+00	8	237
6732	18	2021-11-26 10:34:04.480074+00	2021-11-26 10:34:04.480081+00	8	237
6733	19	2021-11-26 10:34:04.483065+00	2021-11-26 10:34:04.483072+00	8	237
6734	20	2021-11-26 10:34:04.486232+00	2021-11-26 10:34:04.486241+00	8	237
6735	21	2021-11-26 10:34:04.489385+00	2021-11-26 10:34:04.489394+00	8	237
6736	22	2021-11-26 10:34:04.492575+00	2021-11-26 10:34:04.492583+00	8	237
6737	23	2021-11-26 10:34:04.495635+00	2021-11-26 10:34:04.495641+00	8	237
6738	24	2021-11-26 10:34:04.498592+00	2021-11-26 10:34:04.498598+00	8	237
6739	25	2021-11-26 10:34:04.501529+00	2021-11-26 10:34:04.501537+00	8	237
6740	26	2021-11-26 10:34:04.504605+00	2021-11-26 10:34:04.50461+00	8	237
6741	27	2021-11-26 10:34:04.507522+00	2021-11-26 10:34:04.507527+00	8	237
6742	28	2021-11-26 10:34:04.510487+00	2021-11-26 10:34:04.510492+00	8	237
6743	29	2021-11-26 10:34:04.513514+00	2021-11-26 10:34:04.513519+00	8	237
6744	30	2021-11-26 10:34:04.516623+00	2021-11-26 10:34:04.516629+00	8	237
6745	31	2021-11-26 10:34:04.519791+00	2021-11-26 10:34:04.519802+00	8	237
6746	32	2021-11-26 10:34:04.522856+00	2021-11-26 10:34:04.522864+00	8	237
6747	33	2021-11-26 10:34:04.525767+00	2021-11-26 10:34:04.525773+00	8	237
6748	34	2021-11-26 10:34:04.528682+00	2021-11-26 10:34:04.528688+00	8	237
6749	35	2021-11-26 10:34:04.531584+00	2021-11-26 10:34:04.531592+00	8	237
6750	36	2021-11-26 10:34:04.534439+00	2021-11-26 10:34:04.534447+00	8	237
6751	37	2021-11-26 10:34:04.537761+00	2021-11-26 10:34:04.537774+00	8	237
6752	38	2021-11-26 10:34:04.557504+00	2021-11-26 10:34:04.557517+00	8	237
6753	39	2021-11-26 10:34:04.561693+00	2021-11-26 10:34:04.561703+00	8	237
6754	40	2021-11-26 10:34:04.565104+00	2021-11-26 10:34:04.565114+00	8	237
6755	41	2021-11-26 10:34:04.568709+00	2021-11-26 10:34:04.568723+00	8	237
6756	42	2021-11-26 10:34:04.572451+00	2021-11-26 10:34:04.57246+00	8	237
6757	43	2021-11-26 10:34:04.575635+00	2021-11-26 10:34:04.575641+00	8	237
6758	44	2021-11-26 10:34:04.578899+00	2021-11-26 10:34:04.578905+00	8	237
6759	45	2021-11-26 10:34:04.582053+00	2021-11-26 10:34:04.582059+00	8	237
6760	46	2021-11-26 10:34:04.585427+00	2021-11-26 10:34:04.58544+00	8	237
6761	47	2021-11-26 10:34:04.588813+00	2021-11-26 10:34:04.588821+00	8	237
6762	48	2021-11-26 10:34:04.591936+00	2021-11-26 10:34:04.591944+00	8	237
6763	49	2021-11-26 10:34:04.595243+00	2021-11-26 10:34:04.595249+00	8	237
6764	0	2021-11-26 10:34:04.604261+00	2021-11-26 10:34:04.604272+00	8	238
6765	1	2021-11-26 10:34:04.615671+00	2021-11-26 10:34:04.615683+00	8	238
6766	2	2021-11-26 10:34:04.623582+00	2021-11-26 10:34:04.623595+00	8	238
6767	3	2021-11-26 10:34:04.627451+00	2021-11-26 10:34:04.627461+00	8	238
6768	4	2021-11-26 10:34:04.630631+00	2021-11-26 10:34:04.63064+00	8	238
6769	5	2021-11-26 10:34:04.633919+00	2021-11-26 10:34:04.633928+00	8	238
6770	6	2021-11-26 10:34:04.637097+00	2021-11-26 10:34:04.637106+00	8	238
6771	7	2021-11-26 10:34:04.640368+00	2021-11-26 10:34:04.640377+00	8	238
6772	8	2021-11-26 10:34:04.643529+00	2021-11-26 10:34:04.643536+00	8	238
6773	9	2021-11-26 10:34:04.646835+00	2021-11-26 10:34:04.646841+00	8	238
6774	10	2021-11-26 10:34:04.649839+00	2021-11-26 10:34:04.649845+00	8	238
6775	11	2021-11-26 10:34:04.652825+00	2021-11-26 10:34:04.652831+00	8	238
6776	12	2021-11-26 10:34:04.655841+00	2021-11-26 10:34:04.655847+00	8	238
6777	13	2021-11-26 10:34:04.658713+00	2021-11-26 10:34:04.658719+00	8	238
6778	14	2021-11-26 10:34:04.661773+00	2021-11-26 10:34:04.661778+00	8	238
6779	15	2021-11-26 10:34:04.664991+00	2021-11-26 10:34:04.664996+00	8	238
6780	16	2021-11-26 10:34:04.6685+00	2021-11-26 10:34:04.668506+00	8	238
6781	17	2021-11-26 10:34:04.671899+00	2021-11-26 10:34:04.671939+00	8	238
6782	18	2021-11-26 10:34:04.675185+00	2021-11-26 10:34:04.675192+00	8	238
6783	19	2021-11-26 10:34:04.678656+00	2021-11-26 10:34:04.678662+00	8	238
6784	20	2021-11-26 10:34:04.682102+00	2021-11-26 10:34:04.682108+00	8	238
6785	21	2021-11-26 10:34:04.685598+00	2021-11-26 10:34:04.685606+00	8	238
6786	22	2021-11-26 10:34:04.688866+00	2021-11-26 10:34:04.688874+00	8	238
6787	23	2021-11-26 10:34:04.692372+00	2021-11-26 10:34:04.692383+00	8	238
6788	24	2021-11-26 10:34:04.695527+00	2021-11-26 10:34:04.695533+00	8	238
6789	25	2021-11-26 10:34:04.698769+00	2021-11-26 10:34:04.698774+00	8	238
6790	26	2021-11-26 10:34:04.702053+00	2021-11-26 10:34:04.702064+00	8	238
6791	27	2021-11-26 10:34:04.704909+00	2021-11-26 10:34:04.704917+00	8	238
6792	28	2021-11-26 10:34:04.707878+00	2021-11-26 10:34:04.707886+00	8	238
6793	29	2021-11-26 10:34:04.710829+00	2021-11-26 10:34:04.710836+00	8	238
6794	30	2021-11-26 10:34:04.713962+00	2021-11-26 10:34:04.713968+00	8	238
6795	31	2021-11-26 10:34:04.717004+00	2021-11-26 10:34:04.71701+00	8	238
6796	32	2021-11-26 10:34:04.720068+00	2021-11-26 10:34:04.720074+00	8	238
6797	33	2021-11-26 10:34:04.723145+00	2021-11-26 10:34:04.723152+00	8	238
6798	34	2021-11-26 10:34:04.72618+00	2021-11-26 10:34:04.726186+00	8	238
6799	35	2021-11-26 10:34:04.729083+00	2021-11-26 10:34:04.729089+00	8	238
6800	36	2021-11-26 10:34:04.732113+00	2021-11-26 10:34:04.732119+00	8	238
6801	37	2021-11-26 10:34:04.734962+00	2021-11-26 10:34:04.734968+00	8	238
6802	38	2021-11-26 10:34:04.738261+00	2021-11-26 10:34:04.738271+00	8	238
6803	39	2021-11-26 10:34:04.74136+00	2021-11-26 10:34:04.741366+00	8	238
6804	40	2021-11-26 10:34:04.744359+00	2021-11-26 10:34:04.744364+00	8	238
6805	41	2021-11-26 10:34:04.74739+00	2021-11-26 10:34:04.747396+00	8	238
6806	42	2021-11-26 10:34:04.750521+00	2021-11-26 10:34:04.750528+00	8	238
6807	43	2021-11-26 10:34:04.754211+00	2021-11-26 10:34:04.754221+00	8	238
6808	44	2021-11-26 10:34:04.75757+00	2021-11-26 10:34:04.757581+00	8	238
6809	45	2021-11-26 10:34:04.760452+00	2021-11-26 10:34:04.760458+00	8	238
6810	46	2021-11-26 10:34:04.76326+00	2021-11-26 10:34:04.763266+00	8	238
6811	47	2021-11-26 10:34:04.766252+00	2021-11-26 10:34:04.766257+00	8	238
6812	48	2021-11-26 10:34:04.769215+00	2021-11-26 10:34:04.769223+00	8	238
6813	49	2021-11-26 10:34:04.773684+00	2021-11-26 10:34:04.773693+00	8	238
6814	0	2021-11-26 10:34:04.779654+00	2021-11-26 10:34:04.77966+00	8	239
6815	1	2021-11-26 10:34:04.782633+00	2021-11-26 10:34:04.782642+00	8	239
6816	2	2021-11-26 10:34:04.785813+00	2021-11-26 10:34:04.785823+00	8	239
6817	3	2021-11-26 10:34:04.788858+00	2021-11-26 10:34:04.788866+00	8	239
6818	4	2021-11-26 10:34:04.79206+00	2021-11-26 10:34:04.79207+00	8	239
6819	5	2021-11-26 10:34:04.795245+00	2021-11-26 10:34:04.795251+00	8	239
6820	6	2021-11-26 10:34:04.798508+00	2021-11-26 10:34:04.798515+00	8	239
6821	7	2021-11-26 10:34:04.801581+00	2021-11-26 10:34:04.801587+00	8	239
6822	8	2021-11-26 10:34:04.804691+00	2021-11-26 10:34:04.804697+00	8	239
6823	9	2021-11-26 10:34:04.807638+00	2021-11-26 10:34:04.807643+00	8	239
6824	10	2021-11-26 10:34:04.81063+00	2021-11-26 10:34:04.810635+00	8	239
6825	11	2021-11-26 10:34:04.813612+00	2021-11-26 10:34:04.813617+00	8	239
6826	12	2021-11-26 10:34:04.816487+00	2021-11-26 10:34:04.816492+00	8	239
6827	13	2021-11-26 10:34:04.819511+00	2021-11-26 10:34:04.819521+00	8	239
6828	14	2021-11-26 10:34:04.822792+00	2021-11-26 10:34:04.8228+00	8	239
6829	15	2021-11-26 10:34:04.825704+00	2021-11-26 10:34:04.825711+00	8	239
6830	16	2021-11-26 10:34:04.828597+00	2021-11-26 10:34:04.828602+00	8	239
6831	17	2021-11-26 10:34:04.831535+00	2021-11-26 10:34:04.831541+00	8	239
6832	18	2021-11-26 10:34:04.834619+00	2021-11-26 10:34:04.83463+00	8	239
6833	19	2021-11-26 10:34:04.837898+00	2021-11-26 10:34:04.837906+00	8	239
6834	20	2021-11-26 10:34:04.840876+00	2021-11-26 10:34:04.840886+00	8	239
6835	21	2021-11-26 10:34:04.844008+00	2021-11-26 10:34:04.844017+00	8	239
6836	22	2021-11-26 10:34:04.846947+00	2021-11-26 10:34:04.846955+00	8	239
6837	23	2021-11-26 10:34:04.849918+00	2021-11-26 10:34:04.849925+00	8	239
6838	24	2021-11-26 10:34:04.853044+00	2021-11-26 10:34:04.853054+00	8	239
6839	25	2021-11-26 10:34:04.8562+00	2021-11-26 10:34:04.856209+00	8	239
6840	26	2021-11-26 10:34:04.859259+00	2021-11-26 10:34:04.859267+00	8	239
6841	27	2021-11-26 10:34:04.862285+00	2021-11-26 10:34:04.862291+00	8	239
6842	28	2021-11-26 10:34:04.865266+00	2021-11-26 10:34:04.865272+00	8	239
6843	29	2021-11-26 10:34:04.868455+00	2021-11-26 10:34:04.868461+00	8	239
6844	30	2021-11-26 10:34:04.871594+00	2021-11-26 10:34:04.8716+00	8	239
6845	31	2021-11-26 10:34:04.874705+00	2021-11-26 10:34:04.874711+00	8	239
6846	32	2021-11-26 10:34:04.877754+00	2021-11-26 10:34:04.87776+00	8	239
6847	33	2021-11-26 10:34:04.880901+00	2021-11-26 10:34:04.880906+00	8	239
6848	34	2021-11-26 10:34:04.883805+00	2021-11-26 10:34:04.88381+00	8	239
6849	35	2021-11-26 10:34:04.88695+00	2021-11-26 10:34:04.886961+00	8	239
6850	36	2021-11-26 10:34:04.890045+00	2021-11-26 10:34:04.890054+00	8	239
6851	37	2021-11-26 10:34:04.892984+00	2021-11-26 10:34:04.892992+00	8	239
6852	38	2021-11-26 10:34:04.895926+00	2021-11-26 10:34:04.895932+00	8	239
6853	39	2021-11-26 10:34:04.898939+00	2021-11-26 10:34:04.898945+00	8	239
6854	40	2021-11-26 10:34:04.902058+00	2021-11-26 10:34:04.902066+00	8	239
6855	41	2021-11-26 10:34:04.90501+00	2021-11-26 10:34:04.905022+00	8	239
6856	42	2021-11-26 10:34:04.907965+00	2021-11-26 10:34:04.907975+00	8	239
6857	43	2021-11-26 10:34:04.910741+00	2021-11-26 10:34:04.910748+00	8	239
6858	44	2021-11-26 10:34:04.913434+00	2021-11-26 10:34:04.91344+00	8	239
6859	45	2021-11-26 10:34:04.916107+00	2021-11-26 10:34:04.916113+00	8	239
6860	46	2021-11-26 10:34:04.91884+00	2021-11-26 10:34:04.918847+00	8	239
6861	47	2021-11-26 10:34:04.9216+00	2021-11-26 10:34:04.921607+00	8	239
6862	48	2021-11-26 10:34:04.924329+00	2021-11-26 10:34:04.924337+00	8	239
6863	49	2021-11-26 10:34:04.927159+00	2021-11-26 10:34:04.927167+00	8	239
6864	0	2021-11-26 10:34:04.932945+00	2021-11-26 10:34:04.932951+00	8	240
6865	1	2021-11-26 10:34:04.935893+00	2021-11-26 10:34:04.935903+00	8	240
6866	2	2021-11-26 10:34:04.93897+00	2021-11-26 10:34:04.938978+00	8	240
6867	3	2021-11-26 10:34:04.94188+00	2021-11-26 10:34:04.941887+00	8	240
6868	4	2021-11-26 10:34:04.944733+00	2021-11-26 10:34:04.944738+00	8	240
6869	5	2021-11-26 10:34:04.947499+00	2021-11-26 10:34:04.947505+00	8	240
6870	6	2021-11-26 10:34:04.950297+00	2021-11-26 10:34:04.950304+00	8	240
6871	7	2021-11-26 10:34:04.953315+00	2021-11-26 10:34:04.953325+00	8	240
6872	8	2021-11-26 10:34:04.958003+00	2021-11-26 10:34:04.958015+00	8	240
6873	9	2021-11-26 10:34:04.961779+00	2021-11-26 10:34:04.961787+00	8	240
6874	10	2021-11-26 10:34:04.964639+00	2021-11-26 10:34:04.964644+00	8	240
6875	11	2021-11-26 10:34:04.967817+00	2021-11-26 10:34:04.967823+00	8	240
6876	12	2021-11-26 10:34:04.971119+00	2021-11-26 10:34:04.971129+00	8	240
6877	13	2021-11-26 10:34:04.974357+00	2021-11-26 10:34:04.974364+00	8	240
6878	14	2021-11-26 10:34:04.977247+00	2021-11-26 10:34:04.977253+00	8	240
6879	15	2021-11-26 10:34:04.979896+00	2021-11-26 10:34:04.979901+00	8	240
6880	16	2021-11-26 10:34:04.982559+00	2021-11-26 10:34:04.982565+00	8	240
6881	17	2021-11-26 10:34:04.985411+00	2021-11-26 10:34:04.985424+00	8	240
6882	18	2021-11-26 10:34:04.98828+00	2021-11-26 10:34:04.988288+00	8	240
6883	19	2021-11-26 10:34:04.991157+00	2021-11-26 10:34:04.991165+00	8	240
6884	20	2021-11-26 10:34:04.994013+00	2021-11-26 10:34:04.994021+00	8	240
6885	21	2021-11-26 10:34:04.996798+00	2021-11-26 10:34:04.996807+00	8	240
6886	22	2021-11-26 10:34:04.999773+00	2021-11-26 10:34:04.999781+00	8	240
6887	23	2021-11-26 10:34:05.002761+00	2021-11-26 10:34:05.002771+00	8	240
6888	24	2021-11-26 10:34:05.005667+00	2021-11-26 10:34:05.005676+00	8	240
6889	25	2021-11-26 10:34:05.008431+00	2021-11-26 10:34:05.008439+00	8	240
6890	26	2021-11-26 10:34:05.011189+00	2021-11-26 10:34:05.011196+00	8	240
6891	27	2021-11-26 10:34:05.013934+00	2021-11-26 10:34:05.013942+00	8	240
6892	28	2021-11-26 10:34:05.016621+00	2021-11-26 10:34:05.016627+00	8	240
6893	29	2021-11-26 10:34:05.019266+00	2021-11-26 10:34:05.019272+00	8	240
6894	30	2021-11-26 10:34:05.02218+00	2021-11-26 10:34:05.022187+00	8	240
6895	31	2021-11-26 10:34:05.025024+00	2021-11-26 10:34:05.02503+00	8	240
6896	32	2021-11-26 10:34:05.027856+00	2021-11-26 10:34:05.027861+00	8	240
6897	33	2021-11-26 10:34:05.030656+00	2021-11-26 10:34:05.030662+00	8	240
6898	34	2021-11-26 10:34:05.033616+00	2021-11-26 10:34:05.033621+00	8	240
6899	35	2021-11-26 10:34:05.036554+00	2021-11-26 10:34:05.036566+00	8	240
6900	36	2021-11-26 10:34:05.0396+00	2021-11-26 10:34:05.039609+00	8	240
6901	37	2021-11-26 10:34:05.042698+00	2021-11-26 10:34:05.042705+00	8	240
6902	38	2021-11-26 10:34:05.04565+00	2021-11-26 10:34:05.045655+00	8	240
6903	39	2021-11-26 10:34:05.048635+00	2021-11-26 10:34:05.048641+00	8	240
6904	40	2021-11-26 10:34:05.052114+00	2021-11-26 10:34:05.052122+00	8	240
6905	41	2021-11-26 10:34:05.055925+00	2021-11-26 10:34:05.055933+00	8	240
6906	42	2021-11-26 10:34:05.059629+00	2021-11-26 10:34:05.059639+00	8	240
6907	43	2021-11-26 10:34:05.063879+00	2021-11-26 10:34:05.063885+00	8	240
6908	44	2021-11-26 10:34:05.069554+00	2021-11-26 10:34:05.069564+00	8	240
6909	45	2021-11-26 10:34:05.073077+00	2021-11-26 10:34:05.073086+00	8	240
6910	46	2021-11-26 10:34:05.076787+00	2021-11-26 10:34:05.076794+00	8	240
6911	47	2021-11-26 10:34:05.080078+00	2021-11-26 10:34:05.080084+00	8	240
6912	48	2021-11-26 10:34:05.082912+00	2021-11-26 10:34:05.082918+00	8	240
6913	49	2021-11-26 10:34:05.085975+00	2021-11-26 10:34:05.085981+00	8	240
6914	0	2021-11-26 10:34:05.091918+00	2021-11-26 10:34:05.091926+00	8	241
6915	1	2021-11-26 10:34:05.094764+00	2021-11-26 10:34:05.094772+00	8	241
6916	2	2021-11-26 10:34:05.09777+00	2021-11-26 10:34:05.097778+00	8	241
6917	3	2021-11-26 10:34:05.100941+00	2021-11-26 10:34:05.10095+00	8	241
6918	4	2021-11-26 10:34:05.104156+00	2021-11-26 10:34:05.104168+00	8	241
6919	5	2021-11-26 10:34:05.107143+00	2021-11-26 10:34:05.107149+00	8	241
6920	6	2021-11-26 10:34:05.109974+00	2021-11-26 10:34:05.10998+00	8	241
6921	7	2021-11-26 10:34:05.112808+00	2021-11-26 10:34:05.112814+00	8	241
6922	8	2021-11-26 10:34:05.115528+00	2021-11-26 10:34:05.115533+00	8	241
6923	9	2021-11-26 10:34:05.118336+00	2021-11-26 10:34:05.118351+00	8	241
6924	10	2021-11-26 10:34:05.121652+00	2021-11-26 10:34:05.121663+00	8	241
6925	11	2021-11-26 10:34:05.124782+00	2021-11-26 10:34:05.124791+00	8	241
6926	12	2021-11-26 10:34:05.127681+00	2021-11-26 10:34:05.127687+00	8	241
6927	13	2021-11-26 10:34:05.130546+00	2021-11-26 10:34:05.130552+00	8	241
6928	14	2021-11-26 10:34:05.133303+00	2021-11-26 10:34:05.133309+00	8	241
6929	15	2021-11-26 10:34:05.136206+00	2021-11-26 10:34:05.136214+00	8	241
6930	16	2021-11-26 10:34:05.139084+00	2021-11-26 10:34:05.139092+00	8	241
6931	17	2021-11-26 10:34:05.141967+00	2021-11-26 10:34:05.141974+00	8	241
6932	18	2021-11-26 10:34:05.144745+00	2021-11-26 10:34:05.144751+00	8	241
6933	19	2021-11-26 10:34:05.147505+00	2021-11-26 10:34:05.147511+00	8	241
6934	20	2021-11-26 10:34:05.151872+00	2021-11-26 10:34:05.151884+00	8	241
6935	21	2021-11-26 10:34:05.155606+00	2021-11-26 10:34:05.155616+00	8	241
6936	22	2021-11-26 10:34:05.158988+00	2021-11-26 10:34:05.158996+00	8	241
6937	23	2021-11-26 10:34:05.162267+00	2021-11-26 10:34:05.162273+00	8	241
6938	24	2021-11-26 10:34:05.165333+00	2021-11-26 10:34:05.165339+00	8	241
6939	25	2021-11-26 10:34:05.168436+00	2021-11-26 10:34:05.168442+00	8	241
6940	26	2021-11-26 10:34:05.171528+00	2021-11-26 10:34:05.171535+00	8	241
6941	27	2021-11-26 10:34:05.174367+00	2021-11-26 10:34:05.174373+00	8	241
6942	28	2021-11-26 10:34:05.177379+00	2021-11-26 10:34:05.177385+00	8	241
6943	29	2021-11-26 10:34:05.180558+00	2021-11-26 10:34:05.180564+00	8	241
6944	30	2021-11-26 10:34:05.183663+00	2021-11-26 10:34:05.183669+00	8	241
6945	31	2021-11-26 10:34:05.18669+00	2021-11-26 10:34:05.186698+00	8	241
6946	32	2021-11-26 10:34:05.18992+00	2021-11-26 10:34:05.189929+00	8	241
6947	33	2021-11-26 10:34:05.192762+00	2021-11-26 10:34:05.192769+00	8	241
6948	34	2021-11-26 10:34:05.195536+00	2021-11-26 10:34:05.195541+00	8	241
6949	35	2021-11-26 10:34:05.198388+00	2021-11-26 10:34:05.198394+00	8	241
6950	36	2021-11-26 10:34:05.201184+00	2021-11-26 10:34:05.201192+00	8	241
6951	37	2021-11-26 10:34:05.204093+00	2021-11-26 10:34:05.204102+00	8	241
6952	38	2021-11-26 10:34:05.207349+00	2021-11-26 10:34:05.207366+00	8	241
6953	39	2021-11-26 10:34:05.210268+00	2021-11-26 10:34:05.210277+00	8	241
6954	40	2021-11-26 10:34:05.213591+00	2021-11-26 10:34:05.2136+00	8	241
6955	41	2021-11-26 10:34:05.216554+00	2021-11-26 10:34:05.21656+00	8	241
6956	42	2021-11-26 10:34:05.219709+00	2021-11-26 10:34:05.219718+00	8	241
6957	43	2021-11-26 10:34:05.222755+00	2021-11-26 10:34:05.222764+00	8	241
6958	44	2021-11-26 10:34:05.225959+00	2021-11-26 10:34:05.225967+00	8	241
6959	45	2021-11-26 10:34:05.229139+00	2021-11-26 10:34:05.229145+00	8	241
6960	46	2021-11-26 10:34:05.232291+00	2021-11-26 10:34:05.232297+00	8	241
6961	47	2021-11-26 10:34:05.235311+00	2021-11-26 10:34:05.235317+00	8	241
6962	48	2021-11-26 10:34:05.238357+00	2021-11-26 10:34:05.238363+00	8	241
6963	49	2021-11-26 10:34:05.241565+00	2021-11-26 10:34:05.241571+00	8	241
6964	0	2021-11-26 10:34:05.248627+00	2021-11-26 10:34:05.248633+00	8	242
6965	1	2021-11-26 10:34:05.252029+00	2021-11-26 10:34:05.25204+00	8	242
6966	2	2021-11-26 10:34:05.255646+00	2021-11-26 10:34:05.255655+00	8	242
6967	3	2021-11-26 10:34:05.259537+00	2021-11-26 10:34:05.259544+00	8	242
6968	4	2021-11-26 10:34:05.26298+00	2021-11-26 10:34:05.262985+00	8	242
6969	5	2021-11-26 10:34:05.266529+00	2021-11-26 10:34:05.266535+00	8	242
6970	6	2021-11-26 10:34:05.26989+00	2021-11-26 10:34:05.269897+00	8	242
6971	7	2021-11-26 10:34:05.273219+00	2021-11-26 10:34:05.27323+00	8	242
6972	8	2021-11-26 10:34:05.276566+00	2021-11-26 10:34:05.276574+00	8	242
6973	9	2021-11-26 10:34:05.279656+00	2021-11-26 10:34:05.279662+00	8	242
6974	10	2021-11-26 10:34:05.282709+00	2021-11-26 10:34:05.282715+00	8	242
6975	11	2021-11-26 10:34:05.28586+00	2021-11-26 10:34:05.285867+00	8	242
6976	12	2021-11-26 10:34:05.288958+00	2021-11-26 10:34:05.288964+00	8	242
6977	13	2021-11-26 10:34:05.291945+00	2021-11-26 10:34:05.29195+00	8	242
6978	14	2021-11-26 10:34:05.29499+00	2021-11-26 10:34:05.294995+00	8	242
6979	15	2021-11-26 10:34:05.297796+00	2021-11-26 10:34:05.297801+00	8	242
6980	16	2021-11-26 10:34:05.300674+00	2021-11-26 10:34:05.30068+00	8	242
6981	17	2021-11-26 10:34:05.30405+00	2021-11-26 10:34:05.304062+00	8	242
6982	18	2021-11-26 10:34:05.307238+00	2021-11-26 10:34:05.307247+00	8	242
6983	19	2021-11-26 10:34:05.310327+00	2021-11-26 10:34:05.310333+00	8	242
6984	20	2021-11-26 10:34:05.313299+00	2021-11-26 10:34:05.313305+00	8	242
6985	21	2021-11-26 10:34:05.316284+00	2021-11-26 10:34:05.31629+00	8	242
6986	22	2021-11-26 10:34:05.319439+00	2021-11-26 10:34:05.319446+00	8	242
6987	23	2021-11-26 10:34:05.322334+00	2021-11-26 10:34:05.322342+00	8	242
6988	24	2021-11-26 10:34:05.325199+00	2021-11-26 10:34:05.325206+00	8	242
6989	25	2021-11-26 10:34:05.327943+00	2021-11-26 10:34:05.327949+00	8	242
6990	26	2021-11-26 10:34:05.330968+00	2021-11-26 10:34:05.330974+00	8	242
6991	27	2021-11-26 10:34:05.333811+00	2021-11-26 10:34:05.333823+00	8	242
6992	28	2021-11-26 10:34:05.336879+00	2021-11-26 10:34:05.336889+00	8	242
6993	29	2021-11-26 10:34:05.339849+00	2021-11-26 10:34:05.339859+00	8	242
6994	30	2021-11-26 10:34:05.342979+00	2021-11-26 10:34:05.342987+00	8	242
6995	31	2021-11-26 10:34:05.347479+00	2021-11-26 10:34:05.347486+00	8	242
6996	32	2021-11-26 10:34:05.350646+00	2021-11-26 10:34:05.350653+00	8	242
6997	33	2021-11-26 10:34:05.353767+00	2021-11-26 10:34:05.353774+00	8	242
6998	34	2021-11-26 10:34:05.357275+00	2021-11-26 10:34:05.357281+00	8	242
6999	35	2021-11-26 10:34:05.360649+00	2021-11-26 10:34:05.360655+00	8	242
7000	36	2021-11-26 10:34:05.364758+00	2021-11-26 10:34:05.364781+00	8	242
7001	37	2021-11-26 10:34:05.369694+00	2021-11-26 10:34:05.369717+00	8	242
7002	38	2021-11-26 10:34:05.375666+00	2021-11-26 10:34:05.375695+00	8	242
7003	39	2021-11-26 10:34:05.380994+00	2021-11-26 10:34:05.381018+00	8	242
7004	40	2021-11-26 10:34:05.386687+00	2021-11-26 10:34:05.386716+00	8	242
7005	41	2021-11-26 10:34:05.392492+00	2021-11-26 10:34:05.392516+00	8	242
7006	42	2021-11-26 10:34:05.398256+00	2021-11-26 10:34:05.398287+00	8	242
7007	43	2021-11-26 10:34:05.403674+00	2021-11-26 10:34:05.403699+00	8	242
7008	44	2021-11-26 10:34:05.409113+00	2021-11-26 10:34:05.409138+00	8	242
7009	45	2021-11-26 10:34:05.414875+00	2021-11-26 10:34:05.414903+00	8	242
7010	46	2021-11-26 10:34:05.420332+00	2021-11-26 10:34:05.420355+00	8	242
7011	47	2021-11-26 10:34:05.426002+00	2021-11-26 10:34:05.426028+00	8	242
7012	48	2021-11-26 10:34:05.431842+00	2021-11-26 10:34:05.431868+00	8	242
7013	49	2021-11-26 10:34:05.437605+00	2021-11-26 10:34:05.437642+00	8	242
7014	0	2021-11-26 10:34:05.448766+00	2021-11-26 10:34:05.448789+00	8	243
7015	1	2021-11-26 10:34:05.454342+00	2021-11-26 10:34:05.45438+00	8	243
7016	2	2021-11-26 10:34:05.464007+00	2021-11-26 10:34:05.464036+00	8	243
7017	3	2021-11-26 10:34:05.469764+00	2021-11-26 10:34:05.469789+00	8	243
7018	4	2021-11-26 10:34:05.475012+00	2021-11-26 10:34:05.475036+00	8	243
7019	5	2021-11-26 10:34:05.480369+00	2021-11-26 10:34:05.480392+00	8	243
7020	6	2021-11-26 10:34:05.484319+00	2021-11-26 10:34:05.484329+00	8	243
7021	7	2021-11-26 10:34:05.487556+00	2021-11-26 10:34:05.487567+00	8	243
7022	8	2021-11-26 10:34:05.49113+00	2021-11-26 10:34:05.49114+00	8	243
7023	9	2021-11-26 10:34:05.494709+00	2021-11-26 10:34:05.494716+00	8	243
7024	10	2021-11-26 10:34:05.498247+00	2021-11-26 10:34:05.498253+00	8	243
7025	11	2021-11-26 10:34:05.505292+00	2021-11-26 10:34:05.505301+00	8	243
7026	12	2021-11-26 10:34:05.509198+00	2021-11-26 10:34:05.509208+00	8	243
7027	13	2021-11-26 10:34:05.513001+00	2021-11-26 10:34:05.513009+00	8	243
7028	14	2021-11-26 10:34:05.516719+00	2021-11-26 10:34:05.516729+00	8	243
7029	15	2021-11-26 10:34:05.520393+00	2021-11-26 10:34:05.520403+00	8	243
7030	16	2021-11-26 10:34:05.523702+00	2021-11-26 10:34:05.523712+00	8	243
7031	17	2021-11-26 10:34:05.526958+00	2021-11-26 10:34:05.526964+00	8	243
7032	18	2021-11-26 10:34:05.530102+00	2021-11-26 10:34:05.530108+00	8	243
7033	19	2021-11-26 10:34:05.533478+00	2021-11-26 10:34:05.533484+00	8	243
7034	20	2021-11-26 10:34:05.536801+00	2021-11-26 10:34:05.536807+00	8	243
7035	21	2021-11-26 10:34:05.539986+00	2021-11-26 10:34:05.539992+00	8	243
7036	22	2021-11-26 10:34:05.543119+00	2021-11-26 10:34:05.543125+00	8	243
7037	23	2021-11-26 10:34:05.546352+00	2021-11-26 10:34:05.546358+00	8	243
7038	24	2021-11-26 10:34:05.549707+00	2021-11-26 10:34:05.549714+00	8	243
7039	25	2021-11-26 10:34:05.552852+00	2021-11-26 10:34:05.552858+00	8	243
7040	26	2021-11-26 10:34:05.556092+00	2021-11-26 10:34:05.556101+00	8	243
7041	27	2021-11-26 10:34:05.559142+00	2021-11-26 10:34:05.559148+00	8	243
7042	28	2021-11-26 10:34:05.562087+00	2021-11-26 10:34:05.562092+00	8	243
7043	29	2021-11-26 10:34:05.564879+00	2021-11-26 10:34:05.564884+00	8	243
7044	30	2021-11-26 10:34:05.567825+00	2021-11-26 10:34:05.567833+00	8	243
7045	31	2021-11-26 10:34:05.570791+00	2021-11-26 10:34:05.5708+00	8	243
7046	32	2021-11-26 10:34:05.57409+00	2021-11-26 10:34:05.574099+00	8	243
7047	33	2021-11-26 10:34:05.577104+00	2021-11-26 10:34:05.577114+00	8	243
7048	34	2021-11-26 10:34:05.580256+00	2021-11-26 10:34:05.580263+00	8	243
7049	35	2021-11-26 10:34:05.583375+00	2021-11-26 10:34:05.583381+00	8	243
7050	36	2021-11-26 10:34:05.586396+00	2021-11-26 10:34:05.586406+00	8	243
7051	37	2021-11-26 10:34:05.589691+00	2021-11-26 10:34:05.589699+00	8	243
7052	38	2021-11-26 10:34:05.594676+00	2021-11-26 10:34:05.594684+00	8	243
7053	39	2021-11-26 10:34:05.598036+00	2021-11-26 10:34:05.598042+00	8	243
7054	40	2021-11-26 10:34:05.601296+00	2021-11-26 10:34:05.601302+00	8	243
7055	41	2021-11-26 10:34:05.604541+00	2021-11-26 10:34:05.604547+00	8	243
7056	42	2021-11-26 10:34:05.607761+00	2021-11-26 10:34:05.607768+00	8	243
7057	43	2021-11-26 10:34:05.610825+00	2021-11-26 10:34:05.610831+00	8	243
7058	44	2021-11-26 10:34:05.613975+00	2021-11-26 10:34:05.61398+00	8	243
7059	45	2021-11-26 10:34:05.617024+00	2021-11-26 10:34:05.61703+00	8	243
7060	46	2021-11-26 10:34:05.620322+00	2021-11-26 10:34:05.620335+00	8	243
7061	47	2021-11-26 10:34:05.623934+00	2021-11-26 10:34:05.623943+00	8	243
7062	48	2021-11-26 10:34:05.627199+00	2021-11-26 10:34:05.627206+00	8	243
7063	49	2021-11-26 10:34:05.630533+00	2021-11-26 10:34:05.630539+00	8	243
7064	0	2021-11-26 10:34:05.636792+00	2021-11-26 10:34:05.636799+00	8	244
7065	1	2021-11-26 10:34:05.640087+00	2021-11-26 10:34:05.640098+00	8	244
7066	2	2021-11-26 10:34:05.643412+00	2021-11-26 10:34:05.643419+00	8	244
7067	3	2021-11-26 10:34:05.646264+00	2021-11-26 10:34:05.64627+00	8	244
7068	4	2021-11-26 10:34:05.649399+00	2021-11-26 10:34:05.649404+00	8	244
7069	5	2021-11-26 10:34:05.652502+00	2021-11-26 10:34:05.652511+00	8	244
7070	6	2021-11-26 10:34:05.655679+00	2021-11-26 10:34:05.655687+00	8	244
7071	7	2021-11-26 10:34:05.658784+00	2021-11-26 10:34:05.658791+00	8	244
7072	8	2021-11-26 10:34:05.66166+00	2021-11-26 10:34:05.661665+00	8	244
7073	9	2021-11-26 10:34:05.664597+00	2021-11-26 10:34:05.664602+00	8	244
7074	10	2021-11-26 10:34:05.667827+00	2021-11-26 10:34:05.667834+00	8	244
7075	11	2021-11-26 10:34:05.671026+00	2021-11-26 10:34:05.671036+00	8	244
7076	12	2021-11-26 10:34:05.673917+00	2021-11-26 10:34:05.673923+00	8	244
7077	13	2021-11-26 10:34:05.676648+00	2021-11-26 10:34:05.676654+00	8	244
7078	14	2021-11-26 10:34:05.679561+00	2021-11-26 10:34:05.679567+00	8	244
7079	15	2021-11-26 10:34:05.682412+00	2021-11-26 10:34:05.682418+00	8	244
7080	16	2021-11-26 10:34:05.685509+00	2021-11-26 10:34:05.685526+00	8	244
7081	17	2021-11-26 10:34:05.688659+00	2021-11-26 10:34:05.688668+00	8	244
7082	18	2021-11-26 10:34:05.691934+00	2021-11-26 10:34:05.691941+00	8	244
7083	19	2021-11-26 10:34:05.69562+00	2021-11-26 10:34:05.695626+00	8	244
7084	20	2021-11-26 10:34:05.699008+00	2021-11-26 10:34:05.699014+00	8	244
7085	21	2021-11-26 10:34:05.702091+00	2021-11-26 10:34:05.702097+00	8	244
7086	22	2021-11-26 10:34:05.705146+00	2021-11-26 10:34:05.705156+00	8	244
7087	23	2021-11-26 10:34:05.708115+00	2021-11-26 10:34:05.708122+00	8	244
7088	24	2021-11-26 10:34:05.710956+00	2021-11-26 10:34:05.710962+00	8	244
7089	25	2021-11-26 10:34:05.713792+00	2021-11-26 10:34:05.713797+00	8	244
7090	26	2021-11-26 10:34:05.719218+00	2021-11-26 10:34:05.719227+00	8	244
7091	27	2021-11-26 10:34:05.722349+00	2021-11-26 10:34:05.722359+00	8	244
7092	28	2021-11-26 10:34:05.725557+00	2021-11-26 10:34:05.725565+00	8	244
7093	29	2021-11-26 10:34:05.728511+00	2021-11-26 10:34:05.728518+00	8	244
7094	30	2021-11-26 10:34:05.731631+00	2021-11-26 10:34:05.731658+00	8	244
7095	31	2021-11-26 10:34:05.734756+00	2021-11-26 10:34:05.734766+00	8	244
7096	32	2021-11-26 10:34:05.738022+00	2021-11-26 10:34:05.738031+00	8	244
7097	33	2021-11-26 10:34:05.741055+00	2021-11-26 10:34:05.741064+00	8	244
7098	34	2021-11-26 10:34:05.744029+00	2021-11-26 10:34:05.744035+00	8	244
7099	35	2021-11-26 10:34:05.746846+00	2021-11-26 10:34:05.746851+00	8	244
7100	36	2021-11-26 10:34:05.749738+00	2021-11-26 10:34:05.749744+00	8	244
7101	37	2021-11-26 10:34:05.752654+00	2021-11-26 10:34:05.75266+00	8	244
7102	38	2021-11-26 10:34:05.755804+00	2021-11-26 10:34:05.75581+00	8	244
7103	39	2021-11-26 10:34:05.758821+00	2021-11-26 10:34:05.758826+00	8	244
7104	40	2021-11-26 10:34:05.761901+00	2021-11-26 10:34:05.761906+00	8	244
7105	41	2021-11-26 10:34:05.764919+00	2021-11-26 10:34:05.764924+00	8	244
7106	42	2021-11-26 10:34:05.768119+00	2021-11-26 10:34:05.768124+00	8	244
7107	43	2021-11-26 10:34:05.77128+00	2021-11-26 10:34:05.771293+00	8	244
7108	44	2021-11-26 10:34:05.774614+00	2021-11-26 10:34:05.774623+00	8	244
7109	45	2021-11-26 10:34:05.777706+00	2021-11-26 10:34:05.777715+00	8	244
7110	46	2021-11-26 10:34:05.780672+00	2021-11-26 10:34:05.780678+00	8	244
7111	47	2021-11-26 10:34:05.783612+00	2021-11-26 10:34:05.783619+00	8	244
7112	48	2021-11-26 10:34:05.786475+00	2021-11-26 10:34:05.786483+00	8	244
7113	49	2021-11-26 10:34:05.791136+00	2021-11-26 10:34:05.791148+00	8	244
7114	0	2021-11-26 10:34:05.797594+00	2021-11-26 10:34:05.797599+00	8	245
7115	1	2021-11-26 10:34:05.800794+00	2021-11-26 10:34:05.800802+00	8	245
7116	2	2021-11-26 10:34:05.804005+00	2021-11-26 10:34:05.804015+00	8	245
7117	3	2021-11-26 10:34:05.806849+00	2021-11-26 10:34:05.806857+00	8	245
7118	4	2021-11-26 10:34:05.80968+00	2021-11-26 10:34:05.809687+00	8	245
7119	5	2021-11-26 10:34:05.81246+00	2021-11-26 10:34:05.812466+00	8	245
7120	6	2021-11-26 10:34:05.815297+00	2021-11-26 10:34:05.815303+00	8	245
7121	7	2021-11-26 10:34:05.818225+00	2021-11-26 10:34:05.818231+00	8	245
7122	8	2021-11-26 10:34:05.82126+00	2021-11-26 10:34:05.821266+00	8	245
7123	9	2021-11-26 10:34:05.824074+00	2021-11-26 10:34:05.82408+00	8	245
7124	10	2021-11-26 10:34:05.827022+00	2021-11-26 10:34:05.827028+00	8	245
7125	11	2021-11-26 10:34:05.829886+00	2021-11-26 10:34:05.829892+00	8	245
7126	12	2021-11-26 10:34:05.83288+00	2021-11-26 10:34:05.832886+00	8	245
7127	13	2021-11-26 10:34:05.835716+00	2021-11-26 10:34:05.835724+00	8	245
7128	14	2021-11-26 10:34:05.83888+00	2021-11-26 10:34:05.83889+00	8	245
7129	15	2021-11-26 10:34:05.841831+00	2021-11-26 10:34:05.841838+00	8	245
7130	16	2021-11-26 10:34:05.844764+00	2021-11-26 10:34:05.84477+00	8	245
7131	17	2021-11-26 10:34:05.847626+00	2021-11-26 10:34:05.847631+00	8	245
7132	18	2021-11-26 10:34:05.850521+00	2021-11-26 10:34:05.850528+00	8	245
7133	19	2021-11-26 10:34:05.853549+00	2021-11-26 10:34:05.853563+00	8	245
7134	20	2021-11-26 10:34:05.856766+00	2021-11-26 10:34:05.856775+00	8	245
7135	21	2021-11-26 10:34:05.859752+00	2021-11-26 10:34:05.859759+00	8	245
7136	22	2021-11-26 10:34:05.86272+00	2021-11-26 10:34:05.862726+00	8	245
7137	23	2021-11-26 10:34:05.865422+00	2021-11-26 10:34:05.865427+00	8	245
7138	24	2021-11-26 10:34:05.868297+00	2021-11-26 10:34:05.868303+00	8	245
7139	25	2021-11-26 10:34:05.871072+00	2021-11-26 10:34:05.871079+00	8	245
7140	26	2021-11-26 10:34:05.874099+00	2021-11-26 10:34:05.874106+00	8	245
7141	27	2021-11-26 10:34:05.877188+00	2021-11-26 10:34:05.877195+00	8	245
7142	28	2021-11-26 10:34:05.880298+00	2021-11-26 10:34:05.880303+00	8	245
7143	29	2021-11-26 10:34:05.883733+00	2021-11-26 10:34:05.883744+00	8	245
7144	30	2021-11-26 10:34:05.886875+00	2021-11-26 10:34:05.886885+00	8	245
7145	31	2021-11-26 10:34:05.889735+00	2021-11-26 10:34:05.889746+00	8	245
7146	32	2021-11-26 10:34:05.892658+00	2021-11-26 10:34:05.892664+00	8	245
7147	33	2021-11-26 10:34:05.895383+00	2021-11-26 10:34:05.895389+00	8	245
7148	34	2021-11-26 10:34:05.898153+00	2021-11-26 10:34:05.898158+00	8	245
7149	35	2021-11-26 10:34:05.900777+00	2021-11-26 10:34:05.900783+00	8	245
7150	36	2021-11-26 10:34:05.903494+00	2021-11-26 10:34:05.903499+00	8	245
7151	37	2021-11-26 10:34:05.906137+00	2021-11-26 10:34:05.906143+00	8	245
7152	38	2021-11-26 10:34:05.909024+00	2021-11-26 10:34:05.90903+00	8	245
7153	39	2021-11-26 10:34:05.911846+00	2021-11-26 10:34:05.911852+00	8	245
7154	40	2021-11-26 10:34:05.914754+00	2021-11-26 10:34:05.914759+00	8	245
7155	41	2021-11-26 10:34:05.917523+00	2021-11-26 10:34:05.917528+00	8	245
7156	42	2021-11-26 10:34:05.920548+00	2021-11-26 10:34:05.92056+00	8	245
7157	43	2021-11-26 10:34:05.923733+00	2021-11-26 10:34:05.923741+00	8	245
7158	44	2021-11-26 10:34:05.926648+00	2021-11-26 10:34:05.926654+00	8	245
7159	45	2021-11-26 10:34:05.929604+00	2021-11-26 10:34:05.92961+00	8	245
7160	46	2021-11-26 10:34:05.932613+00	2021-11-26 10:34:05.932618+00	8	245
7161	47	2021-11-26 10:34:05.935687+00	2021-11-26 10:34:05.935695+00	8	245
7162	48	2021-11-26 10:34:05.938674+00	2021-11-26 10:34:05.938681+00	8	245
7163	49	2021-11-26 10:34:05.941632+00	2021-11-26 10:34:05.941639+00	8	245
7164	0	2021-11-26 10:34:05.947617+00	2021-11-26 10:34:05.947623+00	8	246
7165	1	2021-11-26 10:34:05.950605+00	2021-11-26 10:34:05.950616+00	8	246
7166	2	2021-11-26 10:34:05.953978+00	2021-11-26 10:34:05.953987+00	8	246
7167	3	2021-11-26 10:34:05.956958+00	2021-11-26 10:34:05.956967+00	8	246
7168	4	2021-11-26 10:34:05.959832+00	2021-11-26 10:34:05.959838+00	8	246
7169	5	2021-11-26 10:34:05.962534+00	2021-11-26 10:34:05.96254+00	8	246
7170	6	2021-11-26 10:34:05.965267+00	2021-11-26 10:34:05.965273+00	8	246
7171	7	2021-11-26 10:34:05.969867+00	2021-11-26 10:34:05.969875+00	8	246
7172	8	2021-11-26 10:34:05.973029+00	2021-11-26 10:34:05.973035+00	8	246
7173	9	2021-11-26 10:34:05.97588+00	2021-11-26 10:34:05.975886+00	8	246
7174	10	2021-11-26 10:34:05.979025+00	2021-11-26 10:34:05.97903+00	8	246
7175	11	2021-11-26 10:34:05.981688+00	2021-11-26 10:34:05.981693+00	8	246
7176	12	2021-11-26 10:34:05.984425+00	2021-11-26 10:34:05.984431+00	8	246
7177	13	2021-11-26 10:34:05.987866+00	2021-11-26 10:34:05.987879+00	8	246
7178	14	2021-11-26 10:34:05.991325+00	2021-11-26 10:34:05.991333+00	8	246
7179	15	2021-11-26 10:34:05.994493+00	2021-11-26 10:34:05.994499+00	8	246
7180	16	2021-11-26 10:34:05.997418+00	2021-11-26 10:34:05.997424+00	8	246
7181	17	2021-11-26 10:34:06.000416+00	2021-11-26 10:34:06.000421+00	8	246
7182	18	2021-11-26 10:34:06.003629+00	2021-11-26 10:34:06.003642+00	8	246
7183	19	2021-11-26 10:34:06.00714+00	2021-11-26 10:34:06.007151+00	8	246
7184	20	2021-11-26 10:34:06.010175+00	2021-11-26 10:34:06.010181+00	8	246
7185	21	2021-11-26 10:34:06.013058+00	2021-11-26 10:34:06.013065+00	8	246
7186	22	2021-11-26 10:34:06.015869+00	2021-11-26 10:34:06.015875+00	8	246
7187	23	2021-11-26 10:34:06.018679+00	2021-11-26 10:34:06.018687+00	8	246
7188	24	2021-11-26 10:34:06.021693+00	2021-11-26 10:34:06.021702+00	8	246
7189	25	2021-11-26 10:34:06.024556+00	2021-11-26 10:34:06.024564+00	8	246
7190	26	2021-11-26 10:34:06.027446+00	2021-11-26 10:34:06.027453+00	8	246
7191	27	2021-11-26 10:34:06.030304+00	2021-11-26 10:34:06.03031+00	8	246
7192	28	2021-11-26 10:34:06.033117+00	2021-11-26 10:34:06.033123+00	8	246
7193	29	2021-11-26 10:34:06.035884+00	2021-11-26 10:34:06.035894+00	8	246
7194	30	2021-11-26 10:34:06.03879+00	2021-11-26 10:34:06.038798+00	8	246
7195	31	2021-11-26 10:34:06.041464+00	2021-11-26 10:34:06.04147+00	8	246
7196	32	2021-11-26 10:34:06.044081+00	2021-11-26 10:34:06.044087+00	8	246
7197	33	2021-11-26 10:34:06.046732+00	2021-11-26 10:34:06.046738+00	8	246
7198	34	2021-11-26 10:34:06.049832+00	2021-11-26 10:34:06.049838+00	8	246
7199	35	2021-11-26 10:34:06.052868+00	2021-11-26 10:34:06.052877+00	8	246
7200	36	2021-11-26 10:34:06.055844+00	2021-11-26 10:34:06.055855+00	8	246
7201	37	2021-11-26 10:34:06.058803+00	2021-11-26 10:34:06.058809+00	8	246
7202	38	2021-11-26 10:34:06.061875+00	2021-11-26 10:34:06.061881+00	8	246
7203	39	2021-11-26 10:34:06.064536+00	2021-11-26 10:34:06.064542+00	8	246
7204	40	2021-11-26 10:34:06.067314+00	2021-11-26 10:34:06.06732+00	8	246
7205	41	2021-11-26 10:34:06.070067+00	2021-11-26 10:34:06.070078+00	8	246
7206	42	2021-11-26 10:34:06.073087+00	2021-11-26 10:34:06.073095+00	8	246
7207	43	2021-11-26 10:34:06.076055+00	2021-11-26 10:34:06.076061+00	8	246
7208	44	2021-11-26 10:34:06.079042+00	2021-11-26 10:34:06.079047+00	8	246
7209	45	2021-11-26 10:34:06.081877+00	2021-11-26 10:34:06.081883+00	8	246
7210	46	2021-11-26 10:34:06.08493+00	2021-11-26 10:34:06.084937+00	8	246
7211	47	2021-11-26 10:34:06.088239+00	2021-11-26 10:34:06.08825+00	8	246
7212	48	2021-11-26 10:34:06.091457+00	2021-11-26 10:34:06.091465+00	8	246
7213	49	2021-11-26 10:34:06.094451+00	2021-11-26 10:34:06.094457+00	8	246
7214	0	2021-11-26 10:34:06.100208+00	2021-11-26 10:34:06.100214+00	8	247
7215	1	2021-11-26 10:34:06.103112+00	2021-11-26 10:34:06.103122+00	8	247
7216	2	2021-11-26 10:34:06.106012+00	2021-11-26 10:34:06.106022+00	8	247
7217	3	2021-11-26 10:34:06.108891+00	2021-11-26 10:34:06.108898+00	8	247
7218	4	2021-11-26 10:34:06.111453+00	2021-11-26 10:34:06.111458+00	8	247
7219	5	2021-11-26 10:34:06.114174+00	2021-11-26 10:34:06.114182+00	8	247
7220	6	2021-11-26 10:34:06.116972+00	2021-11-26 10:34:06.116978+00	8	247
7221	7	2021-11-26 10:34:06.119874+00	2021-11-26 10:34:06.11988+00	8	247
7222	8	2021-11-26 10:34:06.122876+00	2021-11-26 10:34:06.122882+00	8	247
7223	9	2021-11-26 10:34:06.129196+00	2021-11-26 10:34:06.129202+00	8	247
7224	10	2021-11-26 10:34:06.132176+00	2021-11-26 10:34:06.132182+00	8	247
7225	11	2021-11-26 10:34:06.13509+00	2021-11-26 10:34:06.135096+00	8	247
7226	12	2021-11-26 10:34:06.138088+00	2021-11-26 10:34:06.138102+00	8	247
7227	13	2021-11-26 10:34:06.141057+00	2021-11-26 10:34:06.141063+00	8	247
7228	14	2021-11-26 10:34:06.143892+00	2021-11-26 10:34:06.143898+00	8	247
7229	15	2021-11-26 10:34:06.146603+00	2021-11-26 10:34:06.146608+00	8	247
7230	16	2021-11-26 10:34:06.149301+00	2021-11-26 10:34:06.149307+00	8	247
7231	17	2021-11-26 10:34:06.152203+00	2021-11-26 10:34:06.152232+00	8	247
7232	18	2021-11-26 10:34:06.157159+00	2021-11-26 10:34:06.15717+00	8	247
7233	19	2021-11-26 10:34:06.160497+00	2021-11-26 10:34:06.160505+00	8	247
7234	20	2021-11-26 10:34:06.163746+00	2021-11-26 10:34:06.163752+00	8	247
7235	21	2021-11-26 10:34:06.166894+00	2021-11-26 10:34:06.166905+00	8	247
7236	22	2021-11-26 10:34:06.170144+00	2021-11-26 10:34:06.170154+00	8	247
7237	23	2021-11-26 10:34:06.17309+00	2021-11-26 10:34:06.173099+00	8	247
7238	24	2021-11-26 10:34:06.175957+00	2021-11-26 10:34:06.175965+00	8	247
7239	25	2021-11-26 10:34:06.178822+00	2021-11-26 10:34:06.178828+00	8	247
7240	26	2021-11-26 10:34:06.181702+00	2021-11-26 10:34:06.181708+00	8	247
7241	27	2021-11-26 10:34:06.184484+00	2021-11-26 10:34:06.18449+00	8	247
7242	28	2021-11-26 10:34:06.187303+00	2021-11-26 10:34:06.18731+00	8	247
7243	29	2021-11-26 10:34:06.189977+00	2021-11-26 10:34:06.189983+00	8	247
7244	30	2021-11-26 10:34:06.192814+00	2021-11-26 10:34:06.192819+00	8	247
7245	31	2021-11-26 10:34:06.19574+00	2021-11-26 10:34:06.195746+00	8	247
7246	32	2021-11-26 10:34:06.198851+00	2021-11-26 10:34:06.198857+00	8	247
7247	33	2021-11-26 10:34:06.201797+00	2021-11-26 10:34:06.201805+00	8	247
7248	34	2021-11-26 10:34:06.205194+00	2021-11-26 10:34:06.205204+00	8	247
7249	35	2021-11-26 10:34:06.208264+00	2021-11-26 10:34:06.20827+00	8	247
7250	36	2021-11-26 10:34:06.211174+00	2021-11-26 10:34:06.211179+00	8	247
7251	37	2021-11-26 10:34:06.214042+00	2021-11-26 10:34:06.214048+00	8	247
7252	38	2021-11-26 10:34:06.21713+00	2021-11-26 10:34:06.217135+00	8	247
7253	39	2021-11-26 10:34:06.220215+00	2021-11-26 10:34:06.220225+00	8	247
7254	40	2021-11-26 10:34:06.22348+00	2021-11-26 10:34:06.223491+00	8	247
7255	41	2021-11-26 10:34:06.226691+00	2021-11-26 10:34:06.226698+00	8	247
7256	42	2021-11-26 10:34:06.229881+00	2021-11-26 10:34:06.229887+00	8	247
7257	43	2021-11-26 10:34:06.232866+00	2021-11-26 10:34:06.232872+00	8	247
7258	44	2021-11-26 10:34:06.235849+00	2021-11-26 10:34:06.235857+00	8	247
7259	45	2021-11-26 10:34:06.238758+00	2021-11-26 10:34:06.238766+00	8	247
7260	46	2021-11-26 10:34:06.241688+00	2021-11-26 10:34:06.241695+00	8	247
7261	47	2021-11-26 10:34:06.244603+00	2021-11-26 10:34:06.244608+00	8	247
7262	48	2021-11-26 10:34:06.247683+00	2021-11-26 10:34:06.247691+00	8	247
7263	49	2021-11-26 10:34:06.251101+00	2021-11-26 10:34:06.251112+00	8	247
7264	0	2021-11-26 10:34:06.257478+00	2021-11-26 10:34:06.257488+00	8	248
7265	1	2021-11-26 10:34:06.260535+00	2021-11-26 10:34:06.260542+00	8	248
7266	2	2021-11-26 10:34:06.263225+00	2021-11-26 10:34:06.26323+00	8	248
7267	3	2021-11-26 10:34:06.266019+00	2021-11-26 10:34:06.266024+00	8	248
7268	4	2021-11-26 10:34:06.268762+00	2021-11-26 10:34:06.268768+00	8	248
7269	5	2021-11-26 10:34:06.271502+00	2021-11-26 10:34:06.271508+00	8	248
7270	6	2021-11-26 10:34:06.274144+00	2021-11-26 10:34:06.274149+00	8	248
7271	7	2021-11-26 10:34:06.276913+00	2021-11-26 10:34:06.276919+00	8	248
7272	8	2021-11-26 10:34:06.279664+00	2021-11-26 10:34:06.27967+00	8	248
7273	9	2021-11-26 10:34:06.282463+00	2021-11-26 10:34:06.282468+00	8	248
7274	10	2021-11-26 10:34:06.285249+00	2021-11-26 10:34:06.285254+00	8	248
7275	11	2021-11-26 10:34:06.28835+00	2021-11-26 10:34:06.28836+00	8	248
7276	12	2021-11-26 10:34:06.291292+00	2021-11-26 10:34:06.291298+00	8	248
7277	13	2021-11-26 10:34:06.293966+00	2021-11-26 10:34:06.293971+00	8	248
7278	14	2021-11-26 10:34:06.296686+00	2021-11-26 10:34:06.296692+00	8	248
7279	15	2021-11-26 10:34:06.299333+00	2021-11-26 10:34:06.299338+00	8	248
7280	16	2021-11-26 10:34:06.30219+00	2021-11-26 10:34:06.302199+00	8	248
7281	17	2021-11-26 10:34:06.305216+00	2021-11-26 10:34:06.305223+00	8	248
7282	18	2021-11-26 10:34:06.308045+00	2021-11-26 10:34:06.308053+00	8	248
7283	19	2021-11-26 10:34:06.310855+00	2021-11-26 10:34:06.310864+00	8	248
7284	20	2021-11-26 10:34:06.31388+00	2021-11-26 10:34:06.313886+00	8	248
7285	21	2021-11-26 10:34:06.316725+00	2021-11-26 10:34:06.316731+00	8	248
7286	22	2021-11-26 10:34:06.319631+00	2021-11-26 10:34:06.31964+00	8	248
7287	23	2021-11-26 10:34:06.32254+00	2021-11-26 10:34:06.322547+00	8	248
7288	24	2021-11-26 10:34:06.325515+00	2021-11-26 10:34:06.325522+00	8	248
7289	25	2021-11-26 10:34:06.328374+00	2021-11-26 10:34:06.32838+00	8	248
7290	26	2021-11-26 10:34:06.331282+00	2021-11-26 10:34:06.331288+00	8	248
7291	27	2021-11-26 10:34:06.334021+00	2021-11-26 10:34:06.334027+00	8	248
7292	28	2021-11-26 10:34:06.338671+00	2021-11-26 10:34:06.33868+00	8	248
7293	29	2021-11-26 10:34:06.341673+00	2021-11-26 10:34:06.341679+00	8	248
7294	30	2021-11-26 10:34:06.344392+00	2021-11-26 10:34:06.344398+00	8	248
7295	31	2021-11-26 10:34:06.346996+00	2021-11-26 10:34:06.347002+00	8	248
7296	32	2021-11-26 10:34:06.349755+00	2021-11-26 10:34:06.349761+00	8	248
7297	33	2021-11-26 10:34:06.352446+00	2021-11-26 10:34:06.352452+00	8	248
7298	34	2021-11-26 10:34:06.35543+00	2021-11-26 10:34:06.355441+00	8	248
7299	35	2021-11-26 10:34:06.358151+00	2021-11-26 10:34:06.358158+00	8	248
7300	36	2021-11-26 10:34:06.360818+00	2021-11-26 10:34:06.360825+00	8	248
7301	37	2021-11-26 10:34:06.36356+00	2021-11-26 10:34:06.363566+00	8	248
7302	38	2021-11-26 10:34:06.3662+00	2021-11-26 10:34:06.366205+00	8	248
7303	39	2021-11-26 10:34:06.369158+00	2021-11-26 10:34:06.369166+00	8	248
7304	40	2021-11-26 10:34:06.372308+00	2021-11-26 10:34:06.372319+00	8	248
7305	41	2021-11-26 10:34:06.375615+00	2021-11-26 10:34:06.375621+00	8	248
7306	42	2021-11-26 10:34:06.378791+00	2021-11-26 10:34:06.378797+00	8	248
7307	43	2021-11-26 10:34:06.381688+00	2021-11-26 10:34:06.381694+00	8	248
7308	44	2021-11-26 10:34:06.384491+00	2021-11-26 10:34:06.384497+00	8	248
7309	45	2021-11-26 10:34:06.387354+00	2021-11-26 10:34:06.387379+00	8	248
7310	46	2021-11-26 10:34:06.390437+00	2021-11-26 10:34:06.390445+00	8	248
7311	47	2021-11-26 10:34:06.393335+00	2021-11-26 10:34:06.39334+00	8	248
7312	48	2021-11-26 10:34:06.396216+00	2021-11-26 10:34:06.396221+00	8	248
7313	49	2021-11-26 10:34:06.399045+00	2021-11-26 10:34:06.39905+00	8	248
7314	0	2021-11-26 10:34:06.405045+00	2021-11-26 10:34:06.405053+00	8	249
7315	1	2021-11-26 10:34:06.407915+00	2021-11-26 10:34:06.407922+00	8	249
7316	2	2021-11-26 10:34:06.410788+00	2021-11-26 10:34:06.410794+00	8	249
7317	3	2021-11-26 10:34:06.413719+00	2021-11-26 10:34:06.413726+00	8	249
7318	4	2021-11-26 10:34:06.416657+00	2021-11-26 10:34:06.416662+00	8	249
7319	5	2021-11-26 10:34:06.419521+00	2021-11-26 10:34:06.419528+00	8	249
7320	6	2021-11-26 10:34:06.4224+00	2021-11-26 10:34:06.422407+00	8	249
7321	7	2021-11-26 10:34:06.425252+00	2021-11-26 10:34:06.425258+00	8	249
7322	8	2021-11-26 10:34:06.42797+00	2021-11-26 10:34:06.427976+00	8	249
7323	9	2021-11-26 10:34:06.430671+00	2021-11-26 10:34:06.430676+00	8	249
7324	10	2021-11-26 10:34:06.433452+00	2021-11-26 10:34:06.433458+00	8	249
7325	11	2021-11-26 10:34:06.436085+00	2021-11-26 10:34:06.436091+00	8	249
7326	12	2021-11-26 10:34:06.439156+00	2021-11-26 10:34:06.439165+00	8	249
7327	13	2021-11-26 10:34:06.441909+00	2021-11-26 10:34:06.441915+00	8	249
7328	14	2021-11-26 10:34:06.444637+00	2021-11-26 10:34:06.444643+00	8	249
7329	15	2021-11-26 10:34:06.447289+00	2021-11-26 10:34:06.447295+00	8	249
7330	16	2021-11-26 10:34:06.450225+00	2021-11-26 10:34:06.450231+00	8	249
7331	17	2021-11-26 10:34:06.453213+00	2021-11-26 10:34:06.453221+00	8	249
7332	18	2021-11-26 10:34:06.45634+00	2021-11-26 10:34:06.456348+00	8	249
7333	19	2021-11-26 10:34:06.459209+00	2021-11-26 10:34:06.459216+00	8	249
7334	20	2021-11-26 10:34:06.462203+00	2021-11-26 10:34:06.462212+00	8	249
7335	21	2021-11-26 10:34:06.465576+00	2021-11-26 10:34:06.465585+00	8	249
7336	22	2021-11-26 10:34:06.46882+00	2021-11-26 10:34:06.46883+00	8	249
7337	23	2021-11-26 10:34:06.471843+00	2021-11-26 10:34:06.471852+00	8	249
7338	24	2021-11-26 10:34:06.475007+00	2021-11-26 10:34:06.475015+00	8	249
7339	25	2021-11-26 10:34:06.478168+00	2021-11-26 10:34:06.478174+00	8	249
7340	26	2021-11-26 10:34:06.481396+00	2021-11-26 10:34:06.481402+00	8	249
7341	27	2021-11-26 10:34:06.484777+00	2021-11-26 10:34:06.484783+00	8	249
7342	28	2021-11-26 10:34:06.487866+00	2021-11-26 10:34:06.487872+00	8	249
7343	29	2021-11-26 10:34:06.490916+00	2021-11-26 10:34:06.490922+00	8	249
7344	30	2021-11-26 10:34:06.493857+00	2021-11-26 10:34:06.493862+00	8	249
7345	31	2021-11-26 10:34:06.497052+00	2021-11-26 10:34:06.497058+00	8	249
7346	32	2021-11-26 10:34:06.500073+00	2021-11-26 10:34:06.500079+00	8	249
7347	33	2021-11-26 10:34:06.505663+00	2021-11-26 10:34:06.505679+00	8	249
7348	34	2021-11-26 10:34:06.51035+00	2021-11-26 10:34:06.510364+00	8	249
7349	35	2021-11-26 10:34:06.513848+00	2021-11-26 10:34:06.513861+00	8	249
7350	36	2021-11-26 10:34:06.518929+00	2021-11-26 10:34:06.518941+00	8	249
7351	37	2021-11-26 10:34:06.522661+00	2021-11-26 10:34:06.522672+00	8	249
7352	38	2021-11-26 10:34:06.526412+00	2021-11-26 10:34:06.526424+00	8	249
7353	39	2021-11-26 10:34:06.529926+00	2021-11-26 10:34:06.529937+00	8	249
7354	40	2021-11-26 10:34:06.533365+00	2021-11-26 10:34:06.533374+00	8	249
7355	41	2021-11-26 10:34:06.538026+00	2021-11-26 10:34:06.538063+00	8	249
7356	42	2021-11-26 10:34:06.544133+00	2021-11-26 10:34:06.544168+00	8	249
7357	43	2021-11-26 10:34:06.549794+00	2021-11-26 10:34:06.54982+00	8	249
7358	44	2021-11-26 10:34:06.555601+00	2021-11-26 10:34:06.555629+00	8	249
7359	45	2021-11-26 10:34:06.561451+00	2021-11-26 10:34:06.561478+00	8	249
7360	46	2021-11-26 10:34:06.567233+00	2021-11-26 10:34:06.567261+00	8	249
7361	47	2021-11-26 10:34:06.573088+00	2021-11-26 10:34:06.573119+00	8	249
7362	48	2021-11-26 10:34:06.579035+00	2021-11-26 10:34:06.579065+00	8	249
7363	49	2021-11-26 10:34:06.585021+00	2021-11-26 10:34:06.585052+00	8	249
7364	0	2021-11-26 10:34:06.59724+00	2021-11-26 10:34:06.59727+00	8	250
7365	1	2021-11-26 10:34:06.602945+00	2021-11-26 10:34:06.602973+00	8	250
7366	2	2021-11-26 10:34:06.608661+00	2021-11-26 10:34:06.608686+00	8	250
7367	3	2021-11-26 10:34:06.614735+00	2021-11-26 10:34:06.614767+00	8	250
7368	4	2021-11-26 10:34:06.620775+00	2021-11-26 10:34:06.620819+00	8	250
7369	5	2021-11-26 10:34:06.627013+00	2021-11-26 10:34:06.627041+00	8	250
7370	6	2021-11-26 10:34:06.633015+00	2021-11-26 10:34:06.633042+00	8	250
7371	7	2021-11-26 10:34:06.639134+00	2021-11-26 10:34:06.639164+00	8	250
7372	8	2021-11-26 10:34:06.644801+00	2021-11-26 10:34:06.644826+00	8	250
7373	9	2021-11-26 10:34:06.650575+00	2021-11-26 10:34:06.650609+00	8	250
7374	10	2021-11-26 10:34:06.656647+00	2021-11-26 10:34:06.656712+00	8	250
7375	11	2021-11-26 10:34:06.662849+00	2021-11-26 10:34:06.662879+00	8	250
7376	12	2021-11-26 10:34:06.6682+00	2021-11-26 10:34:06.668228+00	8	250
7377	13	2021-11-26 10:34:06.673758+00	2021-11-26 10:34:06.673786+00	8	250
7378	14	2021-11-26 10:34:06.679488+00	2021-11-26 10:34:06.679539+00	8	250
7379	15	2021-11-26 10:34:06.685564+00	2021-11-26 10:34:06.685612+00	8	250
7380	16	2021-11-26 10:34:06.692015+00	2021-11-26 10:34:06.692056+00	8	250
7381	17	2021-11-26 10:34:06.698552+00	2021-11-26 10:34:06.698582+00	8	250
7382	18	2021-11-26 10:34:06.70463+00	2021-11-26 10:34:06.704659+00	8	250
7383	19	2021-11-26 10:34:06.710537+00	2021-11-26 10:34:06.710563+00	8	250
7384	20	2021-11-26 10:34:06.715969+00	2021-11-26 10:34:06.715995+00	8	250
7385	21	2021-11-26 10:34:06.721569+00	2021-11-26 10:34:06.721599+00	8	250
7386	22	2021-11-26 10:34:06.727511+00	2021-11-26 10:34:06.727542+00	8	250
7387	23	2021-11-26 10:34:06.733147+00	2021-11-26 10:34:06.733172+00	8	250
7388	24	2021-11-26 10:34:06.739024+00	2021-11-26 10:34:06.739057+00	8	250
7389	25	2021-11-26 10:34:06.745153+00	2021-11-26 10:34:06.745184+00	8	250
7390	26	2021-11-26 10:34:06.750875+00	2021-11-26 10:34:06.750905+00	8	250
7391	27	2021-11-26 10:34:06.75646+00	2021-11-26 10:34:06.756487+00	8	250
7392	28	2021-11-26 10:34:06.76192+00	2021-11-26 10:34:06.76195+00	8	250
7393	29	2021-11-26 10:34:06.76823+00	2021-11-26 10:34:06.768268+00	8	250
7394	30	2021-11-26 10:34:06.774923+00	2021-11-26 10:34:06.774955+00	8	250
7395	31	2021-11-26 10:34:06.781039+00	2021-11-26 10:34:06.781069+00	8	250
7396	32	2021-11-26 10:34:06.786961+00	2021-11-26 10:34:06.786998+00	8	250
7397	33	2021-11-26 10:34:06.792892+00	2021-11-26 10:34:06.792919+00	8	250
7398	34	2021-11-26 10:34:06.798628+00	2021-11-26 10:34:06.798661+00	8	250
7399	35	2021-11-26 10:34:06.80466+00	2021-11-26 10:34:06.804699+00	8	250
7400	36	2021-11-26 10:34:06.810715+00	2021-11-26 10:34:06.810748+00	8	250
7401	37	2021-11-26 10:34:06.816534+00	2021-11-26 10:34:06.816563+00	8	250
7402	38	2021-11-26 10:34:06.822182+00	2021-11-26 10:34:06.82221+00	8	250
7403	39	2021-11-26 10:34:06.828081+00	2021-11-26 10:34:06.828109+00	8	250
7404	40	2021-11-26 10:34:06.83434+00	2021-11-26 10:34:06.834371+00	8	250
7405	41	2021-11-26 10:34:06.840289+00	2021-11-26 10:34:06.840318+00	8	250
7406	42	2021-11-26 10:34:06.845698+00	2021-11-26 10:34:06.845723+00	8	250
7407	43	2021-11-26 10:34:06.851305+00	2021-11-26 10:34:06.851334+00	8	250
7408	44	2021-11-26 10:34:06.857064+00	2021-11-26 10:34:06.857092+00	8	250
7409	45	2021-11-26 10:34:06.864285+00	2021-11-26 10:34:06.864311+00	8	250
7410	46	2021-11-26 10:34:06.869935+00	2021-11-26 10:34:06.869962+00	8	250
7411	47	2021-11-26 10:34:06.876395+00	2021-11-26 10:34:06.876426+00	8	250
7412	48	2021-11-26 10:34:06.882202+00	2021-11-26 10:34:06.88223+00	8	250
7413	49	2021-11-26 10:34:06.887774+00	2021-11-26 10:34:06.887801+00	8	250
7414	0	2021-11-26 10:34:06.899482+00	2021-11-26 10:34:06.899512+00	8	251
7415	1	2021-11-26 10:34:06.905411+00	2021-11-26 10:34:06.905443+00	8	251
7416	2	2021-11-26 10:34:06.911176+00	2021-11-26 10:34:06.911221+00	8	251
7417	3	2021-11-26 10:34:06.917052+00	2021-11-26 10:34:06.917079+00	8	251
7418	4	2021-11-26 10:34:06.922596+00	2021-11-26 10:34:06.922623+00	8	251
7419	5	2021-11-26 10:34:06.927803+00	2021-11-26 10:34:06.927828+00	8	251
7420	6	2021-11-26 10:34:06.93312+00	2021-11-26 10:34:06.933145+00	8	251
7421	7	2021-11-26 10:34:06.939173+00	2021-11-26 10:34:06.939216+00	8	251
7422	8	2021-11-26 10:34:06.944996+00	2021-11-26 10:34:06.945025+00	8	251
7423	9	2021-11-26 10:34:06.950425+00	2021-11-26 10:34:06.950453+00	8	251
7424	10	2021-11-26 10:34:06.956665+00	2021-11-26 10:34:06.956694+00	8	251
7425	11	2021-11-26 10:34:06.962488+00	2021-11-26 10:34:06.962518+00	8	251
7426	12	2021-11-26 10:34:06.967947+00	2021-11-26 10:34:06.967974+00	8	251
7427	13	2021-11-26 10:34:06.973556+00	2021-11-26 10:34:06.973584+00	8	251
7428	14	2021-11-26 10:34:06.978425+00	2021-11-26 10:34:06.978452+00	8	251
7429	15	2021-11-26 10:34:06.983112+00	2021-11-26 10:34:06.983134+00	8	251
7430	16	2021-11-26 10:34:06.988348+00	2021-11-26 10:34:06.988379+00	8	251
7431	17	2021-11-26 10:34:06.993678+00	2021-11-26 10:34:06.993702+00	8	251
7432	18	2021-11-26 10:34:06.999073+00	2021-11-26 10:34:06.9991+00	8	251
7433	19	2021-11-26 10:34:07.004489+00	2021-11-26 10:34:07.004516+00	8	251
7434	20	2021-11-26 10:34:07.010326+00	2021-11-26 10:34:07.010356+00	8	251
7435	21	2021-11-26 10:34:07.015995+00	2021-11-26 10:34:07.016021+00	8	251
7436	22	2021-11-26 10:34:07.021942+00	2021-11-26 10:34:07.021985+00	8	251
7437	23	2021-11-26 10:34:07.028102+00	2021-11-26 10:34:07.028133+00	8	251
7438	24	2021-11-26 10:34:07.033981+00	2021-11-26 10:34:07.034008+00	8	251
7439	25	2021-11-26 10:34:07.039962+00	2021-11-26 10:34:07.03999+00	8	251
7440	26	2021-11-26 10:34:07.045906+00	2021-11-26 10:34:07.04594+00	8	251
7441	27	2021-11-26 10:34:07.052422+00	2021-11-26 10:34:07.05246+00	8	251
7442	28	2021-11-26 10:34:07.058334+00	2021-11-26 10:34:07.058362+00	8	251
7443	29	2021-11-26 10:34:07.06288+00	2021-11-26 10:34:07.062895+00	8	251
7444	30	2021-11-26 10:34:07.066656+00	2021-11-26 10:34:07.066669+00	8	251
7445	31	2021-11-26 10:34:07.070422+00	2021-11-26 10:34:07.070432+00	8	251
7446	32	2021-11-26 10:34:07.073599+00	2021-11-26 10:34:07.073606+00	8	251
7447	33	2021-11-26 10:34:07.076607+00	2021-11-26 10:34:07.076613+00	8	251
7448	34	2021-11-26 10:34:07.079345+00	2021-11-26 10:34:07.07935+00	8	251
7449	35	2021-11-26 10:34:07.082148+00	2021-11-26 10:34:07.082154+00	8	251
7450	36	2021-11-26 10:34:07.084931+00	2021-11-26 10:34:07.084937+00	8	251
7451	37	2021-11-26 10:34:07.087968+00	2021-11-26 10:34:07.087983+00	8	251
7452	38	2021-11-26 10:34:07.09098+00	2021-11-26 10:34:07.090988+00	8	251
7453	39	2021-11-26 10:34:07.093768+00	2021-11-26 10:34:07.093773+00	8	251
7454	40	2021-11-26 10:34:07.096519+00	2021-11-26 10:34:07.096524+00	8	251
7455	41	2021-11-26 10:34:07.099426+00	2021-11-26 10:34:07.099432+00	8	251
7456	42	2021-11-26 10:34:07.103138+00	2021-11-26 10:34:07.103146+00	8	251
7457	43	2021-11-26 10:34:07.106315+00	2021-11-26 10:34:07.106325+00	8	251
7458	44	2021-11-26 10:34:07.109414+00	2021-11-26 10:34:07.109422+00	8	251
7459	45	2021-11-26 10:34:07.112376+00	2021-11-26 10:34:07.112382+00	8	251
7460	46	2021-11-26 10:34:07.11529+00	2021-11-26 10:34:07.115296+00	8	251
7461	47	2021-11-26 10:34:07.118315+00	2021-11-26 10:34:07.118324+00	8	251
7462	48	2021-11-26 10:34:07.121395+00	2021-11-26 10:34:07.121406+00	8	251
7463	49	2021-11-26 10:34:07.124698+00	2021-11-26 10:34:07.124707+00	8	251
7464	0	2021-11-26 10:34:07.130689+00	2021-11-26 10:34:07.130695+00	8	252
7465	1	2021-11-26 10:34:07.133826+00	2021-11-26 10:34:07.133832+00	8	252
7466	2	2021-11-26 10:34:07.136822+00	2021-11-26 10:34:07.136829+00	8	252
7467	3	2021-11-26 10:34:07.139724+00	2021-11-26 10:34:07.13973+00	8	252
7468	4	2021-11-26 10:34:07.142863+00	2021-11-26 10:34:07.142868+00	8	252
7469	5	2021-11-26 10:34:07.146056+00	2021-11-26 10:34:07.146062+00	8	252
7470	6	2021-11-26 10:34:07.149063+00	2021-11-26 10:34:07.149068+00	8	252
7471	7	2021-11-26 10:34:07.151979+00	2021-11-26 10:34:07.151984+00	8	252
7472	8	2021-11-26 10:34:07.155169+00	2021-11-26 10:34:07.155181+00	8	252
7473	9	2021-11-26 10:34:07.158143+00	2021-11-26 10:34:07.158149+00	8	252
7474	10	2021-11-26 10:34:07.160772+00	2021-11-26 10:34:07.160778+00	8	252
7475	11	2021-11-26 10:34:07.163536+00	2021-11-26 10:34:07.163541+00	8	252
7476	12	2021-11-26 10:34:07.166239+00	2021-11-26 10:34:07.166244+00	8	252
7477	13	2021-11-26 10:34:07.169048+00	2021-11-26 10:34:07.169058+00	8	252
7478	14	2021-11-26 10:34:07.172122+00	2021-11-26 10:34:07.172135+00	8	252
7479	15	2021-11-26 10:34:07.175109+00	2021-11-26 10:34:07.175117+00	8	252
7480	16	2021-11-26 10:34:07.177904+00	2021-11-26 10:34:07.17791+00	8	252
7481	17	2021-11-26 10:34:07.180648+00	2021-11-26 10:34:07.180654+00	8	252
7482	18	2021-11-26 10:34:07.183239+00	2021-11-26 10:34:07.183245+00	8	252
7483	19	2021-11-26 10:34:07.1861+00	2021-11-26 10:34:07.186108+00	8	252
7484	20	2021-11-26 10:34:07.188812+00	2021-11-26 10:34:07.188819+00	8	252
7485	21	2021-11-26 10:34:07.191789+00	2021-11-26 10:34:07.191795+00	8	252
7486	22	2021-11-26 10:34:07.194529+00	2021-11-26 10:34:07.194534+00	8	252
7487	23	2021-11-26 10:34:07.197514+00	2021-11-26 10:34:07.197519+00	8	252
7488	24	2021-11-26 10:34:07.200696+00	2021-11-26 10:34:07.200707+00	8	252
7489	25	2021-11-26 10:34:07.203834+00	2021-11-26 10:34:07.203843+00	8	252
7490	26	2021-11-26 10:34:07.206996+00	2021-11-26 10:34:07.207004+00	8	252
7491	27	2021-11-26 10:34:07.210002+00	2021-11-26 10:34:07.210009+00	8	252
7492	28	2021-11-26 10:34:07.212761+00	2021-11-26 10:34:07.212766+00	8	252
7493	29	2021-11-26 10:34:07.215416+00	2021-11-26 10:34:07.215422+00	8	252
7494	30	2021-11-26 10:34:07.218107+00	2021-11-26 10:34:07.218112+00	8	252
7495	31	2021-11-26 10:34:07.220708+00	2021-11-26 10:34:07.220713+00	8	252
7496	32	2021-11-26 10:34:07.223396+00	2021-11-26 10:34:07.223401+00	8	252
7497	33	2021-11-26 10:34:07.226045+00	2021-11-26 10:34:07.22605+00	8	252
7498	34	2021-11-26 10:34:07.228639+00	2021-11-26 10:34:07.228644+00	8	252
7499	35	2021-11-26 10:34:07.231406+00	2021-11-26 10:34:07.231411+00	8	252
7500	36	2021-11-26 10:34:07.234146+00	2021-11-26 10:34:07.234151+00	8	252
7501	37	2021-11-26 10:34:07.236972+00	2021-11-26 10:34:07.236985+00	8	252
7502	38	2021-11-26 10:34:07.240205+00	2021-11-26 10:34:07.240214+00	8	252
7503	39	2021-11-26 10:34:07.243011+00	2021-11-26 10:34:07.243017+00	8	252
7504	40	2021-11-26 10:34:07.249133+00	2021-11-26 10:34:07.249139+00	8	252
7505	41	2021-11-26 10:34:07.25245+00	2021-11-26 10:34:07.252464+00	8	252
7506	42	2021-11-26 10:34:07.255609+00	2021-11-26 10:34:07.255617+00	8	252
7507	43	2021-11-26 10:34:07.258929+00	2021-11-26 10:34:07.258937+00	8	252
7508	44	2021-11-26 10:34:07.262127+00	2021-11-26 10:34:07.262137+00	8	252
7509	45	2021-11-26 10:34:07.265249+00	2021-11-26 10:34:07.265255+00	8	252
7510	46	2021-11-26 10:34:07.268563+00	2021-11-26 10:34:07.268572+00	8	252
7511	47	2021-11-26 10:34:07.271794+00	2021-11-26 10:34:07.271804+00	8	252
7512	48	2021-11-26 10:34:07.274926+00	2021-11-26 10:34:07.274933+00	8	252
7513	49	2021-11-26 10:34:07.277816+00	2021-11-26 10:34:07.277822+00	8	252
7514	0	2021-11-26 10:34:07.283461+00	2021-11-26 10:34:07.283466+00	8	253
7515	1	2021-11-26 10:34:07.286778+00	2021-11-26 10:34:07.286784+00	8	253
7516	2	2021-11-26 10:34:07.290506+00	2021-11-26 10:34:07.290512+00	8	253
7517	3	2021-11-26 10:34:07.293583+00	2021-11-26 10:34:07.293589+00	8	253
7518	4	2021-11-26 10:34:07.29684+00	2021-11-26 10:34:07.296846+00	8	253
7519	5	2021-11-26 10:34:07.299902+00	2021-11-26 10:34:07.299908+00	8	253
7520	6	2021-11-26 10:34:07.303167+00	2021-11-26 10:34:07.303176+00	8	253
7521	7	2021-11-26 10:34:07.30626+00	2021-11-26 10:34:07.306268+00	8	253
7522	8	2021-11-26 10:34:07.309356+00	2021-11-26 10:34:07.309362+00	8	253
7523	9	2021-11-26 10:34:07.312055+00	2021-11-26 10:34:07.31206+00	8	253
7524	10	2021-11-26 10:34:07.314767+00	2021-11-26 10:34:07.314773+00	8	253
7525	11	2021-11-26 10:34:07.317656+00	2021-11-26 10:34:07.317662+00	8	253
7526	12	2021-11-26 10:34:07.320506+00	2021-11-26 10:34:07.320515+00	8	253
7527	13	2021-11-26 10:34:07.323783+00	2021-11-26 10:34:07.323792+00	8	253
7528	14	2021-11-26 10:34:07.327046+00	2021-11-26 10:34:07.327052+00	8	253
7529	15	2021-11-26 10:34:07.32992+00	2021-11-26 10:34:07.329926+00	8	253
7530	16	2021-11-26 10:34:07.332768+00	2021-11-26 10:34:07.332774+00	8	253
7531	17	2021-11-26 10:34:07.335547+00	2021-11-26 10:34:07.335555+00	8	253
7532	18	2021-11-26 10:34:07.338417+00	2021-11-26 10:34:07.338427+00	8	253
7533	19	2021-11-26 10:34:07.341206+00	2021-11-26 10:34:07.341214+00	8	253
7534	20	2021-11-26 10:34:07.344031+00	2021-11-26 10:34:07.344037+00	8	253
7535	21	2021-11-26 10:34:07.34677+00	2021-11-26 10:34:07.346776+00	8	253
7536	22	2021-11-26 10:34:07.349402+00	2021-11-26 10:34:07.349409+00	8	253
7537	23	2021-11-26 10:34:07.352207+00	2021-11-26 10:34:07.352216+00	8	253
7538	24	2021-11-26 10:34:07.355161+00	2021-11-26 10:34:07.355169+00	8	253
7539	25	2021-11-26 10:34:07.357883+00	2021-11-26 10:34:07.357889+00	8	253
7540	26	2021-11-26 10:34:07.360644+00	2021-11-26 10:34:07.36065+00	8	253
7541	27	2021-11-26 10:34:07.363377+00	2021-11-26 10:34:07.363383+00	8	253
7542	28	2021-11-26 10:34:07.366005+00	2021-11-26 10:34:07.366011+00	8	253
7543	29	2021-11-26 10:34:07.368892+00	2021-11-26 10:34:07.368907+00	8	253
7544	30	2021-11-26 10:34:07.371947+00	2021-11-26 10:34:07.371954+00	8	253
7545	31	2021-11-26 10:34:07.374874+00	2021-11-26 10:34:07.374881+00	8	253
7546	32	2021-11-26 10:34:07.377622+00	2021-11-26 10:34:07.377628+00	8	253
7547	33	2021-11-26 10:34:07.380321+00	2021-11-26 10:34:07.380327+00	8	253
7548	34	2021-11-26 10:34:07.383005+00	2021-11-26 10:34:07.38301+00	8	253
7549	35	2021-11-26 10:34:07.38573+00	2021-11-26 10:34:07.385736+00	8	253
7550	36	2021-11-26 10:34:07.388795+00	2021-11-26 10:34:07.388804+00	8	253
7551	37	2021-11-26 10:34:07.391817+00	2021-11-26 10:34:07.391823+00	8	253
7552	38	2021-11-26 10:34:07.394616+00	2021-11-26 10:34:07.394621+00	8	253
7553	39	2021-11-26 10:34:07.397502+00	2021-11-26 10:34:07.397507+00	8	253
7554	40	2021-11-26 10:34:07.400534+00	2021-11-26 10:34:07.400539+00	8	253
7555	41	2021-11-26 10:34:07.403558+00	2021-11-26 10:34:07.403566+00	8	253
7556	42	2021-11-26 10:34:07.406647+00	2021-11-26 10:34:07.406654+00	8	253
7557	43	2021-11-26 10:34:07.4094+00	2021-11-26 10:34:07.409405+00	8	253
7558	44	2021-11-26 10:34:07.412272+00	2021-11-26 10:34:07.41228+00	8	253
7559	45	2021-11-26 10:34:07.415424+00	2021-11-26 10:34:07.415432+00	8	253
7560	46	2021-11-26 10:34:07.418612+00	2021-11-26 10:34:07.418622+00	8	253
7561	47	2021-11-26 10:34:07.421642+00	2021-11-26 10:34:07.42165+00	8	253
7562	48	2021-11-26 10:34:07.424681+00	2021-11-26 10:34:07.424689+00	8	253
7563	49	2021-11-26 10:34:07.427671+00	2021-11-26 10:34:07.427677+00	8	253
7564	0	2021-11-26 10:34:07.433727+00	2021-11-26 10:34:07.433733+00	8	254
7565	1	2021-11-26 10:34:07.436634+00	2021-11-26 10:34:07.436639+00	8	254
7566	2	2021-11-26 10:34:07.439618+00	2021-11-26 10:34:07.439624+00	8	254
7567	3	2021-11-26 10:34:07.442489+00	2021-11-26 10:34:07.442495+00	8	254
7568	4	2021-11-26 10:34:07.445463+00	2021-11-26 10:34:07.445468+00	8	254
7569	5	2021-11-26 10:34:07.449549+00	2021-11-26 10:34:07.449555+00	8	254
7570	6	2021-11-26 10:34:07.452335+00	2021-11-26 10:34:07.452342+00	8	254
7571	7	2021-11-26 10:34:07.455558+00	2021-11-26 10:34:07.455568+00	8	254
7572	8	2021-11-26 10:34:07.458891+00	2021-11-26 10:34:07.458898+00	8	254
7573	9	2021-11-26 10:34:07.46277+00	2021-11-26 10:34:07.462776+00	8	254
7574	10	2021-11-26 10:34:07.465668+00	2021-11-26 10:34:07.465673+00	8	254
7575	11	2021-11-26 10:34:07.468868+00	2021-11-26 10:34:07.46888+00	8	254
7576	12	2021-11-26 10:34:07.471935+00	2021-11-26 10:34:07.471943+00	8	254
7577	13	2021-11-26 10:34:07.475096+00	2021-11-26 10:34:07.475106+00	8	254
7578	14	2021-11-26 10:34:07.478304+00	2021-11-26 10:34:07.478312+00	8	254
7579	15	2021-11-26 10:34:07.48126+00	2021-11-26 10:34:07.481266+00	8	254
7580	16	2021-11-26 10:34:07.484373+00	2021-11-26 10:34:07.48438+00	8	254
7581	17	2021-11-26 10:34:07.487425+00	2021-11-26 10:34:07.487434+00	8	254
7582	18	2021-11-26 10:34:07.490565+00	2021-11-26 10:34:07.490575+00	8	254
7583	19	2021-11-26 10:34:07.493762+00	2021-11-26 10:34:07.493769+00	8	254
7584	20	2021-11-26 10:34:07.496704+00	2021-11-26 10:34:07.49671+00	8	254
7585	21	2021-11-26 10:34:07.499724+00	2021-11-26 10:34:07.49973+00	8	254
7586	22	2021-11-26 10:34:07.502651+00	2021-11-26 10:34:07.502657+00	8	254
7587	23	2021-11-26 10:34:07.505687+00	2021-11-26 10:34:07.505694+00	8	254
7588	24	2021-11-26 10:34:07.508857+00	2021-11-26 10:34:07.508863+00	8	254
7589	25	2021-11-26 10:34:07.511551+00	2021-11-26 10:34:07.511557+00	8	254
7590	26	2021-11-26 10:34:07.514577+00	2021-11-26 10:34:07.514583+00	8	254
7591	27	2021-11-26 10:34:07.517489+00	2021-11-26 10:34:07.517495+00	8	254
7592	28	2021-11-26 10:34:07.52064+00	2021-11-26 10:34:07.520651+00	8	254
7593	29	2021-11-26 10:34:07.524121+00	2021-11-26 10:34:07.524128+00	8	254
7594	30	2021-11-26 10:34:07.52721+00	2021-11-26 10:34:07.52722+00	8	254
7595	31	2021-11-26 10:34:07.529926+00	2021-11-26 10:34:07.529933+00	8	254
7596	32	2021-11-26 10:34:07.532675+00	2021-11-26 10:34:07.532681+00	8	254
7597	33	2021-11-26 10:34:07.53537+00	2021-11-26 10:34:07.535376+00	8	254
7598	34	2021-11-26 10:34:07.538386+00	2021-11-26 10:34:07.538397+00	8	254
7599	35	2021-11-26 10:34:07.54125+00	2021-11-26 10:34:07.541258+00	8	254
7600	36	2021-11-26 10:34:07.544129+00	2021-11-26 10:34:07.544134+00	8	254
7601	37	2021-11-26 10:34:07.546709+00	2021-11-26 10:34:07.546714+00	8	254
7602	38	2021-11-26 10:34:07.549567+00	2021-11-26 10:34:07.549572+00	8	254
7603	39	2021-11-26 10:34:07.552442+00	2021-11-26 10:34:07.552449+00	8	254
7604	40	2021-11-26 10:34:07.555577+00	2021-11-26 10:34:07.555584+00	8	254
7605	41	2021-11-26 10:34:07.558543+00	2021-11-26 10:34:07.558552+00	8	254
7606	42	2021-11-26 10:34:07.561613+00	2021-11-26 10:34:07.561621+00	8	254
7607	43	2021-11-26 10:34:07.564529+00	2021-11-26 10:34:07.564535+00	8	254
7608	44	2021-11-26 10:34:07.567756+00	2021-11-26 10:34:07.567766+00	8	254
7609	45	2021-11-26 10:34:07.570884+00	2021-11-26 10:34:07.570893+00	8	254
7610	46	2021-11-26 10:34:07.573718+00	2021-11-26 10:34:07.573727+00	8	254
7611	47	2021-11-26 10:34:07.576465+00	2021-11-26 10:34:07.576472+00	8	254
7612	48	2021-11-26 10:34:07.579268+00	2021-11-26 10:34:07.579274+00	8	254
7613	49	2021-11-26 10:34:07.58194+00	2021-11-26 10:34:07.581946+00	8	254
7614	0	2021-11-26 10:34:07.587521+00	2021-11-26 10:34:07.587527+00	8	255
7615	1	2021-11-26 10:34:07.590426+00	2021-11-26 10:34:07.590432+00	8	255
7616	2	2021-11-26 10:34:07.593203+00	2021-11-26 10:34:07.593209+00	8	255
7617	3	2021-11-26 10:34:07.595916+00	2021-11-26 10:34:07.595921+00	8	255
7618	4	2021-11-26 10:34:07.598806+00	2021-11-26 10:34:07.598812+00	8	255
7619	5	2021-11-26 10:34:07.601541+00	2021-11-26 10:34:07.601547+00	8	255
7620	6	2021-11-26 10:34:07.604648+00	2021-11-26 10:34:07.604662+00	8	255
7621	7	2021-11-26 10:34:07.607679+00	2021-11-26 10:34:07.607688+00	8	255
7622	8	2021-11-26 10:34:07.61053+00	2021-11-26 10:34:07.610536+00	8	255
7623	9	2021-11-26 10:34:07.61376+00	2021-11-26 10:34:07.613782+00	8	255
7624	10	2021-11-26 10:34:07.618647+00	2021-11-26 10:34:07.618684+00	8	255
7625	11	2021-11-26 10:34:07.624685+00	2021-11-26 10:34:07.624724+00	8	255
7626	12	2021-11-26 10:34:07.630947+00	2021-11-26 10:34:07.630986+00	8	255
7627	13	2021-11-26 10:34:07.637169+00	2021-11-26 10:34:07.637204+00	8	255
7628	14	2021-11-26 10:34:07.642854+00	2021-11-26 10:34:07.64288+00	8	255
7629	15	2021-11-26 10:34:07.648367+00	2021-11-26 10:34:07.648393+00	8	255
7630	16	2021-11-26 10:34:07.654045+00	2021-11-26 10:34:07.654072+00	8	255
7631	17	2021-11-26 10:34:07.660101+00	2021-11-26 10:34:07.660142+00	8	255
7632	18	2021-11-26 10:34:07.666948+00	2021-11-26 10:34:07.666967+00	8	255
7633	19	2021-11-26 10:34:07.674913+00	2021-11-26 10:34:07.674934+00	8	255
7634	20	2021-11-26 10:34:07.679429+00	2021-11-26 10:34:07.679447+00	8	255
7635	21	2021-11-26 10:34:07.684199+00	2021-11-26 10:34:07.684223+00	8	255
7636	22	2021-11-26 10:34:07.692036+00	2021-11-26 10:34:07.692077+00	8	255
7637	23	2021-11-26 10:34:07.697945+00	2021-11-26 10:34:07.697976+00	8	255
7638	24	2021-11-26 10:34:07.703472+00	2021-11-26 10:34:07.7035+00	8	255
7639	25	2021-11-26 10:34:07.709208+00	2021-11-26 10:34:07.709235+00	8	255
7640	26	2021-11-26 10:34:07.71489+00	2021-11-26 10:34:07.714916+00	8	255
7641	27	2021-11-26 10:34:07.720597+00	2021-11-26 10:34:07.720628+00	8	255
7642	28	2021-11-26 10:34:07.726468+00	2021-11-26 10:34:07.726499+00	8	255
7643	29	2021-11-26 10:34:07.731945+00	2021-11-26 10:34:07.731973+00	8	255
7644	30	2021-11-26 10:34:07.737293+00	2021-11-26 10:34:07.737321+00	8	255
7645	31	2021-11-26 10:34:07.742806+00	2021-11-26 10:34:07.742835+00	8	255
7646	32	2021-11-26 10:34:07.748225+00	2021-11-26 10:34:07.74825+00	8	255
7647	33	2021-11-26 10:34:07.753686+00	2021-11-26 10:34:07.75373+00	8	255
7648	34	2021-11-26 10:34:07.760108+00	2021-11-26 10:34:07.760139+00	8	255
7649	35	2021-11-26 10:34:07.765686+00	2021-11-26 10:34:07.765715+00	8	255
7650	36	2021-11-26 10:34:07.770903+00	2021-11-26 10:34:07.77093+00	8	255
7651	37	2021-11-26 10:34:07.775857+00	2021-11-26 10:34:07.775885+00	8	255
7652	38	2021-11-26 10:34:07.781137+00	2021-11-26 10:34:07.781163+00	8	255
7653	39	2021-11-26 10:34:07.786943+00	2021-11-26 10:34:07.786972+00	8	255
7654	40	2021-11-26 10:34:07.793061+00	2021-11-26 10:34:07.793093+00	8	255
7655	41	2021-11-26 10:34:07.799025+00	2021-11-26 10:34:07.799054+00	8	255
7656	42	2021-11-26 10:34:07.804876+00	2021-11-26 10:34:07.804903+00	8	255
7657	43	2021-11-26 10:34:07.810346+00	2021-11-26 10:34:07.810374+00	8	255
7658	44	2021-11-26 10:34:07.816276+00	2021-11-26 10:34:07.816308+00	8	255
7659	45	2021-11-26 10:34:07.822623+00	2021-11-26 10:34:07.822654+00	8	255
7660	46	2021-11-26 10:34:07.828276+00	2021-11-26 10:34:07.828306+00	8	255
7661	47	2021-11-26 10:34:07.833896+00	2021-11-26 10:34:07.833926+00	8	255
7662	48	2021-11-26 10:34:07.839727+00	2021-11-26 10:34:07.839755+00	8	255
7663	49	2021-11-26 10:34:07.845774+00	2021-11-26 10:34:07.845807+00	8	255
7664	0	2021-11-26 10:34:07.858111+00	2021-11-26 10:34:07.858182+00	8	256
7665	1	2021-11-26 10:34:07.864138+00	2021-11-26 10:34:07.864168+00	8	256
7666	2	2021-11-26 10:34:07.869836+00	2021-11-26 10:34:07.869873+00	8	256
7667	3	2021-11-26 10:34:07.875599+00	2021-11-26 10:34:07.875629+00	8	256
7668	4	2021-11-26 10:34:07.881136+00	2021-11-26 10:34:07.881166+00	8	256
7669	5	2021-11-26 10:34:07.886819+00	2021-11-26 10:34:07.886846+00	8	256
7670	6	2021-11-26 10:34:07.892578+00	2021-11-26 10:34:07.892603+00	8	256
7671	7	2021-11-26 10:34:07.898069+00	2021-11-26 10:34:07.898095+00	8	256
7672	8	2021-11-26 10:34:07.903768+00	2021-11-26 10:34:07.903806+00	8	256
7673	9	2021-11-26 10:34:07.909497+00	2021-11-26 10:34:07.909528+00	8	256
7674	10	2021-11-26 10:34:07.914912+00	2021-11-26 10:34:07.914939+00	8	256
7675	11	2021-11-26 10:34:07.920217+00	2021-11-26 10:34:07.920246+00	8	256
7676	12	2021-11-26 10:34:07.925476+00	2021-11-26 10:34:07.925504+00	8	256
7677	13	2021-11-26 10:34:07.930693+00	2021-11-26 10:34:07.930719+00	8	256
7678	14	2021-11-26 10:34:07.936095+00	2021-11-26 10:34:07.936124+00	8	256
7679	15	2021-11-26 10:34:07.941709+00	2021-11-26 10:34:07.941742+00	8	256
7680	16	2021-11-26 10:34:07.947065+00	2021-11-26 10:34:07.947097+00	8	256
7681	17	2021-11-26 10:34:07.952147+00	2021-11-26 10:34:07.952174+00	8	256
7682	18	2021-11-26 10:34:07.957057+00	2021-11-26 10:34:07.957083+00	8	256
7683	19	2021-11-26 10:34:07.961869+00	2021-11-26 10:34:07.961895+00	8	256
7684	20	2021-11-26 10:34:07.96764+00	2021-11-26 10:34:07.967667+00	8	256
7685	21	2021-11-26 10:34:07.973798+00	2021-11-26 10:34:07.973828+00	8	256
7686	22	2021-11-26 10:34:07.979931+00	2021-11-26 10:34:07.979966+00	8	256
7687	23	2021-11-26 10:34:07.985722+00	2021-11-26 10:34:07.98575+00	8	256
7688	24	2021-11-26 10:34:07.991312+00	2021-11-26 10:34:07.991338+00	8	256
7689	25	2021-11-26 10:34:07.996963+00	2021-11-26 10:34:07.996991+00	8	256
7690	26	2021-11-26 10:34:08.004528+00	2021-11-26 10:34:08.004558+00	8	256
7691	27	2021-11-26 10:34:08.010146+00	2021-11-26 10:34:08.010175+00	8	256
7692	28	2021-11-26 10:34:08.015881+00	2021-11-26 10:34:08.015909+00	8	256
7693	29	2021-11-26 10:34:08.021566+00	2021-11-26 10:34:08.021593+00	8	256
7694	30	2021-11-26 10:34:08.027023+00	2021-11-26 10:34:08.02705+00	8	256
7695	31	2021-11-26 10:34:08.032754+00	2021-11-26 10:34:08.03278+00	8	256
7696	32	2021-11-26 10:34:08.038563+00	2021-11-26 10:34:08.038592+00	8	256
7697	33	2021-11-26 10:34:08.044497+00	2021-11-26 10:34:08.044528+00	8	256
7698	34	2021-11-26 10:34:08.050285+00	2021-11-26 10:34:08.050311+00	8	256
7699	35	2021-11-26 10:34:08.056168+00	2021-11-26 10:34:08.056199+00	8	256
7700	36	2021-11-26 10:34:08.062283+00	2021-11-26 10:34:08.062315+00	8	256
7701	37	2021-11-26 10:34:08.068264+00	2021-11-26 10:34:08.068296+00	8	256
7702	38	2021-11-26 10:34:08.074084+00	2021-11-26 10:34:08.074116+00	8	256
7703	39	2021-11-26 10:34:08.079835+00	2021-11-26 10:34:08.079861+00	8	256
7704	40	2021-11-26 10:34:08.085263+00	2021-11-26 10:34:08.085289+00	8	256
7705	41	2021-11-26 10:34:08.09071+00	2021-11-26 10:34:08.090737+00	8	256
7706	42	2021-11-26 10:34:08.09593+00	2021-11-26 10:34:08.095957+00	8	256
7707	43	2021-11-26 10:34:08.10141+00	2021-11-26 10:34:08.101436+00	8	256
7708	44	2021-11-26 10:34:08.107113+00	2021-11-26 10:34:08.107143+00	8	256
7709	45	2021-11-26 10:34:08.113065+00	2021-11-26 10:34:08.113093+00	8	256
7710	46	2021-11-26 10:34:08.11891+00	2021-11-26 10:34:08.118953+00	8	256
7711	47	2021-11-26 10:34:08.125127+00	2021-11-26 10:34:08.125158+00	8	256
7712	48	2021-11-26 10:34:08.130638+00	2021-11-26 10:34:08.130665+00	8	256
7713	49	2021-11-26 10:34:08.136014+00	2021-11-26 10:34:08.136041+00	8	256
7714	0	2021-11-26 10:34:08.147182+00	2021-11-26 10:34:08.147208+00	8	257
7715	1	2021-11-26 10:34:08.153022+00	2021-11-26 10:34:08.153054+00	8	257
7716	2	2021-11-26 10:34:08.159165+00	2021-11-26 10:34:08.159195+00	8	257
7717	3	2021-11-26 10:34:08.165154+00	2021-11-26 10:34:08.165182+00	8	257
7718	4	2021-11-26 10:34:08.170946+00	2021-11-26 10:34:08.170973+00	8	257
7719	5	2021-11-26 10:34:08.174021+00	2021-11-26 10:34:08.174029+00	8	257
7720	6	2021-11-26 10:34:08.17732+00	2021-11-26 10:34:08.177326+00	8	257
7721	7	2021-11-26 10:34:08.180223+00	2021-11-26 10:34:08.180229+00	8	257
7722	8	2021-11-26 10:34:08.18298+00	2021-11-26 10:34:08.182999+00	8	257
7723	9	2021-11-26 10:34:08.185712+00	2021-11-26 10:34:08.18572+00	8	257
7724	10	2021-11-26 10:34:08.188793+00	2021-11-26 10:34:08.188804+00	8	257
7725	11	2021-11-26 10:34:08.191758+00	2021-11-26 10:34:08.191766+00	8	257
7726	12	2021-11-26 10:34:08.194683+00	2021-11-26 10:34:08.194689+00	8	257
7727	13	2021-11-26 10:34:08.197554+00	2021-11-26 10:34:08.19756+00	8	257
7728	14	2021-11-26 10:34:08.200356+00	2021-11-26 10:34:08.200362+00	8	257
7729	15	2021-11-26 10:34:08.203221+00	2021-11-26 10:34:08.203229+00	8	257
7730	16	2021-11-26 10:34:08.206044+00	2021-11-26 10:34:08.206054+00	8	257
7731	17	2021-11-26 10:34:08.209222+00	2021-11-26 10:34:08.20923+00	8	257
7732	18	2021-11-26 10:34:08.212293+00	2021-11-26 10:34:08.212304+00	8	257
7733	19	2021-11-26 10:34:08.215416+00	2021-11-26 10:34:08.215422+00	8	257
7734	20	2021-11-26 10:34:08.218344+00	2021-11-26 10:34:08.218353+00	8	257
7735	21	2021-11-26 10:34:08.221277+00	2021-11-26 10:34:08.221286+00	8	257
7736	22	2021-11-26 10:34:08.224285+00	2021-11-26 10:34:08.224293+00	8	257
7737	23	2021-11-26 10:34:08.227148+00	2021-11-26 10:34:08.227154+00	8	257
7738	24	2021-11-26 10:34:08.229885+00	2021-11-26 10:34:08.229891+00	8	257
7739	25	2021-11-26 10:34:08.2328+00	2021-11-26 10:34:08.232806+00	8	257
7740	26	2021-11-26 10:34:08.235662+00	2021-11-26 10:34:08.235668+00	8	257
7741	27	2021-11-26 10:34:08.238505+00	2021-11-26 10:34:08.238511+00	8	257
7742	28	2021-11-26 10:34:08.241216+00	2021-11-26 10:34:08.241221+00	8	257
7743	29	2021-11-26 10:34:08.24389+00	2021-11-26 10:34:08.243896+00	8	257
7744	30	2021-11-26 10:34:08.246583+00	2021-11-26 10:34:08.246588+00	8	257
7745	31	2021-11-26 10:34:08.249323+00	2021-11-26 10:34:08.249328+00	8	257
7746	32	2021-11-26 10:34:08.25209+00	2021-11-26 10:34:08.252095+00	8	257
7747	33	2021-11-26 10:34:08.25507+00	2021-11-26 10:34:08.255085+00	8	257
7748	34	2021-11-26 10:34:08.258026+00	2021-11-26 10:34:08.258033+00	8	257
7749	35	2021-11-26 10:34:08.260831+00	2021-11-26 10:34:08.260837+00	8	257
7750	36	2021-11-26 10:34:08.265027+00	2021-11-26 10:34:08.265033+00	8	257
7751	37	2021-11-26 10:34:08.267842+00	2021-11-26 10:34:08.267848+00	8	257
7752	38	2021-11-26 10:34:08.271074+00	2021-11-26 10:34:08.27108+00	8	257
7753	39	2021-11-26 10:34:08.274322+00	2021-11-26 10:34:08.274333+00	8	257
7754	40	2021-11-26 10:34:08.277693+00	2021-11-26 10:34:08.277699+00	8	257
7755	41	2021-11-26 10:34:08.280561+00	2021-11-26 10:34:08.280567+00	8	257
7756	42	2021-11-26 10:34:08.283431+00	2021-11-26 10:34:08.283437+00	8	257
7757	43	2021-11-26 10:34:08.28636+00	2021-11-26 10:34:08.286368+00	8	257
7758	44	2021-11-26 10:34:08.289263+00	2021-11-26 10:34:08.28927+00	8	257
7759	45	2021-11-26 10:34:08.293084+00	2021-11-26 10:34:08.29309+00	8	257
7760	46	2021-11-26 10:34:08.296061+00	2021-11-26 10:34:08.296067+00	8	257
7761	47	2021-11-26 10:34:08.299035+00	2021-11-26 10:34:08.29904+00	8	257
7762	48	2021-11-26 10:34:08.301908+00	2021-11-26 10:34:08.301914+00	8	257
7763	49	2021-11-26 10:34:08.304895+00	2021-11-26 10:34:08.304901+00	8	257
7764	0	2021-11-26 10:34:08.31112+00	2021-11-26 10:34:08.311126+00	8	258
7765	1	2021-11-26 10:34:08.313946+00	2021-11-26 10:34:08.313952+00	8	258
7766	2	2021-11-26 10:34:08.316939+00	2021-11-26 10:34:08.316945+00	8	258
7767	3	2021-11-26 10:34:08.319784+00	2021-11-26 10:34:08.319791+00	8	258
7768	4	2021-11-26 10:34:08.323106+00	2021-11-26 10:34:08.323115+00	8	258
7769	5	2021-11-26 10:34:08.326052+00	2021-11-26 10:34:08.32606+00	8	258
7770	6	2021-11-26 10:34:08.32929+00	2021-11-26 10:34:08.329296+00	8	258
7771	7	2021-11-26 10:34:08.332507+00	2021-11-26 10:34:08.332513+00	8	258
7772	8	2021-11-26 10:34:08.335614+00	2021-11-26 10:34:08.335628+00	8	258
7773	9	2021-11-26 10:34:08.339084+00	2021-11-26 10:34:08.339095+00	8	258
7774	10	2021-11-26 10:34:08.3426+00	2021-11-26 10:34:08.342609+00	8	258
7775	11	2021-11-26 10:34:08.345552+00	2021-11-26 10:34:08.345559+00	8	258
7776	12	2021-11-26 10:34:08.348586+00	2021-11-26 10:34:08.348592+00	8	258
7777	13	2021-11-26 10:34:08.351564+00	2021-11-26 10:34:08.351571+00	8	258
7778	14	2021-11-26 10:34:08.354777+00	2021-11-26 10:34:08.354785+00	8	258
7779	15	2021-11-26 10:34:08.357675+00	2021-11-26 10:34:08.357684+00	8	258
7780	16	2021-11-26 10:34:08.360597+00	2021-11-26 10:34:08.360604+00	8	258
7781	17	2021-11-26 10:34:08.363421+00	2021-11-26 10:34:08.363434+00	8	258
7782	18	2021-11-26 10:34:08.366961+00	2021-11-26 10:34:08.366975+00	8	258
7783	19	2021-11-26 10:34:08.370496+00	2021-11-26 10:34:08.37051+00	8	258
7784	20	2021-11-26 10:34:08.376774+00	2021-11-26 10:34:08.37679+00	8	258
7785	21	2021-11-26 10:34:08.380101+00	2021-11-26 10:34:08.380115+00	8	258
7786	22	2021-11-26 10:34:08.383492+00	2021-11-26 10:34:08.383503+00	8	258
7787	23	2021-11-26 10:34:08.386459+00	2021-11-26 10:34:08.386469+00	8	258
7788	24	2021-11-26 10:34:08.389715+00	2021-11-26 10:34:08.389722+00	8	258
7789	25	2021-11-26 10:34:08.392708+00	2021-11-26 10:34:08.392714+00	8	258
7790	26	2021-11-26 10:34:08.395864+00	2021-11-26 10:34:08.395871+00	8	258
7791	27	2021-11-26 10:34:08.399627+00	2021-11-26 10:34:08.399649+00	8	258
7792	28	2021-11-26 10:34:08.404833+00	2021-11-26 10:34:08.40486+00	8	258
7793	29	2021-11-26 10:34:08.410619+00	2021-11-26 10:34:08.410646+00	8	258
7794	30	2021-11-26 10:34:08.415861+00	2021-11-26 10:34:08.415883+00	8	258
7795	31	2021-11-26 10:34:08.421379+00	2021-11-26 10:34:08.421407+00	8	258
7796	32	2021-11-26 10:34:08.427051+00	2021-11-26 10:34:08.42709+00	8	258
7797	33	2021-11-26 10:34:08.432814+00	2021-11-26 10:34:08.432841+00	8	258
7798	34	2021-11-26 10:34:08.438217+00	2021-11-26 10:34:08.438243+00	8	258
7799	35	2021-11-26 10:34:08.443518+00	2021-11-26 10:34:08.443542+00	8	258
7800	36	2021-11-26 10:34:08.448549+00	2021-11-26 10:34:08.448571+00	8	258
7801	37	2021-11-26 10:34:08.45369+00	2021-11-26 10:34:08.453713+00	8	258
7802	38	2021-11-26 10:34:08.458837+00	2021-11-26 10:34:08.458861+00	8	258
7803	39	2021-11-26 10:34:08.464115+00	2021-11-26 10:34:08.464141+00	8	258
7804	40	2021-11-26 10:34:08.470013+00	2021-11-26 10:34:08.47005+00	8	258
7805	41	2021-11-26 10:34:08.475705+00	2021-11-26 10:34:08.475732+00	8	258
7806	42	2021-11-26 10:34:08.481534+00	2021-11-26 10:34:08.481563+00	8	258
7807	43	2021-11-26 10:34:08.487186+00	2021-11-26 10:34:08.487221+00	8	258
7808	44	2021-11-26 10:34:08.494575+00	2021-11-26 10:34:08.494603+00	8	258
7809	45	2021-11-26 10:34:08.500096+00	2021-11-26 10:34:08.500121+00	8	258
7810	46	2021-11-26 10:34:08.505964+00	2021-11-26 10:34:08.505989+00	8	258
7811	47	2021-11-26 10:34:08.511756+00	2021-11-26 10:34:08.511781+00	8	258
7812	48	2021-11-26 10:34:08.517348+00	2021-11-26 10:34:08.517372+00	8	258
7813	49	2021-11-26 10:34:08.522939+00	2021-11-26 10:34:08.522969+00	8	258
7814	0	2021-11-26 10:34:08.533884+00	2021-11-26 10:34:08.533908+00	8	259
7815	1	2021-11-26 10:34:08.539493+00	2021-11-26 10:34:08.539517+00	8	259
7816	2	2021-11-26 10:34:08.544707+00	2021-11-26 10:34:08.544733+00	8	259
7817	3	2021-11-26 10:34:08.550127+00	2021-11-26 10:34:08.550152+00	8	259
7818	4	2021-11-26 10:34:08.556045+00	2021-11-26 10:34:08.556076+00	8	259
7819	5	2021-11-26 10:34:08.562316+00	2021-11-26 10:34:08.562349+00	8	259
7820	6	2021-11-26 10:34:08.568615+00	2021-11-26 10:34:08.568644+00	8	259
7821	7	2021-11-26 10:34:08.574444+00	2021-11-26 10:34:08.574473+00	8	259
7822	8	2021-11-26 10:34:08.580437+00	2021-11-26 10:34:08.580475+00	8	259
7823	9	2021-11-26 10:34:08.586497+00	2021-11-26 10:34:08.586528+00	8	259
7824	10	2021-11-26 10:34:08.592384+00	2021-11-26 10:34:08.592412+00	8	259
7825	11	2021-11-26 10:34:08.598082+00	2021-11-26 10:34:08.59811+00	8	259
7826	12	2021-11-26 10:34:08.603979+00	2021-11-26 10:34:08.604005+00	8	259
7827	13	2021-11-26 10:34:08.609602+00	2021-11-26 10:34:08.609629+00	8	259
7828	14	2021-11-26 10:34:08.615304+00	2021-11-26 10:34:08.615329+00	8	259
7829	15	2021-11-26 10:34:08.621064+00	2021-11-26 10:34:08.621093+00	8	259
7830	16	2021-11-26 10:34:08.627042+00	2021-11-26 10:34:08.627072+00	8	259
7831	17	2021-11-26 10:34:08.6326+00	2021-11-26 10:34:08.632626+00	8	259
7832	18	2021-11-26 10:34:08.638193+00	2021-11-26 10:34:08.638223+00	8	259
7833	19	2021-11-26 10:34:08.645322+00	2021-11-26 10:34:08.645353+00	8	259
7834	20	2021-11-26 10:34:08.651001+00	2021-11-26 10:34:08.65103+00	8	259
7835	21	2021-11-26 10:34:08.656632+00	2021-11-26 10:34:08.65666+00	8	259
7836	22	2021-11-26 10:34:08.662264+00	2021-11-26 10:34:08.662291+00	8	259
7837	23	2021-11-26 10:34:08.668303+00	2021-11-26 10:34:08.668331+00	8	259
7838	24	2021-11-26 10:34:08.674323+00	2021-11-26 10:34:08.674353+00	8	259
7839	25	2021-11-26 10:34:08.680333+00	2021-11-26 10:34:08.680363+00	8	259
7840	26	2021-11-26 10:34:08.686353+00	2021-11-26 10:34:08.686381+00	8	259
7841	27	2021-11-26 10:34:08.692343+00	2021-11-26 10:34:08.692371+00	8	259
7842	28	2021-11-26 10:34:08.698357+00	2021-11-26 10:34:08.698385+00	8	259
7843	29	2021-11-26 10:34:08.704287+00	2021-11-26 10:34:08.70432+00	8	259
7844	30	2021-11-26 10:34:08.711453+00	2021-11-26 10:34:08.711484+00	8	259
7845	31	2021-11-26 10:34:08.717331+00	2021-11-26 10:34:08.717356+00	8	259
7846	32	2021-11-26 10:34:08.722724+00	2021-11-26 10:34:08.722753+00	8	259
7847	33	2021-11-26 10:34:08.727761+00	2021-11-26 10:34:08.727787+00	8	259
7848	34	2021-11-26 10:34:08.732616+00	2021-11-26 10:34:08.732642+00	8	259
7849	35	2021-11-26 10:34:08.738486+00	2021-11-26 10:34:08.738519+00	8	259
7850	36	2021-11-26 10:34:08.74387+00	2021-11-26 10:34:08.743896+00	8	259
7851	37	2021-11-26 10:34:08.748771+00	2021-11-26 10:34:08.748797+00	8	259
7852	38	2021-11-26 10:34:08.753761+00	2021-11-26 10:34:08.753788+00	8	259
7853	39	2021-11-26 10:34:08.75873+00	2021-11-26 10:34:08.758756+00	8	259
7854	40	2021-11-26 10:34:08.766362+00	2021-11-26 10:34:08.766389+00	8	259
7855	41	2021-11-26 10:34:08.774392+00	2021-11-26 10:34:08.774436+00	8	259
7856	42	2021-11-26 10:34:08.781631+00	2021-11-26 10:34:08.781662+00	8	259
7857	43	2021-11-26 10:34:08.788935+00	2021-11-26 10:34:08.788964+00	8	259
7858	44	2021-11-26 10:34:08.794772+00	2021-11-26 10:34:08.794802+00	8	259
7859	45	2021-11-26 10:34:08.800945+00	2021-11-26 10:34:08.800975+00	8	259
7860	46	2021-11-26 10:34:08.807215+00	2021-11-26 10:34:08.807246+00	8	259
7861	47	2021-11-26 10:34:08.813314+00	2021-11-26 10:34:08.81334+00	8	259
7862	48	2021-11-26 10:34:08.818936+00	2021-11-26 10:34:08.818974+00	8	259
7863	49	2021-11-26 10:34:08.824889+00	2021-11-26 10:34:08.824914+00	8	259
7864	0	2021-11-26 10:34:08.836496+00	2021-11-26 10:34:08.836524+00	8	260
7865	1	2021-11-26 10:34:08.842238+00	2021-11-26 10:34:08.842269+00	8	260
7866	2	2021-11-26 10:34:08.847606+00	2021-11-26 10:34:08.847632+00	8	260
7867	3	2021-11-26 10:34:08.852655+00	2021-11-26 10:34:08.852687+00	8	260
7868	4	2021-11-26 10:34:08.858914+00	2021-11-26 10:34:08.858961+00	8	260
7869	5	2021-11-26 10:34:08.86493+00	2021-11-26 10:34:08.864961+00	8	260
7870	6	2021-11-26 10:34:08.870837+00	2021-11-26 10:34:08.870867+00	8	260
7871	7	2021-11-26 10:34:08.876112+00	2021-11-26 10:34:08.876141+00	8	260
7872	8	2021-11-26 10:34:08.881802+00	2021-11-26 10:34:08.881828+00	8	260
7873	9	2021-11-26 10:34:08.887801+00	2021-11-26 10:34:08.887832+00	8	260
7874	10	2021-11-26 10:34:08.89412+00	2021-11-26 10:34:08.89415+00	8	260
7875	11	2021-11-26 10:34:08.900028+00	2021-11-26 10:34:08.900055+00	8	260
7876	12	2021-11-26 10:34:08.905928+00	2021-11-26 10:34:08.905955+00	8	260
7877	13	2021-11-26 10:34:08.911066+00	2021-11-26 10:34:08.911092+00	8	260
7878	14	2021-11-26 10:34:08.917005+00	2021-11-26 10:34:08.91704+00	8	260
7879	15	2021-11-26 10:34:08.923268+00	2021-11-26 10:34:08.923299+00	8	260
7880	16	2021-11-26 10:34:08.929179+00	2021-11-26 10:34:08.929206+00	8	260
7881	17	2021-11-26 10:34:08.934929+00	2021-11-26 10:34:08.934956+00	8	260
7882	18	2021-11-26 10:34:08.94086+00	2021-11-26 10:34:08.940887+00	8	260
7883	19	2021-11-26 10:34:08.946294+00	2021-11-26 10:34:08.94632+00	8	260
7884	20	2021-11-26 10:34:08.951992+00	2021-11-26 10:34:08.95202+00	8	260
7885	21	2021-11-26 10:34:08.95846+00	2021-11-26 10:34:08.958506+00	8	260
7886	22	2021-11-26 10:34:08.964577+00	2021-11-26 10:34:08.964607+00	8	260
7887	23	2021-11-26 10:34:08.970769+00	2021-11-26 10:34:08.970801+00	8	260
7888	24	2021-11-26 10:34:08.976652+00	2021-11-26 10:34:08.976679+00	8	260
7889	25	2021-11-26 10:34:08.981451+00	2021-11-26 10:34:08.981476+00	8	260
7890	26	2021-11-26 10:34:08.985875+00	2021-11-26 10:34:08.985896+00	8	260
7891	27	2021-11-26 10:34:08.98975+00	2021-11-26 10:34:08.989763+00	8	260
7892	28	2021-11-26 10:34:08.993362+00	2021-11-26 10:34:08.993373+00	8	260
7893	29	2021-11-26 10:34:08.996792+00	2021-11-26 10:34:08.996801+00	8	260
7894	30	2021-11-26 10:34:08.999989+00	2021-11-26 10:34:08.999995+00	8	260
7895	31	2021-11-26 10:34:09.002989+00	2021-11-26 10:34:09.002995+00	8	260
7896	32	2021-11-26 10:34:09.006056+00	2021-11-26 10:34:09.006062+00	8	260
7897	33	2021-11-26 10:34:09.0091+00	2021-11-26 10:34:09.009105+00	8	260
7898	34	2021-11-26 10:34:09.01211+00	2021-11-26 10:34:09.012115+00	8	260
7899	35	2021-11-26 10:34:09.014803+00	2021-11-26 10:34:09.014809+00	8	260
7900	36	2021-11-26 10:34:09.017813+00	2021-11-26 10:34:09.017819+00	8	260
7901	37	2021-11-26 10:34:09.021083+00	2021-11-26 10:34:09.021097+00	8	260
7902	38	2021-11-26 10:34:09.024465+00	2021-11-26 10:34:09.024473+00	8	260
7903	39	2021-11-26 10:34:09.027575+00	2021-11-26 10:34:09.027581+00	8	260
7904	40	2021-11-26 10:34:09.030568+00	2021-11-26 10:34:09.030573+00	8	260
7905	41	2021-11-26 10:34:09.033486+00	2021-11-26 10:34:09.033491+00	8	260
7906	42	2021-11-26 10:34:09.036641+00	2021-11-26 10:34:09.036648+00	8	260
7907	43	2021-11-26 10:34:09.040052+00	2021-11-26 10:34:09.040061+00	8	260
7908	44	2021-11-26 10:34:09.043091+00	2021-11-26 10:34:09.043098+00	8	260
7909	45	2021-11-26 10:34:09.045896+00	2021-11-26 10:34:09.045901+00	8	260
7910	46	2021-11-26 10:34:09.048693+00	2021-11-26 10:34:09.048699+00	8	260
7911	47	2021-11-26 10:34:09.051561+00	2021-11-26 10:34:09.05157+00	8	260
7912	48	2021-11-26 10:34:09.05484+00	2021-11-26 10:34:09.054851+00	8	260
7913	49	2021-11-26 10:34:09.058044+00	2021-11-26 10:34:09.058052+00	8	260
7914	0	2021-11-26 10:34:09.064266+00	2021-11-26 10:34:09.064271+00	8	261
7915	1	2021-11-26 10:34:09.067328+00	2021-11-26 10:34:09.067334+00	8	261
7916	2	2021-11-26 10:34:09.070325+00	2021-11-26 10:34:09.070335+00	8	261
7917	3	2021-11-26 10:34:09.073305+00	2021-11-26 10:34:09.073311+00	8	261
7918	4	2021-11-26 10:34:09.076136+00	2021-11-26 10:34:09.076141+00	8	261
7919	5	2021-11-26 10:34:09.078882+00	2021-11-26 10:34:09.078888+00	8	261
7920	6	2021-11-26 10:34:09.081612+00	2021-11-26 10:34:09.081617+00	8	261
7921	7	2021-11-26 10:34:09.08442+00	2021-11-26 10:34:09.084426+00	8	261
7922	8	2021-11-26 10:34:09.088392+00	2021-11-26 10:34:09.088402+00	8	261
7923	9	2021-11-26 10:34:09.091434+00	2021-11-26 10:34:09.091442+00	8	261
7924	10	2021-11-26 10:34:09.094503+00	2021-11-26 10:34:09.09451+00	8	261
7925	11	2021-11-26 10:34:09.097344+00	2021-11-26 10:34:09.09735+00	8	261
7926	12	2021-11-26 10:34:09.100271+00	2021-11-26 10:34:09.100281+00	8	261
7927	13	2021-11-26 10:34:09.103421+00	2021-11-26 10:34:09.103434+00	8	261
7928	14	2021-11-26 10:34:09.1064+00	2021-11-26 10:34:09.106408+00	8	261
7929	15	2021-11-26 10:34:09.109403+00	2021-11-26 10:34:09.109411+00	8	261
7930	16	2021-11-26 10:34:09.112297+00	2021-11-26 10:34:09.112303+00	8	261
7931	17	2021-11-26 10:34:09.115123+00	2021-11-26 10:34:09.115129+00	8	261
7932	18	2021-11-26 10:34:09.117916+00	2021-11-26 10:34:09.117922+00	8	261
7933	19	2021-11-26 10:34:09.12161+00	2021-11-26 10:34:09.121616+00	8	261
7934	20	2021-11-26 10:34:09.124511+00	2021-11-26 10:34:09.124516+00	8	261
7935	21	2021-11-26 10:34:09.127287+00	2021-11-26 10:34:09.127292+00	8	261
7936	22	2021-11-26 10:34:09.130308+00	2021-11-26 10:34:09.130314+00	8	261
7937	23	2021-11-26 10:34:09.133448+00	2021-11-26 10:34:09.133454+00	8	261
7938	24	2021-11-26 10:34:09.13627+00	2021-11-26 10:34:09.136279+00	8	261
7939	25	2021-11-26 10:34:09.139394+00	2021-11-26 10:34:09.139404+00	8	261
7940	26	2021-11-26 10:34:09.142388+00	2021-11-26 10:34:09.142394+00	8	261
7941	27	2021-11-26 10:34:09.145172+00	2021-11-26 10:34:09.145178+00	8	261
7942	28	2021-11-26 10:34:09.147963+00	2021-11-26 10:34:09.147968+00	8	261
7943	29	2021-11-26 10:34:09.150727+00	2021-11-26 10:34:09.150733+00	8	261
7944	30	2021-11-26 10:34:09.153755+00	2021-11-26 10:34:09.153764+00	8	261
7945	31	2021-11-26 10:34:09.156667+00	2021-11-26 10:34:09.156674+00	8	261
7946	32	2021-11-26 10:34:09.159617+00	2021-11-26 10:34:09.159624+00	8	261
7947	33	2021-11-26 10:34:09.162553+00	2021-11-26 10:34:09.162563+00	8	261
7948	34	2021-11-26 10:34:09.165636+00	2021-11-26 10:34:09.165643+00	8	261
7949	35	2021-11-26 10:34:09.168896+00	2021-11-26 10:34:09.168908+00	8	261
7950	36	2021-11-26 10:34:09.171968+00	2021-11-26 10:34:09.171976+00	8	261
7951	37	2021-11-26 10:34:09.174935+00	2021-11-26 10:34:09.174943+00	8	261
7952	38	2021-11-26 10:34:09.177829+00	2021-11-26 10:34:09.177837+00	8	261
7953	39	2021-11-26 10:34:09.180748+00	2021-11-26 10:34:09.180753+00	8	261
7954	40	2021-11-26 10:34:09.183803+00	2021-11-26 10:34:09.183809+00	8	261
7955	41	2021-11-26 10:34:09.186806+00	2021-11-26 10:34:09.186812+00	8	261
7956	42	2021-11-26 10:34:09.189977+00	2021-11-26 10:34:09.189983+00	8	261
7957	43	2021-11-26 10:34:09.193218+00	2021-11-26 10:34:09.193223+00	8	261
7958	44	2021-11-26 10:34:09.196186+00	2021-11-26 10:34:09.196191+00	8	261
7959	45	2021-11-26 10:34:09.200352+00	2021-11-26 10:34:09.200357+00	8	261
7960	46	2021-11-26 10:34:09.203665+00	2021-11-26 10:34:09.203675+00	8	261
7961	47	2021-11-26 10:34:09.206794+00	2021-11-26 10:34:09.206801+00	8	261
7962	48	2021-11-26 10:34:09.209411+00	2021-11-26 10:34:09.209417+00	8	261
7963	49	2021-11-26 10:34:09.21203+00	2021-11-26 10:34:09.212035+00	8	261
7964	0	2021-11-26 10:34:09.217234+00	2021-11-26 10:34:09.217239+00	8	262
7965	1	2021-11-26 10:34:09.219762+00	2021-11-26 10:34:09.219768+00	8	262
7966	2	2021-11-26 10:34:09.222406+00	2021-11-26 10:34:09.222414+00	8	262
7967	3	2021-11-26 10:34:09.225507+00	2021-11-26 10:34:09.225518+00	8	262
7968	4	2021-11-26 10:34:09.228655+00	2021-11-26 10:34:09.228661+00	8	262
7969	5	2021-11-26 10:34:09.231667+00	2021-11-26 10:34:09.231673+00	8	262
7970	6	2021-11-26 10:34:09.234747+00	2021-11-26 10:34:09.234755+00	8	262
7971	7	2021-11-26 10:34:09.238017+00	2021-11-26 10:34:09.238027+00	8	262
7972	8	2021-11-26 10:34:09.24139+00	2021-11-26 10:34:09.241398+00	8	262
7973	9	2021-11-26 10:34:09.244657+00	2021-11-26 10:34:09.244663+00	8	262
7974	10	2021-11-26 10:34:09.24774+00	2021-11-26 10:34:09.247746+00	8	262
7975	11	2021-11-26 10:34:09.250982+00	2021-11-26 10:34:09.250987+00	8	262
7976	12	2021-11-26 10:34:09.253888+00	2021-11-26 10:34:09.253895+00	8	262
7977	13	2021-11-26 10:34:09.257133+00	2021-11-26 10:34:09.257139+00	8	262
7978	14	2021-11-26 10:34:09.260605+00	2021-11-26 10:34:09.260611+00	8	262
7979	15	2021-11-26 10:34:09.264186+00	2021-11-26 10:34:09.264192+00	8	262
7980	16	2021-11-26 10:34:09.267577+00	2021-11-26 10:34:09.267582+00	8	262
7981	17	2021-11-26 10:34:09.27116+00	2021-11-26 10:34:09.271174+00	8	262
7982	18	2021-11-26 10:34:09.274568+00	2021-11-26 10:34:09.274574+00	8	262
7983	19	2021-11-26 10:34:09.277831+00	2021-11-26 10:34:09.277837+00	8	262
7984	20	2021-11-26 10:34:09.280795+00	2021-11-26 10:34:09.280801+00	8	262
7985	21	2021-11-26 10:34:09.283752+00	2021-11-26 10:34:09.283758+00	8	262
7986	22	2021-11-26 10:34:09.286891+00	2021-11-26 10:34:09.286906+00	8	262
7987	23	2021-11-26 10:34:09.290053+00	2021-11-26 10:34:09.290063+00	8	262
7988	24	2021-11-26 10:34:09.293005+00	2021-11-26 10:34:09.293012+00	8	262
7989	25	2021-11-26 10:34:09.295741+00	2021-11-26 10:34:09.295747+00	8	262
7990	26	2021-11-26 10:34:09.298493+00	2021-11-26 10:34:09.298498+00	8	262
7991	27	2021-11-26 10:34:09.301223+00	2021-11-26 10:34:09.301229+00	8	262
7992	28	2021-11-26 10:34:09.303794+00	2021-11-26 10:34:09.303802+00	8	262
7993	29	2021-11-26 10:34:09.306546+00	2021-11-26 10:34:09.306553+00	8	262
7994	30	2021-11-26 10:34:09.309256+00	2021-11-26 10:34:09.309262+00	8	262
7995	31	2021-11-26 10:34:09.311957+00	2021-11-26 10:34:09.311963+00	8	262
7996	32	2021-11-26 10:34:09.314754+00	2021-11-26 10:34:09.314767+00	8	262
7997	33	2021-11-26 10:34:09.317674+00	2021-11-26 10:34:09.317684+00	8	262
7998	34	2021-11-26 10:34:09.320559+00	2021-11-26 10:34:09.320569+00	8	262
7999	35	2021-11-26 10:34:09.32705+00	2021-11-26 10:34:09.327059+00	8	262
8000	36	2021-11-26 10:34:09.330063+00	2021-11-26 10:34:09.330071+00	8	262
8001	37	2021-11-26 10:34:09.333121+00	2021-11-26 10:34:09.333127+00	8	262
8002	38	2021-11-26 10:34:09.336038+00	2021-11-26 10:34:09.336044+00	8	262
8003	39	2021-11-26 10:34:09.338904+00	2021-11-26 10:34:09.338911+00	8	262
8004	40	2021-11-26 10:34:09.341669+00	2021-11-26 10:34:09.341674+00	8	262
8005	41	2021-11-26 10:34:09.34455+00	2021-11-26 10:34:09.344555+00	8	262
8006	42	2021-11-26 10:34:09.347447+00	2021-11-26 10:34:09.347453+00	8	262
8007	43	2021-11-26 10:34:09.350375+00	2021-11-26 10:34:09.35038+00	8	262
8008	44	2021-11-26 10:34:09.35334+00	2021-11-26 10:34:09.353351+00	8	262
8009	45	2021-11-26 10:34:09.356377+00	2021-11-26 10:34:09.356385+00	8	262
8010	46	2021-11-26 10:34:09.359175+00	2021-11-26 10:34:09.359183+00	8	262
8011	47	2021-11-26 10:34:09.361842+00	2021-11-26 10:34:09.361847+00	8	262
8012	48	2021-11-26 10:34:09.367262+00	2021-11-26 10:34:09.367268+00	8	262
8013	49	2021-11-26 10:34:09.370267+00	2021-11-26 10:34:09.370275+00	8	262
8014	0	2021-11-26 10:34:09.376448+00	2021-11-26 10:34:09.376457+00	8	263
8015	1	2021-11-26 10:34:09.379535+00	2021-11-26 10:34:09.379541+00	8	263
8016	2	2021-11-26 10:34:09.382481+00	2021-11-26 10:34:09.382487+00	8	263
8017	3	2021-11-26 10:34:09.385637+00	2021-11-26 10:34:09.385649+00	8	263
8018	4	2021-11-26 10:34:09.388731+00	2021-11-26 10:34:09.388739+00	8	263
8019	5	2021-11-26 10:34:09.391773+00	2021-11-26 10:34:09.391781+00	8	263
8020	6	2021-11-26 10:34:09.394868+00	2021-11-26 10:34:09.394875+00	8	263
8021	7	2021-11-26 10:34:09.39779+00	2021-11-26 10:34:09.397796+00	8	263
8022	8	2021-11-26 10:34:09.400842+00	2021-11-26 10:34:09.400847+00	8	263
8023	9	2021-11-26 10:34:09.403805+00	2021-11-26 10:34:09.403811+00	8	263
8024	10	2021-11-26 10:34:09.406785+00	2021-11-26 10:34:09.40679+00	8	263
8025	11	2021-11-26 10:34:09.409933+00	2021-11-26 10:34:09.409938+00	8	263
8026	12	2021-11-26 10:34:09.413079+00	2021-11-26 10:34:09.413084+00	8	263
8027	13	2021-11-26 10:34:09.416346+00	2021-11-26 10:34:09.416351+00	8	263
8028	14	2021-11-26 10:34:09.419408+00	2021-11-26 10:34:09.419417+00	8	263
8029	15	2021-11-26 10:34:09.422454+00	2021-11-26 10:34:09.422463+00	8	263
8030	16	2021-11-26 10:34:09.425288+00	2021-11-26 10:34:09.425295+00	8	263
8031	17	2021-11-26 10:34:09.427976+00	2021-11-26 10:34:09.427982+00	8	263
8032	18	2021-11-26 10:34:09.430694+00	2021-11-26 10:34:09.4307+00	8	263
8033	19	2021-11-26 10:34:09.433506+00	2021-11-26 10:34:09.433512+00	8	263
8034	20	2021-11-26 10:34:09.43641+00	2021-11-26 10:34:09.436418+00	8	263
8035	21	2021-11-26 10:34:09.439322+00	2021-11-26 10:34:09.439333+00	8	263
8036	22	2021-11-26 10:34:09.442247+00	2021-11-26 10:34:09.442256+00	8	263
8037	23	2021-11-26 10:34:09.445032+00	2021-11-26 10:34:09.445038+00	8	263
8038	24	2021-11-26 10:34:09.447768+00	2021-11-26 10:34:09.447774+00	8	263
8039	25	2021-11-26 10:34:09.450579+00	2021-11-26 10:34:09.450585+00	8	263
8040	26	2021-11-26 10:34:09.453321+00	2021-11-26 10:34:09.453327+00	8	263
8041	27	2021-11-26 10:34:09.456358+00	2021-11-26 10:34:09.456366+00	8	263
8042	28	2021-11-26 10:34:09.459077+00	2021-11-26 10:34:09.459084+00	8	263
8043	29	2021-11-26 10:34:09.461845+00	2021-11-26 10:34:09.46185+00	8	263
8044	30	2021-11-26 10:34:09.464566+00	2021-11-26 10:34:09.464572+00	8	263
8045	31	2021-11-26 10:34:09.467393+00	2021-11-26 10:34:09.4674+00	8	263
8046	32	2021-11-26 10:34:09.470465+00	2021-11-26 10:34:09.470475+00	8	263
8047	33	2021-11-26 10:34:09.47351+00	2021-11-26 10:34:09.473517+00	8	263
8048	34	2021-11-26 10:34:09.476736+00	2021-11-26 10:34:09.476742+00	8	263
8049	35	2021-11-26 10:34:09.47971+00	2021-11-26 10:34:09.479716+00	8	263
8050	36	2021-11-26 10:34:09.482708+00	2021-11-26 10:34:09.482713+00	8	263
8051	37	2021-11-26 10:34:09.485855+00	2021-11-26 10:34:09.48587+00	8	263
8052	38	2021-11-26 10:34:09.489113+00	2021-11-26 10:34:09.489121+00	8	263
8053	39	2021-11-26 10:34:09.492205+00	2021-11-26 10:34:09.492213+00	8	263
8054	40	2021-11-26 10:34:09.495337+00	2021-11-26 10:34:09.495343+00	8	263
8055	41	2021-11-26 10:34:09.498189+00	2021-11-26 10:34:09.498194+00	8	263
8056	42	2021-11-26 10:34:09.501172+00	2021-11-26 10:34:09.501178+00	8	263
8057	43	2021-11-26 10:34:09.503978+00	2021-11-26 10:34:09.503987+00	8	263
8058	44	2021-11-26 10:34:09.511347+00	2021-11-26 10:34:09.511364+00	8	263
8059	45	2021-11-26 10:34:09.514405+00	2021-11-26 10:34:09.514412+00	8	263
8060	46	2021-11-26 10:34:09.517344+00	2021-11-26 10:34:09.51735+00	8	263
8061	47	2021-11-26 10:34:09.520252+00	2021-11-26 10:34:09.52026+00	8	263
8062	48	2021-11-26 10:34:09.523107+00	2021-11-26 10:34:09.523115+00	8	263
8063	49	2021-11-26 10:34:09.525901+00	2021-11-26 10:34:09.525908+00	8	263
8064	0	2021-11-26 10:34:09.531433+00	2021-11-26 10:34:09.531442+00	8	264
8065	1	2021-11-26 10:34:09.53441+00	2021-11-26 10:34:09.534422+00	8	264
8066	2	2021-11-26 10:34:09.537914+00	2021-11-26 10:34:09.537923+00	8	264
8067	3	2021-11-26 10:34:09.541075+00	2021-11-26 10:34:09.541084+00	8	264
8068	4	2021-11-26 10:34:09.544066+00	2021-11-26 10:34:09.544073+00	8	264
8069	5	2021-11-26 10:34:09.547191+00	2021-11-26 10:34:09.547197+00	8	264
8070	6	2021-11-26 10:34:09.550363+00	2021-11-26 10:34:09.550369+00	8	264
8071	7	2021-11-26 10:34:09.553429+00	2021-11-26 10:34:09.553435+00	8	264
8072	8	2021-11-26 10:34:09.556549+00	2021-11-26 10:34:09.556555+00	8	264
8073	9	2021-11-26 10:34:09.559663+00	2021-11-26 10:34:09.559669+00	8	264
8074	10	2021-11-26 10:34:09.562819+00	2021-11-26 10:34:09.562825+00	8	264
8075	11	2021-11-26 10:34:09.565751+00	2021-11-26 10:34:09.565757+00	8	264
8076	12	2021-11-26 10:34:09.568755+00	2021-11-26 10:34:09.56876+00	8	264
8077	13	2021-11-26 10:34:09.57175+00	2021-11-26 10:34:09.571764+00	8	264
8078	14	2021-11-26 10:34:09.575144+00	2021-11-26 10:34:09.575151+00	8	264
8079	15	2021-11-26 10:34:09.577959+00	2021-11-26 10:34:09.577965+00	8	264
8080	16	2021-11-26 10:34:09.580788+00	2021-11-26 10:34:09.580793+00	8	264
8081	17	2021-11-26 10:34:09.583685+00	2021-11-26 10:34:09.583691+00	8	264
8082	18	2021-11-26 10:34:09.586625+00	2021-11-26 10:34:09.586633+00	8	264
8083	19	2021-11-26 10:34:09.589522+00	2021-11-26 10:34:09.589529+00	8	264
8084	20	2021-11-26 10:34:09.592784+00	2021-11-26 10:34:09.592794+00	8	264
8085	21	2021-11-26 10:34:09.595945+00	2021-11-26 10:34:09.595952+00	8	264
8086	22	2021-11-26 10:34:09.598955+00	2021-11-26 10:34:09.59896+00	8	264
8087	23	2021-11-26 10:34:09.601739+00	2021-11-26 10:34:09.601748+00	8	264
8088	24	2021-11-26 10:34:09.605421+00	2021-11-26 10:34:09.60543+00	8	264
8089	25	2021-11-26 10:34:09.608523+00	2021-11-26 10:34:09.60853+00	8	264
8090	26	2021-11-26 10:34:09.611461+00	2021-11-26 10:34:09.611468+00	8	264
8091	27	2021-11-26 10:34:09.614648+00	2021-11-26 10:34:09.614654+00	8	264
8092	28	2021-11-26 10:34:09.617617+00	2021-11-26 10:34:09.617622+00	8	264
8093	29	2021-11-26 10:34:09.620726+00	2021-11-26 10:34:09.620733+00	8	264
8094	30	2021-11-26 10:34:09.623605+00	2021-11-26 10:34:09.623611+00	8	264
8095	31	2021-11-26 10:34:09.626359+00	2021-11-26 10:34:09.626366+00	8	264
8096	32	2021-11-26 10:34:09.629246+00	2021-11-26 10:34:09.629251+00	8	264
8097	33	2021-11-26 10:34:09.632511+00	2021-11-26 10:34:09.632516+00	8	264
8098	34	2021-11-26 10:34:09.635547+00	2021-11-26 10:34:09.635553+00	8	264
8099	35	2021-11-26 10:34:09.638767+00	2021-11-26 10:34:09.638777+00	8	264
8100	36	2021-11-26 10:34:09.641864+00	2021-11-26 10:34:09.641871+00	8	264
8101	37	2021-11-26 10:34:09.644868+00	2021-11-26 10:34:09.644874+00	8	264
8102	38	2021-11-26 10:34:09.647679+00	2021-11-26 10:34:09.647684+00	8	264
8103	39	2021-11-26 10:34:09.650991+00	2021-11-26 10:34:09.650997+00	8	264
8104	40	2021-11-26 10:34:09.653991+00	2021-11-26 10:34:09.654001+00	8	264
8105	41	2021-11-26 10:34:09.673053+00	2021-11-26 10:34:09.673065+00	8	264
8106	42	2021-11-26 10:34:09.677329+00	2021-11-26 10:34:09.677357+00	8	264
8107	43	2021-11-26 10:34:09.683151+00	2021-11-26 10:34:09.68318+00	8	264
8108	44	2021-11-26 10:34:09.689415+00	2021-11-26 10:34:09.689446+00	8	264
8109	45	2021-11-26 10:34:09.695346+00	2021-11-26 10:34:09.695408+00	8	264
8110	46	2021-11-26 10:34:09.701057+00	2021-11-26 10:34:09.701082+00	8	264
8111	47	2021-11-26 10:34:09.707456+00	2021-11-26 10:34:09.70749+00	8	264
8112	48	2021-11-26 10:34:09.713315+00	2021-11-26 10:34:09.713343+00	8	264
8113	49	2021-11-26 10:34:09.719389+00	2021-11-26 10:34:09.719433+00	8	264
8114	0	2021-11-26 10:34:09.731318+00	2021-11-26 10:34:09.731344+00	8	265
8115	1	2021-11-26 10:34:09.737261+00	2021-11-26 10:34:09.737406+00	8	265
8116	2	2021-11-26 10:34:09.743423+00	2021-11-26 10:34:09.743471+00	8	265
8117	3	2021-11-26 10:34:09.749404+00	2021-11-26 10:34:09.749437+00	8	265
8118	4	2021-11-26 10:34:09.755544+00	2021-11-26 10:34:09.755571+00	8	265
8119	5	2021-11-26 10:34:09.76168+00	2021-11-26 10:34:09.761708+00	8	265
8120	6	2021-11-26 10:34:09.767814+00	2021-11-26 10:34:09.767841+00	8	265
8121	7	2021-11-26 10:34:09.773654+00	2021-11-26 10:34:09.773684+00	8	265
8122	8	2021-11-26 10:34:09.779869+00	2021-11-26 10:34:09.779903+00	8	265
8123	9	2021-11-26 10:34:09.786236+00	2021-11-26 10:34:09.786268+00	8	265
8124	10	2021-11-26 10:34:09.792426+00	2021-11-26 10:34:09.792458+00	8	265
8125	11	2021-11-26 10:34:09.798563+00	2021-11-26 10:34:09.798591+00	8	265
8126	12	2021-11-26 10:34:09.804431+00	2021-11-26 10:34:09.804461+00	8	265
8127	13	2021-11-26 10:34:09.810719+00	2021-11-26 10:34:09.810764+00	8	265
8128	14	2021-11-26 10:34:09.816961+00	2021-11-26 10:34:09.816988+00	8	265
8129	15	2021-11-26 10:34:09.82282+00	2021-11-26 10:34:09.822848+00	8	265
8130	16	2021-11-26 10:34:09.82868+00	2021-11-26 10:34:09.828708+00	8	265
8131	17	2021-11-26 10:34:09.834439+00	2021-11-26 10:34:09.834475+00	8	265
8132	18	2021-11-26 10:34:09.840876+00	2021-11-26 10:34:09.84091+00	8	265
8133	19	2021-11-26 10:34:09.846887+00	2021-11-26 10:34:09.846915+00	8	265
8134	20	2021-11-26 10:34:09.853062+00	2021-11-26 10:34:09.853101+00	8	265
8135	21	2021-11-26 10:34:09.859064+00	2021-11-26 10:34:09.859092+00	8	265
8136	22	2021-11-26 10:34:09.865238+00	2021-11-26 10:34:09.865264+00	8	265
8137	23	2021-11-26 10:34:09.871115+00	2021-11-26 10:34:09.871143+00	8	265
8138	24	2021-11-26 10:34:09.877796+00	2021-11-26 10:34:09.87784+00	8	265
8139	25	2021-11-26 10:34:09.884344+00	2021-11-26 10:34:09.884372+00	8	265
8140	26	2021-11-26 10:34:09.890413+00	2021-11-26 10:34:09.890441+00	8	265
8141	27	2021-11-26 10:34:09.896037+00	2021-11-26 10:34:09.896064+00	8	265
8142	28	2021-11-26 10:34:09.902114+00	2021-11-26 10:34:09.902151+00	8	265
8143	29	2021-11-26 10:34:09.908472+00	2021-11-26 10:34:09.908515+00	8	265
8144	30	2021-11-26 10:34:09.913976+00	2021-11-26 10:34:09.913995+00	8	265
8145	31	2021-11-26 10:34:09.918794+00	2021-11-26 10:34:09.918811+00	8	265
8146	32	2021-11-26 10:34:09.923235+00	2021-11-26 10:34:09.923253+00	8	265
8147	33	2021-11-26 10:34:09.928041+00	2021-11-26 10:34:09.928067+00	8	265
8148	34	2021-11-26 10:34:09.933592+00	2021-11-26 10:34:09.933617+00	8	265
8149	35	2021-11-26 10:34:09.939661+00	2021-11-26 10:34:09.939692+00	8	265
8150	36	2021-11-26 10:34:09.945764+00	2021-11-26 10:34:09.945793+00	8	265
8151	37	2021-11-26 10:34:09.951748+00	2021-11-26 10:34:09.951777+00	8	265
8152	38	2021-11-26 10:34:09.95756+00	2021-11-26 10:34:09.957591+00	8	265
8153	39	2021-11-26 10:34:09.963924+00	2021-11-26 10:34:09.963977+00	8	265
8154	40	2021-11-26 10:34:09.969974+00	2021-11-26 10:34:09.970002+00	8	265
8155	41	2021-11-26 10:34:09.975576+00	2021-11-26 10:34:09.975603+00	8	265
8156	42	2021-11-26 10:34:09.980972+00	2021-11-26 10:34:09.980998+00	8	265
8157	43	2021-11-26 10:34:09.986687+00	2021-11-26 10:34:09.986714+00	8	265
8158	44	2021-11-26 10:34:09.99222+00	2021-11-26 10:34:09.992248+00	8	265
8159	45	2021-11-26 10:34:09.997802+00	2021-11-26 10:34:09.99783+00	8	265
8160	46	2021-11-26 10:34:10.003497+00	2021-11-26 10:34:10.003538+00	8	265
8161	47	2021-11-26 10:34:10.009774+00	2021-11-26 10:34:10.009816+00	8	265
8162	48	2021-11-26 10:34:10.01583+00	2021-11-26 10:34:10.015855+00	8	265
8163	49	2021-11-26 10:34:10.023284+00	2021-11-26 10:34:10.023329+00	8	265
8164	0	2021-11-26 10:34:10.034798+00	2021-11-26 10:34:10.034825+00	8	266
8165	1	2021-11-26 10:34:10.040067+00	2021-11-26 10:34:10.040094+00	8	266
8166	2	2021-11-26 10:34:10.046159+00	2021-11-26 10:34:10.04619+00	8	266
8167	3	2021-11-26 10:34:10.05228+00	2021-11-26 10:34:10.052322+00	8	266
8168	4	2021-11-26 10:34:10.058568+00	2021-11-26 10:34:10.058596+00	8	266
8169	5	2021-11-26 10:34:10.066678+00	2021-11-26 10:34:10.066707+00	8	266
8170	6	2021-11-26 10:34:10.072368+00	2021-11-26 10:34:10.072397+00	8	266
8171	7	2021-11-26 10:34:10.078082+00	2021-11-26 10:34:10.07811+00	8	266
8172	8	2021-11-26 10:34:10.083791+00	2021-11-26 10:34:10.083816+00	8	266
8173	9	2021-11-26 10:34:10.090075+00	2021-11-26 10:34:10.090122+00	8	266
8174	10	2021-11-26 10:34:10.096809+00	2021-11-26 10:34:10.09684+00	8	266
8175	11	2021-11-26 10:34:10.102907+00	2021-11-26 10:34:10.102943+00	8	266
8176	12	2021-11-26 10:34:10.108435+00	2021-11-26 10:34:10.108457+00	8	266
8177	13	2021-11-26 10:34:10.113337+00	2021-11-26 10:34:10.113355+00	8	266
8178	14	2021-11-26 10:34:10.117764+00	2021-11-26 10:34:10.11778+00	8	266
8179	15	2021-11-26 10:34:10.121571+00	2021-11-26 10:34:10.121581+00	8	266
8180	16	2021-11-26 10:34:10.124931+00	2021-11-26 10:34:10.124941+00	8	266
8181	17	2021-11-26 10:34:10.127918+00	2021-11-26 10:34:10.127926+00	8	266
8182	18	2021-11-26 10:34:10.131181+00	2021-11-26 10:34:10.131187+00	8	266
8183	19	2021-11-26 10:34:10.134248+00	2021-11-26 10:34:10.134254+00	8	266
8184	20	2021-11-26 10:34:10.137294+00	2021-11-26 10:34:10.1373+00	8	266
8185	21	2021-11-26 10:34:10.140378+00	2021-11-26 10:34:10.140384+00	8	266
8186	22	2021-11-26 10:34:10.143527+00	2021-11-26 10:34:10.143533+00	8	266
8187	23	2021-11-26 10:34:10.146662+00	2021-11-26 10:34:10.146667+00	8	266
8188	24	2021-11-26 10:34:10.149749+00	2021-11-26 10:34:10.149755+00	8	266
8189	25	2021-11-26 10:34:10.15265+00	2021-11-26 10:34:10.152658+00	8	266
8190	26	2021-11-26 10:34:10.155771+00	2021-11-26 10:34:10.15578+00	8	266
8191	27	2021-11-26 10:34:10.158682+00	2021-11-26 10:34:10.158693+00	8	266
8192	28	2021-11-26 10:34:10.161794+00	2021-11-26 10:34:10.161803+00	8	266
8193	29	2021-11-26 10:34:10.164571+00	2021-11-26 10:34:10.164577+00	8	266
8194	30	2021-11-26 10:34:10.16735+00	2021-11-26 10:34:10.167362+00	8	266
8195	31	2021-11-26 10:34:10.170426+00	2021-11-26 10:34:10.170434+00	8	266
8196	32	2021-11-26 10:34:10.173655+00	2021-11-26 10:34:10.173666+00	8	266
8197	33	2021-11-26 10:34:10.176764+00	2021-11-26 10:34:10.17677+00	8	266
8198	34	2021-11-26 10:34:10.179679+00	2021-11-26 10:34:10.179685+00	8	266
8199	35	2021-11-26 10:34:10.182759+00	2021-11-26 10:34:10.182764+00	8	266
8200	36	2021-11-26 10:34:10.18566+00	2021-11-26 10:34:10.185669+00	8	266
8201	37	2021-11-26 10:34:10.188605+00	2021-11-26 10:34:10.188613+00	8	266
8202	38	2021-11-26 10:34:10.191626+00	2021-11-26 10:34:10.191637+00	8	266
8203	39	2021-11-26 10:34:10.194411+00	2021-11-26 10:34:10.194419+00	8	266
8204	40	2021-11-26 10:34:10.197199+00	2021-11-26 10:34:10.197207+00	8	266
8205	41	2021-11-26 10:34:10.200932+00	2021-11-26 10:34:10.20094+00	8	266
8206	42	2021-11-26 10:34:10.203997+00	2021-11-26 10:34:10.204009+00	8	266
8207	43	2021-11-26 10:34:10.207042+00	2021-11-26 10:34:10.20705+00	8	266
8208	44	2021-11-26 10:34:10.21002+00	2021-11-26 10:34:10.210027+00	8	266
8209	45	2021-11-26 10:34:10.212957+00	2021-11-26 10:34:10.212963+00	8	266
8210	46	2021-11-26 10:34:10.215758+00	2021-11-26 10:34:10.215764+00	8	266
8211	47	2021-11-26 10:34:10.218854+00	2021-11-26 10:34:10.218865+00	8	266
8212	48	2021-11-26 10:34:10.222102+00	2021-11-26 10:34:10.22211+00	8	266
8213	49	2021-11-26 10:34:10.225253+00	2021-11-26 10:34:10.225261+00	8	266
8214	0	2021-11-26 10:34:10.231297+00	2021-11-26 10:34:10.231303+00	8	267
8215	1	2021-11-26 10:34:10.234266+00	2021-11-26 10:34:10.234272+00	8	267
8216	2	2021-11-26 10:34:10.237407+00	2021-11-26 10:34:10.237418+00	8	267
8217	3	2021-11-26 10:34:10.240533+00	2021-11-26 10:34:10.240541+00	8	267
8218	4	2021-11-26 10:34:10.243461+00	2021-11-26 10:34:10.243466+00	8	267
8219	5	2021-11-26 10:34:10.246211+00	2021-11-26 10:34:10.246216+00	8	267
8220	6	2021-11-26 10:34:10.249263+00	2021-11-26 10:34:10.249268+00	8	267
8221	7	2021-11-26 10:34:10.252358+00	2021-11-26 10:34:10.252371+00	8	267
8222	8	2021-11-26 10:34:10.255828+00	2021-11-26 10:34:10.255836+00	8	267
8223	9	2021-11-26 10:34:10.259087+00	2021-11-26 10:34:10.259095+00	8	267
8224	10	2021-11-26 10:34:10.262609+00	2021-11-26 10:34:10.262615+00	8	267
8225	11	2021-11-26 10:34:10.266142+00	2021-11-26 10:34:10.266152+00	8	267
8226	12	2021-11-26 10:34:10.269371+00	2021-11-26 10:34:10.269382+00	8	267
8227	13	2021-11-26 10:34:10.272724+00	2021-11-26 10:34:10.272737+00	8	267
8228	14	2021-11-26 10:34:10.276174+00	2021-11-26 10:34:10.276184+00	8	267
8229	15	2021-11-26 10:34:10.279577+00	2021-11-26 10:34:10.279583+00	8	267
8230	16	2021-11-26 10:34:10.283823+00	2021-11-26 10:34:10.283837+00	8	267
8231	17	2021-11-26 10:34:10.287197+00	2021-11-26 10:34:10.287208+00	8	267
8232	18	2021-11-26 10:34:10.290455+00	2021-11-26 10:34:10.290464+00	8	267
8233	19	2021-11-26 10:34:10.295184+00	2021-11-26 10:34:10.295193+00	8	267
8234	20	2021-11-26 10:34:10.298451+00	2021-11-26 10:34:10.298457+00	8	267
8235	21	2021-11-26 10:34:10.301548+00	2021-11-26 10:34:10.301556+00	8	267
8236	22	2021-11-26 10:34:10.305306+00	2021-11-26 10:34:10.305319+00	8	267
8237	23	2021-11-26 10:34:10.308826+00	2021-11-26 10:34:10.308833+00	8	267
8238	24	2021-11-26 10:34:10.311994+00	2021-11-26 10:34:10.311999+00	8	267
8239	25	2021-11-26 10:34:10.31525+00	2021-11-26 10:34:10.315256+00	8	267
8240	26	2021-11-26 10:34:10.31864+00	2021-11-26 10:34:10.318647+00	8	267
8241	27	2021-11-26 10:34:10.322168+00	2021-11-26 10:34:10.322178+00	8	267
8242	28	2021-11-26 10:34:10.32555+00	2021-11-26 10:34:10.325566+00	8	267
8243	29	2021-11-26 10:34:10.329171+00	2021-11-26 10:34:10.32918+00	8	267
8244	30	2021-11-26 10:34:10.332306+00	2021-11-26 10:34:10.332313+00	8	267
8245	31	2021-11-26 10:34:10.335289+00	2021-11-26 10:34:10.335298+00	8	267
8246	32	2021-11-26 10:34:10.338292+00	2021-11-26 10:34:10.338302+00	8	267
8247	33	2021-11-26 10:34:10.341405+00	2021-11-26 10:34:10.341414+00	8	267
8248	34	2021-11-26 10:34:10.344346+00	2021-11-26 10:34:10.344354+00	8	267
8249	35	2021-11-26 10:34:10.347458+00	2021-11-26 10:34:10.347464+00	8	267
8250	36	2021-11-26 10:34:10.350415+00	2021-11-26 10:34:10.350422+00	8	267
8251	37	2021-11-26 10:34:10.353678+00	2021-11-26 10:34:10.353686+00	8	267
8252	38	2021-11-26 10:34:10.3574+00	2021-11-26 10:34:10.357426+00	8	267
8253	39	2021-11-26 10:34:10.363306+00	2021-11-26 10:34:10.363333+00	8	267
8254	40	2021-11-26 10:34:10.369185+00	2021-11-26 10:34:10.36921+00	8	267
8255	41	2021-11-26 10:34:10.375498+00	2021-11-26 10:34:10.375532+00	8	267
8256	42	2021-11-26 10:34:10.381124+00	2021-11-26 10:34:10.381151+00	8	267
8257	43	2021-11-26 10:34:10.386999+00	2021-11-26 10:34:10.387041+00	8	267
8258	44	2021-11-26 10:34:10.393103+00	2021-11-26 10:34:10.393132+00	8	267
8259	45	2021-11-26 10:34:10.39889+00	2021-11-26 10:34:10.398918+00	8	267
8260	46	2021-11-26 10:34:10.404379+00	2021-11-26 10:34:10.404407+00	8	267
8261	47	2021-11-26 10:34:10.409335+00	2021-11-26 10:34:10.409361+00	8	267
8262	48	2021-11-26 10:34:10.41481+00	2021-11-26 10:34:10.414836+00	8	267
8263	49	2021-11-26 10:34:10.420597+00	2021-11-26 10:34:10.420628+00	8	267
8264	0	2021-11-26 10:34:10.432254+00	2021-11-26 10:34:10.432281+00	8	268
8265	1	2021-11-26 10:34:10.437989+00	2021-11-26 10:34:10.438015+00	8	268
8266	2	2021-11-26 10:34:10.442911+00	2021-11-26 10:34:10.442918+00	8	268
8267	3	2021-11-26 10:34:10.446251+00	2021-11-26 10:34:10.446257+00	8	268
8268	4	2021-11-26 10:34:10.449721+00	2021-11-26 10:34:10.449727+00	8	268
8269	5	2021-11-26 10:34:10.453088+00	2021-11-26 10:34:10.453098+00	8	268
8270	6	2021-11-26 10:34:10.456385+00	2021-11-26 10:34:10.456395+00	8	268
8271	7	2021-11-26 10:34:10.459531+00	2021-11-26 10:34:10.459539+00	8	268
8272	8	2021-11-26 10:34:10.462599+00	2021-11-26 10:34:10.462605+00	8	268
8273	9	2021-11-26 10:34:10.465366+00	2021-11-26 10:34:10.465372+00	8	268
8274	10	2021-11-26 10:34:10.468225+00	2021-11-26 10:34:10.468232+00	8	268
8275	11	2021-11-26 10:34:10.471235+00	2021-11-26 10:34:10.471243+00	8	268
8276	12	2021-11-26 10:34:10.474269+00	2021-11-26 10:34:10.474276+00	8	268
8277	13	2021-11-26 10:34:10.477362+00	2021-11-26 10:34:10.477368+00	8	268
8278	14	2021-11-26 10:34:10.480383+00	2021-11-26 10:34:10.480392+00	8	268
8279	15	2021-11-26 10:34:10.483388+00	2021-11-26 10:34:10.483395+00	8	268
8280	16	2021-11-26 10:34:10.486428+00	2021-11-26 10:34:10.486438+00	8	268
8281	17	2021-11-26 10:34:10.489387+00	2021-11-26 10:34:10.489396+00	8	268
8282	18	2021-11-26 10:34:10.492344+00	2021-11-26 10:34:10.492352+00	8	268
8283	19	2021-11-26 10:34:10.496522+00	2021-11-26 10:34:10.496527+00	8	268
8284	20	2021-11-26 10:34:10.499325+00	2021-11-26 10:34:10.499331+00	8	268
8285	21	2021-11-26 10:34:10.502081+00	2021-11-26 10:34:10.502087+00	8	268
8286	22	2021-11-26 10:34:10.504905+00	2021-11-26 10:34:10.504912+00	8	268
8287	23	2021-11-26 10:34:10.507763+00	2021-11-26 10:34:10.507769+00	8	268
8288	24	2021-11-26 10:34:10.510673+00	2021-11-26 10:34:10.510679+00	8	268
8289	25	2021-11-26 10:34:10.513674+00	2021-11-26 10:34:10.513679+00	8	268
8290	26	2021-11-26 10:34:10.51682+00	2021-11-26 10:34:10.516826+00	8	268
8291	27	2021-11-26 10:34:10.519641+00	2021-11-26 10:34:10.519646+00	8	268
8292	28	2021-11-26 10:34:10.5229+00	2021-11-26 10:34:10.52291+00	8	268
8293	29	2021-11-26 10:34:10.525897+00	2021-11-26 10:34:10.525903+00	8	268
8294	30	2021-11-26 10:34:10.528712+00	2021-11-26 10:34:10.528718+00	8	268
8295	31	2021-11-26 10:34:10.531587+00	2021-11-26 10:34:10.531593+00	8	268
8296	32	2021-11-26 10:34:10.534467+00	2021-11-26 10:34:10.534472+00	8	268
8297	33	2021-11-26 10:34:10.537357+00	2021-11-26 10:34:10.537364+00	8	268
8298	34	2021-11-26 10:34:10.540314+00	2021-11-26 10:34:10.540322+00	8	268
8299	35	2021-11-26 10:34:10.543546+00	2021-11-26 10:34:10.543555+00	8	268
8300	36	2021-11-26 10:34:10.54649+00	2021-11-26 10:34:10.546496+00	8	268
8301	37	2021-11-26 10:34:10.549649+00	2021-11-26 10:34:10.549655+00	8	268
8302	38	2021-11-26 10:34:10.55263+00	2021-11-26 10:34:10.55264+00	8	268
8303	39	2021-11-26 10:34:10.555698+00	2021-11-26 10:34:10.555707+00	8	268
8304	40	2021-11-26 10:34:10.558718+00	2021-11-26 10:34:10.558725+00	8	268
8305	41	2021-11-26 10:34:10.561525+00	2021-11-26 10:34:10.561532+00	8	268
8306	42	2021-11-26 10:34:10.564534+00	2021-11-26 10:34:10.56454+00	8	268
8307	43	2021-11-26 10:34:10.567459+00	2021-11-26 10:34:10.567464+00	8	268
8308	44	2021-11-26 10:34:10.570416+00	2021-11-26 10:34:10.570424+00	8	268
8309	45	2021-11-26 10:34:10.573328+00	2021-11-26 10:34:10.573334+00	8	268
8310	46	2021-11-26 10:34:10.576393+00	2021-11-26 10:34:10.576399+00	8	268
8311	47	2021-11-26 10:34:10.579297+00	2021-11-26 10:34:10.579302+00	8	268
8312	48	2021-11-26 10:34:10.582052+00	2021-11-26 10:34:10.582057+00	8	268
8313	49	2021-11-26 10:34:10.584707+00	2021-11-26 10:34:10.584712+00	8	268
8314	0	2021-11-26 10:34:10.590842+00	2021-11-26 10:34:10.590852+00	8	269
8315	1	2021-11-26 10:34:10.594102+00	2021-11-26 10:34:10.59411+00	8	269
8316	2	2021-11-26 10:34:10.597222+00	2021-11-26 10:34:10.59723+00	8	269
8317	3	2021-11-26 10:34:10.600315+00	2021-11-26 10:34:10.600322+00	8	269
8318	4	2021-11-26 10:34:10.603588+00	2021-11-26 10:34:10.603598+00	8	269
8319	5	2021-11-26 10:34:10.606768+00	2021-11-26 10:34:10.606778+00	8	269
8320	6	2021-11-26 10:34:10.610049+00	2021-11-26 10:34:10.610056+00	8	269
8321	7	2021-11-26 10:34:10.613197+00	2021-11-26 10:34:10.613203+00	8	269
8322	8	2021-11-26 10:34:10.616339+00	2021-11-26 10:34:10.616345+00	8	269
8323	9	2021-11-26 10:34:10.619496+00	2021-11-26 10:34:10.619504+00	8	269
8324	10	2021-11-26 10:34:10.622575+00	2021-11-26 10:34:10.622582+00	8	269
8325	11	2021-11-26 10:34:10.625521+00	2021-11-26 10:34:10.625528+00	8	269
8326	12	2021-11-26 10:34:10.628689+00	2021-11-26 10:34:10.628695+00	8	269
8327	13	2021-11-26 10:34:10.631805+00	2021-11-26 10:34:10.631813+00	8	269
8328	14	2021-11-26 10:34:10.634841+00	2021-11-26 10:34:10.634852+00	8	269
8329	15	2021-11-26 10:34:10.637971+00	2021-11-26 10:34:10.63798+00	8	269
8330	16	2021-11-26 10:34:10.640795+00	2021-11-26 10:34:10.640802+00	8	269
8331	17	2021-11-26 10:34:10.643969+00	2021-11-26 10:34:10.643976+00	8	269
8332	18	2021-11-26 10:34:10.646935+00	2021-11-26 10:34:10.646941+00	8	269
8333	19	2021-11-26 10:34:10.649891+00	2021-11-26 10:34:10.649896+00	8	269
8334	20	2021-11-26 10:34:10.652879+00	2021-11-26 10:34:10.652885+00	8	269
8335	21	2021-11-26 10:34:10.65573+00	2021-11-26 10:34:10.655736+00	8	269
8336	22	2021-11-26 10:34:10.658735+00	2021-11-26 10:34:10.65874+00	8	269
8337	23	2021-11-26 10:34:10.661591+00	2021-11-26 10:34:10.661596+00	8	269
8338	24	2021-11-26 10:34:10.664465+00	2021-11-26 10:34:10.664471+00	8	269
8339	25	2021-11-26 10:34:10.667229+00	2021-11-26 10:34:10.667234+00	8	269
8340	26	2021-11-26 10:34:10.670054+00	2021-11-26 10:34:10.670064+00	8	269
8341	27	2021-11-26 10:34:10.673542+00	2021-11-26 10:34:10.673552+00	8	269
8342	28	2021-11-26 10:34:10.676758+00	2021-11-26 10:34:10.676765+00	8	269
8343	29	2021-11-26 10:34:10.679807+00	2021-11-26 10:34:10.679813+00	8	269
8344	30	2021-11-26 10:34:10.682851+00	2021-11-26 10:34:10.682856+00	8	269
8345	31	2021-11-26 10:34:10.686108+00	2021-11-26 10:34:10.686116+00	8	269
8346	32	2021-11-26 10:34:10.689273+00	2021-11-26 10:34:10.689281+00	8	269
8347	33	2021-11-26 10:34:10.695563+00	2021-11-26 10:34:10.695573+00	8	269
8348	34	2021-11-26 10:34:10.69858+00	2021-11-26 10:34:10.698588+00	8	269
8349	35	2021-11-26 10:34:10.70163+00	2021-11-26 10:34:10.701637+00	8	269
8350	36	2021-11-26 10:34:10.704691+00	2021-11-26 10:34:10.7047+00	8	269
8351	37	2021-11-26 10:34:10.707684+00	2021-11-26 10:34:10.707693+00	8	269
8352	38	2021-11-26 10:34:10.710489+00	2021-11-26 10:34:10.710495+00	8	269
8353	39	2021-11-26 10:34:10.713305+00	2021-11-26 10:34:10.71331+00	8	269
8354	40	2021-11-26 10:34:10.716013+00	2021-11-26 10:34:10.716022+00	8	269
8355	41	2021-11-26 10:34:10.718869+00	2021-11-26 10:34:10.718877+00	8	269
8356	42	2021-11-26 10:34:10.721741+00	2021-11-26 10:34:10.72175+00	8	269
8357	43	2021-11-26 10:34:10.72662+00	2021-11-26 10:34:10.72663+00	8	269
8358	44	2021-11-26 10:34:10.729717+00	2021-11-26 10:34:10.729724+00	8	269
8359	45	2021-11-26 10:34:10.732762+00	2021-11-26 10:34:10.732768+00	8	269
8360	46	2021-11-26 10:34:10.735646+00	2021-11-26 10:34:10.735652+00	8	269
8361	47	2021-11-26 10:34:10.738869+00	2021-11-26 10:34:10.738879+00	8	269
8362	48	2021-11-26 10:34:10.741926+00	2021-11-26 10:34:10.741933+00	8	269
8363	49	2021-11-26 10:34:10.744833+00	2021-11-26 10:34:10.744839+00	8	269
8364	0	2021-11-26 10:34:10.751127+00	2021-11-26 10:34:10.751132+00	8	270
8365	1	2021-11-26 10:34:10.754231+00	2021-11-26 10:34:10.754243+00	8	270
8366	2	2021-11-26 10:34:10.757447+00	2021-11-26 10:34:10.757457+00	8	270
8367	3	2021-11-26 10:34:10.760724+00	2021-11-26 10:34:10.760731+00	8	270
8368	4	2021-11-26 10:34:10.763817+00	2021-11-26 10:34:10.763823+00	8	270
8369	5	2021-11-26 10:34:10.766839+00	2021-11-26 10:34:10.766845+00	8	270
8370	6	2021-11-26 10:34:10.769889+00	2021-11-26 10:34:10.769896+00	8	270
8371	7	2021-11-26 10:34:10.772917+00	2021-11-26 10:34:10.772925+00	8	270
8372	8	2021-11-26 10:34:10.777992+00	2021-11-26 10:34:10.778003+00	8	270
8373	9	2021-11-26 10:34:10.780999+00	2021-11-26 10:34:10.781005+00	8	270
8374	10	2021-11-26 10:34:10.784+00	2021-11-26 10:34:10.784005+00	8	270
8375	11	2021-11-26 10:34:10.787123+00	2021-11-26 10:34:10.787134+00	8	270
8376	12	2021-11-26 10:34:10.790304+00	2021-11-26 10:34:10.790311+00	8	270
8377	13	2021-11-26 10:34:10.793331+00	2021-11-26 10:34:10.793336+00	8	270
8378	14	2021-11-26 10:34:10.796218+00	2021-11-26 10:34:10.796224+00	8	270
8379	15	2021-11-26 10:34:10.79923+00	2021-11-26 10:34:10.799236+00	8	270
8380	16	2021-11-26 10:34:10.802153+00	2021-11-26 10:34:10.802162+00	8	270
8381	17	2021-11-26 10:34:10.805658+00	2021-11-26 10:34:10.805669+00	8	270
8382	18	2021-11-26 10:34:10.813814+00	2021-11-26 10:34:10.81384+00	8	270
8383	19	2021-11-26 10:34:10.819552+00	2021-11-26 10:34:10.81958+00	8	270
8384	20	2021-11-26 10:34:10.825567+00	2021-11-26 10:34:10.825608+00	8	270
8385	21	2021-11-26 10:34:10.831666+00	2021-11-26 10:34:10.831695+00	8	270
8386	22	2021-11-26 10:34:10.837265+00	2021-11-26 10:34:10.837308+00	8	270
8387	23	2021-11-26 10:34:10.843775+00	2021-11-26 10:34:10.84381+00	8	270
8388	24	2021-11-26 10:34:10.850117+00	2021-11-26 10:34:10.850161+00	8	270
8389	25	2021-11-26 10:34:10.855855+00	2021-11-26 10:34:10.855875+00	8	270
8390	26	2021-11-26 10:34:10.860556+00	2021-11-26 10:34:10.860575+00	8	270
8391	27	2021-11-26 10:34:10.864968+00	2021-11-26 10:34:10.864986+00	8	270
8392	28	2021-11-26 10:34:10.869626+00	2021-11-26 10:34:10.869644+00	8	270
8393	29	2021-11-26 10:34:10.873944+00	2021-11-26 10:34:10.873954+00	8	270
8394	30	2021-11-26 10:34:10.877177+00	2021-11-26 10:34:10.877186+00	8	270
8395	31	2021-11-26 10:34:10.880402+00	2021-11-26 10:34:10.880409+00	8	270
8396	32	2021-11-26 10:34:10.883481+00	2021-11-26 10:34:10.883487+00	8	270
8397	33	2021-11-26 10:34:10.886643+00	2021-11-26 10:34:10.886652+00	8	270
8398	34	2021-11-26 10:34:10.889963+00	2021-11-26 10:34:10.889973+00	8	270
8399	35	2021-11-26 10:34:10.893195+00	2021-11-26 10:34:10.893201+00	8	270
8400	36	2021-11-26 10:34:10.896259+00	2021-11-26 10:34:10.896265+00	8	270
8401	37	2021-11-26 10:34:10.899469+00	2021-11-26 10:34:10.899475+00	8	270
8402	38	2021-11-26 10:34:10.902823+00	2021-11-26 10:34:10.902836+00	8	270
8403	39	2021-11-26 10:34:10.905851+00	2021-11-26 10:34:10.905858+00	8	270
8404	40	2021-11-26 10:34:10.90904+00	2021-11-26 10:34:10.90905+00	8	270
8405	41	2021-11-26 10:34:10.913452+00	2021-11-26 10:34:10.913458+00	8	270
8406	42	2021-11-26 10:34:10.917218+00	2021-11-26 10:34:10.917242+00	8	270
8407	43	2021-11-26 10:34:10.923268+00	2021-11-26 10:34:10.923301+00	8	270
8408	44	2021-11-26 10:34:10.929172+00	2021-11-26 10:34:10.929202+00	8	270
8409	45	2021-11-26 10:34:10.935015+00	2021-11-26 10:34:10.935042+00	8	270
8410	46	2021-11-26 10:34:10.941432+00	2021-11-26 10:34:10.941465+00	8	270
8411	47	2021-11-26 10:34:10.947585+00	2021-11-26 10:34:10.94761+00	8	270
8412	48	2021-11-26 10:34:10.953643+00	2021-11-26 10:34:10.953677+00	8	270
8413	49	2021-11-26 10:34:10.960119+00	2021-11-26 10:34:10.960152+00	8	270
8414	0	2021-11-26 10:34:10.971303+00	2021-11-26 10:34:10.971318+00	8	271
8415	1	2021-11-26 10:34:10.97499+00	2021-11-26 10:34:10.975001+00	8	271
8416	2	2021-11-26 10:34:10.979694+00	2021-11-26 10:34:10.979701+00	8	271
8417	3	2021-11-26 10:34:10.982752+00	2021-11-26 10:34:10.982758+00	8	271
8418	4	2021-11-26 10:34:10.985952+00	2021-11-26 10:34:10.985959+00	8	271
8419	5	2021-11-26 10:34:10.989106+00	2021-11-26 10:34:10.989114+00	8	271
8420	6	2021-11-26 10:34:10.99225+00	2021-11-26 10:34:10.992259+00	8	271
8421	7	2021-11-26 10:34:10.995468+00	2021-11-26 10:34:10.995475+00	8	271
8422	8	2021-11-26 10:34:10.998561+00	2021-11-26 10:34:10.998568+00	8	271
8423	9	2021-11-26 10:34:11.002021+00	2021-11-26 10:34:11.002032+00	8	271
8424	10	2021-11-26 10:34:11.00541+00	2021-11-26 10:34:11.005419+00	8	271
8425	11	2021-11-26 10:34:11.008825+00	2021-11-26 10:34:11.008832+00	8	271
8426	12	2021-11-26 10:34:11.013035+00	2021-11-26 10:34:11.013041+00	8	271
8427	13	2021-11-26 10:34:11.016247+00	2021-11-26 10:34:11.016253+00	8	271
8428	14	2021-11-26 10:34:11.019435+00	2021-11-26 10:34:11.019451+00	8	271
8429	15	2021-11-26 10:34:11.022779+00	2021-11-26 10:34:11.022787+00	8	271
8430	16	2021-11-26 10:34:11.025878+00	2021-11-26 10:34:11.025885+00	8	271
8431	17	2021-11-26 10:34:11.028829+00	2021-11-26 10:34:11.028837+00	8	271
8432	18	2021-11-26 10:34:11.031694+00	2021-11-26 10:34:11.031703+00	8	271
8433	19	2021-11-26 10:34:11.034633+00	2021-11-26 10:34:11.034638+00	8	271
8434	20	2021-11-26 10:34:11.037569+00	2021-11-26 10:34:11.037579+00	8	271
8435	21	2021-11-26 10:34:11.040707+00	2021-11-26 10:34:11.040714+00	8	271
8436	22	2021-11-26 10:34:11.043643+00	2021-11-26 10:34:11.043649+00	8	271
8437	23	2021-11-26 10:34:11.046666+00	2021-11-26 10:34:11.046671+00	8	271
8438	24	2021-11-26 10:34:11.049434+00	2021-11-26 10:34:11.04944+00	8	271
8439	25	2021-11-26 10:34:11.052533+00	2021-11-26 10:34:11.052545+00	8	271
8440	26	2021-11-26 10:34:11.055638+00	2021-11-26 10:34:11.055647+00	8	271
8441	27	2021-11-26 10:34:11.058611+00	2021-11-26 10:34:11.058619+00	8	271
8442	28	2021-11-26 10:34:11.061575+00	2021-11-26 10:34:11.061582+00	8	271
8443	29	2021-11-26 10:34:11.064678+00	2021-11-26 10:34:11.064687+00	8	271
8444	30	2021-11-26 10:34:11.067689+00	2021-11-26 10:34:11.067697+00	8	271
8445	31	2021-11-26 10:34:11.070812+00	2021-11-26 10:34:11.070821+00	8	271
8446	32	2021-11-26 10:34:11.074008+00	2021-11-26 10:34:11.074017+00	8	271
8447	33	2021-11-26 10:34:11.077153+00	2021-11-26 10:34:11.077161+00	8	271
8448	34	2021-11-26 10:34:11.080713+00	2021-11-26 10:34:11.080719+00	8	271
8449	35	2021-11-26 10:34:11.084073+00	2021-11-26 10:34:11.084078+00	8	271
8450	36	2021-11-26 10:34:11.087306+00	2021-11-26 10:34:11.087312+00	8	271
8451	37	2021-11-26 10:34:11.090494+00	2021-11-26 10:34:11.0905+00	8	271
8452	38	2021-11-26 10:34:11.093698+00	2021-11-26 10:34:11.093704+00	8	271
8453	39	2021-11-26 10:34:11.097007+00	2021-11-26 10:34:11.097013+00	8	271
8454	40	2021-11-26 10:34:11.100145+00	2021-11-26 10:34:11.100151+00	8	271
8455	41	2021-11-26 10:34:11.103545+00	2021-11-26 10:34:11.103556+00	8	271
8456	42	2021-11-26 10:34:11.106862+00	2021-11-26 10:34:11.106871+00	8	271
8457	43	2021-11-26 10:34:11.110104+00	2021-11-26 10:34:11.11011+00	8	271
8458	44	2021-11-26 10:34:11.113165+00	2021-11-26 10:34:11.113171+00	8	271
8459	45	2021-11-26 10:34:11.116215+00	2021-11-26 10:34:11.11622+00	8	271
8460	46	2021-11-26 10:34:11.119451+00	2021-11-26 10:34:11.119463+00	8	271
8461	47	2021-11-26 10:34:11.122804+00	2021-11-26 10:34:11.122814+00	8	271
8462	48	2021-11-26 10:34:11.126153+00	2021-11-26 10:34:11.126163+00	8	271
8463	49	2021-11-26 10:34:11.129454+00	2021-11-26 10:34:11.12946+00	8	271
8464	0	2021-11-26 10:34:11.136012+00	2021-11-26 10:34:11.136023+00	8	272
8465	1	2021-11-26 10:34:11.139465+00	2021-11-26 10:34:11.139477+00	8	272
8466	2	2021-11-26 10:34:11.142872+00	2021-11-26 10:34:11.142879+00	8	272
8467	3	2021-11-26 10:34:11.145806+00	2021-11-26 10:34:11.145812+00	8	272
8468	4	2021-11-26 10:34:11.148982+00	2021-11-26 10:34:11.148988+00	8	272
8469	5	2021-11-26 10:34:11.152124+00	2021-11-26 10:34:11.152131+00	8	272
8470	6	2021-11-26 10:34:11.155157+00	2021-11-26 10:34:11.155163+00	8	272
8471	7	2021-11-26 10:34:11.158168+00	2021-11-26 10:34:11.158174+00	8	272
8472	8	2021-11-26 10:34:11.161123+00	2021-11-26 10:34:11.161129+00	8	272
8473	9	2021-11-26 10:34:11.164383+00	2021-11-26 10:34:11.16439+00	8	272
8474	10	2021-11-26 10:34:11.167846+00	2021-11-26 10:34:11.167858+00	8	272
8475	11	2021-11-26 10:34:11.171244+00	2021-11-26 10:34:11.171254+00	8	272
8476	12	2021-11-26 10:34:11.174496+00	2021-11-26 10:34:11.174505+00	8	272
8477	13	2021-11-26 10:34:11.210156+00	2021-11-26 10:34:11.210167+00	8	272
8478	14	2021-11-26 10:34:11.213941+00	2021-11-26 10:34:11.213948+00	8	272
8479	15	2021-11-26 10:34:11.217303+00	2021-11-26 10:34:11.217314+00	8	272
8480	16	2021-11-26 10:34:11.220803+00	2021-11-26 10:34:11.220816+00	8	272
8481	17	2021-11-26 10:34:11.224584+00	2021-11-26 10:34:11.224595+00	8	272
8482	18	2021-11-26 10:34:11.227947+00	2021-11-26 10:34:11.227955+00	8	272
8483	19	2021-11-26 10:34:11.231008+00	2021-11-26 10:34:11.231014+00	8	272
8484	20	2021-11-26 10:34:11.233901+00	2021-11-26 10:34:11.233906+00	8	272
8485	21	2021-11-26 10:34:11.237128+00	2021-11-26 10:34:11.237135+00	8	272
8486	22	2021-11-26 10:34:11.23993+00	2021-11-26 10:34:11.239935+00	8	272
8487	23	2021-11-26 10:34:11.242935+00	2021-11-26 10:34:11.24294+00	8	272
8488	24	2021-11-26 10:34:11.246382+00	2021-11-26 10:34:11.246403+00	8	272
8489	25	2021-11-26 10:34:11.251308+00	2021-11-26 10:34:11.251329+00	8	272
8490	26	2021-11-26 10:34:11.256356+00	2021-11-26 10:34:11.256383+00	8	272
8491	27	2021-11-26 10:34:11.262359+00	2021-11-26 10:34:11.262385+00	8	272
8492	28	2021-11-26 10:34:11.267894+00	2021-11-26 10:34:11.267917+00	8	272
8493	29	2021-11-26 10:34:11.273391+00	2021-11-26 10:34:11.2734+00	8	272
8494	30	2021-11-26 10:34:11.276821+00	2021-11-26 10:34:11.276832+00	8	272
8495	31	2021-11-26 10:34:11.280375+00	2021-11-26 10:34:11.280384+00	8	272
8496	32	2021-11-26 10:34:11.283541+00	2021-11-26 10:34:11.283548+00	8	272
8497	33	2021-11-26 10:34:11.286809+00	2021-11-26 10:34:11.28682+00	8	272
8498	34	2021-11-26 10:34:11.290139+00	2021-11-26 10:34:11.290148+00	8	272
8499	35	2021-11-26 10:34:11.293553+00	2021-11-26 10:34:11.293561+00	8	272
8500	36	2021-11-26 10:34:11.296736+00	2021-11-26 10:34:11.296743+00	8	272
8501	37	2021-11-26 10:34:11.299738+00	2021-11-26 10:34:11.299744+00	8	272
8502	38	2021-11-26 10:34:11.302597+00	2021-11-26 10:34:11.302603+00	8	272
8503	39	2021-11-26 10:34:11.305389+00	2021-11-26 10:34:11.305395+00	8	272
8504	40	2021-11-26 10:34:11.308093+00	2021-11-26 10:34:11.308098+00	8	272
8505	41	2021-11-26 10:34:11.310874+00	2021-11-26 10:34:11.310879+00	8	272
8506	42	2021-11-26 10:34:11.313708+00	2021-11-26 10:34:11.313713+00	8	272
8507	43	2021-11-26 10:34:11.318131+00	2021-11-26 10:34:11.318137+00	8	272
8508	44	2021-11-26 10:34:11.323887+00	2021-11-26 10:34:11.323898+00	8	272
8509	45	2021-11-26 10:34:11.327824+00	2021-11-26 10:34:11.327831+00	8	272
8510	46	2021-11-26 10:34:11.333488+00	2021-11-26 10:34:11.333501+00	8	272
8511	47	2021-11-26 10:34:11.338947+00	2021-11-26 10:34:11.338961+00	8	272
8512	48	2021-11-26 10:34:11.344312+00	2021-11-26 10:34:11.344326+00	8	272
8513	49	2021-11-26 10:34:11.349617+00	2021-11-26 10:34:11.349624+00	8	272
8514	0	2021-11-26 10:34:11.359789+00	2021-11-26 10:34:11.359798+00	8	273
8515	1	2021-11-26 10:34:11.363591+00	2021-11-26 10:34:11.363598+00	8	273
8516	2	2021-11-26 10:34:11.36747+00	2021-11-26 10:34:11.367476+00	8	273
8517	3	2021-11-26 10:34:11.371378+00	2021-11-26 10:34:11.371388+00	8	273
8518	4	2021-11-26 10:34:11.374854+00	2021-11-26 10:34:11.374861+00	8	273
8519	5	2021-11-26 10:34:11.378643+00	2021-11-26 10:34:11.378649+00	8	273
8520	6	2021-11-26 10:34:11.382284+00	2021-11-26 10:34:11.38229+00	8	273
8521	7	2021-11-26 10:34:11.387108+00	2021-11-26 10:34:11.387134+00	8	273
8522	8	2021-11-26 10:34:11.393311+00	2021-11-26 10:34:11.39332+00	8	273
8523	9	2021-11-26 10:34:11.39687+00	2021-11-26 10:34:11.396878+00	8	273
8524	10	2021-11-26 10:34:11.400657+00	2021-11-26 10:34:11.400663+00	8	273
8525	11	2021-11-26 10:34:11.404589+00	2021-11-26 10:34:11.4046+00	8	273
8526	12	2021-11-26 10:34:11.408169+00	2021-11-26 10:34:11.408177+00	8	273
8527	13	2021-11-26 10:34:11.411768+00	2021-11-26 10:34:11.411774+00	8	273
8528	14	2021-11-26 10:34:11.415592+00	2021-11-26 10:34:11.415597+00	8	273
8529	15	2021-11-26 10:34:11.420232+00	2021-11-26 10:34:11.420241+00	8	273
8530	16	2021-11-26 10:34:11.425639+00	2021-11-26 10:34:11.425647+00	8	273
8531	17	2021-11-26 10:34:11.431034+00	2021-11-26 10:34:11.431045+00	8	273
8532	18	2021-11-26 10:34:11.436356+00	2021-11-26 10:34:11.436366+00	8	273
8533	19	2021-11-26 10:34:11.441613+00	2021-11-26 10:34:11.441623+00	8	273
8534	20	2021-11-26 10:34:11.446853+00	2021-11-26 10:34:11.44686+00	8	273
8535	21	2021-11-26 10:34:11.452117+00	2021-11-26 10:34:11.452123+00	8	273
8536	22	2021-11-26 10:34:11.457392+00	2021-11-26 10:34:11.457398+00	8	273
8537	23	2021-11-26 10:34:11.562307+00	2021-11-26 10:34:11.562341+00	8	273
8538	24	2021-11-26 10:34:11.569609+00	2021-11-26 10:34:11.569638+00	8	273
8539	25	2021-11-26 10:34:11.576789+00	2021-11-26 10:34:11.576817+00	8	273
8540	26	2021-11-26 10:34:11.584187+00	2021-11-26 10:34:11.584212+00	8	273
8541	27	2021-11-26 10:34:11.591298+00	2021-11-26 10:34:11.591333+00	8	273
8542	28	2021-11-26 10:34:11.60009+00	2021-11-26 10:34:11.600119+00	8	273
8543	29	2021-11-26 10:34:11.699325+00	2021-11-26 10:34:11.699382+00	8	273
8544	30	2021-11-26 10:34:11.706721+00	2021-11-26 10:34:11.706747+00	8	273
8545	31	2021-11-26 10:34:11.713908+00	2021-11-26 10:34:11.713937+00	8	273
8546	32	2021-11-26 10:34:11.720843+00	2021-11-26 10:34:11.720872+00	8	273
8547	33	2021-11-26 10:34:11.727933+00	2021-11-26 10:34:11.727963+00	8	273
8548	34	2021-11-26 10:34:11.734671+00	2021-11-26 10:34:11.734698+00	8	273
8549	35	2021-11-26 10:34:11.74214+00	2021-11-26 10:34:11.742184+00	8	273
8550	36	2021-11-26 10:34:11.748976+00	2021-11-26 10:34:11.749002+00	8	273
8551	37	2021-11-26 10:34:11.756178+00	2021-11-26 10:34:11.756206+00	8	273
8552	38	2021-11-26 10:34:11.763159+00	2021-11-26 10:34:11.763185+00	8	273
8553	39	2021-11-26 10:34:11.770146+00	2021-11-26 10:34:11.770192+00	8	273
8554	40	2021-11-26 10:34:11.777328+00	2021-11-26 10:34:11.777371+00	8	273
8555	41	2021-11-26 10:34:11.783894+00	2021-11-26 10:34:11.783922+00	8	273
8556	42	2021-11-26 10:34:11.790899+00	2021-11-26 10:34:11.79093+00	8	273
8557	43	2021-11-26 10:34:11.796212+00	2021-11-26 10:34:11.796239+00	8	273
8558	44	2021-11-26 10:34:11.804222+00	2021-11-26 10:34:11.804252+00	8	273
8559	45	2021-11-26 10:34:11.811765+00	2021-11-26 10:34:11.811797+00	8	273
8560	46	2021-11-26 10:34:11.839258+00	2021-11-26 10:34:11.839291+00	8	273
8561	47	2021-11-26 10:34:11.84646+00	2021-11-26 10:34:11.846487+00	8	273
8562	48	2021-11-26 10:34:11.853735+00	2021-11-26 10:34:11.85376+00	8	273
8563	49	2021-11-26 10:34:11.861247+00	2021-11-26 10:34:11.861273+00	8	273
8564	0	2021-11-26 10:34:11.937841+00	2021-11-26 10:34:11.937872+00	8	274
8565	1	2021-11-26 10:34:11.944296+00	2021-11-26 10:34:11.944322+00	8	274
8566	2	2021-11-26 10:34:11.950723+00	2021-11-26 10:34:11.950761+00	8	274
8567	3	2021-11-26 10:34:11.957347+00	2021-11-26 10:34:11.957391+00	8	274
8568	4	2021-11-26 10:34:11.963821+00	2021-11-26 10:34:11.963849+00	8	274
8569	5	2021-11-26 10:34:11.969674+00	2021-11-26 10:34:11.969701+00	8	274
8570	6	2021-11-26 10:34:11.981605+00	2021-11-26 10:34:11.981654+00	8	274
8571	7	2021-11-26 10:34:11.987739+00	2021-11-26 10:34:11.987767+00	8	274
8572	8	2021-11-26 10:34:11.994213+00	2021-11-26 10:34:11.994246+00	8	274
8573	9	2021-11-26 10:34:12.000266+00	2021-11-26 10:34:12.000295+00	8	274
8574	10	2021-11-26 10:34:12.005923+00	2021-11-26 10:34:12.005951+00	8	274
8575	11	2021-11-26 10:34:12.011964+00	2021-11-26 10:34:12.012003+00	8	274
8576	12	2021-11-26 10:34:12.018042+00	2021-11-26 10:34:12.018074+00	8	274
8577	13	2021-11-26 10:34:12.024266+00	2021-11-26 10:34:12.024296+00	8	274
8578	14	2021-11-26 10:34:12.030149+00	2021-11-26 10:34:12.030178+00	8	274
8579	15	2021-11-26 10:34:12.036138+00	2021-11-26 10:34:12.036165+00	8	274
8580	16	2021-11-26 10:34:12.041765+00	2021-11-26 10:34:12.041791+00	8	274
8581	17	2021-11-26 10:34:12.047417+00	2021-11-26 10:34:12.047444+00	8	274
8582	18	2021-11-26 10:34:12.052876+00	2021-11-26 10:34:12.052901+00	8	274
8583	19	2021-11-26 10:34:12.059202+00	2021-11-26 10:34:12.059236+00	8	274
8584	20	2021-11-26 10:34:12.065379+00	2021-11-26 10:34:12.065406+00	8	274
8585	21	2021-11-26 10:34:12.071297+00	2021-11-26 10:34:12.071327+00	8	274
8586	22	2021-11-26 10:34:12.077107+00	2021-11-26 10:34:12.077137+00	8	274
8587	23	2021-11-26 10:34:12.082929+00	2021-11-26 10:34:12.082961+00	8	274
8588	24	2021-11-26 10:34:12.088623+00	2021-11-26 10:34:12.08865+00	8	274
8589	25	2021-11-26 10:34:12.094135+00	2021-11-26 10:34:12.094161+00	8	274
8590	26	2021-11-26 10:34:12.099688+00	2021-11-26 10:34:12.099713+00	8	274
8591	27	2021-11-26 10:34:12.105109+00	2021-11-26 10:34:12.105145+00	8	274
8592	28	2021-11-26 10:34:12.110977+00	2021-11-26 10:34:12.111013+00	8	274
8593	29	2021-11-26 10:34:12.116886+00	2021-11-26 10:34:12.116913+00	8	274
8594	30	2021-11-26 10:34:12.123076+00	2021-11-26 10:34:12.12312+00	8	274
8595	31	2021-11-26 10:34:12.129435+00	2021-11-26 10:34:12.129466+00	8	274
8596	32	2021-11-26 10:34:12.135046+00	2021-11-26 10:34:12.135073+00	8	274
8597	33	2021-11-26 10:34:12.141317+00	2021-11-26 10:34:12.141347+00	8	274
8598	34	2021-11-26 10:34:12.146481+00	2021-11-26 10:34:12.146503+00	8	274
8599	35	2021-11-26 10:34:12.150612+00	2021-11-26 10:34:12.150625+00	8	274
8600	36	2021-11-26 10:34:12.154299+00	2021-11-26 10:34:12.154311+00	8	274
8601	37	2021-11-26 10:34:12.157662+00	2021-11-26 10:34:12.15767+00	8	274
8602	38	2021-11-26 10:34:12.160884+00	2021-11-26 10:34:12.160891+00	8	274
8603	39	2021-11-26 10:34:12.163874+00	2021-11-26 10:34:12.163879+00	8	274
8604	40	2021-11-26 10:34:12.166856+00	2021-11-26 10:34:12.166866+00	8	274
8605	41	2021-11-26 10:34:12.16969+00	2021-11-26 10:34:12.169699+00	8	274
8606	42	2021-11-26 10:34:12.172594+00	2021-11-26 10:34:12.172603+00	8	274
8607	43	2021-11-26 10:34:12.175313+00	2021-11-26 10:34:12.17532+00	8	274
8608	44	2021-11-26 10:34:12.178069+00	2021-11-26 10:34:12.178076+00	8	274
8609	45	2021-11-26 10:34:12.180701+00	2021-11-26 10:34:12.180707+00	8	274
8610	46	2021-11-26 10:34:12.183447+00	2021-11-26 10:34:12.183452+00	8	274
8611	47	2021-11-26 10:34:12.186034+00	2021-11-26 10:34:12.18604+00	8	274
8612	48	2021-11-26 10:34:12.193616+00	2021-11-26 10:34:12.193622+00	8	274
8613	49	2021-11-26 10:34:12.196818+00	2021-11-26 10:34:12.196824+00	8	274
8614	0	2021-11-26 10:34:12.206219+00	2021-11-26 10:34:12.206249+00	8	275
8615	1	2021-11-26 10:34:12.212109+00	2021-11-26 10:34:12.21214+00	8	275
8616	2	2021-11-26 10:34:12.217742+00	2021-11-26 10:34:12.217766+00	8	275
8617	3	2021-11-26 10:34:12.223862+00	2021-11-26 10:34:12.223892+00	8	275
8618	4	2021-11-26 10:34:12.229371+00	2021-11-26 10:34:12.2294+00	8	275
8619	5	2021-11-26 10:34:12.235442+00	2021-11-26 10:34:12.235473+00	8	275
8620	6	2021-11-26 10:34:12.241522+00	2021-11-26 10:34:12.241551+00	8	275
8621	7	2021-11-26 10:34:12.24747+00	2021-11-26 10:34:12.247496+00	8	275
8622	8	2021-11-26 10:34:12.253235+00	2021-11-26 10:34:12.25326+00	8	275
8623	9	2021-11-26 10:34:12.259145+00	2021-11-26 10:34:12.259173+00	8	275
8624	10	2021-11-26 10:34:12.265109+00	2021-11-26 10:34:12.265141+00	8	275
8625	11	2021-11-26 10:34:12.271615+00	2021-11-26 10:34:12.271643+00	8	275
8626	12	2021-11-26 10:34:12.2782+00	2021-11-26 10:34:12.27823+00	8	275
8627	13	2021-11-26 10:34:12.284181+00	2021-11-26 10:34:12.284208+00	8	275
8628	14	2021-11-26 10:34:12.290646+00	2021-11-26 10:34:12.290678+00	8	275
8629	15	2021-11-26 10:34:12.297036+00	2021-11-26 10:34:12.297066+00	8	275
8630	16	2021-11-26 10:34:12.302899+00	2021-11-26 10:34:12.302928+00	8	275
8631	17	2021-11-26 10:34:12.308521+00	2021-11-26 10:34:12.308548+00	8	275
8632	18	2021-11-26 10:34:12.314682+00	2021-11-26 10:34:12.314715+00	8	275
8633	19	2021-11-26 10:34:12.320578+00	2021-11-26 10:34:12.320609+00	8	275
8634	20	2021-11-26 10:34:12.327074+00	2021-11-26 10:34:12.327106+00	8	275
8635	21	2021-11-26 10:34:12.332875+00	2021-11-26 10:34:12.332904+00	8	275
8636	22	2021-11-26 10:34:12.34248+00	2021-11-26 10:34:12.342509+00	8	275
8637	23	2021-11-26 10:34:12.348158+00	2021-11-26 10:34:12.348185+00	8	275
8638	24	2021-11-26 10:34:12.35389+00	2021-11-26 10:34:12.353919+00	8	275
8639	25	2021-11-26 10:34:12.359842+00	2021-11-26 10:34:12.359877+00	8	275
8640	26	2021-11-26 10:34:12.36535+00	2021-11-26 10:34:12.365381+00	8	275
8641	27	2021-11-26 10:34:12.37115+00	2021-11-26 10:34:12.371179+00	8	275
8642	28	2021-11-26 10:34:12.376839+00	2021-11-26 10:34:12.376866+00	8	275
8643	29	2021-11-26 10:34:12.382861+00	2021-11-26 10:34:12.382892+00	8	275
8644	30	2021-11-26 10:34:12.388782+00	2021-11-26 10:34:12.388815+00	8	275
8645	31	2021-11-26 10:34:12.393827+00	2021-11-26 10:34:12.393836+00	8	275
8646	32	2021-11-26 10:34:12.397132+00	2021-11-26 10:34:12.397139+00	8	275
8647	33	2021-11-26 10:34:12.400176+00	2021-11-26 10:34:12.400182+00	8	275
8648	34	2021-11-26 10:34:12.403069+00	2021-11-26 10:34:12.403076+00	8	275
8649	35	2021-11-26 10:34:12.406061+00	2021-11-26 10:34:12.406067+00	8	275
8650	36	2021-11-26 10:34:12.409169+00	2021-11-26 10:34:12.409174+00	8	275
8651	37	2021-11-26 10:34:12.412197+00	2021-11-26 10:34:12.412203+00	8	275
8652	38	2021-11-26 10:34:12.415165+00	2021-11-26 10:34:12.41517+00	8	275
8653	39	2021-11-26 10:34:12.418057+00	2021-11-26 10:34:12.418063+00	8	275
8654	40	2021-11-26 10:34:12.421048+00	2021-11-26 10:34:12.421059+00	8	275
8655	41	2021-11-26 10:34:12.424396+00	2021-11-26 10:34:12.424404+00	8	275
8656	42	2021-11-26 10:34:12.427214+00	2021-11-26 10:34:12.427219+00	8	275
8657	43	2021-11-26 10:34:12.429998+00	2021-11-26 10:34:12.430004+00	8	275
8658	44	2021-11-26 10:34:12.432955+00	2021-11-26 10:34:12.432961+00	8	275
8659	45	2021-11-26 10:34:12.436019+00	2021-11-26 10:34:12.436029+00	8	275
8660	46	2021-11-26 10:34:12.439182+00	2021-11-26 10:34:12.439191+00	8	275
8661	47	2021-11-26 10:34:12.442246+00	2021-11-26 10:34:12.442256+00	8	275
8662	48	2021-11-26 10:34:12.445196+00	2021-11-26 10:34:12.445202+00	8	275
8663	49	2021-11-26 10:34:12.44782+00	2021-11-26 10:34:12.447825+00	8	275
8664	0	2021-11-26 10:34:12.453407+00	2021-11-26 10:34:12.453417+00	8	276
8665	1	2021-11-26 10:34:12.456238+00	2021-11-26 10:34:12.456244+00	8	276
8666	2	2021-11-26 10:34:12.458975+00	2021-11-26 10:34:12.45898+00	8	276
8667	3	2021-11-26 10:34:12.461724+00	2021-11-26 10:34:12.46173+00	8	276
8668	4	2021-11-26 10:34:12.465926+00	2021-11-26 10:34:12.465931+00	8	276
8669	5	2021-11-26 10:34:12.468923+00	2021-11-26 10:34:12.468928+00	8	276
8670	6	2021-11-26 10:34:12.472519+00	2021-11-26 10:34:12.472536+00	8	276
8671	7	2021-11-26 10:34:12.476078+00	2021-11-26 10:34:12.476087+00	8	276
8672	8	2021-11-26 10:34:12.479208+00	2021-11-26 10:34:12.479216+00	8	276
8673	9	2021-11-26 10:34:12.482362+00	2021-11-26 10:34:12.482369+00	8	276
8674	10	2021-11-26 10:34:12.485432+00	2021-11-26 10:34:12.485441+00	8	276
8675	11	2021-11-26 10:34:12.488669+00	2021-11-26 10:34:12.488678+00	8	276
8676	12	2021-11-26 10:34:12.491749+00	2021-11-26 10:34:12.491758+00	8	276
8677	13	2021-11-26 10:34:12.494879+00	2021-11-26 10:34:12.494885+00	8	276
8678	14	2021-11-26 10:34:12.497861+00	2021-11-26 10:34:12.497867+00	8	276
8679	15	2021-11-26 10:34:12.500541+00	2021-11-26 10:34:12.500546+00	8	276
8680	16	2021-11-26 10:34:12.503648+00	2021-11-26 10:34:12.503658+00	8	276
8681	17	2021-11-26 10:34:12.506921+00	2021-11-26 10:34:12.506928+00	8	276
8682	18	2021-11-26 10:34:12.509705+00	2021-11-26 10:34:12.50971+00	8	276
8683	19	2021-11-26 10:34:12.512589+00	2021-11-26 10:34:12.512595+00	8	276
8684	20	2021-11-26 10:34:12.515499+00	2021-11-26 10:34:12.515505+00	8	276
8685	21	2021-11-26 10:34:12.518402+00	2021-11-26 10:34:12.518408+00	8	276
8686	22	2021-11-26 10:34:12.521477+00	2021-11-26 10:34:12.521486+00	8	276
8687	23	2021-11-26 10:34:12.524509+00	2021-11-26 10:34:12.524518+00	8	276
8688	24	2021-11-26 10:34:12.527472+00	2021-11-26 10:34:12.527478+00	8	276
8689	25	2021-11-26 10:34:12.530502+00	2021-11-26 10:34:12.530507+00	8	276
8690	26	2021-11-26 10:34:12.533167+00	2021-11-26 10:34:12.533172+00	8	276
8691	27	2021-11-26 10:34:12.535878+00	2021-11-26 10:34:12.535884+00	8	276
8692	28	2021-11-26 10:34:12.538712+00	2021-11-26 10:34:12.538722+00	8	276
8693	29	2021-11-26 10:34:12.541773+00	2021-11-26 10:34:12.541779+00	8	276
8694	30	2021-11-26 10:34:12.544686+00	2021-11-26 10:34:12.544692+00	8	276
8695	31	2021-11-26 10:34:12.547477+00	2021-11-26 10:34:12.547482+00	8	276
8696	32	2021-11-26 10:34:12.550336+00	2021-11-26 10:34:12.550341+00	8	276
8697	33	2021-11-26 10:34:12.553255+00	2021-11-26 10:34:12.553263+00	8	276
8698	34	2021-11-26 10:34:12.55618+00	2021-11-26 10:34:12.556187+00	8	276
8699	35	2021-11-26 10:34:12.559019+00	2021-11-26 10:34:12.559026+00	8	276
8700	36	2021-11-26 10:34:12.561879+00	2021-11-26 10:34:12.561887+00	8	276
8701	37	2021-11-26 10:34:12.564952+00	2021-11-26 10:34:12.56496+00	8	276
8702	38	2021-11-26 10:34:12.567791+00	2021-11-26 10:34:12.567797+00	8	276
8703	39	2021-11-26 10:34:12.570841+00	2021-11-26 10:34:12.570851+00	8	276
8704	40	2021-11-26 10:34:12.574098+00	2021-11-26 10:34:12.574107+00	8	276
8705	41	2021-11-26 10:34:12.577233+00	2021-11-26 10:34:12.577241+00	8	276
8706	42	2021-11-26 10:34:12.580387+00	2021-11-26 10:34:12.580393+00	8	276
8707	43	2021-11-26 10:34:12.583125+00	2021-11-26 10:34:12.583131+00	8	276
8708	44	2021-11-26 10:34:12.586224+00	2021-11-26 10:34:12.586231+00	8	276
8709	45	2021-11-26 10:34:12.589286+00	2021-11-26 10:34:12.589292+00	8	276
8710	46	2021-11-26 10:34:12.591981+00	2021-11-26 10:34:12.591987+00	8	276
8711	47	2021-11-26 10:34:12.594965+00	2021-11-26 10:34:12.594976+00	8	276
8712	48	2021-11-26 10:34:12.598164+00	2021-11-26 10:34:12.598169+00	8	276
8713	49	2021-11-26 10:34:12.601047+00	2021-11-26 10:34:12.601052+00	8	276
8714	0	2021-11-26 10:34:12.606934+00	2021-11-26 10:34:12.606943+00	8	277
8715	1	2021-11-26 10:34:12.609848+00	2021-11-26 10:34:12.609855+00	8	277
8716	2	2021-11-26 10:34:12.612822+00	2021-11-26 10:34:12.612828+00	8	277
8717	3	2021-11-26 10:34:12.615745+00	2021-11-26 10:34:12.615751+00	8	277
8718	4	2021-11-26 10:34:12.618538+00	2021-11-26 10:34:12.618544+00	8	277
8719	5	2021-11-26 10:34:12.621383+00	2021-11-26 10:34:12.62139+00	8	277
8720	6	2021-11-26 10:34:12.624034+00	2021-11-26 10:34:12.62404+00	8	277
8721	7	2021-11-26 10:34:12.626708+00	2021-11-26 10:34:12.626714+00	8	277
8722	8	2021-11-26 10:34:12.629508+00	2021-11-26 10:34:12.629514+00	8	277
8723	9	2021-11-26 10:34:12.632183+00	2021-11-26 10:34:12.632189+00	8	277
8724	10	2021-11-26 10:34:12.63494+00	2021-11-26 10:34:12.634946+00	8	277
8725	11	2021-11-26 10:34:12.637834+00	2021-11-26 10:34:12.637843+00	8	277
8726	12	2021-11-26 10:34:12.640757+00	2021-11-26 10:34:12.640765+00	8	277
8727	13	2021-11-26 10:34:12.643675+00	2021-11-26 10:34:12.643682+00	8	277
8728	14	2021-11-26 10:34:12.646651+00	2021-11-26 10:34:12.646656+00	8	277
8729	15	2021-11-26 10:34:12.650368+00	2021-11-26 10:34:12.65039+00	8	277
8730	16	2021-11-26 10:34:12.656175+00	2021-11-26 10:34:12.656204+00	8	277
8731	17	2021-11-26 10:34:12.662413+00	2021-11-26 10:34:12.662444+00	8	277
8732	18	2021-11-26 10:34:12.668237+00	2021-11-26 10:34:12.668262+00	8	277
8733	19	2021-11-26 10:34:12.673862+00	2021-11-26 10:34:12.673887+00	8	277
8734	20	2021-11-26 10:34:12.679294+00	2021-11-26 10:34:12.679318+00	8	277
8735	21	2021-11-26 10:34:12.685132+00	2021-11-26 10:34:12.685164+00	8	277
8736	22	2021-11-26 10:34:12.69135+00	2021-11-26 10:34:12.691422+00	8	277
8737	23	2021-11-26 10:34:12.697505+00	2021-11-26 10:34:12.69753+00	8	277
8738	24	2021-11-26 10:34:12.703526+00	2021-11-26 10:34:12.703564+00	8	277
8739	25	2021-11-26 10:34:12.7093+00	2021-11-26 10:34:12.709323+00	8	277
8740	26	2021-11-26 10:34:12.714851+00	2021-11-26 10:34:12.714875+00	8	277
8741	27	2021-11-26 10:34:12.719921+00	2021-11-26 10:34:12.719945+00	8	277
8742	28	2021-11-26 10:34:12.725932+00	2021-11-26 10:34:12.72597+00	8	277
8743	29	2021-11-26 10:34:12.731643+00	2021-11-26 10:34:12.731669+00	8	277
8744	30	2021-11-26 10:34:12.737052+00	2021-11-26 10:34:12.737078+00	8	277
8745	31	2021-11-26 10:34:12.742244+00	2021-11-26 10:34:12.742268+00	8	277
8746	32	2021-11-26 10:34:12.747926+00	2021-11-26 10:34:12.747955+00	8	277
8747	33	2021-11-26 10:34:12.753918+00	2021-11-26 10:34:12.753946+00	8	277
8748	34	2021-11-26 10:34:12.75954+00	2021-11-26 10:34:12.759578+00	8	277
8749	35	2021-11-26 10:34:12.764831+00	2021-11-26 10:34:12.764848+00	8	277
8750	36	2021-11-26 10:34:12.7689+00	2021-11-26 10:34:12.768913+00	8	277
8751	37	2021-11-26 10:34:12.772474+00	2021-11-26 10:34:12.772482+00	8	277
8752	38	2021-11-26 10:34:12.77524+00	2021-11-26 10:34:12.775248+00	8	277
8753	39	2021-11-26 10:34:12.778116+00	2021-11-26 10:34:12.778123+00	8	277
8754	40	2021-11-26 10:34:12.781054+00	2021-11-26 10:34:12.78106+00	8	277
8755	41	2021-11-26 10:34:12.784134+00	2021-11-26 10:34:12.78414+00	8	277
8756	42	2021-11-26 10:34:12.787296+00	2021-11-26 10:34:12.787307+00	8	277
8757	43	2021-11-26 10:34:12.79103+00	2021-11-26 10:34:12.791039+00	8	277
8758	44	2021-11-26 10:34:12.794054+00	2021-11-26 10:34:12.794061+00	8	277
8759	45	2021-11-26 10:34:12.797001+00	2021-11-26 10:34:12.797006+00	8	277
8760	46	2021-11-26 10:34:12.799712+00	2021-11-26 10:34:12.799718+00	8	277
8761	47	2021-11-26 10:34:12.802726+00	2021-11-26 10:34:12.802734+00	8	277
8762	48	2021-11-26 10:34:12.805607+00	2021-11-26 10:34:12.805618+00	8	277
8763	49	2021-11-26 10:34:12.808811+00	2021-11-26 10:34:12.808822+00	8	277
8764	0	2021-11-26 10:34:12.8188+00	2021-11-26 10:34:12.818809+00	8	278
8765	1	2021-11-26 10:34:12.822402+00	2021-11-26 10:34:12.822414+00	8	278
8766	2	2021-11-26 10:34:12.825714+00	2021-11-26 10:34:12.825722+00	8	278
8767	3	2021-11-26 10:34:12.828947+00	2021-11-26 10:34:12.828953+00	8	278
8768	4	2021-11-26 10:34:12.831943+00	2021-11-26 10:34:12.831949+00	8	278
8769	5	2021-11-26 10:34:12.835045+00	2021-11-26 10:34:12.835051+00	8	278
8770	6	2021-11-26 10:34:12.838767+00	2021-11-26 10:34:12.838773+00	8	278
8771	7	2021-11-26 10:34:12.84163+00	2021-11-26 10:34:12.841636+00	8	278
8772	8	2021-11-26 10:34:12.844341+00	2021-11-26 10:34:12.844346+00	8	278
8773	9	2021-11-26 10:34:12.846957+00	2021-11-26 10:34:12.846963+00	8	278
8774	10	2021-11-26 10:34:12.849626+00	2021-11-26 10:34:12.849632+00	8	278
8775	11	2021-11-26 10:34:12.85241+00	2021-11-26 10:34:12.852416+00	8	278
8776	12	2021-11-26 10:34:12.855331+00	2021-11-26 10:34:12.855344+00	8	278
8777	13	2021-11-26 10:34:12.858336+00	2021-11-26 10:34:12.858343+00	8	278
8778	14	2021-11-26 10:34:12.861056+00	2021-11-26 10:34:12.861062+00	8	278
8779	15	2021-11-26 10:34:12.86372+00	2021-11-26 10:34:12.863726+00	8	278
8780	16	2021-11-26 10:34:12.866513+00	2021-11-26 10:34:12.866519+00	8	278
8781	17	2021-11-26 10:34:12.869515+00	2021-11-26 10:34:12.869532+00	8	278
8782	18	2021-11-26 10:34:12.872892+00	2021-11-26 10:34:12.872902+00	8	278
8783	19	2021-11-26 10:34:12.87587+00	2021-11-26 10:34:12.875878+00	8	278
8784	0	2021-11-26 10:34:12.881619+00	2021-11-26 10:34:12.881625+00	8	279
8785	1	2021-11-26 10:34:12.88492+00	2021-11-26 10:34:12.884926+00	8	279
8786	2	2021-11-26 10:34:12.887857+00	2021-11-26 10:34:12.887865+00	8	279
8787	3	2021-11-26 10:34:12.89243+00	2021-11-26 10:34:12.892438+00	8	279
8788	4	2021-11-26 10:34:12.896407+00	2021-11-26 10:34:12.896414+00	8	279
8789	5	2021-11-26 10:34:12.899962+00	2021-11-26 10:34:12.899971+00	8	279
8790	6	2021-11-26 10:34:12.90363+00	2021-11-26 10:34:12.903639+00	8	279
8791	7	2021-11-26 10:34:12.906883+00	2021-11-26 10:34:12.906891+00	8	279
8792	8	2021-11-26 10:34:12.910031+00	2021-11-26 10:34:12.910038+00	8	279
8793	9	2021-11-26 10:34:12.913367+00	2021-11-26 10:34:12.913372+00	8	279
8794	10	2021-11-26 10:34:12.916647+00	2021-11-26 10:34:12.916652+00	8	279
8795	11	2021-11-26 10:34:12.920047+00	2021-11-26 10:34:12.920053+00	8	279
8796	12	2021-11-26 10:34:12.923243+00	2021-11-26 10:34:12.923249+00	8	279
8797	13	2021-11-26 10:34:12.930109+00	2021-11-26 10:34:12.930115+00	8	279
8798	14	2021-11-26 10:34:12.933496+00	2021-11-26 10:34:12.933502+00	8	279
8799	15	2021-11-26 10:34:12.936912+00	2021-11-26 10:34:12.936921+00	8	279
8800	16	2021-11-26 10:34:12.94047+00	2021-11-26 10:34:12.940479+00	8	279
8801	17	2021-11-26 10:34:12.943722+00	2021-11-26 10:34:12.94373+00	8	279
8802	18	2021-11-26 10:34:12.946791+00	2021-11-26 10:34:12.946797+00	8	279
8803	19	2021-11-26 10:34:12.949764+00	2021-11-26 10:34:12.94977+00	8	279
8804	0	2021-11-26 10:34:12.960752+00	2021-11-26 10:34:12.960764+00	8	280
8805	1	2021-11-26 10:34:12.96411+00	2021-11-26 10:34:12.96412+00	8	280
8806	2	2021-11-26 10:34:12.967191+00	2021-11-26 10:34:12.967199+00	8	280
8807	3	2021-11-26 10:34:12.970168+00	2021-11-26 10:34:12.970178+00	8	280
8808	4	2021-11-26 10:34:12.973194+00	2021-11-26 10:34:12.973202+00	8	280
8809	5	2021-11-26 10:34:12.9761+00	2021-11-26 10:34:12.976108+00	8	280
8810	6	2021-11-26 10:34:12.979165+00	2021-11-26 10:34:12.979172+00	8	280
8811	7	2021-11-26 10:34:12.982455+00	2021-11-26 10:34:12.982461+00	8	280
8812	8	2021-11-26 10:34:12.985591+00	2021-11-26 10:34:12.985597+00	8	280
8813	9	2021-11-26 10:34:12.988781+00	2021-11-26 10:34:12.988788+00	8	280
8814	10	2021-11-26 10:34:12.991845+00	2021-11-26 10:34:12.991851+00	8	280
8815	11	2021-11-26 10:34:12.995041+00	2021-11-26 10:34:12.995047+00	8	280
8816	12	2021-11-26 10:34:12.998155+00	2021-11-26 10:34:12.998161+00	8	280
8817	13	2021-11-26 10:34:13.001306+00	2021-11-26 10:34:13.001312+00	8	280
8818	14	2021-11-26 10:34:13.004814+00	2021-11-26 10:34:13.004824+00	8	280
8819	15	2021-11-26 10:34:13.008229+00	2021-11-26 10:34:13.008236+00	8	280
8820	16	2021-11-26 10:34:13.011428+00	2021-11-26 10:34:13.011434+00	8	280
8821	17	2021-11-26 10:34:13.014739+00	2021-11-26 10:34:13.014745+00	8	280
8822	18	2021-11-26 10:34:13.018002+00	2021-11-26 10:34:13.018008+00	8	280
8823	19	2021-11-26 10:34:13.02117+00	2021-11-26 10:34:13.021177+00	8	280
8824	0	2021-11-26 10:34:13.0277+00	2021-11-26 10:34:13.027708+00	8	281
8825	1	2021-11-26 10:34:13.030743+00	2021-11-26 10:34:13.030749+00	8	281
8826	2	2021-11-26 10:34:13.033575+00	2021-11-26 10:34:13.033582+00	8	281
8827	3	2021-11-26 10:34:13.041933+00	2021-11-26 10:34:13.041943+00	8	281
8828	4	2021-11-26 10:34:13.105184+00	2021-11-26 10:34:13.105218+00	8	281
8829	5	2021-11-26 10:34:13.11133+00	2021-11-26 10:34:13.111381+00	8	281
8830	6	2021-11-26 10:34:13.117297+00	2021-11-26 10:34:13.117325+00	8	281
8831	7	2021-11-26 10:34:13.12315+00	2021-11-26 10:34:13.12318+00	8	281
8832	8	2021-11-26 10:34:13.13247+00	2021-11-26 10:34:13.132501+00	8	281
8833	9	2021-11-26 10:34:13.138405+00	2021-11-26 10:34:13.138435+00	8	281
8834	10	2021-11-26 10:34:13.143963+00	2021-11-26 10:34:13.143989+00	8	281
8835	11	2021-11-26 10:34:13.149952+00	2021-11-26 10:34:13.149986+00	8	281
8836	12	2021-11-26 10:34:13.156092+00	2021-11-26 10:34:13.156122+00	8	281
8837	13	2021-11-26 10:34:13.161973+00	2021-11-26 10:34:13.161994+00	8	281
8838	14	2021-11-26 10:34:13.166721+00	2021-11-26 10:34:13.166735+00	8	281
8839	15	2021-11-26 10:34:13.170691+00	2021-11-26 10:34:13.170706+00	8	281
8840	16	2021-11-26 10:34:13.174265+00	2021-11-26 10:34:13.174275+00	8	281
8841	17	2021-11-26 10:34:13.177413+00	2021-11-26 10:34:13.177421+00	8	281
8842	18	2021-11-26 10:34:13.180318+00	2021-11-26 10:34:13.180326+00	8	281
8843	19	2021-11-26 10:34:13.183311+00	2021-11-26 10:34:13.183318+00	8	281
8844	0	2021-11-26 10:34:13.189409+00	2021-11-26 10:34:13.189419+00	8	282
8845	1	2021-11-26 10:34:13.192495+00	2021-11-26 10:34:13.192503+00	8	282
8846	2	2021-11-26 10:34:13.1954+00	2021-11-26 10:34:13.195406+00	8	282
8847	3	2021-11-26 10:34:13.19826+00	2021-11-26 10:34:13.198266+00	8	282
8848	4	2021-11-26 10:34:13.200936+00	2021-11-26 10:34:13.200942+00	8	282
8849	5	2021-11-26 10:34:13.20369+00	2021-11-26 10:34:13.203699+00	8	282
8850	6	2021-11-26 10:34:13.206712+00	2021-11-26 10:34:13.206725+00	8	282
8851	7	2021-11-26 10:34:13.209789+00	2021-11-26 10:34:13.209797+00	8	282
8852	8	2021-11-26 10:34:13.212673+00	2021-11-26 10:34:13.21268+00	8	282
8853	9	2021-11-26 10:34:13.215404+00	2021-11-26 10:34:13.21541+00	8	282
8854	10	2021-11-26 10:34:13.218208+00	2021-11-26 10:34:13.218215+00	8	282
8855	11	2021-11-26 10:34:13.221149+00	2021-11-26 10:34:13.221158+00	8	282
8856	12	2021-11-26 10:34:13.224004+00	2021-11-26 10:34:13.224013+00	8	282
8857	13	2021-11-26 10:34:13.22685+00	2021-11-26 10:34:13.226856+00	8	282
8858	14	2021-11-26 10:34:13.229714+00	2021-11-26 10:34:13.22972+00	8	282
8859	15	2021-11-26 10:34:13.233627+00	2021-11-26 10:34:13.233633+00	8	282
8860	16	2021-11-26 10:34:13.236379+00	2021-11-26 10:34:13.236384+00	8	282
8861	17	2021-11-26 10:34:13.239225+00	2021-11-26 10:34:13.239236+00	8	282
8862	18	2021-11-26 10:34:13.242152+00	2021-11-26 10:34:13.242158+00	8	282
8863	19	2021-11-26 10:34:13.244875+00	2021-11-26 10:34:13.244881+00	8	282
8864	0	2021-11-26 10:34:13.250147+00	2021-11-26 10:34:13.250153+00	8	283
8865	1	2021-11-26 10:34:13.252925+00	2021-11-26 10:34:13.252937+00	8	283
8866	2	2021-11-26 10:34:13.255783+00	2021-11-26 10:34:13.255791+00	8	283
8867	3	2021-11-26 10:34:13.258578+00	2021-11-26 10:34:13.258586+00	8	283
8868	4	2021-11-26 10:34:13.261361+00	2021-11-26 10:34:13.261368+00	8	283
8869	5	2021-11-26 10:34:13.26406+00	2021-11-26 10:34:13.264066+00	8	283
8870	6	2021-11-26 10:34:13.266763+00	2021-11-26 10:34:13.266768+00	8	283
8871	7	2021-11-26 10:34:13.269755+00	2021-11-26 10:34:13.269767+00	8	283
8872	8	2021-11-26 10:34:13.272647+00	2021-11-26 10:34:13.272654+00	8	283
8873	9	2021-11-26 10:34:13.275449+00	2021-11-26 10:34:13.275455+00	8	283
8874	10	2021-11-26 10:34:13.278228+00	2021-11-26 10:34:13.278233+00	8	283
8875	11	2021-11-26 10:34:13.281051+00	2021-11-26 10:34:13.281056+00	8	283
8876	12	2021-11-26 10:34:13.284005+00	2021-11-26 10:34:13.28401+00	8	283
8877	13	2021-11-26 10:34:13.286798+00	2021-11-26 10:34:13.286807+00	8	283
8878	14	2021-11-26 10:34:13.28976+00	2021-11-26 10:34:13.289767+00	8	283
8879	15	2021-11-26 10:34:13.292545+00	2021-11-26 10:34:13.292552+00	8	283
8880	16	2021-11-26 10:34:13.295334+00	2021-11-26 10:34:13.295341+00	8	283
8881	17	2021-11-26 10:34:13.298175+00	2021-11-26 10:34:13.298181+00	8	283
8882	18	2021-11-26 10:34:13.300775+00	2021-11-26 10:34:13.30078+00	8	283
8883	19	2021-11-26 10:34:13.303612+00	2021-11-26 10:34:13.303621+00	8	283
8884	0	2021-11-26 10:34:13.309345+00	2021-11-26 10:34:13.309352+00	8	284
8885	1	2021-11-26 10:34:13.312165+00	2021-11-26 10:34:13.31217+00	8	284
8886	2	2021-11-26 10:34:13.314927+00	2021-11-26 10:34:13.314932+00	8	284
8887	3	2021-11-26 10:34:13.317602+00	2021-11-26 10:34:13.317608+00	8	284
8888	4	2021-11-26 10:34:13.320316+00	2021-11-26 10:34:13.320324+00	8	284
8889	5	2021-11-26 10:34:13.323061+00	2021-11-26 10:34:13.323068+00	8	284
8890	6	2021-11-26 10:34:13.325648+00	2021-11-26 10:34:13.325655+00	8	284
8891	7	2021-11-26 10:34:13.328568+00	2021-11-26 10:34:13.32858+00	8	284
8892	8	2021-11-26 10:34:13.331775+00	2021-11-26 10:34:13.331783+00	8	284
8893	9	2021-11-26 10:34:13.334725+00	2021-11-26 10:34:13.334734+00	8	284
8894	10	2021-11-26 10:34:13.339093+00	2021-11-26 10:34:13.339103+00	8	284
8895	11	2021-11-26 10:34:13.342276+00	2021-11-26 10:34:13.342284+00	8	284
8896	12	2021-11-26 10:34:13.345019+00	2021-11-26 10:34:13.345025+00	8	284
8897	13	2021-11-26 10:34:13.347721+00	2021-11-26 10:34:13.347728+00	8	284
8898	14	2021-11-26 10:34:13.350473+00	2021-11-26 10:34:13.350478+00	8	284
8899	15	2021-11-26 10:34:13.353164+00	2021-11-26 10:34:13.35317+00	8	284
8900	16	2021-11-26 10:34:13.355979+00	2021-11-26 10:34:13.355985+00	8	284
8901	17	2021-11-26 10:34:13.358718+00	2021-11-26 10:34:13.358724+00	8	284
8902	18	2021-11-26 10:34:13.361508+00	2021-11-26 10:34:13.361514+00	8	284
8903	19	2021-11-26 10:34:13.364238+00	2021-11-26 10:34:13.364243+00	8	284
8904	0	2021-11-26 10:34:13.36961+00	2021-11-26 10:34:13.369616+00	8	285
8905	1	2021-11-26 10:34:13.372717+00	2021-11-26 10:34:13.372728+00	8	285
8906	2	2021-11-26 10:34:13.375547+00	2021-11-26 10:34:13.375553+00	8	285
8907	3	2021-11-26 10:34:13.37827+00	2021-11-26 10:34:13.378275+00	8	285
8908	4	2021-11-26 10:34:13.381236+00	2021-11-26 10:34:13.381242+00	8	285
8909	5	2021-11-26 10:34:13.384336+00	2021-11-26 10:34:13.384341+00	8	285
8910	6	2021-11-26 10:34:13.387525+00	2021-11-26 10:34:13.387533+00	8	285
8911	7	2021-11-26 10:34:13.390537+00	2021-11-26 10:34:13.390548+00	8	285
8912	8	2021-11-26 10:34:13.393527+00	2021-11-26 10:34:13.393535+00	8	285
8913	9	2021-11-26 10:34:13.39644+00	2021-11-26 10:34:13.396446+00	8	285
8914	10	2021-11-26 10:34:13.399179+00	2021-11-26 10:34:13.399184+00	8	285
8915	11	2021-11-26 10:34:13.401869+00	2021-11-26 10:34:13.401875+00	8	285
8916	12	2021-11-26 10:34:13.404845+00	2021-11-26 10:34:13.404853+00	8	285
8917	13	2021-11-26 10:34:13.407874+00	2021-11-26 10:34:13.40788+00	8	285
8918	14	2021-11-26 10:34:13.410621+00	2021-11-26 10:34:13.410627+00	8	285
8919	15	2021-11-26 10:34:13.413376+00	2021-11-26 10:34:13.413382+00	8	285
8920	16	2021-11-26 10:34:13.416169+00	2021-11-26 10:34:13.416174+00	8	285
8921	17	2021-11-26 10:34:13.41895+00	2021-11-26 10:34:13.418956+00	8	285
8922	18	2021-11-26 10:34:13.422282+00	2021-11-26 10:34:13.422296+00	8	285
8923	19	2021-11-26 10:34:13.425353+00	2021-11-26 10:34:13.425361+00	8	285
8924	0	2021-11-26 10:34:13.431037+00	2021-11-26 10:34:13.431043+00	8	286
8925	1	2021-11-26 10:34:13.433914+00	2021-11-26 10:34:13.43392+00	8	286
8926	2	2021-11-26 10:34:13.436926+00	2021-11-26 10:34:13.436934+00	8	286
8927	3	2021-11-26 10:34:13.43999+00	2021-11-26 10:34:13.44+00	8	286
8928	4	2021-11-26 10:34:13.442994+00	2021-11-26 10:34:13.443001+00	8	286
8929	5	2021-11-26 10:34:13.445961+00	2021-11-26 10:34:13.445967+00	8	286
8930	6	2021-11-26 10:34:13.44909+00	2021-11-26 10:34:13.449095+00	8	286
8931	7	2021-11-26 10:34:13.452523+00	2021-11-26 10:34:13.452533+00	8	286
8932	8	2021-11-26 10:34:13.455579+00	2021-11-26 10:34:13.455588+00	8	286
8933	9	2021-11-26 10:34:13.458809+00	2021-11-26 10:34:13.458818+00	8	286
8934	10	2021-11-26 10:34:13.46187+00	2021-11-26 10:34:13.461877+00	8	286
8935	11	2021-11-26 10:34:13.464933+00	2021-11-26 10:34:13.464938+00	8	286
8936	12	2021-11-26 10:34:13.468106+00	2021-11-26 10:34:13.468112+00	8	286
8937	13	2021-11-26 10:34:13.471059+00	2021-11-26 10:34:13.471066+00	8	286
8938	14	2021-11-26 10:34:13.473995+00	2021-11-26 10:34:13.474001+00	8	286
8939	15	2021-11-26 10:34:13.476747+00	2021-11-26 10:34:13.476753+00	8	286
8940	16	2021-11-26 10:34:13.479988+00	2021-11-26 10:34:13.479994+00	8	286
8941	17	2021-11-26 10:34:13.482872+00	2021-11-26 10:34:13.482878+00	8	286
8942	18	2021-11-26 10:34:13.485911+00	2021-11-26 10:34:13.485917+00	8	286
8943	19	2021-11-26 10:34:13.489181+00	2021-11-26 10:34:13.489192+00	8	286
8944	0	2021-11-26 10:34:13.495254+00	2021-11-26 10:34:13.49526+00	8	287
8945	1	2021-11-26 10:34:13.49816+00	2021-11-26 10:34:13.498166+00	8	287
8946	2	2021-11-26 10:34:13.501408+00	2021-11-26 10:34:13.501414+00	8	287
8947	3	2021-11-26 10:34:13.504176+00	2021-11-26 10:34:13.504184+00	8	287
8948	4	2021-11-26 10:34:13.506835+00	2021-11-26 10:34:13.506843+00	8	287
8949	5	2021-11-26 10:34:13.509708+00	2021-11-26 10:34:13.509714+00	8	287
8950	6	2021-11-26 10:34:13.512508+00	2021-11-26 10:34:13.512518+00	8	287
8951	7	2021-11-26 10:34:13.515452+00	2021-11-26 10:34:13.515458+00	8	287
8952	8	2021-11-26 10:34:13.518159+00	2021-11-26 10:34:13.518167+00	8	287
8953	9	2021-11-26 10:34:13.521107+00	2021-11-26 10:34:13.521117+00	8	287
8954	10	2021-11-26 10:34:13.523834+00	2021-11-26 10:34:13.523842+00	8	287
8955	11	2021-11-26 10:34:13.526682+00	2021-11-26 10:34:13.526689+00	8	287
8956	12	2021-11-26 10:34:13.529231+00	2021-11-26 10:34:13.529237+00	8	287
8957	13	2021-11-26 10:34:13.5319+00	2021-11-26 10:34:13.531906+00	8	287
8958	14	2021-11-26 10:34:13.534611+00	2021-11-26 10:34:13.534617+00	8	287
8959	15	2021-11-26 10:34:13.537381+00	2021-11-26 10:34:13.537388+00	8	287
8960	16	2021-11-26 10:34:13.540009+00	2021-11-26 10:34:13.540014+00	8	287
8961	17	2021-11-26 10:34:13.544371+00	2021-11-26 10:34:13.544376+00	8	287
8962	18	2021-11-26 10:34:13.550517+00	2021-11-26 10:34:13.550523+00	8	287
8963	19	2021-11-26 10:34:13.553486+00	2021-11-26 10:34:13.553495+00	8	287
8964	0	2021-11-26 10:34:13.559317+00	2021-11-26 10:34:13.559324+00	8	288
8965	1	2021-11-26 10:34:13.562485+00	2021-11-26 10:34:13.562507+00	8	288
8966	2	2021-11-26 10:34:13.566129+00	2021-11-26 10:34:13.566135+00	8	288
8967	3	2021-11-26 10:34:13.568738+00	2021-11-26 10:34:13.568746+00	8	288
8968	4	2021-11-26 10:34:13.571472+00	2021-11-26 10:34:13.571481+00	8	288
8969	5	2021-11-26 10:34:13.574708+00	2021-11-26 10:34:13.574718+00	8	288
8970	6	2021-11-26 10:34:13.577883+00	2021-11-26 10:34:13.57789+00	8	288
8971	7	2021-11-26 10:34:13.580818+00	2021-11-26 10:34:13.580824+00	8	288
8972	8	2021-11-26 10:34:13.583741+00	2021-11-26 10:34:13.583747+00	8	288
8973	9	2021-11-26 10:34:13.58668+00	2021-11-26 10:34:13.586688+00	8	288
8974	10	2021-11-26 10:34:13.58946+00	2021-11-26 10:34:13.589467+00	8	288
8975	11	2021-11-26 10:34:13.592302+00	2021-11-26 10:34:13.59231+00	8	288
8976	12	2021-11-26 10:34:13.595021+00	2021-11-26 10:34:13.595027+00	8	288
8977	13	2021-11-26 10:34:13.597969+00	2021-11-26 10:34:13.597975+00	8	288
8978	14	2021-11-26 10:34:13.600696+00	2021-11-26 10:34:13.600702+00	8	288
8979	15	2021-11-26 10:34:13.603499+00	2021-11-26 10:34:13.603508+00	8	288
8980	16	2021-11-26 10:34:13.60634+00	2021-11-26 10:34:13.606348+00	8	288
8981	17	2021-11-26 10:34:13.609156+00	2021-11-26 10:34:13.609161+00	8	288
8982	18	2021-11-26 10:34:13.611853+00	2021-11-26 10:34:13.611859+00	8	288
8983	19	2021-11-26 10:34:13.614828+00	2021-11-26 10:34:13.614833+00	8	288
8984	0	2021-11-26 10:34:13.620659+00	2021-11-26 10:34:13.620667+00	8	289
8985	1	2021-11-26 10:34:13.623431+00	2021-11-26 10:34:13.623439+00	8	289
8986	2	2021-11-26 10:34:13.626426+00	2021-11-26 10:34:13.626433+00	8	289
8987	3	2021-11-26 10:34:13.629438+00	2021-11-26 10:34:13.629444+00	8	289
8988	4	2021-11-26 10:34:13.632396+00	2021-11-26 10:34:13.632401+00	8	289
8989	5	2021-11-26 10:34:13.6358+00	2021-11-26 10:34:13.635812+00	8	289
8990	6	2021-11-26 10:34:13.638969+00	2021-11-26 10:34:13.638978+00	8	289
8991	7	2021-11-26 10:34:13.642272+00	2021-11-26 10:34:13.642279+00	8	289
8992	8	2021-11-26 10:34:13.645124+00	2021-11-26 10:34:13.64513+00	8	289
8993	9	2021-11-26 10:34:13.647776+00	2021-11-26 10:34:13.647782+00	8	289
8994	10	2021-11-26 10:34:13.65067+00	2021-11-26 10:34:13.650676+00	8	289
8995	11	2021-11-26 10:34:13.653489+00	2021-11-26 10:34:13.653495+00	8	289
8996	12	2021-11-26 10:34:13.656267+00	2021-11-26 10:34:13.656273+00	8	289
8997	13	2021-11-26 10:34:13.658987+00	2021-11-26 10:34:13.658992+00	8	289
8998	14	2021-11-26 10:34:13.661724+00	2021-11-26 10:34:13.66173+00	8	289
8999	15	2021-11-26 10:34:13.664445+00	2021-11-26 10:34:13.66445+00	8	289
9000	16	2021-11-26 10:34:13.667141+00	2021-11-26 10:34:13.667146+00	8	289
9001	17	2021-11-26 10:34:13.669809+00	2021-11-26 10:34:13.669815+00	8	289
9002	18	2021-11-26 10:34:13.672834+00	2021-11-26 10:34:13.672846+00	8	289
9003	19	2021-11-26 10:34:13.677167+00	2021-11-26 10:34:13.677174+00	8	289
9004	0	2021-11-26 10:34:13.68272+00	2021-11-26 10:34:13.682725+00	8	290
9005	1	2021-11-26 10:34:13.68588+00	2021-11-26 10:34:13.685907+00	8	290
9006	2	2021-11-26 10:34:13.689417+00	2021-11-26 10:34:13.689425+00	8	290
9007	3	2021-11-26 10:34:13.692318+00	2021-11-26 10:34:13.692326+00	8	290
9008	4	2021-11-26 10:34:13.695192+00	2021-11-26 10:34:13.695203+00	8	290
9009	5	2021-11-26 10:34:13.698079+00	2021-11-26 10:34:13.698085+00	8	290
9010	6	2021-11-26 10:34:13.701192+00	2021-11-26 10:34:13.701198+00	8	290
9011	7	2021-11-26 10:34:13.704157+00	2021-11-26 10:34:13.704166+00	8	290
9012	8	2021-11-26 10:34:13.707105+00	2021-11-26 10:34:13.707112+00	8	290
9013	9	2021-11-26 10:34:13.709977+00	2021-11-26 10:34:13.709983+00	8	290
9014	10	2021-11-26 10:34:13.712685+00	2021-11-26 10:34:13.71269+00	8	290
9015	11	2021-11-26 10:34:13.715463+00	2021-11-26 10:34:13.715469+00	8	290
9016	12	2021-11-26 10:34:13.718161+00	2021-11-26 10:34:13.718167+00	8	290
9017	13	2021-11-26 10:34:13.720996+00	2021-11-26 10:34:13.721001+00	8	290
9018	14	2021-11-26 10:34:13.72361+00	2021-11-26 10:34:13.723615+00	8	290
9019	15	2021-11-26 10:34:13.726457+00	2021-11-26 10:34:13.726462+00	8	290
9020	16	2021-11-26 10:34:13.729258+00	2021-11-26 10:34:13.729264+00	8	290
9021	17	2021-11-26 10:34:13.731934+00	2021-11-26 10:34:13.731939+00	8	290
9022	18	2021-11-26 10:34:13.734733+00	2021-11-26 10:34:13.73474+00	8	290
9023	19	2021-11-26 10:34:13.737505+00	2021-11-26 10:34:13.737516+00	8	290
9024	0	2021-11-26 10:34:13.743156+00	2021-11-26 10:34:13.743163+00	8	291
9025	1	2021-11-26 10:34:13.745922+00	2021-11-26 10:34:13.745928+00	8	291
9026	2	2021-11-26 10:34:13.748554+00	2021-11-26 10:34:13.74856+00	8	291
9027	3	2021-11-26 10:34:13.751288+00	2021-11-26 10:34:13.751293+00	8	291
9028	4	2021-11-26 10:34:13.753997+00	2021-11-26 10:34:13.754005+00	8	291
9029	5	2021-11-26 10:34:13.756949+00	2021-11-26 10:34:13.756961+00	8	291
9030	6	2021-11-26 10:34:13.759743+00	2021-11-26 10:34:13.759752+00	8	291
9031	7	2021-11-26 10:34:13.762389+00	2021-11-26 10:34:13.762395+00	8	291
9032	8	2021-11-26 10:34:13.765027+00	2021-11-26 10:34:13.765032+00	8	291
9033	9	2021-11-26 10:34:13.767819+00	2021-11-26 10:34:13.767824+00	8	291
9034	10	2021-11-26 10:34:13.770434+00	2021-11-26 10:34:13.770441+00	8	291
9035	11	2021-11-26 10:34:13.773175+00	2021-11-26 10:34:13.773182+00	8	291
9036	12	2021-11-26 10:34:13.775873+00	2021-11-26 10:34:13.775881+00	8	291
9037	13	2021-11-26 10:34:13.778965+00	2021-11-26 10:34:13.778972+00	8	291
9038	14	2021-11-26 10:34:13.78167+00	2021-11-26 10:34:13.781675+00	8	291
9039	15	2021-11-26 10:34:13.78446+00	2021-11-26 10:34:13.784466+00	8	291
9040	16	2021-11-26 10:34:13.787326+00	2021-11-26 10:34:13.787336+00	8	291
9041	17	2021-11-26 10:34:13.790241+00	2021-11-26 10:34:13.790248+00	8	291
9042	18	2021-11-26 10:34:13.792928+00	2021-11-26 10:34:13.792933+00	8	291
9043	19	2021-11-26 10:34:13.795648+00	2021-11-26 10:34:13.795654+00	8	291
9044	0	2021-11-26 10:34:13.801301+00	2021-11-26 10:34:13.801306+00	8	292
9045	1	2021-11-26 10:34:13.804256+00	2021-11-26 10:34:13.804264+00	8	292
9046	2	2021-11-26 10:34:13.807418+00	2021-11-26 10:34:13.807426+00	8	292
9047	3	2021-11-26 10:34:13.810739+00	2021-11-26 10:34:13.810746+00	8	292
9048	4	2021-11-26 10:34:13.813938+00	2021-11-26 10:34:13.813943+00	8	292
9049	5	2021-11-26 10:34:13.817155+00	2021-11-26 10:34:13.81716+00	8	292
9050	6	2021-11-26 10:34:13.820591+00	2021-11-26 10:34:13.820599+00	8	292
9051	7	2021-11-26 10:34:13.823637+00	2021-11-26 10:34:13.823645+00	8	292
9052	8	2021-11-26 10:34:13.826613+00	2021-11-26 10:34:13.826619+00	8	292
9053	9	2021-11-26 10:34:13.829585+00	2021-11-26 10:34:13.82959+00	8	292
9054	10	2021-11-26 10:34:13.832505+00	2021-11-26 10:34:13.832511+00	8	292
9055	11	2021-11-26 10:34:13.835504+00	2021-11-26 10:34:13.835512+00	8	292
9056	12	2021-11-26 10:34:13.838667+00	2021-11-26 10:34:13.838675+00	8	292
9057	13	2021-11-26 10:34:13.841831+00	2021-11-26 10:34:13.84184+00	8	292
9058	14	2021-11-26 10:34:13.844966+00	2021-11-26 10:34:13.844973+00	8	292
9059	15	2021-11-26 10:34:13.847994+00	2021-11-26 10:34:13.848003+00	8	292
9060	16	2021-11-26 10:34:13.851026+00	2021-11-26 10:34:13.851034+00	8	292
9061	17	2021-11-26 10:34:13.853891+00	2021-11-26 10:34:13.853901+00	8	292
9062	18	2021-11-26 10:34:13.856873+00	2021-11-26 10:34:13.856881+00	8	292
9063	19	2021-11-26 10:34:13.859687+00	2021-11-26 10:34:13.859695+00	8	292
9064	0	2021-11-26 10:34:13.865273+00	2021-11-26 10:34:13.865279+00	8	293
9065	1	2021-11-26 10:34:13.868062+00	2021-11-26 10:34:13.868068+00	8	293
9066	2	2021-11-26 10:34:13.870797+00	2021-11-26 10:34:13.870804+00	8	293
9067	3	2021-11-26 10:34:13.873554+00	2021-11-26 10:34:13.87356+00	8	293
9068	4	2021-11-26 10:34:13.876314+00	2021-11-26 10:34:13.87632+00	8	293
9069	5	2021-11-26 10:34:13.879029+00	2021-11-26 10:34:13.879035+00	8	293
9070	6	2021-11-26 10:34:13.881791+00	2021-11-26 10:34:13.881797+00	8	293
9071	7	2021-11-26 10:34:13.884383+00	2021-11-26 10:34:13.884389+00	8	293
9072	8	2021-11-26 10:34:13.88713+00	2021-11-26 10:34:13.887138+00	8	293
9073	9	2021-11-26 10:34:13.89008+00	2021-11-26 10:34:13.890089+00	8	293
9074	10	2021-11-26 10:34:13.892875+00	2021-11-26 10:34:13.892882+00	8	293
9075	11	2021-11-26 10:34:13.895484+00	2021-11-26 10:34:13.89549+00	8	293
9076	12	2021-11-26 10:34:13.898348+00	2021-11-26 10:34:13.898354+00	8	293
9077	13	2021-11-26 10:34:13.90109+00	2021-11-26 10:34:13.901095+00	8	293
9078	14	2021-11-26 10:34:13.905391+00	2021-11-26 10:34:13.9054+00	8	293
9079	15	2021-11-26 10:34:13.908518+00	2021-11-26 10:34:13.908529+00	8	293
9080	16	2021-11-26 10:34:13.911432+00	2021-11-26 10:34:13.911438+00	8	293
9081	17	2021-11-26 10:34:13.914184+00	2021-11-26 10:34:13.91419+00	8	293
9082	18	2021-11-26 10:34:13.916955+00	2021-11-26 10:34:13.91696+00	8	293
9083	19	2021-11-26 10:34:13.920945+00	2021-11-26 10:34:13.920954+00	8	293
9084	0	2021-11-26 10:34:13.926672+00	2021-11-26 10:34:13.926679+00	8	294
9085	1	2021-11-26 10:34:13.929357+00	2021-11-26 10:34:13.929363+00	8	294
9086	2	2021-11-26 10:34:13.932114+00	2021-11-26 10:34:13.932119+00	8	294
9087	3	2021-11-26 10:34:13.934852+00	2021-11-26 10:34:13.934858+00	8	294
9088	4	2021-11-26 10:34:13.937614+00	2021-11-26 10:34:13.93762+00	8	294
9089	5	2021-11-26 10:34:13.940341+00	2021-11-26 10:34:13.940347+00	8	294
9090	6	2021-11-26 10:34:13.942975+00	2021-11-26 10:34:13.942981+00	8	294
9091	7	2021-11-26 10:34:13.945662+00	2021-11-26 10:34:13.945668+00	8	294
9092	8	2021-11-26 10:34:13.948401+00	2021-11-26 10:34:13.948407+00	8	294
9093	9	2021-11-26 10:34:13.951141+00	2021-11-26 10:34:13.951146+00	8	294
9094	10	2021-11-26 10:34:13.953889+00	2021-11-26 10:34:13.953895+00	8	294
9095	11	2021-11-26 10:34:13.956999+00	2021-11-26 10:34:13.957008+00	8	294
9096	12	2021-11-26 10:34:13.959759+00	2021-11-26 10:34:13.959765+00	8	294
9097	13	2021-11-26 10:34:13.962307+00	2021-11-26 10:34:13.962312+00	8	294
9098	14	2021-11-26 10:34:13.965032+00	2021-11-26 10:34:13.965038+00	8	294
9099	15	2021-11-26 10:34:13.967733+00	2021-11-26 10:34:13.967739+00	8	294
9100	16	2021-11-26 10:34:13.97056+00	2021-11-26 10:34:13.970571+00	8	294
9101	17	2021-11-26 10:34:13.97364+00	2021-11-26 10:34:13.973649+00	8	294
9102	18	2021-11-26 10:34:13.976626+00	2021-11-26 10:34:13.976633+00	8	294
9103	19	2021-11-26 10:34:13.979414+00	2021-11-26 10:34:13.97942+00	8	294
9104	0	2021-11-26 10:34:13.984949+00	2021-11-26 10:34:13.984955+00	8	295
9105	1	2021-11-26 10:34:13.987723+00	2021-11-26 10:34:13.987731+00	8	295
9106	2	2021-11-26 10:34:13.990596+00	2021-11-26 10:34:13.990604+00	8	295
9107	3	2021-11-26 10:34:13.993618+00	2021-11-26 10:34:13.993624+00	8	295
9108	4	2021-11-26 10:34:13.996358+00	2021-11-26 10:34:13.996364+00	8	295
9109	5	2021-11-26 10:34:13.999187+00	2021-11-26 10:34:13.999192+00	8	295
9110	6	2021-11-26 10:34:14.002234+00	2021-11-26 10:34:14.002245+00	8	295
9111	7	2021-11-26 10:34:14.00518+00	2021-11-26 10:34:14.005189+00	8	295
9112	8	2021-11-26 10:34:14.008071+00	2021-11-26 10:34:14.008079+00	8	295
9113	9	2021-11-26 10:34:14.010852+00	2021-11-26 10:34:14.010858+00	8	295
9114	10	2021-11-26 10:34:14.013619+00	2021-11-26 10:34:14.013626+00	8	295
9115	11	2021-11-26 10:34:14.016274+00	2021-11-26 10:34:14.016279+00	8	295
9116	12	2021-11-26 10:34:14.01898+00	2021-11-26 10:34:14.018987+00	8	295
9117	13	2021-11-26 10:34:14.021586+00	2021-11-26 10:34:14.021592+00	8	295
9118	14	2021-11-26 10:34:14.0255+00	2021-11-26 10:34:14.025505+00	8	295
9119	15	2021-11-26 10:34:14.028433+00	2021-11-26 10:34:14.028438+00	8	295
9120	16	2021-11-26 10:34:14.031057+00	2021-11-26 10:34:14.031062+00	8	295
9121	17	2021-11-26 10:34:14.033741+00	2021-11-26 10:34:14.033749+00	8	295
9122	18	2021-11-26 10:34:14.036495+00	2021-11-26 10:34:14.036504+00	8	295
9123	19	2021-11-26 10:34:14.039465+00	2021-11-26 10:34:14.039474+00	8	295
9124	0	2021-11-26 10:34:14.044912+00	2021-11-26 10:34:14.044917+00	8	296
9125	1	2021-11-26 10:34:14.047681+00	2021-11-26 10:34:14.047687+00	8	296
9126	2	2021-11-26 10:34:14.050456+00	2021-11-26 10:34:14.050461+00	8	296
9127	3	2021-11-26 10:34:14.05337+00	2021-11-26 10:34:14.053379+00	8	296
9128	4	2021-11-26 10:34:14.05622+00	2021-11-26 10:34:14.056228+00	8	296
9129	5	2021-11-26 10:34:14.059032+00	2021-11-26 10:34:14.059039+00	8	296
9130	6	2021-11-26 10:34:14.06172+00	2021-11-26 10:34:14.061726+00	8	296
9131	7	2021-11-26 10:34:14.064983+00	2021-11-26 10:34:14.064992+00	8	296
9132	8	2021-11-26 10:34:14.068397+00	2021-11-26 10:34:14.068407+00	8	296
9133	9	2021-11-26 10:34:14.071817+00	2021-11-26 10:34:14.07183+00	8	296
9134	10	2021-11-26 10:34:14.074959+00	2021-11-26 10:34:14.074968+00	8	296
9135	11	2021-11-26 10:34:14.078202+00	2021-11-26 10:34:14.078209+00	8	296
9136	12	2021-11-26 10:34:14.081372+00	2021-11-26 10:34:14.081378+00	8	296
9137	13	2021-11-26 10:34:14.084602+00	2021-11-26 10:34:14.084608+00	8	296
9138	14	2021-11-26 10:34:14.087521+00	2021-11-26 10:34:14.087527+00	8	296
9139	15	2021-11-26 10:34:14.090448+00	2021-11-26 10:34:14.090454+00	8	296
9140	16	2021-11-26 10:34:14.093153+00	2021-11-26 10:34:14.093159+00	8	296
9141	17	2021-11-26 10:34:14.095861+00	2021-11-26 10:34:14.095866+00	8	296
9142	18	2021-11-26 10:34:14.098745+00	2021-11-26 10:34:14.098751+00	8	296
9143	19	2021-11-26 10:34:14.102093+00	2021-11-26 10:34:14.102106+00	8	296
9144	0	2021-11-26 10:34:14.108823+00	2021-11-26 10:34:14.108829+00	8	297
9145	1	2021-11-26 10:34:14.111753+00	2021-11-26 10:34:14.111759+00	8	297
9146	2	2021-11-26 10:34:14.114708+00	2021-11-26 10:34:14.114713+00	8	297
9147	3	2021-11-26 10:34:14.117554+00	2021-11-26 10:34:14.11756+00	8	297
9148	4	2021-11-26 10:34:14.120321+00	2021-11-26 10:34:14.12033+00	8	297
9149	5	2021-11-26 10:34:14.12316+00	2021-11-26 10:34:14.12317+00	8	297
9150	6	2021-11-26 10:34:14.126472+00	2021-11-26 10:34:14.126483+00	8	297
9151	7	2021-11-26 10:34:14.129739+00	2021-11-26 10:34:14.129748+00	8	297
9152	8	2021-11-26 10:34:14.132838+00	2021-11-26 10:34:14.132844+00	8	297
9153	9	2021-11-26 10:34:14.136183+00	2021-11-26 10:34:14.136194+00	8	297
9154	10	2021-11-26 10:34:14.139781+00	2021-11-26 10:34:14.139794+00	8	297
9155	11	2021-11-26 10:34:14.143082+00	2021-11-26 10:34:14.143089+00	8	297
9156	12	2021-11-26 10:34:14.146133+00	2021-11-26 10:34:14.146139+00	8	297
9157	13	2021-11-26 10:34:14.14893+00	2021-11-26 10:34:14.148936+00	8	297
9158	14	2021-11-26 10:34:14.151832+00	2021-11-26 10:34:14.151838+00	8	297
9159	15	2021-11-26 10:34:14.154689+00	2021-11-26 10:34:14.154695+00	8	297
9160	16	2021-11-26 10:34:14.15752+00	2021-11-26 10:34:14.157526+00	8	297
9161	17	2021-11-26 10:34:14.160612+00	2021-11-26 10:34:14.160618+00	8	297
9162	18	2021-11-26 10:34:14.163747+00	2021-11-26 10:34:14.163753+00	8	297
9163	19	2021-11-26 10:34:14.167573+00	2021-11-26 10:34:14.167594+00	8	297
9164	0	2021-11-26 10:34:14.175489+00	2021-11-26 10:34:14.175501+00	8	298
9165	1	2021-11-26 10:34:14.178652+00	2021-11-26 10:34:14.178659+00	8	298
9166	2	2021-11-26 10:34:14.181719+00	2021-11-26 10:34:14.181726+00	8	298
9167	3	2021-11-26 10:34:14.184905+00	2021-11-26 10:34:14.184912+00	8	298
9168	4	2021-11-26 10:34:14.188355+00	2021-11-26 10:34:14.188365+00	8	298
9169	5	2021-11-26 10:34:14.191832+00	2021-11-26 10:34:14.191842+00	8	298
9170	6	2021-11-26 10:34:14.195117+00	2021-11-26 10:34:14.195124+00	8	298
9171	7	2021-11-26 10:34:14.198243+00	2021-11-26 10:34:14.198249+00	8	298
9172	8	2021-11-26 10:34:14.201446+00	2021-11-26 10:34:14.201453+00	8	298
9173	9	2021-11-26 10:34:14.204514+00	2021-11-26 10:34:14.204522+00	8	298
9174	10	2021-11-26 10:34:14.207557+00	2021-11-26 10:34:14.207565+00	8	298
9175	11	2021-11-26 10:34:14.210634+00	2021-11-26 10:34:14.210639+00	8	298
9176	12	2021-11-26 10:34:14.213706+00	2021-11-26 10:34:14.213712+00	8	298
9177	13	2021-11-26 10:34:14.216903+00	2021-11-26 10:34:14.216912+00	8	298
9178	14	2021-11-26 10:34:14.2202+00	2021-11-26 10:34:14.22021+00	8	298
9179	15	2021-11-26 10:34:14.223422+00	2021-11-26 10:34:14.22343+00	8	298
9180	16	2021-11-26 10:34:14.226212+00	2021-11-26 10:34:14.226219+00	8	298
9181	17	2021-11-26 10:34:14.22926+00	2021-11-26 10:34:14.229267+00	8	298
9182	18	2021-11-26 10:34:14.232152+00	2021-11-26 10:34:14.232158+00	8	298
9183	19	2021-11-26 10:34:14.235387+00	2021-11-26 10:34:14.235392+00	8	298
9184	0	2021-11-26 10:34:14.24122+00	2021-11-26 10:34:14.241226+00	8	299
9185	1	2021-11-26 10:34:14.244002+00	2021-11-26 10:34:14.244007+00	8	299
9186	2	2021-11-26 10:34:14.246939+00	2021-11-26 10:34:14.246943+00	8	299
9187	3	2021-11-26 10:34:14.249905+00	2021-11-26 10:34:14.24991+00	8	299
9188	4	2021-11-26 10:34:14.253059+00	2021-11-26 10:34:14.253063+00	8	299
9189	5	2021-11-26 10:34:14.256177+00	2021-11-26 10:34:14.256189+00	8	299
9190	6	2021-11-26 10:34:14.259496+00	2021-11-26 10:34:14.259501+00	8	299
9191	7	2021-11-26 10:34:14.262513+00	2021-11-26 10:34:14.262518+00	8	299
9192	8	2021-11-26 10:34:14.265476+00	2021-11-26 10:34:14.265481+00	8	299
9193	9	2021-11-26 10:34:14.268434+00	2021-11-26 10:34:14.26844+00	8	299
9194	10	2021-11-26 10:34:14.2715+00	2021-11-26 10:34:14.271508+00	8	299
9195	11	2021-11-26 10:34:14.274491+00	2021-11-26 10:34:14.274498+00	8	299
9196	12	2021-11-26 10:34:14.279271+00	2021-11-26 10:34:14.27928+00	8	299
9197	13	2021-11-26 10:34:14.2825+00	2021-11-26 10:34:14.282509+00	8	299
9198	14	2021-11-26 10:34:14.28564+00	2021-11-26 10:34:14.285653+00	8	299
9199	15	2021-11-26 10:34:14.288847+00	2021-11-26 10:34:14.288856+00	8	299
9200	16	2021-11-26 10:34:14.291975+00	2021-11-26 10:34:14.291983+00	8	299
9201	17	2021-11-26 10:34:14.294883+00	2021-11-26 10:34:14.294889+00	8	299
9202	18	2021-11-26 10:34:14.297973+00	2021-11-26 10:34:14.297978+00	8	299
9203	19	2021-11-26 10:34:14.301138+00	2021-11-26 10:34:14.301144+00	8	299
9204	0	2021-11-26 10:34:14.307419+00	2021-11-26 10:34:14.307425+00	8	300
9205	1	2021-11-26 10:34:14.310571+00	2021-11-26 10:34:14.310577+00	8	300
9206	2	2021-11-26 10:34:14.313604+00	2021-11-26 10:34:14.313609+00	8	300
9207	3	2021-11-26 10:34:14.316699+00	2021-11-26 10:34:14.316705+00	8	300
9208	4	2021-11-26 10:34:14.319798+00	2021-11-26 10:34:14.319804+00	8	300
9209	5	2021-11-26 10:34:14.323191+00	2021-11-26 10:34:14.323201+00	8	300
9210	6	2021-11-26 10:34:14.326967+00	2021-11-26 10:34:14.326974+00	8	300
9211	7	2021-11-26 10:34:14.33042+00	2021-11-26 10:34:14.330425+00	8	300
9212	8	2021-11-26 10:34:14.333594+00	2021-11-26 10:34:14.3336+00	8	300
9213	9	2021-11-26 10:34:14.336984+00	2021-11-26 10:34:14.336993+00	8	300
9214	10	2021-11-26 10:34:14.340542+00	2021-11-26 10:34:14.340553+00	8	300
9215	11	2021-11-26 10:34:14.343776+00	2021-11-26 10:34:14.343785+00	8	300
9216	12	2021-11-26 10:34:14.346952+00	2021-11-26 10:34:14.346958+00	8	300
9217	13	2021-11-26 10:34:14.349994+00	2021-11-26 10:34:14.35+00	8	300
9218	14	2021-11-26 10:34:14.353188+00	2021-11-26 10:34:14.353196+00	8	300
9219	15	2021-11-26 10:34:14.356149+00	2021-11-26 10:34:14.356157+00	8	300
9220	16	2021-11-26 10:34:14.35915+00	2021-11-26 10:34:14.359158+00	8	300
9221	17	2021-11-26 10:34:14.362023+00	2021-11-26 10:34:14.362029+00	8	300
9222	18	2021-11-26 10:34:14.364822+00	2021-11-26 10:34:14.364827+00	8	300
9223	19	2021-11-26 10:34:14.367519+00	2021-11-26 10:34:14.367524+00	8	300
9224	0	2021-11-26 10:34:14.373532+00	2021-11-26 10:34:14.37354+00	8	301
9225	1	2021-11-26 10:34:14.376421+00	2021-11-26 10:34:14.376427+00	8	301
9226	2	2021-11-26 10:34:14.37922+00	2021-11-26 10:34:14.379226+00	8	301
9227	3	2021-11-26 10:34:14.382078+00	2021-11-26 10:34:14.382084+00	8	301
9228	4	2021-11-26 10:34:14.384991+00	2021-11-26 10:34:14.384997+00	8	301
9229	5	2021-11-26 10:34:14.387992+00	2021-11-26 10:34:14.388+00	8	301
9230	6	2021-11-26 10:34:14.390869+00	2021-11-26 10:34:14.390877+00	8	301
9231	7	2021-11-26 10:34:14.393905+00	2021-11-26 10:34:14.393912+00	8	301
9232	8	2021-11-26 10:34:14.396921+00	2021-11-26 10:34:14.396927+00	8	301
9233	9	2021-11-26 10:34:14.399742+00	2021-11-26 10:34:14.399749+00	8	301
9234	10	2021-11-26 10:34:14.403903+00	2021-11-26 10:34:14.403914+00	8	301
9235	11	2021-11-26 10:34:14.407226+00	2021-11-26 10:34:14.407236+00	8	301
9236	12	2021-11-26 10:34:14.410394+00	2021-11-26 10:34:14.410401+00	8	301
9237	13	2021-11-26 10:34:14.413394+00	2021-11-26 10:34:14.413399+00	8	301
9238	14	2021-11-26 10:34:14.416229+00	2021-11-26 10:34:14.416236+00	8	301
9239	15	2021-11-26 10:34:14.419452+00	2021-11-26 10:34:14.419461+00	8	301
9240	16	2021-11-26 10:34:14.422729+00	2021-11-26 10:34:14.422737+00	8	301
9241	17	2021-11-26 10:34:14.42576+00	2021-11-26 10:34:14.425768+00	8	301
9242	18	2021-11-26 10:34:14.42866+00	2021-11-26 10:34:14.428666+00	8	301
9243	19	2021-11-26 10:34:14.431867+00	2021-11-26 10:34:14.431878+00	8	301
9244	0	2021-11-26 10:34:14.438608+00	2021-11-26 10:34:14.438618+00	8	302
9245	1	2021-11-26 10:34:14.441842+00	2021-11-26 10:34:14.44185+00	8	302
9246	2	2021-11-26 10:34:14.444906+00	2021-11-26 10:34:14.444913+00	8	302
9247	3	2021-11-26 10:34:14.44801+00	2021-11-26 10:34:14.448015+00	8	302
9248	4	2021-11-26 10:34:14.451101+00	2021-11-26 10:34:14.451107+00	8	302
9249	5	2021-11-26 10:34:14.454118+00	2021-11-26 10:34:14.454124+00	8	302
9250	6	2021-11-26 10:34:14.456921+00	2021-11-26 10:34:14.456926+00	8	302
9251	7	2021-11-26 10:34:14.4597+00	2021-11-26 10:34:14.459705+00	8	302
9252	8	2021-11-26 10:34:14.462494+00	2021-11-26 10:34:14.4625+00	8	302
9253	9	2021-11-26 10:34:14.465487+00	2021-11-26 10:34:14.465492+00	8	302
9254	10	2021-11-26 10:34:14.505598+00	2021-11-26 10:34:14.505617+00	8	302
9255	11	2021-11-26 10:34:14.509966+00	2021-11-26 10:34:14.509991+00	8	302
9256	12	2021-11-26 10:34:14.514671+00	2021-11-26 10:34:14.514695+00	8	302
9257	13	2021-11-26 10:34:14.520386+00	2021-11-26 10:34:14.520414+00	8	302
9258	14	2021-11-26 10:34:14.526373+00	2021-11-26 10:34:14.526405+00	8	302
9259	15	2021-11-26 10:34:14.532367+00	2021-11-26 10:34:14.532391+00	8	302
9260	16	2021-11-26 10:34:14.538398+00	2021-11-26 10:34:14.538438+00	8	302
9261	17	2021-11-26 10:34:14.544253+00	2021-11-26 10:34:14.544284+00	8	302
9262	18	2021-11-26 10:34:14.550104+00	2021-11-26 10:34:14.550132+00	8	302
9263	19	2021-11-26 10:34:14.555993+00	2021-11-26 10:34:14.556024+00	8	302
9264	0	2021-11-26 10:34:14.568454+00	2021-11-26 10:34:14.568497+00	8	303
9265	1	2021-11-26 10:34:14.574574+00	2021-11-26 10:34:14.574602+00	8	303
9266	2	2021-11-26 10:34:14.580164+00	2021-11-26 10:34:14.58019+00	8	303
9267	3	2021-11-26 10:34:14.585879+00	2021-11-26 10:34:14.58591+00	8	303
9268	4	2021-11-26 10:34:14.592537+00	2021-11-26 10:34:14.592569+00	8	303
9269	5	2021-11-26 10:34:14.598376+00	2021-11-26 10:34:14.598405+00	8	303
9270	6	2021-11-26 10:34:14.604039+00	2021-11-26 10:34:14.604068+00	8	303
9271	7	2021-11-26 10:34:14.609506+00	2021-11-26 10:34:14.609533+00	8	303
9272	8	2021-11-26 10:34:14.615103+00	2021-11-26 10:34:14.615129+00	8	303
9273	9	2021-11-26 10:34:14.620672+00	2021-11-26 10:34:14.6207+00	8	303
9274	10	2021-11-26 10:34:14.627135+00	2021-11-26 10:34:14.627179+00	8	303
9275	11	2021-11-26 10:34:14.633372+00	2021-11-26 10:34:14.633402+00	8	303
9276	12	2021-11-26 10:34:14.639693+00	2021-11-26 10:34:14.639723+00	8	303
9277	13	2021-11-26 10:34:14.644354+00	2021-11-26 10:34:14.644374+00	8	303
9278	14	2021-11-26 10:34:14.65104+00	2021-11-26 10:34:14.651059+00	8	303
9279	15	2021-11-26 10:34:14.655157+00	2021-11-26 10:34:14.655175+00	8	303
9280	16	2021-11-26 10:34:14.659751+00	2021-11-26 10:34:14.659768+00	8	303
9281	17	2021-11-26 10:34:14.666329+00	2021-11-26 10:34:14.666342+00	8	303
9282	18	2021-11-26 10:34:14.669618+00	2021-11-26 10:34:14.669627+00	8	303
9283	19	2021-11-26 10:34:14.672789+00	2021-11-26 10:34:14.672797+00	8	303
9284	0	2021-11-26 10:34:14.679524+00	2021-11-26 10:34:14.679532+00	8	304
9285	1	2021-11-26 10:34:14.682843+00	2021-11-26 10:34:14.682849+00	8	304
9286	2	2021-11-26 10:34:14.686077+00	2021-11-26 10:34:14.686083+00	8	304
9287	3	2021-11-26 10:34:14.689444+00	2021-11-26 10:34:14.689454+00	8	304
9288	4	2021-11-26 10:34:14.692795+00	2021-11-26 10:34:14.692801+00	8	304
9289	5	2021-11-26 10:34:14.695977+00	2021-11-26 10:34:14.695982+00	8	304
9290	6	2021-11-26 10:34:14.699061+00	2021-11-26 10:34:14.699067+00	8	304
9291	7	2021-11-26 10:34:14.702192+00	2021-11-26 10:34:14.702199+00	8	304
9292	8	2021-11-26 10:34:14.70553+00	2021-11-26 10:34:14.705538+00	8	304
9293	9	2021-11-26 10:34:14.708935+00	2021-11-26 10:34:14.708946+00	8	304
9294	10	2021-11-26 10:34:14.71205+00	2021-11-26 10:34:14.712059+00	8	304
9295	11	2021-11-26 10:34:14.71517+00	2021-11-26 10:34:14.715176+00	8	304
9296	12	2021-11-26 10:34:14.718062+00	2021-11-26 10:34:14.718068+00	8	304
9297	13	2021-11-26 10:34:14.721412+00	2021-11-26 10:34:14.721422+00	8	304
9298	14	2021-11-26 10:34:14.724601+00	2021-11-26 10:34:14.72461+00	8	304
9299	15	2021-11-26 10:34:14.727626+00	2021-11-26 10:34:14.727633+00	8	304
9300	16	2021-11-26 10:34:14.730642+00	2021-11-26 10:34:14.730648+00	8	304
9301	17	2021-11-26 10:34:14.733581+00	2021-11-26 10:34:14.733586+00	8	304
9302	18	2021-11-26 10:34:14.736438+00	2021-11-26 10:34:14.736444+00	8	304
9303	19	2021-11-26 10:34:14.739514+00	2021-11-26 10:34:14.739524+00	8	304
9304	0	2021-11-26 10:34:14.74556+00	2021-11-26 10:34:14.745565+00	8	305
9305	1	2021-11-26 10:34:14.748897+00	2021-11-26 10:34:14.748908+00	8	305
9306	2	2021-11-26 10:34:14.752347+00	2021-11-26 10:34:14.75236+00	8	305
9307	3	2021-11-26 10:34:14.755631+00	2021-11-26 10:34:14.755641+00	8	305
9308	4	2021-11-26 10:34:14.758863+00	2021-11-26 10:34:14.758871+00	8	305
9309	5	2021-11-26 10:34:14.761878+00	2021-11-26 10:34:14.761885+00	8	305
9310	6	2021-11-26 10:34:14.764878+00	2021-11-26 10:34:14.764884+00	8	305
9311	7	2021-11-26 10:34:14.769541+00	2021-11-26 10:34:14.769553+00	8	305
9312	8	2021-11-26 10:34:14.77297+00	2021-11-26 10:34:14.772979+00	8	305
9313	9	2021-11-26 10:34:14.775764+00	2021-11-26 10:34:14.775771+00	8	305
9314	10	2021-11-26 10:34:14.778716+00	2021-11-26 10:34:14.778721+00	8	305
9315	11	2021-11-26 10:34:14.781617+00	2021-11-26 10:34:14.781623+00	8	305
9316	12	2021-11-26 10:34:14.784489+00	2021-11-26 10:34:14.784496+00	8	305
9317	13	2021-11-26 10:34:14.787344+00	2021-11-26 10:34:14.787353+00	8	305
9318	14	2021-11-26 10:34:14.790186+00	2021-11-26 10:34:14.790193+00	8	305
9319	15	2021-11-26 10:34:14.79317+00	2021-11-26 10:34:14.793177+00	8	305
9320	16	2021-11-26 10:34:14.796229+00	2021-11-26 10:34:14.796236+00	8	305
9321	17	2021-11-26 10:34:14.79923+00	2021-11-26 10:34:14.799236+00	8	305
9322	18	2021-11-26 10:34:14.802122+00	2021-11-26 10:34:14.802128+00	8	305
9323	19	2021-11-26 10:34:14.80528+00	2021-11-26 10:34:14.805291+00	8	305
9324	0	2021-11-26 10:34:14.811346+00	2021-11-26 10:34:14.811352+00	8	306
9325	1	2021-11-26 10:34:14.814322+00	2021-11-26 10:34:14.814328+00	8	306
9326	2	2021-11-26 10:34:14.817304+00	2021-11-26 10:34:14.817309+00	8	306
9327	3	2021-11-26 10:34:14.820439+00	2021-11-26 10:34:14.820449+00	8	306
9328	4	2021-11-26 10:34:14.824039+00	2021-11-26 10:34:14.824048+00	8	306
9329	5	2021-11-26 10:34:14.827158+00	2021-11-26 10:34:14.827166+00	8	306
9330	6	2021-11-26 10:34:14.830254+00	2021-11-26 10:34:14.830264+00	8	306
9331	7	2021-11-26 10:34:14.833452+00	2021-11-26 10:34:14.83346+00	8	306
9332	8	2021-11-26 10:34:14.836994+00	2021-11-26 10:34:14.837006+00	8	306
9333	9	2021-11-26 10:34:14.844046+00	2021-11-26 10:34:14.844056+00	8	306
9334	10	2021-11-26 10:34:14.847507+00	2021-11-26 10:34:14.847515+00	8	306
9335	11	2021-11-26 10:34:14.850394+00	2021-11-26 10:34:14.8504+00	8	306
9336	12	2021-11-26 10:34:14.853195+00	2021-11-26 10:34:14.853202+00	8	306
9337	13	2021-11-26 10:34:14.855981+00	2021-11-26 10:34:14.855987+00	8	306
9338	14	2021-11-26 10:34:14.858638+00	2021-11-26 10:34:14.858644+00	8	306
9339	15	2021-11-26 10:34:14.861352+00	2021-11-26 10:34:14.861359+00	8	306
9340	16	2021-11-26 10:34:14.864177+00	2021-11-26 10:34:14.864183+00	8	306
9341	17	2021-11-26 10:34:14.867122+00	2021-11-26 10:34:14.867128+00	8	306
9342	18	2021-11-26 10:34:14.869711+00	2021-11-26 10:34:14.869718+00	8	306
9343	19	2021-11-26 10:34:14.872801+00	2021-11-26 10:34:14.87281+00	8	306
9344	0	2021-11-26 10:34:14.878327+00	2021-11-26 10:34:14.878332+00	8	307
9345	1	2021-11-26 10:34:14.880955+00	2021-11-26 10:34:14.880961+00	8	307
9346	2	2021-11-26 10:34:14.883546+00	2021-11-26 10:34:14.883553+00	8	307
9347	3	2021-11-26 10:34:14.88662+00	2021-11-26 10:34:14.886629+00	8	307
9348	4	2021-11-26 10:34:14.889639+00	2021-11-26 10:34:14.889648+00	8	307
9349	5	2021-11-26 10:34:14.892776+00	2021-11-26 10:34:14.892786+00	8	307
9350	6	2021-11-26 10:34:14.897063+00	2021-11-26 10:34:14.897069+00	8	307
9351	7	2021-11-26 10:34:14.900132+00	2021-11-26 10:34:14.900138+00	8	307
9352	8	2021-11-26 10:34:14.903521+00	2021-11-26 10:34:14.903531+00	8	307
9353	9	2021-11-26 10:34:14.90668+00	2021-11-26 10:34:14.906687+00	8	307
9354	10	2021-11-26 10:34:14.909535+00	2021-11-26 10:34:14.909542+00	8	307
9355	11	2021-11-26 10:34:14.91256+00	2021-11-26 10:34:14.912566+00	8	307
9356	12	2021-11-26 10:34:14.915669+00	2021-11-26 10:34:14.915675+00	8	307
9357	13	2021-11-26 10:34:14.918712+00	2021-11-26 10:34:14.918717+00	8	307
9358	14	2021-11-26 10:34:14.921835+00	2021-11-26 10:34:14.921841+00	8	307
9359	15	2021-11-26 10:34:14.924697+00	2021-11-26 10:34:14.924703+00	8	307
9360	16	2021-11-26 10:34:14.927646+00	2021-11-26 10:34:14.927652+00	8	307
9361	17	2021-11-26 10:34:14.930925+00	2021-11-26 10:34:14.93093+00	8	307
9362	18	2021-11-26 10:34:14.934138+00	2021-11-26 10:34:14.934144+00	8	307
9363	19	2021-11-26 10:34:14.937197+00	2021-11-26 10:34:14.937204+00	8	307
9364	0	2021-11-26 10:34:14.943424+00	2021-11-26 10:34:14.943432+00	8	308
9365	1	2021-11-26 10:34:14.946193+00	2021-11-26 10:34:14.946198+00	8	308
9366	2	2021-11-26 10:34:14.94906+00	2021-11-26 10:34:14.949066+00	8	308
9367	3	2021-11-26 10:34:14.951748+00	2021-11-26 10:34:14.951755+00	8	308
9368	4	2021-11-26 10:34:14.954766+00	2021-11-26 10:34:14.954776+00	8	308
9369	5	2021-11-26 10:34:14.957889+00	2021-11-26 10:34:14.957898+00	8	308
9370	6	2021-11-26 10:34:14.960997+00	2021-11-26 10:34:14.961004+00	8	308
9371	7	2021-11-26 10:34:14.967634+00	2021-11-26 10:34:14.96764+00	8	308
9372	8	2021-11-26 10:34:14.971012+00	2021-11-26 10:34:14.97102+00	8	308
9373	9	2021-11-26 10:34:14.974092+00	2021-11-26 10:34:14.9741+00	8	308
9374	10	2021-11-26 10:34:14.977416+00	2021-11-26 10:34:14.977423+00	8	308
9375	11	2021-11-26 10:34:14.980584+00	2021-11-26 10:34:14.98059+00	8	308
9376	12	2021-11-26 10:34:14.983664+00	2021-11-26 10:34:14.983673+00	8	308
9377	13	2021-11-26 10:34:14.986805+00	2021-11-26 10:34:14.986814+00	8	308
9378	14	2021-11-26 10:34:14.989697+00	2021-11-26 10:34:14.989705+00	8	308
9379	15	2021-11-26 10:34:14.99255+00	2021-11-26 10:34:14.992558+00	8	308
9380	16	2021-11-26 10:34:14.995323+00	2021-11-26 10:34:14.995331+00	8	308
9381	17	2021-11-26 10:34:14.998249+00	2021-11-26 10:34:14.998255+00	8	308
9382	18	2021-11-26 10:34:15.001084+00	2021-11-26 10:34:15.00109+00	8	308
9383	19	2021-11-26 10:34:15.003806+00	2021-11-26 10:34:15.003812+00	8	308
9384	0	2021-11-26 10:34:15.009338+00	2021-11-26 10:34:15.009344+00	8	309
9385	1	2021-11-26 10:34:15.011939+00	2021-11-26 10:34:15.011945+00	8	309
9386	2	2021-11-26 10:34:15.014664+00	2021-11-26 10:34:15.014669+00	8	309
9387	3	2021-11-26 10:34:15.017347+00	2021-11-26 10:34:15.017352+00	8	309
9388	4	2021-11-26 10:34:15.019971+00	2021-11-26 10:34:15.019977+00	8	309
9389	5	2021-11-26 10:34:15.023035+00	2021-11-26 10:34:15.023047+00	8	309
9390	6	2021-11-26 10:34:15.025943+00	2021-11-26 10:34:15.02595+00	8	309
9391	7	2021-11-26 10:34:15.028643+00	2021-11-26 10:34:15.028648+00	8	309
9392	8	2021-11-26 10:34:15.031459+00	2021-11-26 10:34:15.031465+00	8	309
9393	9	2021-11-26 10:34:15.034184+00	2021-11-26 10:34:15.03419+00	8	309
9394	10	2021-11-26 10:34:15.037123+00	2021-11-26 10:34:15.037133+00	8	309
9395	11	2021-11-26 10:34:15.040027+00	2021-11-26 10:34:15.040035+00	8	309
9396	12	2021-11-26 10:34:15.043227+00	2021-11-26 10:34:15.043237+00	8	309
9397	13	2021-11-26 10:34:15.046493+00	2021-11-26 10:34:15.0465+00	8	309
9398	14	2021-11-26 10:34:15.049353+00	2021-11-26 10:34:15.049359+00	8	309
9399	15	2021-11-26 10:34:15.05214+00	2021-11-26 10:34:15.05215+00	8	309
9400	16	2021-11-26 10:34:15.055192+00	2021-11-26 10:34:15.055201+00	8	309
9401	17	2021-11-26 10:34:15.058142+00	2021-11-26 10:34:15.05815+00	8	309
9402	18	2021-11-26 10:34:15.061237+00	2021-11-26 10:34:15.061243+00	8	309
9403	19	2021-11-26 10:34:15.064192+00	2021-11-26 10:34:15.064198+00	8	309
9404	0	2021-11-26 10:34:15.070012+00	2021-11-26 10:34:15.070017+00	8	310
9405	1	2021-11-26 10:34:15.07283+00	2021-11-26 10:34:15.072836+00	8	310
9406	2	2021-11-26 10:34:15.075602+00	2021-11-26 10:34:15.075607+00	8	310
9407	3	2021-11-26 10:34:15.078383+00	2021-11-26 10:34:15.078388+00	8	310
9408	4	2021-11-26 10:34:15.081269+00	2021-11-26 10:34:15.081275+00	8	310
9409	5	2021-11-26 10:34:15.084008+00	2021-11-26 10:34:15.084014+00	8	310
9410	6	2021-11-26 10:34:15.086833+00	2021-11-26 10:34:15.086843+00	8	310
9411	7	2021-11-26 10:34:15.089772+00	2021-11-26 10:34:15.08978+00	8	310
9412	8	2021-11-26 10:34:15.096344+00	2021-11-26 10:34:15.096355+00	8	310
9413	9	2021-11-26 10:34:15.099464+00	2021-11-26 10:34:15.09947+00	8	310
9414	10	2021-11-26 10:34:15.102434+00	2021-11-26 10:34:15.10244+00	8	310
9415	11	2021-11-26 10:34:15.105674+00	2021-11-26 10:34:15.105685+00	8	310
9416	12	2021-11-26 10:34:15.108799+00	2021-11-26 10:34:15.108808+00	8	310
9417	13	2021-11-26 10:34:15.111706+00	2021-11-26 10:34:15.111713+00	8	310
9418	14	2021-11-26 10:34:15.11479+00	2021-11-26 10:34:15.114796+00	8	310
9419	15	2021-11-26 10:34:15.117451+00	2021-11-26 10:34:15.117457+00	8	310
9420	16	2021-11-26 10:34:15.120283+00	2021-11-26 10:34:15.12029+00	8	310
9421	17	2021-11-26 10:34:15.123028+00	2021-11-26 10:34:15.123036+00	8	310
9422	18	2021-11-26 10:34:15.126799+00	2021-11-26 10:34:15.126805+00	8	310
9423	19	2021-11-26 10:34:15.129813+00	2021-11-26 10:34:15.12982+00	8	310
9424	0	2021-11-26 10:34:15.135635+00	2021-11-26 10:34:15.135646+00	8	311
9425	1	2021-11-26 10:34:15.138766+00	2021-11-26 10:34:15.138776+00	8	311
9426	2	2021-11-26 10:34:15.141741+00	2021-11-26 10:34:15.14175+00	8	311
9427	3	2021-11-26 10:34:15.144634+00	2021-11-26 10:34:15.14464+00	8	311
9428	4	2021-11-26 10:34:15.148767+00	2021-11-26 10:34:15.148773+00	8	311
9429	5	2021-11-26 10:34:15.152438+00	2021-11-26 10:34:15.152444+00	8	311
9430	6	2021-11-26 10:34:15.155211+00	2021-11-26 10:34:15.155217+00	8	311
9431	7	2021-11-26 10:34:15.15806+00	2021-11-26 10:34:15.158065+00	8	311
9432	8	2021-11-26 10:34:15.160852+00	2021-11-26 10:34:15.160858+00	8	311
9433	9	2021-11-26 10:34:15.163731+00	2021-11-26 10:34:15.163737+00	8	311
9434	10	2021-11-26 10:34:15.166475+00	2021-11-26 10:34:15.16648+00	8	311
9435	11	2021-11-26 10:34:15.169308+00	2021-11-26 10:34:15.169313+00	8	311
9436	12	2021-11-26 10:34:15.172685+00	2021-11-26 10:34:15.172695+00	8	311
9437	13	2021-11-26 10:34:15.175905+00	2021-11-26 10:34:15.175912+00	8	311
9438	14	2021-11-26 10:34:15.178885+00	2021-11-26 10:34:15.178891+00	8	311
9439	15	2021-11-26 10:34:15.181692+00	2021-11-26 10:34:15.181698+00	8	311
9440	16	2021-11-26 10:34:15.184596+00	2021-11-26 10:34:15.184603+00	8	311
9441	17	2021-11-26 10:34:15.187394+00	2021-11-26 10:34:15.187402+00	8	311
9442	18	2021-11-26 10:34:15.190088+00	2021-11-26 10:34:15.190096+00	8	311
9443	19	2021-11-26 10:34:15.192916+00	2021-11-26 10:34:15.192923+00	8	311
9444	0	2021-11-26 10:34:15.198692+00	2021-11-26 10:34:15.1987+00	8	312
9445	1	2021-11-26 10:34:15.20141+00	2021-11-26 10:34:15.201418+00	8	312
9446	2	2021-11-26 10:34:15.204297+00	2021-11-26 10:34:15.204307+00	8	312
9447	3	2021-11-26 10:34:15.207205+00	2021-11-26 10:34:15.207214+00	8	312
9448	4	2021-11-26 10:34:15.209893+00	2021-11-26 10:34:15.209901+00	8	312
9449	5	2021-11-26 10:34:15.212753+00	2021-11-26 10:34:15.212759+00	8	312
9450	6	2021-11-26 10:34:15.215498+00	2021-11-26 10:34:15.215503+00	8	312
9451	7	2021-11-26 10:34:15.218297+00	2021-11-26 10:34:15.218303+00	8	312
9452	8	2021-11-26 10:34:15.221294+00	2021-11-26 10:34:15.2213+00	8	312
9453	9	2021-11-26 10:34:15.224046+00	2021-11-26 10:34:15.224052+00	8	312
9454	10	2021-11-26 10:34:15.228803+00	2021-11-26 10:34:15.228815+00	8	312
9455	11	2021-11-26 10:34:15.232465+00	2021-11-26 10:34:15.232474+00	8	312
9456	12	2021-11-26 10:34:15.235603+00	2021-11-26 10:34:15.235609+00	8	312
9457	13	2021-11-26 10:34:15.238639+00	2021-11-26 10:34:15.238647+00	8	312
9458	14	2021-11-26 10:34:15.243457+00	2021-11-26 10:34:15.243465+00	8	312
9459	15	2021-11-26 10:34:15.246607+00	2021-11-26 10:34:15.246614+00	8	312
9460	16	2021-11-26 10:34:15.249716+00	2021-11-26 10:34:15.249722+00	8	312
9461	17	2021-11-26 10:34:15.252939+00	2021-11-26 10:34:15.252953+00	8	312
9462	18	2021-11-26 10:34:15.256151+00	2021-11-26 10:34:15.25616+00	8	312
9463	19	2021-11-26 10:34:15.25926+00	2021-11-26 10:34:15.259271+00	8	312
9464	0	2021-11-26 10:34:15.265212+00	2021-11-26 10:34:15.265218+00	8	313
9465	1	2021-11-26 10:34:15.268104+00	2021-11-26 10:34:15.26811+00	8	313
9466	2	2021-11-26 10:34:15.270925+00	2021-11-26 10:34:15.270934+00	8	313
9467	3	2021-11-26 10:34:15.273959+00	2021-11-26 10:34:15.273967+00	8	313
9468	4	2021-11-26 10:34:15.276811+00	2021-11-26 10:34:15.276817+00	8	313
9469	5	2021-11-26 10:34:15.279668+00	2021-11-26 10:34:15.279674+00	8	313
9470	6	2021-11-26 10:34:15.282416+00	2021-11-26 10:34:15.282422+00	8	313
9471	7	2021-11-26 10:34:15.285195+00	2021-11-26 10:34:15.285202+00	8	313
9472	8	2021-11-26 10:34:15.289412+00	2021-11-26 10:34:15.289419+00	8	313
9473	9	2021-11-26 10:34:15.292006+00	2021-11-26 10:34:15.292011+00	8	313
9474	10	2021-11-26 10:34:15.294785+00	2021-11-26 10:34:15.29479+00	8	313
9475	11	2021-11-26 10:34:15.297418+00	2021-11-26 10:34:15.297424+00	8	313
9476	12	2021-11-26 10:34:15.300175+00	2021-11-26 10:34:15.300181+00	8	313
9477	13	2021-11-26 10:34:15.302957+00	2021-11-26 10:34:15.302962+00	8	313
9478	14	2021-11-26 10:34:15.306079+00	2021-11-26 10:34:15.306094+00	8	313
9479	15	2021-11-26 10:34:15.309091+00	2021-11-26 10:34:15.309098+00	8	313
9480	16	2021-11-26 10:34:15.31181+00	2021-11-26 10:34:15.311816+00	8	313
9481	17	2021-11-26 10:34:15.314658+00	2021-11-26 10:34:15.314664+00	8	313
9482	18	2021-11-26 10:34:15.317486+00	2021-11-26 10:34:15.317492+00	8	313
9483	19	2021-11-26 10:34:15.320426+00	2021-11-26 10:34:15.320435+00	8	313
9484	0	2021-11-26 10:34:15.327004+00	2021-11-26 10:34:15.327012+00	8	314
9485	1	2021-11-26 10:34:15.33+00	2021-11-26 10:34:15.330007+00	8	314
9486	2	2021-11-26 10:34:15.333346+00	2021-11-26 10:34:15.333356+00	8	314
9487	3	2021-11-26 10:34:15.336853+00	2021-11-26 10:34:15.336866+00	8	314
9488	4	2021-11-26 10:34:15.340294+00	2021-11-26 10:34:15.340303+00	8	314
9489	5	2021-11-26 10:34:15.343516+00	2021-11-26 10:34:15.343523+00	8	314
9490	6	2021-11-26 10:34:15.346491+00	2021-11-26 10:34:15.346496+00	8	314
9491	7	2021-11-26 10:34:15.349496+00	2021-11-26 10:34:15.349505+00	8	314
9492	8	2021-11-26 10:34:15.35279+00	2021-11-26 10:34:15.352803+00	8	314
9493	9	2021-11-26 10:34:15.356178+00	2021-11-26 10:34:15.356192+00	8	314
9494	10	2021-11-26 10:34:15.359247+00	2021-11-26 10:34:15.359259+00	8	314
9495	11	2021-11-26 10:34:15.362285+00	2021-11-26 10:34:15.362295+00	8	314
9496	12	2021-11-26 10:34:15.365319+00	2021-11-26 10:34:15.365331+00	8	314
9497	13	2021-11-26 10:34:15.368332+00	2021-11-26 10:34:15.368343+00	8	314
9498	14	2021-11-26 10:34:15.371523+00	2021-11-26 10:34:15.371537+00	8	314
9499	15	2021-11-26 10:34:15.374882+00	2021-11-26 10:34:15.374896+00	8	314
9500	16	2021-11-26 10:34:15.378324+00	2021-11-26 10:34:15.378337+00	8	314
9501	17	2021-11-26 10:34:15.381656+00	2021-11-26 10:34:15.381665+00	8	314
9502	18	2021-11-26 10:34:15.385091+00	2021-11-26 10:34:15.385101+00	8	314
9503	19	2021-11-26 10:34:15.388497+00	2021-11-26 10:34:15.388509+00	8	314
9504	0	2021-11-26 10:34:15.396045+00	2021-11-26 10:34:15.396067+00	8	315
9505	1	2021-11-26 10:34:15.400968+00	2021-11-26 10:34:15.400983+00	8	315
9506	2	2021-11-26 10:34:15.404864+00	2021-11-26 10:34:15.404871+00	8	315
9507	3	2021-11-26 10:34:15.408218+00	2021-11-26 10:34:15.408227+00	8	315
9508	4	2021-11-26 10:34:15.411365+00	2021-11-26 10:34:15.411376+00	8	315
9509	5	2021-11-26 10:34:15.414458+00	2021-11-26 10:34:15.414466+00	8	315
9510	6	2021-11-26 10:34:15.417533+00	2021-11-26 10:34:15.417538+00	8	315
9511	7	2021-11-26 10:34:15.420672+00	2021-11-26 10:34:15.420681+00	8	315
9512	8	2021-11-26 10:34:15.42414+00	2021-11-26 10:34:15.424149+00	8	315
9513	9	2021-11-26 10:34:15.427409+00	2021-11-26 10:34:15.427416+00	8	315
9514	10	2021-11-26 10:34:15.430216+00	2021-11-26 10:34:15.430221+00	8	315
9515	11	2021-11-26 10:34:15.433195+00	2021-11-26 10:34:15.4332+00	8	315
9516	12	2021-11-26 10:34:15.436157+00	2021-11-26 10:34:15.436162+00	8	315
9517	13	2021-11-26 10:34:15.439068+00	2021-11-26 10:34:15.439074+00	8	315
9518	14	2021-11-26 10:34:15.441856+00	2021-11-26 10:34:15.441862+00	8	315
9519	15	2021-11-26 10:34:15.444598+00	2021-11-26 10:34:15.444604+00	8	315
9520	16	2021-11-26 10:34:15.447348+00	2021-11-26 10:34:15.447354+00	8	315
9521	17	2021-11-26 10:34:15.450132+00	2021-11-26 10:34:15.450137+00	8	315
9522	18	2021-11-26 10:34:15.452875+00	2021-11-26 10:34:15.452881+00	8	315
9523	19	2021-11-26 10:34:15.456043+00	2021-11-26 10:34:15.456053+00	8	315
9524	0	2021-11-26 10:34:15.46228+00	2021-11-26 10:34:15.462285+00	8	316
9525	1	2021-11-26 10:34:15.465324+00	2021-11-26 10:34:15.46533+00	8	316
9526	2	2021-11-26 10:34:15.468686+00	2021-11-26 10:34:15.468692+00	8	316
9527	3	2021-11-26 10:34:15.472331+00	2021-11-26 10:34:15.472342+00	8	316
9528	4	2021-11-26 10:34:15.475492+00	2021-11-26 10:34:15.475501+00	8	316
9529	5	2021-11-26 10:34:15.478686+00	2021-11-26 10:34:15.478693+00	8	316
9530	6	2021-11-26 10:34:15.481615+00	2021-11-26 10:34:15.481621+00	8	316
9531	7	2021-11-26 10:34:15.484692+00	2021-11-26 10:34:15.484698+00	8	316
9532	8	2021-11-26 10:34:15.487785+00	2021-11-26 10:34:15.487794+00	8	316
9533	9	2021-11-26 10:34:15.490977+00	2021-11-26 10:34:15.490987+00	8	316
9534	10	2021-11-26 10:34:15.494111+00	2021-11-26 10:34:15.494118+00	8	316
9535	11	2021-11-26 10:34:15.496968+00	2021-11-26 10:34:15.496974+00	8	316
9536	12	2021-11-26 10:34:15.49963+00	2021-11-26 10:34:15.499636+00	8	316
9537	13	2021-11-26 10:34:15.502345+00	2021-11-26 10:34:15.502353+00	8	316
9538	14	2021-11-26 10:34:15.505265+00	2021-11-26 10:34:15.505274+00	8	316
9539	15	2021-11-26 10:34:15.508058+00	2021-11-26 10:34:15.508064+00	8	316
9540	16	2021-11-26 10:34:15.510734+00	2021-11-26 10:34:15.510739+00	8	316
9541	17	2021-11-26 10:34:15.513392+00	2021-11-26 10:34:15.513398+00	8	316
9542	18	2021-11-26 10:34:15.516067+00	2021-11-26 10:34:15.516072+00	8	316
9543	19	2021-11-26 10:34:15.5189+00	2021-11-26 10:34:15.518906+00	8	316
9544	0	2021-11-26 10:34:15.524754+00	2021-11-26 10:34:15.524761+00	8	317
9545	1	2021-11-26 10:34:15.527682+00	2021-11-26 10:34:15.527688+00	8	317
9546	2	2021-11-26 10:34:15.530584+00	2021-11-26 10:34:15.53059+00	8	317
9547	3	2021-11-26 10:34:15.533525+00	2021-11-26 10:34:15.533531+00	8	317
9548	4	2021-11-26 10:34:15.536302+00	2021-11-26 10:34:15.536307+00	8	317
9549	5	2021-11-26 10:34:15.539384+00	2021-11-26 10:34:15.539395+00	8	317
9550	6	2021-11-26 10:34:15.542391+00	2021-11-26 10:34:15.542398+00	8	317
9551	7	2021-11-26 10:34:15.546177+00	2021-11-26 10:34:15.546183+00	8	317
9552	8	2021-11-26 10:34:15.549319+00	2021-11-26 10:34:15.549325+00	8	317
9553	9	2021-11-26 10:34:15.552442+00	2021-11-26 10:34:15.552449+00	8	317
9554	10	2021-11-26 10:34:15.555849+00	2021-11-26 10:34:15.555858+00	8	317
9555	11	2021-11-26 10:34:15.558907+00	2021-11-26 10:34:15.558915+00	8	317
9556	12	2021-11-26 10:34:15.561888+00	2021-11-26 10:34:15.561895+00	8	317
9557	13	2021-11-26 10:34:15.566788+00	2021-11-26 10:34:15.566798+00	8	317
9558	14	2021-11-26 10:34:15.570057+00	2021-11-26 10:34:15.570068+00	8	317
9559	15	2021-11-26 10:34:15.573017+00	2021-11-26 10:34:15.573024+00	8	317
9560	16	2021-11-26 10:34:15.575785+00	2021-11-26 10:34:15.575792+00	8	317
9561	17	2021-11-26 10:34:15.578626+00	2021-11-26 10:34:15.578631+00	8	317
9562	18	2021-11-26 10:34:15.581276+00	2021-11-26 10:34:15.581282+00	8	317
9563	19	2021-11-26 10:34:15.583952+00	2021-11-26 10:34:15.583958+00	8	317
9564	0	2021-11-26 10:34:15.589506+00	2021-11-26 10:34:15.589512+00	8	318
9565	1	2021-11-26 10:34:15.592144+00	2021-11-26 10:34:15.59215+00	8	318
9566	2	2021-11-26 10:34:15.594917+00	2021-11-26 10:34:15.594923+00	8	318
9567	3	2021-11-26 10:34:15.597648+00	2021-11-26 10:34:15.597653+00	8	318
9568	4	2021-11-26 10:34:15.600355+00	2021-11-26 10:34:15.60036+00	8	318
9569	5	2021-11-26 10:34:15.602981+00	2021-11-26 10:34:15.602987+00	8	318
9570	6	2021-11-26 10:34:15.606201+00	2021-11-26 10:34:15.606216+00	8	318
9571	7	2021-11-26 10:34:15.610577+00	2021-11-26 10:34:15.610583+00	8	318
9572	8	2021-11-26 10:34:15.613692+00	2021-11-26 10:34:15.613698+00	8	318
9573	9	2021-11-26 10:34:15.616736+00	2021-11-26 10:34:15.616742+00	8	318
9574	10	2021-11-26 10:34:15.620139+00	2021-11-26 10:34:15.620149+00	8	318
9575	11	2021-11-26 10:34:15.623975+00	2021-11-26 10:34:15.623987+00	8	318
9576	12	2021-11-26 10:34:15.627413+00	2021-11-26 10:34:15.627422+00	8	318
9577	13	2021-11-26 10:34:15.630589+00	2021-11-26 10:34:15.630596+00	8	318
9578	14	2021-11-26 10:34:15.633705+00	2021-11-26 10:34:15.63371+00	8	318
9579	15	2021-11-26 10:34:15.636923+00	2021-11-26 10:34:15.636933+00	8	318
9580	16	2021-11-26 10:34:15.639904+00	2021-11-26 10:34:15.63991+00	8	318
9581	17	2021-11-26 10:34:15.642886+00	2021-11-26 10:34:15.642893+00	8	318
9582	18	2021-11-26 10:34:15.645828+00	2021-11-26 10:34:15.645834+00	8	318
9583	19	2021-11-26 10:34:15.648749+00	2021-11-26 10:34:15.648755+00	8	318
9584	0	2021-11-26 10:34:15.654596+00	2021-11-26 10:34:15.654604+00	8	319
9585	1	2021-11-26 10:34:15.657696+00	2021-11-26 10:34:15.657704+00	8	319
9586	2	2021-11-26 10:34:15.660612+00	2021-11-26 10:34:15.660618+00	8	319
9587	3	2021-11-26 10:34:15.663539+00	2021-11-26 10:34:15.663545+00	8	319
9588	4	2021-11-26 10:34:15.6663+00	2021-11-26 10:34:15.666305+00	8	319
9589	5	2021-11-26 10:34:15.668984+00	2021-11-26 10:34:15.668992+00	8	319
9590	6	2021-11-26 10:34:15.673071+00	2021-11-26 10:34:15.673079+00	8	319
9591	7	2021-11-26 10:34:15.675948+00	2021-11-26 10:34:15.675956+00	8	319
9592	8	2021-11-26 10:34:15.678801+00	2021-11-26 10:34:15.678808+00	8	319
9593	9	2021-11-26 10:34:15.681588+00	2021-11-26 10:34:15.681594+00	8	319
9594	10	2021-11-26 10:34:15.684295+00	2021-11-26 10:34:15.684301+00	8	319
9595	11	2021-11-26 10:34:15.687251+00	2021-11-26 10:34:15.687262+00	8	319
9596	12	2021-11-26 10:34:15.690292+00	2021-11-26 10:34:15.690299+00	8	319
9597	13	2021-11-26 10:34:15.693138+00	2021-11-26 10:34:15.693143+00	8	319
9598	14	2021-11-26 10:34:15.695965+00	2021-11-26 10:34:15.69597+00	8	319
9599	15	2021-11-26 10:34:15.699325+00	2021-11-26 10:34:15.699338+00	8	319
9600	16	2021-11-26 10:34:15.702827+00	2021-11-26 10:34:15.702845+00	8	319
9601	17	2021-11-26 10:34:15.706247+00	2021-11-26 10:34:15.706257+00	8	319
9602	18	2021-11-26 10:34:15.709407+00	2021-11-26 10:34:15.709415+00	8	319
9603	19	2021-11-26 10:34:15.712567+00	2021-11-26 10:34:15.712573+00	8	319
9604	0	2021-11-26 10:34:15.71856+00	2021-11-26 10:34:15.718566+00	8	320
9605	1	2021-11-26 10:34:15.721691+00	2021-11-26 10:34:15.721702+00	8	320
9606	2	2021-11-26 10:34:15.724659+00	2021-11-26 10:34:15.724666+00	8	320
9607	3	2021-11-26 10:34:15.727481+00	2021-11-26 10:34:15.727487+00	8	320
9608	4	2021-11-26 10:34:15.730323+00	2021-11-26 10:34:15.730329+00	8	320
9609	5	2021-11-26 10:34:15.733125+00	2021-11-26 10:34:15.733131+00	8	320
9610	6	2021-11-26 10:34:15.735878+00	2021-11-26 10:34:15.735886+00	8	320
9611	7	2021-11-26 10:34:15.739089+00	2021-11-26 10:34:15.739098+00	8	320
9612	8	2021-11-26 10:34:15.742337+00	2021-11-26 10:34:15.742344+00	8	320
9613	9	2021-11-26 10:34:15.745796+00	2021-11-26 10:34:15.745804+00	8	320
9614	10	2021-11-26 10:34:15.749057+00	2021-11-26 10:34:15.749067+00	8	320
9615	11	2021-11-26 10:34:15.752054+00	2021-11-26 10:34:15.752062+00	8	320
9616	12	2021-11-26 10:34:15.755093+00	2021-11-26 10:34:15.755103+00	8	320
9617	13	2021-11-26 10:34:15.75804+00	2021-11-26 10:34:15.758048+00	8	320
9618	14	2021-11-26 10:34:15.760865+00	2021-11-26 10:34:15.760873+00	8	320
9619	15	2021-11-26 10:34:15.763545+00	2021-11-26 10:34:15.76355+00	8	320
9620	16	2021-11-26 10:34:15.766259+00	2021-11-26 10:34:15.766265+00	8	320
9621	17	2021-11-26 10:34:15.769104+00	2021-11-26 10:34:15.76911+00	8	320
9622	18	2021-11-26 10:34:15.77188+00	2021-11-26 10:34:15.771886+00	8	320
9623	19	2021-11-26 10:34:15.774754+00	2021-11-26 10:34:15.774762+00	8	320
9624	0	2021-11-26 10:34:15.78069+00	2021-11-26 10:34:15.7807+00	8	321
9625	1	2021-11-26 10:34:15.783717+00	2021-11-26 10:34:15.783723+00	8	321
9626	2	2021-11-26 10:34:15.786824+00	2021-11-26 10:34:15.786832+00	8	321
9627	3	2021-11-26 10:34:15.79014+00	2021-11-26 10:34:15.790149+00	8	321
9628	4	2021-11-26 10:34:15.793028+00	2021-11-26 10:34:15.793035+00	8	321
9629	5	2021-11-26 10:34:15.796032+00	2021-11-26 10:34:15.796038+00	8	321
9630	6	2021-11-26 10:34:15.799136+00	2021-11-26 10:34:15.799141+00	8	321
9631	7	2021-11-26 10:34:15.801938+00	2021-11-26 10:34:15.801944+00	8	321
9632	8	2021-11-26 10:34:15.804788+00	2021-11-26 10:34:15.804796+00	8	321
9633	9	2021-11-26 10:34:15.807759+00	2021-11-26 10:34:15.807768+00	8	321
9634	10	2021-11-26 10:34:15.811241+00	2021-11-26 10:34:15.811251+00	8	321
9635	11	2021-11-26 10:34:15.814351+00	2021-11-26 10:34:15.814358+00	8	321
9636	12	2021-11-26 10:34:15.817415+00	2021-11-26 10:34:15.817421+00	8	321
9637	13	2021-11-26 10:34:15.820535+00	2021-11-26 10:34:15.820544+00	8	321
9638	14	2021-11-26 10:34:15.823798+00	2021-11-26 10:34:15.823807+00	8	321
9639	15	2021-11-26 10:34:15.826853+00	2021-11-26 10:34:15.826861+00	8	321
9640	16	2021-11-26 10:34:15.829983+00	2021-11-26 10:34:15.829989+00	8	321
9641	17	2021-11-26 10:34:15.832995+00	2021-11-26 10:34:15.833001+00	8	321
9642	18	2021-11-26 10:34:15.836043+00	2021-11-26 10:34:15.836049+00	8	321
9643	19	2021-11-26 10:34:15.839046+00	2021-11-26 10:34:15.839052+00	8	321
9644	0	2021-11-26 10:34:15.84509+00	2021-11-26 10:34:15.845095+00	8	322
9645	1	2021-11-26 10:34:15.848129+00	2021-11-26 10:34:15.848135+00	8	322
9646	2	2021-11-26 10:34:15.851187+00	2021-11-26 10:34:15.851192+00	8	322
9647	3	2021-11-26 10:34:15.854003+00	2021-11-26 10:34:15.854009+00	8	322
9648	4	2021-11-26 10:34:15.857231+00	2021-11-26 10:34:15.857242+00	8	322
9649	5	2021-11-26 10:34:15.860319+00	2021-11-26 10:34:15.860325+00	8	322
9650	6	2021-11-26 10:34:15.863153+00	2021-11-26 10:34:15.863158+00	8	322
9651	7	2021-11-26 10:34:15.86594+00	2021-11-26 10:34:15.865946+00	8	322
9652	8	2021-11-26 10:34:15.868778+00	2021-11-26 10:34:15.868786+00	8	322
9653	9	2021-11-26 10:34:15.871988+00	2021-11-26 10:34:15.871998+00	8	322
9654	10	2021-11-26 10:34:15.875288+00	2021-11-26 10:34:15.875298+00	8	322
9655	11	2021-11-26 10:34:15.8784+00	2021-11-26 10:34:15.878408+00	8	322
9656	12	2021-11-26 10:34:15.8814+00	2021-11-26 10:34:15.881407+00	8	322
9657	13	2021-11-26 10:34:15.884403+00	2021-11-26 10:34:15.884409+00	8	322
9658	14	2021-11-26 10:34:15.887503+00	2021-11-26 10:34:15.887511+00	8	322
9659	15	2021-11-26 10:34:15.890332+00	2021-11-26 10:34:15.89034+00	8	322
9660	16	2021-11-26 10:34:15.893471+00	2021-11-26 10:34:15.893478+00	8	322
9661	17	2021-11-26 10:34:15.90001+00	2021-11-26 10:34:15.90002+00	8	322
9662	18	2021-11-26 10:34:15.903561+00	2021-11-26 10:34:15.903572+00	8	322
9663	19	2021-11-26 10:34:15.906876+00	2021-11-26 10:34:15.906884+00	8	322
9664	0	2021-11-26 10:34:15.913384+00	2021-11-26 10:34:15.91339+00	8	323
9665	1	2021-11-26 10:34:15.916508+00	2021-11-26 10:34:15.916513+00	8	323
9666	2	2021-11-26 10:34:15.919568+00	2021-11-26 10:34:15.919573+00	8	323
9667	3	2021-11-26 10:34:15.922634+00	2021-11-26 10:34:15.92264+00	8	323
9668	4	2021-11-26 10:34:15.925698+00	2021-11-26 10:34:15.925703+00	8	323
9669	5	2021-11-26 10:34:15.928818+00	2021-11-26 10:34:15.928823+00	8	323
9670	6	2021-11-26 10:34:15.933367+00	2021-11-26 10:34:15.933373+00	8	323
9671	7	2021-11-26 10:34:15.936889+00	2021-11-26 10:34:15.936898+00	8	323
9672	8	2021-11-26 10:34:15.940324+00	2021-11-26 10:34:15.940333+00	8	323
9673	9	2021-11-26 10:34:15.943296+00	2021-11-26 10:34:15.943303+00	8	323
9674	10	2021-11-26 10:34:15.947798+00	2021-11-26 10:34:15.947804+00	8	323
9675	11	2021-11-26 10:34:15.95089+00	2021-11-26 10:34:15.950895+00	8	323
9676	12	2021-11-26 10:34:15.954032+00	2021-11-26 10:34:15.954041+00	8	323
9677	13	2021-11-26 10:34:15.956978+00	2021-11-26 10:34:15.956986+00	8	323
9678	14	2021-11-26 10:34:15.960185+00	2021-11-26 10:34:15.960192+00	8	323
9679	15	2021-11-26 10:34:15.963225+00	2021-11-26 10:34:15.963234+00	8	323
9680	16	2021-11-26 10:34:15.966226+00	2021-11-26 10:34:15.966232+00	8	323
9681	17	2021-11-26 10:34:15.969404+00	2021-11-26 10:34:15.969416+00	8	323
9682	18	2021-11-26 10:34:15.972674+00	2021-11-26 10:34:15.972683+00	8	323
9683	19	2021-11-26 10:34:15.975701+00	2021-11-26 10:34:15.975707+00	8	323
9684	0	2021-11-26 10:34:15.981519+00	2021-11-26 10:34:15.981525+00	8	324
9685	1	2021-11-26 10:34:15.984716+00	2021-11-26 10:34:15.984721+00	8	324
9686	2	2021-11-26 10:34:15.987694+00	2021-11-26 10:34:15.987702+00	8	324
9687	3	2021-11-26 10:34:15.990509+00	2021-11-26 10:34:15.990515+00	8	324
9688	4	2021-11-26 10:34:15.993387+00	2021-11-26 10:34:15.993393+00	8	324
9689	5	2021-11-26 10:34:15.99774+00	2021-11-26 10:34:15.997746+00	8	324
9690	6	2021-11-26 10:34:16.000855+00	2021-11-26 10:34:16.00086+00	8	324
9691	7	2021-11-26 10:34:16.003681+00	2021-11-26 10:34:16.003686+00	8	324
9692	8	2021-11-26 10:34:16.006851+00	2021-11-26 10:34:16.00686+00	8	324
9693	9	2021-11-26 10:34:16.009952+00	2021-11-26 10:34:16.009959+00	8	324
9694	10	2021-11-26 10:34:16.012858+00	2021-11-26 10:34:16.012864+00	8	324
9695	11	2021-11-26 10:34:16.015814+00	2021-11-26 10:34:16.01582+00	8	324
9696	12	2021-11-26 10:34:16.018781+00	2021-11-26 10:34:16.018787+00	8	324
9697	13	2021-11-26 10:34:16.022162+00	2021-11-26 10:34:16.022171+00	8	324
9698	14	2021-11-26 10:34:16.025341+00	2021-11-26 10:34:16.025352+00	8	324
9699	15	2021-11-26 10:34:16.028561+00	2021-11-26 10:34:16.028568+00	8	324
9700	16	2021-11-26 10:34:16.031504+00	2021-11-26 10:34:16.031509+00	8	324
9701	17	2021-11-26 10:34:16.034418+00	2021-11-26 10:34:16.034424+00	8	324
9702	18	2021-11-26 10:34:16.037418+00	2021-11-26 10:34:16.037426+00	8	324
9703	19	2021-11-26 10:34:16.040468+00	2021-11-26 10:34:16.040474+00	8	324
9704	0	2021-11-26 10:34:16.046764+00	2021-11-26 10:34:16.046769+00	8	325
9705	1	2021-11-26 10:34:16.049862+00	2021-11-26 10:34:16.049867+00	8	325
9706	2	2021-11-26 10:34:16.053056+00	2021-11-26 10:34:16.053065+00	8	325
9707	3	2021-11-26 10:34:16.05642+00	2021-11-26 10:34:16.05643+00	8	325
9708	4	2021-11-26 10:34:16.060689+00	2021-11-26 10:34:16.060696+00	8	325
9709	5	2021-11-26 10:34:16.06384+00	2021-11-26 10:34:16.063846+00	8	325
9710	6	2021-11-26 10:34:16.066845+00	2021-11-26 10:34:16.066851+00	8	325
9711	7	2021-11-26 10:34:16.069917+00	2021-11-26 10:34:16.069927+00	8	325
9712	8	2021-11-26 10:34:16.073097+00	2021-11-26 10:34:16.073105+00	8	325
9713	9	2021-11-26 10:34:16.076147+00	2021-11-26 10:34:16.076154+00	8	325
9714	10	2021-11-26 10:34:16.079293+00	2021-11-26 10:34:16.079299+00	8	325
9715	11	2021-11-26 10:34:16.082357+00	2021-11-26 10:34:16.082363+00	8	325
9716	12	2021-11-26 10:34:16.085439+00	2021-11-26 10:34:16.085444+00	8	325
9717	13	2021-11-26 10:34:16.088673+00	2021-11-26 10:34:16.088684+00	8	325
9718	14	2021-11-26 10:34:16.091768+00	2021-11-26 10:34:16.091774+00	8	325
9719	15	2021-11-26 10:34:16.094915+00	2021-11-26 10:34:16.094921+00	8	325
9720	16	2021-11-26 10:34:16.097866+00	2021-11-26 10:34:16.097871+00	8	325
9721	17	2021-11-26 10:34:16.100764+00	2021-11-26 10:34:16.100769+00	8	325
9722	18	2021-11-26 10:34:16.103904+00	2021-11-26 10:34:16.103913+00	8	325
9723	19	2021-11-26 10:34:16.107085+00	2021-11-26 10:34:16.107093+00	8	325
9724	0	2021-11-26 10:34:16.113391+00	2021-11-26 10:34:16.113401+00	8	326
9725	1	2021-11-26 10:34:16.11674+00	2021-11-26 10:34:16.116749+00	8	326
9726	2	2021-11-26 10:34:16.119958+00	2021-11-26 10:34:16.119968+00	8	326
9727	3	2021-11-26 10:34:16.126543+00	2021-11-26 10:34:16.126552+00	8	326
9728	4	2021-11-26 10:34:16.129521+00	2021-11-26 10:34:16.12953+00	8	326
9729	5	2021-11-26 10:34:16.132641+00	2021-11-26 10:34:16.132648+00	8	326
9730	6	2021-11-26 10:34:16.135629+00	2021-11-26 10:34:16.135635+00	8	326
9731	7	2021-11-26 10:34:16.138798+00	2021-11-26 10:34:16.138804+00	8	326
9732	8	2021-11-26 10:34:16.141937+00	2021-11-26 10:34:16.141943+00	8	326
9733	9	2021-11-26 10:34:16.14519+00	2021-11-26 10:34:16.145195+00	8	326
9734	10	2021-11-26 10:34:16.148513+00	2021-11-26 10:34:16.148519+00	8	326
9735	11	2021-11-26 10:34:16.151646+00	2021-11-26 10:34:16.151652+00	8	326
9736	12	2021-11-26 10:34:16.154977+00	2021-11-26 10:34:16.154986+00	8	326
9737	13	2021-11-26 10:34:16.158613+00	2021-11-26 10:34:16.158622+00	8	326
9738	14	2021-11-26 10:34:16.161813+00	2021-11-26 10:34:16.161819+00	8	326
9739	15	2021-11-26 10:34:16.164992+00	2021-11-26 10:34:16.164997+00	8	326
9740	16	2021-11-26 10:34:16.168068+00	2021-11-26 10:34:16.168074+00	8	326
9741	17	2021-11-26 10:34:16.17144+00	2021-11-26 10:34:16.171448+00	8	326
9742	18	2021-11-26 10:34:16.175633+00	2021-11-26 10:34:16.175644+00	8	326
9743	19	2021-11-26 10:34:16.178739+00	2021-11-26 10:34:16.178745+00	8	326
9744	0	2021-11-26 10:34:16.184799+00	2021-11-26 10:34:16.184806+00	8	327
9745	1	2021-11-26 10:34:16.188546+00	2021-11-26 10:34:16.188556+00	8	327
9746	2	2021-11-26 10:34:16.19186+00	2021-11-26 10:34:16.191869+00	8	327
9747	3	2021-11-26 10:34:16.194994+00	2021-11-26 10:34:16.195001+00	8	327
9748	4	2021-11-26 10:34:16.197863+00	2021-11-26 10:34:16.197869+00	8	327
9749	5	2021-11-26 10:34:16.200543+00	2021-11-26 10:34:16.200548+00	8	327
9750	6	2021-11-26 10:34:16.203259+00	2021-11-26 10:34:16.203265+00	8	327
9751	7	2021-11-26 10:34:16.206395+00	2021-11-26 10:34:16.206402+00	8	327
9752	8	2021-11-26 10:34:16.209834+00	2021-11-26 10:34:16.20984+00	8	327
9753	9	2021-11-26 10:34:16.213127+00	2021-11-26 10:34:16.213132+00	8	327
9754	10	2021-11-26 10:34:16.216975+00	2021-11-26 10:34:16.21698+00	8	327
9755	11	2021-11-26 10:34:16.22058+00	2021-11-26 10:34:16.220588+00	8	327
9756	12	2021-11-26 10:34:16.224341+00	2021-11-26 10:34:16.22435+00	8	327
9757	13	2021-11-26 10:34:16.227915+00	2021-11-26 10:34:16.227922+00	8	327
9758	14	2021-11-26 10:34:16.231332+00	2021-11-26 10:34:16.231338+00	8	327
9759	15	2021-11-26 10:34:16.234806+00	2021-11-26 10:34:16.234812+00	8	327
9760	16	2021-11-26 10:34:16.238463+00	2021-11-26 10:34:16.238474+00	8	327
9761	17	2021-11-26 10:34:16.241683+00	2021-11-26 10:34:16.241693+00	8	327
9762	18	2021-11-26 10:34:16.245495+00	2021-11-26 10:34:16.245503+00	8	327
9763	19	2021-11-26 10:34:16.249053+00	2021-11-26 10:34:16.249058+00	8	327
9764	0	2021-11-26 10:34:16.257566+00	2021-11-26 10:34:16.257574+00	8	328
9765	1	2021-11-26 10:34:16.260929+00	2021-11-26 10:34:16.260936+00	8	328
9766	2	2021-11-26 10:34:16.264364+00	2021-11-26 10:34:16.264369+00	8	328
9767	3	2021-11-26 10:34:16.267714+00	2021-11-26 10:34:16.267724+00	8	328
9768	4	2021-11-26 10:34:16.271366+00	2021-11-26 10:34:16.271379+00	8	328
9769	5	2021-11-26 10:34:16.274812+00	2021-11-26 10:34:16.274822+00	8	328
9770	6	2021-11-26 10:34:16.278136+00	2021-11-26 10:34:16.278143+00	8	328
9771	7	2021-11-26 10:34:16.281366+00	2021-11-26 10:34:16.281371+00	8	328
9772	8	2021-11-26 10:34:16.284825+00	2021-11-26 10:34:16.284831+00	8	328
9773	9	2021-11-26 10:34:16.287885+00	2021-11-26 10:34:16.287892+00	8	328
9774	10	2021-11-26 10:34:16.290976+00	2021-11-26 10:34:16.290982+00	8	328
9775	11	2021-11-26 10:34:16.294109+00	2021-11-26 10:34:16.294115+00	8	328
9776	12	2021-11-26 10:34:16.297403+00	2021-11-26 10:34:16.297409+00	8	328
9777	13	2021-11-26 10:34:16.300687+00	2021-11-26 10:34:16.300693+00	8	328
9778	14	2021-11-26 10:34:16.303915+00	2021-11-26 10:34:16.303923+00	8	328
9779	15	2021-11-26 10:34:16.307494+00	2021-11-26 10:34:16.307504+00	8	328
9780	16	2021-11-26 10:34:16.311112+00	2021-11-26 10:34:16.311119+00	8	328
9781	17	2021-11-26 10:34:16.314498+00	2021-11-26 10:34:16.314504+00	8	328
9782	18	2021-11-26 10:34:16.317874+00	2021-11-26 10:34:16.31788+00	8	328
9783	19	2021-11-26 10:34:16.321469+00	2021-11-26 10:34:16.321478+00	8	328
9784	0	2021-11-26 10:34:16.328183+00	2021-11-26 10:34:16.328193+00	8	329
9785	1	2021-11-26 10:34:16.33141+00	2021-11-26 10:34:16.331416+00	8	329
9786	2	2021-11-26 10:34:16.33432+00	2021-11-26 10:34:16.334326+00	8	329
9787	3	2021-11-26 10:34:16.338909+00	2021-11-26 10:34:16.338918+00	8	329
9788	4	2021-11-26 10:34:16.342133+00	2021-11-26 10:34:16.342141+00	8	329
9789	5	2021-11-26 10:34:16.345647+00	2021-11-26 10:34:16.345654+00	8	329
9790	6	2021-11-26 10:34:16.348705+00	2021-11-26 10:34:16.34871+00	8	329
9791	7	2021-11-26 10:34:16.351647+00	2021-11-26 10:34:16.351653+00	8	329
9792	8	2021-11-26 10:34:16.354868+00	2021-11-26 10:34:16.354874+00	8	329
9793	9	2021-11-26 10:34:16.357843+00	2021-11-26 10:34:16.357849+00	8	329
9794	10	2021-11-26 10:34:16.360996+00	2021-11-26 10:34:16.361001+00	8	329
9795	11	2021-11-26 10:34:16.364135+00	2021-11-26 10:34:16.364141+00	8	329
9796	12	2021-11-26 10:34:16.367296+00	2021-11-26 10:34:16.367301+00	8	329
9797	13	2021-11-26 10:34:16.370433+00	2021-11-26 10:34:16.370441+00	8	329
9798	14	2021-11-26 10:34:16.373667+00	2021-11-26 10:34:16.373677+00	8	329
9799	15	2021-11-26 10:34:16.376641+00	2021-11-26 10:34:16.376647+00	8	329
9800	16	2021-11-26 10:34:16.379636+00	2021-11-26 10:34:16.379642+00	8	329
9801	17	2021-11-26 10:34:16.382484+00	2021-11-26 10:34:16.38249+00	8	329
9802	18	2021-11-26 10:34:16.385364+00	2021-11-26 10:34:16.38537+00	8	329
9803	19	2021-11-26 10:34:16.388417+00	2021-11-26 10:34:16.388426+00	8	329
9804	0	2021-11-26 10:34:16.394948+00	2021-11-26 10:34:16.394955+00	8	330
9805	1	2021-11-26 10:34:16.397843+00	2021-11-26 10:34:16.397848+00	8	330
9806	2	2021-11-26 10:34:16.400637+00	2021-11-26 10:34:16.400643+00	8	330
9807	3	2021-11-26 10:34:16.403394+00	2021-11-26 10:34:16.403402+00	8	330
9808	4	2021-11-26 10:34:16.406205+00	2021-11-26 10:34:16.406212+00	8	330
9809	5	2021-11-26 10:34:16.409038+00	2021-11-26 10:34:16.409046+00	8	330
9810	6	2021-11-26 10:34:16.41191+00	2021-11-26 10:34:16.411916+00	8	330
9811	7	2021-11-26 10:34:16.41468+00	2021-11-26 10:34:16.414686+00	8	330
9812	8	2021-11-26 10:34:16.418846+00	2021-11-26 10:34:16.418854+00	8	330
9813	9	2021-11-26 10:34:16.42217+00	2021-11-26 10:34:16.422178+00	8	330
9814	10	2021-11-26 10:34:16.425307+00	2021-11-26 10:34:16.425313+00	8	330
9815	11	2021-11-26 10:34:16.428314+00	2021-11-26 10:34:16.428319+00	8	330
9816	12	2021-11-26 10:34:16.431313+00	2021-11-26 10:34:16.431319+00	8	330
9817	13	2021-11-26 10:34:16.434445+00	2021-11-26 10:34:16.43445+00	8	330
9818	14	2021-11-26 10:34:16.437743+00	2021-11-26 10:34:16.437751+00	8	330
9819	15	2021-11-26 10:34:16.440749+00	2021-11-26 10:34:16.440757+00	8	330
9820	16	2021-11-26 10:34:16.443865+00	2021-11-26 10:34:16.443871+00	8	330
9821	17	2021-11-26 10:34:16.447202+00	2021-11-26 10:34:16.447208+00	8	330
9822	18	2021-11-26 10:34:16.450402+00	2021-11-26 10:34:16.450408+00	8	330
9823	19	2021-11-26 10:34:16.453683+00	2021-11-26 10:34:16.453691+00	8	330
9824	0	2021-11-26 10:34:16.460743+00	2021-11-26 10:34:16.460751+00	8	331
9825	1	2021-11-26 10:34:16.464135+00	2021-11-26 10:34:16.464141+00	8	331
9826	2	2021-11-26 10:34:16.468601+00	2021-11-26 10:34:16.468606+00	8	331
9827	3	2021-11-26 10:34:16.472042+00	2021-11-26 10:34:16.47205+00	8	331
9828	4	2021-11-26 10:34:16.475344+00	2021-11-26 10:34:16.475353+00	8	331
9829	5	2021-11-26 10:34:16.478798+00	2021-11-26 10:34:16.478803+00	8	331
9830	6	2021-11-26 10:34:16.482056+00	2021-11-26 10:34:16.482066+00	8	331
9831	7	2021-11-26 10:34:16.48546+00	2021-11-26 10:34:16.485469+00	8	331
9832	8	2021-11-26 10:34:16.488655+00	2021-11-26 10:34:16.488664+00	8	331
9833	9	2021-11-26 10:34:16.491975+00	2021-11-26 10:34:16.491985+00	8	331
9834	10	2021-11-26 10:34:16.49549+00	2021-11-26 10:34:16.495498+00	8	331
9835	11	2021-11-26 10:34:16.498914+00	2021-11-26 10:34:16.49892+00	8	331
9836	12	2021-11-26 10:34:16.502171+00	2021-11-26 10:34:16.502177+00	8	331
9837	13	2021-11-26 10:34:16.505783+00	2021-11-26 10:34:16.505788+00	8	331
9838	14	2021-11-26 10:34:16.508843+00	2021-11-26 10:34:16.508849+00	8	331
9839	15	2021-11-26 10:34:16.512105+00	2021-11-26 10:34:16.512111+00	8	331
9840	16	2021-11-26 10:34:16.515501+00	2021-11-26 10:34:16.515507+00	8	331
9841	17	2021-11-26 10:34:16.518938+00	2021-11-26 10:34:16.518944+00	8	331
9842	18	2021-11-26 10:34:16.522589+00	2021-11-26 10:34:16.522599+00	8	331
9843	19	2021-11-26 10:34:16.525581+00	2021-11-26 10:34:16.525589+00	8	331
9844	0	2021-11-26 10:34:16.531551+00	2021-11-26 10:34:16.531557+00	8	332
9845	1	2021-11-26 10:34:16.535019+00	2021-11-26 10:34:16.535025+00	8	332
9846	2	2021-11-26 10:34:16.538541+00	2021-11-26 10:34:16.53855+00	8	332
9847	3	2021-11-26 10:34:16.542102+00	2021-11-26 10:34:16.542112+00	8	332
9848	4	2021-11-26 10:34:16.545229+00	2021-11-26 10:34:16.545235+00	8	332
9849	5	2021-11-26 10:34:16.54826+00	2021-11-26 10:34:16.548266+00	8	332
9850	6	2021-11-26 10:34:16.55116+00	2021-11-26 10:34:16.551166+00	8	332
9851	7	2021-11-26 10:34:16.554196+00	2021-11-26 10:34:16.554205+00	8	332
9852	8	2021-11-26 10:34:16.557438+00	2021-11-26 10:34:16.557447+00	8	332
9853	9	2021-11-26 10:34:16.560938+00	2021-11-26 10:34:16.560945+00	8	332
9854	10	2021-11-26 10:34:16.564207+00	2021-11-26 10:34:16.564212+00	8	332
9855	11	2021-11-26 10:34:16.567433+00	2021-11-26 10:34:16.567438+00	8	332
9856	12	2021-11-26 10:34:16.570665+00	2021-11-26 10:34:16.570671+00	8	332
9857	13	2021-11-26 10:34:16.573786+00	2021-11-26 10:34:16.573792+00	8	332
9858	14	2021-11-26 10:34:16.576665+00	2021-11-26 10:34:16.57667+00	8	332
9859	15	2021-11-26 10:34:16.579631+00	2021-11-26 10:34:16.579636+00	8	332
9860	16	2021-11-26 10:34:16.582584+00	2021-11-26 10:34:16.582589+00	8	332
9861	17	2021-11-26 10:34:16.58563+00	2021-11-26 10:34:16.585635+00	8	332
9862	18	2021-11-26 10:34:16.58886+00	2021-11-26 10:34:16.588873+00	8	332
9863	19	2021-11-26 10:34:16.592159+00	2021-11-26 10:34:16.592166+00	8	332
9864	0	2021-11-26 10:34:16.598093+00	2021-11-26 10:34:16.598099+00	8	333
9865	1	2021-11-26 10:34:16.601153+00	2021-11-26 10:34:16.601159+00	8	333
9866	2	2021-11-26 10:34:16.604049+00	2021-11-26 10:34:16.604058+00	8	333
9867	3	2021-11-26 10:34:16.607271+00	2021-11-26 10:34:16.60728+00	8	333
9868	4	2021-11-26 10:34:16.610249+00	2021-11-26 10:34:16.610256+00	8	333
9869	5	2021-11-26 10:34:16.613113+00	2021-11-26 10:34:16.613119+00	8	333
9870	6	2021-11-26 10:34:16.616316+00	2021-11-26 10:34:16.616321+00	8	333
9871	7	2021-11-26 10:34:16.619209+00	2021-11-26 10:34:16.619216+00	8	333
9872	8	2021-11-26 10:34:16.622432+00	2021-11-26 10:34:16.622441+00	8	333
9873	9	2021-11-26 10:34:16.625839+00	2021-11-26 10:34:16.625847+00	8	333
9874	10	2021-11-26 10:34:16.629048+00	2021-11-26 10:34:16.629055+00	8	333
9875	11	2021-11-26 10:34:16.632218+00	2021-11-26 10:34:16.632226+00	8	333
9876	12	2021-11-26 10:34:16.635753+00	2021-11-26 10:34:16.635764+00	8	333
9877	13	2021-11-26 10:34:16.639118+00	2021-11-26 10:34:16.639129+00	8	333
9878	14	2021-11-26 10:34:16.64261+00	2021-11-26 10:34:16.642619+00	8	333
9879	15	2021-11-26 10:34:16.645779+00	2021-11-26 10:34:16.645787+00	8	333
9880	16	2021-11-26 10:34:16.649101+00	2021-11-26 10:34:16.649108+00	8	333
9881	17	2021-11-26 10:34:16.652807+00	2021-11-26 10:34:16.652813+00	8	333
9882	18	2021-11-26 10:34:16.656123+00	2021-11-26 10:34:16.656129+00	8	333
9883	19	2021-11-26 10:34:16.659745+00	2021-11-26 10:34:16.659751+00	8	333
9884	0	2021-11-26 10:34:16.66689+00	2021-11-26 10:34:16.666896+00	8	334
9885	1	2021-11-26 10:34:16.670336+00	2021-11-26 10:34:16.670346+00	8	334
9886	2	2021-11-26 10:34:16.673623+00	2021-11-26 10:34:16.673631+00	8	334
9887	3	2021-11-26 10:34:16.676875+00	2021-11-26 10:34:16.676881+00	8	334
9888	4	2021-11-26 10:34:16.680085+00	2021-11-26 10:34:16.68009+00	8	334
9889	5	2021-11-26 10:34:16.683623+00	2021-11-26 10:34:16.683629+00	8	334
9890	6	2021-11-26 10:34:16.687328+00	2021-11-26 10:34:16.687338+00	8	334
9891	7	2021-11-26 10:34:16.690559+00	2021-11-26 10:34:16.690568+00	8	334
9892	8	2021-11-26 10:34:16.693946+00	2021-11-26 10:34:16.693956+00	8	334
9893	9	2021-11-26 10:34:16.697651+00	2021-11-26 10:34:16.697659+00	8	334
9894	10	2021-11-26 10:34:16.701115+00	2021-11-26 10:34:16.70112+00	8	334
9895	11	2021-11-26 10:34:16.704436+00	2021-11-26 10:34:16.704446+00	8	334
9896	12	2021-11-26 10:34:16.707815+00	2021-11-26 10:34:16.707824+00	8	334
9897	13	2021-11-26 10:34:16.711164+00	2021-11-26 10:34:16.711171+00	8	334
9898	14	2021-11-26 10:34:16.714342+00	2021-11-26 10:34:16.714349+00	8	334
9899	15	2021-11-26 10:34:16.717331+00	2021-11-26 10:34:16.717337+00	8	334
9900	16	2021-11-26 10:34:16.720468+00	2021-11-26 10:34:16.720474+00	8	334
9901	17	2021-11-26 10:34:16.723418+00	2021-11-26 10:34:16.723424+00	8	334
9902	18	2021-11-26 10:34:16.728567+00	2021-11-26 10:34:16.72858+00	8	334
9903	19	2021-11-26 10:34:16.732243+00	2021-11-26 10:34:16.732254+00	8	334
9904	0	2021-11-26 10:34:16.742161+00	2021-11-26 10:34:16.742197+00	8	335
9905	1	2021-11-26 10:34:16.748175+00	2021-11-26 10:34:16.748202+00	8	335
9906	2	2021-11-26 10:34:16.754068+00	2021-11-26 10:34:16.754096+00	8	335
9907	3	2021-11-26 10:34:16.76017+00	2021-11-26 10:34:16.760201+00	8	335
9908	4	2021-11-26 10:34:16.765706+00	2021-11-26 10:34:16.765734+00	8	335
9909	5	2021-11-26 10:34:16.771426+00	2021-11-26 10:34:16.771454+00	8	335
9910	6	2021-11-26 10:34:16.777296+00	2021-11-26 10:34:16.777323+00	8	335
9911	7	2021-11-26 10:34:16.783761+00	2021-11-26 10:34:16.783791+00	8	335
9912	8	2021-11-26 10:34:16.790294+00	2021-11-26 10:34:16.790323+00	8	335
9913	9	2021-11-26 10:34:16.796443+00	2021-11-26 10:34:16.79647+00	8	335
9914	10	2021-11-26 10:34:16.802365+00	2021-11-26 10:34:16.802392+00	8	335
9915	11	2021-11-26 10:34:16.808327+00	2021-11-26 10:34:16.808354+00	8	335
9916	12	2021-11-26 10:34:16.814349+00	2021-11-26 10:34:16.814378+00	8	335
9917	13	2021-11-26 10:34:16.819962+00	2021-11-26 10:34:16.81999+00	8	335
9918	14	2021-11-26 10:34:16.826329+00	2021-11-26 10:34:16.826362+00	8	335
9919	15	2021-11-26 10:34:16.832079+00	2021-11-26 10:34:16.832114+00	8	335
9920	16	2021-11-26 10:34:16.837838+00	2021-11-26 10:34:16.837868+00	8	335
9921	17	2021-11-26 10:34:16.843032+00	2021-11-26 10:34:16.843058+00	8	335
9922	18	2021-11-26 10:34:16.848491+00	2021-11-26 10:34:16.848519+00	8	335
9923	19	2021-11-26 10:34:16.854457+00	2021-11-26 10:34:16.854488+00	8	335
9924	0	2021-11-26 10:34:16.865561+00	2021-11-26 10:34:16.86559+00	8	336
9925	1	2021-11-26 10:34:16.871668+00	2021-11-26 10:34:16.871694+00	8	336
9926	2	2021-11-26 10:34:16.877444+00	2021-11-26 10:34:16.877471+00	8	336
9927	3	2021-11-26 10:34:16.884542+00	2021-11-26 10:34:16.884569+00	8	336
9928	4	2021-11-26 10:34:16.890706+00	2021-11-26 10:34:16.890737+00	8	336
9929	5	2021-11-26 10:34:16.897417+00	2021-11-26 10:34:16.897449+00	8	336
9930	6	2021-11-26 10:34:16.904073+00	2021-11-26 10:34:16.9041+00	8	336
9931	7	2021-11-26 10:34:16.910583+00	2021-11-26 10:34:16.910617+00	8	336
9932	8	2021-11-26 10:34:16.916787+00	2021-11-26 10:34:16.91682+00	8	336
9933	9	2021-11-26 10:34:16.92296+00	2021-11-26 10:34:16.922989+00	8	336
9934	10	2021-11-26 10:34:16.929377+00	2021-11-26 10:34:16.929409+00	8	336
9935	11	2021-11-26 10:34:16.936256+00	2021-11-26 10:34:16.936288+00	8	336
9936	12	2021-11-26 10:34:16.942714+00	2021-11-26 10:34:16.942745+00	8	336
9937	13	2021-11-26 10:34:16.94892+00	2021-11-26 10:34:16.948949+00	8	336
9938	14	2021-11-26 10:34:16.954778+00	2021-11-26 10:34:16.954807+00	8	336
9939	15	2021-11-26 10:34:16.960635+00	2021-11-26 10:34:16.960662+00	8	336
9940	16	2021-11-26 10:34:16.966117+00	2021-11-26 10:34:16.966143+00	8	336
9941	17	2021-11-26 10:34:16.972131+00	2021-11-26 10:34:16.972163+00	8	336
9942	18	2021-11-26 10:34:16.977806+00	2021-11-26 10:34:16.977835+00	8	336
9943	19	2021-11-26 10:34:16.983101+00	2021-11-26 10:34:16.983128+00	8	336
9944	0	2021-11-26 10:34:16.995739+00	2021-11-26 10:34:16.995765+00	8	337
9945	1	2021-11-26 10:34:17.001642+00	2021-11-26 10:34:17.00167+00	8	337
9946	2	2021-11-26 10:34:17.007796+00	2021-11-26 10:34:17.007842+00	8	337
9947	3	2021-11-26 10:34:17.014359+00	2021-11-26 10:34:17.01439+00	8	337
9948	4	2021-11-26 10:34:17.020465+00	2021-11-26 10:34:17.020495+00	8	337
9949	5	2021-11-26 10:34:17.026161+00	2021-11-26 10:34:17.026188+00	8	337
9950	6	2021-11-26 10:34:17.032167+00	2021-11-26 10:34:17.032207+00	8	337
9951	7	2021-11-26 10:34:17.03843+00	2021-11-26 10:34:17.038462+00	8	337
9952	8	2021-11-26 10:34:17.044233+00	2021-11-26 10:34:17.044261+00	8	337
9953	9	2021-11-26 10:34:17.050133+00	2021-11-26 10:34:17.050161+00	8	337
9954	10	2021-11-26 10:34:17.056001+00	2021-11-26 10:34:17.056027+00	8	337
9955	11	2021-11-26 10:34:17.061687+00	2021-11-26 10:34:17.061712+00	8	337
9956	12	2021-11-26 10:34:17.067304+00	2021-11-26 10:34:17.06733+00	8	337
9957	13	2021-11-26 10:34:17.07315+00	2021-11-26 10:34:17.073178+00	8	337
9958	14	2021-11-26 10:34:17.078428+00	2021-11-26 10:34:17.078459+00	8	337
9959	15	2021-11-26 10:34:17.083639+00	2021-11-26 10:34:17.083664+00	8	337
9960	16	2021-11-26 10:34:17.088533+00	2021-11-26 10:34:17.088562+00	8	337
9961	17	2021-11-26 10:34:17.094845+00	2021-11-26 10:34:17.094874+00	8	337
9962	18	2021-11-26 10:34:17.101012+00	2021-11-26 10:34:17.101042+00	8	337
9963	19	2021-11-26 10:34:17.106928+00	2021-11-26 10:34:17.106956+00	8	337
9964	0	2021-11-26 10:34:17.124832+00	2021-11-26 10:34:17.124861+00	8	338
9965	1	2021-11-26 10:34:17.130618+00	2021-11-26 10:34:17.130647+00	8	338
9966	2	2021-11-26 10:34:17.136747+00	2021-11-26 10:34:17.136782+00	8	338
9967	3	2021-11-26 10:34:17.142898+00	2021-11-26 10:34:17.142929+00	8	338
9968	4	2021-11-26 10:34:17.152278+00	2021-11-26 10:34:17.152305+00	8	338
9969	5	2021-11-26 10:34:17.158431+00	2021-11-26 10:34:17.158461+00	8	338
9970	6	2021-11-26 10:34:17.164203+00	2021-11-26 10:34:17.164234+00	8	338
9971	7	2021-11-26 10:34:17.169886+00	2021-11-26 10:34:17.169926+00	8	338
9972	8	2021-11-26 10:34:17.174969+00	2021-11-26 10:34:17.174978+00	8	338
9973	9	2021-11-26 10:34:17.1781+00	2021-11-26 10:34:17.178107+00	8	338
9974	10	2021-11-26 10:34:17.181051+00	2021-11-26 10:34:17.181057+00	8	338
9975	11	2021-11-26 10:34:17.18413+00	2021-11-26 10:34:17.184139+00	8	338
9976	12	2021-11-26 10:34:17.187421+00	2021-11-26 10:34:17.187431+00	8	338
9977	13	2021-11-26 10:34:17.190446+00	2021-11-26 10:34:17.190455+00	8	338
9978	14	2021-11-26 10:34:17.193327+00	2021-11-26 10:34:17.193335+00	8	338
9979	15	2021-11-26 10:34:17.196075+00	2021-11-26 10:34:17.196081+00	8	338
9980	16	2021-11-26 10:34:17.198932+00	2021-11-26 10:34:17.198938+00	8	338
9981	17	2021-11-26 10:34:17.201776+00	2021-11-26 10:34:17.201792+00	8	338
9982	18	2021-11-26 10:34:17.204594+00	2021-11-26 10:34:17.204601+00	8	338
9983	19	2021-11-26 10:34:17.207346+00	2021-11-26 10:34:17.207352+00	8	338
9984	20	2021-11-26 10:34:17.210372+00	2021-11-26 10:34:17.210378+00	8	338
9985	21	2021-11-26 10:34:17.213246+00	2021-11-26 10:34:17.213251+00	8	338
9986	22	2021-11-26 10:34:17.216065+00	2021-11-26 10:34:17.21607+00	8	338
9987	23	2021-11-26 10:34:17.218842+00	2021-11-26 10:34:17.218848+00	8	338
9988	24	2021-11-26 10:34:17.221796+00	2021-11-26 10:34:17.221806+00	8	338
9989	25	2021-11-26 10:34:17.22489+00	2021-11-26 10:34:17.224898+00	8	338
9990	26	2021-11-26 10:34:17.227703+00	2021-11-26 10:34:17.22771+00	8	338
9991	27	2021-11-26 10:34:17.230594+00	2021-11-26 10:34:17.230599+00	8	338
9992	28	2021-11-26 10:34:17.233442+00	2021-11-26 10:34:17.233448+00	8	338
9993	29	2021-11-26 10:34:17.236361+00	2021-11-26 10:34:17.23637+00	8	338
9994	0	2021-11-26 10:34:17.24255+00	2021-11-26 10:34:17.242558+00	8	339
9995	1	2021-11-26 10:34:17.245413+00	2021-11-26 10:34:17.245423+00	8	339
9996	2	2021-11-26 10:34:17.248349+00	2021-11-26 10:34:17.248357+00	8	339
9997	3	2021-11-26 10:34:17.251034+00	2021-11-26 10:34:17.251039+00	8	339
9998	4	2021-11-26 10:34:17.253891+00	2021-11-26 10:34:17.2539+00	8	339
9999	5	2021-11-26 10:34:17.256838+00	2021-11-26 10:34:17.256846+00	8	339
10000	6	2021-11-26 10:34:17.259701+00	2021-11-26 10:34:17.25971+00	8	339
10001	7	2021-11-26 10:34:17.262622+00	2021-11-26 10:34:17.262629+00	8	339
10002	8	2021-11-26 10:34:17.265833+00	2021-11-26 10:34:17.265838+00	8	339
10003	9	2021-11-26 10:34:17.268723+00	2021-11-26 10:34:17.268729+00	8	339
10004	10	2021-11-26 10:34:17.271771+00	2021-11-26 10:34:17.271777+00	8	339
10005	11	2021-11-26 10:34:17.274886+00	2021-11-26 10:34:17.274892+00	8	339
10006	12	2021-11-26 10:34:17.277892+00	2021-11-26 10:34:17.277897+00	8	339
10007	13	2021-11-26 10:34:17.280992+00	2021-11-26 10:34:17.280998+00	8	339
10008	14	2021-11-26 10:34:17.284067+00	2021-11-26 10:34:17.284073+00	8	339
10009	15	2021-11-26 10:34:17.287064+00	2021-11-26 10:34:17.287073+00	8	339
10010	16	2021-11-26 10:34:17.290486+00	2021-11-26 10:34:17.290495+00	8	339
10011	17	2021-11-26 10:34:17.29406+00	2021-11-26 10:34:17.294068+00	8	339
10012	18	2021-11-26 10:34:17.297468+00	2021-11-26 10:34:17.297474+00	8	339
10013	19	2021-11-26 10:34:17.300925+00	2021-11-26 10:34:17.30093+00	8	339
10014	20	2021-11-26 10:34:17.304239+00	2021-11-26 10:34:17.304246+00	8	339
10015	21	2021-11-26 10:34:17.307513+00	2021-11-26 10:34:17.307524+00	8	339
10016	22	2021-11-26 10:34:17.310615+00	2021-11-26 10:34:17.310623+00	8	339
10017	23	2021-11-26 10:34:17.313492+00	2021-11-26 10:34:17.313498+00	8	339
10018	24	2021-11-26 10:34:17.316367+00	2021-11-26 10:34:17.316372+00	8	339
10019	25	2021-11-26 10:34:17.319144+00	2021-11-26 10:34:17.319151+00	8	339
10020	26	2021-11-26 10:34:17.323699+00	2021-11-26 10:34:17.323707+00	8	339
10021	27	2021-11-26 10:34:17.327302+00	2021-11-26 10:34:17.327308+00	8	339
10022	28	2021-11-26 10:34:17.330951+00	2021-11-26 10:34:17.330956+00	8	339
10023	29	2021-11-26 10:34:17.334517+00	2021-11-26 10:34:17.334523+00	8	339
10024	0	2021-11-26 10:34:17.341509+00	2021-11-26 10:34:17.341516+00	8	340
10025	1	2021-11-26 10:34:17.344679+00	2021-11-26 10:34:17.344685+00	8	340
10026	2	2021-11-26 10:34:17.347716+00	2021-11-26 10:34:17.347721+00	8	340
10027	3	2021-11-26 10:34:17.350704+00	2021-11-26 10:34:17.35071+00	8	340
10028	4	2021-11-26 10:34:17.353872+00	2021-11-26 10:34:17.35388+00	8	340
10029	5	2021-11-26 10:34:17.357057+00	2021-11-26 10:34:17.357064+00	8	340
10030	6	2021-11-26 10:34:17.359987+00	2021-11-26 10:34:17.359994+00	8	340
10031	7	2021-11-26 10:34:17.362877+00	2021-11-26 10:34:17.362883+00	8	340
10032	8	2021-11-26 10:34:17.365831+00	2021-11-26 10:34:17.365837+00	8	340
10033	9	2021-11-26 10:34:17.368775+00	2021-11-26 10:34:17.36878+00	8	340
10034	10	2021-11-26 10:34:17.371716+00	2021-11-26 10:34:17.371726+00	8	340
10035	11	2021-11-26 10:34:17.374748+00	2021-11-26 10:34:17.374756+00	8	340
10036	12	2021-11-26 10:34:17.377616+00	2021-11-26 10:34:17.377622+00	8	340
10037	13	2021-11-26 10:34:17.380538+00	2021-11-26 10:34:17.380543+00	8	340
10038	14	2021-11-26 10:34:17.38341+00	2021-11-26 10:34:17.383416+00	8	340
10039	15	2021-11-26 10:34:17.386433+00	2021-11-26 10:34:17.386443+00	8	340
10040	16	2021-11-26 10:34:17.389664+00	2021-11-26 10:34:17.389673+00	8	340
10041	17	2021-11-26 10:34:17.392742+00	2021-11-26 10:34:17.39275+00	8	340
10042	18	2021-11-26 10:34:17.395661+00	2021-11-26 10:34:17.395668+00	8	340
10043	19	2021-11-26 10:34:17.398685+00	2021-11-26 10:34:17.398694+00	8	340
10044	20	2021-11-26 10:34:17.401775+00	2021-11-26 10:34:17.401785+00	8	340
10045	21	2021-11-26 10:34:17.404879+00	2021-11-26 10:34:17.404889+00	8	340
10046	22	2021-11-26 10:34:17.407699+00	2021-11-26 10:34:17.407707+00	8	340
10047	23	2021-11-26 10:34:17.410558+00	2021-11-26 10:34:17.410566+00	8	340
10048	24	2021-11-26 10:34:17.413308+00	2021-11-26 10:34:17.413313+00	8	340
10049	25	2021-11-26 10:34:17.416125+00	2021-11-26 10:34:17.416131+00	8	340
10050	26	2021-11-26 10:34:17.418821+00	2021-11-26 10:34:17.418827+00	8	340
10051	27	2021-11-26 10:34:17.421723+00	2021-11-26 10:34:17.421729+00	8	340
10052	28	2021-11-26 10:34:17.424664+00	2021-11-26 10:34:17.42467+00	8	340
10053	29	2021-11-26 10:34:17.427601+00	2021-11-26 10:34:17.427608+00	8	340
10054	0	2021-11-26 10:34:17.433362+00	2021-11-26 10:34:17.433367+00	8	341
10055	1	2021-11-26 10:34:17.436307+00	2021-11-26 10:34:17.436312+00	8	341
10056	2	2021-11-26 10:34:17.439698+00	2021-11-26 10:34:17.439708+00	8	341
10057	3	2021-11-26 10:34:17.442586+00	2021-11-26 10:34:17.442593+00	8	341
10058	4	2021-11-26 10:34:17.445327+00	2021-11-26 10:34:17.445333+00	8	341
10059	5	2021-11-26 10:34:17.448256+00	2021-11-26 10:34:17.448261+00	8	341
10060	6	2021-11-26 10:34:17.451046+00	2021-11-26 10:34:17.451052+00	8	341
10061	7	2021-11-26 10:34:17.454995+00	2021-11-26 10:34:17.455002+00	8	341
10062	8	2021-11-26 10:34:17.458269+00	2021-11-26 10:34:17.458278+00	8	341
10063	9	2021-11-26 10:34:17.461616+00	2021-11-26 10:34:17.461625+00	8	341
10064	10	2021-11-26 10:34:17.464538+00	2021-11-26 10:34:17.464544+00	8	341
10065	11	2021-11-26 10:34:17.467336+00	2021-11-26 10:34:17.467341+00	8	341
10066	12	2021-11-26 10:34:17.470738+00	2021-11-26 10:34:17.470748+00	8	341
10067	13	2021-11-26 10:34:17.473789+00	2021-11-26 10:34:17.473797+00	8	341
10068	14	2021-11-26 10:34:17.476961+00	2021-11-26 10:34:17.476968+00	8	341
10069	15	2021-11-26 10:34:17.48034+00	2021-11-26 10:34:17.480346+00	8	341
10070	16	2021-11-26 10:34:17.483539+00	2021-11-26 10:34:17.483544+00	8	341
10071	17	2021-11-26 10:34:17.486782+00	2021-11-26 10:34:17.486788+00	8	341
10072	18	2021-11-26 10:34:17.489795+00	2021-11-26 10:34:17.489802+00	8	341
10073	19	2021-11-26 10:34:17.492944+00	2021-11-26 10:34:17.49295+00	8	341
10074	20	2021-11-26 10:34:17.49597+00	2021-11-26 10:34:17.495976+00	8	341
10075	21	2021-11-26 10:34:17.498933+00	2021-11-26 10:34:17.498939+00	8	341
10076	22	2021-11-26 10:34:17.502079+00	2021-11-26 10:34:17.502085+00	8	341
10077	23	2021-11-26 10:34:17.505049+00	2021-11-26 10:34:17.505059+00	8	341
10078	24	2021-11-26 10:34:17.508055+00	2021-11-26 10:34:17.508064+00	8	341
10079	25	2021-11-26 10:34:17.51083+00	2021-11-26 10:34:17.510836+00	8	341
10080	26	2021-11-26 10:34:17.514033+00	2021-11-26 10:34:17.514039+00	8	341
10081	27	2021-11-26 10:34:17.517221+00	2021-11-26 10:34:17.517227+00	8	341
10082	28	2021-11-26 10:34:17.52036+00	2021-11-26 10:34:17.520369+00	8	341
10083	29	2021-11-26 10:34:17.52344+00	2021-11-26 10:34:17.52345+00	8	341
10084	0	2021-11-26 10:34:17.529282+00	2021-11-26 10:34:17.529289+00	8	342
10085	1	2021-11-26 10:34:17.531909+00	2021-11-26 10:34:17.531914+00	8	342
10086	2	2021-11-26 10:34:17.53456+00	2021-11-26 10:34:17.534566+00	8	342
10087	3	2021-11-26 10:34:17.537231+00	2021-11-26 10:34:17.537239+00	8	342
10088	4	2021-11-26 10:34:17.539927+00	2021-11-26 10:34:17.539933+00	8	342
10089	5	2021-11-26 10:34:17.542627+00	2021-11-26 10:34:17.542634+00	8	342
10090	6	2021-11-26 10:34:17.545623+00	2021-11-26 10:34:17.545629+00	8	342
10091	7	2021-11-26 10:34:17.548501+00	2021-11-26 10:34:17.548508+00	8	342
10092	8	2021-11-26 10:34:17.551634+00	2021-11-26 10:34:17.551645+00	8	342
10093	9	2021-11-26 10:34:17.554821+00	2021-11-26 10:34:17.554831+00	8	342
10094	10	2021-11-26 10:34:17.557893+00	2021-11-26 10:34:17.557901+00	8	342
10095	11	2021-11-26 10:34:17.560752+00	2021-11-26 10:34:17.560759+00	8	342
10096	12	2021-11-26 10:34:17.563669+00	2021-11-26 10:34:17.563674+00	8	342
10097	13	2021-11-26 10:34:17.566953+00	2021-11-26 10:34:17.566958+00	8	342
10098	14	2021-11-26 10:34:17.569832+00	2021-11-26 10:34:17.56984+00	8	342
10099	15	2021-11-26 10:34:17.572775+00	2021-11-26 10:34:17.572782+00	8	342
10100	16	2021-11-26 10:34:17.575836+00	2021-11-26 10:34:17.575841+00	8	342
10101	17	2021-11-26 10:34:17.578888+00	2021-11-26 10:34:17.578893+00	8	342
10102	18	2021-11-26 10:34:17.581952+00	2021-11-26 10:34:17.581958+00	8	342
10103	19	2021-11-26 10:34:17.585025+00	2021-11-26 10:34:17.58503+00	8	342
10104	20	2021-11-26 10:34:17.588227+00	2021-11-26 10:34:17.588238+00	8	342
10105	21	2021-11-26 10:34:17.591499+00	2021-11-26 10:34:17.591508+00	8	342
10106	22	2021-11-26 10:34:17.594583+00	2021-11-26 10:34:17.594589+00	8	342
10107	23	2021-11-26 10:34:17.597352+00	2021-11-26 10:34:17.597358+00	8	342
10108	24	2021-11-26 10:34:17.600135+00	2021-11-26 10:34:17.600141+00	8	342
10109	25	2021-11-26 10:34:17.603121+00	2021-11-26 10:34:17.603134+00	8	342
10110	26	2021-11-26 10:34:17.606408+00	2021-11-26 10:34:17.606415+00	8	342
10111	27	2021-11-26 10:34:17.609371+00	2021-11-26 10:34:17.609379+00	8	342
10112	28	2021-11-26 10:34:17.612215+00	2021-11-26 10:34:17.612224+00	8	342
10113	29	2021-11-26 10:34:17.615056+00	2021-11-26 10:34:17.615063+00	8	342
10114	0	2021-11-26 10:34:17.620593+00	2021-11-26 10:34:17.620602+00	8	343
10115	1	2021-11-26 10:34:17.623392+00	2021-11-26 10:34:17.6234+00	8	343
10116	2	2021-11-26 10:34:17.626315+00	2021-11-26 10:34:17.626323+00	8	343
10117	3	2021-11-26 10:34:17.629239+00	2021-11-26 10:34:17.629247+00	8	343
10118	4	2021-11-26 10:34:17.63209+00	2021-11-26 10:34:17.632095+00	8	343
10119	5	2021-11-26 10:34:17.635116+00	2021-11-26 10:34:17.635121+00	8	343
10120	6	2021-11-26 10:34:17.638368+00	2021-11-26 10:34:17.638374+00	8	343
10121	7	2021-11-26 10:34:17.641267+00	2021-11-26 10:34:17.641273+00	8	343
10122	8	2021-11-26 10:34:17.644345+00	2021-11-26 10:34:17.64435+00	8	343
10123	9	2021-11-26 10:34:17.647464+00	2021-11-26 10:34:17.647469+00	8	343
10124	10	2021-11-26 10:34:17.650679+00	2021-11-26 10:34:17.650684+00	8	343
10125	11	2021-11-26 10:34:17.653924+00	2021-11-26 10:34:17.65393+00	8	343
10126	12	2021-11-26 10:34:17.657042+00	2021-11-26 10:34:17.657051+00	8	343
10127	13	2021-11-26 10:34:17.659957+00	2021-11-26 10:34:17.659962+00	8	343
10128	14	2021-11-26 10:34:17.662909+00	2021-11-26 10:34:17.662915+00	8	343
10129	15	2021-11-26 10:34:17.666201+00	2021-11-26 10:34:17.666207+00	8	343
10130	16	2021-11-26 10:34:17.669022+00	2021-11-26 10:34:17.669029+00	8	343
10131	17	2021-11-26 10:34:17.672278+00	2021-11-26 10:34:17.672288+00	8	343
10132	18	2021-11-26 10:34:17.675704+00	2021-11-26 10:34:17.675715+00	8	343
10133	19	2021-11-26 10:34:17.679035+00	2021-11-26 10:34:17.679042+00	8	343
10134	20	2021-11-26 10:34:17.681837+00	2021-11-26 10:34:17.681842+00	8	343
10135	21	2021-11-26 10:34:17.68463+00	2021-11-26 10:34:17.684636+00	8	343
10136	22	2021-11-26 10:34:17.687527+00	2021-11-26 10:34:17.687535+00	8	343
10137	23	2021-11-26 10:34:17.690563+00	2021-11-26 10:34:17.690569+00	8	343
10138	24	2021-11-26 10:34:17.696797+00	2021-11-26 10:34:17.696803+00	8	343
10139	25	2021-11-26 10:34:17.699808+00	2021-11-26 10:34:17.699813+00	8	343
10140	26	2021-11-26 10:34:17.702728+00	2021-11-26 10:34:17.702734+00	8	343
10141	27	2021-11-26 10:34:17.705861+00	2021-11-26 10:34:17.705872+00	8	343
10142	28	2021-11-26 10:34:17.708909+00	2021-11-26 10:34:17.708918+00	8	343
10143	29	2021-11-26 10:34:17.711724+00	2021-11-26 10:34:17.71173+00	8	343
10144	0	2021-11-26 10:34:17.717329+00	2021-11-26 10:34:17.717334+00	8	344
10145	1	2021-11-26 10:34:17.720121+00	2021-11-26 10:34:17.720131+00	8	344
10146	2	2021-11-26 10:34:17.722906+00	2021-11-26 10:34:17.722913+00	8	344
10147	3	2021-11-26 10:34:17.725674+00	2021-11-26 10:34:17.725682+00	8	344
10148	4	2021-11-26 10:34:17.728527+00	2021-11-26 10:34:17.728533+00	8	344
10149	5	2021-11-26 10:34:17.731539+00	2021-11-26 10:34:17.731545+00	8	344
10150	6	2021-11-26 10:34:17.734163+00	2021-11-26 10:34:17.734169+00	8	344
10151	7	2021-11-26 10:34:17.737136+00	2021-11-26 10:34:17.737146+00	8	344
10152	8	2021-11-26 10:34:17.740302+00	2021-11-26 10:34:17.74031+00	8	344
10153	9	2021-11-26 10:34:17.743433+00	2021-11-26 10:34:17.743441+00	8	344
10154	10	2021-11-26 10:34:17.746377+00	2021-11-26 10:34:17.746383+00	8	344
10155	11	2021-11-26 10:34:17.749349+00	2021-11-26 10:34:17.749355+00	8	344
10156	12	2021-11-26 10:34:17.752365+00	2021-11-26 10:34:17.752372+00	8	344
10157	13	2021-11-26 10:34:17.75561+00	2021-11-26 10:34:17.755618+00	8	344
10158	14	2021-11-26 10:34:17.758591+00	2021-11-26 10:34:17.758599+00	8	344
10159	15	2021-11-26 10:34:17.761458+00	2021-11-26 10:34:17.761464+00	8	344
10160	16	2021-11-26 10:34:17.764321+00	2021-11-26 10:34:17.764332+00	8	344
10161	17	2021-11-26 10:34:17.767548+00	2021-11-26 10:34:17.767556+00	8	344
10162	18	2021-11-26 10:34:17.770585+00	2021-11-26 10:34:17.770594+00	8	344
10163	19	2021-11-26 10:34:17.773533+00	2021-11-26 10:34:17.773541+00	8	344
10164	20	2021-11-26 10:34:17.776301+00	2021-11-26 10:34:17.776309+00	8	344
10165	21	2021-11-26 10:34:17.779118+00	2021-11-26 10:34:17.779124+00	8	344
10166	22	2021-11-26 10:34:17.781843+00	2021-11-26 10:34:17.781849+00	8	344
10167	23	2021-11-26 10:34:17.784628+00	2021-11-26 10:34:17.784633+00	8	344
10168	24	2021-11-26 10:34:17.787419+00	2021-11-26 10:34:17.787426+00	8	344
10169	25	2021-11-26 10:34:17.790186+00	2021-11-26 10:34:17.790192+00	8	344
10170	26	2021-11-26 10:34:17.79281+00	2021-11-26 10:34:17.792816+00	8	344
10171	27	2021-11-26 10:34:17.795594+00	2021-11-26 10:34:17.7956+00	8	344
10172	28	2021-11-26 10:34:17.798293+00	2021-11-26 10:34:17.798299+00	8	344
10173	29	2021-11-26 10:34:17.80102+00	2021-11-26 10:34:17.801026+00	8	344
10174	0	2021-11-26 10:34:17.806736+00	2021-11-26 10:34:17.806746+00	8	345
10175	1	2021-11-26 10:34:17.809605+00	2021-11-26 10:34:17.809611+00	8	345
10176	2	2021-11-26 10:34:17.812389+00	2021-11-26 10:34:17.812395+00	8	345
10177	3	2021-11-26 10:34:17.815282+00	2021-11-26 10:34:17.815288+00	8	345
10178	4	2021-11-26 10:34:17.818456+00	2021-11-26 10:34:17.818461+00	8	345
10179	5	2021-11-26 10:34:17.821566+00	2021-11-26 10:34:17.821574+00	8	345
10180	6	2021-11-26 10:34:17.824533+00	2021-11-26 10:34:17.824541+00	8	345
10181	7	2021-11-26 10:34:17.827615+00	2021-11-26 10:34:17.827625+00	8	345
10182	8	2021-11-26 10:34:17.830609+00	2021-11-26 10:34:17.830615+00	8	345
10183	9	2021-11-26 10:34:17.833588+00	2021-11-26 10:34:17.833594+00	8	345
10184	10	2021-11-26 10:34:17.836656+00	2021-11-26 10:34:17.836667+00	8	345
10185	11	2021-11-26 10:34:17.839684+00	2021-11-26 10:34:17.839691+00	8	345
10186	12	2021-11-26 10:34:17.842572+00	2021-11-26 10:34:17.84258+00	8	345
10187	13	2021-11-26 10:34:17.845491+00	2021-11-26 10:34:17.845498+00	8	345
10188	14	2021-11-26 10:34:17.848257+00	2021-11-26 10:34:17.848262+00	8	345
10189	15	2021-11-26 10:34:17.852487+00	2021-11-26 10:34:17.852493+00	8	345
10190	16	2021-11-26 10:34:17.856324+00	2021-11-26 10:34:17.85633+00	8	345
10191	17	2021-11-26 10:34:17.859402+00	2021-11-26 10:34:17.859407+00	8	345
10192	18	2021-11-26 10:34:17.862434+00	2021-11-26 10:34:17.86244+00	8	345
10193	19	2021-11-26 10:34:17.865427+00	2021-11-26 10:34:17.865433+00	8	345
10194	20	2021-11-26 10:34:17.86828+00	2021-11-26 10:34:17.868285+00	8	345
10195	21	2021-11-26 10:34:17.87112+00	2021-11-26 10:34:17.871129+00	8	345
10196	22	2021-11-26 10:34:17.874076+00	2021-11-26 10:34:17.874085+00	8	345
10197	23	2021-11-26 10:34:17.87698+00	2021-11-26 10:34:17.876987+00	8	345
10198	24	2021-11-26 10:34:17.879948+00	2021-11-26 10:34:17.879954+00	8	345
10199	25	2021-11-26 10:34:17.882942+00	2021-11-26 10:34:17.882947+00	8	345
10200	26	2021-11-26 10:34:17.8856+00	2021-11-26 10:34:17.885605+00	8	345
10201	27	2021-11-26 10:34:17.888437+00	2021-11-26 10:34:17.888448+00	8	345
10202	28	2021-11-26 10:34:17.893113+00	2021-11-26 10:34:17.893122+00	8	345
10203	29	2021-11-26 10:34:17.896077+00	2021-11-26 10:34:17.896084+00	8	345
10204	0	2021-11-26 10:34:17.901744+00	2021-11-26 10:34:17.901749+00	8	346
10205	1	2021-11-26 10:34:17.904599+00	2021-11-26 10:34:17.904607+00	8	346
10206	2	2021-11-26 10:34:17.907409+00	2021-11-26 10:34:17.907416+00	8	346
10207	3	2021-11-26 10:34:17.910273+00	2021-11-26 10:34:17.910279+00	8	346
10208	4	2021-11-26 10:34:17.913103+00	2021-11-26 10:34:17.913108+00	8	346
10209	5	2021-11-26 10:34:17.915934+00	2021-11-26 10:34:17.915939+00	8	346
10210	6	2021-11-26 10:34:17.918948+00	2021-11-26 10:34:17.91896+00	8	346
10211	7	2021-11-26 10:34:17.922114+00	2021-11-26 10:34:17.922124+00	8	346
10212	8	2021-11-26 10:34:17.925201+00	2021-11-26 10:34:17.92521+00	8	346
10213	9	2021-11-26 10:34:17.928182+00	2021-11-26 10:34:17.928189+00	8	346
10214	10	2021-11-26 10:34:17.930911+00	2021-11-26 10:34:17.930917+00	8	346
10215	11	2021-11-26 10:34:17.933685+00	2021-11-26 10:34:17.93369+00	8	346
10216	12	2021-11-26 10:34:17.936599+00	2021-11-26 10:34:17.936605+00	8	346
10217	13	2021-11-26 10:34:17.939464+00	2021-11-26 10:34:17.939469+00	8	346
10218	14	2021-11-26 10:34:17.942168+00	2021-11-26 10:34:17.942173+00	8	346
10219	15	2021-11-26 10:34:17.944934+00	2021-11-26 10:34:17.944939+00	8	346
10220	16	2021-11-26 10:34:17.947593+00	2021-11-26 10:34:17.947598+00	8	346
10221	17	2021-11-26 10:34:17.950358+00	2021-11-26 10:34:17.950363+00	8	346
10222	18	2021-11-26 10:34:17.952989+00	2021-11-26 10:34:17.952994+00	8	346
10223	19	2021-11-26 10:34:17.956098+00	2021-11-26 10:34:17.956113+00	8	346
10224	20	2021-11-26 10:34:17.963512+00	2021-11-26 10:34:17.963523+00	8	346
10225	21	2021-11-26 10:34:17.967089+00	2021-11-26 10:34:17.9671+00	8	346
10226	22	2021-11-26 10:34:17.970456+00	2021-11-26 10:34:17.970466+00	8	346
10227	23	2021-11-26 10:34:17.973516+00	2021-11-26 10:34:17.973524+00	8	346
10228	24	2021-11-26 10:34:17.976837+00	2021-11-26 10:34:17.976846+00	8	346
10229	25	2021-11-26 10:34:17.980022+00	2021-11-26 10:34:17.980032+00	8	346
10230	26	2021-11-26 10:34:17.983071+00	2021-11-26 10:34:17.98308+00	8	346
10231	27	2021-11-26 10:34:17.985981+00	2021-11-26 10:34:17.98599+00	8	346
10232	28	2021-11-26 10:34:17.989111+00	2021-11-26 10:34:17.98912+00	8	346
10233	29	2021-11-26 10:34:17.992141+00	2021-11-26 10:34:17.992151+00	8	346
10234	0	2021-11-26 10:34:17.998255+00	2021-11-26 10:34:17.998261+00	8	347
10235	1	2021-11-26 10:34:18.001131+00	2021-11-26 10:34:18.001137+00	8	347
10236	2	2021-11-26 10:34:18.003988+00	2021-11-26 10:34:18.003994+00	8	347
10237	3	2021-11-26 10:34:18.006643+00	2021-11-26 10:34:18.006649+00	8	347
10238	4	2021-11-26 10:34:18.009268+00	2021-11-26 10:34:18.009274+00	8	347
10239	5	2021-11-26 10:34:18.012048+00	2021-11-26 10:34:18.012054+00	8	347
10240	6	2021-11-26 10:34:18.014896+00	2021-11-26 10:34:18.014902+00	8	347
10241	7	2021-11-26 10:34:18.017791+00	2021-11-26 10:34:18.017797+00	8	347
10242	8	2021-11-26 10:34:18.020876+00	2021-11-26 10:34:18.020887+00	8	347
10243	9	2021-11-26 10:34:18.024328+00	2021-11-26 10:34:18.024337+00	8	347
10244	10	2021-11-26 10:34:18.02727+00	2021-11-26 10:34:18.027276+00	8	347
10245	11	2021-11-26 10:34:18.030027+00	2021-11-26 10:34:18.030033+00	8	347
10246	12	2021-11-26 10:34:18.033012+00	2021-11-26 10:34:18.033018+00	8	347
10247	13	2021-11-26 10:34:18.035981+00	2021-11-26 10:34:18.035987+00	8	347
10248	14	2021-11-26 10:34:18.0394+00	2021-11-26 10:34:18.039413+00	8	347
10249	15	2021-11-26 10:34:18.042887+00	2021-11-26 10:34:18.042898+00	8	347
10250	16	2021-11-26 10:34:18.04636+00	2021-11-26 10:34:18.046367+00	8	347
10251	17	2021-11-26 10:34:18.049548+00	2021-11-26 10:34:18.049553+00	8	347
10252	18	2021-11-26 10:34:18.052717+00	2021-11-26 10:34:18.052724+00	8	347
10253	19	2021-11-26 10:34:18.055921+00	2021-11-26 10:34:18.05593+00	8	347
10254	20	2021-11-26 10:34:18.059141+00	2021-11-26 10:34:18.059149+00	8	347
10255	21	2021-11-26 10:34:18.062411+00	2021-11-26 10:34:18.062417+00	8	347
10256	22	2021-11-26 10:34:18.066411+00	2021-11-26 10:34:18.066417+00	8	347
10257	23	2021-11-26 10:34:18.069792+00	2021-11-26 10:34:18.069802+00	8	347
10258	24	2021-11-26 10:34:18.072834+00	2021-11-26 10:34:18.072844+00	8	347
10259	25	2021-11-26 10:34:18.07574+00	2021-11-26 10:34:18.075746+00	8	347
10260	26	2021-11-26 10:34:18.078544+00	2021-11-26 10:34:18.078549+00	8	347
10261	27	2021-11-26 10:34:18.081145+00	2021-11-26 10:34:18.081151+00	8	347
10262	28	2021-11-26 10:34:18.08373+00	2021-11-26 10:34:18.083738+00	8	347
10263	29	2021-11-26 10:34:18.086458+00	2021-11-26 10:34:18.086469+00	8	347
10264	0	2021-11-26 10:34:18.092571+00	2021-11-26 10:34:18.09258+00	8	348
10265	1	2021-11-26 10:34:18.095385+00	2021-11-26 10:34:18.095393+00	8	348
10266	2	2021-11-26 10:34:18.098117+00	2021-11-26 10:34:18.098123+00	8	348
10267	3	2021-11-26 10:34:18.100784+00	2021-11-26 10:34:18.10079+00	8	348
10268	4	2021-11-26 10:34:18.103541+00	2021-11-26 10:34:18.103547+00	8	348
10269	5	2021-11-26 10:34:18.106417+00	2021-11-26 10:34:18.106427+00	8	348
10270	6	2021-11-26 10:34:18.109457+00	2021-11-26 10:34:18.109463+00	8	348
10271	7	2021-11-26 10:34:18.112414+00	2021-11-26 10:34:18.112419+00	8	348
10272	8	2021-11-26 10:34:18.115644+00	2021-11-26 10:34:18.115649+00	8	348
10273	9	2021-11-26 10:34:18.118679+00	2021-11-26 10:34:18.118685+00	8	348
10274	10	2021-11-26 10:34:18.121755+00	2021-11-26 10:34:18.121762+00	8	348
10275	11	2021-11-26 10:34:18.124724+00	2021-11-26 10:34:18.124733+00	8	348
10276	12	2021-11-26 10:34:18.127717+00	2021-11-26 10:34:18.127724+00	8	348
10277	13	2021-11-26 10:34:18.13411+00	2021-11-26 10:34:18.134119+00	8	348
10278	14	2021-11-26 10:34:18.137159+00	2021-11-26 10:34:18.137169+00	8	348
10279	15	2021-11-26 10:34:18.140195+00	2021-11-26 10:34:18.140203+00	8	348
10280	16	2021-11-26 10:34:18.143021+00	2021-11-26 10:34:18.143029+00	8	348
10281	17	2021-11-26 10:34:18.145969+00	2021-11-26 10:34:18.145976+00	8	348
10282	18	2021-11-26 10:34:18.148711+00	2021-11-26 10:34:18.148717+00	8	348
10283	19	2021-11-26 10:34:18.151373+00	2021-11-26 10:34:18.151379+00	8	348
10284	20	2021-11-26 10:34:18.154261+00	2021-11-26 10:34:18.154268+00	8	348
10285	21	2021-11-26 10:34:18.157045+00	2021-11-26 10:34:18.157051+00	8	348
10286	22	2021-11-26 10:34:18.159738+00	2021-11-26 10:34:18.159743+00	8	348
10287	23	2021-11-26 10:34:18.162411+00	2021-11-26 10:34:18.162417+00	8	348
10288	24	2021-11-26 10:34:18.165159+00	2021-11-26 10:34:18.165165+00	8	348
10289	25	2021-11-26 10:34:18.16781+00	2021-11-26 10:34:18.167815+00	8	348
10290	26	2021-11-26 10:34:18.170613+00	2021-11-26 10:34:18.170621+00	8	348
10291	27	2021-11-26 10:34:18.173459+00	2021-11-26 10:34:18.173468+00	8	348
10292	28	2021-11-26 10:34:18.176231+00	2021-11-26 10:34:18.176237+00	8	348
10293	29	2021-11-26 10:34:18.178845+00	2021-11-26 10:34:18.178851+00	8	348
10294	0	2021-11-26 10:34:18.184226+00	2021-11-26 10:34:18.184232+00	8	349
10295	1	2021-11-26 10:34:18.187234+00	2021-11-26 10:34:18.187243+00	8	349
10296	2	2021-11-26 10:34:18.190176+00	2021-11-26 10:34:18.190184+00	8	349
10297	3	2021-11-26 10:34:18.193061+00	2021-11-26 10:34:18.193071+00	8	349
10298	4	2021-11-26 10:34:18.196011+00	2021-11-26 10:34:18.196019+00	8	349
10299	5	2021-11-26 10:34:18.198985+00	2021-11-26 10:34:18.198991+00	8	349
10300	6	2021-11-26 10:34:18.202257+00	2021-11-26 10:34:18.202265+00	8	349
10301	7	2021-11-26 10:34:18.205376+00	2021-11-26 10:34:18.205385+00	8	349
10302	8	2021-11-26 10:34:18.208455+00	2021-11-26 10:34:18.208464+00	8	349
10303	9	2021-11-26 10:34:18.211439+00	2021-11-26 10:34:18.211445+00	8	349
10304	10	2021-11-26 10:34:18.214322+00	2021-11-26 10:34:18.214328+00	8	349
10305	11	2021-11-26 10:34:18.217176+00	2021-11-26 10:34:18.217181+00	8	349
10306	12	2021-11-26 10:34:18.220271+00	2021-11-26 10:34:18.220278+00	8	349
10307	13	2021-11-26 10:34:18.22322+00	2021-11-26 10:34:18.223226+00	8	349
10308	14	2021-11-26 10:34:18.226351+00	2021-11-26 10:34:18.226357+00	8	349
10309	15	2021-11-26 10:34:18.230076+00	2021-11-26 10:34:18.230082+00	8	349
10310	16	2021-11-26 10:34:18.233208+00	2021-11-26 10:34:18.233213+00	8	349
10311	17	2021-11-26 10:34:18.23657+00	2021-11-26 10:34:18.236575+00	8	349
10312	18	2021-11-26 10:34:18.24004+00	2021-11-26 10:34:18.240051+00	8	349
10313	19	2021-11-26 10:34:18.243582+00	2021-11-26 10:34:18.243589+00	8	349
10314	20	2021-11-26 10:34:18.247098+00	2021-11-26 10:34:18.247104+00	8	349
10315	21	2021-11-26 10:34:18.250635+00	2021-11-26 10:34:18.250641+00	8	349
10316	22	2021-11-26 10:34:18.254271+00	2021-11-26 10:34:18.254286+00	8	349
10317	23	2021-11-26 10:34:18.257805+00	2021-11-26 10:34:18.257815+00	8	349
10318	24	2021-11-26 10:34:18.261167+00	2021-11-26 10:34:18.261173+00	8	349
10319	25	2021-11-26 10:34:18.264105+00	2021-11-26 10:34:18.264111+00	8	349
10320	26	2021-11-26 10:34:18.267312+00	2021-11-26 10:34:18.267317+00	8	349
10321	27	2021-11-26 10:34:18.270494+00	2021-11-26 10:34:18.270501+00	8	349
10322	28	2021-11-26 10:34:18.273565+00	2021-11-26 10:34:18.273573+00	8	349
10323	29	2021-11-26 10:34:18.276679+00	2021-11-26 10:34:18.276686+00	8	349
10324	0	2021-11-26 10:34:18.282945+00	2021-11-26 10:34:18.282951+00	8	350
10325	1	2021-11-26 10:34:18.286576+00	2021-11-26 10:34:18.286587+00	8	350
10326	2	2021-11-26 10:34:18.289743+00	2021-11-26 10:34:18.289753+00	8	350
10327	3	2021-11-26 10:34:18.293121+00	2021-11-26 10:34:18.29313+00	8	350
10328	4	2021-11-26 10:34:18.296063+00	2021-11-26 10:34:18.296071+00	8	350
10329	5	2021-11-26 10:34:18.299244+00	2021-11-26 10:34:18.29925+00	8	350
10330	6	2021-11-26 10:34:18.302355+00	2021-11-26 10:34:18.302361+00	8	350
10331	7	2021-11-26 10:34:18.305541+00	2021-11-26 10:34:18.305547+00	8	350
10332	8	2021-11-26 10:34:18.30894+00	2021-11-26 10:34:18.308946+00	8	350
10333	9	2021-11-26 10:34:18.312059+00	2021-11-26 10:34:18.312065+00	8	350
10334	10	2021-11-26 10:34:18.315131+00	2021-11-26 10:34:18.315136+00	8	350
10335	11	2021-11-26 10:34:18.31799+00	2021-11-26 10:34:18.317996+00	8	350
10336	12	2021-11-26 10:34:18.321203+00	2021-11-26 10:34:18.321214+00	8	350
10337	13	2021-11-26 10:34:18.324304+00	2021-11-26 10:34:18.324312+00	8	350
10338	14	2021-11-26 10:34:18.327174+00	2021-11-26 10:34:18.32718+00	8	350
10339	15	2021-11-26 10:34:18.329969+00	2021-11-26 10:34:18.329975+00	8	350
10340	16	2021-11-26 10:34:18.332761+00	2021-11-26 10:34:18.332766+00	8	350
10341	17	2021-11-26 10:34:18.335844+00	2021-11-26 10:34:18.335851+00	8	350
10342	18	2021-11-26 10:34:18.339002+00	2021-11-26 10:34:18.33901+00	8	350
10343	19	2021-11-26 10:34:18.342293+00	2021-11-26 10:34:18.342301+00	8	350
10344	20	2021-11-26 10:34:18.345422+00	2021-11-26 10:34:18.345431+00	8	350
10345	21	2021-11-26 10:34:18.348755+00	2021-11-26 10:34:18.348765+00	8	350
10346	22	2021-11-26 10:34:18.351769+00	2021-11-26 10:34:18.351777+00	8	350
10347	23	2021-11-26 10:34:18.35483+00	2021-11-26 10:34:18.35484+00	8	350
10348	24	2021-11-26 10:34:18.357719+00	2021-11-26 10:34:18.357727+00	8	350
10349	25	2021-11-26 10:34:18.360775+00	2021-11-26 10:34:18.360782+00	8	350
10350	26	2021-11-26 10:34:18.36369+00	2021-11-26 10:34:18.363696+00	8	350
10351	27	2021-11-26 10:34:18.366616+00	2021-11-26 10:34:18.366622+00	8	350
10352	28	2021-11-26 10:34:18.369362+00	2021-11-26 10:34:18.369367+00	8	350
10353	29	2021-11-26 10:34:18.372148+00	2021-11-26 10:34:18.372153+00	8	350
10354	0	2021-11-26 10:34:18.377723+00	2021-11-26 10:34:18.377728+00	8	351
10355	1	2021-11-26 10:34:18.380487+00	2021-11-26 10:34:18.380492+00	8	351
10356	2	2021-11-26 10:34:18.383277+00	2021-11-26 10:34:18.383282+00	8	351
10357	3	2021-11-26 10:34:18.385946+00	2021-11-26 10:34:18.385952+00	8	351
10358	4	2021-11-26 10:34:18.388956+00	2021-11-26 10:34:18.388966+00	8	351
10359	5	2021-11-26 10:34:18.393188+00	2021-11-26 10:34:18.393195+00	8	351
10360	6	2021-11-26 10:34:18.396243+00	2021-11-26 10:34:18.396248+00	8	351
10361	7	2021-11-26 10:34:18.399631+00	2021-11-26 10:34:18.399637+00	8	351
10362	8	2021-11-26 10:34:18.402842+00	2021-11-26 10:34:18.402849+00	8	351
10363	9	2021-11-26 10:34:18.406002+00	2021-11-26 10:34:18.406012+00	8	351
10364	10	2021-11-26 10:34:18.409461+00	2021-11-26 10:34:18.40947+00	8	351
10365	11	2021-11-26 10:34:18.412928+00	2021-11-26 10:34:18.412935+00	8	351
10366	12	2021-11-26 10:34:18.416075+00	2021-11-26 10:34:18.416081+00	8	351
10367	13	2021-11-26 10:34:18.419233+00	2021-11-26 10:34:18.419239+00	8	351
10368	14	2021-11-26 10:34:18.422366+00	2021-11-26 10:34:18.422373+00	8	351
10369	15	2021-11-26 10:34:18.425433+00	2021-11-26 10:34:18.425439+00	8	351
10370	16	2021-11-26 10:34:18.428256+00	2021-11-26 10:34:18.428262+00	8	351
10371	17	2021-11-26 10:34:18.434889+00	2021-11-26 10:34:18.434911+00	8	351
10372	18	2021-11-26 10:34:18.441121+00	2021-11-26 10:34:18.441167+00	8	351
10373	19	2021-11-26 10:34:18.44734+00	2021-11-26 10:34:18.447395+00	8	351
10374	20	2021-11-26 10:34:18.453194+00	2021-11-26 10:34:18.453223+00	8	351
10375	21	2021-11-26 10:34:18.458997+00	2021-11-26 10:34:18.459027+00	8	351
10376	22	2021-11-26 10:34:18.464719+00	2021-11-26 10:34:18.464743+00	8	351
10377	23	2021-11-26 10:34:18.470609+00	2021-11-26 10:34:18.47064+00	8	351
10378	24	2021-11-26 10:34:18.476873+00	2021-11-26 10:34:18.476903+00	8	351
10379	25	2021-11-26 10:34:18.482849+00	2021-11-26 10:34:18.482877+00	8	351
10380	26	2021-11-26 10:34:18.488691+00	2021-11-26 10:34:18.48872+00	8	351
10381	27	2021-11-26 10:34:18.494754+00	2021-11-26 10:34:18.494783+00	8	351
10382	28	2021-11-26 10:34:18.500363+00	2021-11-26 10:34:18.500388+00	8	351
10383	29	2021-11-26 10:34:18.506285+00	2021-11-26 10:34:18.506316+00	8	351
10384	0	2021-11-26 10:34:18.517151+00	2021-11-26 10:34:18.517178+00	8	352
10385	1	2021-11-26 10:34:18.522298+00	2021-11-26 10:34:18.522327+00	8	352
10386	2	2021-11-26 10:34:18.527248+00	2021-11-26 10:34:18.527275+00	8	352
10387	3	2021-11-26 10:34:18.532696+00	2021-11-26 10:34:18.532728+00	8	352
10388	4	2021-11-26 10:34:18.538415+00	2021-11-26 10:34:18.538444+00	8	352
10389	5	2021-11-26 10:34:18.544117+00	2021-11-26 10:34:18.544148+00	8	352
10390	6	2021-11-26 10:34:18.549842+00	2021-11-26 10:34:18.54987+00	8	352
10391	7	2021-11-26 10:34:18.555536+00	2021-11-26 10:34:18.555562+00	8	352
10392	8	2021-11-26 10:34:18.561561+00	2021-11-26 10:34:18.561592+00	8	352
10393	9	2021-11-26 10:34:18.567387+00	2021-11-26 10:34:18.567415+00	8	352
10394	10	2021-11-26 10:34:18.573258+00	2021-11-26 10:34:18.573297+00	8	352
10395	11	2021-11-26 10:34:18.57927+00	2021-11-26 10:34:18.579301+00	8	352
10396	12	2021-11-26 10:34:18.584874+00	2021-11-26 10:34:18.584899+00	8	352
10397	13	2021-11-26 10:34:18.591021+00	2021-11-26 10:34:18.591061+00	8	352
10398	14	2021-11-26 10:34:18.597096+00	2021-11-26 10:34:18.597125+00	8	352
10399	15	2021-11-26 10:34:18.602234+00	2021-11-26 10:34:18.602263+00	8	352
10400	16	2021-11-26 10:34:18.607872+00	2021-11-26 10:34:18.6079+00	8	352
10401	17	2021-11-26 10:34:18.613313+00	2021-11-26 10:34:18.613339+00	8	352
10402	18	2021-11-26 10:34:18.618944+00	2021-11-26 10:34:18.618969+00	8	352
10403	19	2021-11-26 10:34:18.624903+00	2021-11-26 10:34:18.62495+00	8	352
10404	20	2021-11-26 10:34:18.630856+00	2021-11-26 10:34:18.630884+00	8	352
10405	21	2021-11-26 10:34:18.636556+00	2021-11-26 10:34:18.636587+00	8	352
10406	22	2021-11-26 10:34:18.642532+00	2021-11-26 10:34:18.642559+00	8	352
10407	23	2021-11-26 10:34:18.64788+00	2021-11-26 10:34:18.647905+00	8	352
10408	24	2021-11-26 10:34:18.653586+00	2021-11-26 10:34:18.653617+00	8	352
10409	25	2021-11-26 10:34:18.659715+00	2021-11-26 10:34:18.659746+00	8	352
10410	26	2021-11-26 10:34:18.665515+00	2021-11-26 10:34:18.665545+00	8	352
10411	27	2021-11-26 10:34:18.671328+00	2021-11-26 10:34:18.671387+00	8	352
10412	28	2021-11-26 10:34:18.677068+00	2021-11-26 10:34:18.677094+00	8	352
10413	29	2021-11-26 10:34:18.682551+00	2021-11-26 10:34:18.682584+00	8	352
10414	0	2021-11-26 10:34:18.694047+00	2021-11-26 10:34:18.69408+00	8	353
10415	1	2021-11-26 10:34:18.700175+00	2021-11-26 10:34:18.700205+00	8	353
10416	2	2021-11-26 10:34:18.705757+00	2021-11-26 10:34:18.705785+00	8	353
10417	3	2021-11-26 10:34:18.711401+00	2021-11-26 10:34:18.711435+00	8	353
10418	4	2021-11-26 10:34:18.717796+00	2021-11-26 10:34:18.717826+00	8	353
10419	5	2021-11-26 10:34:18.724223+00	2021-11-26 10:34:18.724252+00	8	353
10420	6	2021-11-26 10:34:18.730171+00	2021-11-26 10:34:18.730197+00	8	353
10421	7	2021-11-26 10:34:18.735974+00	2021-11-26 10:34:18.735999+00	8	353
10422	8	2021-11-26 10:34:18.741733+00	2021-11-26 10:34:18.741759+00	8	353
10423	9	2021-11-26 10:34:18.747885+00	2021-11-26 10:34:18.747915+00	8	353
10424	10	2021-11-26 10:34:18.754516+00	2021-11-26 10:34:18.754548+00	8	353
10425	11	2021-11-26 10:34:18.760863+00	2021-11-26 10:34:18.760893+00	8	353
10426	12	2021-11-26 10:34:18.766804+00	2021-11-26 10:34:18.76683+00	8	353
10427	13	2021-11-26 10:34:18.772579+00	2021-11-26 10:34:18.772607+00	8	353
10428	14	2021-11-26 10:34:18.778282+00	2021-11-26 10:34:18.778313+00	8	353
10429	15	2021-11-26 10:34:18.784371+00	2021-11-26 10:34:18.784404+00	8	353
10430	16	2021-11-26 10:34:18.790452+00	2021-11-26 10:34:18.790482+00	8	353
10431	17	2021-11-26 10:34:18.796159+00	2021-11-26 10:34:18.796188+00	8	353
10432	18	2021-11-26 10:34:18.801991+00	2021-11-26 10:34:18.802019+00	8	353
10433	19	2021-11-26 10:34:18.8083+00	2021-11-26 10:34:18.808334+00	8	353
10434	20	2021-11-26 10:34:18.814247+00	2021-11-26 10:34:18.814278+00	8	353
10435	21	2021-11-26 10:34:18.819589+00	2021-11-26 10:34:18.819626+00	8	353
10436	22	2021-11-26 10:34:18.825074+00	2021-11-26 10:34:18.825101+00	8	353
10437	23	2021-11-26 10:34:18.830855+00	2021-11-26 10:34:18.830881+00	8	353
10438	24	2021-11-26 10:34:18.836611+00	2021-11-26 10:34:18.836643+00	8	353
10439	25	2021-11-26 10:34:18.842742+00	2021-11-26 10:34:18.842773+00	8	353
10440	26	2021-11-26 10:34:18.848592+00	2021-11-26 10:34:18.848621+00	8	353
10441	27	2021-11-26 10:34:18.854396+00	2021-11-26 10:34:18.854425+00	8	353
10442	28	2021-11-26 10:34:18.860134+00	2021-11-26 10:34:18.860162+00	8	353
10443	29	2021-11-26 10:34:18.865852+00	2021-11-26 10:34:18.865876+00	8	353
10444	0	2021-11-26 10:34:18.878863+00	2021-11-26 10:34:18.878906+00	8	354
10445	1	2021-11-26 10:34:18.885301+00	2021-11-26 10:34:18.88534+00	8	354
10446	2	2021-11-26 10:34:18.891217+00	2021-11-26 10:34:18.891246+00	8	354
10447	3	2021-11-26 10:34:18.897143+00	2021-11-26 10:34:18.897174+00	8	354
10448	4	2021-11-26 10:34:18.902807+00	2021-11-26 10:34:18.902848+00	8	354
10449	5	2021-11-26 10:34:18.908775+00	2021-11-26 10:34:18.908817+00	8	354
10450	6	2021-11-26 10:34:18.914091+00	2021-11-26 10:34:18.914109+00	8	354
10451	7	2021-11-26 10:34:18.918668+00	2021-11-26 10:34:18.918686+00	8	354
10452	8	2021-11-26 10:34:18.923119+00	2021-11-26 10:34:18.923136+00	8	354
10453	9	2021-11-26 10:34:18.927394+00	2021-11-26 10:34:18.927412+00	8	354
10454	10	2021-11-26 10:34:18.931757+00	2021-11-26 10:34:18.931774+00	8	354
10455	11	2021-11-26 10:34:18.935789+00	2021-11-26 10:34:18.935796+00	8	354
10456	12	2021-11-26 10:34:18.939048+00	2021-11-26 10:34:18.939061+00	8	354
10457	13	2021-11-26 10:34:18.942321+00	2021-11-26 10:34:18.94233+00	8	354
10458	14	2021-11-26 10:34:18.945482+00	2021-11-26 10:34:18.945489+00	8	354
10459	15	2021-11-26 10:34:18.948519+00	2021-11-26 10:34:18.948525+00	8	354
10460	16	2021-11-26 10:34:18.951572+00	2021-11-26 10:34:18.951583+00	8	354
10461	17	2021-11-26 10:34:18.954877+00	2021-11-26 10:34:18.954888+00	8	354
10462	18	2021-11-26 10:34:18.957972+00	2021-11-26 10:34:18.957983+00	8	354
10463	19	2021-11-26 10:34:18.960782+00	2021-11-26 10:34:18.960788+00	8	354
10464	20	2021-11-26 10:34:18.963442+00	2021-11-26 10:34:18.963448+00	8	354
10465	21	2021-11-26 10:34:18.966465+00	2021-11-26 10:34:18.966471+00	8	354
10466	22	2021-11-26 10:34:18.969372+00	2021-11-26 10:34:18.969378+00	8	354
10467	23	2021-11-26 10:34:18.972338+00	2021-11-26 10:34:18.972347+00	8	354
10468	24	2021-11-26 10:34:18.975296+00	2021-11-26 10:34:18.975304+00	8	354
10469	25	2021-11-26 10:34:18.978292+00	2021-11-26 10:34:18.978299+00	8	354
10470	26	2021-11-26 10:34:18.981196+00	2021-11-26 10:34:18.981202+00	8	354
10471	27	2021-11-26 10:34:18.984347+00	2021-11-26 10:34:18.984355+00	8	354
10472	28	2021-11-26 10:34:18.987575+00	2021-11-26 10:34:18.987585+00	8	354
10473	29	2021-11-26 10:34:18.990653+00	2021-11-26 10:34:18.99066+00	8	354
10474	0	2021-11-26 10:34:18.996251+00	2021-11-26 10:34:18.996257+00	8	355
10475	1	2021-11-26 10:34:18.99909+00	2021-11-26 10:34:18.999096+00	8	355
10476	2	2021-11-26 10:34:19.002017+00	2021-11-26 10:34:19.002026+00	8	355
10477	3	2021-11-26 10:34:19.006373+00	2021-11-26 10:34:19.006383+00	8	355
10478	4	2021-11-26 10:34:19.009802+00	2021-11-26 10:34:19.00981+00	8	355
10479	5	2021-11-26 10:34:19.0132+00	2021-11-26 10:34:19.013206+00	8	355
10480	6	2021-11-26 10:34:19.016608+00	2021-11-26 10:34:19.016614+00	8	355
10481	7	2021-11-26 10:34:19.019506+00	2021-11-26 10:34:19.019511+00	8	355
10482	8	2021-11-26 10:34:19.022849+00	2021-11-26 10:34:19.02286+00	8	355
10483	9	2021-11-26 10:34:19.025786+00	2021-11-26 10:34:19.025793+00	8	355
10484	10	2021-11-26 10:34:19.028589+00	2021-11-26 10:34:19.028595+00	8	355
10485	11	2021-11-26 10:34:19.031448+00	2021-11-26 10:34:19.031454+00	8	355
10486	12	2021-11-26 10:34:19.034428+00	2021-11-26 10:34:19.034434+00	8	355
10487	13	2021-11-26 10:34:19.037455+00	2021-11-26 10:34:19.037463+00	8	355
10488	14	2021-11-26 10:34:19.04043+00	2021-11-26 10:34:19.040437+00	8	355
10489	15	2021-11-26 10:34:19.043492+00	2021-11-26 10:34:19.043501+00	8	355
10490	16	2021-11-26 10:34:19.046733+00	2021-11-26 10:34:19.046747+00	8	355
10491	17	2021-11-26 10:34:19.049838+00	2021-11-26 10:34:19.049844+00	8	355
10492	18	2021-11-26 10:34:19.052948+00	2021-11-26 10:34:19.052962+00	8	355
10493	19	2021-11-26 10:34:19.056113+00	2021-11-26 10:34:19.056122+00	8	355
10494	20	2021-11-26 10:34:19.059309+00	2021-11-26 10:34:19.059317+00	8	355
10495	21	2021-11-26 10:34:19.06237+00	2021-11-26 10:34:19.062376+00	8	355
10496	22	2021-11-26 10:34:19.065457+00	2021-11-26 10:34:19.065463+00	8	355
10497	23	2021-11-26 10:34:19.068657+00	2021-11-26 10:34:19.068663+00	8	355
10498	24	2021-11-26 10:34:19.071759+00	2021-11-26 10:34:19.071765+00	8	355
10499	25	2021-11-26 10:34:19.074784+00	2021-11-26 10:34:19.074794+00	8	355
10500	26	2021-11-26 10:34:19.077696+00	2021-11-26 10:34:19.077703+00	8	355
10501	27	2021-11-26 10:34:19.080837+00	2021-11-26 10:34:19.080847+00	8	355
10502	28	2021-11-26 10:34:19.083675+00	2021-11-26 10:34:19.083682+00	8	355
10503	29	2021-11-26 10:34:19.086582+00	2021-11-26 10:34:19.086592+00	8	355
10504	0	2021-11-26 10:34:19.092854+00	2021-11-26 10:34:19.092863+00	8	356
10505	1	2021-11-26 10:34:19.095752+00	2021-11-26 10:34:19.095759+00	8	356
10506	2	2021-11-26 10:34:19.098873+00	2021-11-26 10:34:19.09888+00	8	356
10507	3	2021-11-26 10:34:19.101991+00	2021-11-26 10:34:19.101996+00	8	356
10508	4	2021-11-26 10:34:19.105218+00	2021-11-26 10:34:19.105226+00	8	356
10509	5	2021-11-26 10:34:19.108442+00	2021-11-26 10:34:19.10845+00	8	356
10510	6	2021-11-26 10:34:19.111697+00	2021-11-26 10:34:19.111704+00	8	356
10511	7	2021-11-26 10:34:19.114817+00	2021-11-26 10:34:19.114822+00	8	356
10512	8	2021-11-26 10:34:19.117716+00	2021-11-26 10:34:19.117724+00	8	356
10513	9	2021-11-26 10:34:19.120962+00	2021-11-26 10:34:19.120972+00	8	356
10514	10	2021-11-26 10:34:19.123966+00	2021-11-26 10:34:19.123974+00	8	356
10515	11	2021-11-26 10:34:19.127111+00	2021-11-26 10:34:19.127119+00	8	356
10516	12	2021-11-26 10:34:19.130211+00	2021-11-26 10:34:19.130218+00	8	356
10517	13	2021-11-26 10:34:19.133178+00	2021-11-26 10:34:19.133183+00	8	356
10518	14	2021-11-26 10:34:19.136274+00	2021-11-26 10:34:19.136279+00	8	356
10519	15	2021-11-26 10:34:19.139111+00	2021-11-26 10:34:19.139117+00	8	356
10520	16	2021-11-26 10:34:19.142007+00	2021-11-26 10:34:19.142013+00	8	356
10521	17	2021-11-26 10:34:19.145095+00	2021-11-26 10:34:19.145101+00	8	356
10522	18	2021-11-26 10:34:19.148221+00	2021-11-26 10:34:19.148227+00	8	356
10523	19	2021-11-26 10:34:19.15154+00	2021-11-26 10:34:19.151546+00	8	356
10524	20	2021-11-26 10:34:19.154448+00	2021-11-26 10:34:19.154458+00	8	356
10525	21	2021-11-26 10:34:19.157729+00	2021-11-26 10:34:19.157738+00	8	356
10526	22	2021-11-26 10:34:19.160698+00	2021-11-26 10:34:19.160704+00	8	356
10527	23	2021-11-26 10:34:19.163658+00	2021-11-26 10:34:19.163663+00	8	356
10528	24	2021-11-26 10:34:19.166735+00	2021-11-26 10:34:19.16674+00	8	356
10529	25	2021-11-26 10:34:19.169681+00	2021-11-26 10:34:19.16969+00	8	356
10530	26	2021-11-26 10:34:19.172809+00	2021-11-26 10:34:19.172818+00	8	356
10531	27	2021-11-26 10:34:19.175966+00	2021-11-26 10:34:19.175977+00	8	356
10532	28	2021-11-26 10:34:19.17896+00	2021-11-26 10:34:19.178971+00	8	356
10533	29	2021-11-26 10:34:19.182014+00	2021-11-26 10:34:19.182022+00	8	356
10534	0	2021-11-26 10:34:19.187883+00	2021-11-26 10:34:19.187894+00	8	357
10535	1	2021-11-26 10:34:19.190797+00	2021-11-26 10:34:19.190807+00	8	357
10536	2	2021-11-26 10:34:19.194325+00	2021-11-26 10:34:19.194332+00	8	357
10537	3	2021-11-26 10:34:19.197809+00	2021-11-26 10:34:19.197816+00	8	357
10538	4	2021-11-26 10:34:19.201166+00	2021-11-26 10:34:19.201172+00	8	357
10539	5	2021-11-26 10:34:19.204608+00	2021-11-26 10:34:19.204615+00	8	357
10540	6	2021-11-26 10:34:19.208039+00	2021-11-26 10:34:19.208045+00	8	357
10541	7	2021-11-26 10:34:19.211266+00	2021-11-26 10:34:19.211272+00	8	357
10542	8	2021-11-26 10:34:19.214483+00	2021-11-26 10:34:19.214489+00	8	357
10543	9	2021-11-26 10:34:19.217794+00	2021-11-26 10:34:19.2178+00	8	357
10544	10	2021-11-26 10:34:19.220966+00	2021-11-26 10:34:19.220976+00	8	357
10545	11	2021-11-26 10:34:19.22433+00	2021-11-26 10:34:19.224339+00	8	357
10546	12	2021-11-26 10:34:19.227456+00	2021-11-26 10:34:19.227464+00	8	357
10547	13	2021-11-26 10:34:19.230681+00	2021-11-26 10:34:19.230687+00	8	357
10548	14	2021-11-26 10:34:19.233729+00	2021-11-26 10:34:19.233735+00	8	357
10549	15	2021-11-26 10:34:19.236895+00	2021-11-26 10:34:19.236906+00	8	357
10550	16	2021-11-26 10:34:19.240329+00	2021-11-26 10:34:19.24034+00	8	357
10551	17	2021-11-26 10:34:19.244364+00	2021-11-26 10:34:19.244392+00	8	357
10552	18	2021-11-26 10:34:19.249648+00	2021-11-26 10:34:19.249673+00	8	357
10553	19	2021-11-26 10:34:19.254481+00	2021-11-26 10:34:19.254489+00	8	357
10554	20	2021-11-26 10:34:19.257786+00	2021-11-26 10:34:19.257794+00	8	357
10555	21	2021-11-26 10:34:19.260991+00	2021-11-26 10:34:19.260998+00	8	357
10556	22	2021-11-26 10:34:19.264493+00	2021-11-26 10:34:19.264499+00	8	357
10557	23	2021-11-26 10:34:19.267681+00	2021-11-26 10:34:19.267687+00	8	357
10558	24	2021-11-26 10:34:19.271054+00	2021-11-26 10:34:19.271064+00	8	357
10559	25	2021-11-26 10:34:19.274155+00	2021-11-26 10:34:19.274162+00	8	357
10560	26	2021-11-26 10:34:19.277297+00	2021-11-26 10:34:19.277303+00	8	357
10561	27	2021-11-26 10:34:19.280296+00	2021-11-26 10:34:19.280302+00	8	357
10562	28	2021-11-26 10:34:19.283384+00	2021-11-26 10:34:19.283389+00	8	357
10563	29	2021-11-26 10:34:19.286322+00	2021-11-26 10:34:19.286328+00	8	357
10564	0	2021-11-26 10:34:19.293184+00	2021-11-26 10:34:19.293193+00	8	358
10565	1	2021-11-26 10:34:19.297074+00	2021-11-26 10:34:19.297082+00	8	358
10566	2	2021-11-26 10:34:19.300626+00	2021-11-26 10:34:19.300633+00	8	358
10567	3	2021-11-26 10:34:19.303938+00	2021-11-26 10:34:19.303946+00	8	358
10568	4	2021-11-26 10:34:19.307228+00	2021-11-26 10:34:19.307238+00	8	358
10569	5	2021-11-26 10:34:19.310739+00	2021-11-26 10:34:19.310747+00	8	358
10570	6	2021-11-26 10:34:19.314041+00	2021-11-26 10:34:19.314048+00	8	358
10571	7	2021-11-26 10:34:19.317157+00	2021-11-26 10:34:19.317163+00	8	358
10572	8	2021-11-26 10:34:19.320621+00	2021-11-26 10:34:19.32063+00	8	358
10573	9	2021-11-26 10:34:19.323786+00	2021-11-26 10:34:19.323795+00	8	358
10574	10	2021-11-26 10:34:19.327061+00	2021-11-26 10:34:19.327069+00	8	358
10575	11	2021-11-26 10:34:19.330082+00	2021-11-26 10:34:19.33009+00	8	358
10576	12	2021-11-26 10:34:19.333248+00	2021-11-26 10:34:19.333257+00	8	358
10577	13	2021-11-26 10:34:19.336178+00	2021-11-26 10:34:19.336188+00	8	358
10578	14	2021-11-26 10:34:19.339322+00	2021-11-26 10:34:19.339334+00	8	358
10579	15	2021-11-26 10:34:19.342306+00	2021-11-26 10:34:19.342315+00	8	358
10580	16	2021-11-26 10:34:19.345346+00	2021-11-26 10:34:19.345353+00	8	358
10581	17	2021-11-26 10:34:19.348278+00	2021-11-26 10:34:19.348284+00	8	358
10582	18	2021-11-26 10:34:19.351376+00	2021-11-26 10:34:19.351382+00	8	358
10583	19	2021-11-26 10:34:19.354567+00	2021-11-26 10:34:19.354573+00	8	358
10584	20	2021-11-26 10:34:19.357578+00	2021-11-26 10:34:19.357584+00	8	358
10585	21	2021-11-26 10:34:19.36047+00	2021-11-26 10:34:19.360476+00	8	358
10586	22	2021-11-26 10:34:19.363668+00	2021-11-26 10:34:19.363674+00	8	358
10587	23	2021-11-26 10:34:19.366546+00	2021-11-26 10:34:19.366552+00	8	358
10588	24	2021-11-26 10:34:19.369538+00	2021-11-26 10:34:19.369543+00	8	358
10589	25	2021-11-26 10:34:19.372747+00	2021-11-26 10:34:19.372759+00	8	358
10590	26	2021-11-26 10:34:19.375709+00	2021-11-26 10:34:19.375716+00	8	358
10591	27	2021-11-26 10:34:19.378606+00	2021-11-26 10:34:19.378611+00	8	358
10592	28	2021-11-26 10:34:19.381472+00	2021-11-26 10:34:19.381478+00	8	358
10593	29	2021-11-26 10:34:19.384238+00	2021-11-26 10:34:19.384244+00	8	358
10594	0	2021-11-26 10:34:19.390115+00	2021-11-26 10:34:19.390125+00	8	359
10595	1	2021-11-26 10:34:19.393303+00	2021-11-26 10:34:19.393314+00	8	359
10596	2	2021-11-26 10:34:19.39766+00	2021-11-26 10:34:19.397668+00	8	359
10597	3	2021-11-26 10:34:19.401018+00	2021-11-26 10:34:19.401026+00	8	359
10598	4	2021-11-26 10:34:19.404592+00	2021-11-26 10:34:19.404601+00	8	359
10599	5	2021-11-26 10:34:19.40804+00	2021-11-26 10:34:19.408049+00	8	359
10600	6	2021-11-26 10:34:19.411462+00	2021-11-26 10:34:19.411469+00	8	359
10601	7	2021-11-26 10:34:19.414929+00	2021-11-26 10:34:19.414935+00	8	359
10602	8	2021-11-26 10:34:19.418418+00	2021-11-26 10:34:19.418423+00	8	359
10603	9	2021-11-26 10:34:19.421574+00	2021-11-26 10:34:19.42158+00	8	359
10604	10	2021-11-26 10:34:19.424804+00	2021-11-26 10:34:19.42481+00	8	359
10605	11	2021-11-26 10:34:19.427815+00	2021-11-26 10:34:19.427821+00	8	359
10606	12	2021-11-26 10:34:19.431188+00	2021-11-26 10:34:19.431194+00	8	359
10607	13	2021-11-26 10:34:19.434388+00	2021-11-26 10:34:19.434393+00	8	359
10608	14	2021-11-26 10:34:19.437783+00	2021-11-26 10:34:19.437793+00	8	359
10609	15	2021-11-26 10:34:19.441438+00	2021-11-26 10:34:19.441446+00	8	359
10610	16	2021-11-26 10:34:19.444944+00	2021-11-26 10:34:19.44495+00	8	359
10611	17	2021-11-26 10:34:19.448662+00	2021-11-26 10:34:19.448667+00	8	359
10612	18	2021-11-26 10:34:19.451924+00	2021-11-26 10:34:19.451929+00	8	359
10613	19	2021-11-26 10:34:19.45565+00	2021-11-26 10:34:19.455664+00	8	359
10614	20	2021-11-26 10:34:19.459422+00	2021-11-26 10:34:19.459431+00	8	359
10615	21	2021-11-26 10:34:19.462986+00	2021-11-26 10:34:19.462993+00	8	359
10616	22	2021-11-26 10:34:19.466312+00	2021-11-26 10:34:19.466318+00	8	359
10617	23	2021-11-26 10:34:19.469816+00	2021-11-26 10:34:19.469824+00	8	359
10618	24	2021-11-26 10:34:19.473332+00	2021-11-26 10:34:19.473343+00	8	359
10619	25	2021-11-26 10:34:19.477082+00	2021-11-26 10:34:19.477089+00	8	359
10620	26	2021-11-26 10:34:19.480784+00	2021-11-26 10:34:19.480791+00	8	359
10621	27	2021-11-26 10:34:19.484304+00	2021-11-26 10:34:19.484314+00	8	359
10622	28	2021-11-26 10:34:19.487826+00	2021-11-26 10:34:19.487836+00	8	359
10623	29	2021-11-26 10:34:19.492537+00	2021-11-26 10:34:19.492548+00	8	359
10624	0	2021-11-26 10:34:19.498523+00	2021-11-26 10:34:19.498529+00	8	360
10625	1	2021-11-26 10:34:19.501538+00	2021-11-26 10:34:19.501543+00	8	360
10626	2	2021-11-26 10:34:19.504705+00	2021-11-26 10:34:19.504711+00	8	360
10627	3	2021-11-26 10:34:19.507648+00	2021-11-26 10:34:19.507653+00	8	360
10628	4	2021-11-26 10:34:19.510509+00	2021-11-26 10:34:19.510514+00	8	360
10629	5	2021-11-26 10:34:19.513322+00	2021-11-26 10:34:19.513328+00	8	360
10630	6	2021-11-26 10:34:19.51647+00	2021-11-26 10:34:19.516479+00	8	360
10631	7	2021-11-26 10:34:19.519544+00	2021-11-26 10:34:19.51955+00	8	360
10632	8	2021-11-26 10:34:19.522815+00	2021-11-26 10:34:19.522826+00	8	360
10633	9	2021-11-26 10:34:19.52583+00	2021-11-26 10:34:19.525837+00	8	360
10634	10	2021-11-26 10:34:19.528696+00	2021-11-26 10:34:19.528704+00	8	360
10635	11	2021-11-26 10:34:19.53144+00	2021-11-26 10:34:19.531446+00	8	360
10636	12	2021-11-26 10:34:19.534329+00	2021-11-26 10:34:19.534335+00	8	360
10637	13	2021-11-26 10:34:19.537401+00	2021-11-26 10:34:19.537409+00	8	360
10638	14	2021-11-26 10:34:19.540409+00	2021-11-26 10:34:19.540416+00	8	360
10639	15	2021-11-26 10:34:19.543548+00	2021-11-26 10:34:19.543558+00	8	360
10640	16	2021-11-26 10:34:19.54692+00	2021-11-26 10:34:19.546929+00	8	360
10641	17	2021-11-26 10:34:19.549807+00	2021-11-26 10:34:19.549814+00	8	360
10642	18	2021-11-26 10:34:19.552718+00	2021-11-26 10:34:19.552728+00	8	360
10643	19	2021-11-26 10:34:19.559492+00	2021-11-26 10:34:19.559503+00	8	360
10644	20	2021-11-26 10:34:19.563216+00	2021-11-26 10:34:19.563223+00	8	360
10645	21	2021-11-26 10:34:19.566316+00	2021-11-26 10:34:19.566322+00	8	360
10646	22	2021-11-26 10:34:19.569557+00	2021-11-26 10:34:19.569564+00	8	360
10647	23	2021-11-26 10:34:19.572842+00	2021-11-26 10:34:19.572849+00	8	360
10648	24	2021-11-26 10:34:19.576+00	2021-11-26 10:34:19.576006+00	8	360
10649	25	2021-11-26 10:34:19.579196+00	2021-11-26 10:34:19.579202+00	8	360
10650	26	2021-11-26 10:34:19.582245+00	2021-11-26 10:34:19.582251+00	8	360
10651	27	2021-11-26 10:34:19.585425+00	2021-11-26 10:34:19.585431+00	8	360
10652	28	2021-11-26 10:34:19.588551+00	2021-11-26 10:34:19.588559+00	8	360
10653	29	2021-11-26 10:34:19.59184+00	2021-11-26 10:34:19.591849+00	8	360
10654	0	2021-11-26 10:34:19.598152+00	2021-11-26 10:34:19.598158+00	8	361
10655	1	2021-11-26 10:34:19.601305+00	2021-11-26 10:34:19.601311+00	8	361
10656	2	2021-11-26 10:34:19.604414+00	2021-11-26 10:34:19.604422+00	8	361
10657	3	2021-11-26 10:34:19.607669+00	2021-11-26 10:34:19.60768+00	8	361
10658	4	2021-11-26 10:34:19.610923+00	2021-11-26 10:34:19.61093+00	8	361
10659	5	2021-11-26 10:34:19.613844+00	2021-11-26 10:34:19.613849+00	8	361
10660	6	2021-11-26 10:34:19.616805+00	2021-11-26 10:34:19.616811+00	8	361
10661	7	2021-11-26 10:34:19.619785+00	2021-11-26 10:34:19.619793+00	8	361
10662	8	2021-11-26 10:34:19.622928+00	2021-11-26 10:34:19.622937+00	8	361
10663	9	2021-11-26 10:34:19.625846+00	2021-11-26 10:34:19.625854+00	8	361
10664	10	2021-11-26 10:34:19.628646+00	2021-11-26 10:34:19.628653+00	8	361
10665	11	2021-11-26 10:34:19.631484+00	2021-11-26 10:34:19.63149+00	8	361
10666	12	2021-11-26 10:34:19.634276+00	2021-11-26 10:34:19.634281+00	8	361
10667	13	2021-11-26 10:34:19.63725+00	2021-11-26 10:34:19.63726+00	8	361
10668	14	2021-11-26 10:34:19.640348+00	2021-11-26 10:34:19.640357+00	8	361
10669	15	2021-11-26 10:34:19.643201+00	2021-11-26 10:34:19.643207+00	8	361
10670	16	2021-11-26 10:34:19.646213+00	2021-11-26 10:34:19.646219+00	8	361
10671	17	2021-11-26 10:34:19.649114+00	2021-11-26 10:34:19.64912+00	8	361
10672	18	2021-11-26 10:34:19.65216+00	2021-11-26 10:34:19.652165+00	8	361
10673	19	2021-11-26 10:34:19.655148+00	2021-11-26 10:34:19.655156+00	8	361
10674	20	2021-11-26 10:34:19.658037+00	2021-11-26 10:34:19.658045+00	8	361
10675	21	2021-11-26 10:34:19.660921+00	2021-11-26 10:34:19.660928+00	8	361
10676	22	2021-11-26 10:34:19.663922+00	2021-11-26 10:34:19.663927+00	8	361
10677	23	2021-11-26 10:34:19.666834+00	2021-11-26 10:34:19.66684+00	8	361
10678	24	2021-11-26 10:34:19.669378+00	2021-11-26 10:34:19.669383+00	8	361
10679	25	2021-11-26 10:34:19.67217+00	2021-11-26 10:34:19.67218+00	8	361
10680	26	2021-11-26 10:34:19.67501+00	2021-11-26 10:34:19.675017+00	8	361
10681	27	2021-11-26 10:34:19.67774+00	2021-11-26 10:34:19.677746+00	8	361
10682	28	2021-11-26 10:34:19.680418+00	2021-11-26 10:34:19.680424+00	8	361
10683	29	2021-11-26 10:34:19.683176+00	2021-11-26 10:34:19.683182+00	8	361
10684	0	2021-11-26 10:34:19.688969+00	2021-11-26 10:34:19.688977+00	8	362
10685	1	2021-11-26 10:34:19.691604+00	2021-11-26 10:34:19.691611+00	8	362
10686	2	2021-11-26 10:34:19.69434+00	2021-11-26 10:34:19.694346+00	8	362
10687	3	2021-11-26 10:34:19.69701+00	2021-11-26 10:34:19.69702+00	8	362
10688	4	2021-11-26 10:34:19.700071+00	2021-11-26 10:34:19.700082+00	8	362
10689	5	2021-11-26 10:34:19.703148+00	2021-11-26 10:34:19.703161+00	8	362
10690	6	2021-11-26 10:34:19.705974+00	2021-11-26 10:34:19.705983+00	8	362
10691	7	2021-11-26 10:34:19.708859+00	2021-11-26 10:34:19.708867+00	8	362
10692	8	2021-11-26 10:34:19.71172+00	2021-11-26 10:34:19.711727+00	8	362
10693	9	2021-11-26 10:34:19.714631+00	2021-11-26 10:34:19.714642+00	8	362
10694	10	2021-11-26 10:34:19.717708+00	2021-11-26 10:34:19.717715+00	8	362
10695	11	2021-11-26 10:34:19.72075+00	2021-11-26 10:34:19.720757+00	8	362
10696	12	2021-11-26 10:34:19.723617+00	2021-11-26 10:34:19.723623+00	8	362
10697	13	2021-11-26 10:34:19.726547+00	2021-11-26 10:34:19.726553+00	8	362
10698	14	2021-11-26 10:34:19.729943+00	2021-11-26 10:34:19.729956+00	8	362
10699	15	2021-11-26 10:34:19.733365+00	2021-11-26 10:34:19.733371+00	8	362
10700	16	2021-11-26 10:34:19.736648+00	2021-11-26 10:34:19.736656+00	8	362
10701	17	2021-11-26 10:34:19.739642+00	2021-11-26 10:34:19.73965+00	8	362
10702	18	2021-11-26 10:34:19.742456+00	2021-11-26 10:34:19.742465+00	8	362
10703	19	2021-11-26 10:34:19.745222+00	2021-11-26 10:34:19.745229+00	8	362
10704	20	2021-11-26 10:34:19.748128+00	2021-11-26 10:34:19.748134+00	8	362
10705	21	2021-11-26 10:34:19.750951+00	2021-11-26 10:34:19.750957+00	8	362
10706	22	2021-11-26 10:34:19.75354+00	2021-11-26 10:34:19.753546+00	8	362
10707	23	2021-11-26 10:34:19.756095+00	2021-11-26 10:34:19.7561+00	8	362
10708	24	2021-11-26 10:34:19.758646+00	2021-11-26 10:34:19.758652+00	8	362
10709	25	2021-11-26 10:34:19.761284+00	2021-11-26 10:34:19.761317+00	8	362
10710	26	2021-11-26 10:34:19.763847+00	2021-11-26 10:34:19.763853+00	8	362
10711	27	2021-11-26 10:34:19.766481+00	2021-11-26 10:34:19.766486+00	8	362
10712	28	2021-11-26 10:34:19.769543+00	2021-11-26 10:34:19.769557+00	8	362
10713	29	2021-11-26 10:34:19.776853+00	2021-11-26 10:34:19.776869+00	8	362
10714	0	2021-11-26 10:34:19.785189+00	2021-11-26 10:34:19.785212+00	8	363
10715	1	2021-11-26 10:34:19.790868+00	2021-11-26 10:34:19.790896+00	8	363
10716	2	2021-11-26 10:34:19.796224+00	2021-11-26 10:34:19.796251+00	8	363
10717	3	2021-11-26 10:34:19.801512+00	2021-11-26 10:34:19.801541+00	8	363
10718	4	2021-11-26 10:34:19.807416+00	2021-11-26 10:34:19.807447+00	8	363
10719	5	2021-11-26 10:34:19.812645+00	2021-11-26 10:34:19.812672+00	8	363
10720	6	2021-11-26 10:34:19.81809+00	2021-11-26 10:34:19.818116+00	8	363
10721	7	2021-11-26 10:34:19.82436+00	2021-11-26 10:34:19.824389+00	8	363
10722	8	2021-11-26 10:34:19.830419+00	2021-11-26 10:34:19.830448+00	8	363
10723	9	2021-11-26 10:34:19.836202+00	2021-11-26 10:34:19.836231+00	8	363
10724	10	2021-11-26 10:34:19.84211+00	2021-11-26 10:34:19.842137+00	8	363
10725	11	2021-11-26 10:34:19.847719+00	2021-11-26 10:34:19.847743+00	8	363
10726	12	2021-11-26 10:34:19.85311+00	2021-11-26 10:34:19.853135+00	8	363
10727	13	2021-11-26 10:34:19.859095+00	2021-11-26 10:34:19.859128+00	8	363
10728	14	2021-11-26 10:34:19.865304+00	2021-11-26 10:34:19.865334+00	8	363
10729	15	2021-11-26 10:34:19.871237+00	2021-11-26 10:34:19.871264+00	8	363
10730	16	2021-11-26 10:34:19.876783+00	2021-11-26 10:34:19.876817+00	8	363
10731	17	2021-11-26 10:34:19.882671+00	2021-11-26 10:34:19.882698+00	8	363
10732	18	2021-11-26 10:34:19.888721+00	2021-11-26 10:34:19.88875+00	8	363
10733	19	2021-11-26 10:34:19.894676+00	2021-11-26 10:34:19.894705+00	8	363
10734	20	2021-11-26 10:34:19.900402+00	2021-11-26 10:34:19.900432+00	8	363
10735	21	2021-11-26 10:34:19.906095+00	2021-11-26 10:34:19.906122+00	8	363
10736	22	2021-11-26 10:34:19.91193+00	2021-11-26 10:34:19.911956+00	8	363
10737	23	2021-11-26 10:34:19.917504+00	2021-11-26 10:34:19.917528+00	8	363
10738	24	2021-11-26 10:34:19.923466+00	2021-11-26 10:34:19.923497+00	8	363
10739	25	2021-11-26 10:34:19.929784+00	2021-11-26 10:34:19.929815+00	8	363
10740	26	2021-11-26 10:34:19.935627+00	2021-11-26 10:34:19.935653+00	8	363
10741	27	2021-11-26 10:34:19.941556+00	2021-11-26 10:34:19.941586+00	8	363
10742	28	2021-11-26 10:34:19.947881+00	2021-11-26 10:34:19.947919+00	8	363
10743	29	2021-11-26 10:34:19.954023+00	2021-11-26 10:34:19.954056+00	8	363
10744	0	2021-11-26 10:34:19.965567+00	2021-11-26 10:34:19.965594+00	8	364
10745	1	2021-11-26 10:34:19.971268+00	2021-11-26 10:34:19.971294+00	8	364
10746	2	2021-11-26 10:34:19.977177+00	2021-11-26 10:34:19.977204+00	8	364
10747	3	2021-11-26 10:34:19.983126+00	2021-11-26 10:34:19.983155+00	8	364
10748	4	2021-11-26 10:34:19.989041+00	2021-11-26 10:34:19.989072+00	8	364
10749	5	2021-11-26 10:34:19.995271+00	2021-11-26 10:34:19.995302+00	8	364
10750	6	2021-11-26 10:34:20.001574+00	2021-11-26 10:34:20.001603+00	8	364
10751	7	2021-11-26 10:34:20.008041+00	2021-11-26 10:34:20.008073+00	8	364
10752	8	2021-11-26 10:34:20.013592+00	2021-11-26 10:34:20.013624+00	8	364
10753	9	2021-11-26 10:34:20.019464+00	2021-11-26 10:34:20.019484+00	8	364
10754	10	2021-11-26 10:34:20.023888+00	2021-11-26 10:34:20.023908+00	8	364
10755	11	2021-11-26 10:34:20.027646+00	2021-11-26 10:34:20.027659+00	8	364
10756	12	2021-11-26 10:34:20.031558+00	2021-11-26 10:34:20.031571+00	8	364
10757	13	2021-11-26 10:34:20.034858+00	2021-11-26 10:34:20.034868+00	8	364
10758	14	2021-11-26 10:34:20.03817+00	2021-11-26 10:34:20.03818+00	8	364
10759	15	2021-11-26 10:34:20.041402+00	2021-11-26 10:34:20.041412+00	8	364
10760	16	2021-11-26 10:34:20.044533+00	2021-11-26 10:34:20.04454+00	8	364
10761	17	2021-11-26 10:34:20.047402+00	2021-11-26 10:34:20.047409+00	8	364
10762	18	2021-11-26 10:34:20.050188+00	2021-11-26 10:34:20.050194+00	8	364
10763	19	2021-11-26 10:34:20.053721+00	2021-11-26 10:34:20.05373+00	8	364
10764	20	2021-11-26 10:34:20.056475+00	2021-11-26 10:34:20.056482+00	8	364
10765	21	2021-11-26 10:34:20.059251+00	2021-11-26 10:34:20.059264+00	8	364
10766	22	2021-11-26 10:34:20.062685+00	2021-11-26 10:34:20.062693+00	8	364
10767	23	2021-11-26 10:34:20.065783+00	2021-11-26 10:34:20.065789+00	8	364
10768	24	2021-11-26 10:34:20.068813+00	2021-11-26 10:34:20.068819+00	8	364
10769	25	2021-11-26 10:34:20.071817+00	2021-11-26 10:34:20.071826+00	8	364
10770	26	2021-11-26 10:34:20.07486+00	2021-11-26 10:34:20.074868+00	8	364
10771	27	2021-11-26 10:34:20.077792+00	2021-11-26 10:34:20.077799+00	8	364
10772	28	2021-11-26 10:34:20.0808+00	2021-11-26 10:34:20.080805+00	8	364
10773	29	2021-11-26 10:34:20.083773+00	2021-11-26 10:34:20.083779+00	8	364
10774	0	2021-11-26 10:34:20.09026+00	2021-11-26 10:34:20.090269+00	8	365
10775	1	2021-11-26 10:34:20.093291+00	2021-11-26 10:34:20.0933+00	8	365
10776	2	2021-11-26 10:34:20.096229+00	2021-11-26 10:34:20.096242+00	8	365
10777	3	2021-11-26 10:34:20.099244+00	2021-11-26 10:34:20.099253+00	8	365
10778	4	2021-11-26 10:34:20.102369+00	2021-11-26 10:34:20.102379+00	8	365
10779	5	2021-11-26 10:34:20.105557+00	2021-11-26 10:34:20.105567+00	8	365
10780	6	2021-11-26 10:34:20.108984+00	2021-11-26 10:34:20.108993+00	8	365
10781	7	2021-11-26 10:34:20.112392+00	2021-11-26 10:34:20.1124+00	8	365
10782	8	2021-11-26 10:34:20.115484+00	2021-11-26 10:34:20.11549+00	8	365
10783	9	2021-11-26 10:34:20.118644+00	2021-11-26 10:34:20.11865+00	8	365
10784	10	2021-11-26 10:34:20.121765+00	2021-11-26 10:34:20.121772+00	8	365
10785	11	2021-11-26 10:34:20.12489+00	2021-11-26 10:34:20.124896+00	8	365
10786	12	2021-11-26 10:34:20.1279+00	2021-11-26 10:34:20.127906+00	8	365
10787	13	2021-11-26 10:34:20.131008+00	2021-11-26 10:34:20.131014+00	8	365
10788	14	2021-11-26 10:34:20.138222+00	2021-11-26 10:34:20.138246+00	8	365
10789	15	2021-11-26 10:34:20.144332+00	2021-11-26 10:34:20.144364+00	8	365
10790	16	2021-11-26 10:34:20.150176+00	2021-11-26 10:34:20.150203+00	8	365
10791	17	2021-11-26 10:34:20.156173+00	2021-11-26 10:34:20.1562+00	8	365
10792	18	2021-11-26 10:34:20.162135+00	2021-11-26 10:34:20.162166+00	8	365
10793	19	2021-11-26 10:34:20.16803+00	2021-11-26 10:34:20.16806+00	8	365
10794	20	2021-11-26 10:34:20.17361+00	2021-11-26 10:34:20.173638+00	8	365
10795	21	2021-11-26 10:34:20.178474+00	2021-11-26 10:34:20.178481+00	8	365
10796	22	2021-11-26 10:34:20.181643+00	2021-11-26 10:34:20.18165+00	8	365
10797	23	2021-11-26 10:34:20.184685+00	2021-11-26 10:34:20.184691+00	8	365
10798	24	2021-11-26 10:34:20.187764+00	2021-11-26 10:34:20.187773+00	8	365
10799	25	2021-11-26 10:34:20.190875+00	2021-11-26 10:34:20.190888+00	8	365
10800	26	2021-11-26 10:34:20.193785+00	2021-11-26 10:34:20.193792+00	8	365
10801	27	2021-11-26 10:34:20.196556+00	2021-11-26 10:34:20.196562+00	8	365
10802	28	2021-11-26 10:34:20.19947+00	2021-11-26 10:34:20.199476+00	8	365
10803	29	2021-11-26 10:34:20.202246+00	2021-11-26 10:34:20.202252+00	8	365
10804	0	2021-11-26 10:34:20.208096+00	2021-11-26 10:34:20.208104+00	8	366
10805	1	2021-11-26 10:34:20.21104+00	2021-11-26 10:34:20.211046+00	8	366
10806	2	2021-11-26 10:34:20.213908+00	2021-11-26 10:34:20.213914+00	8	366
10807	3	2021-11-26 10:34:20.216749+00	2021-11-26 10:34:20.216755+00	8	366
10808	4	2021-11-26 10:34:20.21966+00	2021-11-26 10:34:20.219669+00	8	366
10809	5	2021-11-26 10:34:20.222894+00	2021-11-26 10:34:20.222904+00	8	366
10810	6	2021-11-26 10:34:20.225879+00	2021-11-26 10:34:20.225886+00	8	366
10811	7	2021-11-26 10:34:20.228715+00	2021-11-26 10:34:20.228721+00	8	366
10812	8	2021-11-26 10:34:20.231609+00	2021-11-26 10:34:20.231615+00	8	366
10813	9	2021-11-26 10:34:20.234392+00	2021-11-26 10:34:20.234398+00	8	366
10814	10	2021-11-26 10:34:20.237466+00	2021-11-26 10:34:20.237474+00	8	366
10815	11	2021-11-26 10:34:20.240448+00	2021-11-26 10:34:20.240456+00	8	366
10816	12	2021-11-26 10:34:20.243308+00	2021-11-26 10:34:20.243315+00	8	366
10817	13	2021-11-26 10:34:20.246269+00	2021-11-26 10:34:20.246275+00	8	366
10818	14	2021-11-26 10:34:20.248951+00	2021-11-26 10:34:20.248957+00	8	366
10819	15	2021-11-26 10:34:20.25172+00	2021-11-26 10:34:20.251726+00	8	366
10820	16	2021-11-26 10:34:20.254514+00	2021-11-26 10:34:20.254522+00	8	366
10821	17	2021-11-26 10:34:20.257831+00	2021-11-26 10:34:20.257841+00	8	366
10822	18	2021-11-26 10:34:20.260861+00	2021-11-26 10:34:20.260867+00	8	366
10823	19	2021-11-26 10:34:20.263862+00	2021-11-26 10:34:20.263868+00	8	366
10824	20	2021-11-26 10:34:20.266904+00	2021-11-26 10:34:20.26691+00	8	366
10825	21	2021-11-26 10:34:20.269985+00	2021-11-26 10:34:20.269992+00	8	366
10826	22	2021-11-26 10:34:20.27314+00	2021-11-26 10:34:20.273147+00	8	366
10827	23	2021-11-26 10:34:20.276207+00	2021-11-26 10:34:20.276215+00	8	366
10828	24	2021-11-26 10:34:20.279221+00	2021-11-26 10:34:20.279228+00	8	366
10829	25	2021-11-26 10:34:20.282505+00	2021-11-26 10:34:20.282514+00	8	366
10830	26	2021-11-26 10:34:20.285545+00	2021-11-26 10:34:20.285554+00	8	366
10831	27	2021-11-26 10:34:20.288689+00	2021-11-26 10:34:20.288699+00	8	366
10832	28	2021-11-26 10:34:20.291718+00	2021-11-26 10:34:20.291726+00	8	366
10833	29	2021-11-26 10:34:20.29472+00	2021-11-26 10:34:20.294727+00	8	366
10834	0	2021-11-26 10:34:20.300497+00	2021-11-26 10:34:20.300503+00	8	367
10835	1	2021-11-26 10:34:20.303395+00	2021-11-26 10:34:20.303402+00	8	367
10836	2	2021-11-26 10:34:20.306404+00	2021-11-26 10:34:20.30641+00	8	367
10837	3	2021-11-26 10:34:20.309312+00	2021-11-26 10:34:20.309318+00	8	367
10838	4	2021-11-26 10:34:20.312408+00	2021-11-26 10:34:20.312414+00	8	367
10839	5	2021-11-26 10:34:20.315587+00	2021-11-26 10:34:20.315593+00	8	367
10840	6	2021-11-26 10:34:20.31858+00	2021-11-26 10:34:20.318586+00	8	367
10841	7	2021-11-26 10:34:20.321808+00	2021-11-26 10:34:20.321818+00	8	367
10842	8	2021-11-26 10:34:20.325223+00	2021-11-26 10:34:20.32523+00	8	367
10843	9	2021-11-26 10:34:20.328308+00	2021-11-26 10:34:20.328315+00	8	367
10844	10	2021-11-26 10:34:20.331321+00	2021-11-26 10:34:20.331326+00	8	367
10845	11	2021-11-26 10:34:20.334153+00	2021-11-26 10:34:20.334158+00	8	367
10846	12	2021-11-26 10:34:20.337372+00	2021-11-26 10:34:20.337381+00	8	367
10847	13	2021-11-26 10:34:20.340484+00	2021-11-26 10:34:20.340492+00	8	367
10848	14	2021-11-26 10:34:20.343572+00	2021-11-26 10:34:20.343582+00	8	367
10849	15	2021-11-26 10:34:20.346539+00	2021-11-26 10:34:20.346547+00	8	367
10850	16	2021-11-26 10:34:20.3494+00	2021-11-26 10:34:20.349407+00	8	367
10851	17	2021-11-26 10:34:20.35224+00	2021-11-26 10:34:20.352252+00	8	367
10852	18	2021-11-26 10:34:20.355378+00	2021-11-26 10:34:20.355389+00	8	367
10853	19	2021-11-26 10:34:20.358521+00	2021-11-26 10:34:20.358531+00	8	367
10854	20	2021-11-26 10:34:20.361464+00	2021-11-26 10:34:20.361471+00	8	367
10855	21	2021-11-26 10:34:20.364496+00	2021-11-26 10:34:20.364503+00	8	367
10856	22	2021-11-26 10:34:20.367406+00	2021-11-26 10:34:20.367412+00	8	367
10857	23	2021-11-26 10:34:20.370224+00	2021-11-26 10:34:20.37023+00	8	367
10858	24	2021-11-26 10:34:20.373131+00	2021-11-26 10:34:20.373136+00	8	367
10859	25	2021-11-26 10:34:20.37601+00	2021-11-26 10:34:20.376015+00	8	367
10860	26	2021-11-26 10:34:20.378877+00	2021-11-26 10:34:20.378882+00	8	367
10861	27	2021-11-26 10:34:20.381957+00	2021-11-26 10:34:20.381963+00	8	367
10862	28	2021-11-26 10:34:20.386203+00	2021-11-26 10:34:20.386208+00	8	367
10863	29	2021-11-26 10:34:20.389549+00	2021-11-26 10:34:20.389562+00	8	367
\.


--
-- Data for Name: section_section; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.section_section (id, name, is_curve, is_front_space, is_back_space, is_right_space, is_left_space, created_at, updated_at, hall_id, number) FROM stdin;
1	section front	f	t	t	t	t	2021-11-25 16:44:56.345836+00	2021-11-25 16:44:56.345856+00	1	1
2	section middle	f	t	t	t	t	2021-11-25 16:45:08.876428+00	2021-11-25 16:45:08.876448+00	1	2
16	main hall	f	f	f	f	f	2021-11-26 10:34:02.997563+00	2021-11-26 10:34:02.997571+00	16	1
17	middle hall	f	f	f	f	f	2021-11-26 10:34:12.812449+00	2021-11-26 10:34:12.812455+00	16	2
18	back hall	f	f	f	f	f	2021-11-26 10:34:17.112867+00	2021-11-26 10:34:17.112897+00	16	3
\.


--
-- Data for Name: ticket_ticket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ticket_ticket (id, first_name, last_name, email, is_reserved, created_at, updated_at, seance_id, seat_id, user_id) FROM stdin;
31	\N	\N	\N	f	2021-11-26 15:15:49.814147+00	2021-11-26 15:15:49.814174+00	3	6264	40
32	\N	\N	\N	f	2021-11-26 15:15:49.832355+00	2021-11-26 15:15:49.832382+00	3	6265	40
33	\N	\N	\N	f	2021-11-26 15:15:49.852957+00	2021-11-26 15:15:49.852986+00	3	6266	41
34	\N	\N	\N	f	2021-11-26 15:15:49.864521+00	2021-11-26 15:15:49.86454+00	3	6267	41
35	\N	\N	\N	f	2021-11-26 15:15:49.871994+00	2021-11-26 15:15:49.872007+00	3	6268	41
36	\N	\N	\N	f	2021-11-26 15:15:49.878681+00	2021-11-26 15:15:49.878692+00	3	6269	41
37	\N	\N	\N	f	2021-11-26 15:15:49.887513+00	2021-11-26 15:15:49.88752+00	3	6270	42
38	\N	\N	\N	f	2021-11-26 15:15:49.892432+00	2021-11-26 15:15:49.892441+00	3	6271	42
39	\N	\N	\N	f	2021-11-26 15:15:49.896946+00	2021-11-26 15:15:49.896953+00	3	6272	42
40	\N	\N	\N	f	2021-11-26 15:15:49.901563+00	2021-11-26 15:15:49.901569+00	3	6273	42
41	\N	\N	\N	f	2021-11-26 15:15:49.912793+00	2021-11-26 15:15:49.912814+00	3	6274	42
42	\N	\N	\N	f	2021-11-26 15:15:49.927759+00	2021-11-26 15:15:49.927788+00	3	6275	43
43	\N	\N	\N	f	2021-11-26 15:15:49.939038+00	2021-11-26 15:15:49.939047+00	3	6276	44
44	\N	\N	\N	f	2021-11-26 15:15:49.945004+00	2021-11-26 15:15:49.945016+00	3	6277	44
46	\N	\N	\N	f	2021-11-26 15:22:48.573122+00	2021-11-26 15:22:48.573132+00	3	6278	46
47	\N	\N	\N	f	2021-11-26 15:22:48.57816+00	2021-11-26 15:22:48.578167+00	3	6279	46
48	\N	\N	\N	f	2021-11-26 15:22:48.586194+00	2021-11-26 15:22:48.586202+00	3	6280	47
49	\N	\N	\N	f	2021-11-26 15:22:48.590716+00	2021-11-26 15:22:48.590724+00	3	6281	47
50	\N	\N	\N	f	2021-11-26 15:22:48.595235+00	2021-11-26 15:22:48.595242+00	3	6282	47
51	\N	\N	\N	f	2021-11-26 15:22:48.600216+00	2021-11-26 15:22:48.600226+00	3	6283	47
52	\N	\N	\N	f	2021-11-26 15:22:48.608706+00	2021-11-26 15:22:48.608714+00	3	6284	48
53	\N	\N	\N	f	2021-11-26 15:22:48.613216+00	2021-11-26 15:22:48.613224+00	3	6285	48
54	\N	\N	\N	f	2021-11-26 15:22:48.617814+00	2021-11-26 15:22:48.617823+00	3	6286	48
55	\N	\N	\N	f	2021-11-26 15:22:48.622511+00	2021-11-26 15:22:48.62252+00	3	6287	48
56	\N	\N	\N	f	2021-11-26 15:22:48.62716+00	2021-11-26 15:22:48.627169+00	3	6288	48
57	\N	\N	\N	f	2021-11-26 15:22:48.63505+00	2021-11-26 15:22:48.635062+00	3	6289	49
58	\N	\N	\N	f	2021-11-26 15:22:48.64302+00	2021-11-26 15:22:48.643027+00	3	6290	50
59	\N	\N	\N	f	2021-11-26 15:22:48.647489+00	2021-11-26 15:22:48.647497+00	3	6291	50
60	\N	\N	\N	f	2021-11-26 15:22:52.713125+00	2021-11-26 15:22:52.713135+00	3	6292	51
61	\N	\N	\N	f	2021-11-26 15:22:52.722+00	2021-11-26 15:22:52.722011+00	3	6293	51
62	\N	\N	\N	f	2021-11-26 15:22:52.731116+00	2021-11-26 15:22:52.731125+00	3	6294	52
63	\N	\N	\N	f	2021-11-26 15:22:52.736569+00	2021-11-26 15:22:52.736579+00	3	6295	52
64	\N	\N	\N	f	2021-11-26 15:22:52.741904+00	2021-11-26 15:22:52.741911+00	3	6296	52
65	\N	\N	\N	f	2021-11-26 15:22:52.74744+00	2021-11-26 15:22:52.747486+00	3	6297	52
66	\N	\N	\N	f	2021-11-26 15:22:52.756653+00	2021-11-26 15:22:52.756663+00	3	6298	53
67	\N	\N	\N	f	2021-11-26 15:22:52.761722+00	2021-11-26 15:22:52.761731+00	3	6299	53
68	\N	\N	\N	f	2021-11-26 15:22:52.766403+00	2021-11-26 15:22:52.766411+00	3	6300	53
69	\N	\N	\N	f	2021-11-26 15:22:52.770856+00	2021-11-26 15:22:52.770864+00	3	6301	53
70	\N	\N	\N	f	2021-11-26 15:22:52.775446+00	2021-11-26 15:22:52.775453+00	3	6302	53
71	\N	\N	\N	f	2021-11-26 15:22:52.783089+00	2021-11-26 15:22:52.783099+00	3	6303	54
72	\N	\N	\N	f	2021-11-26 15:22:52.792205+00	2021-11-26 15:22:52.792215+00	3	6304	55
73	\N	\N	\N	f	2021-11-26 15:22:52.796704+00	2021-11-26 15:22:52.796713+00	3	6305	55
74	\N	\N	\N	f	2021-11-26 15:22:56.433086+00	2021-11-26 15:22:56.433101+00	3	6306	56
75	\N	\N	\N	f	2021-11-26 15:22:56.440628+00	2021-11-26 15:22:56.440641+00	3	6307	56
76	\N	\N	\N	f	2021-11-26 15:22:56.454457+00	2021-11-26 15:22:56.45447+00	3	6308	57
77	\N	\N	\N	f	2021-11-26 15:22:56.464708+00	2021-11-26 15:22:56.464727+00	3	6309	57
78	\N	\N	\N	f	2021-11-26 15:22:56.472911+00	2021-11-26 15:22:56.472924+00	3	6310	57
79	\N	\N	\N	f	2021-11-26 15:22:56.478958+00	2021-11-26 15:22:56.478967+00	3	6311	57
80	\N	\N	\N	f	2021-11-26 15:22:56.48808+00	2021-11-26 15:22:56.488091+00	3	6312	58
81	\N	\N	\N	f	2021-11-26 15:22:56.492812+00	2021-11-26 15:22:56.49282+00	3	6313	58
82	\N	\N	\N	f	2021-11-26 15:22:56.497187+00	2021-11-26 15:22:56.497195+00	3	6363	58
83	\N	\N	\N	f	2021-11-26 15:22:56.501909+00	2021-11-26 15:22:56.501918+00	3	6362	58
84	\N	\N	\N	f	2021-11-26 15:22:56.506328+00	2021-11-26 15:22:56.506335+00	3	6361	58
85	\N	\N	\N	f	2021-11-26 15:22:56.514139+00	2021-11-26 15:22:56.514146+00	3	6360	59
86	\N	\N	\N	f	2021-11-26 15:22:56.522893+00	2021-11-26 15:22:56.522901+00	3	6359	60
87	\N	\N	\N	f	2021-11-26 15:22:56.527634+00	2021-11-26 15:22:56.527641+00	3	6358	60
88	\N	\N	\N	f	2021-11-26 15:23:02.984818+00	2021-11-26 15:23:02.984831+00	3	6357	61
89	\N	\N	\N	f	2021-11-26 15:23:02.990995+00	2021-11-26 15:23:02.991007+00	3	6356	61
90	\N	\N	\N	f	2021-11-26 15:23:02.999569+00	2021-11-26 15:23:02.999579+00	3	6355	62
91	\N	\N	\N	f	2021-11-26 15:23:03.004348+00	2021-11-26 15:23:03.004355+00	3	6354	62
92	\N	\N	\N	f	2021-11-26 15:23:03.008816+00	2021-11-26 15:23:03.008822+00	3	6353	62
93	\N	\N	\N	f	2021-11-26 15:23:03.013328+00	2021-11-26 15:23:03.013336+00	3	6352	62
94	\N	\N	\N	f	2021-11-26 15:23:03.021991+00	2021-11-26 15:23:03.022+00	3	6351	63
95	\N	\N	\N	f	2021-11-26 15:23:03.026502+00	2021-11-26 15:23:03.026508+00	3	6350	63
96	\N	\N	\N	f	2021-11-26 15:23:03.031274+00	2021-11-26 15:23:03.031283+00	3	6349	63
97	\N	\N	\N	f	2021-11-26 15:23:03.036141+00	2021-11-26 15:23:03.036149+00	3	6348	63
98	\N	\N	\N	f	2021-11-26 15:23:03.040623+00	2021-11-26 15:23:03.040629+00	3	6347	63
99	\N	\N	\N	f	2021-11-26 15:23:03.049235+00	2021-11-26 15:23:03.049246+00	3	6346	64
100	\N	\N	\N	f	2021-11-26 15:23:03.057804+00	2021-11-26 15:23:03.057811+00	3	6345	65
101	\N	\N	\N	f	2021-11-26 15:23:03.062135+00	2021-11-26 15:23:03.062142+00	3	6344	65
102	\N	\N	\N	f	2021-11-26 15:23:07.278237+00	2021-11-26 15:23:07.278245+00	3	6343	66
103	\N	\N	\N	f	2021-11-26 15:23:07.283814+00	2021-11-26 15:23:07.283823+00	3	6342	66
104	\N	\N	\N	f	2021-11-26 15:23:07.291924+00	2021-11-26 15:23:07.291933+00	3	6341	67
105	\N	\N	\N	f	2021-11-26 15:23:07.296519+00	2021-11-26 15:23:07.296528+00	3	6340	67
106	\N	\N	\N	f	2021-11-26 15:23:07.30127+00	2021-11-26 15:23:07.30128+00	3	6339	67
107	\N	\N	\N	f	2021-11-26 15:23:07.308786+00	2021-11-26 15:23:07.308793+00	3	6338	67
108	\N	\N	\N	f	2021-11-26 15:23:07.319911+00	2021-11-26 15:23:07.31992+00	3	6337	68
109	\N	\N	\N	f	2021-11-26 15:23:07.326995+00	2021-11-26 15:23:07.327002+00	3	6336	68
110	\N	\N	\N	f	2021-11-26 15:23:07.333646+00	2021-11-26 15:23:07.333656+00	3	6335	68
111	\N	\N	\N	f	2021-11-26 15:23:07.340106+00	2021-11-26 15:23:07.340114+00	3	6334	68
112	\N	\N	\N	f	2021-11-26 15:23:07.344876+00	2021-11-26 15:23:07.344886+00	3	6333	68
113	\N	\N	\N	f	2021-11-26 15:23:07.353444+00	2021-11-26 15:23:07.353454+00	3	6332	69
114	\N	\N	\N	f	2021-11-26 15:23:07.361136+00	2021-11-26 15:23:07.361143+00	3	6331	70
115	\N	\N	\N	f	2021-11-26 15:23:07.365721+00	2021-11-26 15:23:07.36573+00	3	6330	70
116	\N	\N	\N	f	2021-11-26 15:23:13.315055+00	2021-11-26 15:23:13.315064+00	3	6329	71
117	\N	\N	\N	f	2021-11-26 15:23:13.322573+00	2021-11-26 15:23:13.322581+00	3	6328	71
118	\N	\N	\N	f	2021-11-26 15:23:13.331723+00	2021-11-26 15:23:13.331734+00	3	6327	72
119	\N	\N	\N	f	2021-11-26 15:23:13.337006+00	2021-11-26 15:23:13.337015+00	3	6326	72
120	\N	\N	\N	f	2021-11-26 15:23:13.34207+00	2021-11-26 15:23:13.342077+00	3	6325	72
121	\N	\N	\N	f	2021-11-26 15:23:13.346916+00	2021-11-26 15:23:13.346924+00	3	6324	72
122	\N	\N	\N	f	2021-11-26 15:23:13.354648+00	2021-11-26 15:23:13.354654+00	3	6323	73
123	\N	\N	\N	f	2021-11-26 15:23:13.359458+00	2021-11-26 15:23:13.359465+00	3	6322	73
124	\N	\N	\N	f	2021-11-26 15:23:13.364562+00	2021-11-26 15:23:13.364575+00	3	6321	73
125	\N	\N	\N	f	2021-11-26 15:23:13.369512+00	2021-11-26 15:23:13.369522+00	3	6320	73
126	\N	\N	\N	f	2021-11-26 15:23:13.373945+00	2021-11-26 15:23:13.373952+00	3	6319	73
127	\N	\N	\N	f	2021-11-26 15:23:13.382468+00	2021-11-26 15:23:13.382478+00	3	6318	74
128	\N	\N	\N	f	2021-11-26 15:23:13.391478+00	2021-11-26 15:23:13.391487+00	3	6317	75
129	\N	\N	\N	f	2021-11-26 15:23:13.396595+00	2021-11-26 15:23:13.396604+00	3	6316	75
130	\N	\N	\N	f	2021-11-26 15:23:17.042604+00	2021-11-26 15:23:17.042614+00	3	6315	76
131	\N	\N	\N	f	2021-11-26 15:23:17.055898+00	2021-11-26 15:23:17.055908+00	3	6314	76
132	\N	\N	\N	f	2021-11-26 15:23:17.07454+00	2021-11-26 15:23:17.074567+00	3	6364	77
133	\N	\N	\N	f	2021-11-26 15:23:17.088621+00	2021-11-26 15:23:17.088648+00	3	6365	77
134	\N	\N	\N	f	2021-11-26 15:23:17.102174+00	2021-11-26 15:23:17.102205+00	3	6366	77
135	\N	\N	\N	f	2021-11-26 15:23:17.117099+00	2021-11-26 15:23:17.117127+00	3	6367	77
136	\N	\N	\N	f	2021-11-26 15:23:17.137228+00	2021-11-26 15:23:17.137255+00	3	6368	78
137	\N	\N	\N	f	2021-11-26 15:23:17.149639+00	2021-11-26 15:23:17.149668+00	3	6369	78
138	\N	\N	\N	f	2021-11-26 15:23:17.162602+00	2021-11-26 15:23:17.162637+00	3	6370	78
139	\N	\N	\N	f	2021-11-26 15:23:17.176428+00	2021-11-26 15:23:17.17646+00	3	6371	78
140	\N	\N	\N	f	2021-11-26 15:23:17.189475+00	2021-11-26 15:23:17.189502+00	3	6372	78
141	\N	\N	\N	f	2021-11-26 15:23:17.207769+00	2021-11-26 15:23:17.207788+00	3	6373	79
142	\N	\N	\N	f	2021-11-26 15:23:17.217905+00	2021-11-26 15:23:17.217914+00	3	6374	80
143	\N	\N	\N	f	2021-11-26 15:23:17.223161+00	2021-11-26 15:23:17.22317+00	3	6375	80
144	\N	\N	\N	f	2021-11-26 15:30:09.357825+00	2021-11-26 15:30:09.357836+00	3	6377	1
145	\N	\N	\N	f	2021-11-26 15:30:09.36937+00	2021-11-26 15:30:09.36938+00	3	6384	1
146	\N	\N	\N	f	2021-11-26 15:30:09.37521+00	2021-11-26 15:30:09.37522+00	3	6382	1
147	\N	\N	\N	f	2021-11-26 15:30:09.380543+00	2021-11-26 15:30:09.380551+00	3	6387	1
148	\N	\N	\N	f	2021-11-26 15:30:13.904657+00	2021-11-26 15:30:13.904666+00	3	6376	81
149	\N	\N	\N	f	2021-11-26 15:30:13.91026+00	2021-11-26 15:30:13.910269+00	3	6378	81
150	\N	\N	\N	f	2021-11-26 15:30:13.918651+00	2021-11-26 15:30:13.918658+00	3	6379	82
151	\N	\N	\N	f	2021-11-26 15:30:13.924216+00	2021-11-26 15:30:13.924226+00	3	6380	82
152	\N	\N	\N	f	2021-11-26 15:30:13.929677+00	2021-11-26 15:30:13.929687+00	3	6381	82
153	\N	\N	\N	f	2021-11-26 15:30:13.934923+00	2021-11-26 15:30:13.934931+00	3	6383	82
154	\N	\N	\N	f	2021-11-26 15:30:13.94324+00	2021-11-26 15:30:13.943248+00	3	6385	83
155	\N	\N	\N	f	2021-11-26 15:30:13.948066+00	2021-11-26 15:30:13.948073+00	3	6386	83
156	\N	\N	\N	f	2021-11-26 15:30:13.953591+00	2021-11-26 15:30:13.953601+00	3	6388	83
157	\N	\N	\N	f	2021-11-26 15:30:13.958992+00	2021-11-26 15:30:13.959001+00	3	6389	83
158	\N	\N	\N	f	2021-11-26 15:30:13.964073+00	2021-11-26 15:30:13.964081+00	3	6390	83
159	\N	\N	\N	f	2021-11-26 15:30:13.97236+00	2021-11-26 15:30:13.972367+00	3	6391	84
160	\N	\N	\N	f	2021-11-26 15:30:13.98021+00	2021-11-26 15:30:13.980217+00	3	6392	85
161	\N	\N	\N	f	2021-11-26 15:30:13.990853+00	2021-11-26 15:30:13.99088+00	3	6393	85
162	\N	\N	\N	f	2021-11-26 15:30:51.382929+00	2021-11-26 15:30:51.382937+00	3	6404	1
163	\N	\N	\N	f	2021-11-26 15:30:51.397697+00	2021-11-26 15:30:51.397707+00	3	6405	1
164	\N	\N	\N	f	2021-11-26 15:30:51.403838+00	2021-11-26 15:30:51.403849+00	3	6406	1
165	\N	\N	\N	f	2021-11-26 15:30:51.409479+00	2021-11-26 15:30:51.409488+00	3	6407	1
166	\N	\N	\N	f	2021-11-26 15:30:51.414719+00	2021-11-26 15:30:51.414727+00	3	6408	1
167	\N	\N	\N	f	2021-11-26 15:30:51.419861+00	2021-11-26 15:30:51.419868+00	3	6409	1
168	\N	\N	\N	f	2021-11-26 15:30:51.424899+00	2021-11-26 15:30:51.424906+00	3	6410	1
169	\N	\N	\N	f	2021-11-26 15:30:51.4298+00	2021-11-26 15:30:51.429807+00	3	6411	1
170	\N	\N	\N	f	2021-11-26 15:30:51.440207+00	2021-11-26 15:30:51.440217+00	3	6412	1
171	\N	\N	\N	f	2021-11-26 15:30:51.445653+00	2021-11-26 15:30:51.445662+00	3	6413	1
172	\N	\N	\N	f	2021-11-26 15:30:56.92105+00	2021-11-26 15:30:56.921077+00	3	6394	86
173	\N	\N	\N	f	2021-11-26 15:30:56.935173+00	2021-11-26 15:30:56.935201+00	3	6395	86
174	\N	\N	\N	f	2021-11-26 15:30:56.95584+00	2021-11-26 15:30:56.955869+00	3	6396	87
175	\N	\N	\N	f	2021-11-26 15:30:56.969811+00	2021-11-26 15:30:56.969841+00	3	6397	87
176	\N	\N	\N	f	2021-11-26 15:30:56.981046+00	2021-11-26 15:30:56.981066+00	3	6398	87
177	\N	\N	\N	f	2021-11-26 15:30:56.99047+00	2021-11-26 15:30:56.990489+00	3	6399	87
178	\N	\N	\N	f	2021-11-26 15:30:57.00593+00	2021-11-26 15:30:57.00595+00	3	6400	88
179	\N	\N	\N	f	2021-11-26 15:30:57.015733+00	2021-11-26 15:30:57.015753+00	3	6401	88
180	\N	\N	\N	f	2021-11-26 15:30:57.022262+00	2021-11-26 15:30:57.022272+00	3	6402	88
181	\N	\N	\N	f	2021-11-26 15:30:57.027381+00	2021-11-26 15:30:57.027388+00	3	6403	88
182	\N	\N	\N	f	2021-11-26 15:30:57.032378+00	2021-11-26 15:30:57.032386+00	3	6463	88
183	\N	\N	\N	f	2021-11-26 15:30:57.041003+00	2021-11-26 15:30:57.041013+00	3	6462	89
184	\N	\N	\N	f	2021-11-26 15:30:57.051473+00	2021-11-26 15:30:57.051481+00	3	6461	90
185	\N	\N	\N	f	2021-11-26 15:30:57.05626+00	2021-11-26 15:30:57.056269+00	3	6460	90
186	\N	\N	\N	f	2021-11-26 15:39:38.568186+00	2021-11-26 15:39:38.568195+00	3	6459	91
187	\N	\N	\N	f	2021-11-26 15:39:38.574537+00	2021-11-26 15:39:38.574547+00	3	6458	91
188	\N	\N	\N	f	2021-11-26 15:39:38.584065+00	2021-11-26 15:39:38.584073+00	3	6457	92
189	\N	\N	\N	f	2021-11-26 15:39:38.589497+00	2021-11-26 15:39:38.589506+00	3	6456	92
190	\N	\N	\N	f	2021-11-26 15:39:38.594562+00	2021-11-26 15:39:38.59457+00	3	6455	92
191	\N	\N	\N	f	2021-11-26 15:39:38.599865+00	2021-11-26 15:39:38.599872+00	3	6454	92
192	\N	\N	\N	f	2021-11-26 15:39:38.608658+00	2021-11-26 15:39:38.608667+00	3	6453	93
193	\N	\N	\N	f	2021-11-26 15:39:38.613677+00	2021-11-26 15:39:38.613685+00	3	6452	93
194	\N	\N	\N	f	2021-11-26 15:39:38.61871+00	2021-11-26 15:39:38.618717+00	3	6451	93
195	\N	\N	\N	f	2021-11-26 15:39:38.62355+00	2021-11-26 15:39:38.623559+00	3	6450	93
196	\N	\N	\N	f	2021-11-26 15:39:38.63064+00	2021-11-26 15:39:38.630647+00	3	6449	93
197	\N	\N	\N	f	2021-11-26 15:39:38.63943+00	2021-11-26 15:39:38.639439+00	3	6448	94
198	\N	\N	\N	f	2021-11-26 15:39:38.647433+00	2021-11-26 15:39:38.64744+00	3	6447	95
199	\N	\N	\N	f	2021-11-26 15:39:38.651996+00	2021-11-26 15:39:38.652003+00	3	6446	95
200	\N	\N	\N	f	2021-11-26 15:39:38.656797+00	2021-11-26 15:39:38.656806+00	3	6445	95
201	\N	\N	\N	f	2021-11-26 15:39:38.670313+00	2021-11-26 15:39:38.670325+00	3	6444	95
202	\N	\N	\N	f	2021-11-26 15:39:38.676737+00	2021-11-26 15:39:38.676747+00	3	6443	95
203	\N	\N	\N	f	2021-11-26 15:39:38.681796+00	2021-11-26 15:39:38.681805+00	3	6442	95
204	\N	\N	\N	f	2021-11-26 15:39:38.686975+00	2021-11-26 15:39:38.686983+00	3	6441	95
205	\N	\N	\N	f	2021-11-26 15:39:38.692049+00	2021-11-26 15:39:38.692058+00	3	6440	95
206	\N	\N	\N	f	2021-11-26 15:39:38.697186+00	2021-11-26 15:39:38.697199+00	3	6439	95
207	\N	\N	\N	f	2021-11-26 15:39:38.702324+00	2021-11-26 15:39:38.702333+00	3	6438	95
208	\N	\N	\N	f	2021-11-26 15:39:38.707597+00	2021-11-26 15:39:38.707609+00	3	6437	95
209	\N	\N	\N	f	2021-11-26 15:39:38.712307+00	2021-11-26 15:39:38.712317+00	3	6436	95
210	\N	\N	\N	f	2021-11-26 15:39:38.717059+00	2021-11-26 15:39:38.717066+00	3	6435	95
211	\N	\N	\N	f	2021-11-26 15:39:38.721549+00	2021-11-26 15:39:38.721556+00	3	6434	95
212	\N	\N	\N	f	2021-11-26 15:39:38.726267+00	2021-11-26 15:39:38.726273+00	3	6433	95
213	\N	\N	\N	f	2021-11-26 15:39:38.731061+00	2021-11-26 15:39:38.731068+00	3	6432	95
214	\N	\N	\N	f	2021-11-26 15:39:38.739387+00	2021-11-26 15:39:38.739402+00	3	6431	95
215	\N	\N	\N	f	2021-11-26 15:39:38.744267+00	2021-11-26 15:39:38.744276+00	3	6430	95
216	\N	\N	\N	f	2021-11-26 15:39:38.748748+00	2021-11-26 15:39:38.748754+00	3	6429	95
217	\N	\N	\N	f	2021-11-26 15:39:38.753165+00	2021-11-26 15:39:38.753172+00	3	6428	95
218	\N	\N	\N	f	2021-11-26 15:39:46.9338+00	2021-11-26 15:39:46.93381+00	3	6427	96
219	\N	\N	\N	f	2021-11-26 15:39:46.942056+00	2021-11-26 15:39:46.942066+00	3	6426	96
220	\N	\N	\N	f	2021-11-26 15:39:46.951156+00	2021-11-26 15:39:46.951164+00	3	6425	97
221	\N	\N	\N	f	2021-11-26 15:39:46.962355+00	2021-11-26 15:39:46.962383+00	3	6424	97
222	\N	\N	\N	f	2021-11-26 15:39:46.975776+00	2021-11-26 15:39:46.975805+00	3	6423	97
223	\N	\N	\N	f	2021-11-26 15:39:46.990108+00	2021-11-26 15:39:46.990139+00	3	6422	97
224	\N	\N	\N	f	2021-11-26 15:39:47.011097+00	2021-11-26 15:39:47.011125+00	3	6421	98
225	\N	\N	\N	f	2021-11-26 15:39:47.024511+00	2021-11-26 15:39:47.024539+00	3	6420	98
226	\N	\N	\N	f	2021-11-26 15:39:47.038176+00	2021-11-26 15:39:47.038208+00	3	6419	98
227	\N	\N	\N	f	2021-11-26 15:39:47.051818+00	2021-11-26 15:39:47.051847+00	3	6418	98
228	\N	\N	\N	f	2021-11-26 15:39:47.065813+00	2021-11-26 15:39:47.065844+00	3	6417	98
229	\N	\N	\N	f	2021-11-26 15:39:47.084755+00	2021-11-26 15:39:47.084782+00	3	6416	99
230	\N	\N	\N	f	2021-11-26 15:39:47.104037+00	2021-11-26 15:39:47.104068+00	3	6415	100
231	\N	\N	\N	f	2021-11-26 15:39:47.11708+00	2021-11-26 15:39:47.117108+00	3	6414	100
232	\N	\N	\N	f	2021-11-26 15:39:47.132472+00	2021-11-26 15:39:47.132503+00	3	6464	100
233	\N	\N	\N	f	2021-11-26 15:39:47.146053+00	2021-11-26 15:39:47.146081+00	3	6465	100
234	\N	\N	\N	f	2021-11-26 15:39:47.15966+00	2021-11-26 15:39:47.15969+00	3	6466	100
235	\N	\N	\N	f	2021-11-26 15:39:47.173429+00	2021-11-26 15:39:47.17346+00	3	6467	100
236	\N	\N	\N	f	2021-11-26 15:39:47.187001+00	2021-11-26 15:39:47.187031+00	3	6468	100
237	\N	\N	\N	f	2021-11-26 15:39:47.203175+00	2021-11-26 15:39:47.203206+00	3	6469	100
238	\N	\N	\N	f	2021-11-26 15:39:47.217962+00	2021-11-26 15:39:47.217993+00	3	6470	100
239	\N	\N	\N	f	2021-11-26 15:39:47.231928+00	2021-11-26 15:39:47.231957+00	3	6471	100
240	\N	\N	\N	f	2021-11-26 15:39:47.239609+00	2021-11-26 15:39:47.239622+00	3	6472	100
241	\N	\N	\N	f	2021-11-26 15:39:47.249728+00	2021-11-26 15:39:47.249745+00	3	6473	100
242	\N	\N	\N	f	2021-11-26 15:39:47.262843+00	2021-11-26 15:39:47.262859+00	3	6474	100
243	\N	\N	\N	f	2021-11-26 15:39:47.274136+00	2021-11-26 15:39:47.274149+00	3	6475	100
244	\N	\N	\N	f	2021-11-26 15:39:47.281698+00	2021-11-26 15:39:47.281711+00	3	6476	100
245	\N	\N	\N	f	2021-11-26 15:39:47.287124+00	2021-11-26 15:39:47.287134+00	3	6477	100
246	\N	\N	\N	f	2021-11-26 15:39:47.292499+00	2021-11-26 15:39:47.292509+00	3	6478	100
247	\N	\N	\N	f	2021-11-26 15:39:47.297509+00	2021-11-26 15:39:47.297518+00	3	6479	100
248	\N	\N	\N	f	2021-11-26 15:39:47.302416+00	2021-11-26 15:39:47.302423+00	3	6480	100
249	\N	\N	\N	f	2021-11-26 15:39:47.307264+00	2021-11-26 15:39:47.307276+00	3	6481	100
250	\N	\N	\N	f	2021-11-26 15:40:10.107179+00	2021-11-26 15:40:10.107187+00	3	6482	101
251	\N	\N	\N	f	2021-11-26 15:40:10.11323+00	2021-11-26 15:40:10.113238+00	3	6483	101
252	\N	\N	\N	f	2021-11-26 15:40:10.122002+00	2021-11-26 15:40:10.122011+00	3	6484	102
253	\N	\N	\N	f	2021-11-26 15:40:10.127051+00	2021-11-26 15:40:10.127059+00	3	6485	102
254	\N	\N	\N	f	2021-11-26 15:40:10.131865+00	2021-11-26 15:40:10.131873+00	3	6486	102
255	\N	\N	\N	f	2021-11-26 15:40:10.13702+00	2021-11-26 15:40:10.137031+00	3	6487	102
256	\N	\N	\N	f	2021-11-26 15:40:10.145763+00	2021-11-26 15:40:10.145772+00	3	6488	103
257	\N	\N	\N	f	2021-11-26 15:40:10.150331+00	2021-11-26 15:40:10.150339+00	3	6489	103
258	\N	\N	\N	f	2021-11-26 15:40:10.155318+00	2021-11-26 15:40:10.155328+00	3	6490	103
259	\N	\N	\N	f	2021-11-26 15:40:10.160133+00	2021-11-26 15:40:10.16014+00	3	6491	103
260	\N	\N	\N	f	2021-11-26 15:40:10.164877+00	2021-11-26 15:40:10.164883+00	3	6492	103
261	\N	\N	\N	f	2021-11-26 15:40:10.173444+00	2021-11-26 15:40:10.173452+00	3	6493	104
262	\N	\N	\N	f	2021-11-26 15:40:10.181975+00	2021-11-26 15:40:10.181984+00	3	6494	105
263	\N	\N	\N	f	2021-11-26 15:40:10.186942+00	2021-11-26 15:40:10.186948+00	3	6495	105
264	\N	\N	\N	f	2021-11-26 15:40:10.191884+00	2021-11-26 15:40:10.191893+00	3	6496	105
265	\N	\N	\N	f	2021-11-26 15:40:10.196565+00	2021-11-26 15:40:10.196571+00	3	6497	105
266	\N	\N	\N	f	2021-11-26 15:40:10.201268+00	2021-11-26 15:40:10.201274+00	3	6498	105
267	\N	\N	\N	f	2021-11-26 15:40:10.20729+00	2021-11-26 15:40:10.207303+00	3	6499	105
268	\N	\N	\N	f	2021-11-26 15:40:10.212424+00	2021-11-26 15:40:10.212435+00	3	6500	105
269	\N	\N	\N	f	2021-11-26 15:40:10.217024+00	2021-11-26 15:40:10.217031+00	3	6501	105
270	\N	\N	\N	f	2021-11-26 15:40:10.221597+00	2021-11-26 15:40:10.221606+00	3	6502	105
271	\N	\N	\N	f	2021-11-26 15:40:10.226257+00	2021-11-26 15:40:10.226264+00	3	6503	105
272	\N	\N	\N	f	2021-11-26 15:40:10.230701+00	2021-11-26 15:40:10.230707+00	3	6504	105
273	\N	\N	\N	f	2021-11-26 15:40:10.235413+00	2021-11-26 15:40:10.235422+00	3	6505	105
274	\N	\N	\N	f	2021-11-26 15:40:10.241058+00	2021-11-26 15:40:10.241071+00	3	6506	105
275	\N	\N	\N	f	2021-11-26 15:40:10.246376+00	2021-11-26 15:40:10.246385+00	3	6507	105
276	\N	\N	\N	f	2021-11-26 15:40:10.25103+00	2021-11-26 15:40:10.251036+00	3	6508	105
277	\N	\N	\N	f	2021-11-26 15:40:10.256013+00	2021-11-26 15:40:10.256021+00	3	6509	105
278	\N	\N	\N	f	2021-11-26 15:40:10.260998+00	2021-11-26 15:40:10.261004+00	3	6510	105
279	\N	\N	\N	f	2021-11-26 15:40:10.265995+00	2021-11-26 15:40:10.266002+00	3	6511	105
280	\N	\N	\N	f	2021-11-26 15:40:10.27124+00	2021-11-26 15:40:10.27125+00	3	6512	105
281	\N	\N	\N	f	2021-11-26 15:40:10.276598+00	2021-11-26 15:40:10.276608+00	3	6513	105
282	\N	\N	\N	f	2021-11-26 15:40:10.281176+00	2021-11-26 15:40:10.281184+00	3	6563	105
283	\N	\N	\N	f	2021-11-26 15:40:10.285572+00	2021-11-26 15:40:10.285578+00	3	6562	105
284	\N	\N	\N	f	2021-11-26 15:40:10.290227+00	2021-11-26 15:40:10.290236+00	3	6561	105
285	\N	\N	\N	f	2021-11-26 15:40:10.29474+00	2021-11-26 15:40:10.294746+00	3	6560	105
286	\N	\N	\N	f	2021-11-26 15:40:10.299646+00	2021-11-26 15:40:10.299655+00	3	6559	105
287	\N	\N	\N	f	2021-11-26 15:40:10.304668+00	2021-11-26 15:40:10.304677+00	3	6558	105
288	\N	\N	\N	f	2021-11-26 15:40:10.310082+00	2021-11-26 15:40:10.310091+00	3	6557	105
289	\N	\N	\N	f	2021-11-26 15:40:10.315341+00	2021-11-26 15:40:10.315349+00	3	6556	105
290	\N	\N	\N	f	2021-11-26 15:40:10.320135+00	2021-11-26 15:40:10.320142+00	3	6555	105
291	\N	\N	\N	f	2021-11-26 15:40:10.324841+00	2021-11-26 15:40:10.324847+00	3	6554	105
292	\N	\N	\N	f	2021-11-26 15:40:10.329441+00	2021-11-26 15:40:10.329447+00	3	6553	105
293	\N	\N	\N	f	2021-11-26 15:40:10.33412+00	2021-11-26 15:40:10.334127+00	3	6552	105
294	\N	\N	\N	f	2021-11-26 15:40:10.33957+00	2021-11-26 15:40:10.33958+00	3	6551	105
295	\N	\N	\N	f	2021-11-26 15:40:10.344439+00	2021-11-26 15:40:10.344446+00	3	6550	105
296	\N	\N	\N	f	2021-11-26 15:40:10.348773+00	2021-11-26 15:40:10.348779+00	3	6549	105
297	\N	\N	\N	f	2021-11-26 15:40:10.353103+00	2021-11-26 15:40:10.35311+00	3	6548	105
298	\N	\N	\N	f	2021-11-26 15:40:10.357724+00	2021-11-26 15:40:10.357733+00	3	6547	105
299	\N	\N	\N	f	2021-11-26 15:40:10.362889+00	2021-11-26 15:40:10.362899+00	3	6546	105
300	\N	\N	\N	f	2021-11-26 15:40:10.367883+00	2021-11-26 15:40:10.36789+00	3	6545	105
301	\N	\N	\N	f	2021-11-26 15:40:10.372635+00	2021-11-26 15:40:10.372644+00	3	6544	105
302	\N	\N	\N	f	2021-11-26 15:40:10.377178+00	2021-11-26 15:40:10.377185+00	3	6543	105
303	\N	\N	\N	f	2021-11-26 15:40:10.381417+00	2021-11-26 15:40:10.381424+00	3	6542	105
304	\N	\N	\N	f	2021-11-26 15:40:10.385823+00	2021-11-26 15:40:10.385831+00	3	6541	105
305	\N	\N	\N	f	2021-11-26 15:40:10.390497+00	2021-11-26 15:40:10.390506+00	3	6540	105
306	\N	\N	\N	f	2021-11-26 15:40:10.39567+00	2021-11-26 15:40:10.395679+00	3	6539	105
307	\N	\N	\N	f	2021-11-26 15:40:10.400476+00	2021-11-26 15:40:10.400482+00	3	6538	105
308	\N	\N	\N	f	2021-11-26 15:40:10.405707+00	2021-11-26 15:40:10.405717+00	3	6537	105
309	\N	\N	\N	f	2021-11-26 15:40:10.410471+00	2021-11-26 15:40:10.410479+00	3	6536	105
310	\N	\N	\N	f	2021-11-26 15:40:10.414992+00	2021-11-26 15:40:10.414998+00	3	6535	105
311	\N	\N	\N	f	2021-11-26 15:40:10.419435+00	2021-11-26 15:40:10.419441+00	3	6534	105
312	\N	\N	\N	f	2021-11-26 15:40:10.424741+00	2021-11-26 15:40:10.42475+00	3	6533	105
313	\N	\N	\N	f	2021-11-26 15:40:10.429498+00	2021-11-26 15:40:10.429506+00	3	6532	105
314	\N	\N	\N	f	2021-11-26 15:40:10.434104+00	2021-11-26 15:40:10.434112+00	3	6531	105
315	\N	\N	\N	f	2021-11-26 15:40:10.439095+00	2021-11-26 15:40:10.439104+00	3	6530	105
316	\N	\N	\N	f	2021-11-26 15:40:10.443981+00	2021-11-26 15:40:10.443988+00	3	6529	105
317	\N	\N	\N	f	2021-11-26 15:40:10.448525+00	2021-11-26 15:40:10.448531+00	3	6528	105
318	\N	\N	\N	f	2021-11-26 15:40:10.453867+00	2021-11-26 15:40:10.453878+00	3	6527	105
319	\N	\N	\N	f	2021-11-26 15:40:10.458766+00	2021-11-26 15:40:10.458775+00	3	6526	105
320	\N	\N	\N	f	2021-11-26 15:40:10.463903+00	2021-11-26 15:40:10.463913+00	3	6525	105
321	\N	\N	\N	f	2021-11-26 15:40:10.468682+00	2021-11-26 15:40:10.468691+00	3	6524	105
322	\N	\N	\N	f	2021-11-26 15:40:10.473401+00	2021-11-26 15:40:10.473408+00	3	6523	105
323	\N	\N	\N	f	2021-11-26 15:40:10.478055+00	2021-11-26 15:40:10.478062+00	3	6522	105
324	\N	\N	\N	f	2021-11-26 15:40:10.482829+00	2021-11-26 15:40:10.482836+00	3	6521	105
325	\N	\N	\N	f	2021-11-26 15:40:10.487511+00	2021-11-26 15:40:10.48752+00	3	6520	105
326	\N	\N	\N	f	2021-11-26 15:40:10.492597+00	2021-11-26 15:40:10.492606+00	3	6519	105
327	\N	\N	\N	f	2021-11-26 15:40:10.497035+00	2021-11-26 15:40:10.497042+00	3	6518	105
328	\N	\N	\N	f	2021-11-26 15:40:10.505594+00	2021-11-26 15:40:10.505603+00	3	6517	105
329	\N	\N	\N	f	2021-11-26 15:40:10.510785+00	2021-11-26 15:40:10.510795+00	3	6516	105
330	\N	\N	\N	f	2021-11-26 15:40:10.516313+00	2021-11-26 15:40:10.516321+00	3	6515	105
331	\N	\N	\N	f	2021-11-26 15:40:10.521416+00	2021-11-26 15:40:10.521425+00	3	6514	105
332	\N	\N	\N	f	2021-11-26 15:40:10.526493+00	2021-11-26 15:40:10.5265+00	3	6564	105
333	\N	\N	\N	f	2021-11-26 15:40:10.531465+00	2021-11-26 15:40:10.531472+00	3	6565	105
334	\N	\N	\N	f	2021-11-26 15:40:10.536437+00	2021-11-26 15:40:10.536444+00	3	6566	105
335	\N	\N	\N	f	2021-11-26 15:40:10.541333+00	2021-11-26 15:40:10.541342+00	3	6567	105
336	\N	\N	\N	f	2021-11-26 15:40:10.546431+00	2021-11-26 15:40:10.546439+00	3	6568	105
337	\N	\N	\N	f	2021-11-26 15:40:10.551481+00	2021-11-26 15:40:10.551487+00	3	6569	105
338	\N	\N	\N	f	2021-11-26 15:40:10.556809+00	2021-11-26 15:40:10.556819+00	3	6570	105
339	\N	\N	\N	f	2021-11-26 15:40:10.562444+00	2021-11-26 15:40:10.562452+00	3	6571	105
340	\N	\N	\N	f	2021-11-26 15:40:10.567813+00	2021-11-26 15:40:10.567819+00	3	6572	105
341	\N	\N	\N	f	2021-11-26 15:40:10.57368+00	2021-11-26 15:40:10.573689+00	3	6573	105
342	\N	\N	\N	f	2021-11-26 15:40:10.578745+00	2021-11-26 15:40:10.578754+00	3	6574	105
343	\N	\N	\N	f	2021-11-26 15:40:10.583326+00	2021-11-26 15:40:10.583334+00	3	6575	105
344	\N	\N	\N	f	2021-11-26 15:40:10.587773+00	2021-11-26 15:40:10.587782+00	3	6576	105
345	\N	\N	\N	f	2021-11-26 15:40:10.59224+00	2021-11-26 15:40:10.592246+00	3	6577	105
346	\N	\N	\N	f	2021-11-26 15:40:10.596866+00	2021-11-26 15:40:10.596872+00	3	6578	105
347	\N	\N	\N	f	2021-11-26 15:40:10.601875+00	2021-11-26 15:40:10.601884+00	3	6579	105
348	\N	\N	\N	f	2021-11-26 15:40:10.607072+00	2021-11-26 15:40:10.607082+00	3	6580	105
349	\N	\N	\N	f	2021-11-26 15:40:10.611893+00	2021-11-26 15:40:10.611902+00	3	6581	105
350	\N	\N	\N	f	2021-11-26 15:40:10.616468+00	2021-11-26 15:40:10.616475+00	3	6582	105
351	\N	\N	\N	f	2021-11-26 15:40:10.621016+00	2021-11-26 15:40:10.621025+00	3	6583	105
352	\N	\N	\N	f	2021-11-26 15:40:10.625934+00	2021-11-26 15:40:10.625941+00	3	6584	105
353	\N	\N	\N	f	2021-11-26 15:40:10.630756+00	2021-11-26 15:40:10.630763+00	3	6585	105
354	\N	\N	\N	f	2021-11-26 15:40:10.635631+00	2021-11-26 15:40:10.635637+00	3	6586	105
355	\N	\N	\N	f	2021-11-26 15:40:10.641454+00	2021-11-26 15:40:10.641464+00	3	6587	105
356	\N	\N	\N	f	2021-11-26 15:40:10.646588+00	2021-11-26 15:40:10.646595+00	3	6588	105
357	\N	\N	\N	f	2021-11-26 15:40:10.651546+00	2021-11-26 15:40:10.651552+00	3	6589	105
358	\N	\N	\N	f	2021-11-26 15:40:10.656595+00	2021-11-26 15:40:10.656603+00	3	6590	105
359	\N	\N	\N	f	2021-11-26 15:40:10.661388+00	2021-11-26 15:40:10.661395+00	3	6591	105
360	\N	\N	\N	f	2021-11-26 15:40:10.666228+00	2021-11-26 15:40:10.666237+00	3	6592	105
361	\N	\N	\N	f	2021-11-26 15:40:10.670934+00	2021-11-26 15:40:10.670942+00	3	6593	105
362	\N	\N	\N	f	2021-11-26 15:40:10.675788+00	2021-11-26 15:40:10.675796+00	3	6594	105
363	\N	\N	\N	f	2021-11-26 15:40:10.680284+00	2021-11-26 15:40:10.680291+00	3	6595	105
364	\N	\N	\N	f	2021-11-26 15:40:10.684927+00	2021-11-26 15:40:10.684933+00	3	6596	105
365	\N	\N	\N	f	2021-11-26 15:40:10.689535+00	2021-11-26 15:40:10.689543+00	3	6597	105
366	\N	\N	\N	f	2021-11-26 15:40:10.694535+00	2021-11-26 15:40:10.694543+00	3	6598	105
367	\N	\N	\N	f	2021-11-26 15:40:10.699167+00	2021-11-26 15:40:10.699175+00	3	6599	105
368	\N	\N	\N	f	2021-11-26 15:40:10.703985+00	2021-11-26 15:40:10.703992+00	3	6600	105
369	\N	\N	\N	f	2021-11-26 15:40:10.709078+00	2021-11-26 15:40:10.709087+00	3	6601	105
370	\N	\N	\N	f	2021-11-26 15:40:10.713492+00	2021-11-26 15:40:10.7135+00	3	6602	105
371	\N	\N	\N	f	2021-11-26 15:40:10.718049+00	2021-11-26 15:40:10.718057+00	3	6603	105
372	\N	\N	\N	f	2021-11-26 15:40:10.723613+00	2021-11-26 15:40:10.723627+00	3	6604	105
373	\N	\N	\N	f	2021-11-26 15:40:10.729273+00	2021-11-26 15:40:10.729283+00	3	6605	105
374	\N	\N	\N	f	2021-11-26 15:40:10.734285+00	2021-11-26 15:40:10.734292+00	3	6606	105
375	\N	\N	\N	f	2021-11-26 15:40:10.739765+00	2021-11-26 15:40:10.739774+00	3	6607	105
376	\N	\N	\N	f	2021-11-26 15:40:10.744297+00	2021-11-26 15:40:10.744304+00	3	6608	105
377	\N	\N	\N	f	2021-11-26 15:40:10.748854+00	2021-11-26 15:40:10.748861+00	3	6609	105
378	\N	\N	\N	f	2021-11-26 15:40:10.753456+00	2021-11-26 15:40:10.753464+00	3	6610	105
379	\N	\N	\N	f	2021-11-26 15:40:10.759582+00	2021-11-26 15:40:10.759591+00	3	6611	105
380	\N	\N	\N	f	2021-11-26 15:40:10.76474+00	2021-11-26 15:40:10.764748+00	3	6612	105
381	\N	\N	\N	f	2021-11-26 15:40:10.769193+00	2021-11-26 15:40:10.769202+00	3	6613	105
382	\N	\N	\N	f	2021-11-26 15:40:10.773918+00	2021-11-26 15:40:10.773927+00	3	6663	105
383	\N	\N	\N	f	2021-11-26 15:40:10.778772+00	2021-11-26 15:40:10.77878+00	3	6662	105
384	\N	\N	\N	f	2021-11-26 15:40:10.783369+00	2021-11-26 15:40:10.783375+00	3	6661	105
385	\N	\N	\N	f	2021-11-26 15:40:10.787882+00	2021-11-26 15:40:10.78789+00	3	6660	105
386	\N	\N	\N	f	2021-11-26 15:40:10.792921+00	2021-11-26 15:40:10.79293+00	3	6659	105
387	\N	\N	\N	f	2021-11-26 15:40:10.797968+00	2021-11-26 15:40:10.797975+00	3	6658	105
388	\N	\N	\N	f	2021-11-26 15:40:10.80275+00	2021-11-26 15:40:10.802757+00	3	6657	105
389	\N	\N	\N	f	2021-11-26 15:40:10.807389+00	2021-11-26 15:40:10.807397+00	3	6656	105
390	\N	\N	\N	f	2021-11-26 15:40:10.812202+00	2021-11-26 15:40:10.812212+00	3	6655	105
391	\N	\N	\N	f	2021-11-26 15:40:10.817048+00	2021-11-26 15:40:10.817058+00	3	6654	105
392	\N	\N	\N	f	2021-11-26 15:40:10.822118+00	2021-11-26 15:40:10.822127+00	3	6653	105
393	\N	\N	\N	f	2021-11-26 15:40:10.827172+00	2021-11-26 15:40:10.827181+00	3	6652	105
394	\N	\N	\N	f	2021-11-26 15:40:10.832395+00	2021-11-26 15:40:10.832402+00	3	6651	105
395	\N	\N	\N	f	2021-11-26 15:40:10.837909+00	2021-11-26 15:40:10.837916+00	3	6650	105
396	\N	\N	\N	f	2021-11-26 15:40:10.843255+00	2021-11-26 15:40:10.843262+00	3	6649	105
397	\N	\N	\N	f	2021-11-26 15:40:10.848472+00	2021-11-26 15:40:10.848479+00	3	6648	105
398	\N	\N	\N	f	2021-11-26 15:40:10.853607+00	2021-11-26 15:40:10.853613+00	3	6647	105
399	\N	\N	\N	f	2021-11-26 15:40:10.858686+00	2021-11-26 15:40:10.858694+00	3	6646	105
400	\N	\N	\N	f	2021-11-26 15:40:10.863175+00	2021-11-26 15:40:10.863182+00	3	6645	105
401	\N	\N	\N	f	2021-11-26 15:40:10.867421+00	2021-11-26 15:40:10.867427+00	3	6644	105
402	\N	\N	\N	f	2021-11-26 15:40:10.872116+00	2021-11-26 15:40:10.872124+00	3	6643	105
403	\N	\N	\N	f	2021-11-26 15:40:10.877054+00	2021-11-26 15:40:10.877064+00	3	6642	105
404	\N	\N	\N	f	2021-11-26 15:40:10.881699+00	2021-11-26 15:40:10.881707+00	3	6641	105
405	\N	\N	\N	f	2021-11-26 15:40:10.886271+00	2021-11-26 15:40:10.886278+00	3	6640	105
406	\N	\N	\N	f	2021-11-26 15:40:10.891064+00	2021-11-26 15:40:10.891073+00	3	6639	105
407	\N	\N	\N	f	2021-11-26 15:40:10.895633+00	2021-11-26 15:40:10.89564+00	3	6638	105
408	\N	\N	\N	f	2021-11-26 15:40:10.900237+00	2021-11-26 15:40:10.900244+00	3	6637	105
409	\N	\N	\N	f	2021-11-26 15:40:10.905135+00	2021-11-26 15:40:10.905143+00	3	6636	105
410	\N	\N	\N	f	2021-11-26 15:40:10.910214+00	2021-11-26 15:40:10.910226+00	3	6635	105
411	\N	\N	\N	f	2021-11-26 15:40:10.914892+00	2021-11-26 15:40:10.914898+00	3	6634	105
412	\N	\N	\N	f	2021-11-26 15:40:10.919638+00	2021-11-26 15:40:10.919645+00	3	6633	105
413	\N	\N	\N	f	2021-11-26 15:40:10.924669+00	2021-11-26 15:40:10.924678+00	3	6632	105
414	\N	\N	\N	f	2021-11-26 15:40:10.92927+00	2021-11-26 15:40:10.929277+00	3	6631	105
415	\N	\N	\N	f	2021-11-26 15:40:10.933766+00	2021-11-26 15:40:10.933772+00	3	6630	105
416	\N	\N	\N	f	2021-11-26 15:40:10.939329+00	2021-11-26 15:40:10.939339+00	3	6629	105
417	\N	\N	\N	f	2021-11-26 15:40:10.944553+00	2021-11-26 15:40:10.944562+00	3	6628	105
418	\N	\N	\N	f	2021-11-26 15:40:10.949238+00	2021-11-26 15:40:10.949245+00	3	6627	105
419	\N	\N	\N	f	2021-11-26 15:40:10.954051+00	2021-11-26 15:40:10.95406+00	3	6626	105
420	\N	\N	\N	f	2021-11-26 15:40:10.958665+00	2021-11-26 15:40:10.958672+00	3	6625	105
421	\N	\N	\N	f	2021-11-26 15:40:10.970969+00	2021-11-26 15:40:10.970981+00	3	6624	105
422	\N	\N	\N	f	2021-11-26 15:40:10.978679+00	2021-11-26 15:40:10.978689+00	3	6623	105
423	\N	\N	\N	f	2021-11-26 15:40:10.983883+00	2021-11-26 15:40:10.98389+00	3	6622	105
424	\N	\N	\N	f	2021-11-26 15:40:10.988811+00	2021-11-26 15:40:10.988819+00	3	6621	105
425	\N	\N	\N	f	2021-11-26 15:40:10.993837+00	2021-11-26 15:40:10.993843+00	3	6620	105
426	\N	\N	\N	f	2021-11-26 15:40:10.999065+00	2021-11-26 15:40:10.999075+00	3	6619	105
427	\N	\N	\N	f	2021-11-26 15:40:11.005164+00	2021-11-26 15:40:11.005173+00	3	6618	105
428	\N	\N	\N	f	2021-11-26 15:40:11.010765+00	2021-11-26 15:40:11.010774+00	3	6617	105
429	\N	\N	\N	f	2021-11-26 15:40:11.016116+00	2021-11-26 15:40:11.016123+00	3	6616	105
430	\N	\N	\N	f	2021-11-26 15:40:11.021245+00	2021-11-26 15:40:11.021253+00	3	6615	105
431	\N	\N	\N	f	2021-11-26 15:40:11.025673+00	2021-11-26 15:40:11.02568+00	3	6614	105
432	\N	\N	\N	f	2021-11-26 15:40:11.030244+00	2021-11-26 15:40:11.030251+00	3	6664	105
433	\N	\N	\N	f	2021-11-26 15:40:11.034636+00	2021-11-26 15:40:11.034642+00	3	6665	105
434	\N	\N	\N	f	2021-11-26 15:40:11.039534+00	2021-11-26 15:40:11.039544+00	3	6666	105
435	\N	\N	\N	f	2021-11-26 15:40:11.044211+00	2021-11-26 15:40:11.044219+00	3	6667	105
436	\N	\N	\N	f	2021-11-26 15:40:11.048628+00	2021-11-26 15:40:11.048635+00	3	6668	105
437	\N	\N	\N	f	2021-11-26 15:40:11.053097+00	2021-11-26 15:40:11.053104+00	3	6669	105
438	\N	\N	\N	f	2021-11-26 15:40:11.057964+00	2021-11-26 15:40:11.057972+00	3	6670	105
439	\N	\N	\N	f	2021-11-26 15:40:11.062829+00	2021-11-26 15:40:11.062838+00	3	6671	105
440	\N	\N	\N	f	2021-11-26 15:40:11.06724+00	2021-11-26 15:40:11.067247+00	3	6672	105
441	\N	\N	\N	f	2021-11-26 15:40:11.071849+00	2021-11-26 15:40:11.071858+00	3	6673	105
442	\N	\N	\N	f	2021-11-26 15:40:11.076698+00	2021-11-26 15:40:11.076706+00	3	6674	105
443	\N	\N	\N	f	2021-11-26 15:40:11.081513+00	2021-11-26 15:40:11.081519+00	3	6675	105
444	\N	\N	\N	f	2021-11-26 15:40:11.086641+00	2021-11-26 15:40:11.086648+00	3	6676	105
445	\N	\N	\N	f	2021-11-26 15:40:11.091984+00	2021-11-26 15:40:11.091995+00	3	6677	105
446	\N	\N	\N	f	2021-11-26 15:40:11.097734+00	2021-11-26 15:40:11.097741+00	3	6678	105
447	\N	\N	\N	f	2021-11-26 15:40:11.103208+00	2021-11-26 15:40:11.103215+00	3	6679	105
448	\N	\N	\N	f	2021-11-26 15:40:11.108305+00	2021-11-26 15:40:11.108316+00	3	6680	105
449	\N	\N	\N	f	2021-11-26 15:40:11.11314+00	2021-11-26 15:40:11.113147+00	3	6681	105
450	\N	\N	\N	f	2021-11-26 15:40:11.118098+00	2021-11-26 15:40:11.118105+00	3	6682	105
451	\N	\N	\N	f	2021-11-26 15:40:11.123829+00	2021-11-26 15:40:11.123839+00	3	6683	105
452	\N	\N	\N	f	2021-11-26 15:40:11.12908+00	2021-11-26 15:40:11.129089+00	3	6684	105
453	\N	\N	\N	f	2021-11-26 15:40:11.133856+00	2021-11-26 15:40:11.133862+00	3	6685	105
454	\N	\N	\N	f	2021-11-26 15:40:11.138767+00	2021-11-26 15:40:11.138775+00	3	6686	105
455	\N	\N	\N	f	2021-11-26 15:40:11.143576+00	2021-11-26 15:40:11.143583+00	3	6687	105
456	\N	\N	\N	f	2021-11-26 15:40:11.148723+00	2021-11-26 15:40:11.148729+00	3	6688	105
457	\N	\N	\N	f	2021-11-26 15:40:11.153938+00	2021-11-26 15:40:11.15395+00	3	6689	105
458	\N	\N	\N	f	2021-11-26 15:40:11.159252+00	2021-11-26 15:40:11.159261+00	3	6690	105
459	\N	\N	\N	f	2021-11-26 15:40:11.164562+00	2021-11-26 15:40:11.164569+00	3	6691	105
460	\N	\N	\N	f	2021-11-26 15:40:11.169657+00	2021-11-26 15:40:11.169664+00	3	6692	105
461	\N	\N	\N	f	2021-11-26 15:40:11.174319+00	2021-11-26 15:40:11.174325+00	3	6693	105
462	\N	\N	\N	f	2021-11-26 15:40:19.813263+00	2021-11-26 15:40:19.81327+00	3	6694	106
463	\N	\N	\N	f	2021-11-26 15:40:19.818711+00	2021-11-26 15:40:19.818719+00	3	6695	106
464	\N	\N	\N	f	2021-11-26 15:40:19.827184+00	2021-11-26 15:40:19.827193+00	3	6696	107
465	\N	\N	\N	f	2021-11-26 15:40:19.831996+00	2021-11-26 15:40:19.832003+00	3	6697	107
466	\N	\N	\N	f	2021-11-26 15:40:19.837313+00	2021-11-26 15:40:19.837324+00	3	6698	107
467	\N	\N	\N	f	2021-11-26 15:40:19.843226+00	2021-11-26 15:40:19.843236+00	3	6699	107
468	\N	\N	\N	f	2021-11-26 15:40:19.851458+00	2021-11-26 15:40:19.851465+00	3	6700	108
469	\N	\N	\N	f	2021-11-26 15:40:19.856466+00	2021-11-26 15:40:19.85648+00	3	6701	108
470	\N	\N	\N	f	2021-11-26 15:40:19.861197+00	2021-11-26 15:40:19.861205+00	3	6702	108
471	\N	\N	\N	f	2021-11-26 15:40:19.865572+00	2021-11-26 15:40:19.865579+00	3	6703	108
472	\N	\N	\N	f	2021-11-26 15:40:19.87058+00	2021-11-26 15:40:19.870588+00	3	6704	108
473	\N	\N	\N	f	2021-11-26 15:40:19.878711+00	2021-11-26 15:40:19.878718+00	3	6705	109
474	\N	\N	\N	f	2021-11-26 15:40:19.887501+00	2021-11-26 15:40:19.88751+00	3	6706	110
475	\N	\N	\N	f	2021-11-26 15:40:19.893057+00	2021-11-26 15:40:19.893066+00	3	6707	110
476	\N	\N	\N	f	2021-11-26 15:40:19.898306+00	2021-11-26 15:40:19.898313+00	3	6708	110
477	\N	\N	\N	f	2021-11-26 15:40:19.903295+00	2021-11-26 15:40:19.903305+00	3	6709	110
478	\N	\N	\N	f	2021-11-26 15:40:19.909186+00	2021-11-26 15:40:19.909196+00	3	6710	110
479	\N	\N	\N	f	2021-11-26 15:40:19.914011+00	2021-11-26 15:40:19.914018+00	3	6711	110
480	\N	\N	\N	f	2021-11-26 15:40:19.918578+00	2021-11-26 15:40:19.918585+00	3	6712	110
481	\N	\N	\N	f	2021-11-26 15:40:19.923272+00	2021-11-26 15:40:19.923281+00	3	6713	110
482	\N	\N	\N	f	2021-11-26 15:40:19.927715+00	2021-11-26 15:40:19.927722+00	3	6763	110
483	\N	\N	\N	f	2021-11-26 15:40:19.932406+00	2021-11-26 15:40:19.932413+00	3	6762	110
484	\N	\N	\N	f	2021-11-26 15:40:19.937541+00	2021-11-26 15:40:19.937549+00	3	6761	110
485	\N	\N	\N	f	2021-11-26 15:40:19.942217+00	2021-11-26 15:40:19.942227+00	3	6760	110
486	\N	\N	\N	f	2021-11-26 15:40:19.946896+00	2021-11-26 15:40:19.946903+00	3	6759	110
487	\N	\N	\N	f	2021-11-26 15:40:19.954151+00	2021-11-26 15:40:19.954159+00	3	6758	110
488	\N	\N	\N	f	2021-11-26 15:40:19.95872+00	2021-11-26 15:40:19.958727+00	3	6757	110
489	\N	\N	\N	f	2021-11-26 15:40:19.963489+00	2021-11-26 15:40:19.963495+00	3	6756	110
490	\N	\N	\N	f	2021-11-26 15:40:19.968265+00	2021-11-26 15:40:19.968272+00	3	6755	110
491	\N	\N	\N	f	2021-11-26 15:40:19.973101+00	2021-11-26 15:40:19.973113+00	3	6754	110
492	\N	\N	\N	f	2021-11-26 15:40:19.977889+00	2021-11-26 15:40:19.977897+00	3	6753	110
493	\N	\N	\N	f	2021-11-26 15:40:19.982362+00	2021-11-26 15:40:19.982368+00	3	6752	110
494	\N	\N	\N	f	2021-11-26 15:40:19.986981+00	2021-11-26 15:40:19.986993+00	3	6751	110
495	\N	\N	\N	f	2021-11-26 15:40:19.992123+00	2021-11-26 15:40:19.992132+00	3	6750	110
496	\N	\N	\N	f	2021-11-26 15:40:19.99699+00	2021-11-26 15:40:19.997011+00	3	6749	110
497	\N	\N	\N	f	2021-11-26 15:40:20.001492+00	2021-11-26 15:40:20.001499+00	3	6748	110
498	\N	\N	\N	f	2021-11-26 15:40:20.006338+00	2021-11-26 15:40:20.006347+00	3	6747	110
499	\N	\N	\N	f	2021-11-26 15:40:20.010856+00	2021-11-26 15:40:20.010863+00	3	6746	110
500	\N	\N	\N	f	2021-11-26 15:40:20.015273+00	2021-11-26 15:40:20.015279+00	3	6745	110
501	\N	\N	\N	f	2021-11-26 15:40:20.019841+00	2021-11-26 15:40:20.019848+00	3	6744	110
502	\N	\N	\N	f	2021-11-26 15:40:20.026109+00	2021-11-26 15:40:20.026123+00	3	6743	110
503	\N	\N	\N	f	2021-11-26 15:40:20.035962+00	2021-11-26 15:40:20.035997+00	3	6742	110
504	\N	\N	\N	f	2021-11-26 15:40:20.042408+00	2021-11-26 15:40:20.04242+00	3	6741	110
505	\N	\N	\N	f	2021-11-26 15:40:20.047698+00	2021-11-26 15:40:20.047707+00	3	6740	110
506	\N	\N	\N	f	2021-11-26 15:40:20.052284+00	2021-11-26 15:40:20.052292+00	3	6739	110
507	\N	\N	\N	f	2021-11-26 15:40:20.058502+00	2021-11-26 15:40:20.058515+00	3	6738	110
508	\N	\N	\N	f	2021-11-26 15:40:20.063738+00	2021-11-26 15:40:20.063746+00	3	6737	110
509	\N	\N	\N	f	2021-11-26 15:40:20.06821+00	2021-11-26 15:40:20.068217+00	3	6736	110
510	\N	\N	\N	f	2021-11-26 15:40:20.072891+00	2021-11-26 15:40:20.072899+00	3	6735	110
511	\N	\N	\N	f	2021-11-26 15:40:20.077831+00	2021-11-26 15:40:20.077838+00	3	6734	110
512	\N	\N	\N	f	2021-11-26 15:40:20.082664+00	2021-11-26 15:40:20.08267+00	3	6733	110
513	\N	\N	\N	f	2021-11-26 15:40:20.08803+00	2021-11-26 15:40:20.088041+00	3	6732	110
514	\N	\N	\N	f	2021-11-26 15:40:20.093599+00	2021-11-26 15:40:20.093609+00	3	6731	110
515	\N	\N	\N	f	2021-11-26 15:40:20.098219+00	2021-11-26 15:40:20.098226+00	3	6730	110
516	\N	\N	\N	f	2021-11-26 15:40:20.102608+00	2021-11-26 15:40:20.102615+00	3	6729	110
517	\N	\N	\N	f	2021-11-26 15:40:20.10746+00	2021-11-26 15:40:20.107468+00	3	6728	110
518	\N	\N	\N	f	2021-11-26 15:40:20.112064+00	2021-11-26 15:40:20.11207+00	3	6727	110
519	\N	\N	\N	f	2021-11-26 15:40:20.116711+00	2021-11-26 15:40:20.116718+00	3	6726	110
520	\N	\N	\N	f	2021-11-26 15:40:20.121672+00	2021-11-26 15:40:20.121682+00	3	6725	110
521	\N	\N	\N	f	2021-11-26 15:40:20.126797+00	2021-11-26 15:40:20.126807+00	3	6724	110
522	\N	\N	\N	f	2021-11-26 15:40:20.131461+00	2021-11-26 15:40:20.131468+00	3	6723	110
523	\N	\N	\N	f	2021-11-26 15:40:20.136035+00	2021-11-26 15:40:20.136042+00	3	6722	110
524	\N	\N	\N	f	2021-11-26 15:40:20.140771+00	2021-11-26 15:40:20.140779+00	3	6721	110
525	\N	\N	\N	f	2021-11-26 15:40:20.145255+00	2021-11-26 15:40:20.145262+00	3	6720	110
526	\N	\N	\N	f	2021-11-26 15:40:20.15009+00	2021-11-26 15:40:20.150099+00	3	6719	110
527	\N	\N	\N	f	2021-11-26 15:40:20.154887+00	2021-11-26 15:40:20.154895+00	3	6718	110
528	\N	\N	\N	f	2021-11-26 15:40:20.159753+00	2021-11-26 15:40:20.159762+00	3	6717	110
529	\N	\N	\N	f	2021-11-26 15:40:20.164354+00	2021-11-26 15:40:20.164361+00	3	6716	110
530	\N	\N	\N	f	2021-11-26 15:40:20.169017+00	2021-11-26 15:40:20.169024+00	3	6715	110
531	\N	\N	\N	f	2021-11-26 15:40:20.173337+00	2021-11-26 15:40:20.173344+00	3	6714	110
532	\N	\N	\N	f	2021-11-26 15:40:20.178083+00	2021-11-26 15:40:20.178089+00	3	6764	110
533	\N	\N	\N	f	2021-11-26 15:40:20.182493+00	2021-11-26 15:40:20.1825+00	3	6765	110
534	\N	\N	\N	f	2021-11-26 15:40:20.186787+00	2021-11-26 15:40:20.186794+00	3	6766	110
535	\N	\N	\N	f	2021-11-26 15:40:20.19154+00	2021-11-26 15:40:20.19155+00	3	6767	110
536	\N	\N	\N	f	2021-11-26 15:40:20.196179+00	2021-11-26 15:40:20.196186+00	3	6768	110
537	\N	\N	\N	f	2021-11-26 15:40:20.200877+00	2021-11-26 15:40:20.200883+00	3	6769	110
538	\N	\N	\N	f	2021-11-26 15:40:20.205937+00	2021-11-26 15:40:20.205945+00	3	6770	110
539	\N	\N	\N	f	2021-11-26 15:40:20.211219+00	2021-11-26 15:40:20.211228+00	3	6771	110
540	\N	\N	\N	f	2021-11-26 15:40:20.216357+00	2021-11-26 15:40:20.216364+00	3	6772	110
541	\N	\N	\N	f	2021-11-26 15:40:20.221413+00	2021-11-26 15:40:20.221422+00	3	6773	110
542	\N	\N	\N	f	2021-11-26 15:40:20.226192+00	2021-11-26 15:40:20.226201+00	3	6774	110
543	\N	\N	\N	f	2021-11-26 15:40:20.23076+00	2021-11-26 15:40:20.230767+00	3	6775	110
544	\N	\N	\N	f	2021-11-26 15:40:20.235162+00	2021-11-26 15:40:20.235167+00	3	6776	110
545	\N	\N	\N	f	2021-11-26 15:40:20.239738+00	2021-11-26 15:40:20.239747+00	3	6777	110
546	\N	\N	\N	f	2021-11-26 15:40:20.244659+00	2021-11-26 15:40:20.244669+00	3	6778	110
547	\N	\N	\N	f	2021-11-26 15:40:20.24919+00	2021-11-26 15:40:20.249197+00	3	6779	110
548	\N	\N	\N	f	2021-11-26 15:40:20.25336+00	2021-11-26 15:40:20.253367+00	3	6780	110
549	\N	\N	\N	f	2021-11-26 15:40:20.258079+00	2021-11-26 15:40:20.258089+00	3	6781	110
550	\N	\N	\N	f	2021-11-26 15:40:20.262425+00	2021-11-26 15:40:20.262431+00	3	6782	110
551	\N	\N	\N	f	2021-11-26 15:40:20.266752+00	2021-11-26 15:40:20.266758+00	3	6783	110
552	\N	\N	\N	f	2021-11-26 15:40:20.272162+00	2021-11-26 15:40:20.272171+00	3	6784	110
553	\N	\N	\N	f	2021-11-26 15:40:20.277335+00	2021-11-26 15:40:20.277345+00	3	6785	110
554	\N	\N	\N	f	2021-11-26 15:40:20.282069+00	2021-11-26 15:40:20.282076+00	3	6786	110
555	\N	\N	\N	f	2021-11-26 15:40:20.286654+00	2021-11-26 15:40:20.286661+00	3	6787	110
556	\N	\N	\N	f	2021-11-26 15:40:20.291532+00	2021-11-26 15:40:20.29154+00	3	6788	110
557	\N	\N	\N	f	2021-11-26 15:40:20.295942+00	2021-11-26 15:40:20.295949+00	3	6789	110
558	\N	\N	\N	f	2021-11-26 15:40:20.301075+00	2021-11-26 15:40:20.301087+00	3	6790	110
559	\N	\N	\N	f	2021-11-26 15:40:20.306043+00	2021-11-26 15:40:20.306052+00	3	6791	110
560	\N	\N	\N	f	2021-11-26 15:40:20.310681+00	2021-11-26 15:40:20.31069+00	3	6792	110
561	\N	\N	\N	f	2021-11-26 15:40:20.315204+00	2021-11-26 15:40:20.315212+00	3	6793	110
562	\N	\N	\N	f	2021-11-26 15:40:20.319658+00	2021-11-26 15:40:20.319665+00	3	6794	110
563	\N	\N	\N	f	2021-11-26 15:40:20.323929+00	2021-11-26 15:40:20.323936+00	3	6795	110
564	\N	\N	\N	f	2021-11-26 15:40:20.328319+00	2021-11-26 15:40:20.328325+00	3	6796	110
565	\N	\N	\N	f	2021-11-26 15:40:20.336162+00	2021-11-26 15:40:20.33617+00	3	6797	110
566	\N	\N	\N	f	2021-11-26 15:40:20.3433+00	2021-11-26 15:40:20.34331+00	3	6798	110
567	\N	\N	\N	f	2021-11-26 15:40:20.348194+00	2021-11-26 15:40:20.348201+00	3	6799	110
568	\N	\N	\N	f	2021-11-26 15:40:20.354509+00	2021-11-26 15:40:20.354526+00	3	6800	110
569	\N	\N	\N	f	2021-11-26 15:40:20.361337+00	2021-11-26 15:40:20.361347+00	3	6801	110
570	\N	\N	\N	f	2021-11-26 15:40:20.366171+00	2021-11-26 15:40:20.366179+00	3	6802	110
571	\N	\N	\N	f	2021-11-26 15:40:20.370566+00	2021-11-26 15:40:20.370575+00	3	6803	110
572	\N	\N	\N	f	2021-11-26 15:40:20.375594+00	2021-11-26 15:40:20.375602+00	3	6804	110
573	\N	\N	\N	f	2021-11-26 15:40:20.380379+00	2021-11-26 15:40:20.380385+00	3	6805	110
574	\N	\N	\N	f	2021-11-26 15:40:20.385179+00	2021-11-26 15:40:20.385186+00	3	6806	110
575	\N	\N	\N	f	2021-11-26 15:40:20.38996+00	2021-11-26 15:40:20.389969+00	3	6807	110
576	\N	\N	\N	f	2021-11-26 15:40:20.394904+00	2021-11-26 15:40:20.394912+00	3	6808	110
577	\N	\N	\N	f	2021-11-26 15:40:20.399274+00	2021-11-26 15:40:20.399281+00	3	6809	110
578	\N	\N	\N	f	2021-11-26 15:40:20.4038+00	2021-11-26 15:40:20.403808+00	3	6810	110
579	\N	\N	\N	f	2021-11-26 15:40:20.408712+00	2021-11-26 15:40:20.408722+00	3	6811	110
580	\N	\N	\N	f	2021-11-26 15:40:20.413214+00	2021-11-26 15:40:20.413221+00	3	6812	110
581	\N	\N	\N	f	2021-11-26 15:40:20.417513+00	2021-11-26 15:40:20.417519+00	3	6813	110
582	\N	\N	\N	f	2021-11-26 15:40:20.42293+00	2021-11-26 15:40:20.42294+00	3	6863	110
583	\N	\N	\N	f	2021-11-26 15:40:20.431472+00	2021-11-26 15:40:20.431482+00	3	6862	110
584	\N	\N	\N	f	2021-11-26 15:40:20.435877+00	2021-11-26 15:40:20.435885+00	3	6861	110
585	\N	\N	\N	f	2021-11-26 15:40:20.440458+00	2021-11-26 15:40:20.440467+00	3	6860	110
586	\N	\N	\N	f	2021-11-26 15:40:20.444938+00	2021-11-26 15:40:20.444945+00	3	6859	110
587	\N	\N	\N	f	2021-11-26 15:40:20.449337+00	2021-11-26 15:40:20.449344+00	3	6858	110
588	\N	\N	\N	f	2021-11-26 15:40:20.454224+00	2021-11-26 15:40:20.454236+00	3	6857	110
589	\N	\N	\N	f	2021-11-26 15:40:20.458945+00	2021-11-26 15:40:20.458954+00	3	6856	110
590	\N	\N	\N	f	2021-11-26 15:40:20.463376+00	2021-11-26 15:40:20.463383+00	3	6855	110
591	\N	\N	\N	f	2021-11-26 15:40:20.467785+00	2021-11-26 15:40:20.467791+00	3	6854	110
592	\N	\N	\N	f	2021-11-26 15:40:20.475988+00	2021-11-26 15:40:20.475999+00	3	6853	110
593	\N	\N	\N	f	2021-11-26 15:40:20.4805+00	2021-11-26 15:40:20.480507+00	3	6852	110
594	\N	\N	\N	f	2021-11-26 15:40:20.48497+00	2021-11-26 15:40:20.484977+00	3	6851	110
595	\N	\N	\N	f	2021-11-26 15:40:20.489985+00	2021-11-26 15:40:20.489998+00	3	6850	110
596	\N	\N	\N	f	2021-11-26 15:40:20.494924+00	2021-11-26 15:40:20.494933+00	3	6849	110
597	\N	\N	\N	f	2021-11-26 15:40:20.499457+00	2021-11-26 15:40:20.499465+00	3	6848	110
598	\N	\N	\N	f	2021-11-26 15:40:20.503974+00	2021-11-26 15:40:20.503983+00	3	6847	110
599	\N	\N	\N	f	2021-11-26 15:40:20.50844+00	2021-11-26 15:40:20.508446+00	3	6846	110
600	\N	\N	\N	f	2021-11-26 15:40:20.513037+00	2021-11-26 15:40:20.513048+00	3	6845	110
601	\N	\N	\N	f	2021-11-26 15:40:20.518041+00	2021-11-26 15:40:20.51805+00	3	6844	110
602	\N	\N	\N	f	2021-11-26 15:40:20.522674+00	2021-11-26 15:40:20.522684+00	3	6843	110
603	\N	\N	\N	f	2021-11-26 15:40:20.527402+00	2021-11-26 15:40:20.527411+00	3	6842	110
604	\N	\N	\N	f	2021-11-26 15:40:20.531904+00	2021-11-26 15:40:20.531911+00	3	6841	110
605	\N	\N	\N	f	2021-11-26 15:40:20.536388+00	2021-11-26 15:40:20.536395+00	3	6840	110
606	\N	\N	\N	f	2021-11-26 15:40:20.540903+00	2021-11-26 15:40:20.540909+00	3	6839	110
607	\N	\N	\N	f	2021-11-26 15:40:20.545483+00	2021-11-26 15:40:20.54549+00	3	6838	110
608	\N	\N	\N	f	2021-11-26 15:40:20.549762+00	2021-11-26 15:40:20.549768+00	3	6837	110
609	\N	\N	\N	f	2021-11-26 15:40:20.554221+00	2021-11-26 15:40:20.554229+00	3	6836	110
610	\N	\N	\N	f	2021-11-26 15:40:20.559411+00	2021-11-26 15:40:20.55942+00	3	6835	110
611	\N	\N	\N	f	2021-11-26 15:40:20.563954+00	2021-11-26 15:40:20.563961+00	3	6834	110
612	\N	\N	\N	f	2021-11-26 15:40:20.568496+00	2021-11-26 15:40:20.568502+00	3	6833	110
613	\N	\N	\N	f	2021-11-26 15:40:20.573251+00	2021-11-26 15:40:20.573261+00	3	6832	110
614	\N	\N	\N	f	2021-11-26 15:40:20.578314+00	2021-11-26 15:40:20.578324+00	3	6831	110
615	\N	\N	\N	f	2021-11-26 15:40:20.582785+00	2021-11-26 15:40:20.582793+00	3	6830	110
616	\N	\N	\N	f	2021-11-26 15:40:20.587326+00	2021-11-26 15:40:20.587334+00	3	6829	110
617	\N	\N	\N	f	2021-11-26 15:40:20.591935+00	2021-11-26 15:40:20.591943+00	3	6828	110
618	\N	\N	\N	f	2021-11-26 15:40:20.596442+00	2021-11-26 15:40:20.59645+00	3	6827	110
619	\N	\N	\N	f	2021-11-26 15:40:20.600804+00	2021-11-26 15:40:20.60081+00	3	6826	110
620	\N	\N	\N	f	2021-11-26 15:40:20.605614+00	2021-11-26 15:40:20.605624+00	3	6825	110
621	\N	\N	\N	f	2021-11-26 15:40:20.610773+00	2021-11-26 15:40:20.610782+00	3	6824	110
622	\N	\N	\N	f	2021-11-26 15:40:20.615297+00	2021-11-26 15:40:20.615303+00	3	6823	110
623	\N	\N	\N	f	2021-11-26 15:40:20.61977+00	2021-11-26 15:40:20.619778+00	3	6822	110
624	\N	\N	\N	f	2021-11-26 15:40:20.624474+00	2021-11-26 15:40:20.624482+00	3	6821	110
625	\N	\N	\N	f	2021-11-26 15:40:20.628961+00	2021-11-26 15:40:20.628967+00	3	6820	110
626	\N	\N	\N	f	2021-11-26 15:40:20.633993+00	2021-11-26 15:40:20.633999+00	3	6819	110
627	\N	\N	\N	f	2021-11-26 15:40:20.639444+00	2021-11-26 15:40:20.639453+00	3	6818	110
628	\N	\N	\N	f	2021-11-26 15:40:20.644807+00	2021-11-26 15:40:20.644816+00	3	6817	110
629	\N	\N	\N	f	2021-11-26 15:40:20.649758+00	2021-11-26 15:40:20.649765+00	3	6816	110
630	\N	\N	\N	f	2021-11-26 15:40:20.654513+00	2021-11-26 15:40:20.654521+00	3	6815	110
631	\N	\N	\N	f	2021-11-26 15:40:20.659268+00	2021-11-26 15:40:20.659275+00	3	6814	110
632	\N	\N	\N	f	2021-11-26 15:40:20.663954+00	2021-11-26 15:40:20.66396+00	3	6864	110
633	\N	\N	\N	f	2021-11-26 15:40:20.668535+00	2021-11-26 15:40:20.668542+00	3	6865	110
634	\N	\N	\N	f	2021-11-26 15:40:20.674032+00	2021-11-26 15:40:20.674042+00	3	6866	110
635	\N	\N	\N	f	2021-11-26 15:40:20.679168+00	2021-11-26 15:40:20.679177+00	3	6867	110
636	\N	\N	\N	f	2021-11-26 15:40:20.683665+00	2021-11-26 15:40:20.683671+00	3	6868	110
637	\N	\N	\N	f	2021-11-26 15:40:20.688127+00	2021-11-26 15:40:20.688135+00	3	6869	110
638	\N	\N	\N	f	2021-11-26 15:40:20.692709+00	2021-11-26 15:40:20.692716+00	3	6870	110
639	\N	\N	\N	f	2021-11-26 15:40:20.697742+00	2021-11-26 15:40:20.697751+00	3	6871	110
640	\N	\N	\N	f	2021-11-26 15:40:20.703116+00	2021-11-26 15:40:20.703126+00	3	6872	110
641	\N	\N	\N	f	2021-11-26 15:40:20.708289+00	2021-11-26 15:40:20.708298+00	3	6873	110
642	\N	\N	\N	f	2021-11-26 15:40:20.712902+00	2021-11-26 15:40:20.71291+00	3	6874	110
643	\N	\N	\N	f	2021-11-26 15:40:20.717594+00	2021-11-26 15:40:20.717604+00	3	6875	110
644	\N	\N	\N	f	2021-11-26 15:40:20.722456+00	2021-11-26 15:40:20.722466+00	3	6876	110
645	\N	\N	\N	f	2021-11-26 15:40:20.727736+00	2021-11-26 15:40:20.727745+00	3	6877	110
646	\N	\N	\N	f	2021-11-26 15:40:20.733013+00	2021-11-26 15:40:20.73302+00	3	6878	110
647	\N	\N	\N	f	2021-11-26 15:40:20.738133+00	2021-11-26 15:40:20.738145+00	3	6879	110
648	\N	\N	\N	f	2021-11-26 15:40:20.743689+00	2021-11-26 15:40:20.743698+00	3	6880	110
649	\N	\N	\N	f	2021-11-26 15:40:20.749089+00	2021-11-26 15:40:20.749096+00	3	6881	110
650	\N	\N	\N	f	2021-11-26 15:40:20.754627+00	2021-11-26 15:40:20.754637+00	3	6882	110
651	\N	\N	\N	f	2021-11-26 15:40:20.759804+00	2021-11-26 15:40:20.759813+00	3	6883	110
652	\N	\N	\N	f	2021-11-26 15:40:20.764877+00	2021-11-26 15:40:20.764885+00	3	6884	110
653	\N	\N	\N	f	2021-11-26 15:40:20.770145+00	2021-11-26 15:40:20.770153+00	3	6885	110
654	\N	\N	\N	f	2021-11-26 15:40:20.775584+00	2021-11-26 15:40:20.775593+00	3	6886	110
655	\N	\N	\N	f	2021-11-26 15:40:20.781071+00	2021-11-26 15:40:20.781079+00	3	6887	110
656	\N	\N	\N	f	2021-11-26 15:40:20.785774+00	2021-11-26 15:40:20.785782+00	3	6888	110
657	\N	\N	\N	f	2021-11-26 15:40:20.790454+00	2021-11-26 15:40:20.790462+00	3	6889	110
658	\N	\N	\N	f	2021-11-26 15:40:20.795267+00	2021-11-26 15:40:20.795275+00	3	6890	110
659	\N	\N	\N	f	2021-11-26 15:40:20.799924+00	2021-11-26 15:40:20.799931+00	3	6891	110
660	\N	\N	\N	f	2021-11-26 15:40:20.80466+00	2021-11-26 15:40:20.804669+00	3	6892	110
661	\N	\N	\N	f	2021-11-26 15:40:20.809527+00	2021-11-26 15:40:20.809536+00	3	6893	110
662	\N	\N	\N	f	2021-11-26 15:40:20.814125+00	2021-11-26 15:40:20.814132+00	3	6894	110
663	\N	\N	\N	f	2021-11-26 15:40:20.818646+00	2021-11-26 15:40:20.818652+00	3	6895	110
664	\N	\N	\N	f	2021-11-26 15:40:20.823937+00	2021-11-26 15:40:20.823946+00	3	6896	110
665	\N	\N	\N	f	2021-11-26 15:40:20.828885+00	2021-11-26 15:40:20.828893+00	3	6897	110
666	\N	\N	\N	f	2021-11-26 15:40:20.833352+00	2021-11-26 15:40:20.833359+00	3	6898	110
667	\N	\N	\N	f	2021-11-26 15:40:20.837903+00	2021-11-26 15:40:20.837912+00	3	6899	110
668	\N	\N	\N	f	2021-11-26 15:40:20.842242+00	2021-11-26 15:40:20.842249+00	3	6900	110
669	\N	\N	\N	f	2021-11-26 15:40:20.846659+00	2021-11-26 15:40:20.846665+00	3	6901	110
670	\N	\N	\N	f	2021-11-26 15:40:20.851575+00	2021-11-26 15:40:20.851585+00	3	6902	110
671	\N	\N	\N	f	2021-11-26 15:40:20.856502+00	2021-11-26 15:40:20.856511+00	3	6903	110
672	\N	\N	\N	f	2021-11-26 15:40:20.861485+00	2021-11-26 15:40:20.861494+00	3	6904	110
673	\N	\N	\N	f	2021-11-26 15:40:20.865946+00	2021-11-26 15:40:20.865952+00	3	6905	110
674	\N	\N	\N	f	2021-11-26 15:40:43.219248+00	2021-11-26 15:40:43.219257+00	3	6906	111
675	\N	\N	\N	f	2021-11-26 15:40:43.225256+00	2021-11-26 15:40:43.225265+00	3	6907	111
676	\N	\N	\N	f	2021-11-26 15:40:43.233149+00	2021-11-26 15:40:43.233157+00	3	6908	112
677	\N	\N	\N	f	2021-11-26 15:40:43.238235+00	2021-11-26 15:40:43.238244+00	3	6909	112
678	\N	\N	\N	f	2021-11-26 15:40:43.243151+00	2021-11-26 15:40:43.243159+00	3	6910	112
679	\N	\N	\N	f	2021-11-26 15:40:43.248364+00	2021-11-26 15:40:43.248374+00	3	6911	112
680	\N	\N	\N	f	2021-11-26 15:40:43.256693+00	2021-11-26 15:40:43.256702+00	3	6912	113
681	\N	\N	\N	f	2021-11-26 15:40:43.261466+00	2021-11-26 15:40:43.261475+00	3	6913	113
682	\N	\N	\N	f	2021-11-26 15:40:43.266077+00	2021-11-26 15:40:43.266086+00	3	6963	113
683	\N	\N	\N	f	2021-11-26 15:40:43.270683+00	2021-11-26 15:40:43.270691+00	3	6962	113
684	\N	\N	\N	f	2021-11-26 15:40:43.275179+00	2021-11-26 15:40:43.275188+00	3	6961	113
685	\N	\N	\N	f	2021-11-26 15:40:43.282759+00	2021-11-26 15:40:43.282767+00	3	6960	114
686	\N	\N	\N	f	2021-11-26 15:40:43.287353+00	2021-11-26 15:40:43.287372+00	3	6959	114
687	\N	\N	\N	f	2021-11-26 15:40:43.292573+00	2021-11-26 15:40:43.292582+00	3	6958	114
688	\N	\N	\N	f	2021-11-26 15:40:43.297252+00	2021-11-26 15:40:43.297259+00	3	6957	114
689	\N	\N	\N	f	2021-11-26 15:40:43.302038+00	2021-11-26 15:40:43.302046+00	3	6956	114
690	\N	\N	\N	f	2021-11-26 15:40:43.307062+00	2021-11-26 15:40:43.307072+00	3	6955	114
691	\N	\N	\N	f	2021-11-26 15:40:43.312+00	2021-11-26 15:40:43.312009+00	3	6954	114
692	\N	\N	\N	f	2021-11-26 15:40:43.316538+00	2021-11-26 15:40:43.316547+00	3	6953	114
693	\N	\N	\N	f	2021-11-26 15:40:43.321216+00	2021-11-26 15:40:43.321227+00	3	6952	114
694	\N	\N	\N	f	2021-11-26 15:40:43.325801+00	2021-11-26 15:40:43.325809+00	3	6951	114
695	\N	\N	\N	f	2021-11-26 15:40:43.330035+00	2021-11-26 15:40:43.330042+00	3	6950	114
696	\N	\N	\N	f	2021-11-26 15:40:43.334377+00	2021-11-26 15:40:43.334385+00	3	6949	114
697	\N	\N	\N	f	2021-11-26 15:40:43.339047+00	2021-11-26 15:40:43.339058+00	3	6948	114
698	\N	\N	\N	f	2021-11-26 15:40:43.343977+00	2021-11-26 15:40:43.343986+00	3	6947	114
699	\N	\N	\N	f	2021-11-26 15:40:43.34843+00	2021-11-26 15:40:43.348438+00	3	6946	114
700	\N	\N	\N	f	2021-11-26 15:40:43.353058+00	2021-11-26 15:40:43.353066+00	3	6945	114
701	\N	\N	\N	f	2021-11-26 15:40:43.357819+00	2021-11-26 15:40:43.357827+00	3	6944	114
702	\N	\N	\N	f	2021-11-26 15:40:43.362226+00	2021-11-26 15:40:43.362235+00	3	6943	114
703	\N	\N	\N	f	2021-11-26 15:40:43.366589+00	2021-11-26 15:40:43.366596+00	3	6942	114
704	\N	\N	\N	f	2021-11-26 15:40:43.371675+00	2021-11-26 15:40:43.371685+00	3	6941	114
705	\N	\N	\N	f	2021-11-26 15:40:43.376606+00	2021-11-26 15:40:43.376615+00	3	6940	114
706	\N	\N	\N	f	2021-11-26 15:40:43.381059+00	2021-11-26 15:40:43.381066+00	3	6939	114
707	\N	\N	\N	f	2021-11-26 15:40:43.385438+00	2021-11-26 15:40:43.385446+00	3	6938	114
708	\N	\N	\N	f	2021-11-26 15:40:43.390498+00	2021-11-26 15:40:43.390507+00	3	6937	114
709	\N	\N	\N	f	2021-11-26 15:40:43.395179+00	2021-11-26 15:40:43.395187+00	3	6936	114
710	\N	\N	\N	f	2021-11-26 15:40:43.399671+00	2021-11-26 15:40:43.39968+00	3	6935	114
711	\N	\N	\N	f	2021-11-26 15:40:43.404936+00	2021-11-26 15:40:43.404945+00	3	6934	114
712	\N	\N	\N	f	2021-11-26 15:40:43.409886+00	2021-11-26 15:40:43.409895+00	3	6933	114
713	\N	\N	\N	f	2021-11-26 15:40:43.414439+00	2021-11-26 15:40:43.414447+00	3	6932	114
714	\N	\N	\N	f	2021-11-26 15:40:43.41911+00	2021-11-26 15:40:43.419118+00	3	6931	114
715	\N	\N	\N	f	2021-11-26 15:40:43.4238+00	2021-11-26 15:40:43.423809+00	3	6930	114
716	\N	\N	\N	f	2021-11-26 15:40:43.428323+00	2021-11-26 15:40:43.428331+00	3	6929	114
717	\N	\N	\N	f	2021-11-26 15:40:43.432796+00	2021-11-26 15:40:43.432805+00	3	6928	114
718	\N	\N	\N	f	2021-11-26 15:40:43.437722+00	2021-11-26 15:40:43.437733+00	3	6927	114
719	\N	\N	\N	f	2021-11-26 15:40:43.442992+00	2021-11-26 15:40:43.443001+00	3	6926	114
720	\N	\N	\N	f	2021-11-26 15:40:43.44744+00	2021-11-26 15:40:43.447448+00	3	6925	114
721	\N	\N	\N	f	2021-11-26 15:40:43.451948+00	2021-11-26 15:40:43.451957+00	3	6924	114
722	\N	\N	\N	f	2021-11-26 15:40:43.457233+00	2021-11-26 15:40:43.457244+00	3	6923	114
723	\N	\N	\N	f	2021-11-26 15:40:43.462072+00	2021-11-26 15:40:43.462081+00	3	6922	114
724	\N	\N	\N	f	2021-11-26 15:40:43.466532+00	2021-11-26 15:40:43.46654+00	3	6921	114
725	\N	\N	\N	f	2021-11-26 15:40:43.471143+00	2021-11-26 15:40:43.471154+00	3	6920	114
726	\N	\N	\N	f	2021-11-26 15:40:43.476051+00	2021-11-26 15:40:43.47606+00	3	6919	114
727	\N	\N	\N	f	2021-11-26 15:40:43.481094+00	2021-11-26 15:40:43.481102+00	3	6918	114
728	\N	\N	\N	f	2021-11-26 15:40:43.486259+00	2021-11-26 15:40:43.486267+00	3	6917	114
729	\N	\N	\N	f	2021-11-26 15:40:43.49128+00	2021-11-26 15:40:43.491289+00	3	6916	114
730	\N	\N	\N	f	2021-11-26 15:40:43.496351+00	2021-11-26 15:40:43.49636+00	3	6915	114
731	\N	\N	\N	f	2021-11-26 15:40:43.500884+00	2021-11-26 15:40:43.500891+00	3	6914	114
732	\N	\N	\N	f	2021-11-26 15:40:43.505738+00	2021-11-26 15:40:43.505748+00	3	6964	114
733	\N	\N	\N	f	2021-11-26 15:40:43.510283+00	2021-11-26 15:40:43.510291+00	3	6965	114
734	\N	\N	\N	f	2021-11-26 15:40:43.514585+00	2021-11-26 15:40:43.514591+00	3	6966	114
735	\N	\N	\N	f	2021-11-26 15:40:43.519177+00	2021-11-26 15:40:43.519186+00	3	6967	114
736	\N	\N	\N	f	2021-11-26 15:40:43.524319+00	2021-11-26 15:40:43.524329+00	3	6968	114
737	\N	\N	\N	f	2021-11-26 15:40:43.528801+00	2021-11-26 15:40:43.528809+00	3	6969	114
738	\N	\N	\N	f	2021-11-26 15:40:43.533226+00	2021-11-26 15:40:43.533234+00	3	6970	114
739	\N	\N	\N	f	2021-11-26 15:40:43.537908+00	2021-11-26 15:40:43.537917+00	3	6971	114
740	\N	\N	\N	f	2021-11-26 15:40:43.542454+00	2021-11-26 15:40:43.542461+00	3	6972	114
741	\N	\N	\N	f	2021-11-26 15:40:43.546859+00	2021-11-26 15:40:43.546865+00	3	6973	114
742	\N	\N	\N	f	2021-11-26 15:40:43.551058+00	2021-11-26 15:40:43.551065+00	3	6974	114
743	\N	\N	\N	f	2021-11-26 15:40:43.555996+00	2021-11-26 15:40:43.556004+00	3	6975	114
744	\N	\N	\N	f	2021-11-26 15:40:43.560589+00	2021-11-26 15:40:43.560598+00	3	6976	114
745	\N	\N	\N	f	2021-11-26 15:40:43.564967+00	2021-11-26 15:40:43.564976+00	3	6977	114
746	\N	\N	\N	f	2021-11-26 15:40:43.569401+00	2021-11-26 15:40:43.569411+00	3	6978	114
747	\N	\N	\N	f	2021-11-26 15:40:43.574158+00	2021-11-26 15:40:43.574166+00	3	6979	114
748	\N	\N	\N	f	2021-11-26 15:40:43.578652+00	2021-11-26 15:40:43.578659+00	3	6980	114
749	\N	\N	\N	f	2021-11-26 15:40:43.58293+00	2021-11-26 15:40:43.582937+00	3	6981	114
750	\N	\N	\N	f	2021-11-26 15:40:43.587521+00	2021-11-26 15:40:43.587534+00	3	6982	114
751	\N	\N	\N	f	2021-11-26 15:40:43.592688+00	2021-11-26 15:40:43.592697+00	3	6983	114
752	\N	\N	\N	f	2021-11-26 15:40:43.597339+00	2021-11-26 15:40:43.597347+00	3	6984	114
753	\N	\N	\N	f	2021-11-26 15:40:43.602014+00	2021-11-26 15:40:43.602021+00	3	6985	114
754	\N	\N	\N	f	2021-11-26 15:40:43.606662+00	2021-11-26 15:40:43.60667+00	3	6986	114
755	\N	\N	\N	f	2021-11-26 15:40:43.611299+00	2021-11-26 15:40:43.611306+00	3	6987	114
756	\N	\N	\N	f	2021-11-26 15:40:43.616136+00	2021-11-26 15:40:43.616147+00	3	6988	114
757	\N	\N	\N	f	2021-11-26 15:40:43.621216+00	2021-11-26 15:40:43.621225+00	3	6989	114
758	\N	\N	\N	f	2021-11-26 15:40:43.625981+00	2021-11-26 15:40:43.62599+00	3	6990	114
759	\N	\N	\N	f	2021-11-26 15:40:43.631014+00	2021-11-26 15:40:43.631021+00	3	6991	114
760	\N	\N	\N	f	2021-11-26 15:40:43.636032+00	2021-11-26 15:40:43.63604+00	3	6992	114
761	\N	\N	\N	f	2021-11-26 15:40:43.640686+00	2021-11-26 15:40:43.640693+00	3	6993	114
762	\N	\N	\N	f	2021-11-26 15:40:43.645577+00	2021-11-26 15:40:43.645584+00	3	6994	114
763	\N	\N	\N	f	2021-11-26 15:40:43.65055+00	2021-11-26 15:40:43.650558+00	3	6995	114
764	\N	\N	\N	f	2021-11-26 15:40:43.655588+00	2021-11-26 15:40:43.655598+00	3	6996	114
765	\N	\N	\N	f	2021-11-26 15:40:43.660747+00	2021-11-26 15:40:43.660756+00	3	6997	114
766	\N	\N	\N	f	2021-11-26 15:40:43.665482+00	2021-11-26 15:40:43.665489+00	3	6998	114
767	\N	\N	\N	f	2021-11-26 15:40:43.669964+00	2021-11-26 15:40:43.669989+00	3	6999	114
768	\N	\N	\N	f	2021-11-26 15:40:43.675805+00	2021-11-26 15:40:43.675815+00	3	7000	114
769	\N	\N	\N	f	2021-11-26 15:40:43.6808+00	2021-11-26 15:40:43.680807+00	3	7001	114
770	\N	\N	\N	f	2021-11-26 15:40:43.685566+00	2021-11-26 15:40:43.68558+00	3	7002	114
771	\N	\N	\N	f	2021-11-26 15:40:43.690425+00	2021-11-26 15:40:43.690435+00	3	7003	114
772	\N	\N	\N	f	2021-11-26 15:40:43.694963+00	2021-11-26 15:40:43.694971+00	3	7004	114
773	\N	\N	\N	f	2021-11-26 15:40:43.699293+00	2021-11-26 15:40:43.6993+00	3	7005	114
774	\N	\N	\N	f	2021-11-26 15:40:43.703901+00	2021-11-26 15:40:43.703909+00	3	7006	114
775	\N	\N	\N	f	2021-11-26 15:40:43.709193+00	2021-11-26 15:40:43.709202+00	3	7007	114
776	\N	\N	\N	f	2021-11-26 15:40:43.713983+00	2021-11-26 15:40:43.71399+00	3	7008	114
777	\N	\N	\N	f	2021-11-26 15:40:43.718374+00	2021-11-26 15:40:43.718382+00	3	7009	114
778	\N	\N	\N	f	2021-11-26 15:40:43.723032+00	2021-11-26 15:40:43.723041+00	3	7010	114
779	\N	\N	\N	f	2021-11-26 15:40:43.727555+00	2021-11-26 15:40:43.727562+00	3	7011	114
780	\N	\N	\N	f	2021-11-26 15:40:43.731801+00	2021-11-26 15:40:43.731807+00	3	7012	114
781	\N	\N	\N	f	2021-11-26 15:40:43.736381+00	2021-11-26 15:40:43.736394+00	3	7013	114
782	\N	\N	\N	f	2021-11-26 15:40:43.742392+00	2021-11-26 15:40:43.742401+00	3	7063	114
783	\N	\N	\N	f	2021-11-26 15:40:43.746983+00	2021-11-26 15:40:43.74699+00	3	7062	114
784	\N	\N	\N	f	2021-11-26 15:40:43.751428+00	2021-11-26 15:40:43.751435+00	3	7061	114
785	\N	\N	\N	f	2021-11-26 15:40:43.756087+00	2021-11-26 15:40:43.756095+00	3	7060	114
786	\N	\N	\N	f	2021-11-26 15:40:43.7605+00	2021-11-26 15:40:43.760506+00	3	7059	114
787	\N	\N	\N	f	2021-11-26 15:40:43.764904+00	2021-11-26 15:40:43.76491+00	3	7058	114
788	\N	\N	\N	f	2021-11-26 15:40:43.770603+00	2021-11-26 15:40:43.770613+00	3	7057	114
789	\N	\N	\N	f	2021-11-26 15:40:43.775883+00	2021-11-26 15:40:43.775892+00	3	7056	114
790	\N	\N	\N	f	2021-11-26 15:40:43.780702+00	2021-11-26 15:40:43.780711+00	3	7055	114
791	\N	\N	\N	f	2021-11-26 15:40:43.785377+00	2021-11-26 15:40:43.785385+00	3	7054	114
792	\N	\N	\N	f	2021-11-26 15:40:43.790103+00	2021-11-26 15:40:43.790111+00	3	7053	114
793	\N	\N	\N	f	2021-11-26 15:40:43.794599+00	2021-11-26 15:40:43.794605+00	3	7052	114
794	\N	\N	\N	f	2021-11-26 15:40:43.799085+00	2021-11-26 15:40:43.799091+00	3	7051	114
795	\N	\N	\N	f	2021-11-26 15:40:43.803607+00	2021-11-26 15:40:43.803614+00	3	7050	114
796	\N	\N	\N	f	2021-11-26 15:40:43.808577+00	2021-11-26 15:40:43.808586+00	3	7049	114
797	\N	\N	\N	f	2021-11-26 15:40:43.812999+00	2021-11-26 15:40:43.813006+00	3	7048	114
798	\N	\N	\N	f	2021-11-26 15:40:43.817581+00	2021-11-26 15:40:43.817587+00	3	7047	114
799	\N	\N	\N	f	2021-11-26 15:40:43.822443+00	2021-11-26 15:40:43.822451+00	3	7046	114
800	\N	\N	\N	f	2021-11-26 15:40:43.827375+00	2021-11-26 15:40:43.827384+00	3	7045	114
801	\N	\N	\N	f	2021-11-26 15:40:43.832275+00	2021-11-26 15:40:43.832284+00	3	7044	114
802	\N	\N	\N	f	2021-11-26 15:40:43.836634+00	2021-11-26 15:40:43.836643+00	3	7043	114
803	\N	\N	\N	f	2021-11-26 15:40:43.841363+00	2021-11-26 15:40:43.841372+00	3	7042	114
804	\N	\N	\N	f	2021-11-26 15:40:43.845603+00	2021-11-26 15:40:43.84561+00	3	7041	114
805	\N	\N	\N	f	2021-11-26 15:40:43.850008+00	2021-11-26 15:40:43.850014+00	3	7040	114
806	\N	\N	\N	f	2021-11-26 15:40:43.854475+00	2021-11-26 15:40:43.854483+00	3	7039	114
807	\N	\N	\N	f	2021-11-26 15:40:43.859333+00	2021-11-26 15:40:43.859346+00	3	7038	114
808	\N	\N	\N	f	2021-11-26 15:40:43.864075+00	2021-11-26 15:40:43.864083+00	3	7037	114
809	\N	\N	\N	f	2021-11-26 15:40:43.868505+00	2021-11-26 15:40:43.868512+00	3	7036	114
810	\N	\N	\N	f	2021-11-26 15:40:43.873237+00	2021-11-26 15:40:43.873247+00	3	7035	114
811	\N	\N	\N	f	2021-11-26 15:40:43.877696+00	2021-11-26 15:40:43.877703+00	3	7034	114
812	\N	\N	\N	f	2021-11-26 15:40:43.881919+00	2021-11-26 15:40:43.881925+00	3	7033	114
813	\N	\N	\N	f	2021-11-26 15:40:43.886408+00	2021-11-26 15:40:43.886417+00	3	7032	114
814	\N	\N	\N	f	2021-11-26 15:40:43.892149+00	2021-11-26 15:40:43.892161+00	3	7031	114
815	\N	\N	\N	f	2021-11-26 15:40:43.897053+00	2021-11-26 15:40:43.897062+00	3	7030	114
816	\N	\N	\N	f	2021-11-26 15:40:43.901545+00	2021-11-26 15:40:43.901553+00	3	7029	114
817	\N	\N	\N	f	2021-11-26 15:40:43.906397+00	2021-11-26 15:40:43.906405+00	3	7028	114
818	\N	\N	\N	f	2021-11-26 15:40:43.910926+00	2021-11-26 15:40:43.910933+00	3	7027	114
819	\N	\N	\N	f	2021-11-26 15:40:43.915544+00	2021-11-26 15:40:43.915552+00	3	7026	114
820	\N	\N	\N	f	2021-11-26 15:40:43.920708+00	2021-11-26 15:40:43.920723+00	3	7025	114
821	\N	\N	\N	f	2021-11-26 15:40:43.925957+00	2021-11-26 15:40:43.925966+00	3	7024	114
822	\N	\N	\N	f	2021-11-26 15:40:43.930589+00	2021-11-26 15:40:43.930596+00	3	7023	114
823	\N	\N	\N	f	2021-11-26 15:40:43.935421+00	2021-11-26 15:40:43.935429+00	3	7022	114
824	\N	\N	\N	f	2021-11-26 15:40:43.94007+00	2021-11-26 15:40:43.940078+00	3	7021	114
825	\N	\N	\N	f	2021-11-26 15:40:43.944971+00	2021-11-26 15:40:43.944978+00	3	7020	114
826	\N	\N	\N	f	2021-11-26 15:40:43.949469+00	2021-11-26 15:40:43.949477+00	3	7019	114
827	\N	\N	\N	f	2021-11-26 15:40:43.954031+00	2021-11-26 15:40:43.95404+00	3	7018	114
828	\N	\N	\N	f	2021-11-26 15:40:43.959162+00	2021-11-26 15:40:43.959171+00	3	7017	114
829	\N	\N	\N	f	2021-11-26 15:40:43.964033+00	2021-11-26 15:40:43.96404+00	3	7016	114
830	\N	\N	\N	f	2021-11-26 15:40:43.968569+00	2021-11-26 15:40:43.968576+00	3	7015	114
831	\N	\N	\N	f	2021-11-26 15:40:43.973172+00	2021-11-26 15:40:43.97318+00	3	7014	114
832	\N	\N	\N	f	2021-11-26 15:40:43.977388+00	2021-11-26 15:40:43.977394+00	3	7064	114
833	\N	\N	\N	f	2021-11-26 15:40:43.982357+00	2021-11-26 15:40:43.982367+00	3	7065	114
834	\N	\N	\N	f	2021-11-26 15:40:43.987012+00	2021-11-26 15:40:43.987022+00	3	7066	114
835	\N	\N	\N	f	2021-11-26 15:40:43.991591+00	2021-11-26 15:40:43.9916+00	3	7067	114
836	\N	\N	\N	f	2021-11-26 15:40:43.996027+00	2021-11-26 15:40:43.996034+00	3	7068	114
837	\N	\N	\N	f	2021-11-26 15:40:44.000462+00	2021-11-26 15:40:44.000468+00	3	7069	114
838	\N	\N	\N	f	2021-11-26 15:40:44.00511+00	2021-11-26 15:40:44.005117+00	3	7070	114
839	\N	\N	\N	f	2021-11-26 15:40:44.009403+00	2021-11-26 15:40:44.009409+00	3	7071	114
840	\N	\N	\N	f	2021-11-26 15:40:44.013947+00	2021-11-26 15:40:44.013953+00	3	7072	114
841	\N	\N	\N	f	2021-11-26 15:40:44.018343+00	2021-11-26 15:40:44.018349+00	3	7073	114
842	\N	\N	\N	f	2021-11-26 15:40:44.023572+00	2021-11-26 15:40:44.023581+00	3	7074	114
843	\N	\N	\N	f	2021-11-26 15:40:44.028146+00	2021-11-26 15:40:44.028153+00	3	7075	114
844	\N	\N	\N	f	2021-11-26 15:40:44.032602+00	2021-11-26 15:40:44.032608+00	3	7076	114
845	\N	\N	\N	f	2021-11-26 15:40:44.037269+00	2021-11-26 15:40:44.037296+00	3	7077	114
846	\N	\N	\N	f	2021-11-26 15:40:44.042632+00	2021-11-26 15:40:44.042642+00	3	7078	114
847	\N	\N	\N	f	2021-11-26 15:40:44.047195+00	2021-11-26 15:40:44.047203+00	3	7079	114
848	\N	\N	\N	f	2021-11-26 15:40:44.051709+00	2021-11-26 15:40:44.051716+00	3	7080	114
849	\N	\N	\N	f	2021-11-26 15:40:44.056601+00	2021-11-26 15:40:44.05661+00	3	7081	114
850	\N	\N	\N	f	2021-11-26 15:40:44.061292+00	2021-11-26 15:40:44.061298+00	3	7082	114
851	\N	\N	\N	f	2021-11-26 15:40:44.065835+00	2021-11-26 15:40:44.065842+00	3	7083	114
852	\N	\N	\N	f	2021-11-26 15:40:44.070207+00	2021-11-26 15:40:44.070214+00	3	7084	114
853	\N	\N	\N	f	2021-11-26 15:40:44.075281+00	2021-11-26 15:40:44.07529+00	3	7085	114
854	\N	\N	\N	f	2021-11-26 15:40:44.079705+00	2021-11-26 15:40:44.079712+00	3	7086	114
855	\N	\N	\N	f	2021-11-26 15:40:44.084108+00	2021-11-26 15:40:44.084115+00	3	7087	114
856	\N	\N	\N	f	2021-11-26 15:40:44.088597+00	2021-11-26 15:40:44.088605+00	3	7088	114
857	\N	\N	\N	f	2021-11-26 15:40:44.093186+00	2021-11-26 15:40:44.093193+00	3	7089	114
858	\N	\N	\N	f	2021-11-26 15:40:44.09748+00	2021-11-26 15:40:44.097486+00	3	7090	114
859	\N	\N	\N	f	2021-11-26 15:40:44.101947+00	2021-11-26 15:40:44.101956+00	3	7091	114
860	\N	\N	\N	f	2021-11-26 15:40:44.107054+00	2021-11-26 15:40:44.107063+00	3	7092	114
861	\N	\N	\N	f	2021-11-26 15:40:44.112003+00	2021-11-26 15:40:44.112011+00	3	7093	114
862	\N	\N	\N	f	2021-11-26 15:40:44.117192+00	2021-11-26 15:40:44.117198+00	3	7094	114
863	\N	\N	\N	f	2021-11-26 15:40:44.122351+00	2021-11-26 15:40:44.12236+00	3	7095	114
864	\N	\N	\N	f	2021-11-26 15:40:44.127108+00	2021-11-26 15:40:44.127114+00	3	7096	114
865	\N	\N	\N	f	2021-11-26 15:40:44.131378+00	2021-11-26 15:40:44.131384+00	3	7097	114
866	\N	\N	\N	f	2021-11-26 15:40:44.136087+00	2021-11-26 15:40:44.136094+00	3	7098	114
867	\N	\N	\N	f	2021-11-26 15:40:44.141548+00	2021-11-26 15:40:44.141557+00	3	7099	114
868	\N	\N	\N	f	2021-11-26 15:40:44.146209+00	2021-11-26 15:40:44.146217+00	3	7100	114
869	\N	\N	\N	f	2021-11-26 15:40:44.150699+00	2021-11-26 15:40:44.150707+00	3	7101	114
870	\N	\N	\N	f	2021-11-26 15:40:44.155408+00	2021-11-26 15:40:44.155416+00	3	7102	114
871	\N	\N	\N	f	2021-11-26 15:40:44.159885+00	2021-11-26 15:40:44.159892+00	3	7103	114
872	\N	\N	\N	f	2021-11-26 15:40:44.16449+00	2021-11-26 15:40:44.1645+00	3	7104	114
873	\N	\N	\N	f	2021-11-26 15:40:44.169421+00	2021-11-26 15:40:44.16943+00	3	7105	114
874	\N	\N	\N	f	2021-11-26 15:40:44.174578+00	2021-11-26 15:40:44.174587+00	3	7106	114
875	\N	\N	\N	f	2021-11-26 15:40:44.179524+00	2021-11-26 15:40:44.179532+00	3	7107	114
876	\N	\N	\N	f	2021-11-26 15:40:44.184096+00	2021-11-26 15:40:44.184102+00	3	7108	114
877	\N	\N	\N	f	2021-11-26 15:40:44.189109+00	2021-11-26 15:40:44.189116+00	3	7109	114
878	\N	\N	\N	f	2021-11-26 15:40:44.194185+00	2021-11-26 15:40:44.194191+00	3	7110	114
879	\N	\N	\N	f	2021-11-26 15:40:44.199281+00	2021-11-26 15:40:44.199288+00	3	7111	114
880	\N	\N	\N	f	2021-11-26 15:40:44.204207+00	2021-11-26 15:40:44.204219+00	3	7112	114
881	\N	\N	\N	f	2021-11-26 15:40:44.209348+00	2021-11-26 15:40:44.209356+00	3	7113	114
882	\N	\N	\N	f	2021-11-26 15:40:44.213808+00	2021-11-26 15:40:44.213815+00	3	7163	114
883	\N	\N	\N	f	2021-11-26 15:40:44.218576+00	2021-11-26 15:40:44.218583+00	3	7162	114
884	\N	\N	\N	f	2021-11-26 15:40:44.22356+00	2021-11-26 15:40:44.223569+00	3	7161	114
885	\N	\N	\N	f	2021-11-26 15:40:44.228646+00	2021-11-26 15:40:44.228654+00	3	7160	114
886	\N	\N	\N	f	2021-11-26 15:40:44.233195+00	2021-11-26 15:40:44.233203+00	3	7159	114
887	\N	\N	\N	f	2021-11-26 15:40:44.238095+00	2021-11-26 15:40:44.238105+00	3	7158	114
888	\N	\N	\N	f	2021-11-26 15:40:44.242646+00	2021-11-26 15:40:44.242653+00	3	7157	114
889	\N	\N	\N	f	2021-11-26 15:40:44.246989+00	2021-11-26 15:40:44.246995+00	3	7156	114
890	\N	\N	\N	f	2021-11-26 15:40:44.251348+00	2021-11-26 15:40:44.251364+00	3	7155	114
891	\N	\N	\N	f	2021-11-26 15:40:44.256145+00	2021-11-26 15:40:44.256156+00	3	7154	114
892	\N	\N	\N	f	2021-11-26 15:40:44.261092+00	2021-11-26 15:40:44.261101+00	3	7153	114
893	\N	\N	\N	f	2021-11-26 15:40:44.26544+00	2021-11-26 15:40:44.265447+00	3	7152	114
894	\N	\N	\N	f	2021-11-26 15:40:44.269717+00	2021-11-26 15:40:44.269723+00	3	7151	114
895	\N	\N	\N	f	2021-11-26 15:40:44.274712+00	2021-11-26 15:40:44.27472+00	3	7150	114
896	\N	\N	\N	f	2021-11-26 15:40:44.279531+00	2021-11-26 15:40:44.279538+00	3	7149	114
897	\N	\N	\N	f	2021-11-26 15:40:44.284024+00	2021-11-26 15:40:44.284031+00	3	7148	114
898	\N	\N	\N	f	2021-11-26 15:40:44.28965+00	2021-11-26 15:40:44.289663+00	3	7147	114
899	\N	\N	\N	f	2021-11-26 15:40:44.297876+00	2021-11-26 15:40:44.297885+00	3	7146	114
900	\N	\N	\N	f	2021-11-26 15:40:44.302556+00	2021-11-26 15:40:44.302565+00	3	7145	114
901	\N	\N	\N	f	2021-11-26 15:40:44.30782+00	2021-11-26 15:40:44.307829+00	3	7144	114
902	\N	\N	\N	f	2021-11-26 15:40:44.312392+00	2021-11-26 15:40:44.312399+00	3	7143	114
903	\N	\N	\N	f	2021-11-26 15:40:44.317251+00	2021-11-26 15:40:44.31726+00	3	7142	114
904	\N	\N	\N	f	2021-11-26 15:40:44.322166+00	2021-11-26 15:40:44.322175+00	3	7141	114
905	\N	\N	\N	f	2021-11-26 15:40:44.327028+00	2021-11-26 15:40:44.327037+00	3	7140	114
906	\N	\N	\N	f	2021-11-26 15:40:44.331441+00	2021-11-26 15:40:44.331449+00	3	7139	114
907	\N	\N	\N	f	2021-11-26 15:40:44.336078+00	2021-11-26 15:40:44.336084+00	3	7138	114
908	\N	\N	\N	f	2021-11-26 15:40:44.34048+00	2021-11-26 15:40:44.340487+00	3	7137	114
909	\N	\N	\N	f	2021-11-26 15:40:44.345053+00	2021-11-26 15:40:44.345059+00	3	7136	114
910	\N	\N	\N	f	2021-11-26 15:40:44.349401+00	2021-11-26 15:40:44.349407+00	3	7135	114
911	\N	\N	\N	f	2021-11-26 15:40:44.354078+00	2021-11-26 15:40:44.354086+00	3	7134	114
912	\N	\N	\N	f	2021-11-26 15:40:44.359208+00	2021-11-26 15:40:44.359217+00	3	7133	114
913	\N	\N	\N	f	2021-11-26 15:40:44.363819+00	2021-11-26 15:40:44.363825+00	3	7132	114
914	\N	\N	\N	f	2021-11-26 15:40:44.368706+00	2021-11-26 15:40:44.368712+00	3	7131	114
915	\N	\N	\N	f	2021-11-26 15:40:44.37396+00	2021-11-26 15:40:44.373972+00	3	7130	114
916	\N	\N	\N	f	2021-11-26 15:40:44.379169+00	2021-11-26 15:40:44.379178+00	3	7129	114
917	\N	\N	\N	f	2021-11-26 15:40:44.384202+00	2021-11-26 15:40:44.384209+00	3	7128	114
918	\N	\N	\N	f	2021-11-26 15:40:44.389093+00	2021-11-26 15:40:44.389102+00	3	7127	114
919	\N	\N	\N	f	2021-11-26 15:40:44.393837+00	2021-11-26 15:40:44.393844+00	3	7126	114
920	\N	\N	\N	f	2021-11-26 15:40:44.398362+00	2021-11-26 15:40:44.398369+00	3	7125	114
921	\N	\N	\N	f	2021-11-26 15:40:44.402946+00	2021-11-26 15:40:44.402954+00	3	7124	114
922	\N	\N	\N	f	2021-11-26 15:40:44.408159+00	2021-11-26 15:40:44.408169+00	3	7123	114
923	\N	\N	\N	f	2021-11-26 15:40:44.413239+00	2021-11-26 15:40:44.413248+00	3	7122	114
924	\N	\N	\N	f	2021-11-26 15:40:44.418064+00	2021-11-26 15:40:44.418071+00	3	7121	114
925	\N	\N	\N	f	2021-11-26 15:40:44.422862+00	2021-11-26 15:40:44.422871+00	3	7120	114
926	\N	\N	\N	f	2021-11-26 15:40:44.42737+00	2021-11-26 15:40:44.427379+00	3	7119	114
927	\N	\N	\N	f	2021-11-26 15:40:44.431606+00	2021-11-26 15:40:44.431612+00	3	7118	114
928	\N	\N	\N	f	2021-11-26 15:40:44.435881+00	2021-11-26 15:40:44.435888+00	3	7117	114
929	\N	\N	\N	f	2021-11-26 15:40:44.440868+00	2021-11-26 15:40:44.440879+00	3	7116	114
930	\N	\N	\N	f	2021-11-26 15:40:44.445467+00	2021-11-26 15:40:44.445475+00	3	7115	114
931	\N	\N	\N	f	2021-11-26 15:40:44.449821+00	2021-11-26 15:40:44.449828+00	3	7114	114
932	\N	\N	\N	f	2021-11-26 15:40:44.45439+00	2021-11-26 15:40:44.454398+00	3	7164	114
933	\N	\N	\N	f	2021-11-26 15:40:44.459285+00	2021-11-26 15:40:44.459293+00	3	7165	114
934	\N	\N	\N	f	2021-11-26 15:40:44.46405+00	2021-11-26 15:40:44.464056+00	3	7166	114
935	\N	\N	\N	f	2021-11-26 15:40:44.468991+00	2021-11-26 15:40:44.469004+00	3	7167	114
936	\N	\N	\N	f	2021-11-26 15:40:44.47409+00	2021-11-26 15:40:44.474099+00	3	7168	114
937	\N	\N	\N	f	2021-11-26 15:40:44.478749+00	2021-11-26 15:40:44.478757+00	3	7169	114
938	\N	\N	\N	f	2021-11-26 15:40:44.483199+00	2021-11-26 15:40:44.483205+00	3	7170	114
939	\N	\N	\N	f	2021-11-26 15:40:44.487708+00	2021-11-26 15:40:44.487715+00	3	7171	114
940	\N	\N	\N	f	2021-11-26 15:40:44.49216+00	2021-11-26 15:40:44.492166+00	3	7172	114
941	\N	\N	\N	f	2021-11-26 15:40:44.496668+00	2021-11-26 15:40:44.496674+00	3	7173	114
942	\N	\N	\N	f	2021-11-26 15:40:44.501201+00	2021-11-26 15:40:44.501207+00	3	7174	114
943	\N	\N	\N	f	2021-11-26 15:40:44.506297+00	2021-11-26 15:40:44.506307+00	3	7175	114
944	\N	\N	\N	f	2021-11-26 15:40:44.510919+00	2021-11-26 15:40:44.510927+00	3	7176	114
945	\N	\N	\N	f	2021-11-26 15:40:44.515368+00	2021-11-26 15:40:44.515374+00	3	7177	114
946	\N	\N	\N	f	2021-11-26 15:40:44.519888+00	2021-11-26 15:40:44.519903+00	3	7178	114
947	\N	\N	\N	f	2021-11-26 15:40:44.52575+00	2021-11-26 15:40:44.525763+00	3	7179	114
948	\N	\N	\N	f	2021-11-26 15:40:44.539255+00	2021-11-26 15:40:44.539269+00	3	7180	114
949	\N	\N	\N	f	2021-11-26 15:40:44.545282+00	2021-11-26 15:40:44.545293+00	3	7181	114
950	\N	\N	\N	f	2021-11-26 15:40:44.550737+00	2021-11-26 15:40:44.550747+00	3	7182	114
951	\N	\N	\N	f	2021-11-26 15:40:44.556123+00	2021-11-26 15:40:44.556133+00	3	7183	114
952	\N	\N	\N	f	2021-11-26 15:40:44.561575+00	2021-11-26 15:40:44.561584+00	3	7184	114
953	\N	\N	\N	f	2021-11-26 15:40:44.566278+00	2021-11-26 15:40:44.566286+00	3	7185	114
954	\N	\N	\N	f	2021-11-26 15:40:44.570911+00	2021-11-26 15:40:44.570919+00	3	7186	114
955	\N	\N	\N	f	2021-11-26 15:40:44.576069+00	2021-11-26 15:40:44.576078+00	3	7187	114
956	\N	\N	\N	f	2021-11-26 15:40:44.581107+00	2021-11-26 15:40:44.581114+00	3	7188	114
957	\N	\N	\N	f	2021-11-26 15:40:44.585876+00	2021-11-26 15:40:44.585883+00	3	7189	114
958	\N	\N	\N	f	2021-11-26 15:40:44.590648+00	2021-11-26 15:40:44.59066+00	3	7190	114
959	\N	\N	\N	f	2021-11-26 15:40:44.595123+00	2021-11-26 15:40:44.595131+00	3	7191	114
960	\N	\N	\N	f	2021-11-26 15:40:44.599934+00	2021-11-26 15:40:44.599944+00	3	7192	114
961	\N	\N	\N	f	2021-11-26 15:40:44.604667+00	2021-11-26 15:40:44.604678+00	3	7193	114
962	\N	\N	\N	f	2021-11-26 15:40:44.609374+00	2021-11-26 15:40:44.609382+00	3	7194	114
963	\N	\N	\N	f	2021-11-26 15:40:44.613849+00	2021-11-26 15:40:44.613856+00	3	7195	114
964	\N	\N	\N	f	2021-11-26 15:40:44.618458+00	2021-11-26 15:40:44.618465+00	3	7196	114
965	\N	\N	\N	f	2021-11-26 15:40:44.623028+00	2021-11-26 15:40:44.623036+00	3	7197	114
966	\N	\N	\N	f	2021-11-26 15:40:44.627772+00	2021-11-26 15:40:44.627781+00	3	7198	114
967	\N	\N	\N	f	2021-11-26 15:40:44.632154+00	2021-11-26 15:40:44.632161+00	3	7199	114
968	\N	\N	\N	f	2021-11-26 15:40:44.636537+00	2021-11-26 15:40:44.636544+00	3	7200	114
969	\N	\N	\N	f	2021-11-26 15:40:44.757255+00	2021-11-26 15:40:44.757287+00	3	7201	114
970	\N	\N	\N	f	2021-11-26 15:40:44.773716+00	2021-11-26 15:40:44.773748+00	3	7202	114
971	\N	\N	\N	f	2021-11-26 15:40:44.787386+00	2021-11-26 15:40:44.787428+00	3	7203	114
972	\N	\N	\N	f	2021-11-26 15:40:44.801185+00	2021-11-26 15:40:44.801206+00	3	7204	114
973	\N	\N	\N	f	2021-11-26 15:40:44.810789+00	2021-11-26 15:40:44.81081+00	3	7205	114
974	\N	\N	\N	f	2021-11-26 15:40:44.824273+00	2021-11-26 15:40:44.8243+00	3	7206	114
975	\N	\N	\N	f	2021-11-26 15:40:44.837482+00	2021-11-26 15:40:44.837512+00	3	7207	114
976	\N	\N	\N	f	2021-11-26 15:40:44.849296+00	2021-11-26 15:40:44.849316+00	3	7208	114
977	\N	\N	\N	f	2021-11-26 15:40:44.859246+00	2021-11-26 15:40:44.859266+00	3	7209	114
978	\N	\N	\N	f	2021-11-26 15:40:44.868584+00	2021-11-26 15:40:44.868601+00	3	7210	114
979	\N	\N	\N	f	2021-11-26 15:40:44.875761+00	2021-11-26 15:40:44.875771+00	3	7211	114
980	\N	\N	\N	f	2021-11-26 15:40:44.880966+00	2021-11-26 15:40:44.880974+00	3	7212	114
981	\N	\N	\N	f	2021-11-26 15:40:44.886073+00	2021-11-26 15:40:44.886081+00	3	7213	114
982	\N	\N	\N	f	2021-11-26 15:40:44.89076+00	2021-11-26 15:40:44.890768+00	3	7263	114
983	\N	\N	\N	f	2021-11-26 15:40:44.89553+00	2021-11-26 15:40:44.895537+00	3	7262	114
984	\N	\N	\N	f	2021-11-26 15:40:44.90008+00	2021-11-26 15:40:44.900086+00	3	7261	114
985	\N	\N	\N	f	2021-11-26 15:40:44.90552+00	2021-11-26 15:40:44.90553+00	3	7260	114
986	\N	\N	\N	f	2021-11-26 15:40:44.91096+00	2021-11-26 15:40:44.910969+00	3	7259	114
987	\N	\N	\N	f	2021-11-26 15:40:44.916359+00	2021-11-26 15:40:44.916366+00	3	7258	114
988	\N	\N	\N	f	2021-11-26 15:40:44.921635+00	2021-11-26 15:40:44.921644+00	3	7257	114
989	\N	\N	\N	f	2021-11-26 15:40:44.926721+00	2021-11-26 15:40:44.926729+00	3	7256	114
990	\N	\N	\N	f	2021-11-26 15:40:44.931632+00	2021-11-26 15:40:44.931639+00	3	7255	114
991	\N	\N	\N	f	2021-11-26 15:40:44.936445+00	2021-11-26 15:40:44.936452+00	3	7254	114
992	\N	\N	\N	f	2021-11-26 15:40:44.941956+00	2021-11-26 15:40:44.941965+00	3	7253	114
993	\N	\N	\N	f	2021-11-26 15:40:44.947008+00	2021-11-26 15:40:44.947015+00	3	7252	114
994	\N	\N	\N	f	2021-11-26 15:40:44.951853+00	2021-11-26 15:40:44.951861+00	3	7251	114
995	\N	\N	\N	f	2021-11-26 15:40:44.95705+00	2021-11-26 15:40:44.957058+00	3	7250	114
996	\N	\N	\N	f	2021-11-26 15:40:44.962153+00	2021-11-26 15:40:44.96216+00	3	7249	114
997	\N	\N	\N	f	2021-11-26 15:40:44.967236+00	2021-11-26 15:40:44.967246+00	3	7248	114
998	\N	\N	\N	f	2021-11-26 15:40:44.972224+00	2021-11-26 15:40:44.972233+00	3	7247	114
999	\N	\N	\N	f	2021-11-26 15:40:44.976963+00	2021-11-26 15:40:44.976972+00	3	7246	114
1000	\N	\N	\N	f	2021-11-26 15:40:44.981605+00	2021-11-26 15:40:44.981613+00	3	7245	114
1001	\N	\N	\N	f	2021-11-26 15:40:44.986419+00	2021-11-26 15:40:44.986429+00	3	7244	114
1002	\N	\N	\N	f	2021-11-26 15:40:44.990989+00	2021-11-26 15:40:44.990996+00	3	7243	114
1003	\N	\N	\N	f	2021-11-26 15:40:44.995912+00	2021-11-26 15:40:44.995918+00	3	7242	114
1004	\N	\N	\N	f	2021-11-26 15:40:45.000719+00	2021-11-26 15:40:45.000725+00	3	7241	114
1005	\N	\N	\N	f	2021-11-26 15:40:45.006536+00	2021-11-26 15:40:45.006546+00	3	7240	114
1006	\N	\N	\N	f	2021-11-26 15:40:45.011443+00	2021-11-26 15:40:45.011451+00	3	7239	114
1007	\N	\N	\N	f	2021-11-26 15:40:45.016481+00	2021-11-26 15:40:45.016488+00	3	7238	114
1008	\N	\N	\N	f	2021-11-26 15:40:45.021931+00	2021-11-26 15:40:45.02194+00	3	7237	114
1009	\N	\N	\N	f	2021-11-26 15:40:45.027687+00	2021-11-26 15:40:45.027696+00	3	7236	114
1010	\N	\N	\N	f	2021-11-26 15:40:45.032731+00	2021-11-26 15:40:45.032739+00	3	7235	114
1011	\N	\N	\N	f	2021-11-26 15:40:45.0379+00	2021-11-26 15:40:45.03791+00	3	7234	114
1012	\N	\N	\N	f	2021-11-26 15:40:45.042662+00	2021-11-26 15:40:45.04267+00	3	7233	114
1013	\N	\N	\N	f	2021-11-26 15:40:45.047313+00	2021-11-26 15:40:45.047319+00	3	7232	114
1014	\N	\N	\N	f	2021-11-26 15:40:45.051977+00	2021-11-26 15:40:45.051984+00	3	7231	114
1015	\N	\N	\N	f	2021-11-26 15:40:45.05691+00	2021-11-26 15:40:45.056919+00	3	7230	114
1016	\N	\N	\N	f	2021-11-26 15:40:45.061855+00	2021-11-26 15:40:45.061864+00	3	7229	114
1017	\N	\N	\N	f	2021-11-26 15:40:45.066437+00	2021-11-26 15:40:45.066444+00	3	7228	114
1018	\N	\N	\N	f	2021-11-26 15:40:45.070918+00	2021-11-26 15:40:45.070926+00	3	7227	114
1019	\N	\N	\N	f	2021-11-26 15:40:45.076107+00	2021-11-26 15:40:45.076115+00	3	7226	114
1020	\N	\N	\N	f	2021-11-26 15:40:45.08112+00	2021-11-26 15:40:45.081127+00	3	7225	114
1021	\N	\N	\N	f	2021-11-26 15:40:45.086232+00	2021-11-26 15:40:45.086247+00	3	7224	114
1022	\N	\N	\N	f	2021-11-26 15:40:45.092169+00	2021-11-26 15:40:45.092179+00	3	7223	114
1023	\N	\N	\N	f	2021-11-26 15:40:45.097016+00	2021-11-26 15:40:45.097023+00	3	7222	114
1024	\N	\N	\N	f	2021-11-26 15:40:45.101418+00	2021-11-26 15:40:45.101426+00	3	7221	114
1025	\N	\N	\N	f	2021-11-26 15:40:45.106111+00	2021-11-26 15:40:45.10612+00	3	7220	114
1026	\N	\N	\N	f	2021-11-26 15:40:45.110661+00	2021-11-26 15:40:45.110668+00	3	7219	114
1027	\N	\N	\N	f	2021-11-26 15:40:45.115111+00	2021-11-26 15:40:45.115117+00	3	7218	114
1028	\N	\N	\N	f	2021-11-26 15:40:45.120213+00	2021-11-26 15:40:45.120223+00	3	7217	114
1029	\N	\N	\N	f	2021-11-26 15:40:45.125232+00	2021-11-26 15:40:45.125241+00	3	7216	114
1030	\N	\N	\N	f	2021-11-26 15:40:45.129806+00	2021-11-26 15:40:45.129814+00	3	7215	114
1031	\N	\N	\N	f	2021-11-26 15:40:45.134394+00	2021-11-26 15:40:45.134401+00	3	7214	114
1032	\N	\N	\N	f	2021-11-26 15:40:45.139088+00	2021-11-26 15:40:45.139095+00	3	7264	114
1033	\N	\N	\N	f	2021-11-26 15:40:45.14391+00	2021-11-26 15:40:45.143917+00	3	7265	114
1034	\N	\N	\N	f	2021-11-26 15:40:45.148495+00	2021-11-26 15:40:45.148502+00	3	7266	114
1035	\N	\N	\N	f	2021-11-26 15:40:45.153102+00	2021-11-26 15:40:45.15311+00	3	7267	114
1036	\N	\N	\N	f	2021-11-26 15:40:45.158192+00	2021-11-26 15:40:45.1582+00	3	7268	114
1037	\N	\N	\N	f	2021-11-26 15:40:45.162824+00	2021-11-26 15:40:45.162831+00	3	7269	114
1038	\N	\N	\N	f	2021-11-26 15:40:45.167547+00	2021-11-26 15:40:45.167553+00	3	7270	114
1039	\N	\N	\N	f	2021-11-26 15:40:45.172594+00	2021-11-26 15:40:45.172603+00	3	7271	114
1040	\N	\N	\N	f	2021-11-26 15:40:45.177258+00	2021-11-26 15:40:45.177267+00	3	7272	114
1041	\N	\N	\N	f	2021-11-26 15:40:45.182047+00	2021-11-26 15:40:45.182056+00	3	7273	114
1042	\N	\N	\N	f	2021-11-26 15:40:45.186565+00	2021-11-26 15:40:45.186574+00	3	7274	114
1043	\N	\N	\N	f	2021-11-26 15:40:45.191322+00	2021-11-26 15:40:45.191331+00	3	7275	114
1044	\N	\N	\N	f	2021-11-26 15:40:45.195669+00	2021-11-26 15:40:45.195676+00	3	7276	114
1045	\N	\N	\N	f	2021-11-26 15:40:45.200099+00	2021-11-26 15:40:45.200106+00	3	7277	114
1046	\N	\N	\N	f	2021-11-26 15:40:45.204434+00	2021-11-26 15:40:45.204442+00	3	7278	114
1047	\N	\N	\N	f	2021-11-26 15:40:45.209066+00	2021-11-26 15:40:45.20908+00	3	7279	114
1048	\N	\N	\N	f	2021-11-26 15:40:45.213563+00	2021-11-26 15:40:45.21357+00	3	7280	114
1049	\N	\N	\N	f	2021-11-26 15:40:45.218075+00	2021-11-26 15:40:45.218082+00	3	7281	114
1050	\N	\N	\N	f	2021-11-26 15:40:45.223007+00	2021-11-26 15:40:45.223018+00	3	7282	114
1051	\N	\N	\N	f	2021-11-26 15:40:45.228061+00	2021-11-26 15:40:45.228068+00	3	7283	114
1052	\N	\N	\N	f	2021-11-26 15:40:45.23304+00	2021-11-26 15:40:45.233047+00	3	7284	114
1053	\N	\N	\N	f	2021-11-26 15:40:45.238534+00	2021-11-26 15:40:45.238547+00	3	7285	114
1054	\N	\N	\N	f	2021-11-26 15:40:45.243934+00	2021-11-26 15:40:45.243944+00	3	7286	114
1055	\N	\N	\N	f	2021-11-26 15:40:45.248684+00	2021-11-26 15:40:45.248692+00	3	7287	114
1056	\N	\N	\N	f	2021-11-26 15:40:45.253541+00	2021-11-26 15:40:45.25355+00	3	7288	114
1057	\N	\N	\N	f	2021-11-26 15:40:45.258694+00	2021-11-26 15:40:45.258701+00	3	7289	114
1058	\N	\N	\N	f	2021-11-26 15:40:45.26398+00	2021-11-26 15:40:45.263987+00	3	7290	114
1059	\N	\N	\N	f	2021-11-26 15:40:45.269095+00	2021-11-26 15:40:45.269103+00	3	7291	114
1060	\N	\N	\N	f	2021-11-26 15:40:45.274336+00	2021-11-26 15:40:45.274345+00	3	7292	114
1061	\N	\N	\N	f	2021-11-26 15:40:45.279219+00	2021-11-26 15:40:45.279227+00	3	7293	114
1062	\N	\N	\N	f	2021-11-26 15:40:45.284423+00	2021-11-26 15:40:45.284431+00	3	7294	114
1063	\N	\N	\N	f	2021-11-26 15:40:45.289531+00	2021-11-26 15:40:45.289539+00	3	7295	114
1064	\N	\N	\N	f	2021-11-26 15:40:45.294502+00	2021-11-26 15:40:45.294509+00	3	7296	114
1065	\N	\N	\N	f	2021-11-26 15:40:45.299649+00	2021-11-26 15:40:45.299656+00	3	7297	114
1066	\N	\N	\N	f	2021-11-26 15:40:45.304717+00	2021-11-26 15:40:45.304732+00	3	7298	114
1067	\N	\N	\N	f	2021-11-26 15:40:45.310091+00	2021-11-26 15:40:45.3101+00	3	7299	114
1068	\N	\N	\N	f	2021-11-26 15:40:45.314796+00	2021-11-26 15:40:45.314804+00	3	7300	114
1069	\N	\N	\N	f	2021-11-26 15:40:45.319664+00	2021-11-26 15:40:45.319672+00	3	7301	114
1070	\N	\N	\N	f	2021-11-26 15:40:45.324519+00	2021-11-26 15:40:45.324527+00	3	7302	114
1071	\N	\N	\N	f	2021-11-26 15:40:45.329062+00	2021-11-26 15:40:45.329069+00	3	7303	114
1072	\N	\N	\N	f	2021-11-26 15:40:45.334156+00	2021-11-26 15:40:45.334164+00	3	7304	114
1073	\N	\N	\N	f	2021-11-26 15:40:45.338872+00	2021-11-26 15:40:45.338881+00	3	7305	114
1074	\N	\N	\N	f	2021-11-26 15:40:45.343679+00	2021-11-26 15:40:45.343687+00	3	7306	114
1075	\N	\N	\N	f	2021-11-26 15:40:45.348244+00	2021-11-26 15:40:45.348252+00	3	7307	114
1076	\N	\N	\N	f	2021-11-26 15:40:45.352747+00	2021-11-26 15:40:45.352753+00	3	7308	114
1077	\N	\N	\N	f	2021-11-26 15:40:45.357344+00	2021-11-26 15:40:45.357351+00	3	7309	114
1078	\N	\N	\N	f	2021-11-26 15:40:45.362053+00	2021-11-26 15:40:45.362059+00	3	7310	114
1079	\N	\N	\N	f	2021-11-26 15:40:45.369682+00	2021-11-26 15:40:45.36969+00	3	7311	114
1080	\N	\N	\N	f	2021-11-26 15:40:45.374762+00	2021-11-26 15:40:45.374771+00	3	7312	114
1081	\N	\N	\N	f	2021-11-26 15:40:45.379245+00	2021-11-26 15:40:45.379252+00	3	7313	114
1082	\N	\N	\N	f	2021-11-26 15:40:45.383765+00	2021-11-26 15:40:45.383771+00	3	7363	114
1083	\N	\N	\N	f	2021-11-26 15:40:45.388964+00	2021-11-26 15:40:45.388972+00	3	7362	114
1084	\N	\N	\N	f	2021-11-26 15:40:45.394009+00	2021-11-26 15:40:45.394018+00	3	7361	114
1085	\N	\N	\N	f	2021-11-26 15:40:45.398431+00	2021-11-26 15:40:45.398438+00	3	7360	114
1086	\N	\N	\N	f	2021-11-26 15:40:45.40295+00	2021-11-26 15:40:45.402959+00	3	7359	114
1087	\N	\N	\N	f	2021-11-26 15:40:45.407732+00	2021-11-26 15:40:45.407741+00	3	7358	114
1088	\N	\N	\N	f	2021-11-26 15:40:45.412273+00	2021-11-26 15:40:45.412279+00	3	7357	114
1089	\N	\N	\N	f	2021-11-26 15:40:45.416783+00	2021-11-26 15:40:45.41679+00	3	7356	114
1090	\N	\N	\N	f	2021-11-26 15:40:45.421247+00	2021-11-26 15:40:45.421256+00	3	7355	114
1091	\N	\N	\N	f	2021-11-26 15:40:45.425956+00	2021-11-26 15:40:45.425966+00	3	7354	114
1092	\N	\N	\N	f	2021-11-26 15:40:45.430594+00	2021-11-26 15:40:45.430601+00	3	7353	114
1093	\N	\N	\N	f	2021-11-26 15:40:45.435025+00	2021-11-26 15:40:45.435032+00	3	7352	114
1094	\N	\N	\N	f	2021-11-26 15:40:45.439765+00	2021-11-26 15:40:45.439775+00	3	7351	114
1095	\N	\N	\N	f	2021-11-26 15:40:45.444523+00	2021-11-26 15:40:45.444531+00	3	7350	114
1096	\N	\N	\N	f	2021-11-26 15:40:45.449246+00	2021-11-26 15:40:45.449252+00	3	7349	114
1097	\N	\N	\N	f	2021-11-26 15:40:45.454917+00	2021-11-26 15:40:45.454928+00	3	7348	114
1098	\N	\N	\N	f	2021-11-26 15:40:45.46013+00	2021-11-26 15:40:45.460139+00	3	7347	114
1099	\N	\N	\N	f	2021-11-26 15:40:45.464707+00	2021-11-26 15:40:45.464715+00	3	7346	114
1100	\N	\N	\N	f	2021-11-26 15:40:45.469381+00	2021-11-26 15:40:45.469389+00	3	7345	114
1101	\N	\N	\N	f	2021-11-26 15:40:45.474174+00	2021-11-26 15:40:45.474183+00	3	7344	114
1102	\N	\N	\N	f	2021-11-26 15:40:45.478753+00	2021-11-26 15:40:45.47876+00	3	7343	114
1103	\N	\N	\N	f	2021-11-26 15:40:45.483291+00	2021-11-26 15:40:45.483297+00	3	7342	114
1104	\N	\N	\N	f	2021-11-26 15:40:45.488489+00	2021-11-26 15:40:45.488499+00	3	7341	114
1105	\N	\N	\N	f	2021-11-26 15:40:45.493193+00	2021-11-26 15:40:45.493202+00	3	7340	114
1106	\N	\N	\N	f	2021-11-26 15:40:45.49793+00	2021-11-26 15:40:45.497937+00	3	7339	114
1107	\N	\N	\N	f	2021-11-26 15:40:45.502862+00	2021-11-26 15:40:45.502868+00	3	7338	114
1108	\N	\N	\N	f	2021-11-26 15:40:45.507957+00	2021-11-26 15:40:45.507964+00	3	7337	114
1109	\N	\N	\N	f	2021-11-26 15:40:45.512734+00	2021-11-26 15:40:45.51274+00	3	7336	114
1110	\N	\N	\N	f	2021-11-26 15:40:45.517647+00	2021-11-26 15:40:45.517653+00	3	7335	114
1111	\N	\N	\N	f	2021-11-26 15:40:45.5225+00	2021-11-26 15:40:45.522508+00	3	7334	114
1112	\N	\N	\N	f	2021-11-26 15:40:45.527712+00	2021-11-26 15:40:45.52772+00	3	7333	114
1113	\N	\N	\N	f	2021-11-26 15:40:45.532443+00	2021-11-26 15:40:45.532449+00	3	7332	114
1114	\N	\N	\N	f	2021-11-26 15:40:45.537722+00	2021-11-26 15:40:45.537732+00	3	7331	114
1115	\N	\N	\N	f	2021-11-26 15:40:45.542841+00	2021-11-26 15:40:45.542849+00	3	7330	114
1116	\N	\N	\N	f	2021-11-26 15:40:45.548128+00	2021-11-26 15:40:45.548137+00	3	7329	114
1117	\N	\N	\N	f	2021-11-26 15:40:45.553076+00	2021-11-26 15:40:45.553084+00	3	7328	114
1118	\N	\N	\N	f	2021-11-26 15:40:45.558622+00	2021-11-26 15:40:45.558631+00	3	7327	114
1119	\N	\N	\N	f	2021-11-26 15:40:45.563855+00	2021-11-26 15:40:45.563863+00	3	7326	114
1120	\N	\N	\N	f	2021-11-26 15:40:45.569055+00	2021-11-26 15:40:45.569063+00	3	7325	114
1121	\N	\N	\N	f	2021-11-26 15:40:45.574218+00	2021-11-26 15:40:45.574228+00	3	7324	114
1122	\N	\N	\N	f	2021-11-26 15:40:45.579576+00	2021-11-26 15:40:45.579585+00	3	7323	114
1123	\N	\N	\N	f	2021-11-26 15:40:45.584996+00	2021-11-26 15:40:45.585004+00	3	7322	114
1124	\N	\N	\N	f	2021-11-26 15:40:45.590606+00	2021-11-26 15:40:45.590615+00	3	7321	114
1125	\N	\N	\N	f	2021-11-26 15:40:45.596163+00	2021-11-26 15:40:45.59617+00	3	7320	114
1126	\N	\N	\N	f	2021-11-26 15:40:45.601679+00	2021-11-26 15:40:45.601687+00	3	7319	114
1127	\N	\N	\N	f	2021-11-26 15:40:45.607569+00	2021-11-26 15:40:45.60758+00	3	7318	114
1128	\N	\N	\N	f	2021-11-26 15:40:45.613192+00	2021-11-26 15:40:45.613201+00	3	7317	114
1129	\N	\N	\N	f	2021-11-26 15:40:45.618509+00	2021-11-26 15:40:45.618517+00	3	7316	114
1130	\N	\N	\N	f	2021-11-26 15:40:45.62382+00	2021-11-26 15:40:45.623829+00	3	7315	114
1131	\N	\N	\N	f	2021-11-26 15:40:45.629246+00	2021-11-26 15:40:45.629253+00	3	7314	114
1132	\N	\N	\N	f	2021-11-26 15:40:45.634216+00	2021-11-26 15:40:45.634222+00	3	7364	114
1133	\N	\N	\N	f	2021-11-26 15:40:45.639914+00	2021-11-26 15:40:45.639923+00	3	7365	114
1134	\N	\N	\N	f	2021-11-26 15:40:45.64518+00	2021-11-26 15:40:45.645189+00	3	7366	114
1135	\N	\N	\N	f	2021-11-26 15:40:45.650275+00	2021-11-26 15:40:45.650282+00	3	7367	114
1136	\N	\N	\N	f	2021-11-26 15:40:45.65498+00	2021-11-26 15:40:45.654989+00	3	7368	114
1137	\N	\N	\N	f	2021-11-26 15:40:45.659521+00	2021-11-26 15:40:45.659527+00	3	7369	114
1138	\N	\N	\N	f	2021-11-26 15:40:45.664063+00	2021-11-26 15:40:45.66407+00	3	7370	114
1139	\N	\N	\N	f	2021-11-26 15:40:45.668436+00	2021-11-26 15:40:45.668443+00	3	7371	114
1140	\N	\N	\N	f	2021-11-26 15:40:45.673635+00	2021-11-26 15:40:45.673646+00	3	7372	114
1141	\N	\N	\N	f	2021-11-26 15:40:45.678437+00	2021-11-26 15:40:45.678446+00	3	7373	114
1142	\N	\N	\N	f	2021-11-26 15:40:45.682714+00	2021-11-26 15:40:45.682721+00	3	7374	114
1143	\N	\N	\N	f	2021-11-26 15:40:45.687443+00	2021-11-26 15:40:45.687453+00	3	7375	114
1144	\N	\N	\N	f	2021-11-26 15:40:45.692074+00	2021-11-26 15:40:45.692082+00	3	7376	114
1145	\N	\N	\N	f	2021-11-26 15:40:45.696541+00	2021-11-26 15:40:45.696547+00	3	7377	114
1146	\N	\N	\N	f	2021-11-26 15:40:45.701731+00	2021-11-26 15:40:45.70174+00	3	7378	114
1147	\N	\N	\N	f	2021-11-26 15:40:45.70662+00	2021-11-26 15:40:45.706629+00	3	7379	114
1148	\N	\N	\N	f	2021-11-26 15:40:45.711381+00	2021-11-26 15:40:45.71139+00	3	7380	114
1149	\N	\N	\N	f	2021-11-26 15:40:45.716217+00	2021-11-26 15:40:45.716224+00	3	7381	114
1150	\N	\N	\N	f	2021-11-26 15:40:45.721252+00	2021-11-26 15:40:45.721259+00	3	7382	114
1151	\N	\N	\N	f	2021-11-26 15:40:45.726127+00	2021-11-26 15:40:45.726134+00	3	7383	114
1152	\N	\N	\N	f	2021-11-26 15:40:45.730933+00	2021-11-26 15:40:45.73094+00	3	7384	114
1153	\N	\N	\N	f	2021-11-26 15:40:45.735625+00	2021-11-26 15:40:45.735632+00	3	7385	114
1154	\N	\N	\N	f	2021-11-26 15:40:45.741425+00	2021-11-26 15:40:45.741434+00	3	7386	114
1155	\N	\N	\N	f	2021-11-26 15:40:45.746105+00	2021-11-26 15:40:45.746112+00	3	7387	114
1156	\N	\N	\N	f	2021-11-26 15:40:45.750542+00	2021-11-26 15:40:45.750549+00	3	7388	114
1157	\N	\N	\N	f	2021-11-26 15:40:45.755886+00	2021-11-26 15:40:45.755894+00	3	7389	114
1158	\N	\N	\N	f	2021-11-26 15:40:45.76096+00	2021-11-26 15:40:45.760968+00	3	7390	114
1159	\N	\N	\N	f	2021-11-26 15:40:45.765606+00	2021-11-26 15:40:45.765614+00	3	7391	114
1160	\N	\N	\N	f	2021-11-26 15:40:45.770194+00	2021-11-26 15:40:45.770203+00	3	7392	114
1161	\N	\N	\N	f	2021-11-26 15:40:45.774928+00	2021-11-26 15:40:45.774937+00	3	7393	114
1162	\N	\N	\N	f	2021-11-26 15:40:45.779627+00	2021-11-26 15:40:45.779634+00	3	7394	114
1163	\N	\N	\N	f	2021-11-26 15:40:45.7841+00	2021-11-26 15:40:45.784106+00	3	7395	114
1164	\N	\N	\N	f	2021-11-26 15:40:45.788931+00	2021-11-26 15:40:45.78894+00	3	7396	114
1165	\N	\N	\N	f	2021-11-26 15:40:45.794491+00	2021-11-26 15:40:45.794499+00	3	7397	114
1166	\N	\N	\N	f	2021-11-26 15:40:45.799316+00	2021-11-26 15:40:45.799323+00	3	7398	114
1167	\N	\N	\N	f	2021-11-26 15:40:45.804198+00	2021-11-26 15:40:45.804207+00	3	7399	114
1168	\N	\N	\N	f	2021-11-26 15:40:45.809342+00	2021-11-26 15:40:45.809351+00	3	7400	114
1169	\N	\N	\N	f	2021-11-26 15:40:45.814238+00	2021-11-26 15:40:45.814245+00	3	7401	114
1170	\N	\N	\N	f	2021-11-26 15:40:45.819001+00	2021-11-26 15:40:45.81901+00	3	7402	114
1171	\N	\N	\N	f	2021-11-26 15:40:45.824431+00	2021-11-26 15:40:45.824441+00	3	7403	114
1172	\N	\N	\N	f	2021-11-26 15:40:45.829449+00	2021-11-26 15:40:45.829457+00	3	7404	114
1173	\N	\N	\N	f	2021-11-26 15:40:45.834463+00	2021-11-26 15:40:45.834471+00	3	7405	114
1174	\N	\N	\N	f	2021-11-26 15:40:45.83949+00	2021-11-26 15:40:45.839498+00	3	7406	114
1175	\N	\N	\N	f	2021-11-26 15:40:45.844313+00	2021-11-26 15:40:45.84432+00	3	7407	114
1176	\N	\N	\N	f	2021-11-26 15:40:45.849533+00	2021-11-26 15:40:45.849545+00	3	7408	114
1177	\N	\N	\N	f	2021-11-26 15:40:45.855328+00	2021-11-26 15:40:45.855338+00	3	7409	114
1178	\N	\N	\N	f	2021-11-26 15:40:45.860551+00	2021-11-26 15:40:45.86056+00	3	7410	114
1179	\N	\N	\N	f	2021-11-26 15:40:45.865572+00	2021-11-26 15:40:45.865579+00	3	7411	114
1180	\N	\N	\N	f	2021-11-26 15:40:45.870756+00	2021-11-26 15:40:45.870763+00	3	7412	114
1181	\N	\N	\N	f	2021-11-26 15:40:45.875909+00	2021-11-26 15:40:45.875916+00	3	7413	114
1182	\N	\N	\N	f	2021-11-26 15:40:45.881101+00	2021-11-26 15:40:45.881108+00	3	7463	114
1183	\N	\N	\N	f	2021-11-26 15:40:45.886318+00	2021-11-26 15:40:45.886329+00	3	7462	114
1184	\N	\N	\N	f	2021-11-26 15:40:45.891753+00	2021-11-26 15:40:45.891761+00	3	7461	114
1185	\N	\N	\N	f	2021-11-26 15:40:45.896503+00	2021-11-26 15:40:45.89651+00	3	7460	114
1186	\N	\N	\N	f	2021-11-26 15:40:45.901135+00	2021-11-26 15:40:45.901142+00	3	7459	114
1187	\N	\N	\N	f	2021-11-26 15:40:45.906218+00	2021-11-26 15:40:45.906227+00	3	7458	114
1188	\N	\N	\N	f	2021-11-26 15:40:45.911802+00	2021-11-26 15:40:45.911812+00	3	7457	114
1189	\N	\N	\N	f	2021-11-26 15:40:45.916526+00	2021-11-26 15:40:45.916534+00	3	7456	114
1190	\N	\N	\N	f	2021-11-26 15:40:45.921227+00	2021-11-26 15:40:45.921238+00	3	7455	114
1191	\N	\N	\N	f	2021-11-26 15:40:45.926119+00	2021-11-26 15:40:45.926127+00	3	7454	114
1192	\N	\N	\N	f	2021-11-26 15:40:45.931001+00	2021-11-26 15:40:45.931008+00	3	7453	114
1193	\N	\N	\N	f	2021-11-26 15:40:45.935408+00	2021-11-26 15:40:45.935415+00	3	7452	114
1194	\N	\N	\N	f	2021-11-26 15:40:45.940122+00	2021-11-26 15:40:45.940135+00	3	7451	114
1195	\N	\N	\N	f	2021-11-26 15:40:45.944953+00	2021-11-26 15:40:45.944961+00	3	7450	114
1196	\N	\N	\N	f	2021-11-26 15:40:45.950066+00	2021-11-26 15:40:45.950074+00	3	7449	114
1197	\N	\N	\N	f	2021-11-26 15:40:45.95482+00	2021-11-26 15:40:45.95483+00	3	7448	114
1198	\N	\N	\N	f	2021-11-26 15:40:45.959644+00	2021-11-26 15:40:45.959653+00	3	7447	114
1199	\N	\N	\N	f	2021-11-26 15:40:45.964011+00	2021-11-26 15:40:45.964018+00	3	7446	114
1200	\N	\N	\N	f	2021-11-26 15:40:45.968589+00	2021-11-26 15:40:45.968623+00	3	7445	114
1201	\N	\N	\N	f	2021-11-26 15:40:45.974543+00	2021-11-26 15:40:45.974553+00	3	7444	114
1202	\N	\N	\N	f	2021-11-26 15:40:45.979428+00	2021-11-26 15:40:45.979436+00	3	7443	114
1203	\N	\N	\N	f	2021-11-26 15:40:45.983831+00	2021-11-26 15:40:45.983838+00	3	7442	114
1204	\N	\N	\N	f	2021-11-26 15:40:45.9886+00	2021-11-26 15:40:45.988608+00	3	7441	114
1205	\N	\N	\N	f	2021-11-26 15:40:45.993273+00	2021-11-26 15:40:45.99328+00	3	7440	114
1206	\N	\N	\N	f	2021-11-26 15:40:45.997817+00	2021-11-26 15:40:45.997823+00	3	7439	114
1207	\N	\N	\N	f	2021-11-26 15:40:46.002969+00	2021-11-26 15:40:46.00298+00	3	7438	114
1208	\N	\N	\N	f	2021-11-26 15:40:46.011489+00	2021-11-26 15:40:46.011499+00	3	7437	114
1209	\N	\N	\N	f	2021-11-26 15:40:46.016546+00	2021-11-26 15:40:46.016553+00	3	7436	114
1210	\N	\N	\N	f	2021-11-26 15:40:46.021301+00	2021-11-26 15:40:46.02131+00	3	7435	114
1211	\N	\N	\N	f	2021-11-26 15:40:46.026053+00	2021-11-26 15:40:46.026061+00	3	7434	114
1212	\N	\N	\N	f	2021-11-26 15:40:46.030682+00	2021-11-26 15:40:46.030689+00	3	7433	114
1213	\N	\N	\N	f	2021-11-26 15:40:46.036815+00	2021-11-26 15:40:46.036824+00	3	7432	114
1214	\N	\N	\N	f	2021-11-26 15:40:46.042189+00	2021-11-26 15:40:46.042199+00	3	7431	114
1215	\N	\N	\N	f	2021-11-26 15:40:46.047106+00	2021-11-26 15:40:46.047114+00	3	7430	114
1216	\N	\N	\N	f	2021-11-26 15:40:46.051959+00	2021-11-26 15:40:46.051966+00	3	7429	114
1217	\N	\N	\N	f	2021-11-26 15:40:46.057258+00	2021-11-26 15:40:46.057267+00	3	7428	114
1218	\N	\N	\N	f	2021-11-26 15:40:46.06223+00	2021-11-26 15:40:46.062238+00	3	7427	114
1219	\N	\N	\N	f	2021-11-26 15:40:46.067346+00	2021-11-26 15:40:46.067362+00	3	7426	114
1220	\N	\N	\N	f	2021-11-26 15:40:46.072582+00	2021-11-26 15:40:46.072591+00	3	7425	114
1221	\N	\N	\N	f	2021-11-26 15:40:46.077729+00	2021-11-26 15:40:46.077738+00	3	7424	114
1222	\N	\N	\N	f	2021-11-26 15:40:46.082434+00	2021-11-26 15:40:46.082442+00	3	7423	114
1223	\N	\N	\N	f	2021-11-26 15:40:46.086959+00	2021-11-26 15:40:46.086966+00	3	7422	114
1224	\N	\N	\N	f	2021-11-26 15:40:46.091543+00	2021-11-26 15:40:46.09155+00	3	7421	114
1225	\N	\N	\N	f	2021-11-26 15:40:46.096079+00	2021-11-26 15:40:46.096086+00	3	7420	114
1226	\N	\N	\N	f	2021-11-26 15:40:46.100841+00	2021-11-26 15:40:46.100847+00	3	7419	114
1227	\N	\N	\N	f	2021-11-26 15:40:46.105903+00	2021-11-26 15:40:46.105916+00	3	7418	114
1228	\N	\N	\N	f	2021-11-26 15:40:46.111504+00	2021-11-26 15:40:46.111512+00	3	7417	114
1229	\N	\N	\N	f	2021-11-26 15:40:46.116609+00	2021-11-26 15:40:46.116615+00	3	7416	114
1230	\N	\N	\N	f	2021-11-26 15:40:46.122041+00	2021-11-26 15:40:46.122049+00	3	7415	114
1231	\N	\N	\N	f	2021-11-26 15:40:46.127026+00	2021-11-26 15:40:46.127036+00	3	7414	114
1232	\N	\N	\N	f	2021-11-26 15:40:46.131844+00	2021-11-26 15:40:46.131852+00	3	7464	114
1233	\N	\N	\N	f	2021-11-26 15:40:46.13636+00	2021-11-26 15:40:46.136368+00	3	7465	114
1234	\N	\N	\N	f	2021-11-26 15:40:46.141328+00	2021-11-26 15:40:46.141336+00	3	7466	114
1235	\N	\N	\N	f	2021-11-26 15:40:46.145846+00	2021-11-26 15:40:46.145853+00	3	7467	114
1236	\N	\N	\N	f	2021-11-26 15:40:46.150526+00	2021-11-26 15:40:46.150533+00	3	7468	114
1237	\N	\N	\N	f	2021-11-26 15:40:46.155313+00	2021-11-26 15:40:46.155322+00	3	7469	114
1238	\N	\N	\N	f	2021-11-26 15:40:46.16066+00	2021-11-26 15:40:46.160669+00	3	7470	114
1239	\N	\N	\N	f	2021-11-26 15:40:46.165165+00	2021-11-26 15:40:46.165172+00	3	7471	114
1240	\N	\N	\N	f	2021-11-26 15:40:46.169613+00	2021-11-26 15:40:46.16962+00	3	7472	114
1241	\N	\N	\N	f	2021-11-26 15:40:46.174635+00	2021-11-26 15:40:46.174643+00	3	7473	114
1242	\N	\N	\N	f	2021-11-26 15:40:46.179214+00	2021-11-26 15:40:46.179222+00	3	7474	114
1243	\N	\N	\N	f	2021-11-26 15:40:46.183387+00	2021-11-26 15:40:46.183393+00	3	7475	114
1244	\N	\N	\N	f	2021-11-26 15:40:46.189091+00	2021-11-26 15:40:46.189104+00	3	7476	114
1245	\N	\N	\N	f	2021-11-26 15:40:46.193991+00	2021-11-26 15:40:46.194+00	3	7477	114
1246	\N	\N	\N	f	2021-11-26 15:40:46.198576+00	2021-11-26 15:40:46.198583+00	3	7478	114
1247	\N	\N	\N	f	2021-11-26 15:40:46.202934+00	2021-11-26 15:40:46.202942+00	3	7479	114
1248	\N	\N	\N	f	2021-11-26 15:40:46.207852+00	2021-11-26 15:40:46.20786+00	3	7480	114
1249	\N	\N	\N	f	2021-11-26 15:40:46.212529+00	2021-11-26 15:40:46.212536+00	3	7481	114
1250	\N	\N	\N	f	2021-11-26 15:40:46.217668+00	2021-11-26 15:40:46.21768+00	3	7482	114
1251	\N	\N	\N	f	2021-11-26 15:40:46.222898+00	2021-11-26 15:40:46.222907+00	3	7483	114
1252	\N	\N	\N	f	2021-11-26 15:40:46.227967+00	2021-11-26 15:40:46.227975+00	3	7484	114
1253	\N	\N	\N	f	2021-11-26 15:40:46.232735+00	2021-11-26 15:40:46.232742+00	3	7485	114
1254	\N	\N	\N	f	2021-11-26 15:40:46.237578+00	2021-11-26 15:40:46.237586+00	3	7486	114
1255	\N	\N	\N	f	2021-11-26 15:40:46.242304+00	2021-11-26 15:40:46.242311+00	3	7487	114
1256	\N	\N	\N	f	2021-11-26 15:40:46.247155+00	2021-11-26 15:40:46.247161+00	3	7488	114
1257	\N	\N	\N	f	2021-11-26 15:40:46.252059+00	2021-11-26 15:40:46.252065+00	3	7489	114
1258	\N	\N	\N	f	2021-11-26 15:40:46.257571+00	2021-11-26 15:40:46.257581+00	3	7490	114
1259	\N	\N	\N	f	2021-11-26 15:40:46.263059+00	2021-11-26 15:40:46.263069+00	3	7491	114
1260	\N	\N	\N	f	2021-11-26 15:40:46.26844+00	2021-11-26 15:40:46.268446+00	3	7492	114
1261	\N	\N	\N	f	2021-11-26 15:40:46.273524+00	2021-11-26 15:40:46.273533+00	3	7493	114
1262	\N	\N	\N	f	2021-11-26 15:40:46.278733+00	2021-11-26 15:40:46.278743+00	3	7494	114
1263	\N	\N	\N	f	2021-11-26 15:40:46.283425+00	2021-11-26 15:40:46.283433+00	3	7495	114
1264	\N	\N	\N	f	2021-11-26 15:40:46.288309+00	2021-11-26 15:40:46.288318+00	3	7496	114
1265	\N	\N	\N	f	2021-11-26 15:40:46.29314+00	2021-11-26 15:40:46.293147+00	3	7497	114
1266	\N	\N	\N	f	2021-11-26 15:40:46.297909+00	2021-11-26 15:40:46.297916+00	3	7498	114
1267	\N	\N	\N	f	2021-11-26 15:40:46.302728+00	2021-11-26 15:40:46.302735+00	3	7499	114
1268	\N	\N	\N	f	2021-11-26 15:40:46.307565+00	2021-11-26 15:40:46.307574+00	3	7500	114
1269	\N	\N	\N	f	2021-11-26 15:40:46.312496+00	2021-11-26 15:40:46.312504+00	3	7501	114
1270	\N	\N	\N	f	2021-11-26 15:40:46.317301+00	2021-11-26 15:40:46.317308+00	3	7502	114
1271	\N	\N	\N	f	2021-11-26 15:40:46.32237+00	2021-11-26 15:40:46.32238+00	3	7503	114
1272	\N	\N	\N	f	2021-11-26 15:40:46.327444+00	2021-11-26 15:40:46.327452+00	3	7504	114
1273	\N	\N	\N	f	2021-11-26 15:40:46.331916+00	2021-11-26 15:40:46.331923+00	3	7505	114
1274	\N	\N	\N	f	2021-11-26 15:40:46.336628+00	2021-11-26 15:40:46.336677+00	3	7506	114
1275	\N	\N	\N	f	2021-11-26 15:40:46.342169+00	2021-11-26 15:40:46.342179+00	3	7507	114
1276	\N	\N	\N	f	2021-11-26 15:40:46.346843+00	2021-11-26 15:40:46.346851+00	3	7508	114
1277	\N	\N	\N	f	2021-11-26 15:40:46.35131+00	2021-11-26 15:40:46.351317+00	3	7509	114
1278	\N	\N	\N	f	2021-11-26 15:40:46.355921+00	2021-11-26 15:40:46.355929+00	3	7510	114
1279	\N	\N	\N	f	2021-11-26 15:40:46.360709+00	2021-11-26 15:40:46.360717+00	3	7511	114
1280	\N	\N	\N	f	2021-11-26 15:40:46.365344+00	2021-11-26 15:40:46.365351+00	3	7512	114
1281	\N	\N	\N	f	2021-11-26 15:40:46.37053+00	2021-11-26 15:40:46.370542+00	3	7513	114
1282	\N	\N	\N	f	2021-11-26 15:40:46.375667+00	2021-11-26 15:40:46.375676+00	3	7563	114
1283	\N	\N	\N	f	2021-11-26 15:40:46.380268+00	2021-11-26 15:40:46.380274+00	3	7562	114
1284	\N	\N	\N	f	2021-11-26 15:40:46.384843+00	2021-11-26 15:40:46.38485+00	3	7561	114
1285	\N	\N	\N	f	2021-11-26 15:40:46.389269+00	2021-11-26 15:40:46.389276+00	3	7560	114
1286	\N	\N	\N	f	2021-11-26 15:40:46.393866+00	2021-11-26 15:40:46.393873+00	3	7559	114
1287	\N	\N	\N	f	2021-11-26 15:40:46.398396+00	2021-11-26 15:40:46.398403+00	3	7558	114
1288	\N	\N	\N	f	2021-11-26 15:40:46.402814+00	2021-11-26 15:40:46.402821+00	3	7557	114
1289	\N	\N	\N	f	2021-11-26 15:40:46.407891+00	2021-11-26 15:40:46.4079+00	3	7556	114
1290	\N	\N	\N	f	2021-11-26 15:40:46.412474+00	2021-11-26 15:40:46.41248+00	3	7555	114
1291	\N	\N	\N	f	2021-11-26 15:40:46.416924+00	2021-11-26 15:40:46.41693+00	3	7554	114
1292	\N	\N	\N	f	2021-11-26 15:40:46.422083+00	2021-11-26 15:40:46.422092+00	3	7553	114
1293	\N	\N	\N	f	2021-11-26 15:40:46.426717+00	2021-11-26 15:40:46.426726+00	3	7552	114
1294	\N	\N	\N	f	2021-11-26 15:40:46.431587+00	2021-11-26 15:40:46.431596+00	3	7551	114
1295	\N	\N	\N	f	2021-11-26 15:40:46.436285+00	2021-11-26 15:40:46.436293+00	3	7550	114
1296	\N	\N	\N	f	2021-11-26 15:40:46.441099+00	2021-11-26 15:40:46.441108+00	3	7549	114
1297	\N	\N	\N	f	2021-11-26 15:40:46.445601+00	2021-11-26 15:40:46.445608+00	3	7548	114
1298	\N	\N	\N	f	2021-11-26 15:40:46.450151+00	2021-11-26 15:40:46.450157+00	3	7547	114
1299	\N	\N	\N	f	2021-11-26 15:40:46.454659+00	2021-11-26 15:40:46.454668+00	3	7546	114
1300	\N	\N	\N	f	2021-11-26 15:40:46.459565+00	2021-11-26 15:40:46.459585+00	3	7545	114
1301	\N	\N	\N	f	2021-11-26 15:40:46.464802+00	2021-11-26 15:40:46.46481+00	3	7544	114
1302	\N	\N	\N	f	2021-11-26 15:40:46.469766+00	2021-11-26 15:40:46.469773+00	3	7543	114
1303	\N	\N	\N	f	2021-11-26 15:40:46.474719+00	2021-11-26 15:40:46.474728+00	3	7542	114
1304	\N	\N	\N	f	2021-11-26 15:40:46.479346+00	2021-11-26 15:40:46.479353+00	3	7541	114
1305	\N	\N	\N	f	2021-11-26 15:40:46.483882+00	2021-11-26 15:40:46.483888+00	3	7540	114
1306	\N	\N	\N	f	2021-11-26 15:40:46.489187+00	2021-11-26 15:40:46.489197+00	3	7539	114
1307	\N	\N	\N	f	2021-11-26 15:40:46.494334+00	2021-11-26 15:40:46.494343+00	3	7538	114
1308	\N	\N	\N	f	2021-11-26 15:40:46.498952+00	2021-11-26 15:40:46.49896+00	3	7537	114
1309	\N	\N	\N	f	2021-11-26 15:40:46.503329+00	2021-11-26 15:40:46.503338+00	3	7536	114
1310	\N	\N	\N	f	2021-11-26 15:40:46.508309+00	2021-11-26 15:40:46.508316+00	3	7535	114
1311	\N	\N	\N	f	2021-11-26 15:40:46.5133+00	2021-11-26 15:40:46.513306+00	3	7534	114
1312	\N	\N	\N	f	2021-11-26 15:40:46.518637+00	2021-11-26 15:40:46.518644+00	3	7533	114
1313	\N	\N	\N	f	2021-11-26 15:40:46.524106+00	2021-11-26 15:40:46.524115+00	3	7532	114
1314	\N	\N	\N	f	2021-11-26 15:40:46.528925+00	2021-11-26 15:40:46.528933+00	3	7531	114
1315	\N	\N	\N	f	2021-11-26 15:40:46.533396+00	2021-11-26 15:40:46.533403+00	3	7530	114
1316	\N	\N	\N	f	2021-11-26 15:40:46.538223+00	2021-11-26 15:40:46.538232+00	3	7529	114
1317	\N	\N	\N	f	2021-11-26 15:40:46.542639+00	2021-11-26 15:40:46.542646+00	3	7528	114
1318	\N	\N	\N	f	2021-11-26 15:40:46.551065+00	2021-11-26 15:40:46.551075+00	3	7527	114
1319	\N	\N	\N	f	2021-11-26 15:40:46.556503+00	2021-11-26 15:40:46.556514+00	3	7526	114
1320	\N	\N	\N	f	2021-11-26 15:40:46.561359+00	2021-11-26 15:40:46.561368+00	3	7525	114
1321	\N	\N	\N	f	2021-11-26 15:40:46.565926+00	2021-11-26 15:40:46.565933+00	3	7524	114
1322	\N	\N	\N	f	2021-11-26 15:40:46.57049+00	2021-11-26 15:40:46.5705+00	3	7523	114
1323	\N	\N	\N	f	2021-11-26 15:40:46.575115+00	2021-11-26 15:40:46.575122+00	3	7522	114
1324	\N	\N	\N	f	2021-11-26 15:40:46.579521+00	2021-11-26 15:40:46.579528+00	3	7521	114
1325	\N	\N	\N	f	2021-11-26 15:40:46.584616+00	2021-11-26 15:40:46.584625+00	3	7520	114
1326	\N	\N	\N	f	2021-11-26 15:40:46.589347+00	2021-11-26 15:40:46.589357+00	3	7519	114
1327	\N	\N	\N	f	2021-11-26 15:40:46.594174+00	2021-11-26 15:40:46.594182+00	3	7518	114
1328	\N	\N	\N	f	2021-11-26 15:40:46.598601+00	2021-11-26 15:40:46.598609+00	3	7517	114
1329	\N	\N	\N	f	2021-11-26 15:40:46.603081+00	2021-11-26 15:40:46.603087+00	3	7516	114
1330	\N	\N	\N	f	2021-11-26 15:40:46.612231+00	2021-11-26 15:40:46.612238+00	3	7515	114
1331	\N	\N	\N	f	2021-11-26 15:40:46.616797+00	2021-11-26 15:40:46.616804+00	3	7514	114
1332	\N	\N	\N	f	2021-11-26 15:40:46.621885+00	2021-11-26 15:40:46.621897+00	3	7564	114
1333	\N	\N	\N	f	2021-11-26 15:40:46.627068+00	2021-11-26 15:40:46.627077+00	3	7565	114
1334	\N	\N	\N	f	2021-11-26 15:40:46.631604+00	2021-11-26 15:40:46.631611+00	3	7566	114
1335	\N	\N	\N	f	2021-11-26 15:40:46.636183+00	2021-11-26 15:40:46.636195+00	3	7567	114
1336	\N	\N	\N	f	2021-11-26 15:40:46.641402+00	2021-11-26 15:40:46.641412+00	3	7568	114
1337	\N	\N	\N	f	2021-11-26 15:40:46.646382+00	2021-11-26 15:40:46.646391+00	3	7569	114
1338	\N	\N	\N	f	2021-11-26 15:40:46.651066+00	2021-11-26 15:40:46.651073+00	3	7570	114
1339	\N	\N	\N	f	2021-11-26 15:40:46.656292+00	2021-11-26 15:40:46.656301+00	3	7571	114
1340	\N	\N	\N	f	2021-11-26 15:40:46.661349+00	2021-11-26 15:40:46.661357+00	3	7572	114
1341	\N	\N	\N	f	2021-11-26 15:40:46.665881+00	2021-11-26 15:40:46.665888+00	3	7573	114
1342	\N	\N	\N	f	2021-11-26 15:40:46.670411+00	2021-11-26 15:40:46.670419+00	3	7574	114
1343	\N	\N	\N	f	2021-11-26 15:40:46.675058+00	2021-11-26 15:40:46.675068+00	3	7575	114
1344	\N	\N	\N	f	2021-11-26 15:40:46.679788+00	2021-11-26 15:40:46.679796+00	3	7576	114
1345	\N	\N	\N	f	2021-11-26 15:40:46.684211+00	2021-11-26 15:40:46.684217+00	3	7577	114
1346	\N	\N	\N	f	2021-11-26 15:40:46.689004+00	2021-11-26 15:40:46.689014+00	3	7578	114
1347	\N	\N	\N	f	2021-11-26 15:40:46.694011+00	2021-11-26 15:40:46.69402+00	3	7579	114
1348	\N	\N	\N	f	2021-11-26 15:40:46.698618+00	2021-11-26 15:40:46.698625+00	3	7580	114
1349	\N	\N	\N	f	2021-11-26 15:40:46.703385+00	2021-11-26 15:40:46.703402+00	3	7581	114
1350	\N	\N	\N	f	2021-11-26 15:40:46.70915+00	2021-11-26 15:40:46.70916+00	3	7582	114
1351	\N	\N	\N	f	2021-11-26 15:40:46.714363+00	2021-11-26 15:40:46.714372+00	3	7583	114
1352	\N	\N	\N	f	2021-11-26 15:40:46.719152+00	2021-11-26 15:40:46.719161+00	3	7584	114
1353	\N	\N	\N	f	2021-11-26 15:40:46.724115+00	2021-11-26 15:40:46.724123+00	3	7585	114
1354	\N	\N	\N	f	2021-11-26 15:40:46.729066+00	2021-11-26 15:40:46.729073+00	3	7586	114
1355	\N	\N	\N	f	2021-11-26 15:40:46.734053+00	2021-11-26 15:40:46.734064+00	3	7587	114
1356	\N	\N	\N	f	2021-11-26 15:40:46.739434+00	2021-11-26 15:40:46.739444+00	3	7588	114
1357	\N	\N	\N	f	2021-11-26 15:40:46.744121+00	2021-11-26 15:40:46.744129+00	3	7589	114
1358	\N	\N	\N	f	2021-11-26 15:40:46.748693+00	2021-11-26 15:40:46.7487+00	3	7590	114
1359	\N	\N	\N	f	2021-11-26 15:40:46.753053+00	2021-11-26 15:40:46.753059+00	3	7591	114
1360	\N	\N	\N	f	2021-11-26 15:40:46.757806+00	2021-11-26 15:40:46.757813+00	3	7592	114
1361	\N	\N	\N	f	2021-11-26 15:40:46.762112+00	2021-11-26 15:40:46.762119+00	3	7593	114
1362	\N	\N	\N	f	2021-11-26 15:40:46.766501+00	2021-11-26 15:40:46.766508+00	3	7594	114
1363	\N	\N	\N	f	2021-11-26 15:40:46.770974+00	2021-11-26 15:40:46.770984+00	3	7595	114
1364	\N	\N	\N	f	2021-11-26 15:40:46.775899+00	2021-11-26 15:40:46.775908+00	3	7596	114
1365	\N	\N	\N	f	2021-11-26 15:40:46.78035+00	2021-11-26 15:40:46.780357+00	3	7597	114
1366	\N	\N	\N	f	2021-11-26 15:40:46.785418+00	2021-11-26 15:40:46.785425+00	3	7598	114
1367	\N	\N	\N	f	2021-11-26 15:40:46.791066+00	2021-11-26 15:40:46.791078+00	3	7599	114
1368	\N	\N	\N	f	2021-11-26 15:40:46.796183+00	2021-11-26 15:40:46.796193+00	3	7600	114
1369	\N	\N	\N	f	2021-11-26 15:40:46.800857+00	2021-11-26 15:40:46.800864+00	3	7601	114
1370	\N	\N	\N	f	2021-11-26 15:40:46.805534+00	2021-11-26 15:40:46.805543+00	3	7602	114
1371	\N	\N	\N	f	2021-11-26 15:40:46.810124+00	2021-11-26 15:40:46.810132+00	3	7603	114
1372	\N	\N	\N	f	2021-11-26 15:40:46.814683+00	2021-11-26 15:40:46.814689+00	3	7604	114
1373	\N	\N	\N	f	2021-11-26 15:40:46.81943+00	2021-11-26 15:40:46.819438+00	3	7605	114
1374	\N	\N	\N	f	2021-11-26 15:40:46.824642+00	2021-11-26 15:40:46.824653+00	3	7606	114
1375	\N	\N	\N	f	2021-11-26 15:40:46.829861+00	2021-11-26 15:40:46.829875+00	3	7607	114
1376	\N	\N	\N	f	2021-11-26 15:40:46.83526+00	2021-11-26 15:40:46.835268+00	3	7608	114
1377	\N	\N	\N	f	2021-11-26 15:40:46.840378+00	2021-11-26 15:40:46.840387+00	3	7609	114
1378	\N	\N	\N	f	2021-11-26 15:40:46.845487+00	2021-11-26 15:40:46.845494+00	3	7610	114
1379	\N	\N	\N	f	2021-11-26 15:40:46.850538+00	2021-11-26 15:40:46.850572+00	3	7611	114
1380	\N	\N	\N	f	2021-11-26 15:40:46.856061+00	2021-11-26 15:40:46.856072+00	3	7612	114
1381	\N	\N	\N	f	2021-11-26 15:40:46.860993+00	2021-11-26 15:40:46.861002+00	3	7613	114
1382	\N	\N	\N	f	2021-11-26 15:40:46.866191+00	2021-11-26 15:40:46.866199+00	3	7663	114
1383	\N	\N	\N	f	2021-11-26 15:40:46.870699+00	2021-11-26 15:40:46.870708+00	3	7662	114
1384	\N	\N	\N	f	2021-11-26 15:40:46.875282+00	2021-11-26 15:40:46.875289+00	3	7661	114
1385	\N	\N	\N	f	2021-11-26 15:40:46.879617+00	2021-11-26 15:40:46.879624+00	3	7660	114
1386	\N	\N	\N	f	2021-11-26 15:40:46.883848+00	2021-11-26 15:40:46.883854+00	3	7659	114
1387	\N	\N	\N	f	2021-11-26 15:40:46.888655+00	2021-11-26 15:40:46.888665+00	3	7658	114
1388	\N	\N	\N	f	2021-11-26 15:40:46.893528+00	2021-11-26 15:40:46.893537+00	3	7657	114
1389	\N	\N	\N	f	2021-11-26 15:40:46.897937+00	2021-11-26 15:40:46.897945+00	3	7656	114
1390	\N	\N	\N	f	2021-11-26 15:40:46.902485+00	2021-11-26 15:40:46.902493+00	3	7655	114
1391	\N	\N	\N	f	2021-11-26 15:40:46.907137+00	2021-11-26 15:40:46.907145+00	3	7654	114
1392	\N	\N	\N	f	2021-11-26 15:40:46.91226+00	2021-11-26 15:40:46.912267+00	3	7653	114
1393	\N	\N	\N	f	2021-11-26 15:40:46.917383+00	2021-11-26 15:40:46.91739+00	3	7652	114
1394	\N	\N	\N	f	2021-11-26 15:40:46.922859+00	2021-11-26 15:40:46.92287+00	3	7651	114
1395	\N	\N	\N	f	2021-11-26 15:40:46.92769+00	2021-11-26 15:40:46.927699+00	3	7650	114
1396	\N	\N	\N	f	2021-11-26 15:40:46.932279+00	2021-11-26 15:40:46.932285+00	3	7649	114
1397	\N	\N	\N	f	2021-11-26 15:40:46.937096+00	2021-11-26 15:40:46.937105+00	3	7648	114
1398	\N	\N	\N	f	2021-11-26 15:40:46.941851+00	2021-11-26 15:40:46.941859+00	3	7647	114
1399	\N	\N	\N	f	2021-11-26 15:40:46.946344+00	2021-11-26 15:40:46.946351+00	3	7646	114
1400	\N	\N	\N	f	2021-11-26 15:40:46.951542+00	2021-11-26 15:40:46.951551+00	3	7645	114
1401	\N	\N	\N	f	2021-11-26 15:40:46.956481+00	2021-11-26 15:40:46.956491+00	3	7644	114
1402	\N	\N	\N	f	2021-11-26 15:40:46.961253+00	2021-11-26 15:40:46.961262+00	3	7643	114
1403	\N	\N	\N	f	2021-11-26 15:40:46.965956+00	2021-11-26 15:40:46.965962+00	3	7642	114
1404	\N	\N	\N	f	2021-11-26 15:40:46.970278+00	2021-11-26 15:40:46.970285+00	3	7641	114
1405	\N	\N	\N	f	2021-11-26 15:40:46.97473+00	2021-11-26 15:40:46.974736+00	3	7640	114
1406	\N	\N	\N	f	2021-11-26 15:40:46.979276+00	2021-11-26 15:40:46.979285+00	3	7639	114
1407	\N	\N	\N	f	2021-11-26 15:40:46.984076+00	2021-11-26 15:40:46.984084+00	3	7638	114
1408	\N	\N	\N	f	2021-11-26 15:40:46.988834+00	2021-11-26 15:40:46.988843+00	3	7637	114
1409	\N	\N	\N	f	2021-11-26 15:40:46.99351+00	2021-11-26 15:40:46.993519+00	3	7636	114
1410	\N	\N	\N	f	2021-11-26 15:40:46.998357+00	2021-11-26 15:40:46.998364+00	3	7635	114
1411	\N	\N	\N	f	2021-11-26 15:40:47.002944+00	2021-11-26 15:40:47.002951+00	3	7634	114
1412	\N	\N	\N	f	2021-11-26 15:40:47.007421+00	2021-11-26 15:40:47.007428+00	3	7633	114
1413	\N	\N	\N	f	2021-11-26 15:40:47.012142+00	2021-11-26 15:40:47.012149+00	3	7632	114
1414	\N	\N	\N	f	2021-11-26 15:40:47.01673+00	2021-11-26 15:40:47.016737+00	3	7631	114
1415	\N	\N	\N	f	2021-11-26 15:40:47.021481+00	2021-11-26 15:40:47.021492+00	3	7630	114
1416	\N	\N	\N	f	2021-11-26 15:40:47.026309+00	2021-11-26 15:40:47.026317+00	3	7629	114
1417	\N	\N	\N	f	2021-11-26 15:40:47.037243+00	2021-11-26 15:40:47.037281+00	3	7628	114
1418	\N	\N	\N	f	2021-11-26 15:40:47.051127+00	2021-11-26 15:40:47.051155+00	3	7627	114
1419	\N	\N	\N	f	2021-11-26 15:40:47.064243+00	2021-11-26 15:40:47.064269+00	3	7626	114
1420	\N	\N	\N	f	2021-11-26 15:40:47.078047+00	2021-11-26 15:40:47.078075+00	3	7625	114
1421	\N	\N	\N	f	2021-11-26 15:40:47.088134+00	2021-11-26 15:40:47.088154+00	3	7624	114
1422	\N	\N	\N	f	2021-11-26 15:40:47.095541+00	2021-11-26 15:40:47.095552+00	3	7623	114
1423	\N	\N	\N	f	2021-11-26 15:40:47.100661+00	2021-11-26 15:40:47.100669+00	3	7622	114
1424	\N	\N	\N	f	2021-11-26 15:40:47.106365+00	2021-11-26 15:40:47.106376+00	3	7621	114
1425	\N	\N	\N	f	2021-11-26 15:40:47.111452+00	2021-11-26 15:40:47.111462+00	3	7620	114
1426	\N	\N	\N	f	2021-11-26 15:40:47.116199+00	2021-11-26 15:40:47.116207+00	3	7619	114
1427	\N	\N	\N	f	2021-11-26 15:40:47.121178+00	2021-11-26 15:40:47.121187+00	3	7618	114
1428	\N	\N	\N	f	2021-11-26 15:40:47.125819+00	2021-11-26 15:40:47.125826+00	3	7617	114
1429	\N	\N	\N	f	2021-11-26 15:40:47.130295+00	2021-11-26 15:40:47.130302+00	3	7616	114
1430	\N	\N	\N	f	2021-11-26 15:40:47.135204+00	2021-11-26 15:40:47.135213+00	3	7615	114
1431	\N	\N	\N	f	2021-11-26 15:40:47.140066+00	2021-11-26 15:40:47.140076+00	3	7614	114
1432	\N	\N	\N	f	2021-11-26 15:40:47.144924+00	2021-11-26 15:40:47.144932+00	3	7664	114
1433	\N	\N	\N	f	2021-11-26 15:40:47.149574+00	2021-11-26 15:40:47.149582+00	3	7665	114
1434	\N	\N	\N	f	2021-11-26 15:40:47.154405+00	2021-11-26 15:40:47.154413+00	3	7666	114
1435	\N	\N	\N	f	2021-11-26 15:40:47.159997+00	2021-11-26 15:40:47.160004+00	3	7667	114
1436	\N	\N	\N	f	2021-11-26 15:40:47.165474+00	2021-11-26 15:40:47.165481+00	3	7668	114
1437	\N	\N	\N	f	2021-11-26 15:40:47.170783+00	2021-11-26 15:40:47.170796+00	3	7669	114
1438	\N	\N	\N	f	2021-11-26 15:40:47.175996+00	2021-11-26 15:40:47.176005+00	3	7670	114
1439	\N	\N	\N	f	2021-11-26 15:40:47.180655+00	2021-11-26 15:40:47.180662+00	3	7671	114
1440	\N	\N	\N	f	2021-11-26 15:40:47.185161+00	2021-11-26 15:40:47.185168+00	3	7672	114
1441	\N	\N	\N	f	2021-11-26 15:40:47.190054+00	2021-11-26 15:40:47.190063+00	3	7673	114
1442	\N	\N	\N	f	2021-11-26 15:40:47.195457+00	2021-11-26 15:40:47.195466+00	3	7674	114
1443	\N	\N	\N	f	2021-11-26 15:40:47.200641+00	2021-11-26 15:40:47.200649+00	3	7675	114
1444	\N	\N	\N	f	2021-11-26 15:40:47.206545+00	2021-11-26 15:40:47.206555+00	3	7676	114
1445	\N	\N	\N	f	2021-11-26 15:40:47.211653+00	2021-11-26 15:40:47.211661+00	3	7677	114
1446	\N	\N	\N	f	2021-11-26 15:40:47.216926+00	2021-11-26 15:40:47.216932+00	3	7678	114
1447	\N	\N	\N	f	2021-11-26 15:40:47.222494+00	2021-11-26 15:40:47.222505+00	3	7679	114
1448	\N	\N	\N	f	2021-11-26 15:40:47.228392+00	2021-11-26 15:40:47.228401+00	3	7680	114
1449	\N	\N	\N	f	2021-11-26 15:40:47.233891+00	2021-11-26 15:40:47.233898+00	3	7681	114
1450	\N	\N	\N	f	2021-11-26 15:40:47.243008+00	2021-11-26 15:40:47.243017+00	3	7682	114
1451	\N	\N	\N	f	2021-11-26 15:40:47.248463+00	2021-11-26 15:40:47.248471+00	3	7683	114
1452	\N	\N	\N	f	2021-11-26 15:40:47.254164+00	2021-11-26 15:40:47.254174+00	3	7684	114
1453	\N	\N	\N	f	2021-11-26 15:40:47.261764+00	2021-11-26 15:40:47.261774+00	3	7685	114
1454	\N	\N	\N	f	2021-11-26 15:40:47.266555+00	2021-11-26 15:40:47.266562+00	3	7686	114
1455	\N	\N	\N	f	2021-11-26 15:40:47.271465+00	2021-11-26 15:40:47.271473+00	3	7687	114
1456	\N	\N	\N	f	2021-11-26 15:40:47.275977+00	2021-11-26 15:40:47.275984+00	3	7688	114
1457	\N	\N	\N	f	2021-11-26 15:40:47.280536+00	2021-11-26 15:40:47.280543+00	3	7689	114
1458	\N	\N	\N	f	2021-11-26 15:40:47.285076+00	2021-11-26 15:40:47.285083+00	3	7690	114
1459	\N	\N	\N	f	2021-11-26 15:40:47.29026+00	2021-11-26 15:40:47.29027+00	3	7691	114
1460	\N	\N	\N	f	2021-11-26 15:40:47.295062+00	2021-11-26 15:40:47.295071+00	3	7692	114
1461	\N	\N	\N	f	2021-11-26 15:40:47.29974+00	2021-11-26 15:40:47.299747+00	3	7693	114
1462	\N	\N	\N	f	2021-11-26 15:40:47.304309+00	2021-11-26 15:40:47.304318+00	3	7694	114
1463	\N	\N	\N	f	2021-11-26 15:40:47.308903+00	2021-11-26 15:40:47.30891+00	3	7695	114
1464	\N	\N	\N	f	2021-11-26 15:40:47.313268+00	2021-11-26 15:40:47.313274+00	3	7696	114
1465	\N	\N	\N	f	2021-11-26 15:40:47.318316+00	2021-11-26 15:40:47.318325+00	3	7697	114
1466	\N	\N	\N	f	2021-11-26 15:40:47.323147+00	2021-11-26 15:40:47.323157+00	3	7698	114
1467	\N	\N	\N	f	2021-11-26 15:40:47.327945+00	2021-11-26 15:40:47.327954+00	3	7699	114
1468	\N	\N	\N	f	2021-11-26 15:40:47.332897+00	2021-11-26 15:40:47.332904+00	3	7700	114
1469	\N	\N	\N	f	2021-11-26 15:40:47.337387+00	2021-11-26 15:40:47.337394+00	3	7701	114
1470	\N	\N	\N	f	2021-11-26 15:40:47.341785+00	2021-11-26 15:40:47.341792+00	3	7702	114
1471	\N	\N	\N	f	2021-11-26 15:40:47.346192+00	2021-11-26 15:40:47.346199+00	3	7703	114
1472	\N	\N	\N	f	2021-11-26 15:40:47.350631+00	2021-11-26 15:40:47.350637+00	3	7704	114
1473	\N	\N	\N	f	2021-11-26 15:40:47.355265+00	2021-11-26 15:40:47.355275+00	3	7705	114
1474	\N	\N	\N	f	2021-11-26 15:40:47.360184+00	2021-11-26 15:40:47.360193+00	3	7706	114
1475	\N	\N	\N	f	2021-11-26 15:40:47.364743+00	2021-11-26 15:40:47.36475+00	3	7707	114
1476	\N	\N	\N	f	2021-11-26 15:40:47.369603+00	2021-11-26 15:40:47.36962+00	3	7708	114
1477	\N	\N	\N	f	2021-11-26 15:40:47.375075+00	2021-11-26 15:40:47.375085+00	3	7709	114
1478	\N	\N	\N	f	2021-11-26 15:40:47.380396+00	2021-11-26 15:40:47.380404+00	3	7710	114
1479	\N	\N	\N	f	2021-11-26 15:40:47.385335+00	2021-11-26 15:40:47.385343+00	3	7711	114
1480	\N	\N	\N	f	2021-11-26 15:40:47.390179+00	2021-11-26 15:40:47.390189+00	3	7712	114
1481	\N	\N	\N	f	2021-11-26 15:40:47.394766+00	2021-11-26 15:40:47.394773+00	3	7713	114
1482	\N	\N	\N	f	2021-11-26 15:40:47.399271+00	2021-11-26 15:40:47.399278+00	3	7763	114
1483	\N	\N	\N	f	2021-11-26 15:40:47.403964+00	2021-11-26 15:40:47.403972+00	3	7762	114
1484	\N	\N	\N	f	2021-11-26 15:40:47.408664+00	2021-11-26 15:40:47.408674+00	3	7761	114
1485	\N	\N	\N	f	2021-11-26 15:40:47.41349+00	2021-11-26 15:40:47.413498+00	3	7760	114
1486	\N	\N	\N	f	2021-11-26 15:40:47.418348+00	2021-11-26 15:40:47.418354+00	3	7759	114
1487	\N	\N	\N	f	2021-11-26 15:40:47.423459+00	2021-11-26 15:40:47.423469+00	3	7758	114
1488	\N	\N	\N	f	2021-11-26 15:40:47.428014+00	2021-11-26 15:40:47.42802+00	3	7757	114
1489	\N	\N	\N	f	2021-11-26 15:40:47.432751+00	2021-11-26 15:40:47.432758+00	3	7756	114
1490	\N	\N	\N	f	2021-11-26 15:40:47.438325+00	2021-11-26 15:40:47.438335+00	3	7755	114
1491	\N	\N	\N	f	2021-11-26 15:40:47.443611+00	2021-11-26 15:40:47.44362+00	3	7754	114
1492	\N	\N	\N	f	2021-11-26 15:40:47.4484+00	2021-11-26 15:40:47.448408+00	3	7753	114
1493	\N	\N	\N	f	2021-11-26 15:40:47.453126+00	2021-11-26 15:40:47.453134+00	3	7752	114
1494	\N	\N	\N	f	2021-11-26 15:40:47.458087+00	2021-11-26 15:40:47.458096+00	3	7751	114
1495	\N	\N	\N	f	2021-11-26 15:40:47.462715+00	2021-11-26 15:40:47.462722+00	3	7750	114
1496	\N	\N	\N	f	2021-11-26 15:40:47.467238+00	2021-11-26 15:40:47.467246+00	3	7749	114
1497	\N	\N	\N	f	2021-11-26 15:40:47.472381+00	2021-11-26 15:40:47.47239+00	3	7748	114
1498	\N	\N	\N	f	2021-11-26 15:40:47.47703+00	2021-11-26 15:40:47.477039+00	3	7747	114
1499	\N	\N	\N	f	2021-11-26 15:40:47.481489+00	2021-11-26 15:40:47.481496+00	3	7746	114
1500	\N	\N	\N	f	2021-11-26 15:40:47.48582+00	2021-11-26 15:40:47.485827+00	3	7745	114
1501	\N	\N	\N	f	2021-11-26 15:40:47.490929+00	2021-11-26 15:40:47.490938+00	3	7744	114
1502	\N	\N	\N	f	2021-11-26 15:40:47.495396+00	2021-11-26 15:40:47.495403+00	3	7743	114
1503	\N	\N	\N	f	2021-11-26 15:40:47.500313+00	2021-11-26 15:40:47.50032+00	3	7742	114
1504	\N	\N	\N	f	2021-11-26 15:40:47.505865+00	2021-11-26 15:40:47.505878+00	3	7741	114
1505	\N	\N	\N	f	2021-11-26 15:40:47.511224+00	2021-11-26 15:40:47.511232+00	3	7740	114
1506	\N	\N	\N	f	2021-11-26 15:40:47.516265+00	2021-11-26 15:40:47.516272+00	3	7739	114
1507	\N	\N	\N	f	2021-11-26 15:40:47.522119+00	2021-11-26 15:40:47.522128+00	3	7738	114
1508	\N	\N	\N	f	2021-11-26 15:40:47.527803+00	2021-11-26 15:40:47.527812+00	3	7737	114
1509	\N	\N	\N	f	2021-11-26 15:40:47.533264+00	2021-11-26 15:40:47.533273+00	3	7736	114
1510	\N	\N	\N	f	2021-11-26 15:40:47.538401+00	2021-11-26 15:40:47.538411+00	3	7735	114
1511	\N	\N	\N	f	2021-11-26 15:40:47.542996+00	2021-11-26 15:40:47.543003+00	3	7734	114
1512	\N	\N	\N	f	2021-11-26 15:40:47.547316+00	2021-11-26 15:40:47.547323+00	3	7733	114
1513	\N	\N	\N	f	2021-11-26 15:40:47.551799+00	2021-11-26 15:40:47.551805+00	3	7732	114
1514	\N	\N	\N	f	2021-11-26 15:40:47.5562+00	2021-11-26 15:40:47.556209+00	3	7731	114
1515	\N	\N	\N	f	2021-11-26 15:40:47.561153+00	2021-11-26 15:40:47.561162+00	3	7730	114
1516	\N	\N	\N	f	2021-11-26 15:40:47.565544+00	2021-11-26 15:40:47.565552+00	3	7729	114
1517	\N	\N	\N	f	2021-11-26 15:40:47.570074+00	2021-11-26 15:40:47.570082+00	3	7728	114
1518	\N	\N	\N	f	2021-11-26 15:40:47.574933+00	2021-11-26 15:40:47.574942+00	3	7727	114
1519	\N	\N	\N	f	2021-11-26 15:40:47.579398+00	2021-11-26 15:40:47.579405+00	3	7726	114
1520	\N	\N	\N	f	2021-11-26 15:40:47.584237+00	2021-11-26 15:40:47.584244+00	3	7725	114
1521	\N	\N	\N	f	2021-11-26 15:40:47.589513+00	2021-11-26 15:40:47.589521+00	3	7724	114
1522	\N	\N	\N	f	2021-11-26 15:40:47.59456+00	2021-11-26 15:40:47.594569+00	3	7723	114
1523	\N	\N	\N	f	2021-11-26 15:40:47.59918+00	2021-11-26 15:40:47.599188+00	3	7722	114
1524	\N	\N	\N	f	2021-11-26 15:40:47.603811+00	2021-11-26 15:40:47.603819+00	3	7721	114
1525	\N	\N	\N	f	2021-11-26 15:40:47.60854+00	2021-11-26 15:40:47.608548+00	3	7720	114
1526	\N	\N	\N	f	2021-11-26 15:40:47.618256+00	2021-11-26 15:40:47.618265+00	3	7719	114
1527	\N	\N	\N	f	2021-11-26 15:40:47.62348+00	2021-11-26 15:40:47.623491+00	3	7718	114
1528	\N	\N	\N	f	2021-11-26 15:40:47.628215+00	2021-11-26 15:40:47.628224+00	3	7717	114
1529	\N	\N	\N	f	2021-11-26 15:40:47.632511+00	2021-11-26 15:40:47.632519+00	3	7716	114
1530	\N	\N	\N	f	2021-11-26 15:40:47.637205+00	2021-11-26 15:40:47.637214+00	3	7715	114
1531	\N	\N	\N	f	2021-11-26 15:40:47.641393+00	2021-11-26 15:40:47.6414+00	3	7714	114
1532	\N	\N	\N	f	2021-11-26 15:40:47.645565+00	2021-11-26 15:40:47.645571+00	3	7764	114
1533	\N	\N	\N	f	2021-11-26 15:40:47.649665+00	2021-11-26 15:40:47.649671+00	3	7765	114
1534	\N	\N	\N	f	2021-11-26 15:40:47.655039+00	2021-11-26 15:40:47.655048+00	3	7766	114
1535	\N	\N	\N	f	2021-11-26 15:40:47.660197+00	2021-11-26 15:40:47.660206+00	3	7767	114
1536	\N	\N	\N	f	2021-11-26 15:40:47.665257+00	2021-11-26 15:40:47.665265+00	3	7768	114
1537	\N	\N	\N	f	2021-11-26 15:40:47.670062+00	2021-11-26 15:40:47.670071+00	3	7769	114
1538	\N	\N	\N	f	2021-11-26 15:40:47.675306+00	2021-11-26 15:40:47.675314+00	3	7770	114
1539	\N	\N	\N	f	2021-11-26 15:40:47.680139+00	2021-11-26 15:40:47.680146+00	3	7771	114
1540	\N	\N	\N	f	2021-11-26 15:40:47.684796+00	2021-11-26 15:40:47.684803+00	3	7772	114
1541	\N	\N	\N	f	2021-11-26 15:40:47.690021+00	2021-11-26 15:40:47.690033+00	3	7773	114
1542	\N	\N	\N	f	2021-11-26 15:40:47.695152+00	2021-11-26 15:40:47.695162+00	3	7774	114
1543	\N	\N	\N	f	2021-11-26 15:40:47.699982+00	2021-11-26 15:40:47.69999+00	3	7775	114
1544	\N	\N	\N	f	2021-11-26 15:40:47.70504+00	2021-11-26 15:40:47.705049+00	3	7776	114
1545	\N	\N	\N	f	2021-11-26 15:40:47.709936+00	2021-11-26 15:40:47.709943+00	3	7777	114
1546	\N	\N	\N	f	2021-11-26 15:40:47.714719+00	2021-11-26 15:40:47.714728+00	3	7778	114
1547	\N	\N	\N	f	2021-11-26 15:40:47.719289+00	2021-11-26 15:40:47.719298+00	3	7779	114
1548	\N	\N	\N	f	2021-11-26 15:40:47.724119+00	2021-11-26 15:40:47.724129+00	3	7780	114
1549	\N	\N	\N	f	2021-11-26 15:40:47.728773+00	2021-11-26 15:40:47.728781+00	3	7781	114
1550	\N	\N	\N	f	2021-11-26 15:40:47.733308+00	2021-11-26 15:40:47.733315+00	3	7782	114
1551	\N	\N	\N	f	2021-11-26 15:40:47.737769+00	2021-11-26 15:40:47.737777+00	3	7783	114
1552	\N	\N	\N	f	2021-11-26 15:40:47.742217+00	2021-11-26 15:40:47.742224+00	3	7784	114
1553	\N	\N	\N	f	2021-11-26 15:40:47.746681+00	2021-11-26 15:40:47.746688+00	3	7785	114
1554	\N	\N	\N	f	2021-11-26 15:40:47.751182+00	2021-11-26 15:40:47.751188+00	3	7786	114
1555	\N	\N	\N	f	2021-11-26 15:40:47.756638+00	2021-11-26 15:40:47.756647+00	3	7787	114
1556	\N	\N	\N	f	2021-11-26 15:40:47.761326+00	2021-11-26 15:40:47.761334+00	3	7788	114
1557	\N	\N	\N	f	2021-11-26 15:40:47.765996+00	2021-11-26 15:40:47.766003+00	3	7789	114
1558	\N	\N	\N	f	2021-11-26 15:40:47.770888+00	2021-11-26 15:40:47.770897+00	3	7790	114
1559	\N	\N	\N	f	2021-11-26 15:40:47.776284+00	2021-11-26 15:40:47.776294+00	3	7791	114
1560	\N	\N	\N	f	2021-11-26 15:40:47.781015+00	2021-11-26 15:40:47.781022+00	3	7792	114
1561	\N	\N	\N	f	2021-11-26 15:40:47.78563+00	2021-11-26 15:40:47.785638+00	3	7793	114
1562	\N	\N	\N	f	2021-11-26 15:40:47.790175+00	2021-11-26 15:40:47.790183+00	3	7794	114
1563	\N	\N	\N	f	2021-11-26 15:40:47.794784+00	2021-11-26 15:40:47.794791+00	3	7795	114
1564	\N	\N	\N	f	2021-11-26 15:40:47.799265+00	2021-11-26 15:40:47.799272+00	3	7796	114
1565	\N	\N	\N	f	2021-11-26 15:40:47.803794+00	2021-11-26 15:40:47.803803+00	3	7797	114
1566	\N	\N	\N	f	2021-11-26 15:40:47.808858+00	2021-11-26 15:40:47.808867+00	3	7798	114
1567	\N	\N	\N	f	2021-11-26 15:40:47.813441+00	2021-11-26 15:40:47.813449+00	3	7799	114
1568	\N	\N	\N	f	2021-11-26 15:40:47.817917+00	2021-11-26 15:40:47.817924+00	3	7800	114
1569	\N	\N	\N	f	2021-11-26 15:40:47.823035+00	2021-11-26 15:40:47.823044+00	3	7801	114
1570	\N	\N	\N	f	2021-11-26 15:40:47.827891+00	2021-11-26 15:40:47.827897+00	3	7802	114
1571	\N	\N	\N	f	2021-11-26 15:40:47.832417+00	2021-11-26 15:40:47.832424+00	3	7803	114
1572	\N	\N	\N	f	2021-11-26 15:40:47.837573+00	2021-11-26 15:40:47.837583+00	3	7804	114
1573	\N	\N	\N	f	2021-11-26 15:40:47.842383+00	2021-11-26 15:40:47.842392+00	3	7805	114
1574	\N	\N	\N	f	2021-11-26 15:40:47.847039+00	2021-11-26 15:40:47.847046+00	3	7806	114
1575	\N	\N	\N	f	2021-11-26 15:40:47.851636+00	2021-11-26 15:40:47.851642+00	3	7807	114
1576	\N	\N	\N	f	2021-11-26 15:40:47.856113+00	2021-11-26 15:40:47.856121+00	3	7808	114
1577	\N	\N	\N	f	2021-11-26 15:40:47.860537+00	2021-11-26 15:40:47.860543+00	3	7809	114
1578	\N	\N	\N	f	2021-11-26 15:40:47.864857+00	2021-11-26 15:40:47.864864+00	3	7810	114
1579	\N	\N	\N	f	2021-11-26 15:40:47.869361+00	2021-11-26 15:40:47.869368+00	3	7811	114
1580	\N	\N	\N	f	2021-11-26 15:40:47.874413+00	2021-11-26 15:40:47.874422+00	3	7812	114
1581	\N	\N	\N	f	2021-11-26 15:40:47.879153+00	2021-11-26 15:40:47.87916+00	3	7813	114
1582	\N	\N	\N	f	2021-11-26 15:40:47.883656+00	2021-11-26 15:40:47.883663+00	3	7863	114
1583	\N	\N	\N	f	2021-11-26 15:40:47.888987+00	2021-11-26 15:40:47.888996+00	3	7862	114
1584	\N	\N	\N	f	2021-11-26 15:40:47.894533+00	2021-11-26 15:40:47.894541+00	3	7861	114
1585	\N	\N	\N	f	2021-11-26 15:40:47.899813+00	2021-11-26 15:40:47.899822+00	3	7860	114
1586	\N	\N	\N	f	2021-11-26 15:40:47.904467+00	2021-11-26 15:40:47.904477+00	3	7859	114
1587	\N	\N	\N	f	2021-11-26 15:40:47.909242+00	2021-11-26 15:40:47.909251+00	3	7858	114
1588	\N	\N	\N	f	2021-11-26 15:40:47.91421+00	2021-11-26 15:40:47.914218+00	3	7857	114
1589	\N	\N	\N	f	2021-11-26 15:40:47.918938+00	2021-11-26 15:40:47.918945+00	3	7856	114
1590	\N	\N	\N	f	2021-11-26 15:40:47.923642+00	2021-11-26 15:40:47.923652+00	3	7855	114
1591	\N	\N	\N	f	2021-11-26 15:40:47.92871+00	2021-11-26 15:40:47.928719+00	3	7854	114
1592	\N	\N	\N	f	2021-11-26 15:40:47.933217+00	2021-11-26 15:40:47.933223+00	3	7853	114
1593	\N	\N	\N	f	2021-11-26 15:40:47.938373+00	2021-11-26 15:40:47.938383+00	3	7852	114
1594	\N	\N	\N	f	2021-11-26 15:40:47.945942+00	2021-11-26 15:40:47.94595+00	3	7851	114
1595	\N	\N	\N	f	2021-11-26 15:40:47.952067+00	2021-11-26 15:40:47.952075+00	3	7850	114
1596	\N	\N	\N	f	2021-11-26 15:40:47.957754+00	2021-11-26 15:40:47.957765+00	3	7849	114
1597	\N	\N	\N	f	2021-11-26 15:40:47.963237+00	2021-11-26 15:40:47.963247+00	3	7848	114
1598	\N	\N	\N	f	2021-11-26 15:40:47.968688+00	2021-11-26 15:40:47.968697+00	3	7847	114
1599	\N	\N	\N	f	2021-11-26 15:40:47.974015+00	2021-11-26 15:40:47.974024+00	3	7846	114
1600	\N	\N	\N	f	2021-11-26 15:40:47.979086+00	2021-11-26 15:40:47.979093+00	3	7845	114
1601	\N	\N	\N	f	2021-11-26 15:40:47.983797+00	2021-11-26 15:40:47.983804+00	3	7844	114
1602	\N	\N	\N	f	2021-11-26 15:40:47.988971+00	2021-11-26 15:40:47.988987+00	3	7843	114
1603	\N	\N	\N	f	2021-11-26 15:40:47.994224+00	2021-11-26 15:40:47.994233+00	3	7842	114
1604	\N	\N	\N	f	2021-11-26 15:40:47.998978+00	2021-11-26 15:40:47.998985+00	3	7841	114
1605	\N	\N	\N	f	2021-11-26 15:40:48.003839+00	2021-11-26 15:40:48.003851+00	3	7840	114
1606	\N	\N	\N	f	2021-11-26 15:40:48.008818+00	2021-11-26 15:40:48.008827+00	3	7839	114
1607	\N	\N	\N	f	2021-11-26 15:40:48.013621+00	2021-11-26 15:40:48.013628+00	3	7838	114
1608	\N	\N	\N	f	2021-11-26 15:40:48.018404+00	2021-11-26 15:40:48.018415+00	3	7837	114
1609	\N	\N	\N	f	2021-11-26 15:40:48.023362+00	2021-11-26 15:40:48.023373+00	3	7836	114
1610	\N	\N	\N	f	2021-11-26 15:40:48.028189+00	2021-11-26 15:40:48.028198+00	3	7835	114
1611	\N	\N	\N	f	2021-11-26 15:40:48.032778+00	2021-11-26 15:40:48.032785+00	3	7834	114
1612	\N	\N	\N	f	2021-11-26 15:40:48.037457+00	2021-11-26 15:40:48.037465+00	3	7833	114
1613	\N	\N	\N	f	2021-11-26 15:40:48.042041+00	2021-11-26 15:40:48.042049+00	3	7832	114
1614	\N	\N	\N	f	2021-11-26 15:40:48.046619+00	2021-11-26 15:40:48.046625+00	3	7831	114
1615	\N	\N	\N	f	2021-11-26 15:40:48.051081+00	2021-11-26 15:40:48.051089+00	3	7830	114
1616	\N	\N	\N	f	2021-11-26 15:40:48.056948+00	2021-11-26 15:40:48.056959+00	3	7829	114
1617	\N	\N	\N	f	2021-11-26 15:40:48.062033+00	2021-11-26 15:40:48.062043+00	3	7828	114
1618	\N	\N	\N	f	2021-11-26 15:40:48.066864+00	2021-11-26 15:40:48.066874+00	3	7827	114
1619	\N	\N	\N	f	2021-11-26 15:40:48.071515+00	2021-11-26 15:40:48.071523+00	3	7826	114
1620	\N	\N	\N	f	2021-11-26 15:40:48.075975+00	2021-11-26 15:40:48.075983+00	3	7825	114
1621	\N	\N	\N	f	2021-11-26 15:40:48.080863+00	2021-11-26 15:40:48.080872+00	3	7824	114
1622	\N	\N	\N	f	2021-11-26 15:40:48.086427+00	2021-11-26 15:40:48.086437+00	3	7823	114
1623	\N	\N	\N	f	2021-11-26 15:40:48.091201+00	2021-11-26 15:40:48.09121+00	3	7822	114
1624	\N	\N	\N	f	2021-11-26 15:40:48.095979+00	2021-11-26 15:40:48.095987+00	3	7821	114
1625	\N	\N	\N	f	2021-11-26 15:40:48.10094+00	2021-11-26 15:40:48.100948+00	3	7820	114
1626	\N	\N	\N	f	2021-11-26 15:40:48.105932+00	2021-11-26 15:40:48.10594+00	3	7819	114
1627	\N	\N	\N	f	2021-11-26 15:40:48.110686+00	2021-11-26 15:40:48.110693+00	3	7818	114
1628	\N	\N	\N	f	2021-11-26 15:40:48.115484+00	2021-11-26 15:40:48.115491+00	3	7817	114
1629	\N	\N	\N	f	2021-11-26 15:40:48.120403+00	2021-11-26 15:40:48.120414+00	3	7816	114
1630	\N	\N	\N	f	2021-11-26 15:40:48.125762+00	2021-11-26 15:40:48.125771+00	3	7815	114
1631	\N	\N	\N	f	2021-11-26 15:40:48.13045+00	2021-11-26 15:40:48.130457+00	3	7814	114
1632	\N	\N	\N	f	2021-11-26 15:40:48.134942+00	2021-11-26 15:40:48.134948+00	3	7864	114
1633	\N	\N	\N	f	2021-11-26 15:40:48.139565+00	2021-11-26 15:40:48.139575+00	3	7865	114
1634	\N	\N	\N	f	2021-11-26 15:40:48.144464+00	2021-11-26 15:40:48.144473+00	3	7866	114
1635	\N	\N	\N	f	2021-11-26 15:40:48.149353+00	2021-11-26 15:40:48.149361+00	3	7867	114
1636	\N	\N	\N	f	2021-11-26 15:40:48.154141+00	2021-11-26 15:40:48.154151+00	3	7868	114
1637	\N	\N	\N	f	2021-11-26 15:40:48.159648+00	2021-11-26 15:40:48.159657+00	3	7869	114
1638	\N	\N	\N	f	2021-11-26 15:40:48.164509+00	2021-11-26 15:40:48.164517+00	3	7870	114
1639	\N	\N	\N	f	2021-11-26 15:40:48.169465+00	2021-11-26 15:40:48.169474+00	3	7871	114
1640	\N	\N	\N	f	2021-11-26 15:40:48.174444+00	2021-11-26 15:40:48.174453+00	3	7872	114
1641	\N	\N	\N	f	2021-11-26 15:40:48.17933+00	2021-11-26 15:40:48.179338+00	3	7873	114
1642	\N	\N	\N	f	2021-11-26 15:40:48.184677+00	2021-11-26 15:40:48.184686+00	3	7874	114
1643	\N	\N	\N	f	2021-11-26 15:40:48.189941+00	2021-11-26 15:40:48.18995+00	3	7875	114
1644	\N	\N	\N	f	2021-11-26 15:40:48.194629+00	2021-11-26 15:40:48.194636+00	3	7876	114
1645	\N	\N	\N	f	2021-11-26 15:40:48.199317+00	2021-11-26 15:40:48.199322+00	3	7877	114
1646	\N	\N	\N	f	2021-11-26 15:40:48.20526+00	2021-11-26 15:40:48.205274+00	3	7878	114
1647	\N	\N	\N	f	2021-11-26 15:40:48.210773+00	2021-11-26 15:40:48.210782+00	3	7879	114
1648	\N	\N	\N	f	2021-11-26 15:40:48.215879+00	2021-11-26 15:40:48.215888+00	3	7880	114
1649	\N	\N	\N	f	2021-11-26 15:40:48.221352+00	2021-11-26 15:40:48.221361+00	3	7881	114
1650	\N	\N	\N	f	2021-11-26 15:40:48.22673+00	2021-11-26 15:40:48.226737+00	3	7882	114
1651	\N	\N	\N	f	2021-11-26 15:40:48.232053+00	2021-11-26 15:40:48.232059+00	3	7883	114
1652	\N	\N	\N	f	2021-11-26 15:40:48.237366+00	2021-11-26 15:40:48.237375+00	3	7884	114
1653	\N	\N	\N	f	2021-11-26 15:40:48.242085+00	2021-11-26 15:40:48.242094+00	3	7885	114
1654	\N	\N	\N	f	2021-11-26 15:40:48.246714+00	2021-11-26 15:40:48.246722+00	3	7886	114
1655	\N	\N	\N	f	2021-11-26 15:40:48.251235+00	2021-11-26 15:40:48.251242+00	3	7887	114
1656	\N	\N	\N	f	2021-11-26 15:40:48.255827+00	2021-11-26 15:40:48.255834+00	3	7888	114
1657	\N	\N	\N	f	2021-11-26 15:40:48.260401+00	2021-11-26 15:40:48.260408+00	3	7889	114
1658	\N	\N	\N	f	2021-11-26 15:40:48.264911+00	2021-11-26 15:40:48.264918+00	3	7890	114
1659	\N	\N	\N	f	2021-11-26 15:40:48.269622+00	2021-11-26 15:40:48.269629+00	3	7891	114
1660	\N	\N	\N	f	2021-11-26 15:40:48.274827+00	2021-11-26 15:40:48.274837+00	3	7892	114
1661	\N	\N	\N	f	2021-11-26 15:40:48.279431+00	2021-11-26 15:40:48.279437+00	3	7893	114
1662	\N	\N	\N	f	2021-11-26 15:40:48.284146+00	2021-11-26 15:40:48.284153+00	3	7894	114
1663	\N	\N	\N	f	2021-11-26 15:40:48.289572+00	2021-11-26 15:40:48.289581+00	3	7895	114
1664	\N	\N	\N	f	2021-11-26 15:40:48.295059+00	2021-11-26 15:40:48.295069+00	3	7896	114
1665	\N	\N	\N	f	2021-11-26 15:40:48.299761+00	2021-11-26 15:40:48.299769+00	3	7897	114
1666	\N	\N	\N	f	2021-11-26 15:40:48.304975+00	2021-11-26 15:40:48.304985+00	3	7898	114
1667	\N	\N	\N	f	2021-11-26 15:40:48.310253+00	2021-11-26 15:40:48.31026+00	3	7899	114
1668	\N	\N	\N	f	2021-11-26 15:40:48.315281+00	2021-11-26 15:40:48.315287+00	3	7900	114
1669	\N	\N	\N	f	2021-11-26 15:40:48.320616+00	2021-11-26 15:40:48.320624+00	3	7901	114
1670	\N	\N	\N	f	2021-11-26 15:40:48.326202+00	2021-11-26 15:40:48.326214+00	3	7902	114
1671	\N	\N	\N	f	2021-11-26 15:40:48.331219+00	2021-11-26 15:40:48.331226+00	3	7903	114
1672	\N	\N	\N	f	2021-11-26 15:40:48.335613+00	2021-11-26 15:40:48.33562+00	3	7904	114
1673	\N	\N	\N	f	2021-11-26 15:40:48.340572+00	2021-11-26 15:40:48.340581+00	3	7905	114
1674	\N	\N	\N	f	2021-11-26 15:40:48.345273+00	2021-11-26 15:40:48.34528+00	3	7906	114
1675	\N	\N	\N	f	2021-11-26 15:40:48.349758+00	2021-11-26 15:40:48.349763+00	3	7907	114
1676	\N	\N	\N	f	2021-11-26 15:40:48.354682+00	2021-11-26 15:40:48.354694+00	3	7908	114
1677	\N	\N	\N	f	2021-11-26 15:40:48.359825+00	2021-11-26 15:40:48.359835+00	3	7909	114
1678	\N	\N	\N	f	2021-11-26 15:40:48.364513+00	2021-11-26 15:40:48.364521+00	3	7910	114
1679	\N	\N	\N	f	2021-11-26 15:40:48.369181+00	2021-11-26 15:40:48.36919+00	3	7911	114
1680	\N	\N	\N	f	2021-11-26 15:40:48.37395+00	2021-11-26 15:40:48.373959+00	3	7912	114
1681	\N	\N	\N	f	2021-11-26 15:40:48.378711+00	2021-11-26 15:40:48.378718+00	3	7913	114
1682	\N	\N	\N	f	2021-11-26 15:40:48.383434+00	2021-11-26 15:40:48.38344+00	3	7963	114
1683	\N	\N	\N	f	2021-11-26 15:40:48.388746+00	2021-11-26 15:40:48.388756+00	3	7962	114
1684	\N	\N	\N	f	2021-11-26 15:40:48.393608+00	2021-11-26 15:40:48.393617+00	3	7961	114
1685	\N	\N	\N	f	2021-11-26 15:40:48.401643+00	2021-11-26 15:40:48.40165+00	3	7960	115
1686	\N	\N	\N	f	2021-11-26 15:40:48.406497+00	2021-11-26 15:40:48.406506+00	3	7959	115
1687	\N	\N	\N	f	2021-11-26 15:40:48.411151+00	2021-11-26 15:40:48.411159+00	3	7958	115
1688	\N	\N	\N	f	2021-11-26 15:40:48.415885+00	2021-11-26 15:40:48.415892+00	3	7957	115
1689	\N	\N	\N	f	2021-11-26 15:40:48.420947+00	2021-11-26 15:40:48.420958+00	3	7956	115
1690	\N	\N	\N	f	2021-11-26 15:40:48.426021+00	2021-11-26 15:40:48.42603+00	3	7955	115
1691	\N	\N	\N	f	2021-11-26 15:40:48.43066+00	2021-11-26 15:40:48.430667+00	3	7954	115
1692	\N	\N	\N	f	2021-11-26 15:40:48.435232+00	2021-11-26 15:40:48.435239+00	3	7953	115
1693	\N	\N	\N	f	2021-11-26 15:40:48.440175+00	2021-11-26 15:40:48.440183+00	3	7952	115
1694	\N	\N	\N	f	2021-11-26 15:40:48.446469+00	2021-11-26 15:40:48.446479+00	3	7951	115
1695	\N	\N	\N	f	2021-11-26 15:40:48.452511+00	2021-11-26 15:40:48.45252+00	3	7950	115
1696	\N	\N	\N	f	2021-11-26 15:40:48.458475+00	2021-11-26 15:40:48.458484+00	3	7949	115
1697	\N	\N	\N	f	2021-11-26 15:40:48.464027+00	2021-11-26 15:40:48.464035+00	3	7948	115
1698	\N	\N	\N	f	2021-11-26 15:40:48.469114+00	2021-11-26 15:40:48.469122+00	3	7947	115
1699	\N	\N	\N	f	2021-11-26 15:40:48.473844+00	2021-11-26 15:40:48.473851+00	3	7946	115
1700	\N	\N	\N	f	2021-11-26 15:40:48.478643+00	2021-11-26 15:40:48.478649+00	3	7945	115
1701	\N	\N	\N	f	2021-11-26 15:40:48.483334+00	2021-11-26 15:40:48.48334+00	3	7944	115
1702	\N	\N	\N	f	2021-11-26 15:40:48.487755+00	2021-11-26 15:40:48.487765+00	3	7943	115
1703	\N	\N	\N	f	2021-11-26 15:40:48.492752+00	2021-11-26 15:40:48.492761+00	3	7942	115
1704	\N	\N	\N	f	2021-11-26 15:40:48.497352+00	2021-11-26 15:40:48.497359+00	3	7941	115
1705	\N	\N	\N	f	2021-11-26 15:40:48.501826+00	2021-11-26 15:40:48.501832+00	3	7940	115
1706	\N	\N	\N	f	2021-11-26 15:40:48.507013+00	2021-11-26 15:40:48.507022+00	3	7939	115
1707	\N	\N	\N	f	2021-11-26 15:40:48.512406+00	2021-11-26 15:40:48.512416+00	3	7938	115
1708	\N	\N	\N	f	2021-11-26 15:40:48.516873+00	2021-11-26 15:40:48.51688+00	3	7937	115
1709	\N	\N	\N	f	2021-11-26 15:40:48.521651+00	2021-11-26 15:40:48.521662+00	3	7936	115
1710	\N	\N	\N	f	2021-11-26 15:40:48.526213+00	2021-11-26 15:40:48.52622+00	3	7935	115
1711	\N	\N	\N	f	2021-11-26 15:40:48.530694+00	2021-11-26 15:40:48.5307+00	3	7934	115
1712	\N	\N	\N	f	2021-11-26 15:40:48.535517+00	2021-11-26 15:40:48.535524+00	3	7933	115
1713	\N	\N	\N	f	2021-11-26 15:40:48.540407+00	2021-11-26 15:40:48.540417+00	3	7932	115
1714	\N	\N	\N	f	2021-11-26 15:40:48.545458+00	2021-11-26 15:40:48.545469+00	3	7931	115
1715	\N	\N	\N	f	2021-11-26 15:40:48.549988+00	2021-11-26 15:40:48.549995+00	3	7930	115
1716	\N	\N	\N	f	2021-11-26 15:40:48.555004+00	2021-11-26 15:40:48.555014+00	3	7929	115
1717	\N	\N	\N	f	2021-11-26 15:40:48.55972+00	2021-11-26 15:40:48.559728+00	3	7928	115
1718	\N	\N	\N	f	2021-11-26 15:40:48.56437+00	2021-11-26 15:40:48.564377+00	3	7927	115
1719	\N	\N	\N	f	2021-11-26 15:40:48.568952+00	2021-11-26 15:40:48.568962+00	3	7926	115
1720	\N	\N	\N	f	2021-11-26 15:40:48.574107+00	2021-11-26 15:40:48.574116+00	3	7925	115
1721	\N	\N	\N	f	2021-11-26 15:40:48.578951+00	2021-11-26 15:40:48.57896+00	3	7924	115
1722	\N	\N	\N	f	2021-11-26 15:40:48.583567+00	2021-11-26 15:40:48.583574+00	3	7923	115
1723	\N	\N	\N	f	2021-11-26 15:40:48.588206+00	2021-11-26 15:40:48.588215+00	3	7922	115
1724	\N	\N	\N	f	2021-11-26 15:40:48.592766+00	2021-11-26 15:40:48.592773+00	3	7921	115
1725	\N	\N	\N	f	2021-11-26 15:40:48.597074+00	2021-11-26 15:40:48.59708+00	3	7920	115
1726	\N	\N	\N	f	2021-11-26 15:40:48.602076+00	2021-11-26 15:40:48.602086+00	3	7919	115
1727	\N	\N	\N	f	2021-11-26 15:40:48.606893+00	2021-11-26 15:40:48.606903+00	3	7918	115
1728	\N	\N	\N	f	2021-11-26 15:40:48.611434+00	2021-11-26 15:40:48.611442+00	3	7917	115
1729	\N	\N	\N	f	2021-11-26 15:40:48.615863+00	2021-11-26 15:40:48.61587+00	3	7916	115
1730	\N	\N	\N	f	2021-11-26 15:40:48.620346+00	2021-11-26 15:40:48.620352+00	3	7915	115
1731	\N	\N	\N	f	2021-11-26 15:40:48.624897+00	2021-11-26 15:40:48.624904+00	3	7914	115
1732	\N	\N	\N	f	2021-11-26 15:40:48.629261+00	2021-11-26 15:40:48.629267+00	3	7964	115
1733	\N	\N	\N	f	2021-11-26 15:40:48.633669+00	2021-11-26 15:40:48.633675+00	3	7965	115
1734	\N	\N	\N	f	2021-11-26 15:40:48.638255+00	2021-11-26 15:40:48.63827+00	3	7966	115
1735	\N	\N	\N	f	2021-11-26 15:40:48.643288+00	2021-11-26 15:40:48.643297+00	3	7967	115
1736	\N	\N	\N	f	2021-11-26 15:40:48.64784+00	2021-11-26 15:40:48.647846+00	3	7968	115
1737	\N	\N	\N	f	2021-11-26 15:40:48.652881+00	2021-11-26 15:40:48.652891+00	3	7969	115
1738	\N	\N	\N	f	2021-11-26 15:40:48.658052+00	2021-11-26 15:40:48.65806+00	3	7970	115
1739	\N	\N	\N	f	2021-11-26 15:40:48.663072+00	2021-11-26 15:40:48.663082+00	3	7971	115
1740	\N	\N	\N	f	2021-11-26 15:40:48.667798+00	2021-11-26 15:40:48.667807+00	3	7972	115
1741	\N	\N	\N	f	2021-11-26 15:40:48.672646+00	2021-11-26 15:40:48.672655+00	3	7973	115
1742	\N	\N	\N	f	2021-11-26 15:40:48.677181+00	2021-11-26 15:40:48.677188+00	3	7974	115
1743	\N	\N	\N	f	2021-11-26 15:40:48.681521+00	2021-11-26 15:40:48.681527+00	3	7975	115
1744	\N	\N	\N	f	2021-11-26 15:40:48.686083+00	2021-11-26 15:40:48.68609+00	3	7976	115
1745	\N	\N	\N	f	2021-11-26 15:40:48.691012+00	2021-11-26 15:40:48.691022+00	3	7977	115
1746	\N	\N	\N	f	2021-11-26 15:40:48.695966+00	2021-11-26 15:40:48.695975+00	3	7978	115
1747	\N	\N	\N	f	2021-11-26 15:40:48.700548+00	2021-11-26 15:40:48.700556+00	3	7979	115
1748	\N	\N	\N	f	2021-11-26 15:40:48.705675+00	2021-11-26 15:40:48.705685+00	3	7980	115
1749	\N	\N	\N	f	2021-11-26 15:40:48.710537+00	2021-11-26 15:40:48.710545+00	3	7981	115
1750	\N	\N	\N	f	2021-11-26 15:40:48.714962+00	2021-11-26 15:40:48.714968+00	3	7982	115
1751	\N	\N	\N	f	2021-11-26 15:40:48.71926+00	2021-11-26 15:40:48.719267+00	3	7983	115
1752	\N	\N	\N	f	2021-11-26 15:40:48.724608+00	2021-11-26 15:40:48.724618+00	3	7984	115
1753	\N	\N	\N	f	2021-11-26 15:40:48.729181+00	2021-11-26 15:40:48.729189+00	3	7985	115
1754	\N	\N	\N	f	2021-11-26 15:40:48.733522+00	2021-11-26 15:40:48.733529+00	3	7986	115
1755	\N	\N	\N	f	2021-11-26 15:40:48.738083+00	2021-11-26 15:40:48.738091+00	3	7987	115
1756	\N	\N	\N	f	2021-11-26 15:40:48.742621+00	2021-11-26 15:40:48.742629+00	3	7988	115
1757	\N	\N	\N	f	2021-11-26 15:40:48.74692+00	2021-11-26 15:40:48.746926+00	3	7989	115
1758	\N	\N	\N	f	2021-11-26 15:40:48.75145+00	2021-11-26 15:40:48.751456+00	3	7990	115
1759	\N	\N	\N	f	2021-11-26 15:40:48.756438+00	2021-11-26 15:40:48.756447+00	3	7991	115
1760	\N	\N	\N	f	2021-11-26 15:40:48.761272+00	2021-11-26 15:40:48.761281+00	3	7992	115
1761	\N	\N	\N	f	2021-11-26 15:40:48.765878+00	2021-11-26 15:40:48.765885+00	3	7993	115
1762	\N	\N	\N	f	2021-11-26 15:40:48.770851+00	2021-11-26 15:40:48.770859+00	3	7994	115
1763	\N	\N	\N	f	2021-11-26 15:40:48.775307+00	2021-11-26 15:40:48.775316+00	3	7995	115
1764	\N	\N	\N	f	2021-11-26 15:40:48.780094+00	2021-11-26 15:40:48.780103+00	3	7996	115
1765	\N	\N	\N	f	2021-11-26 15:40:48.784842+00	2021-11-26 15:40:48.784851+00	3	7997	115
1766	\N	\N	\N	f	2021-11-26 15:40:48.789917+00	2021-11-26 15:40:48.789927+00	3	7998	115
1767	\N	\N	\N	f	2021-11-26 15:40:48.794628+00	2021-11-26 15:40:48.794636+00	3	7999	115
1768	\N	\N	\N	f	2021-11-26 15:40:48.799019+00	2021-11-26 15:40:48.799027+00	3	8000	115
1769	\N	\N	\N	f	2021-11-26 15:40:48.804043+00	2021-11-26 15:40:48.804052+00	3	8001	115
1770	\N	\N	\N	f	2021-11-26 15:40:48.808609+00	2021-11-26 15:40:48.808616+00	3	8002	115
1771	\N	\N	\N	f	2021-11-26 15:40:48.81334+00	2021-11-26 15:40:48.813349+00	3	8003	115
1772	\N	\N	\N	f	2021-11-26 15:40:48.81834+00	2021-11-26 15:40:48.818348+00	3	8004	115
1773	\N	\N	\N	f	2021-11-26 15:40:48.822982+00	2021-11-26 15:40:48.822991+00	3	8005	115
1774	\N	\N	\N	f	2021-11-26 15:40:48.827679+00	2021-11-26 15:40:48.827688+00	3	8006	115
1775	\N	\N	\N	f	2021-11-26 15:40:48.832337+00	2021-11-26 15:40:48.832344+00	3	8007	115
1776	\N	\N	\N	f	2021-11-26 15:40:48.837366+00	2021-11-26 15:40:48.837374+00	3	8008	115
1777	\N	\N	\N	f	2021-11-26 15:40:48.842476+00	2021-11-26 15:40:48.842482+00	3	8009	115
1778	\N	\N	\N	f	2021-11-26 15:40:48.847502+00	2021-11-26 15:40:48.84751+00	3	8010	115
1779	\N	\N	\N	f	2021-11-26 15:40:48.852328+00	2021-11-26 15:40:48.852336+00	3	8011	115
1780	\N	\N	\N	f	2021-11-26 15:40:48.857035+00	2021-11-26 15:40:48.857045+00	3	8012	115
1781	\N	\N	\N	f	2021-11-26 15:40:48.861314+00	2021-11-26 15:40:48.861321+00	3	8013	115
1782	\N	\N	\N	f	2021-11-26 15:40:48.865489+00	2021-11-26 15:40:48.865496+00	3	8063	115
1783	\N	\N	\N	f	2021-11-26 15:40:48.87003+00	2021-11-26 15:40:48.870053+00	3	8062	115
1784	\N	\N	\N	f	2021-11-26 15:40:48.875305+00	2021-11-26 15:40:48.875314+00	3	8061	115
1785	\N	\N	\N	f	2021-11-26 15:40:48.88017+00	2021-11-26 15:40:48.880178+00	3	8060	115
1786	\N	\N	\N	f	2021-11-26 15:40:48.884369+00	2021-11-26 15:40:48.884376+00	3	8059	115
1787	\N	\N	\N	f	2021-11-26 15:40:48.889093+00	2021-11-26 15:40:48.889102+00	3	8058	115
1788	\N	\N	\N	f	2021-11-26 15:40:48.893695+00	2021-11-26 15:40:48.893702+00	3	8057	115
1789	\N	\N	\N	f	2021-11-26 15:40:48.898253+00	2021-11-26 15:40:48.898261+00	3	8056	115
1790	\N	\N	\N	f	2021-11-26 15:40:48.902987+00	2021-11-26 15:40:48.902995+00	3	8055	115
1791	\N	\N	\N	f	2021-11-26 15:40:48.907502+00	2021-11-26 15:40:48.907511+00	3	8054	115
1792	\N	\N	\N	f	2021-11-26 15:40:48.912152+00	2021-11-26 15:40:48.91216+00	3	8053	115
1793	\N	\N	\N	f	2021-11-26 15:40:48.916755+00	2021-11-26 15:40:48.916761+00	3	8052	115
1794	\N	\N	\N	f	2021-11-26 15:40:48.923509+00	2021-11-26 15:40:48.923519+00	3	8051	115
1795	\N	\N	\N	f	2021-11-26 15:40:48.928058+00	2021-11-26 15:40:48.928065+00	3	8050	115
1796	\N	\N	\N	f	2021-11-26 15:40:48.932658+00	2021-11-26 15:40:48.932665+00	3	8049	115
1797	\N	\N	\N	f	2021-11-26 15:40:48.937491+00	2021-11-26 15:40:48.937501+00	3	8048	115
1798	\N	\N	\N	f	2021-11-26 15:40:48.94261+00	2021-11-26 15:40:48.94262+00	3	8047	115
1799	\N	\N	\N	f	2021-11-26 15:40:48.947277+00	2021-11-26 15:40:48.947285+00	3	8046	115
1800	\N	\N	\N	f	2021-11-26 15:40:48.951865+00	2021-11-26 15:40:48.951872+00	3	8045	115
1801	\N	\N	\N	f	2021-11-26 15:40:48.956454+00	2021-11-26 15:40:48.956462+00	3	8044	115
1802	\N	\N	\N	f	2021-11-26 15:40:48.960863+00	2021-11-26 15:40:48.96087+00	3	8043	115
1803	\N	\N	\N	f	2021-11-26 15:40:48.965512+00	2021-11-26 15:40:48.965525+00	3	8042	115
1804	\N	\N	\N	f	2021-11-26 15:40:48.970548+00	2021-11-26 15:40:48.970557+00	3	8041	115
1805	\N	\N	\N	f	2021-11-26 15:40:48.980163+00	2021-11-26 15:40:48.980172+00	3	8040	115
1806	\N	\N	\N	f	2021-11-26 15:40:48.985227+00	2021-11-26 15:40:48.985235+00	3	8039	115
1807	\N	\N	\N	f	2021-11-26 15:40:48.989932+00	2021-11-26 15:40:48.98994+00	3	8038	115
1808	\N	\N	\N	f	2021-11-26 15:40:48.994285+00	2021-11-26 15:40:48.994292+00	3	8037	115
1809	\N	\N	\N	f	2021-11-26 15:40:48.998741+00	2021-11-26 15:40:48.998748+00	3	8036	115
1810	\N	\N	\N	f	2021-11-26 15:40:49.003029+00	2021-11-26 15:40:49.003036+00	3	8035	115
1811	\N	\N	\N	f	2021-11-26 15:40:49.008057+00	2021-11-26 15:40:49.008066+00	3	8034	115
1812	\N	\N	\N	f	2021-11-26 15:40:49.013429+00	2021-11-26 15:40:49.013436+00	3	8033	115
1813	\N	\N	\N	f	2021-11-26 15:40:49.018369+00	2021-11-26 15:40:49.018377+00	3	8032	115
1814	\N	\N	\N	f	2021-11-26 15:40:49.023741+00	2021-11-26 15:40:49.023753+00	3	8031	115
1815	\N	\N	\N	f	2021-11-26 15:40:49.029055+00	2021-11-26 15:40:49.029064+00	3	8030	115
1816	\N	\N	\N	f	2021-11-26 15:40:49.03386+00	2021-11-26 15:40:49.033868+00	3	8029	115
1817	\N	\N	\N	f	2021-11-26 15:40:49.038535+00	2021-11-26 15:40:49.038544+00	3	8028	115
1818	\N	\N	\N	f	2021-11-26 15:40:49.043058+00	2021-11-26 15:40:49.043065+00	3	8027	115
1819	\N	\N	\N	f	2021-11-26 15:40:49.047556+00	2021-11-26 15:40:49.047574+00	3	8026	115
1820	\N	\N	\N	f	2021-11-26 15:40:49.052077+00	2021-11-26 15:40:49.052083+00	3	8025	115
1821	\N	\N	\N	f	2021-11-26 15:40:49.056784+00	2021-11-26 15:40:49.056793+00	3	8024	115
1822	\N	\N	\N	f	2021-11-26 15:40:49.061795+00	2021-11-26 15:40:49.061806+00	3	8023	115
1823	\N	\N	\N	f	2021-11-26 15:40:49.066441+00	2021-11-26 15:40:49.066449+00	3	8022	115
1824	\N	\N	\N	f	2021-11-26 15:40:49.071195+00	2021-11-26 15:40:49.071205+00	3	8021	115
1825	\N	\N	\N	f	2021-11-26 15:40:49.076014+00	2021-11-26 15:40:49.076023+00	3	8020	115
1826	\N	\N	\N	f	2021-11-26 15:40:49.080543+00	2021-11-26 15:40:49.080551+00	3	8019	115
1827	\N	\N	\N	f	2021-11-26 15:40:49.085286+00	2021-11-26 15:40:49.085294+00	3	8018	115
1828	\N	\N	\N	f	2021-11-26 15:40:49.090469+00	2021-11-26 15:40:49.090479+00	3	8017	115
1829	\N	\N	\N	f	2021-11-26 15:40:49.095209+00	2021-11-26 15:40:49.095218+00	3	8016	115
1830	\N	\N	\N	f	2021-11-26 15:40:49.100144+00	2021-11-26 15:40:49.100152+00	3	8015	115
1831	\N	\N	\N	f	2021-11-26 15:40:49.105+00	2021-11-26 15:40:49.105009+00	3	8014	115
1832	\N	\N	\N	f	2021-11-26 15:40:49.110032+00	2021-11-26 15:40:49.110039+00	3	8064	115
1833	\N	\N	\N	f	2021-11-26 15:40:49.115061+00	2021-11-26 15:40:49.115068+00	3	8065	115
1834	\N	\N	\N	f	2021-11-26 15:40:49.120645+00	2021-11-26 15:40:49.120655+00	3	8066	115
1835	\N	\N	\N	f	2021-11-26 15:40:49.12585+00	2021-11-26 15:40:49.125859+00	3	8067	115
1836	\N	\N	\N	f	2021-11-26 15:40:49.130528+00	2021-11-26 15:40:49.130536+00	3	8068	115
1837	\N	\N	\N	f	2021-11-26 15:40:49.135278+00	2021-11-26 15:40:49.135284+00	3	8069	115
1838	\N	\N	\N	f	2021-11-26 15:40:49.139769+00	2021-11-26 15:40:49.139776+00	3	8070	115
1839	\N	\N	\N	f	2021-11-26 15:40:49.14425+00	2021-11-26 15:40:49.144256+00	3	8071	115
1840	\N	\N	\N	f	2021-11-26 15:40:49.148612+00	2021-11-26 15:40:49.148619+00	3	8072	115
1841	\N	\N	\N	f	2021-11-26 15:40:49.152947+00	2021-11-26 15:40:49.152954+00	3	8073	115
1842	\N	\N	\N	f	2021-11-26 15:40:49.157865+00	2021-11-26 15:40:49.157875+00	3	8074	115
1843	\N	\N	\N	f	2021-11-26 15:40:49.1623+00	2021-11-26 15:40:49.162307+00	3	8075	115
1844	\N	\N	\N	f	2021-11-26 15:40:49.166711+00	2021-11-26 15:40:49.166718+00	3	8076	115
1845	\N	\N	\N	f	2021-11-26 15:40:49.171779+00	2021-11-26 15:40:49.171787+00	3	8077	115
1846	\N	\N	\N	f	2021-11-26 15:40:49.176316+00	2021-11-26 15:40:49.176326+00	3	8078	115
1847	\N	\N	\N	f	2021-11-26 15:40:49.180958+00	2021-11-26 15:40:49.180967+00	3	8079	115
1848	\N	\N	\N	f	2021-11-26 15:40:49.185355+00	2021-11-26 15:40:49.185363+00	3	8080	115
1849	\N	\N	\N	f	2021-11-26 15:40:49.190201+00	2021-11-26 15:40:49.19021+00	3	8081	115
1850	\N	\N	\N	f	2021-11-26 15:40:49.194782+00	2021-11-26 15:40:49.194789+00	3	8082	115
1851	\N	\N	\N	f	2021-11-26 15:40:49.1993+00	2021-11-26 15:40:49.199306+00	3	8083	115
1852	\N	\N	\N	f	2021-11-26 15:40:49.204012+00	2021-11-26 15:40:49.20402+00	3	8084	115
1853	\N	\N	\N	f	2021-11-26 15:40:49.212805+00	2021-11-26 15:40:49.212814+00	3	8085	115
1854	\N	\N	\N	f	2021-11-26 15:40:49.217826+00	2021-11-26 15:40:49.217834+00	3	8086	115
1855	\N	\N	\N	f	2021-11-26 15:40:49.222631+00	2021-11-26 15:40:49.22264+00	3	8087	115
1856	\N	\N	\N	f	2021-11-26 15:40:49.227331+00	2021-11-26 15:40:49.227338+00	3	8088	115
1857	\N	\N	\N	f	2021-11-26 15:40:49.231916+00	2021-11-26 15:40:49.231922+00	3	8089	115
1858	\N	\N	\N	f	2021-11-26 15:40:49.236793+00	2021-11-26 15:40:49.236811+00	3	8090	115
1859	\N	\N	\N	f	2021-11-26 15:40:49.242694+00	2021-11-26 15:40:49.242704+00	3	8091	115
1860	\N	\N	\N	f	2021-11-26 15:40:49.247774+00	2021-11-26 15:40:49.247782+00	3	8092	115
1861	\N	\N	\N	f	2021-11-26 15:40:49.252983+00	2021-11-26 15:40:49.25299+00	3	8093	115
1862	\N	\N	\N	f	2021-11-26 15:40:49.258149+00	2021-11-26 15:40:49.258157+00	3	8094	115
1863	\N	\N	\N	f	2021-11-26 15:40:49.263078+00	2021-11-26 15:40:49.263084+00	3	8095	115
1864	\N	\N	\N	f	2021-11-26 15:40:49.267817+00	2021-11-26 15:40:49.267825+00	3	8096	115
1865	\N	\N	\N	f	2021-11-26 15:40:49.273132+00	2021-11-26 15:40:49.273142+00	3	8097	115
1866	\N	\N	\N	f	2021-11-26 15:40:49.278237+00	2021-11-26 15:40:49.278246+00	3	8098	115
1867	\N	\N	\N	f	2021-11-26 15:40:49.283258+00	2021-11-26 15:40:49.283266+00	3	8099	115
1868	\N	\N	\N	f	2021-11-26 15:40:49.288267+00	2021-11-26 15:40:49.288275+00	3	8100	115
1869	\N	\N	\N	f	2021-11-26 15:40:49.293077+00	2021-11-26 15:40:49.293084+00	3	8101	115
1870	\N	\N	\N	f	2021-11-26 15:40:49.29805+00	2021-11-26 15:40:49.298056+00	3	8102	115
1871	\N	\N	\N	f	2021-11-26 15:40:49.303011+00	2021-11-26 15:40:49.303021+00	3	8103	115
1872	\N	\N	\N	f	2021-11-26 15:40:49.308007+00	2021-11-26 15:40:49.308016+00	3	8104	115
1873	\N	\N	\N	f	2021-11-26 15:40:49.313197+00	2021-11-26 15:40:49.313204+00	3	8105	115
1874	\N	\N	\N	f	2021-11-26 15:40:49.317979+00	2021-11-26 15:40:49.317986+00	3	8106	115
1875	\N	\N	\N	f	2021-11-26 15:40:49.322958+00	2021-11-26 15:40:49.322967+00	3	8107	115
1876	\N	\N	\N	f	2021-11-26 15:40:49.327729+00	2021-11-26 15:40:49.327736+00	3	8108	115
1877	\N	\N	\N	f	2021-11-26 15:40:49.333057+00	2021-11-26 15:40:49.333065+00	3	8109	115
1878	\N	\N	\N	f	2021-11-26 15:40:49.338544+00	2021-11-26 15:40:49.338557+00	3	8110	115
1879	\N	\N	\N	f	2021-11-26 15:40:49.343925+00	2021-11-26 15:40:49.343935+00	3	8111	115
1880	\N	\N	\N	f	2021-11-26 15:40:49.348969+00	2021-11-26 15:40:49.348976+00	3	8112	115
1881	\N	\N	\N	f	2021-11-26 15:40:49.354089+00	2021-11-26 15:40:49.354098+00	3	8113	115
1882	\N	\N	\N	f	2021-11-26 15:40:49.359011+00	2021-11-26 15:40:49.359018+00	3	8163	115
1883	\N	\N	\N	f	2021-11-26 15:40:49.364162+00	2021-11-26 15:40:49.364172+00	3	8162	115
1884	\N	\N	\N	f	2021-11-26 15:40:49.369233+00	2021-11-26 15:40:49.369242+00	3	8161	115
1885	\N	\N	\N	f	2021-11-26 15:40:49.374201+00	2021-11-26 15:40:49.374209+00	3	8160	115
1886	\N	\N	\N	f	2021-11-26 15:40:49.379+00	2021-11-26 15:40:49.379008+00	3	8159	115
1887	\N	\N	\N	f	2021-11-26 15:40:49.383596+00	2021-11-26 15:40:49.383603+00	3	8158	115
1888	\N	\N	\N	f	2021-11-26 15:40:49.388401+00	2021-11-26 15:40:49.388408+00	3	8157	115
1889	\N	\N	\N	f	2021-11-26 15:40:49.393041+00	2021-11-26 15:40:49.393049+00	3	8156	115
1890	\N	\N	\N	f	2021-11-26 15:40:49.397458+00	2021-11-26 15:40:49.397465+00	3	8155	115
1891	\N	\N	\N	f	2021-11-26 15:40:49.401805+00	2021-11-26 15:40:49.401811+00	3	8154	115
1892	\N	\N	\N	f	2021-11-26 15:40:49.406687+00	2021-11-26 15:40:49.4067+00	3	8153	115
1893	\N	\N	\N	f	2021-11-26 15:40:49.411366+00	2021-11-26 15:40:49.411375+00	3	8152	115
1894	\N	\N	\N	f	2021-11-26 15:40:49.415724+00	2021-11-26 15:40:49.415731+00	3	8151	115
1895	\N	\N	\N	f	2021-11-26 15:40:49.420399+00	2021-11-26 15:40:49.420419+00	3	8150	115
1896	\N	\N	\N	f	2021-11-26 15:40:49.42589+00	2021-11-26 15:40:49.425902+00	3	8149	115
1897	\N	\N	\N	f	2021-11-26 15:40:49.430688+00	2021-11-26 15:40:49.430696+00	3	8148	115
1898	\N	\N	\N	f	2021-11-26 15:40:49.435243+00	2021-11-26 15:40:49.435251+00	3	8147	115
1899	\N	\N	\N	f	2021-11-26 15:40:49.439878+00	2021-11-26 15:40:49.439886+00	3	8146	115
1900	\N	\N	\N	f	2021-11-26 15:40:49.44455+00	2021-11-26 15:40:49.444557+00	3	8145	115
1901	\N	\N	\N	f	2021-11-26 15:40:49.449121+00	2021-11-26 15:40:49.449127+00	3	8144	115
1902	\N	\N	\N	f	2021-11-26 15:40:49.453826+00	2021-11-26 15:40:49.453834+00	3	8143	115
1903	\N	\N	\N	f	2021-11-26 15:40:49.458982+00	2021-11-26 15:40:49.458991+00	3	8142	115
1904	\N	\N	\N	f	2021-11-26 15:40:49.464035+00	2021-11-26 15:40:49.464043+00	3	8141	115
1905	\N	\N	\N	f	2021-11-26 15:40:49.469115+00	2021-11-26 15:40:49.469123+00	3	8140	115
1906	\N	\N	\N	f	2021-11-26 15:40:49.474421+00	2021-11-26 15:40:49.47443+00	3	8139	115
1907	\N	\N	\N	f	2021-11-26 15:40:49.479215+00	2021-11-26 15:40:49.479222+00	3	8138	115
1908	\N	\N	\N	f	2021-11-26 15:40:49.483661+00	2021-11-26 15:40:49.483667+00	3	8137	115
1909	\N	\N	\N	f	2021-11-26 15:40:49.489107+00	2021-11-26 15:40:49.489118+00	3	8136	115
1910	\N	\N	\N	f	2021-11-26 15:40:49.494575+00	2021-11-26 15:40:49.494584+00	3	8135	115
1911	\N	\N	\N	f	2021-11-26 15:40:49.499431+00	2021-11-26 15:40:49.499439+00	3	8134	115
1912	\N	\N	\N	f	2021-11-26 15:40:49.50485+00	2021-11-26 15:40:49.504859+00	3	8133	115
1913	\N	\N	\N	f	2021-11-26 15:40:49.509614+00	2021-11-26 15:40:49.509621+00	3	8132	115
1914	\N	\N	\N	f	2021-11-26 15:40:49.514282+00	2021-11-26 15:40:49.514289+00	3	8131	115
1915	\N	\N	\N	f	2021-11-26 15:40:49.519566+00	2021-11-26 15:40:49.519576+00	3	8130	115
1916	\N	\N	\N	f	2021-11-26 15:40:49.524522+00	2021-11-26 15:40:49.524531+00	3	8129	115
1917	\N	\N	\N	f	2021-11-26 15:40:49.529266+00	2021-11-26 15:40:49.529274+00	3	8128	115
1918	\N	\N	\N	f	2021-11-26 15:40:49.535389+00	2021-11-26 15:40:49.535397+00	3	8127	115
1919	\N	\N	\N	f	2021-11-26 15:40:49.540072+00	2021-11-26 15:40:49.540078+00	3	8126	115
1920	\N	\N	\N	f	2021-11-26 15:40:49.544802+00	2021-11-26 15:40:49.544808+00	3	8125	115
1921	\N	\N	\N	f	2021-11-26 15:40:49.549581+00	2021-11-26 15:40:49.549588+00	3	8124	115
1922	\N	\N	\N	f	2021-11-26 15:40:49.554988+00	2021-11-26 15:40:49.555+00	3	8123	115
1923	\N	\N	\N	f	2021-11-26 15:40:49.560618+00	2021-11-26 15:40:49.560626+00	3	8122	115
1924	\N	\N	\N	f	2021-11-26 15:40:49.565692+00	2021-11-26 15:40:49.5657+00	3	8121	115
1925	\N	\N	\N	f	2021-11-26 15:40:49.571503+00	2021-11-26 15:40:49.571512+00	3	8120	115
1926	\N	\N	\N	f	2021-11-26 15:40:49.576761+00	2021-11-26 15:40:49.576773+00	3	8119	115
1927	\N	\N	\N	f	2021-11-26 15:40:49.581638+00	2021-11-26 15:40:49.581646+00	3	8118	115
1928	\N	\N	\N	f	2021-11-26 15:40:49.587639+00	2021-11-26 15:40:49.587649+00	3	8117	115
1929	\N	\N	\N	f	2021-11-26 15:40:49.592292+00	2021-11-26 15:40:49.5923+00	3	8116	115
1930	\N	\N	\N	f	2021-11-26 15:40:49.596787+00	2021-11-26 15:40:49.596793+00	3	8115	115
1931	\N	\N	\N	f	2021-11-26 15:40:49.60163+00	2021-11-26 15:40:49.601636+00	3	8114	115
1932	\N	\N	\N	f	2021-11-26 15:40:49.606479+00	2021-11-26 15:40:49.606488+00	3	8164	115
1933	\N	\N	\N	f	2021-11-26 15:40:49.611945+00	2021-11-26 15:40:49.611953+00	3	8165	115
1934	\N	\N	\N	f	2021-11-26 15:40:49.616746+00	2021-11-26 15:40:49.616752+00	3	8166	115
1935	\N	\N	\N	f	2021-11-26 15:40:49.621794+00	2021-11-26 15:40:49.621804+00	3	8167	115
1936	\N	\N	\N	f	2021-11-26 15:40:49.626812+00	2021-11-26 15:40:49.62682+00	3	8168	115
1937	\N	\N	\N	f	2021-11-26 15:40:49.631691+00	2021-11-26 15:40:49.631699+00	3	8169	115
1938	\N	\N	\N	f	2021-11-26 15:40:49.636088+00	2021-11-26 15:40:49.636102+00	3	8170	115
1939	\N	\N	\N	f	2021-11-26 15:40:49.641487+00	2021-11-26 15:40:49.641496+00	3	8171	115
1940	\N	\N	\N	f	2021-11-26 15:40:49.646044+00	2021-11-26 15:40:49.646052+00	3	8172	115
1941	\N	\N	\N	f	2021-11-26 15:40:49.650495+00	2021-11-26 15:40:49.650502+00	3	8173	115
1942	\N	\N	\N	f	2021-11-26 15:40:49.655474+00	2021-11-26 15:40:49.655483+00	3	8174	115
1943	\N	\N	\N	f	2021-11-26 15:40:49.660505+00	2021-11-26 15:40:49.660512+00	3	8175	115
1944	\N	\N	\N	f	2021-11-26 15:40:49.665153+00	2021-11-26 15:40:49.66516+00	3	8176	115
1945	\N	\N	\N	f	2021-11-26 15:40:49.67029+00	2021-11-26 15:40:49.6703+00	3	8177	115
1946	\N	\N	\N	f	2021-11-26 15:40:49.675306+00	2021-11-26 15:40:49.675315+00	3	8178	115
1947	\N	\N	\N	f	2021-11-26 15:40:49.680322+00	2021-11-26 15:40:49.680329+00	3	8179	115
1948	\N	\N	\N	f	2021-11-26 15:40:49.684768+00	2021-11-26 15:40:49.684774+00	3	8180	115
1949	\N	\N	\N	f	2021-11-26 15:40:49.689245+00	2021-11-26 15:40:49.689252+00	3	8181	115
1950	\N	\N	\N	f	2021-11-26 15:40:49.693878+00	2021-11-26 15:40:49.693885+00	3	8182	115
1951	\N	\N	\N	f	2021-11-26 15:40:49.698591+00	2021-11-26 15:40:49.698598+00	3	8183	115
1952	\N	\N	\N	f	2021-11-26 15:40:49.703295+00	2021-11-26 15:40:49.703303+00	3	8184	115
1953	\N	\N	\N	f	2021-11-26 15:40:49.708555+00	2021-11-26 15:40:49.708564+00	3	8185	115
1954	\N	\N	\N	f	2021-11-26 15:40:49.713227+00	2021-11-26 15:40:49.713234+00	3	8186	115
1955	\N	\N	\N	f	2021-11-26 15:40:49.71782+00	2021-11-26 15:40:49.717828+00	3	8187	115
1956	\N	\N	\N	f	2021-11-26 15:40:49.722569+00	2021-11-26 15:40:49.722578+00	3	8188	115
1957	\N	\N	\N	f	2021-11-26 15:40:49.727415+00	2021-11-26 15:40:49.727423+00	3	8189	115
1958	\N	\N	\N	f	2021-11-26 15:40:49.732593+00	2021-11-26 15:40:49.732603+00	3	8190	115
1959	\N	\N	\N	f	2021-11-26 15:40:49.73756+00	2021-11-26 15:40:49.73757+00	3	8191	115
1960	\N	\N	\N	f	2021-11-26 15:40:49.742388+00	2021-11-26 15:40:49.742396+00	3	8192	115
1961	\N	\N	\N	f	2021-11-26 15:40:49.747077+00	2021-11-26 15:40:49.747083+00	3	8193	115
1962	\N	\N	\N	f	2021-11-26 15:40:49.751921+00	2021-11-26 15:40:49.751928+00	3	8194	115
1963	\N	\N	\N	f	2021-11-26 15:40:49.757187+00	2021-11-26 15:40:49.757197+00	3	8195	115
1964	\N	\N	\N	f	2021-11-26 15:40:49.836232+00	2021-11-26 15:40:49.836242+00	3	8196	115
1965	\N	\N	\N	f	2021-11-26 15:40:49.841901+00	2021-11-26 15:40:49.84191+00	3	8197	115
1966	\N	\N	\N	f	2021-11-26 15:40:49.847051+00	2021-11-26 15:40:49.847058+00	3	8198	115
1967	\N	\N	\N	f	2021-11-26 15:40:49.852079+00	2021-11-26 15:40:49.852087+00	3	8199	115
1968	\N	\N	\N	f	2021-11-26 15:40:49.857468+00	2021-11-26 15:40:49.857477+00	3	8200	115
1969	\N	\N	\N	f	2021-11-26 15:40:49.862639+00	2021-11-26 15:40:49.862647+00	3	8201	115
1970	\N	\N	\N	f	2021-11-26 15:40:49.867664+00	2021-11-26 15:40:49.867672+00	3	8202	115
1971	\N	\N	\N	f	2021-11-26 15:40:49.872348+00	2021-11-26 15:40:49.872357+00	3	8203	115
1972	\N	\N	\N	f	2021-11-26 15:40:49.876801+00	2021-11-26 15:40:49.876808+00	3	8204	115
1973	\N	\N	\N	f	2021-11-26 15:40:49.88107+00	2021-11-26 15:40:49.881078+00	3	8205	115
1974	\N	\N	\N	f	2021-11-26 15:40:49.886095+00	2021-11-26 15:40:49.886106+00	3	8206	115
1975	\N	\N	\N	f	2021-11-26 15:40:49.890885+00	2021-11-26 15:40:49.890894+00	3	8207	115
1976	\N	\N	\N	f	2021-11-26 15:40:49.895662+00	2021-11-26 15:40:49.89567+00	3	8208	115
1977	\N	\N	\N	f	2021-11-26 15:40:49.900211+00	2021-11-26 15:40:49.900218+00	3	8209	115
1978	\N	\N	\N	f	2021-11-26 15:40:49.904577+00	2021-11-26 15:40:49.904584+00	3	8210	115
1979	\N	\N	\N	f	2021-11-26 15:40:49.909016+00	2021-11-26 15:40:49.909023+00	3	8211	115
1980	\N	\N	\N	f	2021-11-26 15:40:49.913364+00	2021-11-26 15:40:49.913371+00	3	8212	115
1981	\N	\N	\N	f	2021-11-26 15:40:49.917609+00	2021-11-26 15:40:49.917615+00	3	8213	115
1982	\N	\N	\N	f	2021-11-26 15:40:49.922666+00	2021-11-26 15:40:49.922676+00	3	8263	115
1983	\N	\N	\N	f	2021-11-26 15:40:49.927446+00	2021-11-26 15:40:49.927453+00	3	8262	115
1984	\N	\N	\N	f	2021-11-26 15:40:49.93193+00	2021-11-26 15:40:49.931936+00	3	8261	115
1985	\N	\N	\N	f	2021-11-26 15:40:49.936571+00	2021-11-26 15:40:49.936583+00	3	8260	115
1986	\N	\N	\N	f	2021-11-26 15:40:49.943167+00	2021-11-26 15:40:49.943177+00	3	8259	115
1987	\N	\N	\N	f	2021-11-26 15:40:49.948128+00	2021-11-26 15:40:49.948137+00	3	8258	115
1988	\N	\N	\N	f	2021-11-26 15:40:49.95268+00	2021-11-26 15:40:49.952689+00	3	8257	115
1989	\N	\N	\N	f	2021-11-26 15:40:49.957611+00	2021-11-26 15:40:49.95762+00	3	8256	115
1990	\N	\N	\N	f	2021-11-26 15:40:49.962237+00	2021-11-26 15:40:49.962244+00	3	8255	115
1991	\N	\N	\N	f	2021-11-26 15:40:49.967019+00	2021-11-26 15:40:49.967026+00	3	8254	115
1992	\N	\N	\N	f	2021-11-26 15:40:49.971945+00	2021-11-26 15:40:49.971954+00	3	8253	115
1993	\N	\N	\N	f	2021-11-26 15:40:49.977055+00	2021-11-26 15:40:49.977064+00	3	8252	115
1994	\N	\N	\N	f	2021-11-26 15:40:49.981695+00	2021-11-26 15:40:49.981703+00	3	8251	115
1995	\N	\N	\N	f	2021-11-26 15:40:49.986237+00	2021-11-26 15:40:49.986244+00	3	8250	115
1996	\N	\N	\N	f	2021-11-26 15:40:49.991143+00	2021-11-26 15:40:49.991152+00	3	8249	115
1997	\N	\N	\N	f	2021-11-26 15:40:49.995498+00	2021-11-26 15:40:49.995505+00	3	8248	115
1998	\N	\N	\N	f	2021-11-26 15:40:49.999907+00	2021-11-26 15:40:49.999913+00	3	8247	115
1999	\N	\N	\N	f	2021-11-26 15:40:50.005077+00	2021-11-26 15:40:50.005087+00	3	8246	115
2000	\N	\N	\N	f	2021-11-26 15:40:50.010036+00	2021-11-26 15:40:50.010046+00	3	8245	115
2001	\N	\N	\N	f	2021-11-26 15:40:50.014758+00	2021-11-26 15:40:50.014766+00	3	8244	115
2002	\N	\N	\N	f	2021-11-26 15:40:50.019385+00	2021-11-26 15:40:50.019394+00	3	8243	115
2003	\N	\N	\N	f	2021-11-26 15:40:50.024017+00	2021-11-26 15:40:50.024025+00	3	8242	115
2004	\N	\N	\N	f	2021-11-26 15:40:50.028573+00	2021-11-26 15:40:50.028579+00	3	8241	115
2005	\N	\N	\N	f	2021-11-26 15:40:50.039398+00	2021-11-26 15:40:50.03943+00	3	8240	115
2006	\N	\N	\N	f	2021-11-26 15:40:50.051748+00	2021-11-26 15:40:50.051767+00	3	8239	115
2007	\N	\N	\N	f	2021-11-26 15:40:50.057544+00	2021-11-26 15:40:50.057553+00	3	8238	115
2008	\N	\N	\N	f	2021-11-26 15:40:50.062429+00	2021-11-26 15:40:50.062437+00	3	8237	115
2009	\N	\N	\N	f	2021-11-26 15:40:50.067055+00	2021-11-26 15:40:50.067063+00	3	8236	115
2010	\N	\N	\N	f	2021-11-26 15:40:50.072268+00	2021-11-26 15:40:50.072279+00	3	8235	115
2011	\N	\N	\N	f	2021-11-26 15:40:50.077319+00	2021-11-26 15:40:50.077328+00	3	8234	115
2012	\N	\N	\N	f	2021-11-26 15:40:50.081837+00	2021-11-26 15:40:50.081844+00	3	8233	115
2013	\N	\N	\N	f	2021-11-26 15:40:50.086411+00	2021-11-26 15:40:50.08642+00	3	8232	115
2014	\N	\N	\N	f	2021-11-26 15:40:50.091762+00	2021-11-26 15:40:50.09177+00	3	8231	115
2015	\N	\N	\N	f	2021-11-26 15:40:50.097221+00	2021-11-26 15:40:50.097232+00	3	8230	115
2016	\N	\N	\N	f	2021-11-26 15:40:50.102174+00	2021-11-26 15:40:50.102183+00	3	8229	115
2017	\N	\N	\N	f	2021-11-26 15:40:50.107105+00	2021-11-26 15:40:50.107115+00	3	8228	115
2018	\N	\N	\N	f	2021-11-26 15:40:50.112008+00	2021-11-26 15:40:50.112017+00	3	8227	115
2019	\N	\N	\N	f	2021-11-26 15:40:50.116465+00	2021-11-26 15:40:50.116472+00	3	8226	115
2020	\N	\N	\N	f	2021-11-26 15:40:50.120875+00	2021-11-26 15:40:50.120882+00	3	8225	115
2021	\N	\N	\N	f	2021-11-26 15:40:50.12515+00	2021-11-26 15:40:50.125157+00	3	8224	115
2022	\N	\N	\N	f	2021-11-26 15:40:50.129567+00	2021-11-26 15:40:50.129573+00	3	8223	115
2023	\N	\N	\N	f	2021-11-26 15:40:50.133935+00	2021-11-26 15:40:50.133941+00	3	8222	115
2024	\N	\N	\N	f	2021-11-26 15:40:50.13869+00	2021-11-26 15:40:50.138704+00	3	8221	115
2025	\N	\N	\N	f	2021-11-26 15:40:50.143261+00	2021-11-26 15:40:50.143269+00	3	8220	115
2026	\N	\N	\N	f	2021-11-26 15:40:50.147773+00	2021-11-26 15:40:50.14778+00	3	8219	115
2027	\N	\N	\N	f	2021-11-26 15:40:50.154686+00	2021-11-26 15:40:50.154696+00	3	8218	115
2028	\N	\N	\N	f	2021-11-26 15:40:50.15977+00	2021-11-26 15:40:50.159779+00	3	8217	115
2029	\N	\N	\N	f	2021-11-26 15:40:50.164447+00	2021-11-26 15:40:50.164455+00	3	8216	115
2030	\N	\N	\N	f	2021-11-26 15:40:50.169104+00	2021-11-26 15:40:50.169112+00	3	8215	115
2031	\N	\N	\N	f	2021-11-26 15:40:50.173622+00	2021-11-26 15:40:50.173629+00	3	8214	115
2032	\N	\N	\N	f	2021-11-26 15:40:50.178105+00	2021-11-26 15:40:50.178111+00	3	8264	115
2033	\N	\N	\N	f	2021-11-26 15:40:50.18234+00	2021-11-26 15:40:50.182346+00	3	8265	115
2034	\N	\N	\N	f	2021-11-26 15:40:50.186769+00	2021-11-26 15:40:50.186779+00	3	8266	115
2035	\N	\N	\N	f	2021-11-26 15:40:50.192+00	2021-11-26 15:40:50.19201+00	3	8267	115
2036	\N	\N	\N	f	2021-11-26 15:40:50.196705+00	2021-11-26 15:40:50.196713+00	3	8268	115
2037	\N	\N	\N	f	2021-11-26 15:40:50.201303+00	2021-11-26 15:40:50.20131+00	3	8269	115
2038	\N	\N	\N	f	2021-11-26 15:40:50.206032+00	2021-11-26 15:40:50.20604+00	3	8270	115
2039	\N	\N	\N	f	2021-11-26 15:40:50.210641+00	2021-11-26 15:40:50.210648+00	3	8271	115
2040	\N	\N	\N	f	2021-11-26 15:40:50.215105+00	2021-11-26 15:40:50.215111+00	3	8272	115
2041	\N	\N	\N	f	2021-11-26 15:40:50.220555+00	2021-11-26 15:40:50.220565+00	3	8273	115
2042	\N	\N	\N	f	2021-11-26 15:40:50.225404+00	2021-11-26 15:40:50.225414+00	3	8274	115
2043	\N	\N	\N	f	2021-11-26 15:40:50.229958+00	2021-11-26 15:40:50.229966+00	3	8275	115
2044	\N	\N	\N	f	2021-11-26 15:40:50.234449+00	2021-11-26 15:40:50.234456+00	3	8276	115
2045	\N	\N	\N	f	2021-11-26 15:40:50.238976+00	2021-11-26 15:40:50.238985+00	3	8277	115
2046	\N	\N	\N	f	2021-11-26 15:40:50.243527+00	2021-11-26 15:40:50.243534+00	3	8278	115
2047	\N	\N	\N	f	2021-11-26 15:40:50.247839+00	2021-11-26 15:40:50.247846+00	3	8279	115
2048	\N	\N	\N	f	2021-11-26 15:40:50.252246+00	2021-11-26 15:40:50.252253+00	3	8280	115
2049	\N	\N	\N	f	2021-11-26 15:40:50.257564+00	2021-11-26 15:40:50.257574+00	3	8281	115
2050	\N	\N	\N	f	2021-11-26 15:40:50.262304+00	2021-11-26 15:40:50.262313+00	3	8282	115
2051	\N	\N	\N	f	2021-11-26 15:40:50.266758+00	2021-11-26 15:40:50.266764+00	3	8283	115
2052	\N	\N	\N	f	2021-11-26 15:40:50.271484+00	2021-11-26 15:40:50.271493+00	3	8284	115
2053	\N	\N	\N	f	2021-11-26 15:40:50.275937+00	2021-11-26 15:40:50.275944+00	3	8285	115
2054	\N	\N	\N	f	2021-11-26 15:40:50.280845+00	2021-11-26 15:40:50.280855+00	3	8286	115
2055	\N	\N	\N	f	2021-11-26 15:40:50.285611+00	2021-11-26 15:40:50.28562+00	3	8287	115
2056	\N	\N	\N	f	2021-11-26 15:40:50.290498+00	2021-11-26 15:40:50.290507+00	3	8288	115
2057	\N	\N	\N	f	2021-11-26 15:40:50.295206+00	2021-11-26 15:40:50.295213+00	3	8289	115
2058	\N	\N	\N	f	2021-11-26 15:40:50.300016+00	2021-11-26 15:40:50.300024+00	3	8290	115
2059	\N	\N	\N	f	2021-11-26 15:40:50.304741+00	2021-11-26 15:40:50.304748+00	3	8291	115
2060	\N	\N	\N	f	2021-11-26 15:40:50.30933+00	2021-11-26 15:40:50.309337+00	3	8292	115
2061	\N	\N	\N	f	2021-11-26 15:40:50.313961+00	2021-11-26 15:40:50.313967+00	3	8293	115
2062	\N	\N	\N	f	2021-11-26 15:40:50.32049+00	2021-11-26 15:40:50.320499+00	3	8294	115
2063	\N	\N	\N	f	2021-11-26 15:40:50.325555+00	2021-11-26 15:40:50.325564+00	3	8295	115
2064	\N	\N	\N	f	2021-11-26 15:40:50.330176+00	2021-11-26 15:40:50.330184+00	3	8296	115
2065	\N	\N	\N	f	2021-11-26 15:40:50.334643+00	2021-11-26 15:40:50.33465+00	3	8297	115
2066	\N	\N	\N	f	2021-11-26 15:40:50.339451+00	2021-11-26 15:40:50.339461+00	3	8298	115
2067	\N	\N	\N	f	2021-11-26 15:40:50.344586+00	2021-11-26 15:40:50.344595+00	3	8299	115
2068	\N	\N	\N	f	2021-11-26 15:40:50.349176+00	2021-11-26 15:40:50.349183+00	3	8300	115
2069	\N	\N	\N	f	2021-11-26 15:40:50.353751+00	2021-11-26 15:40:50.353758+00	3	8301	115
2070	\N	\N	\N	f	2021-11-26 15:40:50.358471+00	2021-11-26 15:40:50.358478+00	3	8302	115
2071	\N	\N	\N	f	2021-11-26 15:40:50.363098+00	2021-11-26 15:40:50.363105+00	3	8303	115
2072	\N	\N	\N	f	2021-11-26 15:40:50.371579+00	2021-11-26 15:40:50.37159+00	3	8304	115
2073	\N	\N	\N	f	2021-11-26 15:40:50.377087+00	2021-11-26 15:40:50.377096+00	3	8305	115
2074	\N	\N	\N	f	2021-11-26 15:40:50.382074+00	2021-11-26 15:40:50.382081+00	3	8306	115
2075	\N	\N	\N	f	2021-11-26 15:40:50.386871+00	2021-11-26 15:40:50.386881+00	3	8307	115
2076	\N	\N	\N	f	2021-11-26 15:40:50.391476+00	2021-11-26 15:40:50.391483+00	3	8308	115
2077	\N	\N	\N	f	2021-11-26 15:40:50.39594+00	2021-11-26 15:40:50.395947+00	3	8309	115
2078	\N	\N	\N	f	2021-11-26 15:40:50.400459+00	2021-11-26 15:40:50.400466+00	3	8310	115
2079	\N	\N	\N	f	2021-11-26 15:40:50.405762+00	2021-11-26 15:40:50.40578+00	3	8311	115
2080	\N	\N	\N	f	2021-11-26 15:40:50.410516+00	2021-11-26 15:40:50.410525+00	3	8312	115
2081	\N	\N	\N	f	2021-11-26 15:40:50.414864+00	2021-11-26 15:40:50.414872+00	3	8313	115
2082	\N	\N	\N	f	2021-11-26 15:40:50.419583+00	2021-11-26 15:40:50.419592+00	3	8363	115
2083	\N	\N	\N	f	2021-11-26 15:40:50.424283+00	2021-11-26 15:40:50.424291+00	3	8362	115
2084	\N	\N	\N	f	2021-11-26 15:40:50.428639+00	2021-11-26 15:40:50.428646+00	3	8361	115
2085	\N	\N	\N	f	2021-11-26 15:40:50.433536+00	2021-11-26 15:40:50.433549+00	3	8360	115
2086	\N	\N	\N	f	2021-11-26 15:40:50.438407+00	2021-11-26 15:40:50.438416+00	3	8359	115
2087	\N	\N	\N	f	2021-11-26 15:40:50.443462+00	2021-11-26 15:40:50.44347+00	3	8358	115
2088	\N	\N	\N	f	2021-11-26 15:40:50.448272+00	2021-11-26 15:40:50.44828+00	3	8357	115
2089	\N	\N	\N	f	2021-11-26 15:40:50.452673+00	2021-11-26 15:40:50.45268+00	3	8356	115
2090	\N	\N	\N	f	2021-11-26 15:40:50.457034+00	2021-11-26 15:40:50.457041+00	3	8355	115
2091	\N	\N	\N	f	2021-11-26 15:40:50.461227+00	2021-11-26 15:40:50.461233+00	3	8354	115
2092	\N	\N	\N	f	2021-11-26 15:40:50.465682+00	2021-11-26 15:40:50.465688+00	3	8353	115
2093	\N	\N	\N	f	2021-11-26 15:40:50.470247+00	2021-11-26 15:40:50.470254+00	3	8352	115
2094	\N	\N	\N	f	2021-11-26 15:40:50.475604+00	2021-11-26 15:40:50.475613+00	3	8351	115
2095	\N	\N	\N	f	2021-11-26 15:40:50.480567+00	2021-11-26 15:40:50.480574+00	3	8350	115
2096	\N	\N	\N	f	2021-11-26 15:40:50.486934+00	2021-11-26 15:40:50.486949+00	3	8349	115
2097	\N	\N	\N	f	2021-11-26 15:40:50.49177+00	2021-11-26 15:40:50.491779+00	3	8348	115
2098	\N	\N	\N	f	2021-11-26 15:40:50.496804+00	2021-11-26 15:40:50.496813+00	3	8347	115
2099	\N	\N	\N	f	2021-11-26 15:40:50.501338+00	2021-11-26 15:40:50.501345+00	3	8346	115
2100	\N	\N	\N	f	2021-11-26 15:40:50.506126+00	2021-11-26 15:40:50.506135+00	3	8345	115
2101	\N	\N	\N	f	2021-11-26 15:40:50.510825+00	2021-11-26 15:40:50.510832+00	3	8344	115
2102	\N	\N	\N	f	2021-11-26 15:40:50.515408+00	2021-11-26 15:40:50.515414+00	3	8343	115
2103	\N	\N	\N	f	2021-11-26 15:40:50.519927+00	2021-11-26 15:40:50.519935+00	3	8342	115
2104	\N	\N	\N	f	2021-11-26 15:40:50.524613+00	2021-11-26 15:40:50.524623+00	3	8341	115
2105	\N	\N	\N	f	2021-11-26 15:40:50.528983+00	2021-11-26 15:40:50.528991+00	3	8340	115
2106	\N	\N	\N	f	2021-11-26 15:40:50.533271+00	2021-11-26 15:40:50.533278+00	3	8339	115
2107	\N	\N	\N	f	2021-11-26 15:40:50.537797+00	2021-11-26 15:40:50.537807+00	3	8338	115
2108	\N	\N	\N	f	2021-11-26 15:40:50.542826+00	2021-11-26 15:40:50.542834+00	3	8337	115
2109	\N	\N	\N	f	2021-11-26 15:40:50.548317+00	2021-11-26 15:40:50.548324+00	3	8336	115
2110	\N	\N	\N	f	2021-11-26 15:40:50.555219+00	2021-11-26 15:40:50.555229+00	3	8335	115
2111	\N	\N	\N	f	2021-11-26 15:40:50.560399+00	2021-11-26 15:40:50.560409+00	3	8334	115
2112	\N	\N	\N	f	2021-11-26 15:40:50.565059+00	2021-11-26 15:40:50.565067+00	3	8333	115
2113	\N	\N	\N	f	2021-11-26 15:40:50.569687+00	2021-11-26 15:40:50.569697+00	3	8332	115
2114	\N	\N	\N	f	2021-11-26 15:40:50.574356+00	2021-11-26 15:40:50.574364+00	3	8331	115
2115	\N	\N	\N	f	2021-11-26 15:40:50.5788+00	2021-11-26 15:40:50.578807+00	3	8330	115
2116	\N	\N	\N	f	2021-11-26 15:40:50.583352+00	2021-11-26 15:40:50.583368+00	3	8329	115
2117	\N	\N	\N	f	2021-11-26 15:40:50.58868+00	2021-11-26 15:40:50.588689+00	3	8328	115
2118	\N	\N	\N	f	2021-11-26 15:40:50.593455+00	2021-11-26 15:40:50.593464+00	3	8327	115
2119	\N	\N	\N	f	2021-11-26 15:40:50.598089+00	2021-11-26 15:40:50.598097+00	3	8326	115
2120	\N	\N	\N	f	2021-11-26 15:40:50.602409+00	2021-11-26 15:40:50.602416+00	3	8325	115
2121	\N	\N	\N	f	2021-11-26 15:40:50.606868+00	2021-11-26 15:40:50.606876+00	3	8324	115
2122	\N	\N	\N	f	2021-11-26 15:40:50.611206+00	2021-11-26 15:40:50.611213+00	3	8323	115
2123	\N	\N	\N	f	2021-11-26 15:40:50.615596+00	2021-11-26 15:40:50.615603+00	3	8322	115
2124	\N	\N	\N	f	2021-11-26 15:40:50.619851+00	2021-11-26 15:40:50.619859+00	3	8321	115
2125	\N	\N	\N	f	2021-11-26 15:40:50.625085+00	2021-11-26 15:40:50.625093+00	3	8320	115
2126	\N	\N	\N	f	2021-11-26 15:40:50.629652+00	2021-11-26 15:40:50.629659+00	3	8319	115
2127	\N	\N	\N	f	2021-11-26 15:40:50.634379+00	2021-11-26 15:40:50.634385+00	3	8318	115
2128	\N	\N	\N	f	2021-11-26 15:40:50.639288+00	2021-11-26 15:40:50.639296+00	3	8317	115
2129	\N	\N	\N	f	2021-11-26 15:40:50.644245+00	2021-11-26 15:40:50.644254+00	3	8316	115
2130	\N	\N	\N	f	2021-11-26 15:40:50.649512+00	2021-11-26 15:40:50.64952+00	3	8315	115
2131	\N	\N	\N	f	2021-11-26 15:40:50.654256+00	2021-11-26 15:40:50.654266+00	3	8314	115
2132	\N	\N	\N	f	2021-11-26 15:40:50.658807+00	2021-11-26 15:40:50.658815+00	3	8364	115
2133	\N	\N	\N	f	2021-11-26 15:40:50.663259+00	2021-11-26 15:40:50.663267+00	3	8365	115
2134	\N	\N	\N	f	2021-11-26 15:40:50.668171+00	2021-11-26 15:40:50.668178+00	3	8366	115
2135	\N	\N	\N	f	2021-11-26 15:40:50.673054+00	2021-11-26 15:40:50.673064+00	3	8367	115
2136	\N	\N	\N	f	2021-11-26 15:40:50.679248+00	2021-11-26 15:40:50.679259+00	3	8368	115
2137	\N	\N	\N	f	2021-11-26 15:40:50.684059+00	2021-11-26 15:40:50.684066+00	3	8369	115
2138	\N	\N	\N	f	2021-11-26 15:40:50.689248+00	2021-11-26 15:40:50.689258+00	3	8370	115
2139	\N	\N	\N	f	2021-11-26 15:40:50.69416+00	2021-11-26 15:40:50.69417+00	3	8371	115
2140	\N	\N	\N	f	2021-11-26 15:40:50.699012+00	2021-11-26 15:40:50.699019+00	3	8372	115
2141	\N	\N	\N	f	2021-11-26 15:40:50.703713+00	2021-11-26 15:40:50.703722+00	3	8373	115
2142	\N	\N	\N	f	2021-11-26 15:40:50.709051+00	2021-11-26 15:40:50.709061+00	3	8374	115
2143	\N	\N	\N	f	2021-11-26 15:40:50.714073+00	2021-11-26 15:40:50.714081+00	3	8375	115
2144	\N	\N	\N	f	2021-11-26 15:40:50.718773+00	2021-11-26 15:40:50.718799+00	3	8376	115
2145	\N	\N	\N	f	2021-11-26 15:40:50.723479+00	2021-11-26 15:40:50.723487+00	3	8377	115
2146	\N	\N	\N	f	2021-11-26 15:40:50.727915+00	2021-11-26 15:40:50.727922+00	3	8378	115
2147	\N	\N	\N	f	2021-11-26 15:40:50.732188+00	2021-11-26 15:40:50.732195+00	3	8379	115
2148	\N	\N	\N	f	2021-11-26 15:40:50.73659+00	2021-11-26 15:40:50.736598+00	3	8380	115
2149	\N	\N	\N	f	2021-11-26 15:40:50.741535+00	2021-11-26 15:40:50.741545+00	3	8381	115
2150	\N	\N	\N	f	2021-11-26 15:40:50.746025+00	2021-11-26 15:40:50.746034+00	3	8382	115
2151	\N	\N	\N	f	2021-11-26 15:40:50.751658+00	2021-11-26 15:40:50.751666+00	3	8383	115
2152	\N	\N	\N	f	2021-11-26 15:40:50.756432+00	2021-11-26 15:40:50.756441+00	3	8384	115
2153	\N	\N	\N	f	2021-11-26 15:40:50.760807+00	2021-11-26 15:40:50.760814+00	3	8385	115
2154	\N	\N	\N	f	2021-11-26 15:40:50.769397+00	2021-11-26 15:40:50.769408+00	3	8386	115
2155	\N	\N	\N	f	2021-11-26 15:40:50.775162+00	2021-11-26 15:40:50.775171+00	3	8387	115
2156	\N	\N	\N	f	2021-11-26 15:40:50.780287+00	2021-11-26 15:40:50.780296+00	3	8388	115
2157	\N	\N	\N	f	2021-11-26 15:40:50.78498+00	2021-11-26 15:40:50.784988+00	3	8389	115
2158	\N	\N	\N	f	2021-11-26 15:40:50.789504+00	2021-11-26 15:40:50.789512+00	3	8390	115
2159	\N	\N	\N	f	2021-11-26 15:40:50.793839+00	2021-11-26 15:40:50.793846+00	3	8391	115
2160	\N	\N	\N	f	2021-11-26 15:40:50.798217+00	2021-11-26 15:40:50.798226+00	3	8392	115
2161	\N	\N	\N	f	2021-11-26 15:40:50.802907+00	2021-11-26 15:40:50.802919+00	3	8393	115
2162	\N	\N	\N	f	2021-11-26 15:40:50.807543+00	2021-11-26 15:40:50.807553+00	3	8394	115
2163	\N	\N	\N	f	2021-11-26 15:40:50.839417+00	2021-11-26 15:40:50.839433+00	3	8395	115
2164	\N	\N	\N	f	2021-11-26 15:40:50.846156+00	2021-11-26 15:40:50.846166+00	3	8396	115
2165	\N	\N	\N	f	2021-11-26 15:40:50.85216+00	2021-11-26 15:40:50.85217+00	3	8397	115
2166	\N	\N	\N	f	2021-11-26 15:40:50.85854+00	2021-11-26 15:40:50.858552+00	3	8398	115
2167	\N	\N	\N	f	2021-11-26 15:40:50.86452+00	2021-11-26 15:40:50.864531+00	3	8399	115
2168	\N	\N	\N	f	2021-11-26 15:40:50.87029+00	2021-11-26 15:40:50.870301+00	3	8400	115
2169	\N	\N	\N	f	2021-11-26 15:40:50.876199+00	2021-11-26 15:40:50.876209+00	3	8401	115
2170	\N	\N	\N	f	2021-11-26 15:40:50.88113+00	2021-11-26 15:40:50.881139+00	3	8402	115
2171	\N	\N	\N	f	2021-11-26 15:40:50.885865+00	2021-11-26 15:40:50.885873+00	3	8403	115
2172	\N	\N	\N	f	2021-11-26 15:40:50.890552+00	2021-11-26 15:40:50.890561+00	3	8404	115
2173	\N	\N	\N	f	2021-11-26 15:40:50.895382+00	2021-11-26 15:40:50.89539+00	3	8405	115
2174	\N	\N	\N	f	2021-11-26 15:40:50.899752+00	2021-11-26 15:40:50.89976+00	3	8406	115
2175	\N	\N	\N	f	2021-11-26 15:40:50.904057+00	2021-11-26 15:40:50.904065+00	3	8407	115
2176	\N	\N	\N	f	2021-11-26 15:40:50.90874+00	2021-11-26 15:40:50.908749+00	3	8408	115
2177	\N	\N	\N	f	2021-11-26 15:40:50.913333+00	2021-11-26 15:40:50.91334+00	3	8409	115
2178	\N	\N	\N	f	2021-11-26 15:40:50.918066+00	2021-11-26 15:40:50.918073+00	3	8410	115
2179	\N	\N	\N	f	2021-11-26 15:40:50.923578+00	2021-11-26 15:40:50.923588+00	3	8411	115
2180	\N	\N	\N	f	2021-11-26 15:40:50.928301+00	2021-11-26 15:40:50.92831+00	3	8412	115
2181	\N	\N	\N	f	2021-11-26 15:40:50.932976+00	2021-11-26 15:40:50.932983+00	3	8413	115
2182	\N	\N	\N	f	2021-11-26 15:40:50.937567+00	2021-11-26 15:40:50.937576+00	3	8463	115
2183	\N	\N	\N	f	2021-11-26 15:40:50.942116+00	2021-11-26 15:40:50.942123+00	3	8462	115
2184	\N	\N	\N	f	2021-11-26 15:40:50.946605+00	2021-11-26 15:40:50.946611+00	3	8461	115
2185	\N	\N	\N	f	2021-11-26 15:40:50.951143+00	2021-11-26 15:40:50.951153+00	3	8460	115
2186	\N	\N	\N	f	2021-11-26 15:40:50.956087+00	2021-11-26 15:40:50.956096+00	3	8459	115
2187	\N	\N	\N	f	2021-11-26 15:40:50.960934+00	2021-11-26 15:40:50.960943+00	3	8458	115
2188	\N	\N	\N	f	2021-11-26 15:40:50.965376+00	2021-11-26 15:40:50.965384+00	3	8457	115
2189	\N	\N	\N	f	2021-11-26 15:40:50.970034+00	2021-11-26 15:40:50.970042+00	3	8456	115
2190	\N	\N	\N	f	2021-11-26 15:40:50.974668+00	2021-11-26 15:40:50.974675+00	3	8455	115
2191	\N	\N	\N	f	2021-11-26 15:40:50.979434+00	2021-11-26 15:40:50.97944+00	3	8454	115
2192	\N	\N	\N	f	2021-11-26 15:40:50.984371+00	2021-11-26 15:40:50.984379+00	3	8453	115
2193	\N	\N	\N	f	2021-11-26 15:40:50.989987+00	2021-11-26 15:40:50.989995+00	3	8452	115
2194	\N	\N	\N	f	2021-11-26 15:40:50.994848+00	2021-11-26 15:40:50.994856+00	3	8451	115
2195	\N	\N	\N	f	2021-11-26 15:40:50.999801+00	2021-11-26 15:40:50.999808+00	3	8450	115
2196	\N	\N	\N	f	2021-11-26 15:40:51.006165+00	2021-11-26 15:40:51.006174+00	3	8449	115
2197	\N	\N	\N	f	2021-11-26 15:40:51.011117+00	2021-11-26 15:40:51.011126+00	3	8448	115
2198	\N	\N	\N	f	2021-11-26 15:40:51.0162+00	2021-11-26 15:40:51.01621+00	3	8447	115
2199	\N	\N	\N	f	2021-11-26 15:40:51.021205+00	2021-11-26 15:40:51.021215+00	3	8446	115
2200	\N	\N	\N	f	2021-11-26 15:40:51.026256+00	2021-11-26 15:40:51.026264+00	3	8445	115
2201	\N	\N	\N	f	2021-11-26 15:40:51.031151+00	2021-11-26 15:40:51.031157+00	3	8444	115
2202	\N	\N	\N	f	2021-11-26 15:40:51.035912+00	2021-11-26 15:40:51.035919+00	3	8443	115
2203	\N	\N	\N	f	2021-11-26 15:40:51.040995+00	2021-11-26 15:40:51.041004+00	3	8442	115
2204	\N	\N	\N	f	2021-11-26 15:40:51.046283+00	2021-11-26 15:40:51.046291+00	3	8441	115
2205	\N	\N	\N	f	2021-11-26 15:40:51.051434+00	2021-11-26 15:40:51.051441+00	3	8440	115
2206	\N	\N	\N	f	2021-11-26 15:40:51.057837+00	2021-11-26 15:40:51.057846+00	3	8439	115
2207	\N	\N	\N	f	2021-11-26 15:40:51.062526+00	2021-11-26 15:40:51.062533+00	3	8438	115
2208	\N	\N	\N	f	2021-11-26 15:40:51.06709+00	2021-11-26 15:40:51.067097+00	3	8437	115
2209	\N	\N	\N	f	2021-11-26 15:40:51.073139+00	2021-11-26 15:40:51.073151+00	3	8436	115
2210	\N	\N	\N	f	2021-11-26 15:40:51.079669+00	2021-11-26 15:40:51.079678+00	3	8435	115
2211	\N	\N	\N	f	2021-11-26 15:40:51.084044+00	2021-11-26 15:40:51.084051+00	3	8434	115
2212	\N	\N	\N	f	2021-11-26 15:40:51.088931+00	2021-11-26 15:40:51.088939+00	3	8433	115
2213	\N	\N	\N	f	2021-11-26 15:40:51.093417+00	2021-11-26 15:40:51.093424+00	3	8432	115
2214	\N	\N	\N	f	2021-11-26 15:40:51.097748+00	2021-11-26 15:40:51.097754+00	3	8431	115
2215	\N	\N	\N	f	2021-11-26 15:40:51.102359+00	2021-11-26 15:40:51.102368+00	3	8430	115
2216	\N	\N	\N	f	2021-11-26 15:40:51.107678+00	2021-11-26 15:40:51.107688+00	3	8429	115
2217	\N	\N	\N	f	2021-11-26 15:40:51.112797+00	2021-11-26 15:40:51.112805+00	3	8428	115
2218	\N	\N	\N	f	2021-11-26 15:40:51.117557+00	2021-11-26 15:40:51.117564+00	3	8427	115
2219	\N	\N	\N	f	2021-11-26 15:40:51.122416+00	2021-11-26 15:40:51.122425+00	3	8426	115
2220	\N	\N	\N	f	2021-11-26 15:40:51.127014+00	2021-11-26 15:40:51.12702+00	3	8425	115
2221	\N	\N	\N	f	2021-11-26 15:40:51.131551+00	2021-11-26 15:40:51.131557+00	3	8424	115
2222	\N	\N	\N	f	2021-11-26 15:40:51.13602+00	2021-11-26 15:40:51.136028+00	3	8423	115
2223	\N	\N	\N	f	2021-11-26 15:40:51.14159+00	2021-11-26 15:40:51.141599+00	3	8422	115
2224	\N	\N	\N	f	2021-11-26 15:40:51.146202+00	2021-11-26 15:40:51.14621+00	3	8421	115
2225	\N	\N	\N	f	2021-11-26 15:40:51.150614+00	2021-11-26 15:40:51.15062+00	3	8420	115
2226	\N	\N	\N	f	2021-11-26 15:40:51.155143+00	2021-11-26 15:40:51.155151+00	3	8419	115
2227	\N	\N	\N	f	2021-11-26 15:40:51.159731+00	2021-11-26 15:40:51.159738+00	3	8418	115
2228	\N	\N	\N	f	2021-11-26 15:40:51.164596+00	2021-11-26 15:40:51.164606+00	3	8417	115
2229	\N	\N	\N	f	2021-11-26 15:40:51.169338+00	2021-11-26 15:40:51.169348+00	3	8416	115
2230	\N	\N	\N	f	2021-11-26 15:40:51.174159+00	2021-11-26 15:40:51.174169+00	3	8415	115
2231	\N	\N	\N	f	2021-11-26 15:40:51.178744+00	2021-11-26 15:40:51.178752+00	3	8414	115
2232	\N	\N	\N	f	2021-11-26 15:40:51.183219+00	2021-11-26 15:40:51.183227+00	3	8464	115
2233	\N	\N	\N	f	2021-11-26 15:40:51.187794+00	2021-11-26 15:40:51.187801+00	3	8465	115
2234	\N	\N	\N	f	2021-11-26 15:40:51.192355+00	2021-11-26 15:40:51.192362+00	3	8466	115
2235	\N	\N	\N	f	2021-11-26 15:40:51.196739+00	2021-11-26 15:40:51.196746+00	3	8467	115
2236	\N	\N	\N	f	2021-11-26 15:40:51.201229+00	2021-11-26 15:40:51.201236+00	3	8468	115
2237	\N	\N	\N	f	2021-11-26 15:40:51.206561+00	2021-11-26 15:40:51.206571+00	3	8469	115
2238	\N	\N	\N	f	2021-11-26 15:40:51.211518+00	2021-11-26 15:40:51.211526+00	3	8470	115
2239	\N	\N	\N	f	2021-11-26 15:40:51.216494+00	2021-11-26 15:40:51.216501+00	3	8471	115
2240	\N	\N	\N	f	2021-11-26 15:40:51.222062+00	2021-11-26 15:40:51.22207+00	3	8472	115
2241	\N	\N	\N	f	2021-11-26 15:40:51.227435+00	2021-11-26 15:40:51.227445+00	3	8473	115
2242	\N	\N	\N	f	2021-11-26 15:40:51.232247+00	2021-11-26 15:40:51.232254+00	3	8474	115
2243	\N	\N	\N	f	2021-11-26 15:40:51.236696+00	2021-11-26 15:40:51.236705+00	3	8475	115
2244	\N	\N	\N	f	2021-11-26 15:40:51.241499+00	2021-11-26 15:40:51.241508+00	3	8476	115
2245	\N	\N	\N	f	2021-11-26 15:40:51.246113+00	2021-11-26 15:40:51.246119+00	3	8477	115
2246	\N	\N	\N	f	2021-11-26 15:40:51.250606+00	2021-11-26 15:40:51.250612+00	3	8478	115
2247	\N	\N	\N	f	2021-11-26 15:40:51.255491+00	2021-11-26 15:40:51.2555+00	3	8479	115
2248	\N	\N	\N	f	2021-11-26 15:40:51.260409+00	2021-11-26 15:40:51.260422+00	3	8480	115
2249	\N	\N	\N	f	2021-11-26 15:40:51.265068+00	2021-11-26 15:40:51.265078+00	3	8481	115
2250	\N	\N	\N	f	2021-11-26 15:40:51.269567+00	2021-11-26 15:40:51.269574+00	3	8482	115
2251	\N	\N	\N	f	2021-11-26 15:40:51.274675+00	2021-11-26 15:40:51.274684+00	3	8483	115
2252	\N	\N	\N	f	2021-11-26 15:40:51.279596+00	2021-11-26 15:40:51.279603+00	3	8484	115
2253	\N	\N	\N	f	2021-11-26 15:40:51.283958+00	2021-11-26 15:40:51.283965+00	3	8485	115
2254	\N	\N	\N	f	2021-11-26 15:40:51.289493+00	2021-11-26 15:40:51.289504+00	3	8486	115
2255	\N	\N	\N	f	2021-11-26 15:40:51.294482+00	2021-11-26 15:40:51.294492+00	3	8487	115
2256	\N	\N	\N	f	2021-11-26 15:40:51.29891+00	2021-11-26 15:40:51.298917+00	3	8488	115
2257	\N	\N	\N	f	2021-11-26 15:40:51.303499+00	2021-11-26 15:40:51.303509+00	3	8489	115
2258	\N	\N	\N	f	2021-11-26 15:40:51.308181+00	2021-11-26 15:40:51.308187+00	3	8490	115
2259	\N	\N	\N	f	2021-11-26 15:40:51.312658+00	2021-11-26 15:40:51.312665+00	3	8491	115
2260	\N	\N	\N	f	2021-11-26 15:40:51.319174+00	2021-11-26 15:40:51.319184+00	3	8492	115
2261	\N	\N	\N	f	2021-11-26 15:40:51.324337+00	2021-11-26 15:40:51.324346+00	3	8493	115
2262	\N	\N	\N	f	2021-11-26 15:40:51.328963+00	2021-11-26 15:40:51.32897+00	3	8494	115
2263	\N	\N	\N	f	2021-11-26 15:40:51.333395+00	2021-11-26 15:40:51.333402+00	3	8495	115
2264	\N	\N	\N	f	2021-11-26 15:40:51.338083+00	2021-11-26 15:40:51.33809+00	3	8496	115
2265	\N	\N	\N	f	2021-11-26 15:40:51.34263+00	2021-11-26 15:40:51.342636+00	3	8497	115
2266	\N	\N	\N	f	2021-11-26 15:40:51.347191+00	2021-11-26 15:40:51.347198+00	3	8498	115
2267	\N	\N	\N	f	2021-11-26 15:40:51.351655+00	2021-11-26 15:40:51.351661+00	3	8499	115
2268	\N	\N	\N	f	2021-11-26 15:40:51.357015+00	2021-11-26 15:40:51.357025+00	3	8500	115
2269	\N	\N	\N	f	2021-11-26 15:40:51.361834+00	2021-11-26 15:40:51.36184+00	3	8501	115
2270	\N	\N	\N	f	2021-11-26 15:40:51.366368+00	2021-11-26 15:40:51.366375+00	3	8502	115
2271	\N	\N	\N	f	2021-11-26 15:40:51.371755+00	2021-11-26 15:40:51.371763+00	3	8503	115
2272	\N	\N	\N	f	2021-11-26 15:40:51.376463+00	2021-11-26 15:40:51.376473+00	3	8504	115
2273	\N	\N	\N	f	2021-11-26 15:40:51.38136+00	2021-11-26 15:40:51.381369+00	3	8505	115
2274	\N	\N	\N	f	2021-11-26 15:40:51.385964+00	2021-11-26 15:40:51.385972+00	3	8506	115
2275	\N	\N	\N	f	2021-11-26 15:40:51.394654+00	2021-11-26 15:40:51.394663+00	3	8507	115
2276	\N	\N	\N	f	2021-11-26 15:40:51.399547+00	2021-11-26 15:40:51.399555+00	3	8508	115
2277	\N	\N	\N	f	2021-11-26 15:40:51.403991+00	2021-11-26 15:40:51.404+00	3	8509	115
2278	\N	\N	\N	f	2021-11-26 15:40:51.408631+00	2021-11-26 15:40:51.408646+00	3	8510	115
2279	\N	\N	\N	f	2021-11-26 15:40:51.413334+00	2021-11-26 15:40:51.413342+00	3	8511	115
2280	\N	\N	\N	f	2021-11-26 15:40:51.41784+00	2021-11-26 15:40:51.417846+00	3	8512	115
2281	\N	\N	\N	f	2021-11-26 15:40:51.422575+00	2021-11-26 15:40:51.422585+00	3	8513	115
2282	\N	\N	\N	f	2021-11-26 15:40:51.427219+00	2021-11-26 15:40:51.427227+00	3	8563	115
2283	\N	\N	\N	f	2021-11-26 15:40:51.431762+00	2021-11-26 15:40:51.431768+00	3	8562	115
2284	\N	\N	\N	f	2021-11-26 15:40:51.43615+00	2021-11-26 15:40:51.436164+00	3	8561	115
2285	\N	\N	\N	f	2021-11-26 15:40:51.441609+00	2021-11-26 15:40:51.441618+00	3	8560	115
2286	\N	\N	\N	f	2021-11-26 15:40:51.446231+00	2021-11-26 15:40:51.446238+00	3	8559	115
2287	\N	\N	\N	f	2021-11-26 15:40:51.450592+00	2021-11-26 15:40:51.450598+00	3	8558	115
2288	\N	\N	\N	f	2021-11-26 15:40:51.45744+00	2021-11-26 15:40:51.457448+00	3	8557	115
2289	\N	\N	\N	f	2021-11-26 15:40:51.462325+00	2021-11-26 15:40:51.462331+00	3	8556	115
2290	\N	\N	\N	f	2021-11-26 15:40:51.466956+00	2021-11-26 15:40:51.466963+00	3	8555	115
2291	\N	\N	\N	f	2021-11-26 15:40:51.472149+00	2021-11-26 15:40:51.472158+00	3	8554	115
2292	\N	\N	\N	f	2021-11-26 15:40:51.47698+00	2021-11-26 15:40:51.476988+00	3	8553	115
2293	\N	\N	\N	f	2021-11-26 15:40:51.481449+00	2021-11-26 15:40:51.481456+00	3	8552	115
2294	\N	\N	\N	f	2021-11-26 15:40:51.485833+00	2021-11-26 15:40:51.485839+00	3	8551	115
2295	\N	\N	\N	f	2021-11-26 15:40:51.490297+00	2021-11-26 15:40:51.490305+00	3	8550	115
2296	\N	\N	\N	f	2021-11-26 15:40:51.494652+00	2021-11-26 15:40:51.494659+00	3	8549	115
2297	\N	\N	\N	f	2021-11-26 15:40:51.499147+00	2021-11-26 15:40:51.499153+00	3	8548	115
2298	\N	\N	\N	f	2021-11-26 15:40:51.503669+00	2021-11-26 15:40:51.503677+00	3	8547	115
2299	\N	\N	\N	f	2021-11-26 15:40:51.508707+00	2021-11-26 15:40:51.508716+00	3	8546	115
2300	\N	\N	\N	f	2021-11-26 15:40:51.513114+00	2021-11-26 15:40:51.513121+00	3	8545	115
2301	\N	\N	\N	f	2021-11-26 15:40:51.517494+00	2021-11-26 15:40:51.5175+00	3	8544	115
2302	\N	\N	\N	f	2021-11-26 15:40:51.522585+00	2021-11-26 15:40:51.522595+00	3	8543	115
2303	\N	\N	\N	f	2021-11-26 15:40:51.528314+00	2021-11-26 15:40:51.528327+00	3	8542	115
2304	\N	\N	\N	f	2021-11-26 15:40:51.533361+00	2021-11-26 15:40:51.53337+00	3	8541	115
2305	\N	\N	\N	f	2021-11-26 15:40:51.538128+00	2021-11-26 15:40:51.538139+00	3	8540	115
2306	\N	\N	\N	f	2021-11-26 15:40:51.543255+00	2021-11-26 15:40:51.543263+00	3	8539	115
2307	\N	\N	\N	f	2021-11-26 15:40:51.547933+00	2021-11-26 15:40:51.547939+00	3	8538	115
2308	\N	\N	\N	f	2021-11-26 15:40:51.552485+00	2021-11-26 15:40:51.552492+00	3	8537	115
2309	\N	\N	\N	f	2021-11-26 15:40:51.557023+00	2021-11-26 15:40:51.557032+00	3	8536	115
2310	\N	\N	\N	f	2021-11-26 15:40:51.562215+00	2021-11-26 15:40:51.562223+00	3	8535	115
2311	\N	\N	\N	f	2021-11-26 15:40:51.56679+00	2021-11-26 15:40:51.566798+00	3	8534	115
2312	\N	\N	\N	f	2021-11-26 15:40:51.571606+00	2021-11-26 15:40:51.571615+00	3	8533	115
2313	\N	\N	\N	f	2021-11-26 15:40:51.576385+00	2021-11-26 15:40:51.576393+00	3	8532	115
2314	\N	\N	\N	f	2021-11-26 15:40:51.58095+00	2021-11-26 15:40:51.580957+00	3	8531	115
2315	\N	\N	\N	f	2021-11-26 15:40:51.585391+00	2021-11-26 15:40:51.585397+00	3	8530	115
2316	\N	\N	\N	f	2021-11-26 15:40:51.590619+00	2021-11-26 15:40:51.590629+00	3	8529	115
2317	\N	\N	\N	f	2021-11-26 15:40:51.595543+00	2021-11-26 15:40:51.595552+00	3	8528	115
2318	\N	\N	\N	f	2021-11-26 15:40:51.600052+00	2021-11-26 15:40:51.600059+00	3	8527	115
2319	\N	\N	\N	f	2021-11-26 15:40:51.604897+00	2021-11-26 15:40:51.604905+00	3	8526	115
2320	\N	\N	\N	f	2021-11-26 15:40:51.611013+00	2021-11-26 15:40:51.61102+00	3	8525	115
2321	\N	\N	\N	f	2021-11-26 15:40:51.616025+00	2021-11-26 15:40:51.616031+00	3	8524	115
2322	\N	\N	\N	f	2021-11-26 15:40:51.621563+00	2021-11-26 15:40:51.621573+00	3	8523	115
2323	\N	\N	\N	f	2021-11-26 15:40:51.62649+00	2021-11-26 15:40:51.6265+00	3	8522	115
2324	\N	\N	\N	f	2021-11-26 15:40:51.631037+00	2021-11-26 15:40:51.631044+00	3	8521	115
2325	\N	\N	\N	f	2021-11-26 15:40:51.63547+00	2021-11-26 15:40:51.635476+00	3	8520	115
2326	\N	\N	\N	f	2021-11-26 15:40:51.640154+00	2021-11-26 15:40:51.640162+00	3	8519	115
2327	\N	\N	\N	f	2021-11-26 15:40:51.644627+00	2021-11-26 15:40:51.644634+00	3	8518	115
2328	\N	\N	\N	f	2021-11-26 15:40:51.649286+00	2021-11-26 15:40:51.649292+00	3	8517	115
2329	\N	\N	\N	f	2021-11-26 15:40:51.653945+00	2021-11-26 15:40:51.653957+00	3	8516	115
2330	\N	\N	\N	f	2021-11-26 15:40:51.658973+00	2021-11-26 15:40:51.658983+00	3	8515	115
2331	\N	\N	\N	f	2021-11-26 15:40:51.663883+00	2021-11-26 15:40:51.663891+00	3	8514	115
2332	\N	\N	\N	f	2021-11-26 15:40:51.668745+00	2021-11-26 15:40:51.668757+00	3	8564	115
2333	\N	\N	\N	f	2021-11-26 15:40:51.673453+00	2021-11-26 15:40:51.673461+00	3	8565	115
2334	\N	\N	\N	f	2021-11-26 15:40:51.677927+00	2021-11-26 15:40:51.677934+00	3	8566	115
2335	\N	\N	\N	f	2021-11-26 15:40:51.683142+00	2021-11-26 15:40:51.68316+00	3	8567	115
2336	\N	\N	\N	f	2021-11-26 15:40:51.688275+00	2021-11-26 15:40:51.688284+00	3	8568	115
2337	\N	\N	\N	f	2021-11-26 15:40:51.693491+00	2021-11-26 15:40:51.693499+00	3	8569	115
2338	\N	\N	\N	f	2021-11-26 15:40:51.698276+00	2021-11-26 15:40:51.698284+00	3	8570	115
2339	\N	\N	\N	f	2021-11-26 15:40:51.703061+00	2021-11-26 15:40:51.703069+00	3	8571	115
2340	\N	\N	\N	f	2021-11-26 15:40:51.707648+00	2021-11-26 15:40:51.707655+00	3	8572	115
2341	\N	\N	\N	f	2021-11-26 15:40:51.712342+00	2021-11-26 15:40:51.712349+00	3	8573	115
2342	\N	\N	\N	f	2021-11-26 15:40:51.716758+00	2021-11-26 15:40:51.716767+00	3	8574	115
2343	\N	\N	\N	f	2021-11-26 15:40:51.721856+00	2021-11-26 15:40:51.721866+00	3	8575	115
2344	\N	\N	\N	f	2021-11-26 15:40:51.726756+00	2021-11-26 15:40:51.726765+00	3	8576	115
2345	\N	\N	\N	f	2021-11-26 15:40:51.731545+00	2021-11-26 15:40:51.731554+00	3	8577	115
2346	\N	\N	\N	f	2021-11-26 15:40:51.736+00	2021-11-26 15:40:51.736008+00	3	8578	115
2347	\N	\N	\N	f	2021-11-26 15:40:51.740624+00	2021-11-26 15:40:51.740633+00	3	8579	115
2348	\N	\N	\N	f	2021-11-26 15:40:51.745739+00	2021-11-26 15:40:51.745749+00	3	8580	115
2349	\N	\N	\N	f	2021-11-26 15:40:51.750403+00	2021-11-26 15:40:51.75041+00	3	8581	115
2350	\N	\N	\N	f	2021-11-26 15:40:51.755276+00	2021-11-26 15:40:51.755285+00	3	8582	115
2351	\N	\N	\N	f	2021-11-26 15:40:51.760409+00	2021-11-26 15:40:51.760416+00	3	8583	115
2352	\N	\N	\N	f	2021-11-26 15:40:51.765653+00	2021-11-26 15:40:51.76566+00	3	8584	115
2353	\N	\N	\N	f	2021-11-26 15:40:51.770841+00	2021-11-26 15:40:51.77085+00	3	8585	115
2354	\N	\N	\N	f	2021-11-26 15:40:51.775746+00	2021-11-26 15:40:51.775757+00	3	8586	115
2355	\N	\N	\N	f	2021-11-26 15:40:51.780552+00	2021-11-26 15:40:51.780558+00	3	8587	115
2356	\N	\N	\N	f	2021-11-26 15:40:51.785105+00	2021-11-26 15:40:51.785111+00	3	8588	115
2357	\N	\N	\N	f	2021-11-26 15:40:51.790144+00	2021-11-26 15:40:51.790153+00	3	8589	115
2358	\N	\N	\N	f	2021-11-26 15:40:51.794964+00	2021-11-26 15:40:51.794972+00	3	8590	115
2359	\N	\N	\N	f	2021-11-26 15:40:51.799973+00	2021-11-26 15:40:51.799979+00	3	8591	115
2360	\N	\N	\N	f	2021-11-26 15:40:51.805686+00	2021-11-26 15:40:51.805696+00	3	8592	115
2361	\N	\N	\N	f	2021-11-26 15:40:51.811139+00	2021-11-26 15:40:51.811149+00	3	8593	115
2362	\N	\N	\N	f	2021-11-26 15:40:51.816467+00	2021-11-26 15:40:51.816474+00	3	8594	115
2363	\N	\N	\N	f	2021-11-26 15:40:51.821111+00	2021-11-26 15:40:51.821121+00	3	8595	115
2364	\N	\N	\N	f	2021-11-26 15:40:51.825828+00	2021-11-26 15:40:51.825835+00	3	8596	115
2365	\N	\N	\N	f	2021-11-26 15:40:51.830266+00	2021-11-26 15:40:51.830272+00	3	8597	115
2366	\N	\N	\N	f	2021-11-26 15:40:51.835025+00	2021-11-26 15:40:51.835038+00	3	8598	115
2367	\N	\N	\N	f	2021-11-26 15:40:51.839954+00	2021-11-26 15:40:51.839963+00	3	8599	115
2368	\N	\N	\N	f	2021-11-26 15:40:51.844676+00	2021-11-26 15:40:51.844685+00	3	8600	115
2369	\N	\N	\N	f	2021-11-26 15:40:51.849188+00	2021-11-26 15:40:51.849195+00	3	8601	115
2370	\N	\N	\N	f	2021-11-26 15:40:51.853597+00	2021-11-26 15:40:51.853604+00	3	8602	115
2371	\N	\N	\N	f	2021-11-26 15:40:51.857924+00	2021-11-26 15:40:51.85793+00	3	8603	115
2372	\N	\N	\N	f	2021-11-26 15:40:51.862137+00	2021-11-26 15:40:51.862142+00	3	8604	115
2373	\N	\N	\N	f	2021-11-26 15:40:51.866493+00	2021-11-26 15:40:51.866499+00	3	8605	115
2374	\N	\N	\N	f	2021-11-26 15:40:51.870847+00	2021-11-26 15:40:51.870856+00	3	8606	115
2375	\N	\N	\N	f	2021-11-26 15:40:51.876037+00	2021-11-26 15:40:51.876046+00	3	8607	115
2376	\N	\N	\N	f	2021-11-26 15:40:51.882046+00	2021-11-26 15:40:51.882053+00	3	8608	115
2377	\N	\N	\N	f	2021-11-26 15:40:51.887313+00	2021-11-26 15:40:51.887324+00	3	8609	115
2378	\N	\N	\N	f	2021-11-26 15:40:51.892471+00	2021-11-26 15:40:51.89248+00	3	8610	115
2379	\N	\N	\N	f	2021-11-26 15:40:51.897597+00	2021-11-26 15:40:51.897606+00	3	8611	115
2380	\N	\N	\N	f	2021-11-26 15:40:51.902421+00	2021-11-26 15:40:51.902429+00	3	8612	115
2381	\N	\N	\N	f	2021-11-26 15:40:51.907236+00	2021-11-26 15:40:51.907245+00	3	8613	115
2382	\N	\N	\N	f	2021-11-26 15:40:51.912025+00	2021-11-26 15:40:51.912032+00	3	8663	115
2383	\N	\N	\N	f	2021-11-26 15:40:51.91684+00	2021-11-26 15:40:51.916846+00	3	8662	115
2384	\N	\N	\N	f	2021-11-26 15:40:51.921643+00	2021-11-26 15:40:51.92165+00	3	8661	115
2385	\N	\N	\N	f	2021-11-26 15:40:51.926652+00	2021-11-26 15:40:51.926665+00	3	8660	115
2386	\N	\N	\N	f	2021-11-26 15:40:51.931771+00	2021-11-26 15:40:51.931779+00	3	8659	115
2387	\N	\N	\N	f	2021-11-26 15:40:51.936182+00	2021-11-26 15:40:51.93619+00	3	8658	115
2388	\N	\N	\N	f	2021-11-26 15:40:51.940915+00	2021-11-26 15:40:51.940923+00	3	8657	115
2389	\N	\N	\N	f	2021-11-26 15:40:51.945495+00	2021-11-26 15:40:51.945502+00	3	8656	115
2390	\N	\N	\N	f	2021-11-26 15:40:51.949869+00	2021-11-26 15:40:51.949875+00	3	8655	115
2391	\N	\N	\N	f	2021-11-26 15:40:51.954916+00	2021-11-26 15:40:51.954925+00	3	8654	115
2392	\N	\N	\N	f	2021-11-26 15:40:51.960025+00	2021-11-26 15:40:51.960034+00	3	8653	115
2393	\N	\N	\N	f	2021-11-26 15:40:51.964757+00	2021-11-26 15:40:51.964765+00	3	8652	115
2394	\N	\N	\N	f	2021-11-26 15:40:51.969333+00	2021-11-26 15:40:51.969341+00	3	8651	115
2395	\N	\N	\N	f	2021-11-26 15:40:51.974061+00	2021-11-26 15:40:51.974069+00	3	8650	115
2396	\N	\N	\N	f	2021-11-26 15:40:51.978645+00	2021-11-26 15:40:51.978651+00	3	8649	115
2397	\N	\N	\N	f	2021-11-26 15:40:51.983145+00	2021-11-26 15:40:51.983151+00	3	8648	115
2398	\N	\N	\N	f	2021-11-26 15:40:51.988058+00	2021-11-26 15:40:51.988067+00	3	8647	115
2399	\N	\N	\N	f	2021-11-26 15:40:51.99331+00	2021-11-26 15:40:51.993319+00	3	8646	115
2400	\N	\N	\N	f	2021-11-26 15:40:51.997963+00	2021-11-26 15:40:51.99797+00	3	8645	115
2401	\N	\N	\N	f	2021-11-26 15:40:52.002649+00	2021-11-26 15:40:52.002657+00	3	8644	115
2402	\N	\N	\N	f	2021-11-26 15:40:52.007156+00	2021-11-26 15:40:52.007164+00	3	8643	115
2403	\N	\N	\N	f	2021-11-26 15:40:52.011502+00	2021-11-26 15:40:52.011509+00	3	8642	115
2404	\N	\N	\N	f	2021-11-26 15:40:52.015898+00	2021-11-26 15:40:52.015904+00	3	8641	115
2405	\N	\N	\N	f	2021-11-26 15:40:52.020376+00	2021-11-26 15:40:52.020387+00	3	8640	115
2406	\N	\N	\N	f	2021-11-26 15:40:52.025336+00	2021-11-26 15:40:52.025345+00	3	8639	115
2407	\N	\N	\N	f	2021-11-26 15:40:52.029927+00	2021-11-26 15:40:52.029934+00	3	8638	115
2408	\N	\N	\N	f	2021-11-26 15:40:52.034336+00	2021-11-26 15:40:52.034343+00	3	8637	115
2409	\N	\N	\N	f	2021-11-26 15:40:52.038943+00	2021-11-26 15:40:52.038951+00	3	8636	115
2410	\N	\N	\N	f	2021-11-26 15:40:52.043587+00	2021-11-26 15:40:52.043594+00	3	8635	115
2411	\N	\N	\N	f	2021-11-26 15:40:52.048613+00	2021-11-26 15:40:52.048623+00	3	8634	115
2412	\N	\N	\N	f	2021-11-26 15:40:52.053447+00	2021-11-26 15:40:52.05346+00	3	8633	115
2413	\N	\N	\N	f	2021-11-26 15:40:52.058143+00	2021-11-26 15:40:52.058152+00	3	8632	115
2414	\N	\N	\N	f	2021-11-26 15:40:52.062849+00	2021-11-26 15:40:52.062857+00	3	8631	115
2415	\N	\N	\N	f	2021-11-26 15:40:52.067459+00	2021-11-26 15:40:52.067466+00	3	8630	115
2416	\N	\N	\N	f	2021-11-26 15:40:52.072307+00	2021-11-26 15:40:52.072314+00	3	8629	115
2417	\N	\N	\N	f	2021-11-26 15:40:52.077298+00	2021-11-26 15:40:52.077305+00	3	8628	115
2418	\N	\N	\N	f	2021-11-26 15:40:52.082283+00	2021-11-26 15:40:52.08229+00	3	8627	115
2419	\N	\N	\N	f	2021-11-26 15:40:52.087424+00	2021-11-26 15:40:52.087434+00	3	8626	115
2420	\N	\N	\N	f	2021-11-26 15:40:52.09274+00	2021-11-26 15:40:52.09275+00	3	8625	115
2421	\N	\N	\N	f	2021-11-26 15:40:52.097323+00	2021-11-26 15:40:52.09733+00	3	8624	115
2422	\N	\N	\N	f	2021-11-26 15:40:52.102008+00	2021-11-26 15:40:52.102015+00	3	8623	115
2423	\N	\N	\N	f	2021-11-26 15:40:52.107082+00	2021-11-26 15:40:52.107091+00	3	8622	115
2424	\N	\N	\N	f	2021-11-26 15:40:52.112179+00	2021-11-26 15:40:52.112189+00	3	8621	115
2425	\N	\N	\N	f	2021-11-26 15:40:52.116909+00	2021-11-26 15:40:52.116915+00	3	8620	115
2426	\N	\N	\N	f	2021-11-26 15:40:52.121778+00	2021-11-26 15:40:52.121787+00	3	8619	115
2427	\N	\N	\N	f	2021-11-26 15:40:52.126368+00	2021-11-26 15:40:52.126376+00	3	8618	115
2428	\N	\N	\N	f	2021-11-26 15:40:52.131254+00	2021-11-26 15:40:52.13126+00	3	8617	115
2429	\N	\N	\N	f	2021-11-26 15:40:52.135982+00	2021-11-26 15:40:52.13599+00	3	8616	115
2430	\N	\N	\N	f	2021-11-26 15:40:52.140982+00	2021-11-26 15:40:52.140992+00	3	8615	115
2431	\N	\N	\N	f	2021-11-26 15:40:52.145479+00	2021-11-26 15:40:52.145487+00	3	8614	115
2432	\N	\N	\N	f	2021-11-26 15:40:52.149946+00	2021-11-26 15:40:52.149953+00	3	8664	115
2433	\N	\N	\N	f	2021-11-26 15:40:52.154527+00	2021-11-26 15:40:52.154535+00	3	8665	115
2434	\N	\N	\N	f	2021-11-26 15:40:52.159231+00	2021-11-26 15:40:52.15924+00	3	8666	115
2435	\N	\N	\N	f	2021-11-26 15:40:52.165093+00	2021-11-26 15:40:52.165099+00	3	8667	115
2436	\N	\N	\N	f	2021-11-26 15:40:52.17019+00	2021-11-26 15:40:52.170222+00	3	8668	115
2437	\N	\N	\N	f	2021-11-26 15:40:52.175745+00	2021-11-26 15:40:52.175754+00	3	8669	115
2438	\N	\N	\N	f	2021-11-26 15:40:52.180469+00	2021-11-26 15:40:52.180475+00	3	8670	115
2439	\N	\N	\N	f	2021-11-26 15:40:52.185226+00	2021-11-26 15:40:52.185233+00	3	8671	115
2440	\N	\N	\N	f	2021-11-26 15:40:52.19009+00	2021-11-26 15:40:52.190099+00	3	8672	115
2441	\N	\N	\N	f	2021-11-26 15:40:52.19487+00	2021-11-26 15:40:52.194877+00	3	8673	115
2442	\N	\N	\N	f	2021-11-26 15:40:52.199386+00	2021-11-26 15:40:52.199392+00	3	8674	115
2443	\N	\N	\N	f	2021-11-26 15:40:52.204896+00	2021-11-26 15:40:52.204906+00	3	8675	115
2444	\N	\N	\N	f	2021-11-26 15:40:52.209745+00	2021-11-26 15:40:52.209754+00	3	8676	115
2445	\N	\N	\N	f	2021-11-26 15:40:52.214661+00	2021-11-26 15:40:52.214669+00	3	8677	115
2446	\N	\N	\N	f	2021-11-26 15:40:52.219281+00	2021-11-26 15:40:52.219288+00	3	8678	115
2447	\N	\N	\N	f	2021-11-26 15:40:52.224162+00	2021-11-26 15:40:52.22417+00	3	8679	115
2448	\N	\N	\N	f	2021-11-26 15:40:52.22879+00	2021-11-26 15:40:52.228797+00	3	8680	115
2449	\N	\N	\N	f	2021-11-26 15:40:52.233375+00	2021-11-26 15:40:52.233381+00	3	8681	115
2450	\N	\N	\N	f	2021-11-26 15:40:52.238088+00	2021-11-26 15:40:52.238098+00	3	8682	115
2451	\N	\N	\N	f	2021-11-26 15:40:52.24357+00	2021-11-26 15:40:52.243578+00	3	8683	115
2452	\N	\N	\N	f	2021-11-26 15:40:52.24852+00	2021-11-26 15:40:52.248528+00	3	8684	115
2453	\N	\N	\N	f	2021-11-26 15:40:52.253029+00	2021-11-26 15:40:52.253041+00	3	8685	115
2454	\N	\N	\N	f	2021-11-26 15:40:52.258042+00	2021-11-26 15:40:52.258051+00	3	8686	115
2455	\N	\N	\N	f	2021-11-26 15:40:52.262653+00	2021-11-26 15:40:52.262662+00	3	8687	115
2456	\N	\N	\N	f	2021-11-26 15:40:52.267268+00	2021-11-26 15:40:52.267277+00	3	8688	115
2457	\N	\N	\N	f	2021-11-26 15:40:52.272073+00	2021-11-26 15:40:52.272082+00	3	8689	115
2458	\N	\N	\N	f	2021-11-26 15:40:52.276982+00	2021-11-26 15:40:52.276989+00	3	8690	115
2459	\N	\N	\N	f	2021-11-26 15:40:52.281865+00	2021-11-26 15:40:52.281872+00	3	8691	115
2460	\N	\N	\N	f	2021-11-26 15:40:52.286562+00	2021-11-26 15:40:52.28657+00	3	8692	115
2461	\N	\N	\N	f	2021-11-26 15:40:52.291201+00	2021-11-26 15:40:52.29121+00	3	8693	115
2462	\N	\N	\N	f	2021-11-26 15:40:52.295945+00	2021-11-26 15:40:52.295954+00	3	8694	115
2463	\N	\N	\N	f	2021-11-26 15:40:52.300657+00	2021-11-26 15:40:52.300664+00	3	8695	115
2464	\N	\N	\N	f	2021-11-26 15:40:52.30576+00	2021-11-26 15:40:52.30577+00	3	8696	115
2465	\N	\N	\N	f	2021-11-26 15:40:52.310634+00	2021-11-26 15:40:52.310642+00	3	8697	115
2466	\N	\N	\N	f	2021-11-26 15:40:52.315213+00	2021-11-26 15:40:52.315219+00	3	8698	115
2467	\N	\N	\N	f	2021-11-26 15:40:52.320182+00	2021-11-26 15:40:52.320199+00	3	8699	115
2468	\N	\N	\N	f	2021-11-26 15:40:52.325493+00	2021-11-26 15:40:52.325503+00	3	8700	115
2469	\N	\N	\N	f	2021-11-26 15:40:52.330374+00	2021-11-26 15:40:52.330381+00	3	8701	115
2470	\N	\N	\N	f	2021-11-26 15:40:52.33507+00	2021-11-26 15:40:52.335077+00	3	8702	115
2471	\N	\N	\N	f	2021-11-26 15:40:52.340073+00	2021-11-26 15:40:52.340082+00	3	8703	115
2472	\N	\N	\N	f	2021-11-26 15:40:52.344973+00	2021-11-26 15:40:52.34498+00	3	8704	115
2473	\N	\N	\N	f	2021-11-26 15:40:52.349969+00	2021-11-26 15:40:52.349976+00	3	8705	115
2474	\N	\N	\N	f	2021-11-26 15:40:52.355033+00	2021-11-26 15:40:52.355046+00	3	8706	115
2475	\N	\N	\N	f	2021-11-26 15:40:52.360679+00	2021-11-26 15:40:52.360689+00	3	8707	115
2476	\N	\N	\N	f	2021-11-26 15:40:52.365588+00	2021-11-26 15:40:52.365596+00	3	8708	115
2477	\N	\N	\N	f	2021-11-26 15:40:52.37049+00	2021-11-26 15:40:52.370499+00	3	8709	115
2478	\N	\N	\N	f	2021-11-26 15:40:52.375866+00	2021-11-26 15:40:52.375873+00	3	8710	115
2479	\N	\N	\N	f	2021-11-26 15:40:52.381173+00	2021-11-26 15:40:52.38118+00	3	8711	115
2480	\N	\N	\N	f	2021-11-26 15:40:52.386269+00	2021-11-26 15:40:52.386277+00	3	8712	115
2481	\N	\N	\N	f	2021-11-26 15:40:52.391345+00	2021-11-26 15:40:52.391363+00	3	8713	115
2482	\N	\N	\N	f	2021-11-26 15:40:52.395976+00	2021-11-26 15:40:52.395984+00	3	8763	115
2483	\N	\N	\N	f	2021-11-26 15:40:52.400399+00	2021-11-26 15:40:52.400406+00	3	8762	115
2484	\N	\N	\N	f	2021-11-26 15:40:52.40502+00	2021-11-26 15:40:52.405029+00	3	8761	115
2485	\N	\N	\N	f	2021-11-26 15:40:52.409457+00	2021-11-26 15:40:52.409464+00	3	8760	115
2486	\N	\N	\N	f	2021-11-26 15:40:52.413918+00	2021-11-26 15:40:52.413924+00	3	8759	115
2487	\N	\N	\N	f	2021-11-26 15:40:52.419026+00	2021-11-26 15:40:52.419035+00	3	8758	115
2488	\N	\N	\N	f	2021-11-26 15:40:52.424231+00	2021-11-26 15:40:52.42424+00	3	8757	115
2489	\N	\N	\N	f	2021-11-26 15:40:52.429203+00	2021-11-26 15:40:52.429212+00	3	8756	115
2490	\N	\N	\N	f	2021-11-26 15:40:52.434041+00	2021-11-26 15:40:52.434049+00	3	8755	115
2491	\N	\N	\N	f	2021-11-26 15:40:52.438919+00	2021-11-26 15:40:52.438926+00	3	8754	115
2492	\N	\N	\N	f	2021-11-26 15:40:52.443759+00	2021-11-26 15:40:52.443766+00	3	8753	115
2493	\N	\N	\N	f	2021-11-26 15:40:52.449021+00	2021-11-26 15:40:52.449028+00	3	8752	115
2494	\N	\N	\N	f	2021-11-26 15:40:52.454161+00	2021-11-26 15:40:52.454174+00	3	8751	115
2495	\N	\N	\N	f	2021-11-26 15:40:52.45988+00	2021-11-26 15:40:52.459888+00	3	8750	115
2496	\N	\N	\N	f	2021-11-26 15:40:52.465134+00	2021-11-26 15:40:52.46514+00	3	8749	115
2497	\N	\N	\N	f	2021-11-26 15:40:52.471445+00	2021-11-26 15:40:52.471453+00	3	8748	115
2498	\N	\N	\N	f	2021-11-26 15:40:52.477208+00	2021-11-26 15:40:52.477218+00	3	8747	115
2499	\N	\N	\N	f	2021-11-26 15:40:52.482396+00	2021-11-26 15:40:52.482404+00	3	8746	115
2500	\N	\N	\N	f	2021-11-26 15:40:52.487536+00	2021-11-26 15:40:52.487546+00	3	8745	115
2501	\N	\N	\N	f	2021-11-26 15:40:52.498809+00	2021-11-26 15:40:52.498818+00	3	8744	115
2502	\N	\N	\N	f	2021-11-26 15:40:52.504247+00	2021-11-26 15:40:52.504256+00	3	8743	115
2503	\N	\N	\N	f	2021-11-26 15:40:52.509581+00	2021-11-26 15:40:52.509594+00	3	8742	115
2504	\N	\N	\N	f	2021-11-26 15:40:52.514832+00	2021-11-26 15:40:52.514839+00	3	8741	115
2505	\N	\N	\N	f	2021-11-26 15:40:52.519816+00	2021-11-26 15:40:52.519826+00	3	8740	115
2506	\N	\N	\N	f	2021-11-26 15:40:52.52839+00	2021-11-26 15:40:52.528398+00	3	8739	115
2507	\N	\N	\N	f	2021-11-26 15:40:52.532906+00	2021-11-26 15:40:52.532913+00	3	8738	115
2508	\N	\N	\N	f	2021-11-26 15:40:52.537933+00	2021-11-26 15:40:52.537946+00	3	8737	115
2509	\N	\N	\N	f	2021-11-26 15:40:52.54338+00	2021-11-26 15:40:52.543389+00	3	8736	115
2510	\N	\N	\N	f	2021-11-26 15:40:52.54845+00	2021-11-26 15:40:52.548458+00	3	8735	115
2511	\N	\N	\N	f	2021-11-26 15:40:52.553588+00	2021-11-26 15:40:52.553598+00	3	8734	115
2512	\N	\N	\N	f	2021-11-26 15:40:52.558559+00	2021-11-26 15:40:52.558566+00	3	8733	115
2513	\N	\N	\N	f	2021-11-26 15:40:52.56332+00	2021-11-26 15:40:52.563327+00	3	8732	115
2514	\N	\N	\N	f	2021-11-26 15:40:52.568323+00	2021-11-26 15:40:52.568356+00	3	8731	115
2515	\N	\N	\N	f	2021-11-26 15:40:52.573683+00	2021-11-26 15:40:52.573692+00	3	8730	115
2516	\N	\N	\N	f	2021-11-26 15:40:52.578488+00	2021-11-26 15:40:52.578497+00	3	8729	115
2517	\N	\N	\N	f	2021-11-26 15:40:52.583133+00	2021-11-26 15:40:52.583141+00	3	8728	115
2518	\N	\N	\N	f	2021-11-26 15:40:52.587826+00	2021-11-26 15:40:52.587834+00	3	8727	115
2519	\N	\N	\N	f	2021-11-26 15:40:52.592387+00	2021-11-26 15:40:52.592394+00	3	8726	115
2520	\N	\N	\N	f	2021-11-26 15:40:52.597049+00	2021-11-26 15:40:52.597057+00	3	8725	115
2521	\N	\N	\N	f	2021-11-26 15:40:52.601597+00	2021-11-26 15:40:52.601607+00	3	8724	115
2522	\N	\N	\N	f	2021-11-26 15:40:52.606781+00	2021-11-26 15:40:52.60679+00	3	8723	115
2523	\N	\N	\N	f	2021-11-26 15:40:52.611451+00	2021-11-26 15:40:52.611458+00	3	8722	115
2524	\N	\N	\N	f	2021-11-26 15:40:52.616141+00	2021-11-26 15:40:52.616148+00	3	8721	115
2525	\N	\N	\N	f	2021-11-26 15:40:52.621334+00	2021-11-26 15:40:52.621343+00	3	8720	115
2526	\N	\N	\N	f	2021-11-26 15:40:52.625978+00	2021-11-26 15:40:52.625987+00	3	8719	115
2527	\N	\N	\N	f	2021-11-26 15:40:52.631026+00	2021-11-26 15:40:52.631035+00	3	8718	115
2528	\N	\N	\N	f	2021-11-26 15:40:52.635568+00	2021-11-26 15:40:52.635576+00	3	8717	115
2529	\N	\N	\N	f	2021-11-26 15:40:52.640268+00	2021-11-26 15:40:52.640277+00	3	8716	115
2530	\N	\N	\N	f	2021-11-26 15:40:52.644833+00	2021-11-26 15:40:52.644839+00	3	8715	115
2531	\N	\N	\N	f	2021-11-26 15:40:52.649154+00	2021-11-26 15:40:52.649161+00	3	8714	115
2532	\N	\N	\N	f	2021-11-26 15:40:52.653877+00	2021-11-26 15:40:52.653887+00	3	8764	115
2533	\N	\N	\N	f	2021-11-26 15:40:52.658868+00	2021-11-26 15:40:52.658878+00	3	8765	115
2534	\N	\N	\N	f	2021-11-26 15:40:52.663609+00	2021-11-26 15:40:52.663617+00	3	8766	115
2535	\N	\N	\N	f	2021-11-26 15:40:52.668557+00	2021-11-26 15:40:52.668564+00	3	8767	115
2536	\N	\N	\N	f	2021-11-26 15:40:52.673713+00	2021-11-26 15:40:52.673722+00	3	8768	115
2537	\N	\N	\N	f	2021-11-26 15:40:52.67835+00	2021-11-26 15:40:52.678356+00	3	8769	115
2538	\N	\N	\N	f	2021-11-26 15:40:52.683099+00	2021-11-26 15:40:52.683105+00	3	8770	115
2539	\N	\N	\N	f	2021-11-26 15:40:52.68875+00	2021-11-26 15:40:52.68876+00	3	8771	115
2540	\N	\N	\N	f	2021-11-26 15:40:52.694369+00	2021-11-26 15:40:52.694379+00	3	8772	115
2541	\N	\N	\N	f	2021-11-26 15:40:52.699432+00	2021-11-26 15:40:52.69944+00	3	8773	115
2542	\N	\N	\N	f	2021-11-26 15:40:52.704462+00	2021-11-26 15:40:52.704471+00	3	8774	115
2543	\N	\N	\N	f	2021-11-26 15:40:52.709519+00	2021-11-26 15:40:52.709526+00	3	8775	115
2544	\N	\N	\N	f	2021-11-26 15:40:52.714484+00	2021-11-26 15:40:52.71449+00	3	8776	115
2545	\N	\N	\N	f	2021-11-26 15:40:52.721188+00	2021-11-26 15:40:52.721203+00	3	8777	115
2546	\N	\N	\N	f	2021-11-26 15:40:52.730963+00	2021-11-26 15:40:52.730976+00	3	8778	115
2547	\N	\N	\N	f	2021-11-26 15:40:52.739079+00	2021-11-26 15:40:52.739092+00	3	8779	115
2548	\N	\N	\N	f	2021-11-26 15:40:52.746286+00	2021-11-26 15:40:52.746296+00	3	8780	115
2549	\N	\N	\N	f	2021-11-26 15:40:52.75123+00	2021-11-26 15:40:52.75124+00	3	8781	115
2550	\N	\N	\N	f	2021-11-26 15:40:52.758011+00	2021-11-26 15:40:52.758024+00	3	8782	115
2551	\N	\N	\N	f	2021-11-26 15:40:52.763353+00	2021-11-26 15:40:52.763609+00	3	8783	115
2552	\N	\N	\N	f	2021-11-26 15:40:52.768833+00	2021-11-26 15:40:52.76884+00	3	8803	115
2553	\N	\N	\N	f	2021-11-26 15:40:52.773984+00	2021-11-26 15:40:52.773993+00	3	8802	115
2554	\N	\N	\N	f	2021-11-26 15:40:52.779108+00	2021-11-26 15:40:52.779115+00	3	8801	115
2555	\N	\N	\N	f	2021-11-26 15:40:52.784425+00	2021-11-26 15:40:52.784434+00	3	8800	115
2556	\N	\N	\N	f	2021-11-26 15:40:52.790238+00	2021-11-26 15:40:52.790247+00	3	8799	115
2557	\N	\N	\N	f	2021-11-26 15:40:52.795363+00	2021-11-26 15:40:52.795374+00	3	8798	115
2558	\N	\N	\N	f	2021-11-26 15:40:52.800387+00	2021-11-26 15:40:52.800394+00	3	8797	115
2559	\N	\N	\N	f	2021-11-26 15:40:52.805277+00	2021-11-26 15:40:52.805285+00	3	8796	115
2560	\N	\N	\N	f	2021-11-26 15:40:52.81024+00	2021-11-26 15:40:52.810246+00	3	8795	115
2561	\N	\N	\N	f	2021-11-26 15:40:52.815317+00	2021-11-26 15:40:52.815327+00	3	8794	115
2562	\N	\N	\N	f	2021-11-26 15:40:52.820549+00	2021-11-26 15:40:52.820559+00	3	8793	115
2563	\N	\N	\N	f	2021-11-26 15:40:52.825714+00	2021-11-26 15:40:52.825723+00	3	8792	115
2564	\N	\N	\N	f	2021-11-26 15:40:52.831001+00	2021-11-26 15:40:52.831007+00	3	8791	115
2565	\N	\N	\N	f	2021-11-26 15:40:52.836524+00	2021-11-26 15:40:52.836538+00	3	8790	115
2566	\N	\N	\N	f	2021-11-26 15:40:52.84228+00	2021-11-26 15:40:52.842291+00	3	8789	115
2567	\N	\N	\N	f	2021-11-26 15:40:52.847257+00	2021-11-26 15:40:52.847266+00	3	8788	115
2568	\N	\N	\N	f	2021-11-26 15:40:52.85181+00	2021-11-26 15:40:52.851817+00	3	8787	115
2569	\N	\N	\N	f	2021-11-26 15:40:52.856633+00	2021-11-26 15:40:52.856642+00	3	8786	115
2570	\N	\N	\N	f	2021-11-26 15:40:52.861229+00	2021-11-26 15:40:52.861236+00	3	8785	115
2571	\N	\N	\N	f	2021-11-26 15:40:52.865607+00	2021-11-26 15:40:52.865613+00	3	8784	115
2572	\N	\N	\N	f	2021-11-26 15:40:52.870371+00	2021-11-26 15:40:52.870381+00	3	8804	115
2573	\N	\N	\N	f	2021-11-26 15:40:52.875337+00	2021-11-26 15:40:52.875346+00	3	8805	115
2574	\N	\N	\N	f	2021-11-26 15:40:52.880191+00	2021-11-26 15:40:52.880198+00	3	8806	115
2575	\N	\N	\N	f	2021-11-26 15:40:52.885466+00	2021-11-26 15:40:52.885474+00	3	8807	115
2576	\N	\N	\N	f	2021-11-26 15:40:52.890422+00	2021-11-26 15:40:52.890431+00	3	8808	115
2577	\N	\N	\N	f	2021-11-26 15:40:52.895088+00	2021-11-26 15:40:52.895094+00	3	8809	115
2578	\N	\N	\N	f	2021-11-26 15:40:52.899277+00	2021-11-26 15:40:52.899283+00	3	8810	115
2579	\N	\N	\N	f	2021-11-26 15:40:52.904541+00	2021-11-26 15:40:52.904554+00	3	8811	115
2580	\N	\N	\N	f	2021-11-26 15:40:52.909927+00	2021-11-26 15:40:52.909937+00	3	8812	115
2581	\N	\N	\N	f	2021-11-26 15:40:52.91468+00	2021-11-26 15:40:52.914688+00	3	8813	115
2582	\N	\N	\N	f	2021-11-26 15:40:52.919251+00	2021-11-26 15:40:52.91926+00	3	8814	115
2583	\N	\N	\N	f	2021-11-26 15:40:52.924158+00	2021-11-26 15:40:52.924166+00	3	8815	115
2584	\N	\N	\N	f	2021-11-26 15:40:52.928556+00	2021-11-26 15:40:52.928563+00	3	8816	115
2585	\N	\N	\N	f	2021-11-26 15:40:52.933177+00	2021-11-26 15:40:52.933188+00	3	8817	115
2586	\N	\N	\N	f	2021-11-26 15:40:52.938859+00	2021-11-26 15:40:52.93887+00	3	8818	115
2587	\N	\N	\N	f	2021-11-26 15:40:52.944141+00	2021-11-26 15:40:52.94415+00	3	8819	115
2588	\N	\N	\N	f	2021-11-26 15:40:52.949081+00	2021-11-26 15:40:52.949088+00	3	8820	115
2589	\N	\N	\N	f	2021-11-26 15:40:52.953906+00	2021-11-26 15:40:52.953913+00	3	8821	115
2590	\N	\N	\N	f	2021-11-26 15:40:52.958298+00	2021-11-26 15:40:52.958304+00	3	8822	115
2591	\N	\N	\N	f	2021-11-26 15:40:52.962864+00	2021-11-26 15:40:52.962871+00	3	8823	115
2592	\N	\N	\N	f	2021-11-26 15:40:52.967293+00	2021-11-26 15:40:52.9673+00	3	8843	115
2593	\N	\N	\N	f	2021-11-26 15:40:52.972129+00	2021-11-26 15:40:52.972141+00	3	8842	115
2594	\N	\N	\N	f	2021-11-26 15:40:52.977062+00	2021-11-26 15:40:52.97707+00	3	8841	115
2595	\N	\N	\N	f	2021-11-26 15:40:52.981578+00	2021-11-26 15:40:52.981584+00	3	8840	115
2596	\N	\N	\N	f	2021-11-26 15:40:52.986193+00	2021-11-26 15:40:52.986204+00	3	8839	115
2597	\N	\N	\N	f	2021-11-26 15:40:52.991892+00	2021-11-26 15:40:52.991903+00	3	8838	115
2598	\N	\N	\N	f	2021-11-26 15:40:52.996896+00	2021-11-26 15:40:52.996905+00	3	8837	115
2599	\N	\N	\N	f	2021-11-26 15:40:53.001659+00	2021-11-26 15:40:53.001667+00	3	8836	115
2600	\N	\N	\N	f	2021-11-26 15:40:53.008635+00	2021-11-26 15:40:53.008644+00	3	8835	115
2601	\N	\N	\N	f	2021-11-26 15:40:53.013393+00	2021-11-26 15:40:53.0134+00	3	8834	115
2602	\N	\N	\N	f	2021-11-26 15:40:53.017869+00	2021-11-26 15:40:53.017877+00	3	8833	115
2603	\N	\N	\N	f	2021-11-26 15:40:53.022304+00	2021-11-26 15:40:53.022312+00	3	8832	115
2604	\N	\N	\N	f	2021-11-26 15:40:53.027398+00	2021-11-26 15:40:53.027407+00	3	8831	115
2605	\N	\N	\N	f	2021-11-26 15:40:53.032244+00	2021-11-26 15:40:53.032252+00	3	8830	115
2606	\N	\N	\N	f	2021-11-26 15:40:53.037092+00	2021-11-26 15:40:53.037101+00	3	8829	115
2607	\N	\N	\N	f	2021-11-26 15:40:53.041889+00	2021-11-26 15:40:53.041898+00	3	8828	115
2608	\N	\N	\N	f	2021-11-26 15:40:53.046177+00	2021-11-26 15:40:53.046184+00	3	8827	115
2609	\N	\N	\N	f	2021-11-26 15:40:53.050302+00	2021-11-26 15:40:53.050308+00	3	8826	115
2610	\N	\N	\N	f	2021-11-26 15:40:53.055544+00	2021-11-26 15:40:53.055558+00	3	8825	115
2611	\N	\N	\N	f	2021-11-26 15:40:53.060894+00	2021-11-26 15:40:53.060904+00	3	8824	115
2612	\N	\N	\N	f	2021-11-26 15:40:53.069776+00	2021-11-26 15:40:53.069787+00	3	8844	115
2613	\N	\N	\N	f	2021-11-26 15:40:53.074763+00	2021-11-26 15:40:53.074772+00	3	8845	115
2614	\N	\N	\N	f	2021-11-26 15:40:53.079669+00	2021-11-26 15:40:53.079677+00	3	8846	115
2615	\N	\N	\N	f	2021-11-26 15:40:53.084931+00	2021-11-26 15:40:53.084941+00	3	8847	115
2616	\N	\N	\N	f	2021-11-26 15:40:53.090311+00	2021-11-26 15:40:53.09032+00	3	8848	115
2617	\N	\N	\N	f	2021-11-26 15:40:53.095249+00	2021-11-26 15:40:53.095259+00	3	8849	115
2618	\N	\N	\N	f	2021-11-26 15:40:53.100782+00	2021-11-26 15:40:53.100792+00	3	8850	115
2619	\N	\N	\N	f	2021-11-26 15:40:53.105605+00	2021-11-26 15:40:53.105614+00	3	8851	115
2620	\N	\N	\N	f	2021-11-26 15:40:53.110073+00	2021-11-26 15:40:53.11008+00	3	8852	115
2621	\N	\N	\N	f	2021-11-26 15:40:53.114556+00	2021-11-26 15:40:53.114563+00	3	8853	115
2622	\N	\N	\N	f	2021-11-26 15:40:53.119201+00	2021-11-26 15:40:53.119208+00	3	8854	115
2623	\N	\N	\N	f	2021-11-26 15:40:53.124223+00	2021-11-26 15:40:53.124232+00	3	8855	115
2624	\N	\N	\N	f	2021-11-26 15:40:53.12861+00	2021-11-26 15:40:53.128619+00	3	8856	115
2625	\N	\N	\N	f	2021-11-26 15:40:53.133084+00	2021-11-26 15:40:53.13309+00	3	8857	115
2626	\N	\N	\N	f	2021-11-26 15:40:53.1381+00	2021-11-26 15:40:53.138109+00	3	8858	115
2627	\N	\N	\N	f	2021-11-26 15:40:53.142837+00	2021-11-26 15:40:53.142846+00	3	8859	115
2628	\N	\N	\N	f	2021-11-26 15:40:53.148174+00	2021-11-26 15:40:53.148184+00	3	8860	115
2629	\N	\N	\N	f	2021-11-26 15:40:53.152761+00	2021-11-26 15:40:53.152769+00	3	8861	115
2630	\N	\N	\N	f	2021-11-26 15:40:53.157666+00	2021-11-26 15:40:53.157675+00	3	8862	115
2631	\N	\N	\N	f	2021-11-26 15:40:53.162081+00	2021-11-26 15:40:53.162088+00	3	8863	115
2632	\N	\N	\N	f	2021-11-26 15:40:53.170335+00	2021-11-26 15:40:53.170347+00	3	8883	115
2633	\N	\N	\N	f	2021-11-26 15:40:53.175821+00	2021-11-26 15:40:53.175831+00	3	8882	115
2634	\N	\N	\N	f	2021-11-26 15:40:53.181292+00	2021-11-26 15:40:53.1813+00	3	8881	115
2635	\N	\N	\N	f	2021-11-26 15:40:53.186925+00	2021-11-26 15:40:53.186935+00	3	8880	115
2636	\N	\N	\N	f	2021-11-26 15:40:53.192363+00	2021-11-26 15:40:53.192372+00	3	8879	115
2637	\N	\N	\N	f	2021-11-26 15:40:53.197471+00	2021-11-26 15:40:53.19748+00	3	8878	115
2638	\N	\N	\N	f	2021-11-26 15:40:53.20279+00	2021-11-26 15:40:53.2028+00	3	8877	115
2639	\N	\N	\N	f	2021-11-26 15:40:53.209016+00	2021-11-26 15:40:53.209026+00	3	8876	115
2640	\N	\N	\N	f	2021-11-26 15:40:53.214297+00	2021-11-26 15:40:53.214306+00	3	8875	115
2641	\N	\N	\N	f	2021-11-26 15:40:53.219007+00	2021-11-26 15:40:53.219016+00	3	8874	115
2642	\N	\N	\N	f	2021-11-26 15:40:53.223809+00	2021-11-26 15:40:53.223817+00	3	8873	115
2643	\N	\N	\N	f	2021-11-26 15:40:53.22842+00	2021-11-26 15:40:53.228427+00	3	8872	115
2644	\N	\N	\N	f	2021-11-26 15:40:53.233161+00	2021-11-26 15:40:53.233167+00	3	8871	115
2645	\N	\N	\N	f	2021-11-26 15:40:53.238197+00	2021-11-26 15:40:53.238207+00	3	8870	115
2646	\N	\N	\N	f	2021-11-26 15:40:53.243527+00	2021-11-26 15:40:53.243536+00	3	8869	115
2647	\N	\N	\N	f	2021-11-26 15:40:53.248294+00	2021-11-26 15:40:53.248301+00	3	8868	115
2648	\N	\N	\N	f	2021-11-26 15:40:53.252981+00	2021-11-26 15:40:53.252989+00	3	8867	115
2649	\N	\N	\N	f	2021-11-26 15:40:53.257743+00	2021-11-26 15:40:53.257751+00	3	8866	115
2650	\N	\N	\N	f	2021-11-26 15:40:53.262408+00	2021-11-26 15:40:53.262415+00	3	8865	115
2651	\N	\N	\N	f	2021-11-26 15:40:53.267281+00	2021-11-26 15:40:53.26729+00	3	8864	115
2652	\N	\N	\N	f	2021-11-26 15:40:53.272617+00	2021-11-26 15:40:53.272626+00	3	8884	115
2653	\N	\N	\N	f	2021-11-26 15:40:53.279039+00	2021-11-26 15:40:53.279048+00	3	8885	115
2654	\N	\N	\N	f	2021-11-26 15:40:53.283763+00	2021-11-26 15:40:53.283769+00	3	8886	115
2655	\N	\N	\N	f	2021-11-26 15:40:53.288469+00	2021-11-26 15:40:53.288476+00	3	8887	115
2656	\N	\N	\N	f	2021-11-26 15:40:53.293155+00	2021-11-26 15:40:53.293162+00	3	8888	115
2657	\N	\N	\N	f	2021-11-26 15:40:53.297813+00	2021-11-26 15:40:53.297819+00	3	8889	115
2658	\N	\N	\N	f	2021-11-26 15:40:53.302624+00	2021-11-26 15:40:53.302632+00	3	8890	115
2659	\N	\N	\N	f	2021-11-26 15:40:53.307927+00	2021-11-26 15:40:53.307936+00	3	8891	115
2660	\N	\N	\N	f	2021-11-26 15:40:53.312431+00	2021-11-26 15:40:53.312439+00	3	8892	115
2661	\N	\N	\N	f	2021-11-26 15:40:53.317208+00	2021-11-26 15:40:53.317214+00	3	8893	115
2662	\N	\N	\N	f	2021-11-26 15:40:53.322918+00	2021-11-26 15:40:53.322927+00	3	8894	115
2663	\N	\N	\N	f	2021-11-26 15:40:53.32853+00	2021-11-26 15:40:53.328542+00	3	8895	115
2664	\N	\N	\N	f	2021-11-26 15:40:53.333773+00	2021-11-26 15:40:53.333782+00	3	8896	115
2665	\N	\N	\N	f	2021-11-26 15:40:53.338807+00	2021-11-26 15:40:53.338815+00	3	8897	115
2666	\N	\N	\N	f	2021-11-26 15:40:53.343464+00	2021-11-26 15:40:53.343471+00	3	8898	115
2667	\N	\N	\N	f	2021-11-26 15:40:53.348765+00	2021-11-26 15:40:53.348772+00	3	8899	115
2668	\N	\N	\N	f	2021-11-26 15:40:53.353477+00	2021-11-26 15:40:53.353485+00	3	8900	115
2669	\N	\N	\N	f	2021-11-26 15:40:53.358095+00	2021-11-26 15:40:53.358106+00	3	8901	115
2670	\N	\N	\N	f	2021-11-26 15:40:53.362723+00	2021-11-26 15:40:53.362731+00	3	8902	115
2671	\N	\N	\N	f	2021-11-26 15:40:53.367178+00	2021-11-26 15:40:53.367184+00	3	8903	115
2672	\N	\N	\N	f	2021-11-26 15:40:53.371732+00	2021-11-26 15:40:53.371742+00	3	8923	115
2673	\N	\N	\N	f	2021-11-26 15:40:53.376473+00	2021-11-26 15:40:53.376481+00	3	8922	115
2674	\N	\N	\N	f	2021-11-26 15:40:53.381069+00	2021-11-26 15:40:53.381075+00	3	8921	115
2675	\N	\N	\N	f	2021-11-26 15:40:53.385476+00	2021-11-26 15:40:53.385482+00	3	8920	115
2676	\N	\N	\N	f	2021-11-26 15:40:53.390781+00	2021-11-26 15:40:53.390792+00	3	8919	115
2677	\N	\N	\N	f	2021-11-26 15:40:53.395911+00	2021-11-26 15:40:53.39592+00	3	8918	115
2678	\N	\N	\N	f	2021-11-26 15:40:53.40075+00	2021-11-26 15:40:53.400759+00	3	8917	115
2679	\N	\N	\N	f	2021-11-26 15:40:53.405907+00	2021-11-26 15:40:53.405916+00	3	8916	115
2680	\N	\N	\N	f	2021-11-26 15:40:53.410536+00	2021-11-26 15:40:53.410543+00	3	8915	115
2681	\N	\N	\N	f	2021-11-26 15:40:53.414995+00	2021-11-26 15:40:53.415002+00	3	8914	115
2682	\N	\N	\N	f	2021-11-26 15:40:53.419466+00	2021-11-26 15:40:53.419473+00	3	8913	115
2683	\N	\N	\N	f	2021-11-26 15:40:53.424853+00	2021-11-26 15:40:53.424863+00	3	8912	115
2684	\N	\N	\N	f	2021-11-26 15:40:53.429514+00	2021-11-26 15:40:53.429521+00	3	8911	115
2685	\N	\N	\N	f	2021-11-26 15:40:53.434094+00	2021-11-26 15:40:53.4341+00	3	8910	115
2686	\N	\N	\N	f	2021-11-26 15:40:53.439494+00	2021-11-26 15:40:53.439503+00	3	8909	115
2687	\N	\N	\N	f	2021-11-26 15:40:53.443861+00	2021-11-26 15:40:53.443869+00	3	8908	115
2688	\N	\N	\N	f	2021-11-26 15:40:53.449487+00	2021-11-26 15:40:53.449493+00	3	8907	115
2689	\N	\N	\N	f	2021-11-26 15:40:53.454506+00	2021-11-26 15:40:53.454516+00	3	8906	115
2690	\N	\N	\N	f	2021-11-26 15:40:53.459125+00	2021-11-26 15:40:53.459134+00	3	8905	115
2691	\N	\N	\N	f	2021-11-26 15:40:53.463659+00	2021-11-26 15:40:53.463666+00	3	8904	115
2692	\N	\N	\N	f	2021-11-26 15:40:53.468077+00	2021-11-26 15:40:53.468085+00	3	8924	115
2693	\N	\N	\N	f	2021-11-26 15:40:53.472671+00	2021-11-26 15:40:53.472679+00	3	8925	115
2694	\N	\N	\N	f	2021-11-26 15:40:53.477086+00	2021-11-26 15:40:53.477093+00	3	8926	115
2695	\N	\N	\N	f	2021-11-26 15:40:53.481331+00	2021-11-26 15:40:53.481337+00	3	8927	115
2696	\N	\N	\N	f	2021-11-26 15:40:53.485696+00	2021-11-26 15:40:53.485704+00	3	8928	115
2697	\N	\N	\N	f	2021-11-26 15:40:53.490694+00	2021-11-26 15:40:53.490704+00	3	8929	115
2698	\N	\N	\N	f	2021-11-26 15:40:53.495787+00	2021-11-26 15:40:53.495796+00	3	8930	115
2699	\N	\N	\N	f	2021-11-26 15:40:53.500748+00	2021-11-26 15:40:53.500756+00	3	8931	115
2700	\N	\N	\N	f	2021-11-26 15:40:53.505776+00	2021-11-26 15:40:53.505784+00	3	8932	115
2701	\N	\N	\N	f	2021-11-26 15:40:53.510371+00	2021-11-26 15:40:53.510378+00	3	8933	115
2702	\N	\N	\N	f	2021-11-26 15:40:53.515265+00	2021-11-26 15:40:53.515274+00	3	8934	115
2703	\N	\N	\N	f	2021-11-26 15:40:53.520032+00	2021-11-26 15:40:53.520041+00	3	8935	115
2704	\N	\N	\N	f	2021-11-26 15:40:53.525002+00	2021-11-26 15:40:53.525011+00	3	8936	115
2705	\N	\N	\N	f	2021-11-26 15:40:53.529723+00	2021-11-26 15:40:53.52973+00	3	8937	115
2706	\N	\N	\N	f	2021-11-26 15:40:53.534332+00	2021-11-26 15:40:53.534339+00	3	8938	115
2707	\N	\N	\N	f	2021-11-26 15:40:53.53909+00	2021-11-26 15:40:53.539097+00	3	8939	115
2708	\N	\N	\N	f	2021-11-26 15:40:53.543544+00	2021-11-26 15:40:53.543551+00	3	8940	115
2709	\N	\N	\N	f	2021-11-26 15:40:53.548046+00	2021-11-26 15:40:53.548052+00	3	8941	115
2710	\N	\N	\N	f	2021-11-26 15:40:53.552513+00	2021-11-26 15:40:53.552519+00	3	8942	115
2711	\N	\N	\N	f	2021-11-26 15:40:53.557728+00	2021-11-26 15:40:53.557737+00	3	8943	115
2712	\N	\N	\N	f	2021-11-26 15:40:53.562066+00	2021-11-26 15:40:53.562073+00	3	8963	115
2713	\N	\N	\N	f	2021-11-26 15:40:53.566307+00	2021-11-26 15:40:53.566313+00	3	8962	115
2714	\N	\N	\N	f	2021-11-26 15:40:53.571452+00	2021-11-26 15:40:53.57146+00	3	8961	115
2715	\N	\N	\N	f	2021-11-26 15:40:53.576709+00	2021-11-26 15:40:53.576718+00	3	8960	115
2716	\N	\N	\N	f	2021-11-26 15:40:53.581338+00	2021-11-26 15:40:53.581346+00	3	8959	115
2717	\N	\N	\N	f	2021-11-26 15:40:53.585945+00	2021-11-26 15:40:53.585953+00	3	8958	115
2718	\N	\N	\N	f	2021-11-26 15:40:53.590702+00	2021-11-26 15:40:53.59071+00	3	8957	115
2719	\N	\N	\N	f	2021-11-26 15:40:53.595325+00	2021-11-26 15:40:53.595332+00	3	8956	115
2720	\N	\N	\N	f	2021-11-26 15:40:53.599794+00	2021-11-26 15:40:53.599801+00	3	8955	115
2721	\N	\N	\N	f	2021-11-26 15:40:53.604735+00	2021-11-26 15:40:53.604743+00	3	8954	115
2722	\N	\N	\N	f	2021-11-26 15:40:53.609614+00	2021-11-26 15:40:53.609625+00	3	8953	115
2723	\N	\N	\N	f	2021-11-26 15:40:53.614413+00	2021-11-26 15:40:53.61442+00	3	8952	115
2724	\N	\N	\N	f	2021-11-26 15:40:53.619161+00	2021-11-26 15:40:53.619167+00	3	8951	115
2725	\N	\N	\N	f	2021-11-26 15:40:53.624298+00	2021-11-26 15:40:53.624307+00	3	8950	115
2726	\N	\N	\N	f	2021-11-26 15:40:53.629098+00	2021-11-26 15:40:53.629104+00	3	8949	115
2727	\N	\N	\N	f	2021-11-26 15:40:53.633745+00	2021-11-26 15:40:53.633751+00	3	8948	115
2728	\N	\N	\N	f	2021-11-26 15:40:53.639626+00	2021-11-26 15:40:53.639637+00	3	8947	115
2729	\N	\N	\N	f	2021-11-26 15:40:53.644845+00	2021-11-26 15:40:53.644854+00	3	8946	115
2730	\N	\N	\N	f	2021-11-26 15:40:53.649569+00	2021-11-26 15:40:53.649577+00	3	8945	115
2731	\N	\N	\N	f	2021-11-26 15:40:53.654538+00	2021-11-26 15:40:53.654546+00	3	8944	115
2732	\N	\N	\N	f	2021-11-26 15:40:53.659186+00	2021-11-26 15:40:53.659193+00	3	8964	115
2733	\N	\N	\N	f	2021-11-26 15:40:53.66375+00	2021-11-26 15:40:53.663756+00	3	8965	115
2734	\N	\N	\N	f	2021-11-26 15:40:53.669048+00	2021-11-26 15:40:53.669057+00	3	8966	115
2735	\N	\N	\N	f	2021-11-26 15:40:53.674123+00	2021-11-26 15:40:53.674132+00	3	8967	115
2736	\N	\N	\N	f	2021-11-26 15:40:53.679007+00	2021-11-26 15:40:53.679015+00	3	8968	115
2737	\N	\N	\N	f	2021-11-26 15:40:53.683726+00	2021-11-26 15:40:53.683733+00	3	8969	115
2738	\N	\N	\N	f	2021-11-26 15:40:53.688353+00	2021-11-26 15:40:53.68836+00	3	8970	115
2739	\N	\N	\N	f	2021-11-26 15:40:53.692888+00	2021-11-26 15:40:53.692894+00	3	8971	115
2740	\N	\N	\N	f	2021-11-26 15:40:53.69772+00	2021-11-26 15:40:53.697729+00	3	8972	115
2741	\N	\N	\N	f	2021-11-26 15:40:53.702389+00	2021-11-26 15:40:53.702397+00	3	8973	115
2742	\N	\N	\N	f	2021-11-26 15:40:53.707409+00	2021-11-26 15:40:53.707418+00	3	8974	115
2743	\N	\N	\N	f	2021-11-26 15:40:53.713324+00	2021-11-26 15:40:53.713331+00	3	8975	115
2744	\N	\N	\N	f	2021-11-26 15:40:53.717886+00	2021-11-26 15:40:53.717894+00	3	8976	115
2745	\N	\N	\N	f	2021-11-26 15:40:53.722745+00	2021-11-26 15:40:53.722754+00	3	8977	115
2746	\N	\N	\N	f	2021-11-26 15:40:53.728019+00	2021-11-26 15:40:53.728028+00	3	8978	115
2747	\N	\N	\N	f	2021-11-26 15:40:53.732558+00	2021-11-26 15:40:53.732565+00	3	8979	115
2748	\N	\N	\N	f	2021-11-26 15:40:53.737387+00	2021-11-26 15:40:53.737396+00	3	8980	115
2749	\N	\N	\N	f	2021-11-26 15:40:53.742163+00	2021-11-26 15:40:53.742171+00	3	8981	115
2750	\N	\N	\N	f	2021-11-26 15:40:53.746756+00	2021-11-26 15:40:53.746763+00	3	8982	115
2751	\N	\N	\N	f	2021-11-26 15:40:53.75134+00	2021-11-26 15:40:53.751346+00	3	8983	115
2752	\N	\N	\N	f	2021-11-26 15:40:53.755952+00	2021-11-26 15:40:53.75596+00	3	9003	115
2753	\N	\N	\N	f	2021-11-26 15:40:53.760972+00	2021-11-26 15:40:53.760982+00	3	9002	115
2754	\N	\N	\N	f	2021-11-26 15:40:53.765444+00	2021-11-26 15:40:53.765451+00	3	9001	115
2755	\N	\N	\N	f	2021-11-26 15:40:53.769897+00	2021-11-26 15:40:53.769905+00	3	9000	115
2756	\N	\N	\N	f	2021-11-26 15:40:53.774933+00	2021-11-26 15:40:53.774943+00	3	8999	115
2757	\N	\N	\N	f	2021-11-26 15:40:53.779677+00	2021-11-26 15:40:53.779685+00	3	8998	115
2758	\N	\N	\N	f	2021-11-26 15:40:53.784274+00	2021-11-26 15:40:53.784282+00	3	8997	115
2759	\N	\N	\N	f	2021-11-26 15:40:53.792719+00	2021-11-26 15:40:53.792728+00	3	8996	115
2760	\N	\N	\N	f	2021-11-26 15:40:53.797302+00	2021-11-26 15:40:53.797309+00	3	8995	115
2761	\N	\N	\N	f	2021-11-26 15:40:53.802402+00	2021-11-26 15:40:53.80241+00	3	8994	115
2762	\N	\N	\N	f	2021-11-26 15:40:53.807179+00	2021-11-26 15:40:53.807186+00	3	8993	115
2763	\N	\N	\N	f	2021-11-26 15:40:53.811836+00	2021-11-26 15:40:53.811843+00	3	8992	115
2764	\N	\N	\N	f	2021-11-26 15:40:53.816177+00	2021-11-26 15:40:53.816184+00	3	8991	115
2765	\N	\N	\N	f	2021-11-26 15:40:53.821804+00	2021-11-26 15:40:53.821814+00	3	8990	115
2766	\N	\N	\N	f	2021-11-26 15:40:53.826513+00	2021-11-26 15:40:53.826523+00	3	8989	115
2767	\N	\N	\N	f	2021-11-26 15:40:53.830931+00	2021-11-26 15:40:53.830939+00	3	8988	115
2768	\N	\N	\N	f	2021-11-26 15:40:53.835501+00	2021-11-26 15:40:53.835508+00	3	8987	115
2769	\N	\N	\N	f	2021-11-26 15:40:53.840009+00	2021-11-26 15:40:53.840016+00	3	8986	115
2770	\N	\N	\N	f	2021-11-26 15:40:53.844438+00	2021-11-26 15:40:53.844445+00	3	8985	115
2771	\N	\N	\N	f	2021-11-26 15:40:53.848898+00	2021-11-26 15:40:53.848905+00	3	8984	115
2772	\N	\N	\N	f	2021-11-26 15:40:53.853993+00	2021-11-26 15:40:53.854006+00	3	9004	115
2773	\N	\N	\N	f	2021-11-26 15:40:53.859511+00	2021-11-26 15:40:53.85952+00	3	9005	115
2774	\N	\N	\N	f	2021-11-26 15:40:53.864722+00	2021-11-26 15:40:53.864729+00	3	9006	115
2775	\N	\N	\N	f	2021-11-26 15:40:53.869143+00	2021-11-26 15:40:53.86915+00	3	9007	115
2776	\N	\N	\N	f	2021-11-26 15:40:53.873944+00	2021-11-26 15:40:53.873952+00	3	9008	115
2777	\N	\N	\N	f	2021-11-26 15:40:53.878772+00	2021-11-26 15:40:53.878783+00	3	9009	115
2778	\N	\N	\N	f	2021-11-26 15:40:53.88357+00	2021-11-26 15:40:53.883578+00	3	9010	115
2779	\N	\N	\N	f	2021-11-26 15:40:53.888362+00	2021-11-26 15:40:53.888371+00	3	9011	115
2780	\N	\N	\N	f	2021-11-26 15:40:53.893072+00	2021-11-26 15:40:53.893079+00	3	9012	115
2781	\N	\N	\N	f	2021-11-26 15:40:53.899179+00	2021-11-26 15:40:53.899187+00	3	9013	115
2782	\N	\N	\N	f	2021-11-26 15:40:53.90436+00	2021-11-26 15:40:53.90437+00	3	9014	115
2783	\N	\N	\N	f	2021-11-26 15:40:53.909045+00	2021-11-26 15:40:53.909058+00	3	9015	115
2784	\N	\N	\N	f	2021-11-26 15:40:53.913721+00	2021-11-26 15:40:53.913728+00	3	9016	115
2785	\N	\N	\N	f	2021-11-26 15:40:53.918211+00	2021-11-26 15:40:53.918218+00	3	9017	115
2786	\N	\N	\N	f	2021-11-26 15:40:53.922908+00	2021-11-26 15:40:53.922917+00	3	9018	115
2787	\N	\N	\N	f	2021-11-26 15:40:53.927408+00	2021-11-26 15:40:53.927415+00	3	9019	115
2788	\N	\N	\N	f	2021-11-26 15:40:53.931843+00	2021-11-26 15:40:53.931849+00	3	9020	115
2789	\N	\N	\N	f	2021-11-26 15:40:53.936256+00	2021-11-26 15:40:53.936266+00	3	9021	115
2790	\N	\N	\N	f	2021-11-26 15:40:53.941723+00	2021-11-26 15:40:53.941733+00	3	9022	115
2791	\N	\N	\N	f	2021-11-26 15:40:53.946389+00	2021-11-26 15:40:53.946396+00	3	9023	115
2792	\N	\N	\N	f	2021-11-26 15:40:53.95097+00	2021-11-26 15:40:53.950977+00	3	9043	115
2793	\N	\N	\N	f	2021-11-26 15:40:53.95568+00	2021-11-26 15:40:53.955688+00	3	9042	115
2794	\N	\N	\N	f	2021-11-26 15:40:53.960274+00	2021-11-26 15:40:53.960281+00	3	9041	115
2795	\N	\N	\N	f	2021-11-26 15:40:53.964767+00	2021-11-26 15:40:53.964773+00	3	9040	115
2796	\N	\N	\N	f	2021-11-26 15:40:53.969272+00	2021-11-26 15:40:53.969281+00	3	9039	115
2797	\N	\N	\N	f	2021-11-26 15:40:53.974406+00	2021-11-26 15:40:53.974416+00	3	9038	115
2798	\N	\N	\N	f	2021-11-26 15:40:53.97916+00	2021-11-26 15:40:53.979168+00	3	9037	115
2799	\N	\N	\N	f	2021-11-26 15:40:53.983604+00	2021-11-26 15:40:53.983611+00	3	9036	115
2800	\N	\N	\N	f	2021-11-26 15:40:53.98831+00	2021-11-26 15:40:53.988319+00	3	9035	115
2801	\N	\N	\N	f	2021-11-26 15:40:53.992894+00	2021-11-26 15:40:53.992901+00	3	9034	115
2802	\N	\N	\N	f	2021-11-26 15:40:53.997371+00	2021-11-26 15:40:53.997378+00	3	9033	115
2803	\N	\N	\N	f	2021-11-26 15:40:54.001968+00	2021-11-26 15:40:54.001975+00	3	9032	115
2804	\N	\N	\N	f	2021-11-26 15:40:54.007139+00	2021-11-26 15:40:54.007149+00	3	9031	115
2805	\N	\N	\N	f	2021-11-26 15:40:54.012076+00	2021-11-26 15:40:54.012085+00	3	9030	115
2806	\N	\N	\N	f	2021-11-26 15:40:54.01661+00	2021-11-26 15:40:54.016618+00	3	9029	115
2807	\N	\N	\N	f	2021-11-26 15:40:54.022851+00	2021-11-26 15:40:54.02286+00	3	9028	115
2808	\N	\N	\N	f	2021-11-26 15:40:54.027501+00	2021-11-26 15:40:54.027508+00	3	9027	115
2809	\N	\N	\N	f	2021-11-26 15:40:54.032328+00	2021-11-26 15:40:54.032338+00	3	9026	115
2810	\N	\N	\N	f	2021-11-26 15:40:54.037211+00	2021-11-26 15:40:54.037221+00	3	9025	115
2811	\N	\N	\N	f	2021-11-26 15:40:54.041907+00	2021-11-26 15:40:54.041917+00	3	9024	115
2812	\N	\N	\N	f	2021-11-26 15:40:54.04653+00	2021-11-26 15:40:54.046538+00	3	9044	115
2813	\N	\N	\N	f	2021-11-26 15:40:54.051184+00	2021-11-26 15:40:54.051191+00	3	9045	115
2814	\N	\N	\N	f	2021-11-26 15:40:54.055668+00	2021-11-26 15:40:54.055675+00	3	9046	115
2815	\N	\N	\N	f	2021-11-26 15:40:54.060292+00	2021-11-26 15:40:54.060299+00	3	9047	115
2816	\N	\N	\N	f	2021-11-26 15:40:54.066406+00	2021-11-26 15:40:54.066413+00	3	9048	115
2817	\N	\N	\N	f	2021-11-26 15:40:54.0715+00	2021-11-26 15:40:54.071511+00	3	9049	115
2818	\N	\N	\N	f	2021-11-26 15:40:54.076414+00	2021-11-26 15:40:54.076423+00	3	9050	115
2819	\N	\N	\N	f	2021-11-26 15:40:54.08123+00	2021-11-26 15:40:54.081238+00	3	9051	115
2820	\N	\N	\N	f	2021-11-26 15:40:54.085942+00	2021-11-26 15:40:54.085954+00	3	9052	115
2821	\N	\N	\N	f	2021-11-26 15:40:54.092085+00	2021-11-26 15:40:54.092096+00	3	9053	115
2822	\N	\N	\N	f	2021-11-26 15:40:54.097673+00	2021-11-26 15:40:54.097681+00	3	9054	115
2823	\N	\N	\N	f	2021-11-26 15:40:54.102493+00	2021-11-26 15:40:54.102502+00	3	9055	115
2824	\N	\N	\N	f	2021-11-26 15:40:54.107317+00	2021-11-26 15:40:54.107325+00	3	9056	115
2825	\N	\N	\N	f	2021-11-26 15:40:54.112262+00	2021-11-26 15:40:54.112269+00	3	9057	115
2826	\N	\N	\N	f	2021-11-26 15:40:54.117061+00	2021-11-26 15:40:54.117067+00	3	9058	115
2827	\N	\N	\N	f	2021-11-26 15:40:54.12225+00	2021-11-26 15:40:54.122261+00	3	9059	115
2828	\N	\N	\N	f	2021-11-26 15:40:54.12792+00	2021-11-26 15:40:54.127929+00	3	9060	115
2829	\N	\N	\N	f	2021-11-26 15:40:54.132973+00	2021-11-26 15:40:54.13298+00	3	9061	115
2830	\N	\N	\N	f	2021-11-26 15:40:54.138032+00	2021-11-26 15:40:54.138042+00	3	9062	115
2831	\N	\N	\N	f	2021-11-26 15:40:54.142811+00	2021-11-26 15:40:54.142819+00	3	9063	115
2832	\N	\N	\N	f	2021-11-26 15:40:54.147304+00	2021-11-26 15:40:54.147311+00	3	9083	115
2833	\N	\N	\N	f	2021-11-26 15:40:54.151795+00	2021-11-26 15:40:54.151802+00	3	9082	115
2834	\N	\N	\N	f	2021-11-26 15:40:54.157034+00	2021-11-26 15:40:54.157043+00	3	9081	115
2835	\N	\N	\N	f	2021-11-26 15:40:54.16186+00	2021-11-26 15:40:54.161869+00	3	9080	115
2836	\N	\N	\N	f	2021-11-26 15:40:54.166241+00	2021-11-26 15:40:54.166247+00	3	9079	115
2837	\N	\N	\N	f	2021-11-26 15:40:54.170964+00	2021-11-26 15:40:54.170972+00	3	9078	115
2838	\N	\N	\N	f	2021-11-26 15:40:54.175643+00	2021-11-26 15:40:54.175651+00	3	9077	115
2839	\N	\N	\N	f	2021-11-26 15:40:54.180144+00	2021-11-26 15:40:54.18015+00	3	9076	115
2840	\N	\N	\N	f	2021-11-26 15:40:54.185154+00	2021-11-26 15:40:54.185163+00	3	9075	115
2841	\N	\N	\N	f	2021-11-26 15:40:54.190207+00	2021-11-26 15:40:54.190216+00	3	9074	115
2842	\N	\N	\N	f	2021-11-26 15:40:54.195126+00	2021-11-26 15:40:54.195135+00	3	9073	115
2843	\N	\N	\N	f	2021-11-26 15:40:54.19973+00	2021-11-26 15:40:54.199737+00	3	9072	115
2844	\N	\N	\N	f	2021-11-26 15:40:54.204634+00	2021-11-26 15:40:54.20464+00	3	9071	115
2845	\N	\N	\N	f	2021-11-26 15:40:54.209783+00	2021-11-26 15:40:54.20979+00	3	9070	115
2846	\N	\N	\N	f	2021-11-26 15:40:54.214851+00	2021-11-26 15:40:54.214858+00	3	9069	115
2847	\N	\N	\N	f	2021-11-26 15:40:54.219958+00	2021-11-26 15:40:54.219965+00	3	9068	115
2848	\N	\N	\N	f	2021-11-26 15:40:54.225144+00	2021-11-26 15:40:54.225156+00	3	9067	115
2849	\N	\N	\N	f	2021-11-26 15:40:54.229712+00	2021-11-26 15:40:54.229719+00	3	9066	115
2850	\N	\N	\N	f	2021-11-26 15:40:54.234296+00	2021-11-26 15:40:54.234302+00	3	9065	115
2851	\N	\N	\N	f	2021-11-26 15:40:54.239133+00	2021-11-26 15:40:54.239142+00	3	9064	115
2852	\N	\N	\N	f	2021-11-26 15:40:54.243973+00	2021-11-26 15:40:54.243984+00	3	9084	115
2853	\N	\N	\N	f	2021-11-26 15:40:54.248926+00	2021-11-26 15:40:54.248935+00	3	9085	115
2854	\N	\N	\N	f	2021-11-26 15:40:54.253602+00	2021-11-26 15:40:54.253612+00	3	9086	115
2855	\N	\N	\N	f	2021-11-26 15:40:54.258352+00	2021-11-26 15:40:54.258359+00	3	9087	115
2856	\N	\N	\N	f	2021-11-26 15:40:54.262735+00	2021-11-26 15:40:54.262742+00	3	9088	115
2857	\N	\N	\N	f	2021-11-26 15:40:54.267315+00	2021-11-26 15:40:54.267321+00	3	9089	115
2858	\N	\N	\N	f	2021-11-26 15:40:54.27204+00	2021-11-26 15:40:54.272048+00	3	9090	115
2859	\N	\N	\N	f	2021-11-26 15:40:54.277881+00	2021-11-26 15:40:54.277889+00	3	9091	115
2860	\N	\N	\N	f	2021-11-26 15:40:54.282925+00	2021-11-26 15:40:54.282933+00	3	9092	115
2861	\N	\N	\N	f	2021-11-26 15:40:54.287695+00	2021-11-26 15:40:54.287704+00	3	9093	115
2862	\N	\N	\N	f	2021-11-26 15:40:54.29247+00	2021-11-26 15:40:54.292478+00	3	9094	115
2863	\N	\N	\N	f	2021-11-26 15:40:54.297005+00	2021-11-26 15:40:54.297011+00	3	9095	115
2864	\N	\N	\N	f	2021-11-26 15:40:54.301622+00	2021-11-26 15:40:54.301629+00	3	9096	115
2865	\N	\N	\N	f	2021-11-26 15:40:54.306984+00	2021-11-26 15:40:54.306995+00	3	9097	115
2866	\N	\N	\N	f	2021-11-26 15:40:54.311831+00	2021-11-26 15:40:54.31184+00	3	9098	115
2867	\N	\N	\N	f	2021-11-26 15:40:54.316297+00	2021-11-26 15:40:54.316304+00	3	9099	115
2868	\N	\N	\N	f	2021-11-26 15:40:54.320894+00	2021-11-26 15:40:54.320902+00	3	9100	115
2869	\N	\N	\N	f	2021-11-26 15:40:54.325557+00	2021-11-26 15:40:54.325564+00	3	9101	115
2870	\N	\N	\N	f	2021-11-26 15:40:54.33016+00	2021-11-26 15:40:54.330166+00	3	9102	115
2871	\N	\N	\N	f	2021-11-26 15:40:54.335125+00	2021-11-26 15:40:54.335132+00	3	9103	115
2872	\N	\N	\N	f	2021-11-26 15:40:54.340465+00	2021-11-26 15:40:54.340475+00	3	9123	115
2873	\N	\N	\N	f	2021-11-26 15:40:54.345447+00	2021-11-26 15:40:54.345455+00	3	9122	115
2874	\N	\N	\N	f	2021-11-26 15:40:54.350125+00	2021-11-26 15:40:54.350132+00	3	9121	115
2875	\N	\N	\N	f	2021-11-26 15:40:54.356263+00	2021-11-26 15:40:54.356272+00	3	9120	115
2876	\N	\N	\N	f	2021-11-26 15:40:54.360876+00	2021-11-26 15:40:54.360883+00	3	9119	115
2877	\N	\N	\N	f	2021-11-26 15:40:54.36533+00	2021-11-26 15:40:54.365337+00	3	9118	115
2878	\N	\N	\N	f	2021-11-26 15:40:54.369917+00	2021-11-26 15:40:54.369926+00	3	9117	115
2879	\N	\N	\N	f	2021-11-26 15:40:54.375087+00	2021-11-26 15:40:54.375096+00	3	9116	115
2880	\N	\N	\N	f	2021-11-26 15:40:54.379888+00	2021-11-26 15:40:54.379897+00	3	9115	115
2881	\N	\N	\N	f	2021-11-26 15:40:54.384484+00	2021-11-26 15:40:54.384492+00	3	9114	115
2882	\N	\N	\N	f	2021-11-26 15:40:54.389198+00	2021-11-26 15:40:54.389206+00	3	9113	115
2883	\N	\N	\N	f	2021-11-26 15:40:54.393717+00	2021-11-26 15:40:54.393724+00	3	9112	115
2884	\N	\N	\N	f	2021-11-26 15:40:54.398511+00	2021-11-26 15:40:54.398521+00	3	9111	115
2885	\N	\N	\N	f	2021-11-26 15:40:54.403285+00	2021-11-26 15:40:54.403297+00	3	9110	115
2886	\N	\N	\N	f	2021-11-26 15:40:54.408187+00	2021-11-26 15:40:54.408196+00	3	9109	115
2887	\N	\N	\N	f	2021-11-26 15:40:54.412789+00	2021-11-26 15:40:54.412796+00	3	9108	115
2888	\N	\N	\N	f	2021-11-26 15:40:54.417418+00	2021-11-26 15:40:54.417425+00	3	9107	115
2889	\N	\N	\N	f	2021-11-26 15:40:54.421875+00	2021-11-26 15:40:54.421882+00	3	9106	115
2890	\N	\N	\N	f	2021-11-26 15:40:54.426421+00	2021-11-26 15:40:54.426428+00	3	9105	115
2891	\N	\N	\N	f	2021-11-26 15:40:54.432275+00	2021-11-26 15:40:54.432281+00	3	9104	115
2892	\N	\N	\N	f	2021-11-26 15:40:54.436728+00	2021-11-26 15:40:54.436734+00	3	9124	115
2893	\N	\N	\N	f	2021-11-26 15:40:54.441859+00	2021-11-26 15:40:54.441868+00	3	9125	115
2894	\N	\N	\N	f	2021-11-26 15:40:54.446354+00	2021-11-26 15:40:54.446362+00	3	9126	115
2895	\N	\N	\N	f	2021-11-26 15:40:54.450843+00	2021-11-26 15:40:54.45085+00	3	9127	115
2896	\N	\N	\N	f	2021-11-26 15:40:54.455765+00	2021-11-26 15:40:54.455773+00	3	9128	115
2897	\N	\N	\N	f	2021-11-26 15:40:54.460728+00	2021-11-26 15:40:54.460738+00	3	9129	115
2898	\N	\N	\N	f	2021-11-26 15:40:54.465331+00	2021-11-26 15:40:54.465338+00	3	9130	115
2899	\N	\N	\N	f	2021-11-26 15:40:54.469926+00	2021-11-26 15:40:54.469935+00	3	9131	115
2900	\N	\N	\N	f	2021-11-26 15:40:54.474855+00	2021-11-26 15:40:54.474864+00	3	9132	115
2901	\N	\N	\N	f	2021-11-26 15:40:54.479686+00	2021-11-26 15:40:54.479693+00	3	9133	115
2902	\N	\N	\N	f	2021-11-26 15:40:54.484568+00	2021-11-26 15:40:54.484575+00	3	9134	115
2903	\N	\N	\N	f	2021-11-26 15:40:54.48954+00	2021-11-26 15:40:54.48955+00	3	9135	115
2904	\N	\N	\N	f	2021-11-26 15:40:54.494535+00	2021-11-26 15:40:54.494543+00	3	9136	115
2905	\N	\N	\N	f	2021-11-26 15:40:54.499275+00	2021-11-26 15:40:54.499282+00	3	9137	115
2906	\N	\N	\N	f	2021-11-26 15:40:54.504433+00	2021-11-26 15:40:54.504442+00	3	9138	115
2907	\N	\N	\N	f	2021-11-26 15:40:54.509565+00	2021-11-26 15:40:54.509574+00	3	9139	115
2908	\N	\N	\N	f	2021-11-26 15:40:54.514191+00	2021-11-26 15:40:54.514198+00	3	9140	115
2909	\N	\N	\N	f	2021-11-26 15:40:54.518913+00	2021-11-26 15:40:54.518921+00	3	9141	115
2910	\N	\N	\N	f	2021-11-26 15:40:54.524289+00	2021-11-26 15:40:54.524299+00	3	9142	115
2911	\N	\N	\N	f	2021-11-26 15:40:54.529329+00	2021-11-26 15:40:54.529338+00	3	9143	115
2912	\N	\N	\N	f	2021-11-26 15:40:54.534129+00	2021-11-26 15:40:54.534137+00	3	9163	115
2913	\N	\N	\N	f	2021-11-26 15:40:54.538947+00	2021-11-26 15:40:54.538955+00	3	9162	115
2914	\N	\N	\N	f	2021-11-26 15:40:54.543718+00	2021-11-26 15:40:54.543725+00	3	9161	115
2915	\N	\N	\N	f	2021-11-26 15:40:54.548618+00	2021-11-26 15:40:54.548629+00	3	9160	115
2916	\N	\N	\N	f	2021-11-26 15:40:54.554558+00	2021-11-26 15:40:54.554567+00	3	9159	115
2917	\N	\N	\N	f	2021-11-26 15:40:54.559879+00	2021-11-26 15:40:54.559888+00	3	9158	115
2918	\N	\N	\N	f	2021-11-26 15:40:54.565061+00	2021-11-26 15:40:54.565069+00	3	9157	115
2919	\N	\N	\N	f	2021-11-26 15:40:54.569966+00	2021-11-26 15:40:54.569974+00	3	9156	115
2920	\N	\N	\N	f	2021-11-26 15:40:54.576369+00	2021-11-26 15:40:54.576376+00	3	9155	115
2921	\N	\N	\N	f	2021-11-26 15:40:54.581042+00	2021-11-26 15:40:54.58105+00	3	9154	115
2922	\N	\N	\N	f	2021-11-26 15:40:54.585808+00	2021-11-26 15:40:54.585815+00	3	9153	115
2923	\N	\N	\N	f	2021-11-26 15:40:54.591018+00	2021-11-26 15:40:54.591027+00	3	9152	115
2924	\N	\N	\N	f	2021-11-26 15:40:54.595869+00	2021-11-26 15:40:54.595877+00	3	9151	115
2925	\N	\N	\N	f	2021-11-26 15:40:54.600694+00	2021-11-26 15:40:54.600701+00	3	9150	115
2926	\N	\N	\N	f	2021-11-26 15:40:54.605985+00	2021-11-26 15:40:54.605994+00	3	9149	115
2927	\N	\N	\N	f	2021-11-26 15:40:54.611417+00	2021-11-26 15:40:54.611427+00	3	9148	115
2928	\N	\N	\N	f	2021-11-26 15:40:54.616038+00	2021-11-26 15:40:54.616045+00	3	9147	115
2929	\N	\N	\N	f	2021-11-26 15:40:54.620935+00	2021-11-26 15:40:54.620945+00	3	9146	115
2930	\N	\N	\N	f	2021-11-26 15:40:54.62561+00	2021-11-26 15:40:54.625618+00	3	9145	115
2931	\N	\N	\N	f	2021-11-26 15:40:54.630241+00	2021-11-26 15:40:54.630248+00	3	9144	115
2932	\N	\N	\N	f	2021-11-26 15:40:54.635011+00	2021-11-26 15:40:54.635017+00	3	9164	115
2933	\N	\N	\N	f	2021-11-26 15:40:54.640085+00	2021-11-26 15:40:54.640095+00	3	9165	115
2934	\N	\N	\N	f	2021-11-26 15:40:54.646679+00	2021-11-26 15:40:54.646687+00	3	9166	115
2935	\N	\N	\N	f	2021-11-26 15:40:54.651633+00	2021-11-26 15:40:54.651641+00	3	9167	115
2936	\N	\N	\N	f	2021-11-26 15:40:54.65676+00	2021-11-26 15:40:54.656769+00	3	9168	115
2937	\N	\N	\N	f	2021-11-26 15:40:54.661595+00	2021-11-26 15:40:54.661602+00	3	9169	115
2938	\N	\N	\N	f	2021-11-26 15:40:54.666331+00	2021-11-26 15:40:54.666337+00	3	9170	115
2939	\N	\N	\N	f	2021-11-26 15:40:54.671869+00	2021-11-26 15:40:54.671878+00	3	9171	115
2940	\N	\N	\N	f	2021-11-26 15:40:54.677598+00	2021-11-26 15:40:54.677607+00	3	9172	115
2941	\N	\N	\N	f	2021-11-26 15:40:54.682695+00	2021-11-26 15:40:54.682703+00	3	9173	115
2942	\N	\N	\N	f	2021-11-26 15:40:54.687394+00	2021-11-26 15:40:54.687403+00	3	9174	115
2943	\N	\N	\N	f	2021-11-26 15:40:54.692132+00	2021-11-26 15:40:54.692139+00	3	9175	115
2944	\N	\N	\N	f	2021-11-26 15:40:54.696626+00	2021-11-26 15:40:54.696633+00	3	9176	115
2945	\N	\N	\N	f	2021-11-26 15:40:54.701206+00	2021-11-26 15:40:54.701217+00	3	9177	115
2946	\N	\N	\N	f	2021-11-26 15:40:54.706599+00	2021-11-26 15:40:54.706608+00	3	9178	115
2947	\N	\N	\N	f	2021-11-26 15:40:54.711754+00	2021-11-26 15:40:54.711763+00	3	9179	115
2948	\N	\N	\N	f	2021-11-26 15:40:54.717474+00	2021-11-26 15:40:54.717482+00	3	9180	115
2949	\N	\N	\N	f	2021-11-26 15:40:54.722176+00	2021-11-26 15:40:54.722184+00	3	9181	115
2950	\N	\N	\N	f	2021-11-26 15:40:54.726612+00	2021-11-26 15:40:54.726618+00	3	9182	115
2951	\N	\N	\N	f	2021-11-26 15:40:54.731078+00	2021-11-26 15:40:54.731084+00	3	9183	115
2952	\N	\N	\N	f	2021-11-26 15:40:54.735387+00	2021-11-26 15:40:54.735405+00	3	9203	115
2953	\N	\N	\N	f	2021-11-26 15:40:54.740556+00	2021-11-26 15:40:54.740565+00	3	9202	115
2954	\N	\N	\N	f	2021-11-26 15:40:54.745188+00	2021-11-26 15:40:54.745197+00	3	9201	115
2955	\N	\N	\N	f	2021-11-26 15:40:54.749559+00	2021-11-26 15:40:54.749566+00	3	9200	115
2956	\N	\N	\N	f	2021-11-26 15:40:54.754521+00	2021-11-26 15:40:54.75453+00	3	9199	115
2957	\N	\N	\N	f	2021-11-26 15:40:54.75903+00	2021-11-26 15:40:54.759038+00	3	9198	115
2958	\N	\N	\N	f	2021-11-26 15:40:54.76388+00	2021-11-26 15:40:54.76389+00	3	9197	115
2959	\N	\N	\N	f	2021-11-26 15:40:54.768636+00	2021-11-26 15:40:54.768643+00	3	9196	115
2960	\N	\N	\N	f	2021-11-26 15:40:54.773399+00	2021-11-26 15:40:54.773408+00	3	9195	115
2961	\N	\N	\N	f	2021-11-26 15:40:54.778333+00	2021-11-26 15:40:54.778342+00	3	9194	115
2962	\N	\N	\N	f	2021-11-26 15:40:54.782948+00	2021-11-26 15:40:54.782961+00	3	9193	115
2963	\N	\N	\N	f	2021-11-26 15:40:54.787381+00	2021-11-26 15:40:54.787388+00	3	9192	115
2964	\N	\N	\N	f	2021-11-26 15:40:54.791731+00	2021-11-26 15:40:54.791737+00	3	9191	115
2965	\N	\N	\N	f	2021-11-26 15:40:54.796277+00	2021-11-26 15:40:54.796284+00	3	9190	115
2966	\N	\N	\N	f	2021-11-26 15:40:54.800653+00	2021-11-26 15:40:54.800662+00	3	9189	115
2967	\N	\N	\N	f	2021-11-26 15:40:54.805788+00	2021-11-26 15:40:54.8058+00	3	9188	115
2968	\N	\N	\N	f	2021-11-26 15:40:54.810526+00	2021-11-26 15:40:54.810534+00	3	9187	115
2969	\N	\N	\N	f	2021-11-26 15:40:54.816381+00	2021-11-26 15:40:54.816388+00	3	9186	115
2970	\N	\N	\N	f	2021-11-26 15:40:54.821755+00	2021-11-26 15:40:54.821764+00	3	9185	115
2971	\N	\N	\N	f	2021-11-26 15:40:54.826722+00	2021-11-26 15:40:54.826732+00	3	9184	115
2972	\N	\N	\N	f	2021-11-26 15:40:54.831065+00	2021-11-26 15:40:54.831072+00	3	9204	115
2973	\N	\N	\N	f	2021-11-26 15:40:54.835347+00	2021-11-26 15:40:54.835353+00	3	9205	115
2974	\N	\N	\N	f	2021-11-26 15:40:54.840538+00	2021-11-26 15:40:54.840547+00	3	9206	115
2975	\N	\N	\N	f	2021-11-26 15:40:54.844946+00	2021-11-26 15:40:54.844953+00	3	9207	115
2976	\N	\N	\N	f	2021-11-26 15:40:54.84956+00	2021-11-26 15:40:54.849566+00	3	9208	115
2977	\N	\N	\N	f	2021-11-26 15:40:54.854464+00	2021-11-26 15:40:54.854478+00	3	9209	115
2978	\N	\N	\N	f	2021-11-26 15:40:54.859766+00	2021-11-26 15:40:54.859776+00	3	9210	115
2979	\N	\N	\N	f	2021-11-26 15:40:54.864283+00	2021-11-26 15:40:54.864291+00	3	9211	115
2980	\N	\N	\N	f	2021-11-26 15:40:54.868935+00	2021-11-26 15:40:54.868942+00	3	9212	115
2981	\N	\N	\N	f	2021-11-26 15:40:54.873725+00	2021-11-26 15:40:54.873733+00	3	9213	115
2982	\N	\N	\N	f	2021-11-26 15:40:54.878458+00	2021-11-26 15:40:54.878465+00	3	9214	115
2983	\N	\N	\N	f	2021-11-26 15:40:54.885953+00	2021-11-26 15:40:54.885965+00	3	9215	115
2984	\N	\N	\N	f	2021-11-26 15:40:54.891059+00	2021-11-26 15:40:54.891068+00	3	9216	115
2985	\N	\N	\N	f	2021-11-26 15:40:54.895781+00	2021-11-26 15:40:54.895789+00	3	9217	115
2986	\N	\N	\N	f	2021-11-26 15:40:54.900281+00	2021-11-26 15:40:54.900288+00	3	9218	115
2987	\N	\N	\N	f	2021-11-26 15:40:54.905226+00	2021-11-26 15:40:54.905235+00	3	9219	115
2988	\N	\N	\N	f	2021-11-26 15:40:54.909911+00	2021-11-26 15:40:54.909918+00	3	9220	115
2989	\N	\N	\N	f	2021-11-26 15:40:54.914462+00	2021-11-26 15:40:54.914469+00	3	9221	115
2990	\N	\N	\N	f	2021-11-26 15:40:54.9191+00	2021-11-26 15:40:54.919108+00	3	9222	115
2991	\N	\N	\N	f	2021-11-26 15:40:54.925147+00	2021-11-26 15:40:54.925158+00	3	9223	115
2992	\N	\N	\N	f	2021-11-26 15:40:54.930305+00	2021-11-26 15:40:54.930313+00	3	9243	115
2993	\N	\N	\N	f	2021-11-26 15:40:54.935269+00	2021-11-26 15:40:54.935276+00	3	9242	115
2994	\N	\N	\N	f	2021-11-26 15:40:54.940345+00	2021-11-26 15:40:54.940354+00	3	9241	115
2995	\N	\N	\N	f	2021-11-26 15:40:54.94516+00	2021-11-26 15:40:54.945169+00	3	9240	115
2996	\N	\N	\N	f	2021-11-26 15:40:54.950175+00	2021-11-26 15:40:54.950183+00	3	9239	115
2997	\N	\N	\N	f	2021-11-26 15:40:54.9549+00	2021-11-26 15:40:54.954908+00	3	9238	115
2998	\N	\N	\N	f	2021-11-26 15:40:54.959701+00	2021-11-26 15:40:54.959709+00	3	9237	115
2999	\N	\N	\N	f	2021-11-26 15:40:54.964713+00	2021-11-26 15:40:54.964721+00	3	9236	115
3000	\N	\N	\N	f	2021-11-26 15:40:54.969139+00	2021-11-26 15:40:54.969146+00	3	9235	115
3001	\N	\N	\N	f	2021-11-26 15:40:54.973461+00	2021-11-26 15:40:54.973468+00	3	9234	115
3002	\N	\N	\N	f	2021-11-26 15:40:54.977818+00	2021-11-26 15:40:54.977825+00	3	9233	115
3003	\N	\N	\N	f	2021-11-26 15:40:54.982288+00	2021-11-26 15:40:54.982294+00	3	9232	115
3004	\N	\N	\N	f	2021-11-26 15:40:54.986948+00	2021-11-26 15:40:54.986961+00	3	9231	115
3005	\N	\N	\N	f	2021-11-26 15:40:54.991885+00	2021-11-26 15:40:54.991894+00	3	9230	115
3006	\N	\N	\N	f	2021-11-26 15:40:54.996372+00	2021-11-26 15:40:54.996379+00	3	9229	115
3007	\N	\N	\N	f	2021-11-26 15:40:55.000869+00	2021-11-26 15:40:55.000875+00	3	9228	115
3008	\N	\N	\N	f	2021-11-26 15:40:55.006055+00	2021-11-26 15:40:55.006068+00	3	9227	115
3009	\N	\N	\N	f	2021-11-26 15:40:55.011785+00	2021-11-26 15:40:55.011794+00	3	9226	115
3010	\N	\N	\N	f	2021-11-26 15:40:55.01637+00	2021-11-26 15:40:55.016378+00	3	9225	115
3011	\N	\N	\N	f	2021-11-26 15:40:55.021034+00	2021-11-26 15:40:55.021044+00	3	9224	115
3012	\N	\N	\N	f	2021-11-26 15:40:55.025843+00	2021-11-26 15:40:55.025852+00	3	9244	115
3013	\N	\N	\N	f	2021-11-26 15:40:55.030295+00	2021-11-26 15:40:55.030302+00	3	9245	115
3014	\N	\N	\N	f	2021-11-26 15:40:55.034956+00	2021-11-26 15:40:55.034964+00	3	9246	115
3015	\N	\N	\N	f	2021-11-26 15:40:55.040181+00	2021-11-26 15:40:55.040191+00	3	9247	115
3016	\N	\N	\N	f	2021-11-26 15:40:55.045035+00	2021-11-26 15:40:55.045044+00	3	9248	115
3017	\N	\N	\N	f	2021-11-26 15:40:55.04954+00	2021-11-26 15:40:55.049547+00	3	9249	115
3018	\N	\N	\N	f	2021-11-26 15:40:55.054221+00	2021-11-26 15:40:55.05423+00	3	9250	115
3019	\N	\N	\N	f	2021-11-26 15:40:55.058642+00	2021-11-26 15:40:55.05865+00	3	9251	115
3020	\N	\N	\N	f	2021-11-26 15:40:55.063+00	2021-11-26 15:40:55.063006+00	3	9252	115
3021	\N	\N	\N	f	2021-11-26 15:40:55.067385+00	2021-11-26 15:40:55.067392+00	3	9253	115
3022	\N	\N	\N	f	2021-11-26 15:40:55.072559+00	2021-11-26 15:40:55.072568+00	3	9254	115
3023	\N	\N	\N	f	2021-11-26 15:40:55.077325+00	2021-11-26 15:40:55.077334+00	3	9255	115
3024	\N	\N	\N	f	2021-11-26 15:40:55.081872+00	2021-11-26 15:40:55.08188+00	3	9256	115
3025	\N	\N	\N	f	2021-11-26 15:40:55.086355+00	2021-11-26 15:40:55.086365+00	3	9257	115
3026	\N	\N	\N	f	2021-11-26 15:40:55.091314+00	2021-11-26 15:40:55.091322+00	3	9258	115
3027	\N	\N	\N	f	2021-11-26 15:40:55.096123+00	2021-11-26 15:40:55.09613+00	3	9259	115
3028	\N	\N	\N	f	2021-11-26 15:40:55.102556+00	2021-11-26 15:40:55.102567+00	3	9260	115
3029	\N	\N	\N	f	2021-11-26 15:40:55.108068+00	2021-11-26 15:40:55.108078+00	3	9261	115
3030	\N	\N	\N	f	2021-11-26 15:40:55.113032+00	2021-11-26 15:40:55.113039+00	3	9262	115
3031	\N	\N	\N	f	2021-11-26 15:40:55.117687+00	2021-11-26 15:40:55.117694+00	3	9263	115
3032	\N	\N	\N	f	2021-11-26 15:40:55.122908+00	2021-11-26 15:40:55.122916+00	3	9283	115
3033	\N	\N	\N	f	2021-11-26 15:40:55.127719+00	2021-11-26 15:40:55.127726+00	3	9282	115
3034	\N	\N	\N	f	2021-11-26 15:40:55.133001+00	2021-11-26 15:40:55.13301+00	3	9281	115
3035	\N	\N	\N	f	2021-11-26 15:40:55.138327+00	2021-11-26 15:40:55.138337+00	3	9280	115
3036	\N	\N	\N	f	2021-11-26 15:40:55.143561+00	2021-11-26 15:40:55.14357+00	3	9279	115
3037	\N	\N	\N	f	2021-11-26 15:40:55.148356+00	2021-11-26 15:40:55.148363+00	3	9278	115
3038	\N	\N	\N	f	2021-11-26 15:40:55.154037+00	2021-11-26 15:40:55.154045+00	3	9277	115
3039	\N	\N	\N	f	2021-11-26 15:40:55.158637+00	2021-11-26 15:40:55.158644+00	3	9276	115
3040	\N	\N	\N	f	2021-11-26 15:40:55.163449+00	2021-11-26 15:40:55.163457+00	3	9275	115
3041	\N	\N	\N	f	2021-11-26 15:40:55.168531+00	2021-11-26 15:40:55.168539+00	3	9274	115
3042	\N	\N	\N	f	2021-11-26 15:40:55.174179+00	2021-11-26 15:40:55.174188+00	3	9273	115
3043	\N	\N	\N	f	2021-11-26 15:40:55.17881+00	2021-11-26 15:40:55.178818+00	3	9272	115
3044	\N	\N	\N	f	2021-11-26 15:40:55.183228+00	2021-11-26 15:40:55.183234+00	3	9271	115
3045	\N	\N	\N	f	2021-11-26 15:40:55.188364+00	2021-11-26 15:40:55.188373+00	3	9270	115
3046	\N	\N	\N	f	2021-11-26 15:40:55.193313+00	2021-11-26 15:40:55.193322+00	3	9269	115
3047	\N	\N	\N	f	2021-11-26 15:40:55.197799+00	2021-11-26 15:40:55.197807+00	3	9268	115
3048	\N	\N	\N	f	2021-11-26 15:40:55.202351+00	2021-11-26 15:40:55.202358+00	3	9267	115
3049	\N	\N	\N	f	2021-11-26 15:40:55.207113+00	2021-11-26 15:40:55.207122+00	3	9266	115
3050	\N	\N	\N	f	2021-11-26 15:40:55.211633+00	2021-11-26 15:40:55.211641+00	3	9265	115
3051	\N	\N	\N	f	2021-11-26 15:40:55.216016+00	2021-11-26 15:40:55.216022+00	3	9264	115
3052	\N	\N	\N	f	2021-11-26 15:40:55.220493+00	2021-11-26 15:40:55.220501+00	3	9284	115
3053	\N	\N	\N	f	2021-11-26 15:40:55.225022+00	2021-11-26 15:40:55.225031+00	3	9285	115
3054	\N	\N	\N	f	2021-11-26 15:40:55.229678+00	2021-11-26 15:40:55.229686+00	3	9286	115
3055	\N	\N	\N	f	2021-11-26 15:40:55.235547+00	2021-11-26 15:40:55.235554+00	3	9287	115
3056	\N	\N	\N	f	2021-11-26 15:40:55.240685+00	2021-11-26 15:40:55.240693+00	3	9288	115
3057	\N	\N	\N	f	2021-11-26 15:40:55.245121+00	2021-11-26 15:40:55.245128+00	3	9289	115
3058	\N	\N	\N	f	2021-11-26 15:40:55.249411+00	2021-11-26 15:40:55.249445+00	3	9290	115
3059	\N	\N	\N	f	2021-11-26 15:40:55.254177+00	2021-11-26 15:40:55.254188+00	3	9291	115
3060	\N	\N	\N	f	2021-11-26 15:40:55.259244+00	2021-11-26 15:40:55.259253+00	3	9292	115
3061	\N	\N	\N	f	2021-11-26 15:40:55.263688+00	2021-11-26 15:40:55.263696+00	3	9293	115
3062	\N	\N	\N	f	2021-11-26 15:40:55.268219+00	2021-11-26 15:40:55.268226+00	3	9294	115
3063	\N	\N	\N	f	2021-11-26 15:40:55.272792+00	2021-11-26 15:40:55.2728+00	3	9295	115
3064	\N	\N	\N	f	2021-11-26 15:40:55.27727+00	2021-11-26 15:40:55.277277+00	3	9296	115
3065	\N	\N	\N	f	2021-11-26 15:40:55.281642+00	2021-11-26 15:40:55.28165+00	3	9297	115
3066	\N	\N	\N	f	2021-11-26 15:40:55.287424+00	2021-11-26 15:40:55.287433+00	3	9298	115
3067	\N	\N	\N	f	2021-11-26 15:40:55.292028+00	2021-11-26 15:40:55.292037+00	3	9299	115
3068	\N	\N	\N	f	2021-11-26 15:40:55.296663+00	2021-11-26 15:40:55.29667+00	3	9300	115
3069	\N	\N	\N	f	2021-11-26 15:40:55.30156+00	2021-11-26 15:40:55.301567+00	3	9301	115
3070	\N	\N	\N	f	2021-11-26 15:40:55.306341+00	2021-11-26 15:40:55.306348+00	3	9302	115
3071	\N	\N	\N	f	2021-11-26 15:40:55.31115+00	2021-11-26 15:40:55.311157+00	3	9303	115
3072	\N	\N	\N	f	2021-11-26 15:40:55.316037+00	2021-11-26 15:40:55.316044+00	3	9323	115
3073	\N	\N	\N	f	2021-11-26 15:40:55.321044+00	2021-11-26 15:40:55.321056+00	3	9322	115
3074	\N	\N	\N	f	2021-11-26 15:40:55.326196+00	2021-11-26 15:40:55.326206+00	3	9321	115
3075	\N	\N	\N	f	2021-11-26 15:40:55.334732+00	2021-11-26 15:40:55.334741+00	3	9320	115
3076	\N	\N	\N	f	2021-11-26 15:40:55.339664+00	2021-11-26 15:40:55.339672+00	3	9319	115
3077	\N	\N	\N	f	2021-11-26 15:40:55.344884+00	2021-11-26 15:40:55.344894+00	3	9318	115
3078	\N	\N	\N	f	2021-11-26 15:40:55.350408+00	2021-11-26 15:40:55.350417+00	3	9317	115
3079	\N	\N	\N	f	2021-11-26 15:40:55.355467+00	2021-11-26 15:40:55.355476+00	3	9316	115
3080	\N	\N	\N	f	2021-11-26 15:40:55.360041+00	2021-11-26 15:40:55.360049+00	3	9315	115
3081	\N	\N	\N	f	2021-11-26 15:40:55.364428+00	2021-11-26 15:40:55.364435+00	3	9314	115
3082	\N	\N	\N	f	2021-11-26 15:40:55.369076+00	2021-11-26 15:40:55.369084+00	3	9313	115
3083	\N	\N	\N	f	2021-11-26 15:40:55.374332+00	2021-11-26 15:40:55.374342+00	3	9312	115
3084	\N	\N	\N	f	2021-11-26 15:40:55.37943+00	2021-11-26 15:40:55.379439+00	3	9311	115
3085	\N	\N	\N	f	2021-11-26 15:40:55.383999+00	2021-11-26 15:40:55.384007+00	3	9310	115
3086	\N	\N	\N	f	2021-11-26 15:40:55.388667+00	2021-11-26 15:40:55.388677+00	3	9309	115
3087	\N	\N	\N	f	2021-11-26 15:40:55.393225+00	2021-11-26 15:40:55.393233+00	3	9308	115
3088	\N	\N	\N	f	2021-11-26 15:40:55.398068+00	2021-11-26 15:40:55.398075+00	3	9307	115
3089	\N	\N	\N	f	2021-11-26 15:40:55.403024+00	2021-11-26 15:40:55.403039+00	3	9306	115
3090	\N	\N	\N	f	2021-11-26 15:40:55.408637+00	2021-11-26 15:40:55.408647+00	3	9305	115
3091	\N	\N	\N	f	2021-11-26 15:40:55.413231+00	2021-11-26 15:40:55.413239+00	3	9304	115
3092	\N	\N	\N	f	2021-11-26 15:40:55.417665+00	2021-11-26 15:40:55.417671+00	3	9324	115
3093	\N	\N	\N	f	2021-11-26 15:40:55.422779+00	2021-11-26 15:40:55.422787+00	3	9325	115
3094	\N	\N	\N	f	2021-11-26 15:40:55.427434+00	2021-11-26 15:40:55.427441+00	3	9326	115
3095	\N	\N	\N	f	2021-11-26 15:40:55.432012+00	2021-11-26 15:40:55.432018+00	3	9327	115
3096	\N	\N	\N	f	2021-11-26 15:40:55.438358+00	2021-11-26 15:40:55.438371+00	3	9328	115
3097	\N	\N	\N	f	2021-11-26 15:40:55.44404+00	2021-11-26 15:40:55.444049+00	3	9329	115
3098	\N	\N	\N	f	2021-11-26 15:40:55.449201+00	2021-11-26 15:40:55.449208+00	3	9330	115
3099	\N	\N	\N	f	2021-11-26 15:40:55.454278+00	2021-11-26 15:40:55.454286+00	3	9331	115
3100	\N	\N	\N	f	2021-11-26 15:40:55.458892+00	2021-11-26 15:40:55.458899+00	3	9332	115
3101	\N	\N	\N	f	2021-11-26 15:40:55.463325+00	2021-11-26 15:40:55.463331+00	3	9333	115
3102	\N	\N	\N	f	2021-11-26 15:40:55.467661+00	2021-11-26 15:40:55.46767+00	3	9334	115
3103	\N	\N	\N	f	2021-11-26 15:40:55.472567+00	2021-11-26 15:40:55.472583+00	3	9335	115
3104	\N	\N	\N	f	2021-11-26 15:40:55.477649+00	2021-11-26 15:40:55.477658+00	3	9336	115
3105	\N	\N	\N	f	2021-11-26 15:40:55.48223+00	2021-11-26 15:40:55.482237+00	3	9337	115
3106	\N	\N	\N	f	2021-11-26 15:40:55.48685+00	2021-11-26 15:40:55.486859+00	3	9338	115
3107	\N	\N	\N	f	2021-11-26 15:40:55.491294+00	2021-11-26 15:40:55.491301+00	3	9339	115
3108	\N	\N	\N	f	2021-11-26 15:40:55.495659+00	2021-11-26 15:40:55.495665+00	3	9340	115
3109	\N	\N	\N	f	2021-11-26 15:40:55.50043+00	2021-11-26 15:40:55.500439+00	3	9341	115
3110	\N	\N	\N	f	2021-11-26 15:40:55.50543+00	2021-11-26 15:40:55.505439+00	3	9342	115
3111	\N	\N	\N	f	2021-11-26 15:40:55.510136+00	2021-11-26 15:40:55.510145+00	3	9343	115
3112	\N	\N	\N	f	2021-11-26 15:40:55.514472+00	2021-11-26 15:40:55.514478+00	3	9363	115
3113	\N	\N	\N	f	2021-11-26 15:40:55.518765+00	2021-11-26 15:40:55.518771+00	3	9362	115
3114	\N	\N	\N	f	2021-11-26 15:40:55.523022+00	2021-11-26 15:40:55.523029+00	3	9361	115
3115	\N	\N	\N	f	2021-11-26 15:40:55.52726+00	2021-11-26 15:40:55.527267+00	3	9360	115
3116	\N	\N	\N	f	2021-11-26 15:40:55.531577+00	2021-11-26 15:40:55.531584+00	3	9359	115
3117	\N	\N	\N	f	2021-11-26 15:40:55.535946+00	2021-11-26 15:40:55.535954+00	3	9358	115
3118	\N	\N	\N	f	2021-11-26 15:40:55.541205+00	2021-11-26 15:40:55.541215+00	3	9357	115
3119	\N	\N	\N	f	2021-11-26 15:40:55.545689+00	2021-11-26 15:40:55.545696+00	3	9356	115
3120	\N	\N	\N	f	2021-11-26 15:40:55.550159+00	2021-11-26 15:40:55.550166+00	3	9355	115
3121	\N	\N	\N	f	2021-11-26 15:40:55.555287+00	2021-11-26 15:40:55.555296+00	3	9354	115
3122	\N	\N	\N	f	2021-11-26 15:40:55.560346+00	2021-11-26 15:40:55.560355+00	3	9353	115
3123	\N	\N	\N	f	2021-11-26 15:40:55.564829+00	2021-11-26 15:40:55.564836+00	3	9352	115
3124	\N	\N	\N	f	2021-11-26 15:40:55.569385+00	2021-11-26 15:40:55.569393+00	3	9351	115
3125	\N	\N	\N	f	2021-11-26 15:40:55.574273+00	2021-11-26 15:40:55.574282+00	3	9350	115
3126	\N	\N	\N	f	2021-11-26 15:40:55.578885+00	2021-11-26 15:40:55.578892+00	3	9349	115
3127	\N	\N	\N	f	2021-11-26 15:40:55.583612+00	2021-11-26 15:40:55.583621+00	3	9348	115
3128	\N	\N	\N	f	2021-11-26 15:40:55.588323+00	2021-11-26 15:40:55.588331+00	3	9347	115
3129	\N	\N	\N	f	2021-11-26 15:40:55.593284+00	2021-11-26 15:40:55.593297+00	3	9346	115
3130	\N	\N	\N	f	2021-11-26 15:40:55.597912+00	2021-11-26 15:40:55.597919+00	3	9345	115
3131	\N	\N	\N	f	2021-11-26 15:40:55.602342+00	2021-11-26 15:40:55.602348+00	3	9344	115
3132	\N	\N	\N	f	2021-11-26 15:40:55.607389+00	2021-11-26 15:40:55.607399+00	3	9364	115
3133	\N	\N	\N	f	2021-11-26 15:40:55.612027+00	2021-11-26 15:40:55.612035+00	3	9365	115
3134	\N	\N	\N	f	2021-11-26 15:40:55.61643+00	2021-11-26 15:40:55.616436+00	3	9366	115
3135	\N	\N	\N	f	2021-11-26 15:40:55.622058+00	2021-11-26 15:40:55.622069+00	3	9367	115
3136	\N	\N	\N	f	2021-11-26 15:40:55.626877+00	2021-11-26 15:40:55.626886+00	3	9368	115
3137	\N	\N	\N	f	2021-11-26 15:40:55.631384+00	2021-11-26 15:40:55.631391+00	3	9369	115
3138	\N	\N	\N	f	2021-11-26 15:40:55.635698+00	2021-11-26 15:40:55.635706+00	3	9370	115
3139	\N	\N	\N	f	2021-11-26 15:40:55.640074+00	2021-11-26 15:40:55.640082+00	3	9371	115
3140	\N	\N	\N	f	2021-11-26 15:40:55.644307+00	2021-11-26 15:40:55.644314+00	3	9372	115
3141	\N	\N	\N	f	2021-11-26 15:40:55.648532+00	2021-11-26 15:40:55.648538+00	3	9373	115
3142	\N	\N	\N	f	2021-11-26 15:40:55.653633+00	2021-11-26 15:40:55.653643+00	3	9374	115
3143	\N	\N	\N	f	2021-11-26 15:40:55.661664+00	2021-11-26 15:40:55.661674+00	3	9375	115
3144	\N	\N	\N	f	2021-11-26 15:40:55.668179+00	2021-11-26 15:40:55.668187+00	3	9376	115
3145	\N	\N	\N	f	2021-11-26 15:40:55.675003+00	2021-11-26 15:40:55.675011+00	3	9377	115
3146	\N	\N	\N	f	2021-11-26 15:40:55.682338+00	2021-11-26 15:40:55.682346+00	3	9378	115
3147	\N	\N	\N	f	2021-11-26 15:40:55.689155+00	2021-11-26 15:40:55.689167+00	3	9379	115
3148	\N	\N	\N	f	2021-11-26 15:40:55.694583+00	2021-11-26 15:40:55.694591+00	3	9380	115
3149	\N	\N	\N	f	2021-11-26 15:40:55.699309+00	2021-11-26 15:40:55.699317+00	3	9381	115
3150	\N	\N	\N	f	2021-11-26 15:40:55.703937+00	2021-11-26 15:40:55.703947+00	3	9382	115
3151	\N	\N	\N	f	2021-11-26 15:40:55.708506+00	2021-11-26 15:40:55.708516+00	3	9383	115
3152	\N	\N	\N	f	2021-11-26 15:40:55.713327+00	2021-11-26 15:40:55.713336+00	3	9403	115
3153	\N	\N	\N	f	2021-11-26 15:40:55.719207+00	2021-11-26 15:40:55.719216+00	3	9402	115
3154	\N	\N	\N	f	2021-11-26 15:40:55.724084+00	2021-11-26 15:40:55.724093+00	3	9401	115
3155	\N	\N	\N	f	2021-11-26 15:40:55.728742+00	2021-11-26 15:40:55.728749+00	3	9400	115
3156	\N	\N	\N	f	2021-11-26 15:40:55.733582+00	2021-11-26 15:40:55.733588+00	3	9399	115
3157	\N	\N	\N	f	2021-11-26 15:40:55.738436+00	2021-11-26 15:40:55.738444+00	3	9398	115
3158	\N	\N	\N	f	2021-11-26 15:40:55.743851+00	2021-11-26 15:40:55.743863+00	3	9397	115
3159	\N	\N	\N	f	2021-11-26 15:40:55.748938+00	2021-11-26 15:40:55.748944+00	3	9396	115
3160	\N	\N	\N	f	2021-11-26 15:40:55.754136+00	2021-11-26 15:40:55.754147+00	3	9395	115
3161	\N	\N	\N	f	2021-11-26 15:40:55.759285+00	2021-11-26 15:40:55.759294+00	3	9394	115
3162	\N	\N	\N	f	2021-11-26 15:40:55.764231+00	2021-11-26 15:40:55.764237+00	3	9393	115
3163	\N	\N	\N	f	2021-11-26 15:40:55.769038+00	2021-11-26 15:40:55.769046+00	3	9392	115
3164	\N	\N	\N	f	2021-11-26 15:40:55.780102+00	2021-11-26 15:40:55.780116+00	3	9391	115
3165	\N	\N	\N	f	2021-11-26 15:40:55.78671+00	2021-11-26 15:40:55.78672+00	3	9390	115
3166	\N	\N	\N	f	2021-11-26 15:40:55.792169+00	2021-11-26 15:40:55.792178+00	3	9389	115
3167	\N	\N	\N	f	2021-11-26 15:40:55.797293+00	2021-11-26 15:40:55.797301+00	3	9388	115
3168	\N	\N	\N	f	2021-11-26 15:40:55.802298+00	2021-11-26 15:40:55.802307+00	3	9387	115
3169	\N	\N	\N	f	2021-11-26 15:40:55.807998+00	2021-11-26 15:40:55.808008+00	3	9386	115
3170	\N	\N	\N	f	2021-11-26 15:40:55.813165+00	2021-11-26 15:40:55.813173+00	3	9385	115
3171	\N	\N	\N	f	2021-11-26 15:40:55.817935+00	2021-11-26 15:40:55.817942+00	3	9384	115
3172	\N	\N	\N	f	2021-11-26 15:40:55.822561+00	2021-11-26 15:40:55.82257+00	3	9404	115
3173	\N	\N	\N	f	2021-11-26 15:40:55.826958+00	2021-11-26 15:40:55.826967+00	3	9405	115
3174	\N	\N	\N	f	2021-11-26 15:40:55.832048+00	2021-11-26 15:40:55.832055+00	3	9406	115
3175	\N	\N	\N	f	2021-11-26 15:40:55.836827+00	2021-11-26 15:40:55.836835+00	3	9407	115
3176	\N	\N	\N	f	2021-11-26 15:40:55.842247+00	2021-11-26 15:40:55.842257+00	3	9408	115
3177	\N	\N	\N	f	2021-11-26 15:40:55.846787+00	2021-11-26 15:40:55.846795+00	3	9409	115
3178	\N	\N	\N	f	2021-11-26 15:40:55.851763+00	2021-11-26 15:40:55.851771+00	3	9410	115
3179	\N	\N	\N	f	2021-11-26 15:40:55.856728+00	2021-11-26 15:40:55.856737+00	3	9411	115
3180	\N	\N	\N	f	2021-11-26 15:40:55.861272+00	2021-11-26 15:40:55.861279+00	3	9412	115
3181	\N	\N	\N	f	2021-11-26 15:40:55.867226+00	2021-11-26 15:40:55.86724+00	3	9413	115
3182	\N	\N	\N	f	2021-11-26 15:40:55.874866+00	2021-11-26 15:40:55.874882+00	3	9414	115
3183	\N	\N	\N	f	2021-11-26 15:40:55.882818+00	2021-11-26 15:40:55.88283+00	3	9415	115
3184	\N	\N	\N	f	2021-11-26 15:40:55.889976+00	2021-11-26 15:40:55.88999+00	3	9416	115
3185	\N	\N	\N	f	2021-11-26 15:40:55.896764+00	2021-11-26 15:40:55.896777+00	3	9417	115
3186	\N	\N	\N	f	2021-11-26 15:40:55.903755+00	2021-11-26 15:40:55.903768+00	3	9418	115
3187	\N	\N	\N	f	2021-11-26 15:40:55.909662+00	2021-11-26 15:40:55.909672+00	3	9419	115
3188	\N	\N	\N	f	2021-11-26 15:40:55.914379+00	2021-11-26 15:40:55.914387+00	3	9420	115
3189	\N	\N	\N	f	2021-11-26 15:40:55.919117+00	2021-11-26 15:40:55.919124+00	3	9421	115
3190	\N	\N	\N	f	2021-11-26 15:40:55.924687+00	2021-11-26 15:40:55.924697+00	3	9422	115
3191	\N	\N	\N	f	2021-11-26 15:40:55.92943+00	2021-11-26 15:40:55.929438+00	3	9423	115
3192	\N	\N	\N	f	2021-11-26 15:40:55.93386+00	2021-11-26 15:40:55.933867+00	3	9443	115
3193	\N	\N	\N	f	2021-11-26 15:40:55.93916+00	2021-11-26 15:40:55.93917+00	3	9442	115
3194	\N	\N	\N	f	2021-11-26 15:40:55.944202+00	2021-11-26 15:40:55.944212+00	3	9441	115
3195	\N	\N	\N	f	2021-11-26 15:40:55.948916+00	2021-11-26 15:40:55.948924+00	3	9440	115
3196	\N	\N	\N	f	2021-11-26 15:40:55.953406+00	2021-11-26 15:40:55.953414+00	3	9439	115
3197	\N	\N	\N	f	2021-11-26 15:40:55.958294+00	2021-11-26 15:40:55.958304+00	3	9438	115
3198	\N	\N	\N	f	2021-11-26 15:40:55.963075+00	2021-11-26 15:40:55.963084+00	3	9437	115
3199	\N	\N	\N	f	2021-11-26 15:40:55.967861+00	2021-11-26 15:40:55.967869+00	3	9436	115
3200	\N	\N	\N	f	2021-11-26 15:40:55.972404+00	2021-11-26 15:40:55.972412+00	3	9435	115
3201	\N	\N	\N	f	2021-11-26 15:40:55.977126+00	2021-11-26 15:40:55.977134+00	3	9434	115
3202	\N	\N	\N	f	2021-11-26 15:40:55.981797+00	2021-11-26 15:40:55.981804+00	3	9433	115
3203	\N	\N	\N	f	2021-11-26 15:40:55.986925+00	2021-11-26 15:40:55.986935+00	3	9432	115
3204	\N	\N	\N	f	2021-11-26 15:40:55.99192+00	2021-11-26 15:40:55.99193+00	3	9431	115
3205	\N	\N	\N	f	2021-11-26 15:40:55.996483+00	2021-11-26 15:40:55.996491+00	3	9430	115
3206	\N	\N	\N	f	2021-11-26 15:40:56.000969+00	2021-11-26 15:40:56.000976+00	3	9429	115
3207	\N	\N	\N	f	2021-11-26 15:40:56.009286+00	2021-11-26 15:40:56.009295+00	3	9428	115
3208	\N	\N	\N	f	2021-11-26 15:40:56.014052+00	2021-11-26 15:40:56.01406+00	3	9427	115
3209	\N	\N	\N	f	2021-11-26 15:40:56.018708+00	2021-11-26 15:40:56.018715+00	3	9426	115
3210	\N	\N	\N	f	2021-11-26 15:40:56.023625+00	2021-11-26 15:40:56.023635+00	3	9425	115
3211	\N	\N	\N	f	2021-11-26 15:40:56.028612+00	2021-11-26 15:40:56.028621+00	3	9424	115
3212	\N	\N	\N	f	2021-11-26 15:40:56.033217+00	2021-11-26 15:40:56.033224+00	3	9444	115
3213	\N	\N	\N	f	2021-11-26 15:40:56.038208+00	2021-11-26 15:40:56.038217+00	3	9445	115
3214	\N	\N	\N	f	2021-11-26 15:40:56.043339+00	2021-11-26 15:40:56.043348+00	3	9446	115
3215	\N	\N	\N	f	2021-11-26 15:40:56.048115+00	2021-11-26 15:40:56.048126+00	3	9447	115
3216	\N	\N	\N	f	2021-11-26 15:40:56.053046+00	2021-11-26 15:40:56.053056+00	3	9448	115
3217	\N	\N	\N	f	2021-11-26 15:40:56.057971+00	2021-11-26 15:40:56.05798+00	3	9449	115
3218	\N	\N	\N	f	2021-11-26 15:40:56.062652+00	2021-11-26 15:40:56.062659+00	3	9450	115
3219	\N	\N	\N	f	2021-11-26 15:40:56.067003+00	2021-11-26 15:40:56.067009+00	3	9451	115
3220	\N	\N	\N	f	2021-11-26 15:40:56.071877+00	2021-11-26 15:40:56.071885+00	3	9452	115
3221	\N	\N	\N	f	2021-11-26 15:40:56.077133+00	2021-11-26 15:40:56.077142+00	3	9453	115
3222	\N	\N	\N	f	2021-11-26 15:40:56.082117+00	2021-11-26 15:40:56.082125+00	3	9454	115
3223	\N	\N	\N	f	2021-11-26 15:40:56.086774+00	2021-11-26 15:40:56.086782+00	3	9455	115
3224	\N	\N	\N	f	2021-11-26 15:40:56.091837+00	2021-11-26 15:40:56.091847+00	3	9456	115
3225	\N	\N	\N	f	2021-11-26 15:40:56.096334+00	2021-11-26 15:40:56.096342+00	3	9457	115
3226	\N	\N	\N	f	2021-11-26 15:40:56.10078+00	2021-11-26 15:40:56.100787+00	3	9458	115
3227	\N	\N	\N	f	2021-11-26 15:40:56.105676+00	2021-11-26 15:40:56.105684+00	3	9459	115
3228	\N	\N	\N	f	2021-11-26 15:40:56.110644+00	2021-11-26 15:40:56.110654+00	3	9460	115
3229	\N	\N	\N	f	2021-11-26 15:40:56.115351+00	2021-11-26 15:40:56.115367+00	3	9461	115
3230	\N	\N	\N	f	2021-11-26 15:40:56.119868+00	2021-11-26 15:40:56.119879+00	3	9462	115
3231	\N	\N	\N	f	2021-11-26 15:40:56.124917+00	2021-11-26 15:40:56.124926+00	3	9463	115
3232	\N	\N	\N	f	2021-11-26 15:40:56.129523+00	2021-11-26 15:40:56.12953+00	3	9483	115
3233	\N	\N	\N	f	2021-11-26 15:40:56.134118+00	2021-11-26 15:40:56.134125+00	3	9482	115
3234	\N	\N	\N	f	2021-11-26 15:40:56.139217+00	2021-11-26 15:40:56.139226+00	3	9481	115
3235	\N	\N	\N	f	2021-11-26 15:40:56.144992+00	2021-11-26 15:40:56.145001+00	3	9480	115
3236	\N	\N	\N	f	2021-11-26 15:40:56.150045+00	2021-11-26 15:40:56.150052+00	3	9479	115
3237	\N	\N	\N	f	2021-11-26 15:40:56.155336+00	2021-11-26 15:40:56.155348+00	3	9478	115
3238	\N	\N	\N	f	2021-11-26 15:40:56.160426+00	2021-11-26 15:40:56.160435+00	3	9477	115
3239	\N	\N	\N	f	2021-11-26 15:40:56.16515+00	2021-11-26 15:40:56.165157+00	3	9476	115
3240	\N	\N	\N	f	2021-11-26 15:40:56.169539+00	2021-11-26 15:40:56.169547+00	3	9475	115
3241	\N	\N	\N	f	2021-11-26 15:40:56.17474+00	2021-11-26 15:40:56.17475+00	3	9474	115
3242	\N	\N	\N	f	2021-11-26 15:40:56.179971+00	2021-11-26 15:40:56.17998+00	3	9473	115
3243	\N	\N	\N	f	2021-11-26 15:40:56.184979+00	2021-11-26 15:40:56.184987+00	3	9472	115
3244	\N	\N	\N	f	2021-11-26 15:40:56.189899+00	2021-11-26 15:40:56.189907+00	3	9471	115
3245	\N	\N	\N	f	2021-11-26 15:40:56.194361+00	2021-11-26 15:40:56.194369+00	3	9470	115
3246	\N	\N	\N	f	2021-11-26 15:40:56.198733+00	2021-11-26 15:40:56.198739+00	3	9469	115
3247	\N	\N	\N	f	2021-11-26 15:40:56.203681+00	2021-11-26 15:40:56.203693+00	3	9468	115
3248	\N	\N	\N	f	2021-11-26 15:40:56.208766+00	2021-11-26 15:40:56.208776+00	3	9467	115
3249	\N	\N	\N	f	2021-11-26 15:40:56.213368+00	2021-11-26 15:40:56.213375+00	3	9466	115
3250	\N	\N	\N	f	2021-11-26 15:40:56.218195+00	2021-11-26 15:40:56.218202+00	3	9465	115
3251	\N	\N	\N	f	2021-11-26 15:40:56.222836+00	2021-11-26 15:40:56.222844+00	3	9464	115
3252	\N	\N	\N	f	2021-11-26 15:40:56.227138+00	2021-11-26 15:40:56.227144+00	3	9484	115
3253	\N	\N	\N	f	2021-11-26 15:40:56.231253+00	2021-11-26 15:40:56.231259+00	3	9485	115
3254	\N	\N	\N	f	2021-11-26 15:40:56.236099+00	2021-11-26 15:40:56.236106+00	3	9486	115
3255	\N	\N	\N	f	2021-11-26 15:40:56.241028+00	2021-11-26 15:40:56.241038+00	3	9487	115
3256	\N	\N	\N	f	2021-11-26 15:40:56.245708+00	2021-11-26 15:40:56.245717+00	3	9488	115
3257	\N	\N	\N	f	2021-11-26 15:40:56.250161+00	2021-11-26 15:40:56.250168+00	3	9489	115
3258	\N	\N	\N	f	2021-11-26 15:40:56.255166+00	2021-11-26 15:40:56.255174+00	3	9490	115
3259	\N	\N	\N	f	2021-11-26 15:40:56.260076+00	2021-11-26 15:40:56.260086+00	3	9491	115
3260	\N	\N	\N	f	2021-11-26 15:40:56.265045+00	2021-11-26 15:40:56.265054+00	3	9492	115
3261	\N	\N	\N	f	2021-11-26 15:40:56.269502+00	2021-11-26 15:40:56.269511+00	3	9493	115
3262	\N	\N	\N	f	2021-11-26 15:40:56.274763+00	2021-11-26 15:40:56.274772+00	3	9494	115
3263	\N	\N	\N	f	2021-11-26 15:40:56.279653+00	2021-11-26 15:40:56.279661+00	3	9495	115
3264	\N	\N	\N	f	2021-11-26 15:40:56.284552+00	2021-11-26 15:40:56.28456+00	3	9496	115
3265	\N	\N	\N	f	2021-11-26 15:40:56.289867+00	2021-11-26 15:40:56.28988+00	3	9497	115
3266	\N	\N	\N	f	2021-11-26 15:40:56.295535+00	2021-11-26 15:40:56.295545+00	3	9498	115
3267	\N	\N	\N	f	2021-11-26 15:40:56.300899+00	2021-11-26 15:40:56.300907+00	3	9499	115
3268	\N	\N	\N	f	2021-11-26 15:40:56.306464+00	2021-11-26 15:40:56.306473+00	3	9500	115
3269	\N	\N	\N	f	2021-11-26 15:40:56.311925+00	2021-11-26 15:40:56.311935+00	3	9501	115
3270	\N	\N	\N	f	2021-11-26 15:40:56.316599+00	2021-11-26 15:40:56.316606+00	3	9502	115
3271	\N	\N	\N	f	2021-11-26 15:40:56.321793+00	2021-11-26 15:40:56.321802+00	3	9503	115
3272	\N	\N	\N	f	2021-11-26 15:40:56.326911+00	2021-11-26 15:40:56.326922+00	3	9523	115
3273	\N	\N	\N	f	2021-11-26 15:40:56.331731+00	2021-11-26 15:40:56.33174+00	3	9522	115
3274	\N	\N	\N	f	2021-11-26 15:40:56.336454+00	2021-11-26 15:40:56.336463+00	3	9521	115
3275	\N	\N	\N	f	2021-11-26 15:40:56.341525+00	2021-11-26 15:40:56.341534+00	3	9520	115
3276	\N	\N	\N	f	2021-11-26 15:40:56.346212+00	2021-11-26 15:40:56.34622+00	3	9519	115
3277	\N	\N	\N	f	2021-11-26 15:40:56.351522+00	2021-11-26 15:40:56.351529+00	3	9518	115
3278	\N	\N	\N	f	2021-11-26 15:40:56.356363+00	2021-11-26 15:40:56.356375+00	3	9517	115
3279	\N	\N	\N	f	2021-11-26 15:40:56.361686+00	2021-11-26 15:40:56.361694+00	3	9516	115
3280	\N	\N	\N	f	2021-11-26 15:40:56.365933+00	2021-11-26 15:40:56.36594+00	3	9515	115
3281	\N	\N	\N	f	2021-11-26 15:40:56.370359+00	2021-11-26 15:40:56.370367+00	3	9514	115
3282	\N	\N	\N	f	2021-11-26 15:40:56.375052+00	2021-11-26 15:40:56.375061+00	3	9513	115
3283	\N	\N	\N	f	2021-11-26 15:40:56.381166+00	2021-11-26 15:40:56.381174+00	3	9512	115
3284	\N	\N	\N	f	2021-11-26 15:40:56.385617+00	2021-11-26 15:40:56.38563+00	3	9511	115
3285	\N	\N	\N	f	2021-11-26 15:40:56.391547+00	2021-11-26 15:40:56.391562+00	3	9510	115
3286	\N	\N	\N	f	2021-11-26 15:40:56.396399+00	2021-11-26 15:40:56.396408+00	3	9509	115
3287	\N	\N	\N	f	2021-11-26 15:40:56.401066+00	2021-11-26 15:40:56.401073+00	3	9508	115
3288	\N	\N	\N	f	2021-11-26 15:40:56.405424+00	2021-11-26 15:40:56.405433+00	3	9507	115
3289	\N	\N	\N	f	2021-11-26 15:40:56.409977+00	2021-11-26 15:40:56.409984+00	3	9506	115
3290	\N	\N	\N	f	2021-11-26 15:40:56.414626+00	2021-11-26 15:40:56.414635+00	3	9505	115
3291	\N	\N	\N	f	2021-11-26 15:40:56.420115+00	2021-11-26 15:40:56.420125+00	3	9504	115
3292	\N	\N	\N	f	2021-11-26 15:40:56.425023+00	2021-11-26 15:40:56.425033+00	3	9524	115
3293	\N	\N	\N	f	2021-11-26 15:40:56.429556+00	2021-11-26 15:40:56.429563+00	3	9525	115
3294	\N	\N	\N	f	2021-11-26 15:40:56.434198+00	2021-11-26 15:40:56.434205+00	3	9526	115
3295	\N	\N	\N	f	2021-11-26 15:40:56.439353+00	2021-11-26 15:40:56.439371+00	3	9527	115
3296	\N	\N	\N	f	2021-11-26 15:40:56.444425+00	2021-11-26 15:40:56.444432+00	3	9528	115
3297	\N	\N	\N	f	2021-11-26 15:40:56.449153+00	2021-11-26 15:40:56.449159+00	3	9529	115
3298	\N	\N	\N	f	2021-11-26 15:40:56.454092+00	2021-11-26 15:40:56.454107+00	3	9530	115
3299	\N	\N	\N	f	2021-11-26 15:40:56.459315+00	2021-11-26 15:40:56.459325+00	3	9531	115
3300	\N	\N	\N	f	2021-11-26 15:40:56.46391+00	2021-11-26 15:40:56.463917+00	3	9532	115
3301	\N	\N	\N	f	2021-11-26 15:40:56.468418+00	2021-11-26 15:40:56.468424+00	3	9533	115
3302	\N	\N	\N	f	2021-11-26 15:40:56.47313+00	2021-11-26 15:40:56.473139+00	3	9534	115
3303	\N	\N	\N	f	2021-11-26 15:40:56.478394+00	2021-11-26 15:40:56.478405+00	3	9535	115
3304	\N	\N	\N	f	2021-11-26 15:40:56.483588+00	2021-11-26 15:40:56.483596+00	3	9536	115
3305	\N	\N	\N	f	2021-11-26 15:40:56.488513+00	2021-11-26 15:40:56.488522+00	3	9537	115
3306	\N	\N	\N	f	2021-11-26 15:40:56.493375+00	2021-11-26 15:40:56.493384+00	3	9538	115
3307	\N	\N	\N	f	2021-11-26 15:40:56.498021+00	2021-11-26 15:40:56.498028+00	3	9539	115
3308	\N	\N	\N	f	2021-11-26 15:40:56.502413+00	2021-11-26 15:40:56.50242+00	3	9540	115
3309	\N	\N	\N	f	2021-11-26 15:40:56.506908+00	2021-11-26 15:40:56.506916+00	3	9541	115
3310	\N	\N	\N	f	2021-11-26 15:40:56.511825+00	2021-11-26 15:40:56.511833+00	3	9542	115
3311	\N	\N	\N	f	2021-11-26 15:40:56.516322+00	2021-11-26 15:40:56.516328+00	3	9543	115
3312	\N	\N	\N	f	2021-11-26 15:40:56.521198+00	2021-11-26 15:40:56.52121+00	3	9563	115
3313	\N	\N	\N	f	2021-11-26 15:40:56.526341+00	2021-11-26 15:40:56.52635+00	3	9562	115
3314	\N	\N	\N	f	2021-11-26 15:40:56.530971+00	2021-11-26 15:40:56.530979+00	3	9561	115
3315	\N	\N	\N	f	2021-11-26 15:40:56.535525+00	2021-11-26 15:40:56.535533+00	3	9560	115
3316	\N	\N	\N	f	2021-11-26 15:40:56.541238+00	2021-11-26 15:40:56.541248+00	3	9559	115
3317	\N	\N	\N	f	2021-11-26 15:40:56.546661+00	2021-11-26 15:40:56.54667+00	3	9558	115
3318	\N	\N	\N	f	2021-11-26 15:40:56.551685+00	2021-11-26 15:40:56.551693+00	3	9557	115
3319	\N	\N	\N	f	2021-11-26 15:40:56.556921+00	2021-11-26 15:40:56.55693+00	3	9556	115
3320	\N	\N	\N	f	2021-11-26 15:40:56.561992+00	2021-11-26 15:40:56.561999+00	3	9555	115
3321	\N	\N	\N	f	2021-11-26 15:40:56.566926+00	2021-11-26 15:40:56.566932+00	3	9554	115
3322	\N	\N	\N	f	2021-11-26 15:40:56.572389+00	2021-11-26 15:40:56.572399+00	3	9553	115
3323	\N	\N	\N	f	2021-11-26 15:40:56.577446+00	2021-11-26 15:40:56.577455+00	3	9552	115
3324	\N	\N	\N	f	2021-11-26 15:40:56.582549+00	2021-11-26 15:40:56.582557+00	3	9551	115
3325	\N	\N	\N	f	2021-11-26 15:40:56.587756+00	2021-11-26 15:40:56.587765+00	3	9550	115
3326	\N	\N	\N	f	2021-11-26 15:40:56.593781+00	2021-11-26 15:40:56.593788+00	3	9549	115
3327	\N	\N	\N	f	2021-11-26 15:40:56.598244+00	2021-11-26 15:40:56.598251+00	3	9548	115
3328	\N	\N	\N	f	2021-11-26 15:40:56.602685+00	2021-11-26 15:40:56.602692+00	3	9547	115
3329	\N	\N	\N	f	2021-11-26 15:40:56.607859+00	2021-11-26 15:40:56.60787+00	3	9546	115
3330	\N	\N	\N	f	2021-11-26 15:40:56.615316+00	2021-11-26 15:40:56.615325+00	3	9545	115
3331	\N	\N	\N	f	2021-11-26 15:40:56.62032+00	2021-11-26 15:40:56.620329+00	3	9544	115
3332	\N	\N	\N	f	2021-11-26 15:40:56.625219+00	2021-11-26 15:40:56.625227+00	3	9564	115
3333	\N	\N	\N	f	2021-11-26 15:40:56.629896+00	2021-11-26 15:40:56.629903+00	3	9565	115
3334	\N	\N	\N	f	2021-11-26 15:40:56.635274+00	2021-11-26 15:40:56.635283+00	3	9566	115
3335	\N	\N	\N	f	2021-11-26 15:40:56.640605+00	2021-11-26 15:40:56.640614+00	3	9567	115
3336	\N	\N	\N	f	2021-11-26 15:40:56.645355+00	2021-11-26 15:40:56.645363+00	3	9568	115
3337	\N	\N	\N	f	2021-11-26 15:40:56.649775+00	2021-11-26 15:40:56.649781+00	3	9569	115
3338	\N	\N	\N	f	2021-11-26 15:40:56.654279+00	2021-11-26 15:40:56.654286+00	3	9570	115
3339	\N	\N	\N	f	2021-11-26 15:40:56.658641+00	2021-11-26 15:40:56.658647+00	3	9571	115
3340	\N	\N	\N	f	2021-11-26 15:40:56.662952+00	2021-11-26 15:40:56.662958+00	3	9572	115
3341	\N	\N	\N	f	2021-11-26 15:40:56.667416+00	2021-11-26 15:40:56.667424+00	3	9573	115
3342	\N	\N	\N	f	2021-11-26 15:40:56.672271+00	2021-11-26 15:40:56.672281+00	3	9574	115
3343	\N	\N	\N	f	2021-11-26 15:40:56.677259+00	2021-11-26 15:40:56.677268+00	3	9575	115
3344	\N	\N	\N	f	2021-11-26 15:40:56.681618+00	2021-11-26 15:40:56.681625+00	3	9576	115
3345	\N	\N	\N	f	2021-11-26 15:40:56.686132+00	2021-11-26 15:40:56.68614+00	3	9577	115
3346	\N	\N	\N	f	2021-11-26 15:40:56.690701+00	2021-11-26 15:40:56.690709+00	3	9578	115
3347	\N	\N	\N	f	2021-11-26 15:40:56.695863+00	2021-11-26 15:40:56.695873+00	3	9579	115
3348	\N	\N	\N	f	2021-11-26 15:40:56.700501+00	2021-11-26 15:40:56.700508+00	3	9580	115
3349	\N	\N	\N	f	2021-11-26 15:40:56.705521+00	2021-11-26 15:40:56.70553+00	3	9581	115
3350	\N	\N	\N	f	2021-11-26 15:40:56.710452+00	2021-11-26 15:40:56.71046+00	3	9582	115
3351	\N	\N	\N	f	2021-11-26 15:40:56.715029+00	2021-11-26 15:40:56.715035+00	3	9583	115
3352	\N	\N	\N	f	2021-11-26 15:40:56.719586+00	2021-11-26 15:40:56.719594+00	3	9603	115
3353	\N	\N	\N	f	2021-11-26 15:40:56.724829+00	2021-11-26 15:40:56.724842+00	3	9602	115
3354	\N	\N	\N	f	2021-11-26 15:40:56.729576+00	2021-11-26 15:40:56.729584+00	3	9601	115
3355	\N	\N	\N	f	2021-11-26 15:40:56.734308+00	2021-11-26 15:40:56.734315+00	3	9600	115
3356	\N	\N	\N	f	2021-11-26 15:40:56.739316+00	2021-11-26 15:40:56.739326+00	3	9599	115
3357	\N	\N	\N	f	2021-11-26 15:40:56.744574+00	2021-11-26 15:40:56.744583+00	3	9598	115
3358	\N	\N	\N	f	2021-11-26 15:40:56.749033+00	2021-11-26 15:40:56.74904+00	3	9597	115
3359	\N	\N	\N	f	2021-11-26 15:40:56.754116+00	2021-11-26 15:40:56.754127+00	3	9596	115
3360	\N	\N	\N	f	2021-11-26 15:40:56.759798+00	2021-11-26 15:40:56.759808+00	3	9595	115
3361	\N	\N	\N	f	2021-11-26 15:40:56.765191+00	2021-11-26 15:40:56.765199+00	3	9594	115
3362	\N	\N	\N	f	2021-11-26 15:40:56.770283+00	2021-11-26 15:40:56.770291+00	3	9593	115
3363	\N	\N	\N	f	2021-11-26 15:40:56.775318+00	2021-11-26 15:40:56.775327+00	3	9592	115
3364	\N	\N	\N	f	2021-11-26 15:40:56.779949+00	2021-11-26 15:40:56.779957+00	3	9591	115
3365	\N	\N	\N	f	2021-11-26 15:40:56.784873+00	2021-11-26 15:40:56.784882+00	3	9590	115
3366	\N	\N	\N	f	2021-11-26 15:40:56.790175+00	2021-11-26 15:40:56.790184+00	3	9589	115
3367	\N	\N	\N	f	2021-11-26 15:40:56.796336+00	2021-11-26 15:40:56.796346+00	3	9588	115
3368	\N	\N	\N	f	2021-11-26 15:40:56.801269+00	2021-11-26 15:40:56.801276+00	3	9587	115
3369	\N	\N	\N	f	2021-11-26 15:40:56.805939+00	2021-11-26 15:40:56.805947+00	3	9586	115
3370	\N	\N	\N	f	2021-11-26 15:40:56.810567+00	2021-11-26 15:40:56.810574+00	3	9585	115
3371	\N	\N	\N	f	2021-11-26 15:40:56.815503+00	2021-11-26 15:40:56.81551+00	3	9584	115
3372	\N	\N	\N	f	2021-11-26 15:40:56.820897+00	2021-11-26 15:40:56.820908+00	3	9604	115
3373	\N	\N	\N	f	2021-11-26 15:40:56.826439+00	2021-11-26 15:40:56.826449+00	3	9605	115
3374	\N	\N	\N	f	2021-11-26 15:40:56.831447+00	2021-11-26 15:40:56.831454+00	3	9606	115
3375	\N	\N	\N	f	2021-11-26 15:40:56.83618+00	2021-11-26 15:40:56.836189+00	3	9607	115
3376	\N	\N	\N	f	2021-11-26 15:40:56.841418+00	2021-11-26 15:40:56.841427+00	3	9608	115
3377	\N	\N	\N	f	2021-11-26 15:40:56.846574+00	2021-11-26 15:40:56.846583+00	3	9609	115
3378	\N	\N	\N	f	2021-11-26 15:40:56.851201+00	2021-11-26 15:40:56.851209+00	3	9610	115
3379	\N	\N	\N	f	2021-11-26 15:40:56.856133+00	2021-11-26 15:40:56.856142+00	3	9611	115
3380	\N	\N	\N	f	2021-11-26 15:40:56.860962+00	2021-11-26 15:40:56.86097+00	3	9612	115
3381	\N	\N	\N	f	2021-11-26 15:40:56.865482+00	2021-11-26 15:40:56.865488+00	3	9613	115
3382	\N	\N	\N	f	2021-11-26 15:40:56.87017+00	2021-11-26 15:40:56.870179+00	3	9614	115
3383	\N	\N	\N	f	2021-11-26 15:40:56.875153+00	2021-11-26 15:40:56.875162+00	3	9615	115
3384	\N	\N	\N	f	2021-11-26 15:40:56.880345+00	2021-11-26 15:40:56.880354+00	3	9616	115
3385	\N	\N	\N	f	2021-11-26 15:40:56.8851+00	2021-11-26 15:40:56.885108+00	3	9617	115
3386	\N	\N	\N	f	2021-11-26 15:40:56.88988+00	2021-11-26 15:40:56.88989+00	3	9618	115
3387	\N	\N	\N	f	2021-11-26 15:40:56.894515+00	2021-11-26 15:40:56.894525+00	3	9619	115
3388	\N	\N	\N	f	2021-11-26 15:40:56.899102+00	2021-11-26 15:40:56.899109+00	3	9620	115
3389	\N	\N	\N	f	2021-11-26 15:40:56.904019+00	2021-11-26 15:40:56.904029+00	3	9621	115
3390	\N	\N	\N	f	2021-11-26 15:40:56.909215+00	2021-11-26 15:40:56.909224+00	3	9622	115
3391	\N	\N	\N	f	2021-11-26 15:40:56.913768+00	2021-11-26 15:40:56.913776+00	3	9623	115
3392	\N	\N	\N	f	2021-11-26 15:40:56.918258+00	2021-11-26 15:40:56.918265+00	3	9643	115
3393	\N	\N	\N	f	2021-11-26 15:40:56.924448+00	2021-11-26 15:40:56.924456+00	3	9642	115
3394	\N	\N	\N	f	2021-11-26 15:40:56.929359+00	2021-11-26 15:40:56.929365+00	3	9641	115
3395	\N	\N	\N	f	2021-11-26 15:40:56.934095+00	2021-11-26 15:40:56.934102+00	3	9640	115
3396	\N	\N	\N	f	2021-11-26 15:40:56.93983+00	2021-11-26 15:40:56.939845+00	3	9639	115
3397	\N	\N	\N	f	2021-11-26 15:40:56.94518+00	2021-11-26 15:40:56.945189+00	3	9638	115
3398	\N	\N	\N	f	2021-11-26 15:40:56.949922+00	2021-11-26 15:40:56.949929+00	3	9637	115
3399	\N	\N	\N	f	2021-11-26 15:40:56.95481+00	2021-11-26 15:40:56.954818+00	3	9636	115
3400	\N	\N	\N	f	2021-11-26 15:40:56.959421+00	2021-11-26 15:40:56.959428+00	3	9635	115
3401	\N	\N	\N	f	2021-11-26 15:40:56.963995+00	2021-11-26 15:40:56.964002+00	3	9634	115
3402	\N	\N	\N	f	2021-11-26 15:40:56.968379+00	2021-11-26 15:40:56.968385+00	3	9633	115
3403	\N	\N	\N	f	2021-11-26 15:40:56.97355+00	2021-11-26 15:40:56.973561+00	3	9632	115
3404	\N	\N	\N	f	2021-11-26 15:40:56.978572+00	2021-11-26 15:40:56.978581+00	3	9631	115
3405	\N	\N	\N	f	2021-11-26 15:40:56.983251+00	2021-11-26 15:40:56.983259+00	3	9630	115
3406	\N	\N	\N	f	2021-11-26 15:40:56.988044+00	2021-11-26 15:40:56.988053+00	3	9629	115
3407	\N	\N	\N	f	2021-11-26 15:40:56.992598+00	2021-11-26 15:40:56.992606+00	3	9628	115
3408	\N	\N	\N	f	2021-11-26 15:40:56.997262+00	2021-11-26 15:40:56.99727+00	3	9627	115
3409	\N	\N	\N	f	2021-11-26 15:40:57.002563+00	2021-11-26 15:40:57.002573+00	3	9626	115
3410	\N	\N	\N	f	2021-11-26 15:40:57.007545+00	2021-11-26 15:40:57.007554+00	3	9625	115
3411	\N	\N	\N	f	2021-11-26 15:40:57.01228+00	2021-11-26 15:40:57.012288+00	3	9624	115
3412	\N	\N	\N	f	2021-11-26 15:40:57.016766+00	2021-11-26 15:40:57.016774+00	3	9644	115
3413	\N	\N	\N	f	2021-11-26 15:40:57.021399+00	2021-11-26 15:40:57.021406+00	3	9645	115
3414	\N	\N	\N	f	2021-11-26 15:40:57.025979+00	2021-11-26 15:40:57.025986+00	3	9646	115
3415	\N	\N	\N	f	2021-11-26 15:40:57.030856+00	2021-11-26 15:40:57.030862+00	3	9647	115
3416	\N	\N	\N	f	2021-11-26 15:40:57.035319+00	2021-11-26 15:40:57.035325+00	3	9648	115
3417	\N	\N	\N	f	2021-11-26 15:40:57.04064+00	2021-11-26 15:40:57.040649+00	3	9649	115
3418	\N	\N	\N	f	2021-11-26 15:40:57.045997+00	2021-11-26 15:40:57.046006+00	3	9650	115
3419	\N	\N	\N	f	2021-11-26 15:40:57.050396+00	2021-11-26 15:40:57.050403+00	3	9651	115
3420	\N	\N	\N	f	2021-11-26 15:40:57.055439+00	2021-11-26 15:40:57.055449+00	3	9652	115
3421	\N	\N	\N	f	2021-11-26 15:40:57.06202+00	2021-11-26 15:40:57.062032+00	3	9653	115
3422	\N	\N	\N	f	2021-11-26 15:40:57.066432+00	2021-11-26 15:40:57.066439+00	3	9654	115
3423	\N	\N	\N	f	2021-11-26 15:40:57.070915+00	2021-11-26 15:40:57.070924+00	3	9655	115
3424	\N	\N	\N	f	2021-11-26 15:40:57.075724+00	2021-11-26 15:40:57.075733+00	3	9656	115
3425	\N	\N	\N	f	2021-11-26 15:40:57.080159+00	2021-11-26 15:40:57.080168+00	3	9657	115
3426	\N	\N	\N	f	2021-11-26 15:40:57.084478+00	2021-11-26 15:40:57.084486+00	3	9658	115
3427	\N	\N	\N	f	2021-11-26 15:40:57.088936+00	2021-11-26 15:40:57.088946+00	3	9659	115
3428	\N	\N	\N	f	2021-11-26 15:40:57.094084+00	2021-11-26 15:40:57.094093+00	3	9660	115
3429	\N	\N	\N	f	2021-11-26 15:40:57.098524+00	2021-11-26 15:40:57.098532+00	3	9661	115
3430	\N	\N	\N	f	2021-11-26 15:40:57.10313+00	2021-11-26 15:40:57.103137+00	3	9662	115
3431	\N	\N	\N	f	2021-11-26 15:40:57.108198+00	2021-11-26 15:40:57.108208+00	3	9663	115
3432	\N	\N	\N	f	2021-11-26 15:40:57.114097+00	2021-11-26 15:40:57.114104+00	3	9683	115
3433	\N	\N	\N	f	2021-11-26 15:40:57.118742+00	2021-11-26 15:40:57.118749+00	3	9682	115
3434	\N	\N	\N	f	2021-11-26 15:40:57.124662+00	2021-11-26 15:40:57.124672+00	3	9681	115
3435	\N	\N	\N	f	2021-11-26 15:40:57.129791+00	2021-11-26 15:40:57.129798+00	3	9680	115
3436	\N	\N	\N	f	2021-11-26 15:40:57.13468+00	2021-11-26 15:40:57.134687+00	3	9679	115
3437	\N	\N	\N	f	2021-11-26 15:40:57.139683+00	2021-11-26 15:40:57.139692+00	3	9678	115
3438	\N	\N	\N	f	2021-11-26 15:40:57.144233+00	2021-11-26 15:40:57.14424+00	3	9677	115
3439	\N	\N	\N	f	2021-11-26 15:40:57.148577+00	2021-11-26 15:40:57.148583+00	3	9676	115
3440	\N	\N	\N	f	2021-11-26 15:40:57.154192+00	2021-11-26 15:40:57.154202+00	3	9675	115
3441	\N	\N	\N	f	2021-11-26 15:40:57.15903+00	2021-11-26 15:40:57.15904+00	3	9674	115
3442	\N	\N	\N	f	2021-11-26 15:40:57.16361+00	2021-11-26 15:40:57.163618+00	3	9673	115
3443	\N	\N	\N	f	2021-11-26 15:40:57.167996+00	2021-11-26 15:40:57.168003+00	3	9672	115
3444	\N	\N	\N	f	2021-11-26 15:40:57.172513+00	2021-11-26 15:40:57.172521+00	3	9671	115
3445	\N	\N	\N	f	2021-11-26 15:40:57.176793+00	2021-11-26 15:40:57.1768+00	3	9670	115
3446	\N	\N	\N	f	2021-11-26 15:40:57.181108+00	2021-11-26 15:40:57.181115+00	3	9669	115
3447	\N	\N	\N	f	2021-11-26 15:40:57.185467+00	2021-11-26 15:40:57.185475+00	3	9668	115
3448	\N	\N	\N	f	2021-11-26 15:40:57.190884+00	2021-11-26 15:40:57.190895+00	3	9667	115
3449	\N	\N	\N	f	2021-11-26 15:40:57.196221+00	2021-11-26 15:40:57.19623+00	3	9666	115
3450	\N	\N	\N	f	2021-11-26 15:40:57.201317+00	2021-11-26 15:40:57.201324+00	3	9665	115
3451	\N	\N	\N	f	2021-11-26 15:40:57.206157+00	2021-11-26 15:40:57.206166+00	3	9664	115
3452	\N	\N	\N	f	2021-11-26 15:40:57.210815+00	2021-11-26 15:40:57.210822+00	3	9684	115
3453	\N	\N	\N	f	2021-11-26 15:40:57.215885+00	2021-11-26 15:40:57.215895+00	3	9685	115
3454	\N	\N	\N	f	2021-11-26 15:40:57.221083+00	2021-11-26 15:40:57.221092+00	3	9686	115
3455	\N	\N	\N	f	2021-11-26 15:40:57.225825+00	2021-11-26 15:40:57.225834+00	3	9687	115
3456	\N	\N	\N	f	2021-11-26 15:40:57.23063+00	2021-11-26 15:40:57.230643+00	3	9688	115
3457	\N	\N	\N	f	2021-11-26 15:40:57.236136+00	2021-11-26 15:40:57.236146+00	3	9689	115
3458	\N	\N	\N	f	2021-11-26 15:40:57.241004+00	2021-11-26 15:40:57.241011+00	3	9690	115
3459	\N	\N	\N	f	2021-11-26 15:40:57.245376+00	2021-11-26 15:40:57.245383+00	3	9691	115
3460	\N	\N	\N	f	2021-11-26 15:40:57.25027+00	2021-11-26 15:40:57.250276+00	3	9692	115
3461	\N	\N	\N	f	2021-11-26 15:40:57.255733+00	2021-11-26 15:40:57.255744+00	3	9693	115
3462	\N	\N	\N	f	2021-11-26 15:40:57.260895+00	2021-11-26 15:40:57.260904+00	3	9694	115
3463	\N	\N	\N	f	2021-11-26 15:40:57.265703+00	2021-11-26 15:40:57.26571+00	3	9695	115
3464	\N	\N	\N	f	2021-11-26 15:40:57.270248+00	2021-11-26 15:40:57.270257+00	3	9696	115
3465	\N	\N	\N	f	2021-11-26 15:40:57.275687+00	2021-11-26 15:40:57.275697+00	3	9697	115
3466	\N	\N	\N	f	2021-11-26 15:40:57.280267+00	2021-11-26 15:40:57.280276+00	3	9698	115
3467	\N	\N	\N	f	2021-11-26 15:40:57.285006+00	2021-11-26 15:40:57.285015+00	3	9699	115
3468	\N	\N	\N	f	2021-11-26 15:40:57.289664+00	2021-11-26 15:40:57.289674+00	3	9700	115
3469	\N	\N	\N	f	2021-11-26 15:40:57.294189+00	2021-11-26 15:40:57.294196+00	3	9701	115
3470	\N	\N	\N	f	2021-11-26 15:40:57.298853+00	2021-11-26 15:40:57.29886+00	3	9702	115
3471	\N	\N	\N	f	2021-11-26 15:40:57.303805+00	2021-11-26 15:40:57.303816+00	3	9703	115
3472	\N	\N	\N	f	2021-11-26 15:40:57.309059+00	2021-11-26 15:40:57.309069+00	3	9723	115
3473	\N	\N	\N	f	2021-11-26 15:40:57.313691+00	2021-11-26 15:40:57.313698+00	3	9722	115
3474	\N	\N	\N	f	2021-11-26 15:40:57.318337+00	2021-11-26 15:40:57.318344+00	3	9721	115
3475	\N	\N	\N	f	2021-11-26 15:40:57.323233+00	2021-11-26 15:40:57.323241+00	3	9720	115
3476	\N	\N	\N	f	2021-11-26 15:40:57.327797+00	2021-11-26 15:40:57.327803+00	3	9719	115
3477	\N	\N	\N	f	2021-11-26 15:40:57.332406+00	2021-11-26 15:40:57.332412+00	3	9718	115
3478	\N	\N	\N	f	2021-11-26 15:40:57.338157+00	2021-11-26 15:40:57.338167+00	3	9717	115
3479	\N	\N	\N	f	2021-11-26 15:40:57.343517+00	2021-11-26 15:40:57.343527+00	3	9716	115
3480	\N	\N	\N	f	2021-11-26 15:40:57.348252+00	2021-11-26 15:40:57.348259+00	3	9715	115
3481	\N	\N	\N	f	2021-11-26 15:40:57.352947+00	2021-11-26 15:40:57.352958+00	3	9714	115
3482	\N	\N	\N	f	2021-11-26 15:40:57.357601+00	2021-11-26 15:40:57.357609+00	3	9713	115
3483	\N	\N	\N	f	2021-11-26 15:40:57.362127+00	2021-11-26 15:40:57.362134+00	3	9712	115
3484	\N	\N	\N	f	2021-11-26 15:40:57.366692+00	2021-11-26 15:40:57.366701+00	3	9711	115
3485	\N	\N	\N	f	2021-11-26 15:40:57.371515+00	2021-11-26 15:40:57.371525+00	3	9710	115
3486	\N	\N	\N	f	2021-11-26 15:40:57.376608+00	2021-11-26 15:40:57.376618+00	3	9709	115
3487	\N	\N	\N	f	2021-11-26 15:40:57.381315+00	2021-11-26 15:40:57.381323+00	3	9708	115
3488	\N	\N	\N	f	2021-11-26 15:40:57.387416+00	2021-11-26 15:40:57.387424+00	3	9707	115
3489	\N	\N	\N	f	2021-11-26 15:40:57.392018+00	2021-11-26 15:40:57.392026+00	3	9706	115
3490	\N	\N	\N	f	2021-11-26 15:40:57.396645+00	2021-11-26 15:40:57.396655+00	3	9705	115
3491	\N	\N	\N	f	2021-11-26 15:40:57.401538+00	2021-11-26 15:40:57.401548+00	3	9704	115
3492	\N	\N	\N	f	2021-11-26 15:40:57.406254+00	2021-11-26 15:40:57.406263+00	3	9724	115
3493	\N	\N	\N	f	2021-11-26 15:40:57.410749+00	2021-11-26 15:40:57.410757+00	3	9725	115
3494	\N	\N	\N	f	2021-11-26 15:40:57.415253+00	2021-11-26 15:40:57.415261+00	3	9726	115
3495	\N	\N	\N	f	2021-11-26 15:40:57.41962+00	2021-11-26 15:40:57.419628+00	3	9727	115
3496	\N	\N	\N	f	2021-11-26 15:40:57.424174+00	2021-11-26 15:40:57.424185+00	3	9728	115
3497	\N	\N	\N	f	2021-11-26 15:40:57.429065+00	2021-11-26 15:40:57.429074+00	3	9729	115
3498	\N	\N	\N	f	2021-11-26 15:40:57.433577+00	2021-11-26 15:40:57.433585+00	3	9730	115
3499	\N	\N	\N	f	2021-11-26 15:40:57.438262+00	2021-11-26 15:40:57.438272+00	3	9731	115
3500	\N	\N	\N	f	2021-11-26 15:40:57.443203+00	2021-11-26 15:40:57.443212+00	3	9732	115
3501	\N	\N	\N	f	2021-11-26 15:40:57.447768+00	2021-11-26 15:40:57.447775+00	3	9733	115
3502	\N	\N	\N	f	2021-11-26 15:40:57.452106+00	2021-11-26 15:40:57.452116+00	3	9734	115
3503	\N	\N	\N	f	2021-11-26 15:40:57.456947+00	2021-11-26 15:40:57.456956+00	3	9735	115
3504	\N	\N	\N	f	2021-11-26 15:40:57.46172+00	2021-11-26 15:40:57.461729+00	3	9736	115
3505	\N	\N	\N	f	2021-11-26 15:40:57.466227+00	2021-11-26 15:40:57.466234+00	3	9737	115
3506	\N	\N	\N	f	2021-11-26 15:40:57.470553+00	2021-11-26 15:40:57.470561+00	3	9738	115
3507	\N	\N	\N	f	2021-11-26 15:40:57.475491+00	2021-11-26 15:40:57.475499+00	3	9739	115
3508	\N	\N	\N	f	2021-11-26 15:40:57.480038+00	2021-11-26 15:40:57.480045+00	3	9740	115
3509	\N	\N	\N	f	2021-11-26 15:40:57.484748+00	2021-11-26 15:40:57.484755+00	3	9741	115
3510	\N	\N	\N	f	2021-11-26 15:40:57.48996+00	2021-11-26 15:40:57.48997+00	3	9742	115
3511	\N	\N	\N	f	2021-11-26 15:40:57.495167+00	2021-11-26 15:40:57.495176+00	3	9743	115
3512	\N	\N	\N	f	2021-11-26 15:40:57.499668+00	2021-11-26 15:40:57.499676+00	3	9763	115
3513	\N	\N	\N	f	2021-11-26 15:40:57.504393+00	2021-11-26 15:40:57.504402+00	3	9762	115
3514	\N	\N	\N	f	2021-11-26 15:40:57.50909+00	2021-11-26 15:40:57.509097+00	3	9761	115
3515	\N	\N	\N	f	2021-11-26 15:40:57.513532+00	2021-11-26 15:40:57.513538+00	3	9760	115
3516	\N	\N	\N	f	2021-11-26 15:40:57.517892+00	2021-11-26 15:40:57.517901+00	3	9759	115
3517	\N	\N	\N	f	2021-11-26 15:40:57.522903+00	2021-11-26 15:40:57.522912+00	3	9758	115
3518	\N	\N	\N	f	2021-11-26 15:40:57.527576+00	2021-11-26 15:40:57.527586+00	3	9757	115
3519	\N	\N	\N	f	2021-11-26 15:40:57.532083+00	2021-11-26 15:40:57.53209+00	3	9756	115
3520	\N	\N	\N	f	2021-11-26 15:40:57.536818+00	2021-11-26 15:40:57.536828+00	3	9755	115
3521	\N	\N	\N	f	2021-11-26 15:40:57.541496+00	2021-11-26 15:40:57.541503+00	3	9754	115
3522	\N	\N	\N	f	2021-11-26 15:40:57.546195+00	2021-11-26 15:40:57.546201+00	3	9753	115
3523	\N	\N	\N	f	2021-11-26 15:40:57.550784+00	2021-11-26 15:40:57.55079+00	3	9752	115
3524	\N	\N	\N	f	2021-11-26 15:40:57.555939+00	2021-11-26 15:40:57.555948+00	3	9751	115
3525	\N	\N	\N	f	2021-11-26 15:40:57.561082+00	2021-11-26 15:40:57.56109+00	3	9750	115
3526	\N	\N	\N	f	2021-11-26 15:40:57.56575+00	2021-11-26 15:40:57.565757+00	3	9749	115
3527	\N	\N	\N	f	2021-11-26 15:40:57.570441+00	2021-11-26 15:40:57.57045+00	3	9748	115
3528	\N	\N	\N	f	2021-11-26 15:40:57.575482+00	2021-11-26 15:40:57.57549+00	3	9747	115
3529	\N	\N	\N	f	2021-11-26 15:40:57.581037+00	2021-11-26 15:40:57.581047+00	3	9746	115
3530	\N	\N	\N	f	2021-11-26 15:40:57.586041+00	2021-11-26 15:40:57.58605+00	3	9745	115
3531	\N	\N	\N	f	2021-11-26 15:40:57.590913+00	2021-11-26 15:40:57.590925+00	3	9744	115
3532	\N	\N	\N	f	2021-11-26 15:40:57.595613+00	2021-11-26 15:40:57.595621+00	3	9764	115
3533	\N	\N	\N	f	2021-11-26 15:40:57.600264+00	2021-11-26 15:40:57.600271+00	3	9765	115
3534	\N	\N	\N	f	2021-11-26 15:40:57.604684+00	2021-11-26 15:40:57.604692+00	3	9766	115
3535	\N	\N	\N	f	2021-11-26 15:40:57.609057+00	2021-11-26 15:40:57.609064+00	3	9767	115
3536	\N	\N	\N	f	2021-11-26 15:40:57.613441+00	2021-11-26 15:40:57.613448+00	3	9768	115
3537	\N	\N	\N	f	2021-11-26 15:40:57.617882+00	2021-11-26 15:40:57.617888+00	3	9769	115
3538	\N	\N	\N	f	2021-11-26 15:40:57.622759+00	2021-11-26 15:40:57.622769+00	3	9770	115
3539	\N	\N	\N	f	2021-11-26 15:40:57.627665+00	2021-11-26 15:40:57.627674+00	3	9771	115
3540	\N	\N	\N	f	2021-11-26 15:40:57.631989+00	2021-11-26 15:40:57.631996+00	3	9772	115
3541	\N	\N	\N	f	2021-11-26 15:40:57.640637+00	2021-11-26 15:40:57.640647+00	3	9773	115
3542	\N	\N	\N	f	2021-11-26 15:40:57.64535+00	2021-11-26 15:40:57.645359+00	3	9774	115
3543	\N	\N	\N	f	2021-11-26 15:40:57.64979+00	2021-11-26 15:40:57.649797+00	3	9775	115
3544	\N	\N	\N	f	2021-11-26 15:40:57.654302+00	2021-11-26 15:40:57.654311+00	3	9776	115
3545	\N	\N	\N	f	2021-11-26 15:40:57.659503+00	2021-11-26 15:40:57.659511+00	3	9777	115
3546	\N	\N	\N	f	2021-11-26 15:40:57.663967+00	2021-11-26 15:40:57.663974+00	3	9778	115
3547	\N	\N	\N	f	2021-11-26 15:40:57.66828+00	2021-11-26 15:40:57.668287+00	3	9779	115
3548	\N	\N	\N	f	2021-11-26 15:40:57.674957+00	2021-11-26 15:40:57.674967+00	3	9780	115
3549	\N	\N	\N	f	2021-11-26 15:40:57.680165+00	2021-11-26 15:40:57.680174+00	3	9781	115
3550	\N	\N	\N	f	2021-11-26 15:40:57.685118+00	2021-11-26 15:40:57.685126+00	3	9782	115
3551	\N	\N	\N	f	2021-11-26 15:40:57.690465+00	2021-11-26 15:40:57.690474+00	3	9783	115
3552	\N	\N	\N	f	2021-11-26 15:40:57.69508+00	2021-11-26 15:40:57.695087+00	3	9803	115
3553	\N	\N	\N	f	2021-11-26 15:40:57.699633+00	2021-11-26 15:40:57.699639+00	3	9802	115
3554	\N	\N	\N	f	2021-11-26 15:40:57.704858+00	2021-11-26 15:40:57.704868+00	3	9801	115
3555	\N	\N	\N	f	2021-11-26 15:40:57.709706+00	2021-11-26 15:40:57.709716+00	3	9800	115
3556	\N	\N	\N	f	2021-11-26 15:40:57.714097+00	2021-11-26 15:40:57.714105+00	3	9799	115
3557	\N	\N	\N	f	2021-11-26 15:40:57.718531+00	2021-11-26 15:40:57.718538+00	3	9798	115
3558	\N	\N	\N	f	2021-11-26 15:40:57.723221+00	2021-11-26 15:40:57.72323+00	3	9797	115
3559	\N	\N	\N	f	2021-11-26 15:40:57.727641+00	2021-11-26 15:40:57.727648+00	3	9796	115
3560	\N	\N	\N	f	2021-11-26 15:40:57.731975+00	2021-11-26 15:40:57.731982+00	3	9795	115
3561	\N	\N	\N	f	2021-11-26 15:40:57.736379+00	2021-11-26 15:40:57.736386+00	3	9794	115
3562	\N	\N	\N	f	2021-11-26 15:40:57.742219+00	2021-11-26 15:40:57.742229+00	3	9793	115
3563	\N	\N	\N	f	2021-11-26 15:40:57.747667+00	2021-11-26 15:40:57.747677+00	3	9792	115
3564	\N	\N	\N	f	2021-11-26 15:40:57.752799+00	2021-11-26 15:40:57.752807+00	3	9791	115
3565	\N	\N	\N	f	2021-11-26 15:40:57.757583+00	2021-11-26 15:40:57.757591+00	3	9790	115
3566	\N	\N	\N	f	2021-11-26 15:40:57.761966+00	2021-11-26 15:40:57.761975+00	3	9789	115
3567	\N	\N	\N	f	2021-11-26 15:40:57.76685+00	2021-11-26 15:40:57.76686+00	3	9788	115
3568	\N	\N	\N	f	2021-11-26 15:40:57.77202+00	2021-11-26 15:40:57.772029+00	3	9787	115
3569	\N	\N	\N	f	2021-11-26 15:40:57.777165+00	2021-11-26 15:40:57.777173+00	3	9786	115
3570	\N	\N	\N	f	2021-11-26 15:40:57.78211+00	2021-11-26 15:40:57.782118+00	3	9785	115
3571	\N	\N	\N	f	2021-11-26 15:40:57.787078+00	2021-11-26 15:40:57.787086+00	3	9784	115
3572	\N	\N	\N	f	2021-11-26 15:40:57.791927+00	2021-11-26 15:40:57.791934+00	3	9804	115
3573	\N	\N	\N	f	2021-11-26 15:40:57.796746+00	2021-11-26 15:40:57.796753+00	3	9805	115
3574	\N	\N	\N	f	2021-11-26 15:40:57.801827+00	2021-11-26 15:40:57.801833+00	3	9806	115
3575	\N	\N	\N	f	2021-11-26 15:40:57.807497+00	2021-11-26 15:40:57.807507+00	3	9807	115
3576	\N	\N	\N	f	2021-11-26 15:40:57.812548+00	2021-11-26 15:40:57.812557+00	3	9808	115
3577	\N	\N	\N	f	2021-11-26 15:40:57.817337+00	2021-11-26 15:40:57.817344+00	3	9809	115
3578	\N	\N	\N	f	2021-11-26 15:40:57.822453+00	2021-11-26 15:40:57.822462+00	3	9810	115
3579	\N	\N	\N	f	2021-11-26 15:40:57.827526+00	2021-11-26 15:40:57.827535+00	3	9811	115
3580	\N	\N	\N	f	2021-11-26 15:40:57.832219+00	2021-11-26 15:40:57.832229+00	3	9812	115
3581	\N	\N	\N	f	2021-11-26 15:40:57.83682+00	2021-11-26 15:40:57.836828+00	3	9813	115
3582	\N	\N	\N	f	2021-11-26 15:40:57.841353+00	2021-11-26 15:40:57.841362+00	3	9814	115
3583	\N	\N	\N	f	2021-11-26 15:40:57.84922+00	2021-11-26 15:40:57.849227+00	3	9815	115
3584	\N	\N	\N	f	2021-11-26 15:40:57.856112+00	2021-11-26 15:40:57.856125+00	3	9816	115
3585	\N	\N	\N	f	2021-11-26 15:40:57.861465+00	2021-11-26 15:40:57.861475+00	3	9817	115
3586	\N	\N	\N	f	2021-11-26 15:40:57.866521+00	2021-11-26 15:40:57.866528+00	3	9818	115
3587	\N	\N	\N	f	2021-11-26 15:40:57.871109+00	2021-11-26 15:40:57.871119+00	3	9819	115
3588	\N	\N	\N	f	2021-11-26 15:40:57.875685+00	2021-11-26 15:40:57.875693+00	3	9820	115
3589	\N	\N	\N	f	2021-11-26 15:40:57.880463+00	2021-11-26 15:40:57.88047+00	3	9821	115
3590	\N	\N	\N	f	2021-11-26 15:40:57.885785+00	2021-11-26 15:40:57.885796+00	3	9822	115
3591	\N	\N	\N	f	2021-11-26 15:40:57.892796+00	2021-11-26 15:40:57.892806+00	3	9823	115
3592	\N	\N	\N	f	2021-11-26 15:40:57.897233+00	2021-11-26 15:40:57.89724+00	3	9843	115
3593	\N	\N	\N	f	2021-11-26 15:40:57.901714+00	2021-11-26 15:40:57.901721+00	3	9842	115
3594	\N	\N	\N	f	2021-11-26 15:40:57.906587+00	2021-11-26 15:40:57.906596+00	3	9841	115
3595	\N	\N	\N	f	2021-11-26 15:40:57.911472+00	2021-11-26 15:40:57.91148+00	3	9840	115
3596	\N	\N	\N	f	2021-11-26 15:40:57.916303+00	2021-11-26 15:40:57.916311+00	3	9839	115
3597	\N	\N	\N	f	2021-11-26 15:40:57.921047+00	2021-11-26 15:40:57.921058+00	3	9838	115
3598	\N	\N	\N	f	2021-11-26 15:40:57.926124+00	2021-11-26 15:40:57.926133+00	3	9837	115
3599	\N	\N	\N	f	2021-11-26 15:40:57.930694+00	2021-11-26 15:40:57.930701+00	3	9836	115
3600	\N	\N	\N	f	2021-11-26 15:40:57.935151+00	2021-11-26 15:40:57.935158+00	3	9835	115
3601	\N	\N	\N	f	2021-11-26 15:40:57.939881+00	2021-11-26 15:40:57.93989+00	3	9834	115
3602	\N	\N	\N	f	2021-11-26 15:40:57.945999+00	2021-11-26 15:40:57.946012+00	3	9833	115
3603	\N	\N	\N	f	2021-11-26 15:40:57.951282+00	2021-11-26 15:40:57.951291+00	3	9832	115
3604	\N	\N	\N	f	2021-11-26 15:40:57.956221+00	2021-11-26 15:40:57.95623+00	3	9831	115
3605	\N	\N	\N	f	2021-11-26 15:40:57.961232+00	2021-11-26 15:40:57.961241+00	3	9830	115
3606	\N	\N	\N	f	2021-11-26 15:40:57.965708+00	2021-11-26 15:40:57.965715+00	3	9829	115
3607	\N	\N	\N	f	2021-11-26 15:40:57.970159+00	2021-11-26 15:40:57.970167+00	3	9828	115
3608	\N	\N	\N	f	2021-11-26 15:40:57.974499+00	2021-11-26 15:40:57.974505+00	3	9827	115
3609	\N	\N	\N	f	2021-11-26 15:40:57.979512+00	2021-11-26 15:40:57.979519+00	3	9826	115
3610	\N	\N	\N	f	2021-11-26 15:40:57.984475+00	2021-11-26 15:40:57.984482+00	3	9825	115
3611	\N	\N	\N	f	2021-11-26 15:40:57.990057+00	2021-11-26 15:40:57.990066+00	3	9824	115
3612	\N	\N	\N	f	2021-11-26 15:40:57.995247+00	2021-11-26 15:40:57.995255+00	3	9844	115
3613	\N	\N	\N	f	2021-11-26 15:40:58.000068+00	2021-11-26 15:40:58.000075+00	3	9845	115
3614	\N	\N	\N	f	2021-11-26 15:40:58.005743+00	2021-11-26 15:40:58.005752+00	3	9846	115
3615	\N	\N	\N	f	2021-11-26 15:40:58.011267+00	2021-11-26 15:40:58.011277+00	3	9847	115
3616	\N	\N	\N	f	2021-11-26 15:40:58.016691+00	2021-11-26 15:40:58.0167+00	3	9848	115
3617	\N	\N	\N	f	2021-11-26 15:40:58.021814+00	2021-11-26 15:40:58.021822+00	3	9849	115
3618	\N	\N	\N	f	2021-11-26 15:40:58.026489+00	2021-11-26 15:40:58.026497+00	3	9850	115
3619	\N	\N	\N	f	2021-11-26 15:40:58.030898+00	2021-11-26 15:40:58.030904+00	3	9851	115
3620	\N	\N	\N	f	2021-11-26 15:40:58.035309+00	2021-11-26 15:40:58.035339+00	3	9852	115
3621	\N	\N	\N	f	2021-11-26 15:40:58.040206+00	2021-11-26 15:40:58.040216+00	3	9853	115
3622	\N	\N	\N	f	2021-11-26 15:40:58.045124+00	2021-11-26 15:40:58.045134+00	3	9854	115
3623	\N	\N	\N	f	2021-11-26 15:40:58.050038+00	2021-11-26 15:40:58.050046+00	3	9855	115
3624	\N	\N	\N	f	2021-11-26 15:40:58.054778+00	2021-11-26 15:40:58.054787+00	3	9856	115
3625	\N	\N	\N	f	2021-11-26 15:40:58.059331+00	2021-11-26 15:40:58.059338+00	3	9857	115
3626	\N	\N	\N	f	2021-11-26 15:40:58.064056+00	2021-11-26 15:40:58.064062+00	3	9858	115
3627	\N	\N	\N	f	2021-11-26 15:40:58.069848+00	2021-11-26 15:40:58.069858+00	3	9859	115
3628	\N	\N	\N	f	2021-11-26 15:40:58.075021+00	2021-11-26 15:40:58.075031+00	3	9860	115
3629	\N	\N	\N	f	2021-11-26 15:40:58.079688+00	2021-11-26 15:40:58.079695+00	3	9861	115
3630	\N	\N	\N	f	2021-11-26 15:40:58.084414+00	2021-11-26 15:40:58.084422+00	3	9862	115
3631	\N	\N	\N	f	2021-11-26 15:40:58.088998+00	2021-11-26 15:40:58.089006+00	3	9863	115
3632	\N	\N	\N	f	2021-11-26 15:40:58.09365+00	2021-11-26 15:40:58.093656+00	3	9883	115
3633	\N	\N	\N	f	2021-11-26 15:40:58.098245+00	2021-11-26 15:40:58.098252+00	3	9882	115
3634	\N	\N	\N	f	2021-11-26 15:40:58.103243+00	2021-11-26 15:40:58.103251+00	3	9881	115
3635	\N	\N	\N	f	2021-11-26 15:40:58.108879+00	2021-11-26 15:40:58.108889+00	3	9880	115
3636	\N	\N	\N	f	2021-11-26 15:40:58.113858+00	2021-11-26 15:40:58.113865+00	3	9879	115
3637	\N	\N	\N	f	2021-11-26 15:40:58.118463+00	2021-11-26 15:40:58.118471+00	3	9878	115
3638	\N	\N	\N	f	2021-11-26 15:40:58.123619+00	2021-11-26 15:40:58.123629+00	3	9877	115
3639	\N	\N	\N	f	2021-11-26 15:40:58.128474+00	2021-11-26 15:40:58.128485+00	3	9876	115
3640	\N	\N	\N	f	2021-11-26 15:40:58.133514+00	2021-11-26 15:40:58.133523+00	3	9875	115
3641	\N	\N	\N	f	2021-11-26 15:40:58.138136+00	2021-11-26 15:40:58.138145+00	3	9874	115
3642	\N	\N	\N	f	2021-11-26 15:40:58.143899+00	2021-11-26 15:40:58.143908+00	3	9873	115
3643	\N	\N	\N	f	2021-11-26 15:40:58.148752+00	2021-11-26 15:40:58.14876+00	3	9872	115
3644	\N	\N	\N	f	2021-11-26 15:40:58.153665+00	2021-11-26 15:40:58.153674+00	3	9871	115
3645	\N	\N	\N	f	2021-11-26 15:40:58.158306+00	2021-11-26 15:40:58.158315+00	3	9870	115
3646	\N	\N	\N	f	2021-11-26 15:40:58.163265+00	2021-11-26 15:40:58.163273+00	3	9869	115
3647	\N	\N	\N	f	2021-11-26 15:40:58.167845+00	2021-11-26 15:40:58.167853+00	3	9868	115
3648	\N	\N	\N	f	2021-11-26 15:40:58.17268+00	2021-11-26 15:40:58.17269+00	3	9867	115
3649	\N	\N	\N	f	2021-11-26 15:40:58.177518+00	2021-11-26 15:40:58.177527+00	3	9866	115
3650	\N	\N	\N	f	2021-11-26 15:40:58.182176+00	2021-11-26 15:40:58.182183+00	3	9865	115
3651	\N	\N	\N	f	2021-11-26 15:40:58.18706+00	2021-11-26 15:40:58.187069+00	3	9864	115
3652	\N	\N	\N	f	2021-11-26 15:40:58.192568+00	2021-11-26 15:40:58.192578+00	3	9884	115
3653	\N	\N	\N	f	2021-11-26 15:40:58.197145+00	2021-11-26 15:40:58.197153+00	3	9885	115
3654	\N	\N	\N	f	2021-11-26 15:40:58.201706+00	2021-11-26 15:40:58.201713+00	3	9886	115
3655	\N	\N	\N	f	2021-11-26 15:40:58.207115+00	2021-11-26 15:40:58.207125+00	3	9887	115
3656	\N	\N	\N	f	2021-11-26 15:40:58.211931+00	2021-11-26 15:40:58.21194+00	3	9888	115
3657	\N	\N	\N	f	2021-11-26 15:40:58.216475+00	2021-11-26 15:40:58.216482+00	3	9889	115
3658	\N	\N	\N	f	2021-11-26 15:40:58.221376+00	2021-11-26 15:40:58.221386+00	3	9890	115
3659	\N	\N	\N	f	2021-11-26 15:40:58.226308+00	2021-11-26 15:40:58.226317+00	3	9891	115
3660	\N	\N	\N	f	2021-11-26 15:40:58.230865+00	2021-11-26 15:40:58.230873+00	3	9892	115
3661	\N	\N	\N	f	2021-11-26 15:40:58.235217+00	2021-11-26 15:40:58.235223+00	3	9893	115
3662	\N	\N	\N	f	2021-11-26 15:40:58.239936+00	2021-11-26 15:40:58.239944+00	3	9894	115
3663	\N	\N	\N	f	2021-11-26 15:40:58.244429+00	2021-11-26 15:40:58.244435+00	3	9895	115
3664	\N	\N	\N	f	2021-11-26 15:40:58.248957+00	2021-11-26 15:40:58.248965+00	3	9896	115
3665	\N	\N	\N	f	2021-11-26 15:40:58.25375+00	2021-11-26 15:40:58.253761+00	3	9897	115
3666	\N	\N	\N	f	2021-11-26 15:40:58.259411+00	2021-11-26 15:40:58.259421+00	3	9898	115
3667	\N	\N	\N	f	2021-11-26 15:40:58.264521+00	2021-11-26 15:40:58.264529+00	3	9899	115
3668	\N	\N	\N	f	2021-11-26 15:40:58.273699+00	2021-11-26 15:40:58.273707+00	3	9900	115
3669	\N	\N	\N	f	2021-11-26 15:40:58.278272+00	2021-11-26 15:40:58.278279+00	3	9901	115
3670	\N	\N	\N	f	2021-11-26 15:40:58.283018+00	2021-11-26 15:40:58.283027+00	3	9902	115
3671	\N	\N	\N	f	2021-11-26 15:40:58.288229+00	2021-11-26 15:40:58.288238+00	3	9903	115
3672	\N	\N	\N	f	2021-11-26 15:40:58.292901+00	2021-11-26 15:40:58.29291+00	3	9923	115
3673	\N	\N	\N	f	2021-11-26 15:40:58.297559+00	2021-11-26 15:40:58.297568+00	3	9922	115
3674	\N	\N	\N	f	2021-11-26 15:40:58.301978+00	2021-11-26 15:40:58.30199+00	3	9921	115
3675	\N	\N	\N	f	2021-11-26 15:40:58.306647+00	2021-11-26 15:40:58.306656+00	3	9920	115
3676	\N	\N	\N	f	2021-11-26 15:40:58.311301+00	2021-11-26 15:40:58.311309+00	3	9919	115
3677	\N	\N	\N	f	2021-11-26 15:40:58.319183+00	2021-11-26 15:40:58.319194+00	3	9918	115
3678	\N	\N	\N	f	2021-11-26 15:40:58.325839+00	2021-11-26 15:40:58.325848+00	3	9917	115
3679	\N	\N	\N	f	2021-11-26 15:40:58.332156+00	2021-11-26 15:40:58.332163+00	3	9916	115
3680	\N	\N	\N	f	2021-11-26 15:40:58.340368+00	2021-11-26 15:40:58.340379+00	3	9915	115
3681	\N	\N	\N	f	2021-11-26 15:40:58.346356+00	2021-11-26 15:40:58.346366+00	3	9914	115
3682	\N	\N	\N	f	2021-11-26 15:40:58.351371+00	2021-11-26 15:40:58.351383+00	3	9913	115
3683	\N	\N	\N	f	2021-11-26 15:40:58.378014+00	2021-11-26 15:40:58.378023+00	3	9912	115
3684	\N	\N	\N	f	2021-11-26 15:40:58.384813+00	2021-11-26 15:40:58.384822+00	3	9911	115
3685	\N	\N	\N	f	2021-11-26 15:41:18.95076+00	2021-11-26 15:41:18.950769+00	3	9910	116
3686	\N	\N	\N	f	2021-11-26 15:41:18.961048+00	2021-11-26 15:41:18.961067+00	3	9909	116
3687	\N	\N	\N	f	2021-11-26 15:41:18.972362+00	2021-11-26 15:41:18.972372+00	3	9908	117
3688	\N	\N	\N	f	2021-11-26 15:41:18.980009+00	2021-11-26 15:41:18.980018+00	3	9907	117
3689	\N	\N	\N	f	2021-11-26 15:41:18.985504+00	2021-11-26 15:41:18.985512+00	3	9906	117
3690	\N	\N	\N	f	2021-11-26 15:41:18.991127+00	2021-11-26 15:41:18.991137+00	3	9905	117
3691	\N	\N	\N	f	2021-11-26 15:41:18.999926+00	2021-11-26 15:41:18.999935+00	3	9904	118
3692	\N	\N	\N	f	2021-11-26 15:41:19.004684+00	2021-11-26 15:41:19.004693+00	3	9924	118
3693	\N	\N	\N	f	2021-11-26 15:41:19.008986+00	2021-11-26 15:41:19.008993+00	3	9925	118
3694	\N	\N	\N	f	2021-11-26 15:41:19.01381+00	2021-11-26 15:41:19.013822+00	3	9926	118
3695	\N	\N	\N	f	2021-11-26 15:41:19.022877+00	2021-11-26 15:41:19.022889+00	3	9927	118
3696	\N	\N	\N	f	2021-11-26 15:41:19.048435+00	2021-11-26 15:41:19.048446+00	3	9928	119
3697	\N	\N	\N	f	2021-11-26 15:41:19.062282+00	2021-11-26 15:41:19.062292+00	3	9929	119
3698	\N	\N	\N	f	2021-11-26 15:41:19.068217+00	2021-11-26 15:41:19.068225+00	3	9930	119
3699	\N	\N	\N	f	2021-11-26 15:41:19.074175+00	2021-11-26 15:41:19.074184+00	3	9931	119
3700	\N	\N	\N	f	2021-11-26 15:41:19.080222+00	2021-11-26 15:41:19.08023+00	3	9932	119
3701	\N	\N	\N	f	2021-11-26 15:41:19.086102+00	2021-11-26 15:41:19.086115+00	3	9933	119
3702	\N	\N	\N	f	2021-11-26 15:41:19.092245+00	2021-11-26 15:41:19.092254+00	3	9934	119
3703	\N	\N	\N	f	2021-11-26 15:41:19.098249+00	2021-11-26 15:41:19.098258+00	3	9935	119
3704	\N	\N	\N	f	2021-11-26 15:41:19.103882+00	2021-11-26 15:41:19.103891+00	3	9936	119
3705	\N	\N	\N	f	2021-11-26 15:41:19.110079+00	2021-11-26 15:41:19.11009+00	3	9937	119
3706	\N	\N	\N	f	2021-11-26 15:41:19.116535+00	2021-11-26 15:41:19.116543+00	3	9938	119
3707	\N	\N	\N	f	2021-11-26 15:41:19.122427+00	2021-11-26 15:41:19.122437+00	3	9939	119
3708	\N	\N	\N	f	2021-11-26 15:41:19.127947+00	2021-11-26 15:41:19.127955+00	3	9940	119
3709	\N	\N	\N	f	2021-11-26 15:41:19.133358+00	2021-11-26 15:41:19.133367+00	3	9941	119
3710	\N	\N	\N	f	2021-11-26 15:41:19.139318+00	2021-11-26 15:41:19.139328+00	3	9942	119
3711	\N	\N	\N	f	2021-11-26 15:41:19.145167+00	2021-11-26 15:41:19.145175+00	3	9943	119
3712	\N	\N	\N	f	2021-11-26 15:41:19.150684+00	2021-11-26 15:41:19.150692+00	3	9963	119
3713	\N	\N	\N	f	2021-11-26 15:41:19.156451+00	2021-11-26 15:41:19.15646+00	3	9962	119
3714	\N	\N	\N	f	2021-11-26 15:41:19.162057+00	2021-11-26 15:41:19.162065+00	3	9961	119
3715	\N	\N	\N	f	2021-11-26 15:41:19.16758+00	2021-11-26 15:41:19.167588+00	3	9960	119
3716	\N	\N	\N	f	2021-11-26 15:41:19.173662+00	2021-11-26 15:41:19.173671+00	3	9959	119
3717	\N	\N	\N	f	2021-11-26 15:41:19.179224+00	2021-11-26 15:41:19.179233+00	3	9958	119
3718	\N	\N	\N	f	2021-11-26 15:41:19.184841+00	2021-11-26 15:41:19.184849+00	3	9957	119
3719	\N	\N	\N	f	2021-11-26 15:41:19.19043+00	2021-11-26 15:41:19.190439+00	3	9956	119
3720	\N	\N	\N	f	2021-11-26 15:41:19.195906+00	2021-11-26 15:41:19.195914+00	3	9955	119
3721	\N	\N	\N	f	2021-11-26 15:41:19.201866+00	2021-11-26 15:41:19.201876+00	3	9954	119
3722	\N	\N	\N	f	2021-11-26 15:41:19.208969+00	2021-11-26 15:41:19.208979+00	3	9953	119
3723	\N	\N	\N	f	2021-11-26 15:41:19.21464+00	2021-11-26 15:41:19.21465+00	3	9952	119
3724	\N	\N	\N	f	2021-11-26 15:41:19.22072+00	2021-11-26 15:41:19.22073+00	3	9951	119
3725	\N	\N	\N	f	2021-11-26 15:41:19.226759+00	2021-11-26 15:41:19.226768+00	3	9950	119
3726	\N	\N	\N	f	2021-11-26 15:41:19.233397+00	2021-11-26 15:41:19.233406+00	3	9949	119
3727	\N	\N	\N	f	2021-11-26 15:41:19.239436+00	2021-11-26 15:41:19.239446+00	3	9948	119
3728	\N	\N	\N	f	2021-11-26 15:41:19.245224+00	2021-11-26 15:41:19.245233+00	3	9947	119
3729	\N	\N	\N	f	2021-11-26 15:41:19.250791+00	2021-11-26 15:41:19.250799+00	3	9946	119
3730	\N	\N	\N	f	2021-11-26 15:41:19.256466+00	2021-11-26 15:41:19.256475+00	3	9945	119
3731	\N	\N	\N	f	2021-11-26 15:41:19.262051+00	2021-11-26 15:41:19.26206+00	3	9944	119
3732	\N	\N	\N	f	2021-11-26 15:41:19.267856+00	2021-11-26 15:41:19.267865+00	3	9964	119
3733	\N	\N	\N	f	2021-11-26 15:41:19.273728+00	2021-11-26 15:41:19.273737+00	3	9965	119
3734	\N	\N	\N	f	2021-11-26 15:41:19.279499+00	2021-11-26 15:41:19.279508+00	3	9966	119
3735	\N	\N	\N	f	2021-11-26 15:41:19.285191+00	2021-11-26 15:41:19.2852+00	3	9967	119
3736	\N	\N	\N	f	2021-11-26 15:41:19.291004+00	2021-11-26 15:41:19.291013+00	3	9968	119
3737	\N	\N	\N	f	2021-11-26 15:41:19.296771+00	2021-11-26 15:41:19.296781+00	3	9969	119
3738	\N	\N	\N	f	2021-11-26 15:41:19.302313+00	2021-11-26 15:41:19.302322+00	3	9970	119
3739	\N	\N	\N	f	2021-11-26 15:41:19.308751+00	2021-11-26 15:41:19.308761+00	3	9971	119
3740	\N	\N	\N	f	2021-11-26 15:41:19.314307+00	2021-11-26 15:41:19.314316+00	3	9972	119
3741	\N	\N	\N	f	2021-11-26 15:41:19.319918+00	2021-11-26 15:41:19.319927+00	3	9973	119
3742	\N	\N	\N	f	2021-11-26 15:41:19.325771+00	2021-11-26 15:41:19.325782+00	3	9974	119
3743	\N	\N	\N	f	2021-11-26 15:41:19.331524+00	2021-11-26 15:41:19.331537+00	3	9975	119
3744	\N	\N	\N	f	2021-11-26 15:41:19.33702+00	2021-11-26 15:41:19.337029+00	3	9976	119
3745	\N	\N	\N	f	2021-11-26 15:41:19.342573+00	2021-11-26 15:41:19.342584+00	3	9977	119
3746	\N	\N	\N	f	2021-11-26 15:41:19.348255+00	2021-11-26 15:41:19.348263+00	3	9978	119
3747	\N	\N	\N	f	2021-11-26 15:41:19.354428+00	2021-11-26 15:41:19.354438+00	3	9979	119
3748	\N	\N	\N	f	2021-11-26 15:41:19.360321+00	2021-11-26 15:41:19.360331+00	3	9980	119
3749	\N	\N	\N	f	2021-11-26 15:41:19.365928+00	2021-11-26 15:41:19.365935+00	3	9981	119
3750	\N	\N	\N	f	2021-11-26 15:41:19.371637+00	2021-11-26 15:41:19.371646+00	3	9982	119
3751	\N	\N	\N	f	2021-11-26 15:41:19.37724+00	2021-11-26 15:41:19.377248+00	3	9983	119
3752	\N	\N	\N	f	2021-11-26 15:41:19.382661+00	2021-11-26 15:41:19.382668+00	3	9984	119
3753	\N	\N	\N	f	2021-11-26 15:41:19.388515+00	2021-11-26 15:41:19.388524+00	3	9985	119
3754	\N	\N	\N	f	2021-11-26 15:41:19.394231+00	2021-11-26 15:41:19.39424+00	3	9986	119
3755	\N	\N	\N	f	2021-11-26 15:41:19.399725+00	2021-11-26 15:41:19.399733+00	3	9987	119
3756	\N	\N	\N	f	2021-11-26 15:41:19.405371+00	2021-11-26 15:41:19.405379+00	3	9988	119
3757	\N	\N	\N	f	2021-11-26 15:41:19.410921+00	2021-11-26 15:41:19.410929+00	3	9989	119
3758	\N	\N	\N	f	2021-11-26 15:41:19.416365+00	2021-11-26 15:41:19.416374+00	3	9990	119
3759	\N	\N	\N	f	2021-11-26 15:41:19.422358+00	2021-11-26 15:41:19.422367+00	3	9991	119
3760	\N	\N	\N	f	2021-11-26 15:41:19.42818+00	2021-11-26 15:41:19.428191+00	3	9992	119
3761	\N	\N	\N	f	2021-11-26 15:41:19.433702+00	2021-11-26 15:41:19.43371+00	3	9993	119
3762	\N	\N	\N	f	2021-11-26 15:41:19.439432+00	2021-11-26 15:41:19.439442+00	3	10023	119
3763	\N	\N	\N	f	2021-11-26 15:41:19.445197+00	2021-11-26 15:41:19.445207+00	3	10022	119
3764	\N	\N	\N	f	2021-11-26 15:41:19.451282+00	2021-11-26 15:41:19.451292+00	3	10021	119
3765	\N	\N	\N	f	2021-11-26 15:41:19.456999+00	2021-11-26 15:41:19.457009+00	3	10020	119
3766	\N	\N	\N	f	2021-11-26 15:41:19.462543+00	2021-11-26 15:41:19.462552+00	3	10019	119
3767	\N	\N	\N	f	2021-11-26 15:41:19.468184+00	2021-11-26 15:41:19.468192+00	3	10018	119
3768	\N	\N	\N	f	2021-11-26 15:41:19.474099+00	2021-11-26 15:41:19.474109+00	3	10017	119
3769	\N	\N	\N	f	2021-11-26 15:41:19.479702+00	2021-11-26 15:41:19.47971+00	3	10016	119
3770	\N	\N	\N	f	2021-11-26 15:41:19.485531+00	2021-11-26 15:41:19.485541+00	3	10015	119
3771	\N	\N	\N	f	2021-11-26 15:41:19.491676+00	2021-11-26 15:41:19.491685+00	3	10014	119
3772	\N	\N	\N	f	2021-11-26 15:41:19.497657+00	2021-11-26 15:41:19.497666+00	3	10013	119
3773	\N	\N	\N	f	2021-11-26 15:41:19.503463+00	2021-11-26 15:41:19.503473+00	3	10012	119
3774	\N	\N	\N	f	2021-11-26 15:41:19.509835+00	2021-11-26 15:41:19.509845+00	3	10011	119
3775	\N	\N	\N	f	2021-11-26 15:41:19.516329+00	2021-11-26 15:41:19.516341+00	3	10010	119
3776	\N	\N	\N	f	2021-11-26 15:41:19.522552+00	2021-11-26 15:41:19.522562+00	3	10009	119
3777	\N	\N	\N	f	2021-11-26 15:41:19.52797+00	2021-11-26 15:41:19.527978+00	3	10008	119
3778	\N	\N	\N	f	2021-11-26 15:41:19.533614+00	2021-11-26 15:41:19.533622+00	3	10007	119
3779	\N	\N	\N	f	2021-11-26 15:41:19.540262+00	2021-11-26 15:41:19.540273+00	3	10006	119
3780	\N	\N	\N	f	2021-11-26 15:41:19.546324+00	2021-11-26 15:41:19.546333+00	3	10005	119
3781	\N	\N	\N	f	2021-11-26 15:41:19.552008+00	2021-11-26 15:41:19.552017+00	3	10004	119
3782	\N	\N	\N	f	2021-11-26 15:41:19.558361+00	2021-11-26 15:41:19.55837+00	3	10003	119
3783	\N	\N	\N	f	2021-11-26 15:41:19.564491+00	2021-11-26 15:41:19.5645+00	3	10002	119
3784	\N	\N	\N	f	2021-11-26 15:41:19.571256+00	2021-11-26 15:41:19.571265+00	3	10001	119
3785	\N	\N	\N	f	2021-11-26 15:41:19.577726+00	2021-11-26 15:41:19.577735+00	3	10000	119
3786	\N	\N	\N	f	2021-11-26 15:41:19.583817+00	2021-11-26 15:41:19.583826+00	3	9999	119
3787	\N	\N	\N	f	2021-11-26 15:41:19.589843+00	2021-11-26 15:41:19.589853+00	3	9998	119
3788	\N	\N	\N	f	2021-11-26 15:41:19.595312+00	2021-11-26 15:41:19.595319+00	3	9997	119
3789	\N	\N	\N	f	2021-11-26 15:41:19.601154+00	2021-11-26 15:41:19.601164+00	3	9996	119
3790	\N	\N	\N	f	2021-11-26 15:41:19.608812+00	2021-11-26 15:41:19.608821+00	3	9995	119
3791	\N	\N	\N	f	2021-11-26 15:41:19.614828+00	2021-11-26 15:41:19.614837+00	3	9994	119
3792	\N	\N	\N	f	2021-11-26 15:41:19.620542+00	2021-11-26 15:41:19.620552+00	3	10024	119
3793	\N	\N	\N	f	2021-11-26 15:41:19.626104+00	2021-11-26 15:41:19.626112+00	3	10025	119
3794	\N	\N	\N	f	2021-11-26 15:41:19.632002+00	2021-11-26 15:41:19.632012+00	3	10026	119
3795	\N	\N	\N	f	2021-11-26 15:41:19.637764+00	2021-11-26 15:41:19.637772+00	3	10027	119
3796	\N	\N	\N	f	2021-11-26 15:41:19.646508+00	2021-11-26 15:41:19.646517+00	3	10028	119
3797	\N	\N	\N	f	2021-11-26 15:41:19.652061+00	2021-11-26 15:41:19.652068+00	3	10029	119
3798	\N	\N	\N	f	2021-11-26 15:41:19.657665+00	2021-11-26 15:41:19.657673+00	3	10030	119
3799	\N	\N	\N	f	2021-11-26 15:41:19.663173+00	2021-11-26 15:41:19.663181+00	3	10031	119
3800	\N	\N	\N	f	2021-11-26 15:41:19.668655+00	2021-11-26 15:41:19.668663+00	3	10032	119
3801	\N	\N	\N	f	2021-11-26 15:41:19.67436+00	2021-11-26 15:41:19.674369+00	3	10033	119
3802	\N	\N	\N	f	2021-11-26 15:41:19.679914+00	2021-11-26 15:41:19.679924+00	3	10034	119
3803	\N	\N	\N	f	2021-11-26 15:41:19.685347+00	2021-11-26 15:41:19.685356+00	3	10035	119
3804	\N	\N	\N	f	2021-11-26 15:41:19.691322+00	2021-11-26 15:41:19.691332+00	3	10036	119
3805	\N	\N	\N	f	2021-11-26 15:41:19.697044+00	2021-11-26 15:41:19.697051+00	3	10037	119
3806	\N	\N	\N	f	2021-11-26 15:41:19.702816+00	2021-11-26 15:41:19.702825+00	3	10038	119
3807	\N	\N	\N	f	2021-11-26 15:41:19.708787+00	2021-11-26 15:41:19.708796+00	3	10039	119
3808	\N	\N	\N	f	2021-11-26 15:41:19.714414+00	2021-11-26 15:41:19.714422+00	3	10040	119
3809	\N	\N	\N	f	2021-11-26 15:41:19.720364+00	2021-11-26 15:41:19.720376+00	3	10041	119
3810	\N	\N	\N	f	2021-11-26 15:41:19.726455+00	2021-11-26 15:41:19.726465+00	3	10042	119
3811	\N	\N	\N	f	2021-11-26 15:41:19.732214+00	2021-11-26 15:41:19.732222+00	3	10043	119
3812	\N	\N	\N	f	2021-11-26 15:41:19.738105+00	2021-11-26 15:41:19.738114+00	3	10044	119
3813	\N	\N	\N	f	2021-11-26 15:41:19.7438+00	2021-11-26 15:41:19.743808+00	3	10045	119
3814	\N	\N	\N	f	2021-11-26 15:41:19.749395+00	2021-11-26 15:41:19.749402+00	3	10046	119
3815	\N	\N	\N	f	2021-11-26 15:41:19.755236+00	2021-11-26 15:41:19.755245+00	3	10047	119
3816	\N	\N	\N	f	2021-11-26 15:41:19.760929+00	2021-11-26 15:41:19.760939+00	3	10048	119
3817	\N	\N	\N	f	2021-11-26 15:41:19.766622+00	2021-11-26 15:41:19.766631+00	3	10049	119
3818	\N	\N	\N	f	2021-11-26 15:41:19.772157+00	2021-11-26 15:41:19.772166+00	3	10050	119
3819	\N	\N	\N	f	2021-11-26 15:41:19.777921+00	2021-11-26 15:41:19.77793+00	3	10051	119
3820	\N	\N	\N	f	2021-11-26 15:41:19.783883+00	2021-11-26 15:41:19.783892+00	3	10052	119
3821	\N	\N	\N	f	2021-11-26 15:41:19.79035+00	2021-11-26 15:41:19.790362+00	3	10053	119
3822	\N	\N	\N	f	2021-11-26 15:41:19.796247+00	2021-11-26 15:41:19.796256+00	3	10083	119
3823	\N	\N	\N	f	2021-11-26 15:41:19.80183+00	2021-11-26 15:41:19.801842+00	3	10082	119
3824	\N	\N	\N	f	2021-11-26 15:41:19.807182+00	2021-11-26 15:41:19.807191+00	3	10081	119
3825	\N	\N	\N	f	2021-11-26 15:41:19.81293+00	2021-11-26 15:41:19.812939+00	3	10080	119
3826	\N	\N	\N	f	2021-11-26 15:41:19.81865+00	2021-11-26 15:41:19.818663+00	3	10079	119
3827	\N	\N	\N	f	2021-11-26 15:41:19.824287+00	2021-11-26 15:41:19.824296+00	3	10078	119
3828	\N	\N	\N	f	2021-11-26 15:41:19.829764+00	2021-11-26 15:41:19.829772+00	3	10077	119
3829	\N	\N	\N	f	2021-11-26 15:41:19.835192+00	2021-11-26 15:41:19.835199+00	3	10076	119
3830	\N	\N	\N	f	2021-11-26 15:41:19.840822+00	2021-11-26 15:41:19.84083+00	3	10075	119
3831	\N	\N	\N	f	2021-11-26 15:41:19.846258+00	2021-11-26 15:41:19.846267+00	3	10074	119
3832	\N	\N	\N	f	2021-11-26 15:41:19.85167+00	2021-11-26 15:41:19.851678+00	3	10073	119
3833	\N	\N	\N	f	2021-11-26 15:41:19.85759+00	2021-11-26 15:41:19.857601+00	3	10072	119
3834	\N	\N	\N	f	2021-11-26 15:41:19.863132+00	2021-11-26 15:41:19.863141+00	3	10071	119
3835	\N	\N	\N	f	2021-11-26 15:41:19.869059+00	2021-11-26 15:41:19.869068+00	3	10070	119
3836	\N	\N	\N	f	2021-11-26 15:41:19.875246+00	2021-11-26 15:41:19.875255+00	3	10069	119
3837	\N	\N	\N	f	2021-11-26 15:41:19.88081+00	2021-11-26 15:41:19.880819+00	3	10068	119
3838	\N	\N	\N	f	2021-11-26 15:41:19.886353+00	2021-11-26 15:41:19.886362+00	3	10067	119
3839	\N	\N	\N	f	2021-11-26 15:41:19.892+00	2021-11-26 15:41:19.89201+00	3	10066	119
3840	\N	\N	\N	f	2021-11-26 15:41:19.897479+00	2021-11-26 15:41:19.897487+00	3	10065	119
3841	\N	\N	\N	f	2021-11-26 15:41:19.903119+00	2021-11-26 15:41:19.903128+00	3	10064	119
3842	\N	\N	\N	f	2021-11-26 15:41:19.909352+00	2021-11-26 15:41:19.909365+00	3	10063	119
3843	\N	\N	\N	f	2021-11-26 15:41:19.915303+00	2021-11-26 15:41:19.915311+00	3	10062	119
3844	\N	\N	\N	f	2021-11-26 15:41:19.921703+00	2021-11-26 15:41:19.921713+00	3	10061	119
3845	\N	\N	\N	f	2021-11-26 15:41:19.927697+00	2021-11-26 15:41:19.927706+00	3	10060	119
3846	\N	\N	\N	f	2021-11-26 15:41:19.933374+00	2021-11-26 15:41:19.933381+00	3	10059	119
3847	\N	\N	\N	f	2021-11-26 15:41:19.939834+00	2021-11-26 15:41:19.939843+00	3	10058	119
3848	\N	\N	\N	f	2021-11-26 15:41:19.945717+00	2021-11-26 15:41:19.945726+00	3	10057	119
3849	\N	\N	\N	f	2021-11-26 15:41:19.951143+00	2021-11-26 15:41:19.951152+00	3	10056	119
3850	\N	\N	\N	f	2021-11-26 15:41:19.956733+00	2021-11-26 15:41:19.956742+00	3	10055	119
3851	\N	\N	\N	f	2021-11-26 15:41:19.962143+00	2021-11-26 15:41:19.96215+00	3	10054	119
3852	\N	\N	\N	f	2021-11-26 15:41:19.968045+00	2021-11-26 15:41:19.968055+00	3	10084	119
3853	\N	\N	\N	f	2021-11-26 15:41:19.97384+00	2021-11-26 15:41:19.97385+00	3	10085	119
3854	\N	\N	\N	f	2021-11-26 15:41:19.97964+00	2021-11-26 15:41:19.979649+00	3	10086	119
3855	\N	\N	\N	f	2021-11-26 15:41:19.985295+00	2021-11-26 15:41:19.985303+00	3	10087	119
3856	\N	\N	\N	f	2021-11-26 15:41:19.99095+00	2021-11-26 15:41:19.990958+00	3	10088	119
3857	\N	\N	\N	f	2021-11-26 15:41:19.996614+00	2021-11-26 15:41:19.996622+00	3	10089	119
3858	\N	\N	\N	f	2021-11-26 15:41:20.002253+00	2021-11-26 15:41:20.002261+00	3	10090	119
3859	\N	\N	\N	f	2021-11-26 15:41:20.007934+00	2021-11-26 15:41:20.007944+00	3	10091	119
3860	\N	\N	\N	f	2021-11-26 15:41:20.013502+00	2021-11-26 15:41:20.01351+00	3	10092	119
3861	\N	\N	\N	f	2021-11-26 15:41:20.019202+00	2021-11-26 15:41:20.019212+00	3	10093	119
3862	\N	\N	\N	f	2021-11-26 15:41:20.025307+00	2021-11-26 15:41:20.02532+00	3	10094	119
3863	\N	\N	\N	f	2021-11-26 15:41:20.031341+00	2021-11-26 15:41:20.03135+00	3	10095	119
3864	\N	\N	\N	f	2021-11-26 15:41:20.036969+00	2021-11-26 15:41:20.036979+00	3	10096	119
3865	\N	\N	\N	f	2021-11-26 15:41:20.042573+00	2021-11-26 15:41:20.042582+00	3	10097	119
3866	\N	\N	\N	f	2021-11-26 15:41:20.047977+00	2021-11-26 15:41:20.047985+00	3	10098	119
3867	\N	\N	\N	f	2021-11-26 15:41:20.053821+00	2021-11-26 15:41:20.053832+00	3	10099	119
3868	\N	\N	\N	f	2021-11-26 15:41:20.059847+00	2021-11-26 15:41:20.059857+00	3	10100	119
3869	\N	\N	\N	f	2021-11-26 15:41:20.06593+00	2021-11-26 15:41:20.065939+00	3	10101	119
3870	\N	\N	\N	f	2021-11-26 15:41:20.071888+00	2021-11-26 15:41:20.071898+00	3	10102	119
3871	\N	\N	\N	f	2021-11-26 15:41:20.077884+00	2021-11-26 15:41:20.077893+00	3	10103	119
3872	\N	\N	\N	f	2021-11-26 15:41:20.083789+00	2021-11-26 15:41:20.083796+00	3	10104	119
3873	\N	\N	\N	f	2021-11-26 15:41:20.089746+00	2021-11-26 15:41:20.089756+00	3	10105	119
3874	\N	\N	\N	f	2021-11-26 15:41:20.095659+00	2021-11-26 15:41:20.095669+00	3	10106	119
3875	\N	\N	\N	f	2021-11-26 15:41:20.101139+00	2021-11-26 15:41:20.101148+00	3	10107	119
3876	\N	\N	\N	f	2021-11-26 15:41:20.106799+00	2021-11-26 15:41:20.106808+00	3	10108	119
3877	\N	\N	\N	f	2021-11-26 15:41:20.112111+00	2021-11-26 15:41:20.112118+00	3	10109	119
3878	\N	\N	\N	f	2021-11-26 15:41:20.117743+00	2021-11-26 15:41:20.117755+00	3	10110	119
3879	\N	\N	\N	f	2021-11-26 15:41:20.123725+00	2021-11-26 15:41:20.123735+00	3	10111	119
3880	\N	\N	\N	f	2021-11-26 15:41:20.129458+00	2021-11-26 15:41:20.129467+00	3	10112	119
3881	\N	\N	\N	f	2021-11-26 15:41:20.135223+00	2021-11-26 15:41:20.135233+00	3	10113	119
3882	\N	\N	\N	f	2021-11-26 15:41:20.141158+00	2021-11-26 15:41:20.141167+00	3	10143	119
3883	\N	\N	\N	f	2021-11-26 15:41:20.146937+00	2021-11-26 15:41:20.146946+00	3	10142	119
3884	\N	\N	\N	f	2021-11-26 15:41:20.152603+00	2021-11-26 15:41:20.152612+00	3	10141	119
3885	\N	\N	\N	f	2021-11-26 15:41:20.159066+00	2021-11-26 15:41:20.159075+00	3	10140	119
3886	\N	\N	\N	f	2021-11-26 15:41:20.16551+00	2021-11-26 15:41:20.165518+00	3	10139	119
3887	\N	\N	\N	f	2021-11-26 15:41:20.171183+00	2021-11-26 15:41:20.171193+00	3	10138	119
3888	\N	\N	\N	f	2021-11-26 15:41:20.176955+00	2021-11-26 15:41:20.176963+00	3	10137	119
3889	\N	\N	\N	f	2021-11-26 15:41:20.182975+00	2021-11-26 15:41:20.182984+00	3	10136	119
3890	\N	\N	\N	f	2021-11-26 15:41:20.189008+00	2021-11-26 15:41:20.189018+00	3	10135	119
3891	\N	\N	\N	f	2021-11-26 15:41:20.194937+00	2021-11-26 15:41:20.194946+00	3	10134	119
3892	\N	\N	\N	f	2021-11-26 15:41:20.200658+00	2021-11-26 15:41:20.200666+00	3	10133	119
3893	\N	\N	\N	f	2021-11-26 15:41:20.206503+00	2021-11-26 15:41:20.206512+00	3	10132	119
3894	\N	\N	\N	f	2021-11-26 15:41:20.235207+00	2021-11-26 15:41:20.23522+00	3	10131	119
3895	\N	\N	\N	f	2021-11-26 15:41:20.24285+00	2021-11-26 15:41:20.242862+00	3	10130	119
3896	\N	\N	\N	f	2021-11-26 15:41:20.249798+00	2021-11-26 15:41:20.249809+00	3	10129	119
3897	\N	\N	\N	f	2021-11-26 15:41:20.256265+00	2021-11-26 15:41:20.256276+00	3	10128	119
3898	\N	\N	\N	f	2021-11-26 15:41:20.26248+00	2021-11-26 15:41:20.262489+00	3	10127	119
3899	\N	\N	\N	f	2021-11-26 15:41:20.268542+00	2021-11-26 15:41:20.268551+00	3	10126	119
3900	\N	\N	\N	f	2021-11-26 15:41:20.27493+00	2021-11-26 15:41:20.27494+00	3	10125	119
3901	\N	\N	\N	f	2021-11-26 15:41:20.281121+00	2021-11-26 15:41:20.28113+00	3	10124	119
3902	\N	\N	\N	f	2021-11-26 15:41:20.287311+00	2021-11-26 15:41:20.28732+00	3	10123	119
3903	\N	\N	\N	f	2021-11-26 15:41:20.293253+00	2021-11-26 15:41:20.29326+00	3	10122	119
3904	\N	\N	\N	f	2021-11-26 15:41:20.299143+00	2021-11-26 15:41:20.299151+00	3	10121	119
3905	\N	\N	\N	f	2021-11-26 15:41:20.305604+00	2021-11-26 15:41:20.305616+00	3	10120	119
3906	\N	\N	\N	f	2021-11-26 15:41:20.311651+00	2021-11-26 15:41:20.31166+00	3	10119	119
3907	\N	\N	\N	f	2021-11-26 15:41:20.317359+00	2021-11-26 15:41:20.317367+00	3	10118	119
3908	\N	\N	\N	f	2021-11-26 15:41:20.322955+00	2021-11-26 15:41:20.322963+00	3	10117	119
3909	\N	\N	\N	f	2021-11-26 15:41:20.328553+00	2021-11-26 15:41:20.328562+00	3	10116	119
3910	\N	\N	\N	f	2021-11-26 15:41:20.334108+00	2021-11-26 15:41:20.334118+00	3	10115	119
3911	\N	\N	\N	f	2021-11-26 15:41:20.340102+00	2021-11-26 15:41:20.340112+00	3	10114	119
3912	\N	\N	\N	f	2021-11-26 15:41:20.345719+00	2021-11-26 15:41:20.345728+00	3	10144	119
3913	\N	\N	\N	f	2021-11-26 15:41:20.351212+00	2021-11-26 15:41:20.351219+00	3	10145	119
3914	\N	\N	\N	f	2021-11-26 15:41:20.356945+00	2021-11-26 15:41:20.356955+00	3	10146	119
3915	\N	\N	\N	f	2021-11-26 15:41:20.362718+00	2021-11-26 15:41:20.362728+00	3	10147	119
3916	\N	\N	\N	f	2021-11-26 15:41:20.368298+00	2021-11-26 15:41:20.368309+00	3	10148	119
3917	\N	\N	\N	f	2021-11-26 15:41:20.374088+00	2021-11-26 15:41:20.374097+00	3	10149	119
3918	\N	\N	\N	f	2021-11-26 15:41:20.379431+00	2021-11-26 15:41:20.379439+00	3	10150	119
3919	\N	\N	\N	f	2021-11-26 15:41:20.384923+00	2021-11-26 15:41:20.384932+00	3	10151	119
3920	\N	\N	\N	f	2021-11-26 15:41:20.394349+00	2021-11-26 15:41:20.394358+00	3	10152	119
3921	\N	\N	\N	f	2021-11-26 15:41:20.39986+00	2021-11-26 15:41:20.399868+00	3	10153	119
3922	\N	\N	\N	f	2021-11-26 15:41:20.405652+00	2021-11-26 15:41:20.405661+00	3	10154	119
3923	\N	\N	\N	f	2021-11-26 15:41:20.411253+00	2021-11-26 15:41:20.411262+00	3	10155	119
3924	\N	\N	\N	f	2021-11-26 15:41:20.417166+00	2021-11-26 15:41:20.417174+00	3	10156	119
3925	\N	\N	\N	f	2021-11-26 15:41:20.423214+00	2021-11-26 15:41:20.423223+00	3	10157	119
3926	\N	\N	\N	f	2021-11-26 15:41:20.428948+00	2021-11-26 15:41:20.428957+00	3	10158	119
3927	\N	\N	\N	f	2021-11-26 15:41:20.43441+00	2021-11-26 15:41:20.434418+00	3	10159	119
3928	\N	\N	\N	f	2021-11-26 15:41:20.439925+00	2021-11-26 15:41:20.439934+00	3	10160	119
3929	\N	\N	\N	f	2021-11-26 15:41:20.445359+00	2021-11-26 15:41:20.445367+00	3	10161	119
3930	\N	\N	\N	f	2021-11-26 15:41:20.45073+00	2021-11-26 15:41:20.450738+00	3	10162	119
3931	\N	\N	\N	f	2021-11-26 15:41:20.456314+00	2021-11-26 15:41:20.456324+00	3	10163	119
3932	\N	\N	\N	f	2021-11-26 15:41:20.462116+00	2021-11-26 15:41:20.462125+00	3	10164	119
3933	\N	\N	\N	f	2021-11-26 15:41:20.467641+00	2021-11-26 15:41:20.467649+00	3	10165	119
3934	\N	\N	\N	f	2021-11-26 15:41:20.473288+00	2021-11-26 15:41:20.473297+00	3	10166	119
3935	\N	\N	\N	f	2021-11-26 15:41:20.478656+00	2021-11-26 15:41:20.478663+00	3	10167	119
3936	\N	\N	\N	f	2021-11-26 15:41:20.484164+00	2021-11-26 15:41:20.484172+00	3	10168	119
3937	\N	\N	\N	f	2021-11-26 15:41:20.49028+00	2021-11-26 15:41:20.490291+00	3	10169	119
3938	\N	\N	\N	f	2021-11-26 15:41:20.49614+00	2021-11-26 15:41:20.49615+00	3	10170	119
3939	\N	\N	\N	f	2021-11-26 15:41:20.501663+00	2021-11-26 15:41:20.501672+00	3	10171	119
3940	\N	\N	\N	f	2021-11-26 15:41:20.507391+00	2021-11-26 15:41:20.5074+00	3	10172	119
3941	\N	\N	\N	f	2021-11-26 15:41:20.51278+00	2021-11-26 15:41:20.512787+00	3	10173	119
3942	\N	\N	\N	f	2021-11-26 15:41:20.51848+00	2021-11-26 15:41:20.518492+00	3	10203	119
3943	\N	\N	\N	f	2021-11-26 15:41:20.524165+00	2021-11-26 15:41:20.524174+00	3	10202	119
3944	\N	\N	\N	f	2021-11-26 15:41:20.529543+00	2021-11-26 15:41:20.529551+00	3	10201	119
3945	\N	\N	\N	f	2021-11-26 15:41:20.535168+00	2021-11-26 15:41:20.535175+00	3	10200	119
3946	\N	\N	\N	f	2021-11-26 15:41:20.540428+00	2021-11-26 15:41:20.540436+00	3	10199	119
3947	\N	\N	\N	f	2021-11-26 15:41:20.545746+00	2021-11-26 15:41:20.545755+00	3	10198	119
3948	\N	\N	\N	f	2021-11-26 15:41:20.554664+00	2021-11-26 15:41:20.554675+00	3	10197	119
3949	\N	\N	\N	f	2021-11-26 15:41:20.560294+00	2021-11-26 15:41:20.560303+00	3	10196	119
3950	\N	\N	\N	f	2021-11-26 15:41:20.565667+00	2021-11-26 15:41:20.565674+00	3	10195	119
3951	\N	\N	\N	f	2021-11-26 15:41:20.571266+00	2021-11-26 15:41:20.571274+00	3	10194	119
3952	\N	\N	\N	f	2021-11-26 15:41:20.577175+00	2021-11-26 15:41:20.577185+00	3	10193	119
3953	\N	\N	\N	f	2021-11-26 15:41:20.582645+00	2021-11-26 15:41:20.582654+00	3	10192	119
3954	\N	\N	\N	f	2021-11-26 15:41:20.588238+00	2021-11-26 15:41:20.588247+00	3	10191	119
3955	\N	\N	\N	f	2021-11-26 15:41:20.593838+00	2021-11-26 15:41:20.593847+00	3	10190	119
3956	\N	\N	\N	f	2021-11-26 15:41:20.599153+00	2021-11-26 15:41:20.59916+00	3	10189	119
3957	\N	\N	\N	f	2021-11-26 15:41:20.604827+00	2021-11-26 15:41:20.604836+00	3	10188	119
3958	\N	\N	\N	f	2021-11-26 15:41:20.610553+00	2021-11-26 15:41:20.610562+00	3	10187	119
3959	\N	\N	\N	f	2021-11-26 15:41:20.6159+00	2021-11-26 15:41:20.615908+00	3	10186	119
3960	\N	\N	\N	f	2021-11-26 15:41:20.621741+00	2021-11-26 15:41:20.62175+00	3	10185	119
3961	\N	\N	\N	f	2021-11-26 15:41:20.627453+00	2021-11-26 15:41:20.627462+00	3	10184	119
3962	\N	\N	\N	f	2021-11-26 15:41:20.633288+00	2021-11-26 15:41:20.633295+00	3	10183	119
3963	\N	\N	\N	f	2021-11-26 15:41:20.640046+00	2021-11-26 15:41:20.640056+00	3	10182	119
3964	\N	\N	\N	f	2021-11-26 15:41:20.6463+00	2021-11-26 15:41:20.646309+00	3	10181	119
3965	\N	\N	\N	f	2021-11-26 15:41:20.652297+00	2021-11-26 15:41:20.652306+00	3	10180	119
3966	\N	\N	\N	f	2021-11-26 15:41:20.658191+00	2021-11-26 15:41:20.6582+00	3	10179	119
3967	\N	\N	\N	f	2021-11-26 15:41:20.664194+00	2021-11-26 15:41:20.664201+00	3	10178	119
3968	\N	\N	\N	f	2021-11-26 15:41:20.671349+00	2021-11-26 15:41:20.67137+00	3	10177	119
3969	\N	\N	\N	f	2021-11-26 15:41:20.677609+00	2021-11-26 15:41:20.677618+00	3	10176	119
3970	\N	\N	\N	f	2021-11-26 15:41:20.683578+00	2021-11-26 15:41:20.683586+00	3	10175	119
3971	\N	\N	\N	f	2021-11-26 15:41:20.689487+00	2021-11-26 15:41:20.689495+00	3	10174	119
3972	\N	\N	\N	f	2021-11-26 15:41:20.695366+00	2021-11-26 15:41:20.695374+00	3	10204	119
3973	\N	\N	\N	f	2021-11-26 15:41:20.701097+00	2021-11-26 15:41:20.701105+00	3	10205	119
3974	\N	\N	\N	f	2021-11-26 15:41:20.707329+00	2021-11-26 15:41:20.707338+00	3	10206	119
3975	\N	\N	\N	f	2021-11-26 15:41:20.713342+00	2021-11-26 15:41:20.713351+00	3	10207	119
3976	\N	\N	\N	f	2021-11-26 15:41:20.719466+00	2021-11-26 15:41:20.719475+00	3	10208	119
3977	\N	\N	\N	f	2021-11-26 15:41:20.72528+00	2021-11-26 15:41:20.72529+00	3	10209	119
3978	\N	\N	\N	f	2021-11-26 15:41:20.731191+00	2021-11-26 15:41:20.7312+00	3	10210	119
3979	\N	\N	\N	f	2021-11-26 15:41:20.737099+00	2021-11-26 15:41:20.737108+00	3	10211	119
3980	\N	\N	\N	f	2021-11-26 15:41:20.74309+00	2021-11-26 15:41:20.7431+00	3	10212	119
3981	\N	\N	\N	f	2021-11-26 15:41:20.748807+00	2021-11-26 15:41:20.748816+00	3	10213	119
3982	\N	\N	\N	f	2021-11-26 15:41:20.755152+00	2021-11-26 15:41:20.75516+00	3	10214	119
3983	\N	\N	\N	f	2021-11-26 15:41:20.760857+00	2021-11-26 15:41:20.760866+00	3	10215	119
3984	\N	\N	\N	f	2021-11-26 15:41:20.766519+00	2021-11-26 15:41:20.766526+00	3	10216	119
3985	\N	\N	\N	f	2021-11-26 15:41:20.77226+00	2021-11-26 15:41:20.772271+00	3	10217	119
3986	\N	\N	\N	f	2021-11-26 15:41:20.778564+00	2021-11-26 15:41:20.778576+00	3	10218	119
3987	\N	\N	\N	f	2021-11-26 15:41:20.78437+00	2021-11-26 15:41:20.784379+00	3	10219	119
3988	\N	\N	\N	f	2021-11-26 15:41:20.790537+00	2021-11-26 15:41:20.790546+00	3	10220	119
3989	\N	\N	\N	f	2021-11-26 15:41:20.79719+00	2021-11-26 15:41:20.7972+00	3	10221	119
3990	\N	\N	\N	f	2021-11-26 15:41:20.803062+00	2021-11-26 15:41:20.803071+00	3	10222	119
3991	\N	\N	\N	f	2021-11-26 15:41:20.808732+00	2021-11-26 15:41:20.808741+00	3	10223	119
3992	\N	\N	\N	f	2021-11-26 15:41:20.814318+00	2021-11-26 15:41:20.814326+00	3	10224	119
3993	\N	\N	\N	f	2021-11-26 15:41:20.819862+00	2021-11-26 15:41:20.819873+00	3	10225	119
3994	\N	\N	\N	f	2021-11-26 15:41:20.82596+00	2021-11-26 15:41:20.82597+00	3	10226	119
3995	\N	\N	\N	f	2021-11-26 15:41:20.831507+00	2021-11-26 15:41:20.831515+00	3	10227	119
3996	\N	\N	\N	f	2021-11-26 15:41:20.83712+00	2021-11-26 15:41:20.837129+00	3	10228	119
3997	\N	\N	\N	f	2021-11-26 15:41:20.842653+00	2021-11-26 15:41:20.842661+00	3	10229	119
3998	\N	\N	\N	f	2021-11-26 15:41:20.848206+00	2021-11-26 15:41:20.848214+00	3	10230	119
3999	\N	\N	\N	f	2021-11-26 15:41:20.853708+00	2021-11-26 15:41:20.853724+00	3	10231	119
4000	\N	\N	\N	f	2021-11-26 15:41:20.860047+00	2021-11-26 15:41:20.860057+00	3	10232	119
4001	\N	\N	\N	f	2021-11-26 15:41:20.865538+00	2021-11-26 15:41:20.865546+00	3	10233	119
4002	\N	\N	\N	f	2021-11-26 15:41:20.871192+00	2021-11-26 15:41:20.871201+00	3	10263	119
4003	\N	\N	\N	f	2021-11-26 15:41:20.876724+00	2021-11-26 15:41:20.876731+00	3	10262	119
4004	\N	\N	\N	f	2021-11-26 15:41:20.882408+00	2021-11-26 15:41:20.882418+00	3	10261	119
4005	\N	\N	\N	f	2021-11-26 15:41:20.888247+00	2021-11-26 15:41:20.888256+00	3	10260	119
4006	\N	\N	\N	f	2021-11-26 15:41:20.893859+00	2021-11-26 15:41:20.893867+00	3	10259	119
4007	\N	\N	\N	f	2021-11-26 15:41:20.899328+00	2021-11-26 15:41:20.899336+00	3	10258	119
4008	\N	\N	\N	f	2021-11-26 15:41:20.904978+00	2021-11-26 15:41:20.904985+00	3	10257	119
4009	\N	\N	\N	f	2021-11-26 15:41:20.910359+00	2021-11-26 15:41:20.910367+00	3	10256	119
4010	\N	\N	\N	f	2021-11-26 15:41:20.915989+00	2021-11-26 15:41:20.915996+00	3	10255	119
4011	\N	\N	\N	f	2021-11-26 15:41:20.921824+00	2021-11-26 15:41:20.921835+00	3	10254	119
4012	\N	\N	\N	f	2021-11-26 15:41:20.927784+00	2021-11-26 15:41:20.927793+00	3	10253	119
4013	\N	\N	\N	f	2021-11-26 15:41:20.933542+00	2021-11-26 15:41:20.93355+00	3	10252	119
4014	\N	\N	\N	f	2021-11-26 15:41:20.939629+00	2021-11-26 15:41:20.939638+00	3	10251	119
4015	\N	\N	\N	f	2021-11-26 15:41:20.945744+00	2021-11-26 15:41:20.945754+00	3	10250	119
4016	\N	\N	\N	f	2021-11-26 15:41:20.95163+00	2021-11-26 15:41:20.951639+00	3	10249	119
4017	\N	\N	\N	f	2021-11-26 15:41:20.957512+00	2021-11-26 15:41:20.957521+00	3	10248	119
4018	\N	\N	\N	f	2021-11-26 15:41:20.963159+00	2021-11-26 15:41:20.963167+00	3	10247	119
4019	\N	\N	\N	f	2021-11-26 15:41:20.969048+00	2021-11-26 15:41:20.969059+00	3	10246	119
4020	\N	\N	\N	f	2021-11-26 15:41:20.97482+00	2021-11-26 15:41:20.974834+00	3	10245	119
4021	\N	\N	\N	f	2021-11-26 15:41:20.980926+00	2021-11-26 15:41:20.980933+00	3	10244	119
4022	\N	\N	\N	f	2021-11-26 15:41:20.986603+00	2021-11-26 15:41:20.986611+00	3	10243	119
4023	\N	\N	\N	f	2021-11-26 15:41:20.992926+00	2021-11-26 15:41:20.992935+00	3	10242	119
4024	\N	\N	\N	f	2021-11-26 15:41:20.998435+00	2021-11-26 15:41:20.998442+00	3	10241	119
4025	\N	\N	\N	f	2021-11-26 15:41:21.004687+00	2021-11-26 15:41:21.0047+00	3	10240	119
4026	\N	\N	\N	f	2021-11-26 15:41:21.0107+00	2021-11-26 15:41:21.01071+00	3	10239	119
4027	\N	\N	\N	f	2021-11-26 15:41:21.016223+00	2021-11-26 15:41:21.016231+00	3	10238	119
4028	\N	\N	\N	f	2021-11-26 15:41:21.022044+00	2021-11-26 15:41:21.022053+00	3	10237	119
4029	\N	\N	\N	f	2021-11-26 15:41:21.027624+00	2021-11-26 15:41:21.027633+00	3	10236	119
4030	\N	\N	\N	f	2021-11-26 15:41:21.03311+00	2021-11-26 15:41:21.033121+00	3	10235	119
4031	\N	\N	\N	f	2021-11-26 15:41:21.039587+00	2021-11-26 15:41:21.0396+00	3	10234	119
4032	\N	\N	\N	f	2021-11-26 15:41:21.04536+00	2021-11-26 15:41:21.045369+00	3	10264	119
4033	\N	\N	\N	f	2021-11-26 15:41:21.050739+00	2021-11-26 15:41:21.050747+00	3	10265	119
4034	\N	\N	\N	f	2021-11-26 15:41:21.056494+00	2021-11-26 15:41:21.056502+00	3	10266	119
4035	\N	\N	\N	f	2021-11-26 15:41:21.062131+00	2021-11-26 15:41:21.062139+00	3	10267	119
4036	\N	\N	\N	f	2021-11-26 15:41:21.067763+00	2021-11-26 15:41:21.067771+00	3	10268	119
4037	\N	\N	\N	f	2021-11-26 15:41:21.073582+00	2021-11-26 15:41:21.073592+00	3	10269	119
4038	\N	\N	\N	f	2021-11-26 15:41:21.079073+00	2021-11-26 15:41:21.079082+00	3	10270	119
4039	\N	\N	\N	f	2021-11-26 15:41:21.084388+00	2021-11-26 15:41:21.084396+00	3	10271	119
4040	\N	\N	\N	f	2021-11-26 15:41:21.089931+00	2021-11-26 15:41:21.08994+00	3	10272	119
4041	\N	\N	\N	f	2021-11-26 15:41:21.095868+00	2021-11-26 15:41:21.095881+00	3	10273	119
4042	\N	\N	\N	f	2021-11-26 15:41:21.101539+00	2021-11-26 15:41:21.101548+00	3	10274	119
4043	\N	\N	\N	f	2021-11-26 15:41:21.107069+00	2021-11-26 15:41:21.107079+00	3	10275	119
4044	\N	\N	\N	f	2021-11-26 15:41:21.112717+00	2021-11-26 15:41:21.112724+00	3	10276	119
4045	\N	\N	\N	f	2021-11-26 15:41:21.118364+00	2021-11-26 15:41:21.118371+00	3	10277	119
4046	\N	\N	\N	f	2021-11-26 15:41:21.124496+00	2021-11-26 15:41:21.124528+00	3	10278	119
4047	\N	\N	\N	f	2021-11-26 15:41:21.129983+00	2021-11-26 15:41:21.129991+00	3	10279	119
4048	\N	\N	\N	f	2021-11-26 15:41:21.135788+00	2021-11-26 15:41:21.135796+00	3	10280	119
4049	\N	\N	\N	f	2021-11-26 15:41:21.141665+00	2021-11-26 15:41:21.141674+00	3	10281	119
4050	\N	\N	\N	f	2021-11-26 15:41:21.147547+00	2021-11-26 15:41:21.147555+00	3	10282	119
4051	\N	\N	\N	f	2021-11-26 15:41:21.153138+00	2021-11-26 15:41:21.153163+00	3	10283	119
4052	\N	\N	\N	f	2021-11-26 15:41:21.159659+00	2021-11-26 15:41:21.159669+00	3	10284	119
4053	\N	\N	\N	f	2021-11-26 15:41:21.165294+00	2021-11-26 15:41:21.165303+00	3	10285	119
4054	\N	\N	\N	f	2021-11-26 15:41:21.171127+00	2021-11-26 15:41:21.171137+00	3	10286	119
4055	\N	\N	\N	f	2021-11-26 15:41:21.176543+00	2021-11-26 15:41:21.176552+00	3	10287	119
4056	\N	\N	\N	f	2021-11-26 15:41:21.182442+00	2021-11-26 15:41:21.18245+00	3	10288	119
4057	\N	\N	\N	f	2021-11-26 15:41:21.187984+00	2021-11-26 15:41:21.187994+00	3	10289	119
4058	\N	\N	\N	f	2021-11-26 15:41:21.193491+00	2021-11-26 15:41:21.1935+00	3	10290	119
4059	\N	\N	\N	f	2021-11-26 15:41:21.199084+00	2021-11-26 15:41:21.199092+00	3	10291	119
4060	\N	\N	\N	f	2021-11-26 15:41:21.204927+00	2021-11-26 15:41:21.204937+00	3	10292	119
4061	\N	\N	\N	f	2021-11-26 15:41:21.21085+00	2021-11-26 15:41:21.210859+00	3	10293	119
4062	\N	\N	\N	f	2021-11-26 15:41:21.21665+00	2021-11-26 15:41:21.216658+00	3	10323	119
4063	\N	\N	\N	f	2021-11-26 15:41:21.222781+00	2021-11-26 15:41:21.222791+00	3	10322	119
4064	\N	\N	\N	f	2021-11-26 15:41:21.229879+00	2021-11-26 15:41:21.229889+00	3	10321	119
4065	\N	\N	\N	f	2021-11-26 15:41:21.23562+00	2021-11-26 15:41:21.235629+00	3	10320	119
4066	\N	\N	\N	f	2021-11-26 15:41:21.24139+00	2021-11-26 15:41:21.241398+00	3	10319	119
4067	\N	\N	\N	f	2021-11-26 15:41:21.247522+00	2021-11-26 15:41:21.247532+00	3	10318	119
4068	\N	\N	\N	f	2021-11-26 15:41:21.253884+00	2021-11-26 15:41:21.253894+00	3	10317	119
4069	\N	\N	\N	f	2021-11-26 15:41:21.259762+00	2021-11-26 15:41:21.259771+00	3	10316	119
4070	\N	\N	\N	f	2021-11-26 15:41:21.265449+00	2021-11-26 15:41:21.265456+00	3	10315	119
4071	\N	\N	\N	f	2021-11-26 15:41:21.271119+00	2021-11-26 15:41:21.271127+00	3	10314	119
4072	\N	\N	\N	f	2021-11-26 15:41:21.276802+00	2021-11-26 15:41:21.276809+00	3	10313	119
4073	\N	\N	\N	f	2021-11-26 15:41:21.282286+00	2021-11-26 15:41:21.282293+00	3	10312	119
4074	\N	\N	\N	f	2021-11-26 15:41:21.287883+00	2021-11-26 15:41:21.287894+00	3	10311	119
4075	\N	\N	\N	f	2021-11-26 15:41:21.293817+00	2021-11-26 15:41:21.293826+00	3	10310	119
4076	\N	\N	\N	f	2021-11-26 15:41:21.299346+00	2021-11-26 15:41:21.299353+00	3	10309	119
4077	\N	\N	\N	f	2021-11-26 15:41:21.305223+00	2021-11-26 15:41:21.305232+00	3	10308	119
4078	\N	\N	\N	f	2021-11-26 15:41:21.311107+00	2021-11-26 15:41:21.311117+00	3	10307	119
4079	\N	\N	\N	f	2021-11-26 15:41:21.316523+00	2021-11-26 15:41:21.316532+00	3	10306	119
4080	\N	\N	\N	f	2021-11-26 15:41:21.322176+00	2021-11-26 15:41:21.322186+00	3	10305	119
4081	\N	\N	\N	f	2021-11-26 15:41:21.327737+00	2021-11-26 15:41:21.327746+00	3	10304	119
4082	\N	\N	\N	f	2021-11-26 15:41:21.333032+00	2021-11-26 15:41:21.333039+00	3	10303	119
4083	\N	\N	\N	f	2021-11-26 15:41:21.338389+00	2021-11-26 15:41:21.3384+00	3	10302	119
4084	\N	\N	\N	f	2021-11-26 15:41:21.344006+00	2021-11-26 15:41:21.344015+00	3	10301	119
4085	\N	\N	\N	f	2021-11-26 15:41:21.349538+00	2021-11-26 15:41:21.349548+00	3	10300	119
4086	\N	\N	\N	f	2021-11-26 15:41:21.355182+00	2021-11-26 15:41:21.355191+00	3	10299	119
4087	\N	\N	\N	f	2021-11-26 15:41:21.360614+00	2021-11-26 15:41:21.360624+00	3	10298	119
4088	\N	\N	\N	f	2021-11-26 15:41:21.36583+00	2021-11-26 15:41:21.365838+00	3	10297	119
4089	\N	\N	\N	f	2021-11-26 15:41:21.37145+00	2021-11-26 15:41:21.37146+00	3	10296	119
4090	\N	\N	\N	f	2021-11-26 15:41:21.377444+00	2021-11-26 15:41:21.377455+00	3	10295	119
4091	\N	\N	\N	f	2021-11-26 15:41:21.383091+00	2021-11-26 15:41:21.383099+00	3	10294	119
4092	\N	\N	\N	f	2021-11-26 15:41:21.388676+00	2021-11-26 15:41:21.388685+00	3	10324	119
4093	\N	\N	\N	f	2021-11-26 15:41:21.394042+00	2021-11-26 15:41:21.394049+00	3	10325	119
4094	\N	\N	\N	f	2021-11-26 15:41:21.399312+00	2021-11-26 15:41:21.39932+00	3	10326	119
4095	\N	\N	\N	f	2021-11-26 15:41:21.405048+00	2021-11-26 15:41:21.40506+00	3	10327	119
4096	\N	\N	\N	f	2021-11-26 15:41:21.410955+00	2021-11-26 15:41:21.410964+00	3	10328	119
4097	\N	\N	\N	f	2021-11-26 15:41:21.416498+00	2021-11-26 15:41:21.416506+00	3	10329	119
4098	\N	\N	\N	f	2021-11-26 15:41:21.422004+00	2021-11-26 15:41:21.422012+00	3	10330	119
4099	\N	\N	\N	f	2021-11-26 15:41:21.42743+00	2021-11-26 15:41:21.427437+00	3	10331	119
4100	\N	\N	\N	f	2021-11-26 15:41:21.432806+00	2021-11-26 15:41:21.432814+00	3	10332	119
4101	\N	\N	\N	f	2021-11-26 15:41:21.438468+00	2021-11-26 15:41:21.438477+00	3	10333	119
4102	\N	\N	\N	f	2021-11-26 15:41:21.444439+00	2021-11-26 15:41:21.444448+00	3	10334	119
4103	\N	\N	\N	f	2021-11-26 15:41:21.450924+00	2021-11-26 15:41:21.450932+00	3	10335	119
4104	\N	\N	\N	f	2021-11-26 15:41:21.457462+00	2021-11-26 15:41:21.457473+00	3	10336	119
4105	\N	\N	\N	f	2021-11-26 15:41:21.463999+00	2021-11-26 15:41:21.464009+00	3	10337	119
4106	\N	\N	\N	f	2021-11-26 15:41:21.470071+00	2021-11-26 15:41:21.470081+00	3	10338	119
4107	\N	\N	\N	f	2021-11-26 15:41:21.476274+00	2021-11-26 15:41:21.476283+00	3	10339	119
4108	\N	\N	\N	f	2021-11-26 15:41:21.485547+00	2021-11-26 15:41:21.485556+00	3	10340	119
4109	\N	\N	\N	f	2021-11-26 15:41:21.49158+00	2021-11-26 15:41:21.491593+00	3	10341	119
4110	\N	\N	\N	f	2021-11-26 15:41:21.49758+00	2021-11-26 15:41:21.497589+00	3	10342	119
4111	\N	\N	\N	f	2021-11-26 15:41:21.503237+00	2021-11-26 15:41:21.503246+00	3	10343	119
4112	\N	\N	\N	f	2021-11-26 15:41:21.509391+00	2021-11-26 15:41:21.5094+00	3	10344	119
4113	\N	\N	\N	f	2021-11-26 15:41:21.515089+00	2021-11-26 15:41:21.515097+00	3	10345	119
4114	\N	\N	\N	f	2021-11-26 15:41:21.520839+00	2021-11-26 15:41:21.520848+00	3	10346	119
4115	\N	\N	\N	f	2021-11-26 15:41:21.527679+00	2021-11-26 15:41:21.527689+00	3	10347	119
4116	\N	\N	\N	f	2021-11-26 15:41:21.533839+00	2021-11-26 15:41:21.533848+00	3	10348	119
4117	\N	\N	\N	f	2021-11-26 15:41:21.540067+00	2021-11-26 15:41:21.540076+00	3	10349	119
4118	\N	\N	\N	f	2021-11-26 15:41:21.545981+00	2021-11-26 15:41:21.545989+00	3	10350	119
4119	\N	\N	\N	f	2021-11-26 15:41:21.552324+00	2021-11-26 15:41:21.552334+00	3	10351	119
4120	\N	\N	\N	f	2021-11-26 15:41:21.559238+00	2021-11-26 15:41:21.559247+00	3	10352	119
4121	\N	\N	\N	f	2021-11-26 15:41:21.565818+00	2021-11-26 15:41:21.565827+00	3	10353	119
4122	\N	\N	\N	f	2021-11-26 15:41:21.571883+00	2021-11-26 15:41:21.571891+00	3	10383	119
4123	\N	\N	\N	f	2021-11-26 15:41:21.578546+00	2021-11-26 15:41:21.578554+00	3	10382	119
4124	\N	\N	\N	f	2021-11-26 15:41:21.584743+00	2021-11-26 15:41:21.584752+00	3	10381	119
4125	\N	\N	\N	f	2021-11-26 15:41:21.592029+00	2021-11-26 15:41:21.592038+00	3	10380	119
4126	\N	\N	\N	f	2021-11-26 15:41:21.598672+00	2021-11-26 15:41:21.598679+00	3	10379	119
4127	\N	\N	\N	f	2021-11-26 15:41:21.605069+00	2021-11-26 15:41:21.605078+00	3	10378	119
4128	\N	\N	\N	f	2021-11-26 15:41:21.611767+00	2021-11-26 15:41:21.611775+00	3	10377	119
4129	\N	\N	\N	f	2021-11-26 15:41:21.617748+00	2021-11-26 15:41:21.617759+00	3	10376	119
4130	\N	\N	\N	f	2021-11-26 15:41:21.624022+00	2021-11-26 15:41:21.624032+00	3	10375	119
4131	\N	\N	\N	f	2021-11-26 15:41:21.62992+00	2021-11-26 15:41:21.629929+00	3	10374	119
4132	\N	\N	\N	f	2021-11-26 15:41:21.6357+00	2021-11-26 15:41:21.635709+00	3	10373	119
4133	\N	\N	\N	f	2021-11-26 15:41:21.64235+00	2021-11-26 15:41:21.642359+00	3	10372	119
4134	\N	\N	\N	f	2021-11-26 15:41:21.648209+00	2021-11-26 15:41:21.648218+00	3	10371	119
4135	\N	\N	\N	f	2021-11-26 15:41:21.654024+00	2021-11-26 15:41:21.654038+00	3	10370	119
4136	\N	\N	\N	f	2021-11-26 15:41:21.660278+00	2021-11-26 15:41:21.660288+00	3	10369	119
4137	\N	\N	\N	f	2021-11-26 15:41:21.665899+00	2021-11-26 15:41:21.665906+00	3	10368	119
4138	\N	\N	\N	f	2021-11-26 15:41:21.671762+00	2021-11-26 15:41:21.671771+00	3	10367	119
4139	\N	\N	\N	f	2021-11-26 15:41:21.678108+00	2021-11-26 15:41:21.678118+00	3	10366	119
4140	\N	\N	\N	f	2021-11-26 15:41:21.69378+00	2021-11-26 15:41:21.69379+00	3	10365	119
4141	\N	\N	\N	f	2021-11-26 15:41:21.726114+00	2021-11-26 15:41:21.726123+00	3	10364	119
4142	\N	\N	\N	f	2021-11-26 15:41:21.753023+00	2021-11-26 15:41:21.753033+00	3	10363	119
4143	\N	\N	\N	f	2021-11-26 15:41:21.779546+00	2021-11-26 15:41:21.779556+00	3	10362	119
4144	\N	\N	\N	f	2021-11-26 15:41:21.80879+00	2021-11-26 15:41:21.8088+00	3	10361	119
4145	\N	\N	\N	f	2021-11-26 15:41:21.842784+00	2021-11-26 15:41:21.842793+00	3	10360	119
4146	\N	\N	\N	f	2021-11-26 15:41:21.880724+00	2021-11-26 15:41:21.880733+00	3	10359	119
4147	\N	\N	\N	f	2021-11-26 15:41:21.907203+00	2021-11-26 15:41:21.907215+00	3	10358	119
4148	\N	\N	\N	f	2021-11-26 15:41:21.934368+00	2021-11-26 15:41:21.934377+00	3	10357	119
4149	\N	\N	\N	f	2021-11-26 15:41:21.962927+00	2021-11-26 15:41:21.962936+00	3	10356	119
4150	\N	\N	\N	f	2021-11-26 15:41:21.998263+00	2021-11-26 15:41:21.998272+00	3	10355	119
4151	\N	\N	\N	f	2021-11-26 15:41:22.029479+00	2021-11-26 15:41:22.029488+00	3	10354	119
4152	\N	\N	\N	f	2021-11-26 15:41:22.055808+00	2021-11-26 15:41:22.055816+00	3	10384	119
4153	\N	\N	\N	f	2021-11-26 15:41:22.087743+00	2021-11-26 15:41:22.087752+00	3	10385	119
4154	\N	\N	\N	f	2021-11-26 15:41:22.117163+00	2021-11-26 15:41:22.117172+00	3	10386	119
4155	\N	\N	\N	f	2021-11-26 15:41:22.154434+00	2021-11-26 15:41:22.154444+00	3	10387	119
4156	\N	\N	\N	f	2021-11-26 15:41:22.181064+00	2021-11-26 15:41:22.181074+00	3	10388	119
4157	\N	\N	\N	f	2021-11-26 15:41:22.215064+00	2021-11-26 15:41:22.215073+00	3	10389	119
4158	\N	\N	\N	f	2021-11-26 15:41:22.249007+00	2021-11-26 15:41:22.249015+00	3	10390	119
4159	\N	\N	\N	f	2021-11-26 15:41:22.285932+00	2021-11-26 15:41:22.285955+00	3	10391	119
4160	\N	\N	\N	f	2021-11-26 15:41:22.325338+00	2021-11-26 15:41:22.325347+00	3	10392	119
4161	\N	\N	\N	f	2021-11-26 15:41:22.354996+00	2021-11-26 15:41:22.355008+00	3	10393	119
4162	\N	\N	\N	f	2021-11-26 15:41:22.40086+00	2021-11-26 15:41:22.40087+00	3	10394	119
4163	\N	\N	\N	f	2021-11-26 15:41:22.432042+00	2021-11-26 15:41:22.432051+00	3	10395	119
4164	\N	\N	\N	f	2021-11-26 15:41:22.476788+00	2021-11-26 15:41:22.476797+00	3	10396	119
4165	\N	\N	\N	f	2021-11-26 15:41:22.511338+00	2021-11-26 15:41:22.51135+00	3	10397	119
4166	\N	\N	\N	f	2021-11-26 15:41:22.553757+00	2021-11-26 15:41:22.553766+00	3	10398	119
4167	\N	\N	\N	f	2021-11-26 15:41:22.585626+00	2021-11-26 15:41:22.585636+00	3	10399	119
4168	\N	\N	\N	f	2021-11-26 15:41:22.644278+00	2021-11-26 15:41:22.644287+00	3	10400	119
4169	\N	\N	\N	f	2021-11-26 15:41:22.674747+00	2021-11-26 15:41:22.674756+00	3	10401	119
4170	\N	\N	\N	f	2021-11-26 15:41:22.705099+00	2021-11-26 15:41:22.705109+00	3	10402	119
4171	\N	\N	\N	f	2021-11-26 15:41:22.743017+00	2021-11-26 15:41:22.743027+00	3	10403	119
4172	\N	\N	\N	f	2021-11-26 15:41:22.772532+00	2021-11-26 15:41:22.772541+00	3	10404	119
4173	\N	\N	\N	f	2021-11-26 15:41:22.813917+00	2021-11-26 15:41:22.813927+00	3	10405	119
4174	\N	\N	\N	f	2021-11-26 15:41:22.863827+00	2021-11-26 15:41:22.863836+00	3	10406	119
4175	\N	\N	\N	f	2021-11-26 15:41:22.887575+00	2021-11-26 15:41:22.887585+00	3	10407	119
4176	\N	\N	\N	f	2021-11-26 15:41:22.921242+00	2021-11-26 15:41:22.921251+00	3	10408	119
4177	\N	\N	\N	f	2021-11-26 15:41:22.951185+00	2021-11-26 15:41:22.951194+00	3	10409	119
4178	\N	\N	\N	f	2021-11-26 15:41:22.992508+00	2021-11-26 15:41:22.992517+00	3	10410	119
4179	\N	\N	\N	f	2021-11-26 15:41:23.030593+00	2021-11-26 15:41:23.030603+00	3	10411	119
4180	\N	\N	\N	f	2021-11-26 15:41:23.0669+00	2021-11-26 15:41:23.066909+00	3	10412	119
4181	\N	\N	\N	f	2021-11-26 15:41:23.097034+00	2021-11-26 15:41:23.097043+00	3	10413	119
4182	\N	\N	\N	f	2021-11-26 15:41:23.128708+00	2021-11-26 15:41:23.128718+00	3	10443	119
4183	\N	\N	\N	f	2021-11-26 15:41:23.155822+00	2021-11-26 15:41:23.155831+00	3	10442	119
4184	\N	\N	\N	f	2021-11-26 15:41:23.212919+00	2021-11-26 15:41:23.212928+00	3	10441	119
4185	\N	\N	\N	f	2021-11-26 15:41:23.260122+00	2021-11-26 15:41:23.26013+00	3	10440	119
4186	\N	\N	\N	f	2021-11-26 15:41:23.293538+00	2021-11-26 15:41:23.293546+00	3	10439	119
4187	\N	\N	\N	f	2021-11-26 15:41:23.346028+00	2021-11-26 15:41:23.346037+00	3	10438	119
4188	\N	\N	\N	f	2021-11-26 15:41:23.386908+00	2021-11-26 15:41:23.386918+00	3	10437	119
4189	\N	\N	\N	f	2021-11-26 15:41:23.423545+00	2021-11-26 15:41:23.423554+00	3	10436	119
4190	\N	\N	\N	f	2021-11-26 15:41:23.46385+00	2021-11-26 15:41:23.46386+00	3	10435	119
4191	\N	\N	\N	f	2021-11-26 15:41:23.558537+00	2021-11-26 15:41:23.558548+00	3	10434	119
4192	\N	\N	\N	f	2021-11-26 15:41:23.627257+00	2021-11-26 15:41:23.627266+00	3	10433	119
4193	\N	\N	\N	f	2021-11-26 15:41:23.661272+00	2021-11-26 15:41:23.661281+00	3	10432	119
4194	\N	\N	\N	f	2021-11-26 15:41:23.734127+00	2021-11-26 15:41:23.734137+00	3	10431	119
4195	\N	\N	\N	f	2021-11-26 15:41:23.765291+00	2021-11-26 15:41:23.7653+00	3	10430	119
4196	\N	\N	\N	f	2021-11-26 15:41:23.795014+00	2021-11-26 15:41:23.795025+00	3	10429	119
4197	\N	\N	\N	f	2021-11-26 15:41:23.839629+00	2021-11-26 15:41:23.839638+00	3	10428	119
4198	\N	\N	\N	f	2021-11-26 15:41:23.864522+00	2021-11-26 15:41:23.864532+00	3	10427	119
4199	\N	\N	\N	f	2021-11-26 15:41:23.900817+00	2021-11-26 15:41:23.900827+00	3	10426	119
4200	\N	\N	\N	f	2021-11-26 15:41:23.936443+00	2021-11-26 15:41:23.936457+00	3	10425	119
4201	\N	\N	\N	f	2021-11-26 15:41:23.982269+00	2021-11-26 15:41:23.982278+00	3	10424	119
4202	\N	\N	\N	f	2021-11-26 15:41:24.022462+00	2021-11-26 15:41:24.022471+00	3	10423	119
4203	\N	\N	\N	f	2021-11-26 15:41:24.072386+00	2021-11-26 15:41:24.072396+00	3	10422	119
4204	\N	\N	\N	f	2021-11-26 15:41:24.114647+00	2021-11-26 15:41:24.114657+00	3	10421	119
4205	\N	\N	\N	f	2021-11-26 15:41:24.156697+00	2021-11-26 15:41:24.156708+00	3	10420	119
4206	\N	\N	\N	f	2021-11-26 15:41:24.189176+00	2021-11-26 15:41:24.189185+00	3	10419	119
4207	\N	\N	\N	f	2021-11-26 15:41:24.221038+00	2021-11-26 15:41:24.221049+00	3	10418	119
4208	\N	\N	\N	f	2021-11-26 15:41:24.248976+00	2021-11-26 15:41:24.248986+00	3	10417	119
4209	\N	\N	\N	f	2021-11-26 15:41:24.280007+00	2021-11-26 15:41:24.280017+00	3	10416	119
4210	\N	\N	\N	f	2021-11-26 15:41:24.309336+00	2021-11-26 15:41:24.309346+00	3	10415	119
4211	\N	\N	\N	f	2021-11-26 15:41:24.342072+00	2021-11-26 15:41:24.342081+00	3	10414	119
4212	\N	\N	\N	f	2021-11-26 15:41:24.372097+00	2021-11-26 15:41:24.372107+00	3	10444	119
4213	\N	\N	\N	f	2021-11-26 15:41:24.403375+00	2021-11-26 15:41:24.403386+00	3	10445	119
4214	\N	\N	\N	f	2021-11-26 15:41:24.43899+00	2021-11-26 15:41:24.438999+00	3	10446	119
4215	\N	\N	\N	f	2021-11-26 15:41:24.469379+00	2021-11-26 15:41:24.469389+00	3	10447	119
4216	\N	\N	\N	f	2021-11-26 15:41:24.496715+00	2021-11-26 15:41:24.496725+00	3	10448	119
4217	\N	\N	\N	f	2021-11-26 15:41:24.534036+00	2021-11-26 15:41:24.534046+00	3	10449	119
4218	\N	\N	\N	f	2021-11-26 15:41:24.569409+00	2021-11-26 15:41:24.56942+00	3	10450	119
4219	\N	\N	\N	f	2021-11-26 15:41:24.601253+00	2021-11-26 15:41:24.601263+00	3	10451	119
4220	\N	\N	\N	f	2021-11-26 15:41:24.634019+00	2021-11-26 15:41:24.634028+00	3	10452	119
4221	\N	\N	\N	f	2021-11-26 15:41:24.669379+00	2021-11-26 15:41:24.669393+00	3	10453	119
4222	\N	\N	\N	f	2021-11-26 15:41:24.70533+00	2021-11-26 15:41:24.705346+00	3	10454	119
4223	\N	\N	\N	f	2021-11-26 15:41:24.742879+00	2021-11-26 15:41:24.742889+00	3	10455	119
4224	\N	\N	\N	f	2021-11-26 15:41:24.774971+00	2021-11-26 15:41:24.774981+00	3	10456	119
4225	\N	\N	\N	f	2021-11-26 15:41:24.804389+00	2021-11-26 15:41:24.8044+00	3	10457	119
4226	\N	\N	\N	f	2021-11-26 15:41:24.834441+00	2021-11-26 15:41:24.83445+00	3	10458	119
4227	\N	\N	\N	f	2021-11-26 15:41:24.870912+00	2021-11-26 15:41:24.870921+00	3	10459	119
4228	\N	\N	\N	f	2021-11-26 15:41:24.903256+00	2021-11-26 15:41:24.903266+00	3	10460	119
4229	\N	\N	\N	f	2021-11-26 15:41:24.937525+00	2021-11-26 15:41:24.937535+00	3	10461	119
4230	\N	\N	\N	f	2021-11-26 15:41:24.969315+00	2021-11-26 15:41:24.969325+00	3	10462	119
4231	\N	\N	\N	f	2021-11-26 15:41:25.001491+00	2021-11-26 15:41:25.0015+00	3	10463	119
4232	\N	\N	\N	f	2021-11-26 15:41:25.033626+00	2021-11-26 15:41:25.033635+00	3	10464	119
4233	\N	\N	\N	f	2021-11-26 15:41:25.080643+00	2021-11-26 15:41:25.080652+00	3	10465	119
4234	\N	\N	\N	f	2021-11-26 15:41:25.117524+00	2021-11-26 15:41:25.117534+00	3	10466	119
4235	\N	\N	\N	f	2021-11-26 15:41:25.146783+00	2021-11-26 15:41:25.146792+00	3	10467	119
4236	\N	\N	\N	f	2021-11-26 15:41:25.177547+00	2021-11-26 15:41:25.177557+00	3	10468	119
4237	\N	\N	\N	f	2021-11-26 15:41:25.212694+00	2021-11-26 15:41:25.212704+00	3	10469	119
4238	\N	\N	\N	f	2021-11-26 15:41:25.2575+00	2021-11-26 15:41:25.257509+00	3	10470	119
4239	\N	\N	\N	f	2021-11-26 15:41:25.290357+00	2021-11-26 15:41:25.290367+00	3	10471	119
4240	\N	\N	\N	f	2021-11-26 15:41:25.323482+00	2021-11-26 15:41:25.323492+00	3	10472	119
4241	\N	\N	\N	f	2021-11-26 15:41:25.372387+00	2021-11-26 15:41:25.372399+00	3	10473	119
4242	\N	\N	\N	f	2021-11-26 15:41:25.40897+00	2021-11-26 15:41:25.408979+00	3	10503	119
4243	\N	\N	\N	f	2021-11-26 15:41:25.432434+00	2021-11-26 15:41:25.432444+00	3	10502	119
4244	\N	\N	\N	f	2021-11-26 15:41:25.465616+00	2021-11-26 15:41:25.465625+00	3	10501	119
4245	\N	\N	\N	f	2021-11-26 15:41:25.503631+00	2021-11-26 15:41:25.503646+00	3	10500	119
4246	\N	\N	\N	f	2021-11-26 15:41:25.558396+00	2021-11-26 15:41:25.558404+00	3	10499	119
4247	\N	\N	\N	f	2021-11-26 15:41:25.606079+00	2021-11-26 15:41:25.606089+00	3	10498	119
4248	\N	\N	\N	f	2021-11-26 15:41:25.654558+00	2021-11-26 15:41:25.654572+00	3	10497	119
4249	\N	\N	\N	f	2021-11-26 15:41:25.683162+00	2021-11-26 15:41:25.683172+00	3	10496	119
4250	\N	\N	\N	f	2021-11-26 15:41:25.716837+00	2021-11-26 15:41:25.716847+00	3	10495	119
4251	\N	\N	\N	f	2021-11-26 15:41:25.761372+00	2021-11-26 15:41:25.761381+00	3	10494	119
4252	\N	\N	\N	f	2021-11-26 15:41:25.804657+00	2021-11-26 15:41:25.804666+00	3	10493	119
4253	\N	\N	\N	f	2021-11-26 15:41:25.841787+00	2021-11-26 15:41:25.8418+00	3	10492	119
4254	\N	\N	\N	f	2021-11-26 15:41:25.896986+00	2021-11-26 15:41:25.896994+00	3	10491	119
4255	\N	\N	\N	f	2021-11-26 15:41:25.94072+00	2021-11-26 15:41:25.94073+00	3	10490	119
4256	\N	\N	\N	f	2021-11-26 15:41:25.981216+00	2021-11-26 15:41:25.981226+00	3	10489	119
4257	\N	\N	\N	f	2021-11-26 15:41:26.009914+00	2021-11-26 15:41:26.009923+00	3	10488	119
4258	\N	\N	\N	f	2021-11-26 15:41:26.049058+00	2021-11-26 15:41:26.049067+00	3	10487	119
4259	\N	\N	\N	f	2021-11-26 15:41:26.089608+00	2021-11-26 15:41:26.089618+00	3	10486	119
4260	\N	\N	\N	f	2021-11-26 15:41:26.123194+00	2021-11-26 15:41:26.123204+00	3	10485	119
4261	\N	\N	\N	f	2021-11-26 15:41:26.16664+00	2021-11-26 15:41:26.166649+00	3	10484	119
4262	\N	\N	\N	f	2021-11-26 15:41:26.221858+00	2021-11-26 15:41:26.221869+00	3	10483	119
4263	\N	\N	\N	f	2021-11-26 15:41:26.255904+00	2021-11-26 15:41:26.255913+00	3	10482	119
4264	\N	\N	\N	f	2021-11-26 15:41:26.296068+00	2021-11-26 15:41:26.296078+00	3	10481	119
4265	\N	\N	\N	f	2021-11-26 15:41:26.327221+00	2021-11-26 15:41:26.32723+00	3	10480	119
4266	\N	\N	\N	f	2021-11-26 15:41:26.35742+00	2021-11-26 15:41:26.35743+00	3	10479	119
4267	\N	\N	\N	f	2021-11-26 15:41:26.39196+00	2021-11-26 15:41:26.39197+00	3	10478	119
4268	\N	\N	\N	f	2021-11-26 15:41:26.444194+00	2021-11-26 15:41:26.444204+00	3	10477	119
4269	\N	\N	\N	f	2021-11-26 15:41:26.486466+00	2021-11-26 15:41:26.486477+00	3	10476	119
4270	\N	\N	\N	f	2021-11-26 15:41:26.52434+00	2021-11-26 15:41:26.524351+00	3	10475	119
4271	\N	\N	\N	f	2021-11-26 15:41:26.582988+00	2021-11-26 15:41:26.582998+00	3	10474	119
4272	\N	\N	\N	f	2021-11-26 15:41:26.611234+00	2021-11-26 15:41:26.611245+00	3	10504	119
4273	\N	\N	\N	f	2021-11-26 15:41:26.665638+00	2021-11-26 15:41:26.66565+00	3	10505	119
4274	\N	\N	\N	f	2021-11-26 15:41:26.692752+00	2021-11-26 15:41:26.692762+00	3	10506	119
4275	\N	\N	\N	f	2021-11-26 15:41:26.747825+00	2021-11-26 15:41:26.747836+00	3	10507	119
4276	\N	\N	\N	f	2021-11-26 15:41:26.781805+00	2021-11-26 15:41:26.781815+00	3	10508	119
4277	\N	\N	\N	f	2021-11-26 15:41:26.832305+00	2021-11-26 15:41:26.832317+00	3	10509	119
4278	\N	\N	\N	f	2021-11-26 15:41:26.872622+00	2021-11-26 15:41:26.872633+00	3	10510	119
4279	\N	\N	\N	f	2021-11-26 15:41:26.914432+00	2021-11-26 15:41:26.914442+00	3	10511	119
4280	\N	\N	\N	f	2021-11-26 15:41:26.943603+00	2021-11-26 15:41:26.943614+00	3	10512	119
4281	\N	\N	\N	f	2021-11-26 15:41:26.983397+00	2021-11-26 15:41:26.983408+00	3	10513	119
4282	\N	\N	\N	f	2021-11-26 15:41:27.029009+00	2021-11-26 15:41:27.029019+00	3	10514	119
4283	\N	\N	\N	f	2021-11-26 15:41:27.063934+00	2021-11-26 15:41:27.063945+00	3	10515	119
4284	\N	\N	\N	f	2021-11-26 15:41:27.103381+00	2021-11-26 15:41:27.103393+00	3	10516	119
4285	\N	\N	\N	f	2021-11-26 15:41:27.143753+00	2021-11-26 15:41:27.143765+00	3	10517	119
4286	\N	\N	\N	f	2021-11-26 15:41:27.177259+00	2021-11-26 15:41:27.17727+00	3	10518	119
4287	\N	\N	\N	f	2021-11-26 15:41:27.219911+00	2021-11-26 15:41:27.219924+00	3	10519	119
4288	\N	\N	\N	f	2021-11-26 15:41:27.253289+00	2021-11-26 15:41:27.253301+00	3	10520	119
4289	\N	\N	\N	f	2021-11-26 15:41:27.308424+00	2021-11-26 15:41:27.308435+00	3	10521	119
4290	\N	\N	\N	f	2021-11-26 15:41:27.347626+00	2021-11-26 15:41:27.347638+00	3	10522	119
4291	\N	\N	\N	f	2021-11-26 15:41:27.422829+00	2021-11-26 15:41:27.422841+00	3	10523	119
4292	\N	\N	\N	f	2021-11-26 15:41:27.459575+00	2021-11-26 15:41:27.459589+00	3	10524	119
4293	\N	\N	\N	f	2021-11-26 15:41:27.497014+00	2021-11-26 15:41:27.497025+00	3	10525	119
4294	\N	\N	\N	f	2021-11-26 15:41:27.539595+00	2021-11-26 15:41:27.539605+00	3	10526	119
4295	\N	\N	\N	f	2021-11-26 15:41:27.574041+00	2021-11-26 15:41:27.574052+00	3	10527	119
4296	\N	\N	\N	f	2021-11-26 15:41:27.61205+00	2021-11-26 15:41:27.612061+00	3	10528	119
4297	\N	\N	\N	f	2021-11-26 15:41:27.642288+00	2021-11-26 15:41:27.6423+00	3	10529	119
4298	\N	\N	\N	f	2021-11-26 15:41:27.679725+00	2021-11-26 15:41:27.679736+00	3	10530	119
4299	\N	\N	\N	f	2021-11-26 15:41:27.712061+00	2021-11-26 15:41:27.712072+00	3	10531	119
4300	\N	\N	\N	f	2021-11-26 15:41:27.743258+00	2021-11-26 15:41:27.743269+00	3	10532	119
4301	\N	\N	\N	f	2021-11-26 15:41:27.775477+00	2021-11-26 15:41:27.775488+00	3	10533	119
4302	\N	\N	\N	f	2021-11-26 15:41:27.807839+00	2021-11-26 15:41:27.807851+00	3	10563	119
4303	\N	\N	\N	f	2021-11-26 15:41:27.843932+00	2021-11-26 15:41:27.843943+00	3	10562	119
4304	\N	\N	\N	f	2021-11-26 15:41:27.876123+00	2021-11-26 15:41:27.876132+00	3	10561	119
4305	\N	\N	\N	f	2021-11-26 15:41:27.913876+00	2021-11-26 15:41:27.913886+00	3	10560	119
4306	\N	\N	\N	f	2021-11-26 15:41:27.95373+00	2021-11-26 15:41:27.953742+00	3	10559	119
4307	\N	\N	\N	f	2021-11-26 15:41:27.996488+00	2021-11-26 15:41:27.996499+00	3	10558	119
4308	\N	\N	\N	f	2021-11-26 15:41:28.034744+00	2021-11-26 15:41:28.034756+00	3	10557	119
4309	\N	\N	\N	f	2021-11-26 15:41:28.07788+00	2021-11-26 15:41:28.077891+00	3	10556	119
4310	\N	\N	\N	f	2021-11-26 15:41:28.110471+00	2021-11-26 15:41:28.110483+00	3	10555	119
4311	\N	\N	\N	f	2021-11-26 15:41:28.143285+00	2021-11-26 15:41:28.143298+00	3	10554	119
4312	\N	\N	\N	f	2021-11-26 15:41:28.172019+00	2021-11-26 15:41:28.172037+00	3	10553	119
4313	\N	\N	\N	f	2021-11-26 15:41:28.20481+00	2021-11-26 15:41:28.204825+00	3	10552	119
4314	\N	\N	\N	f	2021-11-26 15:41:28.242656+00	2021-11-26 15:41:28.242667+00	3	10551	119
4315	\N	\N	\N	f	2021-11-26 15:41:28.279274+00	2021-11-26 15:41:28.279286+00	3	10550	119
4316	\N	\N	\N	f	2021-11-26 15:41:28.312402+00	2021-11-26 15:41:28.312414+00	3	10549	119
4317	\N	\N	\N	f	2021-11-26 15:41:28.345152+00	2021-11-26 15:41:28.345163+00	3	10548	119
4318	\N	\N	\N	f	2021-11-26 15:41:28.380563+00	2021-11-26 15:41:28.380575+00	3	10547	119
4319	\N	\N	\N	f	2021-11-26 15:41:28.413398+00	2021-11-26 15:41:28.413409+00	3	10546	119
4320	\N	\N	\N	f	2021-11-26 15:41:28.445814+00	2021-11-26 15:41:28.445825+00	3	10545	119
4321	\N	\N	\N	f	2021-11-26 15:41:28.532673+00	2021-11-26 15:41:28.532689+00	3	10544	119
4322	\N	\N	\N	f	2021-11-26 15:41:28.572249+00	2021-11-26 15:41:28.572261+00	3	10543	119
4323	\N	\N	\N	f	2021-11-26 15:41:28.622916+00	2021-11-26 15:41:28.622927+00	3	10542	119
4324	\N	\N	\N	f	2021-11-26 15:41:28.66604+00	2021-11-26 15:41:28.66605+00	3	10541	119
4325	\N	\N	\N	f	2021-11-26 15:41:28.724345+00	2021-11-26 15:41:28.724356+00	3	10540	119
4326	\N	\N	\N	f	2021-11-26 15:41:28.761168+00	2021-11-26 15:41:28.761179+00	3	10539	119
4327	\N	\N	\N	f	2021-11-26 15:41:28.811484+00	2021-11-26 15:41:28.811495+00	3	10538	119
4328	\N	\N	\N	f	2021-11-26 15:41:28.842634+00	2021-11-26 15:41:28.842645+00	3	10537	119
4329	\N	\N	\N	f	2021-11-26 15:41:28.888046+00	2021-11-26 15:41:28.888056+00	3	10536	119
4330	\N	\N	\N	f	2021-11-26 15:41:28.94142+00	2021-11-26 15:41:28.941431+00	3	10535	119
4331	\N	\N	\N	f	2021-11-26 15:41:29.012605+00	2021-11-26 15:41:29.012615+00	3	10534	119
4332	\N	\N	\N	f	2021-11-26 15:41:29.073849+00	2021-11-26 15:41:29.07386+00	3	10564	119
4333	\N	\N	\N	f	2021-11-26 15:41:29.122403+00	2021-11-26 15:41:29.122413+00	3	10565	119
4334	\N	\N	\N	f	2021-11-26 15:41:29.147365+00	2021-11-26 15:41:29.147379+00	3	10566	119
4335	\N	\N	\N	f	2021-11-26 15:41:29.185661+00	2021-11-26 15:41:29.185671+00	3	10567	119
4336	\N	\N	\N	f	2021-11-26 15:41:29.218202+00	2021-11-26 15:41:29.218213+00	3	10568	119
4337	\N	\N	\N	f	2021-11-26 15:41:29.250335+00	2021-11-26 15:41:29.250346+00	3	10569	119
4338	\N	\N	\N	f	2021-11-26 15:41:29.26024+00	2021-11-26 15:41:29.260251+00	3	10570	119
4339	\N	\N	\N	f	2021-11-26 15:41:29.266508+00	2021-11-26 15:41:29.266519+00	3	10571	119
4340	\N	\N	\N	f	2021-11-26 15:41:29.273679+00	2021-11-26 15:41:29.273694+00	3	10572	119
4341	\N	\N	\N	f	2021-11-26 15:41:29.280079+00	2021-11-26 15:41:29.28009+00	3	10573	119
4342	\N	\N	\N	f	2021-11-26 15:41:29.288109+00	2021-11-26 15:41:29.288122+00	3	10574	119
4343	\N	\N	\N	f	2021-11-26 15:41:29.295672+00	2021-11-26 15:41:29.295689+00	3	10575	119
4344	\N	\N	\N	f	2021-11-26 15:41:29.302643+00	2021-11-26 15:41:29.302656+00	3	10576	119
4345	\N	\N	\N	f	2021-11-26 15:41:29.309659+00	2021-11-26 15:41:29.30967+00	3	10577	119
4346	\N	\N	\N	f	2021-11-26 15:41:29.316847+00	2021-11-26 15:41:29.316859+00	3	10578	119
4347	\N	\N	\N	f	2021-11-26 15:41:29.323883+00	2021-11-26 15:41:29.323895+00	3	10579	119
4348	\N	\N	\N	f	2021-11-26 15:41:29.330081+00	2021-11-26 15:41:29.330092+00	3	10580	119
4349	\N	\N	\N	f	2021-11-26 15:41:29.337617+00	2021-11-26 15:41:29.337629+00	3	10581	119
4350	\N	\N	\N	f	2021-11-26 15:41:29.345125+00	2021-11-26 15:41:29.345137+00	3	10582	119
4351	\N	\N	\N	f	2021-11-26 15:41:29.35166+00	2021-11-26 15:41:29.351672+00	3	10583	119
4352	\N	\N	\N	f	2021-11-26 15:41:29.358025+00	2021-11-26 15:41:29.358037+00	3	10584	119
4353	\N	\N	\N	f	2021-11-26 15:41:29.365847+00	2021-11-26 15:41:29.365861+00	3	10585	119
4354	\N	\N	\N	f	2021-11-26 15:41:29.372842+00	2021-11-26 15:41:29.372854+00	3	10586	119
4355	\N	\N	\N	f	2021-11-26 15:41:29.37903+00	2021-11-26 15:41:29.379041+00	3	10587	119
4356	\N	\N	\N	f	2021-11-26 15:41:29.386172+00	2021-11-26 15:41:29.386184+00	3	10588	119
4357	\N	\N	\N	f	2021-11-26 15:41:29.393324+00	2021-11-26 15:41:29.393335+00	3	10589	119
4358	\N	\N	\N	f	2021-11-26 15:41:29.400762+00	2021-11-26 15:41:29.400779+00	3	10590	119
4359	\N	\N	\N	f	2021-11-26 15:41:29.409492+00	2021-11-26 15:41:29.409504+00	3	10591	119
4360	\N	\N	\N	f	2021-11-26 15:41:29.416681+00	2021-11-26 15:41:29.416693+00	3	10592	119
4361	\N	\N	\N	f	2021-11-26 15:41:29.423387+00	2021-11-26 15:41:29.423403+00	3	10593	119
4362	\N	\N	\N	f	2021-11-26 15:41:29.429427+00	2021-11-26 15:41:29.429439+00	3	10623	119
4363	\N	\N	\N	f	2021-11-26 15:41:29.435807+00	2021-11-26 15:41:29.435824+00	3	10622	119
4364	\N	\N	\N	f	2021-11-26 15:41:29.443566+00	2021-11-26 15:41:29.443582+00	3	10621	119
4365	\N	\N	\N	f	2021-11-26 15:41:29.450748+00	2021-11-26 15:41:29.450763+00	3	10620	119
4366	\N	\N	\N	f	2021-11-26 15:41:29.45854+00	2021-11-26 15:41:29.458557+00	3	10619	119
4367	\N	\N	\N	f	2021-11-26 15:41:29.465698+00	2021-11-26 15:41:29.465713+00	3	10618	119
4368	\N	\N	\N	f	2021-11-26 15:41:29.473484+00	2021-11-26 15:41:29.473497+00	3	10617	119
4369	\N	\N	\N	f	2021-11-26 15:41:29.480552+00	2021-11-26 15:41:29.480567+00	3	10616	119
4370	\N	\N	\N	f	2021-11-26 15:41:29.488231+00	2021-11-26 15:41:29.488246+00	3	10615	119
4371	\N	\N	\N	f	2021-11-26 15:41:29.496587+00	2021-11-26 15:41:29.496602+00	3	10614	119
4372	\N	\N	\N	f	2021-11-26 15:41:29.503952+00	2021-11-26 15:41:29.503968+00	3	10613	119
4373	\N	\N	\N	f	2021-11-26 15:41:29.511317+00	2021-11-26 15:41:29.511334+00	3	10612	119
4374	\N	\N	\N	f	2021-11-26 15:41:29.518643+00	2021-11-26 15:41:29.518659+00	3	10611	119
4375	\N	\N	\N	f	2021-11-26 15:41:29.52639+00	2021-11-26 15:41:29.526406+00	3	10610	119
4376	\N	\N	\N	f	2021-11-26 15:41:29.533367+00	2021-11-26 15:41:29.533382+00	3	10609	119
4377	\N	\N	\N	f	2021-11-26 15:41:29.540369+00	2021-11-26 15:41:29.540385+00	3	10608	119
4378	\N	\N	\N	f	2021-11-26 15:41:29.547132+00	2021-11-26 15:41:29.547145+00	3	10607	119
4379	\N	\N	\N	f	2021-11-26 15:41:29.553963+00	2021-11-26 15:41:29.553975+00	3	10606	119
4380	\N	\N	\N	f	2021-11-26 15:41:29.559983+00	2021-11-26 15:41:29.559994+00	3	10605	119
4381	\N	\N	\N	f	2021-11-26 15:41:29.56705+00	2021-11-26 15:41:29.567062+00	3	10604	119
4382	\N	\N	\N	f	2021-11-26 15:41:29.57396+00	2021-11-26 15:41:29.573972+00	3	10603	119
4383	\N	\N	\N	f	2021-11-26 15:41:29.580491+00	2021-11-26 15:41:29.580503+00	3	10602	119
4384	\N	\N	\N	f	2021-11-26 15:41:29.587791+00	2021-11-26 15:41:29.587808+00	3	10601	119
4385	\N	\N	\N	f	2021-11-26 15:41:29.594641+00	2021-11-26 15:41:29.594653+00	3	10600	119
4386	\N	\N	\N	f	2021-11-26 15:41:29.602118+00	2021-11-26 15:41:29.602136+00	3	10599	119
4387	\N	\N	\N	f	2021-11-26 15:41:29.613622+00	2021-11-26 15:41:29.613639+00	3	10598	119
4388	\N	\N	\N	f	2021-11-26 15:41:29.623548+00	2021-11-26 15:41:29.623562+00	3	10597	119
4389	\N	\N	\N	f	2021-11-26 15:41:29.630822+00	2021-11-26 15:41:29.63084+00	3	10596	119
4390	\N	\N	\N	f	2021-11-26 15:41:29.637905+00	2021-11-26 15:41:29.637918+00	3	10595	119
4391	\N	\N	\N	f	2021-11-26 15:41:29.644695+00	2021-11-26 15:41:29.644707+00	3	10594	119
4392	\N	\N	\N	f	2021-11-26 15:41:29.652361+00	2021-11-26 15:41:29.652375+00	3	10624	119
4393	\N	\N	\N	f	2021-11-26 15:41:29.65954+00	2021-11-26 15:41:29.659552+00	3	10625	119
4394	\N	\N	\N	f	2021-11-26 15:41:29.666834+00	2021-11-26 15:41:29.666848+00	3	10626	119
4395	\N	\N	\N	f	2021-11-26 15:41:29.673859+00	2021-11-26 15:41:29.673872+00	3	10627	119
4396	\N	\N	\N	f	2021-11-26 15:41:29.680426+00	2021-11-26 15:41:29.68044+00	3	10628	119
4397	\N	\N	\N	f	2021-11-26 15:41:29.687369+00	2021-11-26 15:41:29.687384+00	3	10629	119
4398	\N	\N	\N	f	2021-11-26 15:41:29.69383+00	2021-11-26 15:41:29.693842+00	3	10630	119
4399	\N	\N	\N	f	2021-11-26 15:41:29.699789+00	2021-11-26 15:41:29.699801+00	3	10631	119
4400	\N	\N	\N	f	2021-11-26 15:41:29.708391+00	2021-11-26 15:41:29.708405+00	3	10632	119
4401	\N	\N	\N	f	2021-11-26 15:41:29.715603+00	2021-11-26 15:41:29.715623+00	3	10633	119
4402	\N	\N	\N	f	2021-11-26 15:41:29.725552+00	2021-11-26 15:41:29.725565+00	3	10634	119
4403	\N	\N	\N	f	2021-11-26 15:41:29.73274+00	2021-11-26 15:41:29.732752+00	3	10635	119
4404	\N	\N	\N	f	2021-11-26 15:41:29.739907+00	2021-11-26 15:41:29.739919+00	3	10636	119
4405	\N	\N	\N	f	2021-11-26 15:41:29.746897+00	2021-11-26 15:41:29.74691+00	3	10637	119
4406	\N	\N	\N	f	2021-11-26 15:41:29.757648+00	2021-11-26 15:41:29.757663+00	3	10638	119
4407	\N	\N	\N	f	2021-11-26 15:41:29.76392+00	2021-11-26 15:41:29.763933+00	3	10639	119
4408	\N	\N	\N	f	2021-11-26 15:41:29.771388+00	2021-11-26 15:41:29.771402+00	3	10640	119
4409	\N	\N	\N	f	2021-11-26 15:41:29.778781+00	2021-11-26 15:41:29.778795+00	3	10641	119
4410	\N	\N	\N	f	2021-11-26 15:41:29.7854+00	2021-11-26 15:41:29.785413+00	3	10642	119
4411	\N	\N	\N	f	2021-11-26 15:41:29.791784+00	2021-11-26 15:41:29.791796+00	3	10643	119
4412	\N	\N	\N	f	2021-11-26 15:41:29.798526+00	2021-11-26 15:41:29.798538+00	3	10644	119
4413	\N	\N	\N	f	2021-11-26 15:41:29.805695+00	2021-11-26 15:41:29.805708+00	3	10645	119
4414	\N	\N	\N	f	2021-11-26 15:41:29.812907+00	2021-11-26 15:41:29.812921+00	3	10646	119
4415	\N	\N	\N	f	2021-11-26 15:41:29.820292+00	2021-11-26 15:41:29.820305+00	3	10647	119
4416	\N	\N	\N	f	2021-11-26 15:41:29.827549+00	2021-11-26 15:41:29.827561+00	3	10648	119
4417	\N	\N	\N	f	2021-11-26 15:41:29.834045+00	2021-11-26 15:41:29.834058+00	3	10649	119
4418	\N	\N	\N	f	2021-11-26 15:41:29.84103+00	2021-11-26 15:41:29.841042+00	3	10650	119
4419	\N	\N	\N	f	2021-11-26 15:41:29.848166+00	2021-11-26 15:41:29.848178+00	3	10651	119
4420	\N	\N	\N	f	2021-11-26 15:41:29.855112+00	2021-11-26 15:41:29.855126+00	3	10652	119
4421	\N	\N	\N	f	2021-11-26 15:41:29.862348+00	2021-11-26 15:41:29.862361+00	3	10653	119
4422	\N	\N	\N	f	2021-11-26 15:41:29.869657+00	2021-11-26 15:41:29.869674+00	3	10683	119
4423	\N	\N	\N	f	2021-11-26 15:41:29.877013+00	2021-11-26 15:41:29.877026+00	3	10682	119
4424	\N	\N	\N	f	2021-11-26 15:41:29.884413+00	2021-11-26 15:41:29.884425+00	3	10681	119
4425	\N	\N	\N	f	2021-11-26 15:41:29.891657+00	2021-11-26 15:41:29.89167+00	3	10680	119
4426	\N	\N	\N	f	2021-11-26 15:41:29.898771+00	2021-11-26 15:41:29.898785+00	3	10679	119
4427	\N	\N	\N	f	2021-11-26 15:41:29.906225+00	2021-11-26 15:41:29.906242+00	3	10678	119
4428	\N	\N	\N	f	2021-11-26 15:41:29.913767+00	2021-11-26 15:41:29.913786+00	3	10677	119
4429	\N	\N	\N	f	2021-11-26 15:41:29.921148+00	2021-11-26 15:41:29.921161+00	3	10676	119
4430	\N	\N	\N	f	2021-11-26 15:41:29.927718+00	2021-11-26 15:41:29.927731+00	3	10675	119
4431	\N	\N	\N	f	2021-11-26 15:41:29.934607+00	2021-11-26 15:41:29.934621+00	3	10674	119
4432	\N	\N	\N	f	2021-11-26 15:41:29.942173+00	2021-11-26 15:41:29.94219+00	3	10673	119
4433	\N	\N	\N	f	2021-11-26 15:41:29.949223+00	2021-11-26 15:41:29.949239+00	3	10672	119
4434	\N	\N	\N	f	2021-11-26 15:41:29.956764+00	2021-11-26 15:41:29.95678+00	3	10671	119
4435	\N	\N	\N	f	2021-11-26 15:41:29.96483+00	2021-11-26 15:41:29.964847+00	3	10670	119
4436	\N	\N	\N	f	2021-11-26 15:41:29.973056+00	2021-11-26 15:41:29.973072+00	3	10669	119
4437	\N	\N	\N	f	2021-11-26 15:41:29.980912+00	2021-11-26 15:41:29.98093+00	3	10668	119
4438	\N	\N	\N	f	2021-11-26 15:41:29.988272+00	2021-11-26 15:41:29.988286+00	3	10667	119
4439	\N	\N	\N	f	2021-11-26 15:41:29.9957+00	2021-11-26 15:41:29.995712+00	3	10666	119
4440	\N	\N	\N	f	2021-11-26 15:41:30.00272+00	2021-11-26 15:41:30.002733+00	3	10665	119
4441	\N	\N	\N	f	2021-11-26 15:41:30.010268+00	2021-11-26 15:41:30.010281+00	3	10664	119
4442	\N	\N	\N	f	2021-11-26 15:41:30.01767+00	2021-11-26 15:41:30.017688+00	3	10663	119
4443	\N	\N	\N	f	2021-11-26 15:41:30.025415+00	2021-11-26 15:41:30.025431+00	3	10662	119
4444	\N	\N	\N	f	2021-11-26 15:41:30.033329+00	2021-11-26 15:41:30.033346+00	3	10661	119
4445	\N	\N	\N	f	2021-11-26 15:41:30.041424+00	2021-11-26 15:41:30.04144+00	3	10660	119
4446	\N	\N	\N	f	2021-11-26 15:41:30.049186+00	2021-11-26 15:41:30.049204+00	3	10659	119
4447	\N	\N	\N	f	2021-11-26 15:41:30.057164+00	2021-11-26 15:41:30.057181+00	3	10658	119
4448	\N	\N	\N	f	2021-11-26 15:41:30.065032+00	2021-11-26 15:41:30.065048+00	3	10657	119
4449	\N	\N	\N	f	2021-11-26 15:41:30.073015+00	2021-11-26 15:41:30.073032+00	3	10656	119
4450	\N	\N	\N	f	2021-11-26 15:41:30.080858+00	2021-11-26 15:41:30.080875+00	3	10655	119
4451	\N	\N	\N	f	2021-11-26 15:41:30.088681+00	2021-11-26 15:41:30.088698+00	3	10654	119
4452	\N	\N	\N	f	2021-11-26 15:41:30.096628+00	2021-11-26 15:41:30.096647+00	3	10684	119
4453	\N	\N	\N	f	2021-11-26 15:41:30.104115+00	2021-11-26 15:41:30.104131+00	3	10685	119
4454	\N	\N	\N	f	2021-11-26 15:41:30.112662+00	2021-11-26 15:41:30.112685+00	3	10686	119
4455	\N	\N	\N	f	2021-11-26 15:41:30.12087+00	2021-11-26 15:41:30.120888+00	3	10687	119
4456	\N	\N	\N	f	2021-11-26 15:41:30.129087+00	2021-11-26 15:41:30.129104+00	3	10688	119
4457	\N	\N	\N	f	2021-11-26 15:41:30.137731+00	2021-11-26 15:41:30.137748+00	3	10689	119
4458	\N	\N	\N	f	2021-11-26 15:41:30.145693+00	2021-11-26 15:41:30.145709+00	3	10690	119
4459	\N	\N	\N	f	2021-11-26 15:41:30.153234+00	2021-11-26 15:41:30.153249+00	3	10691	119
4460	\N	\N	\N	f	2021-11-26 15:41:30.160518+00	2021-11-26 15:41:30.160534+00	3	10692	119
4461	\N	\N	\N	f	2021-11-26 15:41:30.16833+00	2021-11-26 15:41:30.168346+00	3	10693	119
4462	\N	\N	\N	f	2021-11-26 15:41:30.175199+00	2021-11-26 15:41:30.175211+00	3	10694	119
4463	\N	\N	\N	f	2021-11-26 15:41:30.181469+00	2021-11-26 15:41:30.181485+00	3	10695	119
4464	\N	\N	\N	f	2021-11-26 15:41:30.189914+00	2021-11-26 15:41:30.189932+00	3	10696	119
4465	\N	\N	\N	f	2021-11-26 15:41:30.197849+00	2021-11-26 15:41:30.197861+00	3	10697	119
4466	\N	\N	\N	f	2021-11-26 15:41:30.204693+00	2021-11-26 15:41:30.20471+00	3	10698	119
4467	\N	\N	\N	f	2021-11-26 15:41:30.212279+00	2021-11-26 15:41:30.212291+00	3	10699	119
4468	\N	\N	\N	f	2021-11-26 15:41:30.22129+00	2021-11-26 15:41:30.22131+00	3	10700	119
4469	\N	\N	\N	f	2021-11-26 15:41:30.229965+00	2021-11-26 15:41:30.229981+00	3	10701	119
4470	\N	\N	\N	f	2021-11-26 15:41:30.239299+00	2021-11-26 15:41:30.239316+00	3	10702	119
4471	\N	\N	\N	f	2021-11-26 15:41:30.247527+00	2021-11-26 15:41:30.247543+00	3	10703	119
4472	\N	\N	\N	f	2021-11-26 15:41:30.256117+00	2021-11-26 15:41:30.256135+00	3	10704	119
4473	\N	\N	\N	f	2021-11-26 15:41:30.264678+00	2021-11-26 15:41:30.264696+00	3	10705	119
4474	\N	\N	\N	f	2021-11-26 15:41:30.272822+00	2021-11-26 15:41:30.272836+00	3	10706	119
4475	\N	\N	\N	f	2021-11-26 15:41:30.280389+00	2021-11-26 15:41:30.280406+00	3	10707	119
4476	\N	\N	\N	f	2021-11-26 15:41:30.287885+00	2021-11-26 15:41:30.287902+00	3	10708	119
4477	\N	\N	\N	f	2021-11-26 15:41:30.295414+00	2021-11-26 15:41:30.295432+00	3	10709	119
4478	\N	\N	\N	f	2021-11-26 15:41:30.303445+00	2021-11-26 15:41:30.303464+00	3	10710	119
4479	\N	\N	\N	f	2021-11-26 15:41:30.311321+00	2021-11-26 15:41:30.311338+00	3	10711	119
4480	\N	\N	\N	f	2021-11-26 15:41:30.31946+00	2021-11-26 15:41:30.319481+00	3	10712	119
4481	\N	\N	\N	f	2021-11-26 15:41:30.32734+00	2021-11-26 15:41:30.327371+00	3	10713	119
4482	\N	\N	\N	f	2021-11-26 15:41:30.334734+00	2021-11-26 15:41:30.334751+00	3	10743	119
4483	\N	\N	\N	f	2021-11-26 15:41:30.34331+00	2021-11-26 15:41:30.343326+00	3	10742	119
4484	\N	\N	\N	f	2021-11-26 15:41:30.350857+00	2021-11-26 15:41:30.350875+00	3	10741	119
4485	\N	\N	\N	f	2021-11-26 15:41:30.357829+00	2021-11-26 15:41:30.357842+00	3	10740	119
4486	\N	\N	\N	f	2021-11-26 15:41:30.365706+00	2021-11-26 15:41:30.365719+00	3	10739	119
4487	\N	\N	\N	f	2021-11-26 15:41:30.372766+00	2021-11-26 15:41:30.37278+00	3	10738	119
4488	\N	\N	\N	f	2021-11-26 15:41:30.379513+00	2021-11-26 15:41:30.379525+00	3	10737	119
4489	\N	\N	\N	f	2021-11-26 15:41:30.38976+00	2021-11-26 15:41:30.389772+00	3	10736	119
4490	\N	\N	\N	f	2021-11-26 15:41:30.39642+00	2021-11-26 15:41:30.396433+00	3	10735	119
4491	\N	\N	\N	f	2021-11-26 15:41:30.40273+00	2021-11-26 15:41:30.402748+00	3	10734	119
4492	\N	\N	\N	f	2021-11-26 15:41:30.409873+00	2021-11-26 15:41:30.409885+00	3	10733	119
4493	\N	\N	\N	f	2021-11-26 15:41:30.416479+00	2021-11-26 15:41:30.416491+00	3	10732	119
4494	\N	\N	\N	f	2021-11-26 15:41:30.424139+00	2021-11-26 15:41:30.424156+00	3	10731	119
4495	\N	\N	\N	f	2021-11-26 15:41:30.432323+00	2021-11-26 15:41:30.432341+00	3	10730	119
4496	\N	\N	\N	f	2021-11-26 15:41:30.441522+00	2021-11-26 15:41:30.441542+00	3	10729	119
4497	\N	\N	\N	f	2021-11-26 15:41:30.449609+00	2021-11-26 15:41:30.449623+00	3	10728	119
4498	\N	\N	\N	f	2021-11-26 15:41:30.456247+00	2021-11-26 15:41:30.45626+00	3	10727	119
4499	\N	\N	\N	f	2021-11-26 15:41:30.462871+00	2021-11-26 15:41:30.462884+00	3	10726	119
4500	\N	\N	\N	f	2021-11-26 15:41:30.468997+00	2021-11-26 15:41:30.469008+00	3	10725	119
4501	\N	\N	\N	f	2021-11-26 15:41:30.475091+00	2021-11-26 15:41:30.475103+00	3	10724	119
4502	\N	\N	\N	f	2021-11-26 15:41:30.480963+00	2021-11-26 15:41:30.480975+00	3	10723	119
4503	\N	\N	\N	f	2021-11-26 15:41:30.488416+00	2021-11-26 15:41:30.488429+00	3	10722	119
4504	\N	\N	\N	f	2021-11-26 15:41:30.49471+00	2021-11-26 15:41:30.494722+00	3	10721	119
4505	\N	\N	\N	f	2021-11-26 15:41:30.500898+00	2021-11-26 15:41:30.50091+00	3	10720	119
4506	\N	\N	\N	f	2021-11-26 15:41:30.507292+00	2021-11-26 15:41:30.507304+00	3	10719	119
4507	\N	\N	\N	f	2021-11-26 15:41:30.51336+00	2021-11-26 15:41:30.513372+00	3	10718	119
4508	\N	\N	\N	f	2021-11-26 15:41:30.520932+00	2021-11-26 15:41:30.520945+00	3	10717	119
4509	\N	\N	\N	f	2021-11-26 15:41:30.527637+00	2021-11-26 15:41:30.52765+00	3	10716	119
4510	\N	\N	\N	f	2021-11-26 15:41:30.533904+00	2021-11-26 15:41:30.533914+00	3	10715	119
4511	\N	\N	\N	f	2021-11-26 15:41:30.540479+00	2021-11-26 15:41:30.540492+00	3	10714	119
4512	\N	\N	\N	f	2021-11-26 15:41:30.546564+00	2021-11-26 15:41:30.546576+00	3	10744	119
4513	\N	\N	\N	f	2021-11-26 15:41:30.55285+00	2021-11-26 15:41:30.552878+00	3	10745	119
4514	\N	\N	\N	f	2021-11-26 15:41:30.559445+00	2021-11-26 15:41:30.559457+00	3	10746	119
4515	\N	\N	\N	f	2021-11-26 15:41:30.565494+00	2021-11-26 15:41:30.565506+00	3	10747	119
4516	\N	\N	\N	f	2021-11-26 15:41:30.571931+00	2021-11-26 15:41:30.571943+00	3	10748	119
4517	\N	\N	\N	f	2021-11-26 15:41:30.578234+00	2021-11-26 15:41:30.578246+00	3	10749	119
4518	\N	\N	\N	f	2021-11-26 15:41:30.584297+00	2021-11-26 15:41:30.584307+00	3	10750	119
4519	\N	\N	\N	f	2021-11-26 15:41:30.590304+00	2021-11-26 15:41:30.590315+00	3	10751	119
4520	\N	\N	\N	f	2021-11-26 15:41:30.596605+00	2021-11-26 15:41:30.596616+00	3	10752	119
4521	\N	\N	\N	f	2021-11-26 15:41:30.603178+00	2021-11-26 15:41:30.603193+00	3	10753	119
4522	\N	\N	\N	f	2021-11-26 15:41:30.609873+00	2021-11-26 15:41:30.609885+00	3	10754	119
4523	\N	\N	\N	f	2021-11-26 15:41:30.6158+00	2021-11-26 15:41:30.615809+00	3	10755	119
4524	\N	\N	\N	f	2021-11-26 15:41:30.622632+00	2021-11-26 15:41:30.622644+00	3	10756	119
4525	\N	\N	\N	f	2021-11-26 15:41:30.629101+00	2021-11-26 15:41:30.629114+00	3	10757	119
4526	\N	\N	\N	f	2021-11-26 15:41:30.635493+00	2021-11-26 15:41:30.635503+00	3	10758	119
4527	\N	\N	\N	f	2021-11-26 15:41:30.64174+00	2021-11-26 15:41:30.641752+00	3	10759	119
4528	\N	\N	\N	f	2021-11-26 15:41:30.647638+00	2021-11-26 15:41:30.647647+00	3	10760	119
4529	\N	\N	\N	f	2021-11-26 15:41:30.653189+00	2021-11-26 15:41:30.653203+00	3	10761	119
4530	\N	\N	\N	f	2021-11-26 15:41:30.659746+00	2021-11-26 15:41:30.659758+00	3	10762	119
4531	\N	\N	\N	f	2021-11-26 15:41:30.665355+00	2021-11-26 15:41:30.665366+00	3	10763	119
4532	\N	\N	\N	f	2021-11-26 15:41:30.671535+00	2021-11-26 15:41:30.671548+00	3	10764	119
4533	\N	\N	\N	f	2021-11-26 15:41:30.677781+00	2021-11-26 15:41:30.677793+00	3	10765	119
4534	\N	\N	\N	f	2021-11-26 15:41:30.683296+00	2021-11-26 15:41:30.683306+00	3	10766	119
4535	\N	\N	\N	f	2021-11-26 15:41:30.689572+00	2021-11-26 15:41:30.689583+00	3	10767	119
4536	\N	\N	\N	f	2021-11-26 15:41:30.695886+00	2021-11-26 15:41:30.695898+00	3	10768	119
4537	\N	\N	\N	f	2021-11-26 15:41:30.701871+00	2021-11-26 15:41:30.701882+00	3	10769	119
4538	\N	\N	\N	f	2021-11-26 15:41:30.707596+00	2021-11-26 15:41:30.707607+00	3	10770	119
4539	\N	\N	\N	f	2021-11-26 15:41:30.713563+00	2021-11-26 15:41:30.713575+00	3	10771	119
4540	\N	\N	\N	f	2021-11-26 15:41:30.71969+00	2021-11-26 15:41:30.719702+00	3	10772	119
4541	\N	\N	\N	f	2021-11-26 15:41:30.725882+00	2021-11-26 15:41:30.725894+00	3	10773	119
4542	\N	\N	\N	f	2021-11-26 15:41:30.732522+00	2021-11-26 15:41:30.732531+00	3	10803	119
4543	\N	\N	\N	f	2021-11-26 15:41:30.738717+00	2021-11-26 15:41:30.738727+00	3	10802	119
4544	\N	\N	\N	f	2021-11-26 15:41:30.744698+00	2021-11-26 15:41:30.744707+00	3	10801	119
4545	\N	\N	\N	f	2021-11-26 15:41:30.7507+00	2021-11-26 15:41:30.750709+00	3	10800	119
4546	\N	\N	\N	f	2021-11-26 15:41:30.757146+00	2021-11-26 15:41:30.757158+00	3	10799	119
4547	\N	\N	\N	f	2021-11-26 15:41:30.763535+00	2021-11-26 15:41:30.763546+00	3	10798	119
4548	\N	\N	\N	f	2021-11-26 15:41:30.770376+00	2021-11-26 15:41:30.770389+00	3	10797	119
4549	\N	\N	\N	f	2021-11-26 15:41:30.777356+00	2021-11-26 15:41:30.777367+00	3	10796	119
4550	\N	\N	\N	f	2021-11-26 15:41:30.78318+00	2021-11-26 15:41:30.78319+00	3	10795	119
4551	\N	\N	\N	f	2021-11-26 15:41:30.789002+00	2021-11-26 15:41:30.789012+00	3	10794	119
4552	\N	\N	\N	f	2021-11-26 15:41:30.794743+00	2021-11-26 15:41:30.794752+00	3	10793	119
4553	\N	\N	\N	f	2021-11-26 15:41:30.800222+00	2021-11-26 15:41:30.800233+00	3	10792	119
4554	\N	\N	\N	f	2021-11-26 15:41:30.806807+00	2021-11-26 15:41:30.806822+00	3	10791	119
4555	\N	\N	\N	f	2021-11-26 15:41:30.812491+00	2021-11-26 15:41:30.812502+00	3	10790	119
4556	\N	\N	\N	f	2021-11-26 15:41:30.818194+00	2021-11-26 15:41:30.818204+00	3	10789	119
4557	\N	\N	\N	f	2021-11-26 15:41:30.824129+00	2021-11-26 15:41:30.824139+00	3	10788	119
4558	\N	\N	\N	f	2021-11-26 15:41:30.829888+00	2021-11-26 15:41:30.829898+00	3	10787	119
4559	\N	\N	\N	f	2021-11-26 15:41:30.835463+00	2021-11-26 15:41:30.835472+00	3	10786	119
4560	\N	\N	\N	f	2021-11-26 15:41:30.842223+00	2021-11-26 15:41:30.842235+00	3	10785	119
4561	\N	\N	\N	f	2021-11-26 15:41:30.848348+00	2021-11-26 15:41:30.848358+00	3	10784	119
4562	\N	\N	\N	f	2021-11-26 15:41:30.854129+00	2021-11-26 15:41:30.85414+00	3	10783	119
4563	\N	\N	\N	f	2021-11-26 15:41:30.859494+00	2021-11-26 15:41:30.859503+00	3	10782	119
4564	\N	\N	\N	f	2021-11-26 15:41:30.865483+00	2021-11-26 15:41:30.865495+00	3	10781	119
4565	\N	\N	\N	f	2021-11-26 15:41:30.871186+00	2021-11-26 15:41:30.871197+00	3	10780	119
4566	\N	\N	\N	f	2021-11-26 15:41:30.87696+00	2021-11-26 15:41:30.876971+00	3	10779	119
4567	\N	\N	\N	f	2021-11-26 15:41:30.882878+00	2021-11-26 15:41:30.882887+00	3	10778	119
4568	\N	\N	\N	f	2021-11-26 15:41:30.888835+00	2021-11-26 15:41:30.888844+00	3	10777	119
4569	\N	\N	\N	f	2021-11-26 15:41:30.89469+00	2021-11-26 15:41:30.894699+00	3	10776	119
4570	\N	\N	\N	f	2021-11-26 15:41:30.900725+00	2021-11-26 15:41:30.900734+00	3	10775	119
4571	\N	\N	\N	f	2021-11-26 15:41:30.907379+00	2021-11-26 15:41:30.907393+00	3	10774	119
4572	\N	\N	\N	f	2021-11-26 15:41:30.913515+00	2021-11-26 15:41:30.913525+00	3	10804	119
4573	\N	\N	\N	f	2021-11-26 15:41:30.919469+00	2021-11-26 15:41:30.91948+00	3	10805	119
4574	\N	\N	\N	f	2021-11-26 15:41:30.925562+00	2021-11-26 15:41:30.925573+00	3	10806	119
4575	\N	\N	\N	f	2021-11-26 15:41:30.931275+00	2021-11-26 15:41:30.931286+00	3	10807	119
4576	\N	\N	\N	f	2021-11-26 15:41:30.936852+00	2021-11-26 15:41:30.936863+00	3	10808	119
4577	\N	\N	\N	f	2021-11-26 15:41:30.942254+00	2021-11-26 15:41:30.942264+00	3	10809	119
4578	\N	\N	\N	f	2021-11-26 15:41:30.947575+00	2021-11-26 15:41:30.947583+00	3	10810	119
4579	\N	\N	\N	f	2021-11-26 15:41:30.95335+00	2021-11-26 15:41:30.953362+00	3	10811	119
4580	\N	\N	\N	f	2021-11-26 15:41:30.959536+00	2021-11-26 15:41:30.959547+00	3	10812	119
4581	\N	\N	\N	f	2021-11-26 15:41:30.965058+00	2021-11-26 15:41:30.965068+00	3	10813	119
4582	\N	\N	\N	f	2021-11-26 15:41:30.971202+00	2021-11-26 15:41:30.971212+00	3	10814	119
4583	\N	\N	\N	f	2021-11-26 15:41:30.976732+00	2021-11-26 15:41:30.97674+00	3	10815	119
4584	\N	\N	\N	f	2021-11-26 15:41:30.981879+00	2021-11-26 15:41:30.981887+00	3	10816	119
4585	\N	\N	\N	f	2021-11-26 15:41:30.987075+00	2021-11-26 15:41:30.987088+00	3	10817	119
4586	\N	\N	\N	f	2021-11-26 15:41:30.993249+00	2021-11-26 15:41:30.99326+00	3	10818	119
4587	\N	\N	\N	f	2021-11-26 15:41:30.998981+00	2021-11-26 15:41:30.99899+00	3	10819	119
4588	\N	\N	\N	f	2021-11-26 15:41:31.00469+00	2021-11-26 15:41:31.004702+00	3	10820	119
4589	\N	\N	\N	f	2021-11-26 15:41:31.009997+00	2021-11-26 15:41:31.010005+00	3	10821	119
4590	\N	\N	\N	f	2021-11-26 15:41:31.015372+00	2021-11-26 15:41:31.015385+00	3	10822	119
4591	\N	\N	\N	f	2021-11-26 15:41:31.021488+00	2021-11-26 15:41:31.021499+00	3	10823	119
4592	\N	\N	\N	f	2021-11-26 15:41:31.027375+00	2021-11-26 15:41:31.027387+00	3	10824	119
4593	\N	\N	\N	f	2021-11-26 15:41:31.033041+00	2021-11-26 15:41:31.033051+00	3	10825	119
4594	\N	\N	\N	f	2021-11-26 15:41:31.038905+00	2021-11-26 15:41:31.038913+00	3	10826	119
4595	\N	\N	\N	f	2021-11-26 15:41:31.04489+00	2021-11-26 15:41:31.044898+00	3	10827	119
4596	\N	\N	\N	f	2021-11-26 15:41:31.050805+00	2021-11-26 15:41:31.050814+00	3	10828	119
4597	\N	\N	\N	f	2021-11-26 15:41:31.05675+00	2021-11-26 15:41:31.056761+00	3	10829	119
4598	\N	\N	\N	f	2021-11-26 15:41:31.062491+00	2021-11-26 15:41:31.062501+00	3	10830	119
4599	\N	\N	\N	f	2021-11-26 15:41:31.0682+00	2021-11-26 15:41:31.068209+00	3	10831	119
4600	\N	\N	\N	f	2021-11-26 15:41:31.07446+00	2021-11-26 15:41:31.074475+00	3	10832	119
4601	\N	\N	\N	f	2021-11-26 15:41:31.080226+00	2021-11-26 15:41:31.080236+00	3	10833	119
4602	\N	\N	\N	f	2021-11-26 15:41:31.085446+00	2021-11-26 15:41:31.085455+00	3	10863	119
4603	\N	\N	\N	f	2021-11-26 15:41:31.091514+00	2021-11-26 15:41:31.091524+00	3	10862	119
4604	\N	\N	\N	f	2021-11-26 15:41:31.097427+00	2021-11-26 15:41:31.097436+00	3	10861	119
4605	\N	\N	\N	f	2021-11-26 15:41:31.10299+00	2021-11-26 15:41:31.103+00	3	10860	119
4606	\N	\N	\N	f	2021-11-26 15:41:31.108861+00	2021-11-26 15:41:31.108875+00	3	10859	119
4607	\N	\N	\N	f	2021-11-26 15:41:31.115197+00	2021-11-26 15:41:31.115207+00	3	10858	119
4608	\N	\N	\N	f	2021-11-26 15:41:31.121107+00	2021-11-26 15:41:31.121121+00	3	10857	119
4609	\N	\N	\N	f	2021-11-26 15:41:31.126735+00	2021-11-26 15:41:31.126745+00	3	10856	119
4610	\N	\N	\N	f	2021-11-26 15:41:31.132108+00	2021-11-26 15:41:31.132116+00	3	10855	119
4611	\N	\N	\N	f	2021-11-26 15:41:31.13856+00	2021-11-26 15:41:31.138571+00	3	10854	119
4612	\N	\N	\N	f	2021-11-26 15:41:31.144277+00	2021-11-26 15:41:31.144287+00	3	10853	119
4613	\N	\N	\N	f	2021-11-26 15:41:31.149596+00	2021-11-26 15:41:31.149605+00	3	10852	119
4614	\N	\N	\N	f	2021-11-26 15:41:31.156044+00	2021-11-26 15:41:31.156054+00	3	10851	119
4615	\N	\N	\N	f	2021-11-26 15:41:31.161533+00	2021-11-26 15:41:31.161541+00	3	10850	119
4616	\N	\N	\N	f	2021-11-26 15:41:31.167374+00	2021-11-26 15:41:31.167384+00	3	10849	119
4617	\N	\N	\N	f	2021-11-26 15:41:31.173548+00	2021-11-26 15:41:31.173559+00	3	10848	119
4618	\N	\N	\N	f	2021-11-26 15:41:31.179064+00	2021-11-26 15:41:31.179074+00	3	10847	119
4619	\N	\N	\N	f	2021-11-26 15:41:31.18461+00	2021-11-26 15:41:31.184618+00	3	10846	119
4620	\N	\N	\N	f	2021-11-26 15:41:31.190149+00	2021-11-26 15:41:31.190158+00	3	10845	119
4621	\N	\N	\N	f	2021-11-26 15:41:31.195905+00	2021-11-26 15:41:31.195916+00	3	10844	119
4622	\N	\N	\N	f	2021-11-26 15:41:31.201426+00	2021-11-26 15:41:31.201451+00	3	10843	119
4623	\N	\N	\N	f	2021-11-26 15:41:31.20738+00	2021-11-26 15:41:31.207392+00	3	10842	119
4624	\N	\N	\N	f	2021-11-26 15:41:31.213234+00	2021-11-26 15:41:31.213244+00	3	10841	119
4625	\N	\N	\N	f	2021-11-26 15:41:31.219336+00	2021-11-26 15:41:31.219352+00	3	10840	119
4626	\N	\N	\N	f	2021-11-26 15:41:31.225346+00	2021-11-26 15:41:31.225358+00	3	10839	119
4627	\N	\N	\N	f	2021-11-26 15:41:31.231281+00	2021-11-26 15:41:31.231291+00	3	10838	119
4628	\N	\N	\N	f	2021-11-26 15:41:31.236679+00	2021-11-26 15:41:31.23669+00	3	10837	119
4629	\N	\N	\N	f	2021-11-26 15:41:31.242117+00	2021-11-26 15:41:31.242127+00	3	10836	119
4630	\N	\N	\N	f	2021-11-26 15:41:31.247138+00	2021-11-26 15:41:31.247146+00	3	10835	119
4631	\N	\N	\N	f	2021-11-26 15:41:31.252067+00	2021-11-26 15:41:31.252075+00	3	10834	119
\.


--
-- Data for Name: user_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_user (id, last_login, phone_number, password, first_name, last_name, profile_picture, role, email, birth_date, gender, one_time_password, one_time_password_creation_date, is_banned, created_at, updated_at, is_admin, is_active, is_verified) FROM stdin;
1	2021-11-26 09:30:53.27998+00	\N	pbkdf2_sha256$120000$23rpFmIfrnF3$srdL2CJwLcOWL1zi412IAl2ZRfvrOE9LkDsGp4Pr7ws=	\N	\N		2	mohammad_hasani@live.com	\N	\N	\N	\N	f	2021-11-25 16:43:19.597024+00	2021-11-25 16:43:19.607451+00	t	t	f
14	\N	\N	$JAEfa^3r8	\N	\N		1	richardsonlaura@example.com	\N	\N	\N	\N	f	2021-11-26 14:52:51.373426+00	2021-11-26 14:52:51.373434+00	f	t	f
15	\N	\N	ny+E1HwHHl	\N	\N		1	allenpatterson@example.org	\N	\N	\N	\N	f	2021-11-26 14:52:51.38724+00	2021-11-26 14:52:51.387245+00	f	t	f
16	\N	\N	MM2R7MKi(F	\N	\N		1	esmith@example.org	\N	\N	\N	\N	f	2021-11-26 14:52:51.406034+00	2021-11-26 14:52:51.406039+00	f	t	f
17	\N	\N	1@kfF5thzR	\N	\N		1	wilkinsonlisa@example.net	\N	\N	\N	\N	f	2021-11-26 14:52:51.426237+00	2021-11-26 14:52:51.426242+00	f	t	f
18	\N	\N	&0OzN$unXp	\N	\N		1	connorgarcia@example.net	\N	\N	\N	\N	f	2021-11-26 14:52:51.435324+00	2021-11-26 14:52:51.435331+00	f	t	f
19	\N	\N	#5YZp&@bNv	\N	\N		1	sara85@example.org	\N	\N	\N	\N	f	2021-11-26 14:54:40.542855+00	2021-11-26 14:54:40.542861+00	f	t	f
20	\N	\N	a23J1x^d!!	\N	\N		1	qcolon@example.net	\N	\N	\N	\N	f	2021-11-26 14:54:40.563955+00	2021-11-26 14:54:40.563962+00	f	t	f
21	\N	\N	60dpoJMk@$	\N	\N		1	tamara32@example.com	\N	\N	\N	\N	f	2021-11-26 14:54:40.582293+00	2021-11-26 14:54:40.582298+00	f	t	f
22	\N	\N	#^CtKiDR1%	\N	\N		1	velezrebecca@example.org	\N	\N	\N	\N	f	2021-11-26 14:54:40.602064+00	2021-11-26 14:54:40.602069+00	f	t	f
23	\N	\N	U*1F6^qRSO	\N	\N		1	meredith91@example.net	\N	\N	\N	\N	f	2021-11-26 14:54:40.609584+00	2021-11-26 14:54:40.609589+00	f	t	f
24	\N	\N	&_Xt1He)r)	\N	\N		1	amandajohnson@example.com	\N	\N	\N	\N	f	2021-11-26 14:57:12.853072+00	2021-11-26 14:57:12.85308+00	f	t	f
25	\N	\N	(n%b0zEai+	\N	\N		1	russelljones@example.com	\N	\N	\N	\N	f	2021-11-26 14:57:12.876788+00	2021-11-26 14:57:12.8768+00	f	t	f
26	\N	\N	j!8UgvpyV^	\N	\N		1	kaiserjames@example.net	\N	\N	\N	\N	f	2021-11-26 14:57:12.895447+00	2021-11-26 14:57:12.895456+00	f	t	f
27	\N	\N	%mZ_qjAtz3	\N	\N		1	emily23@example.com	\N	\N	\N	\N	f	2021-11-26 14:57:12.915298+00	2021-11-26 14:57:12.915304+00	f	t	f
28	\N	\N	t4fSGORc#R	\N	\N		1	meaganturner@example.org	\N	\N	\N	\N	f	2021-11-26 14:57:12.922858+00	2021-11-26 14:57:12.922863+00	f	t	f
29	\N	\N	X8)qO2Fm*C	\N	\N		1	hudsonshannon@example.net	\N	\N	\N	\N	f	2021-11-26 15:07:35.864125+00	2021-11-26 15:07:35.864132+00	f	t	f
30	\N	\N	0V!D8UoY#T	\N	\N		1	kevin82@example.com	\N	\N	\N	\N	f	2021-11-26 15:11:36.818199+00	2021-11-26 15:11:36.818207+00	f	t	f
31	\N	\N	i0O6Z9lt%7	\N	\N		1	josegonzales@example.net	\N	\N	\N	\N	f	2021-11-26 15:11:36.833403+00	2021-11-26 15:11:36.83341+00	f	t	f
32	\N	\N	U7%2ZTsrPe	\N	\N		1	allenchavez@example.com	\N	\N	\N	\N	f	2021-11-26 15:11:36.85674+00	2021-11-26 15:11:36.856745+00	f	t	f
33	\N	\N	_7ZhsQ!h1e	\N	\N		1	asmith@example.net	\N	\N	\N	\N	f	2021-11-26 15:11:36.884081+00	2021-11-26 15:11:36.884086+00	f	t	f
34	\N	\N	%Di3lLtd5_	\N	\N		1	tchandler@example.net	\N	\N	\N	\N	f	2021-11-26 15:11:36.893017+00	2021-11-26 15:11:36.893022+00	f	t	f
35	\N	\N	1hOgj4iy)4	\N	\N		1	jamesrita@example.net	\N	\N	\N	\N	f	2021-11-26 15:11:46.674914+00	2021-11-26 15:11:46.674921+00	f	t	f
36	\N	\N	jr@8BJt1%m	\N	\N		1	dmaynard@example.com	\N	\N	\N	\N	f	2021-11-26 15:11:46.704984+00	2021-11-26 15:11:46.704995+00	f	t	f
37	\N	\N	)fFraQkSG2	\N	\N		1	ypearson@example.org	\N	\N	\N	\N	f	2021-11-26 15:11:46.730636+00	2021-11-26 15:11:46.730642+00	f	t	f
38	\N	\N	XJ2LSzV6^&	\N	\N		1	chandlerpatrick@example.com	\N	\N	\N	\N	f	2021-11-26 15:11:46.758588+00	2021-11-26 15:11:46.758595+00	f	t	f
39	\N	\N	I79J1Jnr%F	\N	\N		1	qfrancis@example.net	\N	\N	\N	\N	f	2021-11-26 15:11:46.767455+00	2021-11-26 15:11:46.767461+00	f	t	f
40	\N	\N	%uU7E5jcMY	\N	\N		1	rebeccakeller@example.org	\N	\N	\N	\N	f	2021-11-26 15:15:49.794495+00	2021-11-26 15:15:49.794502+00	f	t	f
41	\N	\N	$&8D4Ff+HV	\N	\N		1	dgonzales@example.com	\N	\N	\N	\N	f	2021-11-26 15:15:49.839445+00	2021-11-26 15:15:49.839467+00	f	t	f
42	\N	\N	@4@Di@9ZSG	\N	\N		1	janet21@example.com	\N	\N	\N	\N	f	2021-11-26 15:15:49.882484+00	2021-11-26 15:15:49.882492+00	f	t	f
43	\N	\N	tyb8WlCQc+	\N	\N		1	plawrence@example.com	\N	\N	\N	\N	f	2021-11-26 15:15:49.917933+00	2021-11-26 15:15:49.917948+00	f	t	f
44	\N	\N	0zBesut6(R	\N	\N		1	gileskelly@example.com	\N	\N	\N	\N	f	2021-11-26 15:15:49.932951+00	2021-11-26 15:15:49.932965+00	f	t	f
45	\N	\N	P$7MvJnB@(	\N	\N		1	burnsjohnathan@example.com	\N	\N	\N	\N	f	2021-11-26 15:15:55.965994+00	2021-11-26 15:15:55.966001+00	f	t	f
46	\N	\N	6YIS+_Dj&h	\N	\N		1	mccannjulie@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:48.559702+00	2021-11-26 15:22:48.55971+00	f	t	f
47	\N	\N	)IG6mBdi7G	\N	\N		1	mcdanielbrent@example.com	\N	\N	\N	\N	f	2021-11-26 15:22:48.581509+00	2021-11-26 15:22:48.581514+00	f	t	f
48	\N	\N	#I9c6KVb2E	\N	\N		1	moralesmark@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:48.60381+00	2021-11-26 15:22:48.603817+00	f	t	f
49	\N	\N	k@bG)3NwL9	\N	\N		1	johnsonlisa@example.net	\N	\N	\N	\N	f	2021-11-26 15:22:48.630325+00	2021-11-26 15:22:48.630331+00	f	t	f
50	\N	\N	5DsWnkdT#u	\N	\N		1	psilva@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:48.638479+00	2021-11-26 15:22:48.638485+00	f	t	f
51	\N	\N	@F87WFOxGx	\N	\N		1	brendajuarez@example.net	\N	\N	\N	\N	f	2021-11-26 15:22:52.695991+00	2021-11-26 15:22:52.696007+00	f	t	f
52	\N	\N	)6(QFNirr5	\N	\N		1	richardsallen@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:52.725574+00	2021-11-26 15:22:52.72558+00	f	t	f
53	\N	\N	*9EMK3hw3r	\N	\N		1	steven15@example.com	\N	\N	\N	\N	f	2021-11-26 15:22:52.750898+00	2021-11-26 15:22:52.750906+00	f	t	f
54	\N	\N	8IQp!Le)$2	\N	\N		1	cwhite@example.com	\N	\N	\N	\N	f	2021-11-26 15:22:52.778468+00	2021-11-26 15:22:52.778474+00	f	t	f
55	\N	\N	_0F0KgFiM5	\N	\N		1	robertsmitchell@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:52.786484+00	2021-11-26 15:22:52.786491+00	f	t	f
56	\N	\N	dRhQ$pk@*9	\N	\N		1	wilsoncrystal@example.net	\N	\N	\N	\N	f	2021-11-26 15:22:56.416086+00	2021-11-26 15:22:56.416094+00	f	t	f
57	\N	\N	eP8LAKlO$h	\N	\N		1	joseph07@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:56.445607+00	2021-11-26 15:22:56.445629+00	f	t	f
58	\N	\N	4DNs!l&u@8	\N	\N		1	bthomas@example.com	\N	\N	\N	\N	f	2021-11-26 15:22:56.482642+00	2021-11-26 15:22:56.48265+00	f	t	f
59	\N	\N	!$*x6Gf)ky	\N	\N		1	khernandez@example.net	\N	\N	\N	\N	f	2021-11-26 15:22:56.509451+00	2021-11-26 15:22:56.509456+00	f	t	f
60	\N	\N	4R!KEqOn+5	\N	\N		1	kathleen00@example.org	\N	\N	\N	\N	f	2021-11-26 15:22:56.517374+00	2021-11-26 15:22:56.517382+00	f	t	f
61	\N	\N	Da4!A1pSF(	\N	\N		1	vsmith@example.org	\N	\N	\N	\N	f	2021-11-26 15:23:02.970787+00	2021-11-26 15:23:02.970795+00	f	t	f
62	\N	\N	V28GxyH$*G	\N	\N		1	victorhudson@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:02.994515+00	2021-11-26 15:23:02.994521+00	f	t	f
63	\N	\N	R%5jaY&yQg	\N	\N		1	tmiller@example.org	\N	\N	\N	\N	f	2021-11-26 15:23:03.017001+00	2021-11-26 15:23:03.01701+00	f	t	f
64	\N	\N	%QD*7Wi$_S	\N	\N		1	reyeswhitney@example.org	\N	\N	\N	\N	f	2021-11-26 15:23:03.043983+00	2021-11-26 15:23:03.043989+00	f	t	f
65	\N	\N	e(4YhU8H&x	\N	\N		1	nhoover@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:03.052748+00	2021-11-26 15:23:03.052755+00	f	t	f
66	\N	\N	5Yqj9*Kw%p	\N	\N		1	dylan08@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:07.267981+00	2021-11-26 15:23:07.267988+00	f	t	f
67	\N	\N	_3xKqhKmA3	\N	\N		1	gjohnson@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:07.287238+00	2021-11-26 15:23:07.287245+00	f	t	f
68	\N	\N	yxIO$lyx@3	\N	\N		1	dylandouglas@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:07.314513+00	2021-11-26 15:23:07.31452+00	f	t	f
69	\N	\N	)mDnRDwPs5	\N	\N		1	matthew14@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:07.348296+00	2021-11-26 15:23:07.348304+00	f	t	f
70	\N	\N	9U&7NHcVzR	\N	\N		1	inorman@example.org	\N	\N	\N	\N	f	2021-11-26 15:23:07.356635+00	2021-11-26 15:23:07.35664+00	f	t	f
71	\N	\N	MT8SYIqik@	\N	\N		1	jonesdavid@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:13.301624+00	2021-11-26 15:23:13.301631+00	f	t	f
72	\N	\N	F8l_sPo@^%	\N	\N		1	marisatapia@example.org	\N	\N	\N	\N	f	2021-11-26 15:23:13.326214+00	2021-11-26 15:23:13.326222+00	f	t	f
73	\N	\N	Kv&9ARiyj5	\N	\N		1	debbiekennedy@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:13.350134+00	2021-11-26 15:23:13.350139+00	f	t	f
74	\N	\N	x(*Z8rVqQA	\N	\N		1	tara02@example.org	\N	\N	\N	\N	f	2021-11-26 15:23:13.376968+00	2021-11-26 15:23:13.376973+00	f	t	f
75	\N	\N	lC#)H3zmb)	\N	\N		1	mitchellbarker@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:13.386151+00	2021-11-26 15:23:13.386157+00	f	t	f
76	\N	\N	lFFS4BrBh%	\N	\N		1	ddaniels@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:17.02883+00	2021-11-26 15:23:17.028837+00	f	t	f
77	\N	\N	Q!K9i)Tr6C	\N	\N		1	sally31@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:17.061275+00	2021-11-26 15:23:17.061297+00	f	t	f
78	\N	\N	J*D38jgjVX	\N	\N		1	pmartin@example.net	\N	\N	\N	\N	f	2021-11-26 15:23:17.123906+00	2021-11-26 15:23:17.12394+00	f	t	f
79	\N	\N	@9M7Vaqp%#	\N	\N		1	jennifercox@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:17.195979+00	2021-11-26 15:23:17.196002+00	f	t	f
80	\N	\N	w3rH)Mm3^J	\N	\N		1	xelliott@example.com	\N	\N	\N	\N	f	2021-11-26 15:23:17.212266+00	2021-11-26 15:23:17.212273+00	f	t	f
81	\N	\N	2l)6CrhVk_	\N	\N		1	oglenn@example.com	\N	\N	\N	\N	f	2021-11-26 15:30:13.891196+00	2021-11-26 15:30:13.891204+00	f	t	f
82	\N	\N	r20nfBWi^r	\N	\N		1	bbarnett@example.com	\N	\N	\N	\N	f	2021-11-26 15:30:13.913763+00	2021-11-26 15:30:13.913769+00	f	t	f
83	\N	\N	*z7ZHNr&(!	\N	\N		1	bkirby@example.org	\N	\N	\N	\N	f	2021-11-26 15:30:13.938288+00	2021-11-26 15:30:13.938294+00	f	t	f
84	\N	\N	#AM1JcmNe7	\N	\N		1	ebrooks@example.net	\N	\N	\N	\N	f	2021-11-26 15:30:13.967536+00	2021-11-26 15:30:13.967541+00	f	t	f
85	\N	\N	2W$2!qxmn#	\N	\N		1	billy71@example.org	\N	\N	\N	\N	f	2021-11-26 15:30:13.975541+00	2021-11-26 15:30:13.975549+00	f	t	f
86	\N	\N	q5L2RjEd&r	\N	\N		1	amy76@example.com	\N	\N	\N	\N	f	2021-11-26 15:30:56.900304+00	2021-11-26 15:30:56.90033+00	f	t	f
87	\N	\N	&rLnn&__o6	\N	\N		1	paulaaustin@example.org	\N	\N	\N	\N	f	2021-11-26 15:30:56.942336+00	2021-11-26 15:30:56.942359+00	f	t	f
88	\N	\N	+o4EG^)s&n	\N	\N		1	matthewtravis@example.org	\N	\N	\N	\N	f	2021-11-26 15:30:56.995624+00	2021-11-26 15:30:56.995637+00	f	t	f
89	\N	\N	o+tm8HTt(#	\N	\N		1	david67@example.net	\N	\N	\N	\N	f	2021-11-26 15:30:57.035688+00	2021-11-26 15:30:57.035695+00	f	t	f
90	\N	\N	5_3LuRrd(d	\N	\N		1	eallen@example.net	\N	\N	\N	\N	f	2021-11-26 15:30:57.044243+00	2021-11-26 15:30:57.044249+00	f	t	f
91	\N	\N	%!uD)GyfL1	\N	\N		1	kathleenthompson@example.net	\N	\N	\N	\N	f	2021-11-26 15:39:38.553931+00	2021-11-26 15:39:38.553938+00	f	t	f
92	\N	\N	N#*&e0MfWu	\N	\N		1	davidharris@example.net	\N	\N	\N	\N	f	2021-11-26 15:39:38.578708+00	2021-11-26 15:39:38.578715+00	f	t	f
93	\N	\N	435XMtanP@	\N	\N		1	matthew16@example.org	\N	\N	\N	\N	f	2021-11-26 15:39:38.603343+00	2021-11-26 15:39:38.603348+00	f	t	f
94	\N	\N	)DRtWK#n69	\N	\N		1	ivan93@example.com	\N	\N	\N	\N	f	2021-11-26 15:39:38.63398+00	2021-11-26 15:39:38.633985+00	f	t	f
95	\N	\N	$6f3xOEwPn	\N	\N		1	kanestacy@example.net	\N	\N	\N	\N	f	2021-11-26 15:39:38.642649+00	2021-11-26 15:39:38.642655+00	f	t	f
96	\N	\N	M9U8VOJi&Z	\N	\N		1	nicole63@example.org	\N	\N	\N	\N	f	2021-11-26 15:39:46.920229+00	2021-11-26 15:39:46.920237+00	f	t	f
97	\N	\N	*77pOxi3+d	\N	\N		1	joanna52@example.org	\N	\N	\N	\N	f	2021-11-26 15:39:46.945717+00	2021-11-26 15:39:46.945723+00	f	t	f
98	\N	\N	1KwFbqY2(6	\N	\N		1	lori75@example.org	\N	\N	\N	\N	f	2021-11-26 15:39:46.997268+00	2021-11-26 15:39:46.99729+00	f	t	f
99	\N	\N	(XTwexbwB0	\N	\N		1	amymcneil@example.com	\N	\N	\N	\N	f	2021-11-26 15:39:47.072302+00	2021-11-26 15:39:47.072323+00	f	t	f
100	\N	\N	&4&yt5Qa9$	\N	\N		1	jacob27@example.org	\N	\N	\N	\N	f	2021-11-26 15:39:47.091077+00	2021-11-26 15:39:47.091099+00	f	t	f
101	\N	\N	K!iJn%5^&1	\N	\N		1	suzannepayne@example.net	\N	\N	\N	\N	f	2021-11-26 15:40:10.093736+00	2021-11-26 15:40:10.093744+00	f	t	f
102	\N	\N	@%1HLltlFi	\N	\N		1	cwilliams@example.net	\N	\N	\N	\N	f	2021-11-26 15:40:10.116665+00	2021-11-26 15:40:10.11667+00	f	t	f
103	\N	\N	&)R9EzpCGV	\N	\N		1	livingstonpatrick@example.net	\N	\N	\N	\N	f	2021-11-26 15:40:10.140726+00	2021-11-26 15:40:10.140733+00	f	t	f
104	\N	\N	WZ3RlKKJ)&	\N	\N		1	pattersonjustin@example.org	\N	\N	\N	\N	f	2021-11-26 15:40:10.168306+00	2021-11-26 15:40:10.168312+00	f	t	f
105	\N	\N	e5bYG#Op(s	\N	\N		1	nguyenstephen@example.com	\N	\N	\N	\N	f	2021-11-26 15:40:10.176828+00	2021-11-26 15:40:10.176834+00	f	t	f
106	\N	\N	7gN$4EPb(a	\N	\N		1	ibrown@example.org	\N	\N	\N	\N	f	2021-11-26 15:40:19.805966+00	2021-11-26 15:40:19.805973+00	f	t	f
107	\N	\N	+p99FyzmZ^	\N	\N		1	gutierrezellen@example.net	\N	\N	\N	\N	f	2021-11-26 15:40:19.822145+00	2021-11-26 15:40:19.822153+00	f	t	f
108	\N	\N	$$6MAvRSO!	\N	\N		1	lawsondarryl@example.org	\N	\N	\N	\N	f	2021-11-26 15:40:19.846742+00	2021-11-26 15:40:19.846748+00	f	t	f
109	\N	\N	*1S9)pr9vg	\N	\N		1	chadle@example.net	\N	\N	\N	\N	f	2021-11-26 15:40:19.873717+00	2021-11-26 15:40:19.873722+00	f	t	f
110	\N	\N	*hbU1ZOjb$	\N	\N		1	rhogan@example.org	\N	\N	\N	\N	f	2021-11-26 15:40:19.882123+00	2021-11-26 15:40:19.882128+00	f	t	f
111	\N	\N	0+2SFljxfg	\N	\N		1	johnsontaylor@example.com	\N	\N	\N	\N	f	2021-11-26 15:40:43.205995+00	2021-11-26 15:40:43.206002+00	f	t	f
112	\N	\N	eaaL#Ap!(9	\N	\N		1	savery@example.com	\N	\N	\N	\N	f	2021-11-26 15:40:43.228507+00	2021-11-26 15:40:43.228514+00	f	t	f
113	\N	\N	RQO3IxZK&3	\N	\N		1	millermatthew@example.net	\N	\N	\N	\N	f	2021-11-26 15:40:43.251719+00	2021-11-26 15:40:43.251725+00	f	t	f
114	\N	\N	4C+4GyF1Bv	\N	\N		1	allisonrodriguez@example.com	\N	\N	\N	\N	f	2021-11-26 15:40:43.278214+00	2021-11-26 15:40:43.278219+00	f	t	f
115	\N	\N	0AHSndal^N	\N	\N		1	heather54@example.org	\N	\N	\N	\N	f	2021-11-26 15:40:48.396815+00	2021-11-26 15:40:48.39682+00	f	t	f
116	\N	\N	(R73QRyu*U	\N	\N		1	cookzachary@example.com	\N	\N	\N	\N	f	2021-11-26 15:41:18.936524+00	2021-11-26 15:41:18.936531+00	f	t	f
117	\N	\N	Bh1ZsM$a)*	\N	\N		1	danafernandez@example.net	\N	\N	\N	\N	f	2021-11-26 15:41:18.966339+00	2021-11-26 15:41:18.966351+00	f	t	f
118	\N	\N	1WZ6e$InX(	\N	\N		1	cooperkaren@example.org	\N	\N	\N	\N	f	2021-11-26 15:41:18.994763+00	2021-11-26 15:41:18.99477+00	f	t	f
119	\N	\N	I(7+mFoEzd	\N	\N		1	fharrington@example.org	\N	\N	\N	\N	f	2021-11-26 15:41:19.026538+00	2021-11-26 15:41:19.026545+00	f	t	f
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 136, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);


--
-- Name: hall_hall_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hall_hall_id_seq', 16, true);


--
-- Name: rank_rank_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rank_rank_id_seq', 8, true);


--
-- Name: row_row_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.row_row_id_seq', 367, true);


--
-- Name: seance_seance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seance_seance_id_seq', 3, true);


--
-- Name: seat_seat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.seat_seat_id_seq', 10863, true);


--
-- Name: section_section_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.section_section_id_seq', 18, true);


--
-- Name: ticket_ticket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ticket_ticket_id_seq', 4631, true);


--
-- Name: user_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_user_id_seq', 119, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: hall_hall hall_hall_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall_hall
    ADD CONSTRAINT hall_hall_name_key UNIQUE (name);


--
-- Name: hall_hall hall_hall_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall_hall
    ADD CONSTRAINT hall_hall_pkey PRIMARY KEY (id);


--
-- Name: rank_rank rank_rank_hall_id_name_1fced0eb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rank_rank
    ADD CONSTRAINT rank_rank_hall_id_name_1fced0eb_uniq UNIQUE (hall_id, name);


--
-- Name: rank_rank rank_rank_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rank_rank
    ADD CONSTRAINT rank_rank_pkey PRIMARY KEY (id);


--
-- Name: row_row row_row_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_row
    ADD CONSTRAINT row_row_pkey PRIMARY KEY (id);


--
-- Name: row_row row_row_section_id_number_position_0c80c508_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_row
    ADD CONSTRAINT row_row_section_id_number_position_0c80c508_uniq UNIQUE (section_id, number, "position");


--
-- Name: seance_seance seance_seance_hall_id_start_date_time__f43f1b66_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seance_seance
    ADD CONSTRAINT seance_seance_hall_id_start_date_time__f43f1b66_uniq UNIQUE (hall_id, start_date_time, end_date_time);


--
-- Name: seance_seance seance_seance_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seance_seance
    ADD CONSTRAINT seance_seance_pkey PRIMARY KEY (id);


--
-- Name: seat_seat seat_seat_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_seat
    ADD CONSTRAINT seat_seat_pkey PRIMARY KEY (id);


--
-- Name: seat_seat seat_seat_row_id_number_8149e91a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_seat
    ADD CONSTRAINT seat_seat_row_id_number_8149e91a_uniq UNIQUE (row_id, number);


--
-- Name: section_section section_section_hall_id_name_ec34ebee_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.section_section
    ADD CONSTRAINT section_section_hall_id_name_ec34ebee_uniq UNIQUE (hall_id, name);


--
-- Name: section_section section_section_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.section_section
    ADD CONSTRAINT section_section_pkey PRIMARY KEY (id);


--
-- Name: ticket_ticket ticket_ticket_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_ticket
    ADD CONSTRAINT ticket_ticket_pkey PRIMARY KEY (id);


--
-- Name: ticket_ticket ticket_ticket_seance_id_seat_id_f8e78799_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_ticket
    ADD CONSTRAINT ticket_ticket_seance_id_seat_id_f8e78799_uniq UNIQUE (seance_id, seat_id);


--
-- Name: user_user user_user_email_1c6f3d1a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_email_1c6f3d1a_uniq UNIQUE (email);


--
-- Name: user_user user_user_phone_number_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_phone_number_key UNIQUE (phone_number);


--
-- Name: user_user user_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_user
    ADD CONSTRAINT user_user_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: hall_hall_name_1b75bbd2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hall_hall_name_1b75bbd2_like ON public.hall_hall USING btree (name varchar_pattern_ops);


--
-- Name: hall_hall_user_id_ef5ae25f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hall_hall_user_id_ef5ae25f ON public.hall_hall USING btree (user_id);


--
-- Name: rank_rank_hall_id_4e5b2253; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rank_rank_hall_id_4e5b2253 ON public.rank_rank USING btree (hall_id);


--
-- Name: row_row_section_id_4e753c0a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX row_row_section_id_4e753c0a ON public.row_row USING btree (section_id);


--
-- Name: seance_seance_hall_id_e2f9ffca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seance_seance_hall_id_e2f9ffca ON public.seance_seance USING btree (hall_id);


--
-- Name: seat_seat_rank_id_811d2a11; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seat_seat_rank_id_811d2a11 ON public.seat_seat USING btree (rank_id);


--
-- Name: seat_seat_row_id_4baf2da9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX seat_seat_row_id_4baf2da9 ON public.seat_seat USING btree (row_id);


--
-- Name: section_section_hall_id_6fb88638; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX section_section_hall_id_6fb88638 ON public.section_section USING btree (hall_id);


--
-- Name: ticket_ticket_seance_id_13574f4d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticket_ticket_seance_id_13574f4d ON public.ticket_ticket USING btree (seance_id);


--
-- Name: ticket_ticket_seat_id_e2d3859c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticket_ticket_seat_id_e2d3859c ON public.ticket_ticket USING btree (seat_id);


--
-- Name: ticket_ticket_user_id_56669ba1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX ticket_ticket_user_id_56669ba1 ON public.ticket_ticket USING btree (user_id);


--
-- Name: user_user_email_1c6f3d1a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_email_1c6f3d1a_like ON public.user_user USING btree (email varchar_pattern_ops);


--
-- Name: user_user_phone_number_65bc906c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX user_user_phone_number_65bc906c_like ON public.user_user USING btree (phone_number varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hall_hall hall_hall_user_id_ef5ae25f_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hall_hall
    ADD CONSTRAINT hall_hall_user_id_ef5ae25f_fk FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rank_rank rank_rank_hall_id_4e5b2253_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rank_rank
    ADD CONSTRAINT rank_rank_hall_id_4e5b2253_fk FOREIGN KEY (hall_id) REFERENCES public.hall_hall(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: row_row row_row_section_id_4e753c0a_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.row_row
    ADD CONSTRAINT row_row_section_id_4e753c0a_fk FOREIGN KEY (section_id) REFERENCES public.section_section(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: seance_seance seance_seance_hall_id_e2f9ffca_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seance_seance
    ADD CONSTRAINT seance_seance_hall_id_e2f9ffca_fk FOREIGN KEY (hall_id) REFERENCES public.hall_hall(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: seat_seat seat_seat_rank_id_811d2a11_fk_rank_rank_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_seat
    ADD CONSTRAINT seat_seat_rank_id_811d2a11_fk_rank_rank_id FOREIGN KEY (rank_id) REFERENCES public.rank_rank(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: seat_seat seat_seat_row_id_4baf2da9_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.seat_seat
    ADD CONSTRAINT seat_seat_row_id_4baf2da9_fk FOREIGN KEY (row_id) REFERENCES public.row_row(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: section_section section_section_hall_id_6fb88638_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.section_section
    ADD CONSTRAINT section_section_hall_id_6fb88638_fk FOREIGN KEY (hall_id) REFERENCES public.hall_hall(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticket_ticket ticket_ticket_seance_id_13574f4d_fk_seance_seance_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_ticket
    ADD CONSTRAINT ticket_ticket_seance_id_13574f4d_fk_seance_seance_id FOREIGN KEY (seance_id) REFERENCES public.seance_seance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticket_ticket ticket_ticket_seat_id_e2d3859c_fk_seat_seat_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_ticket
    ADD CONSTRAINT ticket_ticket_seat_id_e2d3859c_fk_seat_seat_id FOREIGN KEY (seat_id) REFERENCES public.seat_seat(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ticket_ticket ticket_ticket_user_id_56669ba1_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ticket_ticket
    ADD CONSTRAINT ticket_ticket_user_id_56669ba1_fk FOREIGN KEY (user_id) REFERENCES public.user_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

