--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgresuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgresuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgresuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgresuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgresuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgresuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgresuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgresuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgresuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgresuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgresuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgresuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgresuser
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


ALTER TABLE public.django_admin_log OWNER TO postgresuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgresuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgresuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgresuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgresuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgresuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgresuser;

--
-- Name: social_bookmarks_bookmark; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.social_bookmarks_bookmark (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    is_public boolean NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_updated timestamp with time zone NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.social_bookmarks_bookmark OWNER TO postgresuser;

--
-- Name: social_bookmarks_bookmark_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.social_bookmarks_bookmark_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_bookmarks_bookmark_id_seq OWNER TO postgresuser;

--
-- Name: social_bookmarks_bookmark_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.social_bookmarks_bookmark_id_seq OWNED BY public.social_bookmarks_bookmark.id;


--
-- Name: social_bookmarks_bookmark_tags; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.social_bookmarks_bookmark_tags (
    id integer NOT NULL,
    bookmark_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE public.social_bookmarks_bookmark_tags OWNER TO postgresuser;

--
-- Name: social_bookmarks_bookmark_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.social_bookmarks_bookmark_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_bookmarks_bookmark_tags_id_seq OWNER TO postgresuser;

--
-- Name: social_bookmarks_bookmark_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.social_bookmarks_bookmark_tags_id_seq OWNED BY public.social_bookmarks_bookmark_tags.id;


--
-- Name: social_bookmarks_tag; Type: TABLE; Schema: public; Owner: postgresuser
--

CREATE TABLE public.social_bookmarks_tag (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.social_bookmarks_tag OWNER TO postgresuser;

--
-- Name: social_bookmarks_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgresuser
--

CREATE SEQUENCE public.social_bookmarks_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_bookmarks_tag_id_seq OWNER TO postgresuser;

--
-- Name: social_bookmarks_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgresuser
--

ALTER SEQUENCE public.social_bookmarks_tag_id_seq OWNED BY public.social_bookmarks_tag.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: social_bookmarks_bookmark id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark ALTER COLUMN id SET DEFAULT nextval('public.social_bookmarks_bookmark_id_seq'::regclass);


--
-- Name: social_bookmarks_bookmark_tags id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark_tags ALTER COLUMN id SET DEFAULT nextval('public.social_bookmarks_bookmark_tags_id_seq'::regclass);


--
-- Name: social_bookmarks_tag id; Type: DEFAULT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_tag ALTER COLUMN id SET DEFAULT nextval('public.social_bookmarks_tag_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add bookmark	7	add_bookmark
20	Can change bookmark	7	change_bookmark
21	Can delete bookmark	7	delete_bookmark
22	Can add tag	8	add_tag
23	Can change tag	8	change_tag
24	Can delete tag	8	delete_tag
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$RAhTgQxdjNsE$54Bo56L6LhJ1ptEZPw1R4KvjST3c3eVbcRFB7/nvshw=	2018-11-20 06:39:48.910642+00	t	admin			trung.nt2k@gmail.com	t	t	2018-11-20 06:32:54.16347+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-11-20 06:33:35.345876+00	1	framework	1	[{"added": {}}]	8	1
2	2018-11-20 06:33:39.264813+00	2	python	1	[{"added": {}}]	8	1
3	2018-11-20 06:33:42.711064+00	3	java	1	[{"added": {}}]	8	1
4	2018-11-20 06:33:47.093006+00	4	javascript	1	[{"added": {}}]	8	1
5	2018-11-20 06:33:54.139187+00	5	ES6	1	[{"added": {}}]	8	1
6	2018-11-20 06:33:57.968938+00	6	SPA	1	[{"added": {}}]	8	1
7	2018-11-20 06:34:03.197139+00	7	PWA	1	[{"added": {}}]	8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	social_bookmarks	bookmark
8	social_bookmarks	tag
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-20 06:31:29.096273+00
2	auth	0001_initial	2018-11-20 06:31:29.335399+00
3	admin	0001_initial	2018-11-20 06:31:29.387013+00
4	admin	0002_logentry_remove_auto_add	2018-11-20 06:31:29.413955+00
5	contenttypes	0002_remove_content_type_name	2018-11-20 06:31:29.438733+00
6	auth	0002_alter_permission_name_max_length	2018-11-20 06:31:29.444472+00
7	auth	0003_alter_user_email_max_length	2018-11-20 06:31:29.453876+00
8	auth	0004_alter_user_username_opts	2018-11-20 06:31:29.461676+00
9	auth	0005_alter_user_last_login_null	2018-11-20 06:31:29.470755+00
10	auth	0006_require_contenttypes_0002	2018-11-20 06:31:29.472476+00
11	auth	0007_alter_validators_add_error_messages	2018-11-20 06:31:29.480034+00
12	auth	0008_alter_user_username_max_length	2018-11-20 06:31:29.498099+00
13	sessions	0001_initial	2018-11-20 06:31:29.536403+00
14	social_bookmarks	0001_initial	2018-11-20 06:31:29.665432+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: social_bookmarks_bookmark; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.social_bookmarks_bookmark (id, url, title, description, is_public, date_created, date_updated, owner_id) FROM stdin;
1	https://www.djangoproject.com/	Django	Django makes it easier to build better Web apps more quickly and with less code.\r\n\r\nDjango is a high-level Python Web framework that encourages rapid development and clean, pragmatic design. Built by experienced developers, it takes care of much of the hassle of Web development, so you can focus on writing your app without needing to reinvent the wheel. It’s free and open source.	t	2018-11-20 06:35:17.045439+00	2018-11-20 06:35:17.045445+00	1
2	http://flask.pocoo.org/	Flask - A Python Microframework	Flask is a microframework for Python based on Werkzeug, Jinja 2 and good intentions.	t	2018-11-20 06:36:12.271858+00	2018-11-20 06:36:12.271864+00	1
3	https://reactjs.org/	ReactJS - A JavaScript library for building user interfaces	React makes it painless to create interactive UIs. Design simple views for each state in your application, and React will efficiently update and render just the right components when your data changes.	t	2018-11-20 06:37:06.030766+00	2018-11-20 06:37:06.030775+00	1
4	https://vuejs.org/	VueJS - The Progressive JavaScript Framework	Vue is a progressive framework for building user interfaces. Unlike other monolithic frameworks, Vue is designed from the ground up to be incrementally adoptable. The core library is focused on the view layer only, and is easy to pick up and integrate with other libraries or existing projects. On the other hand, Vue is also perfectly capable of powering sophisticated Single-Page Applications when used in combination with modern tooling and supporting libraries.	t	2018-11-20 06:37:52.153695+00	2018-11-20 06:37:52.153704+00	1
\.


--
-- Data for Name: social_bookmarks_bookmark_tags; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.social_bookmarks_bookmark_tags (id, bookmark_id, tag_id) FROM stdin;
1	1	1
2	1	2
3	2	1
4	2	2
5	3	1
6	3	4
7	3	5
8	3	6
9	3	7
10	4	1
11	4	4
12	4	5
13	4	6
14	4	7
\.


--
-- Data for Name: social_bookmarks_tag; Type: TABLE DATA; Schema: public; Owner: postgresuser
--

COPY public.social_bookmarks_tag (id, name) FROM stdin;
1	framework
2	python
3	java
4	javascript
5	ES6
6	SPA
7	PWA
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 7, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 8, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 14, true);


--
-- Name: social_bookmarks_bookmark_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.social_bookmarks_bookmark_id_seq', 4, true);


--
-- Name: social_bookmarks_bookmark_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.social_bookmarks_bookmark_tags_id_seq', 14, true);


--
-- Name: social_bookmarks_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgresuser
--

SELECT pg_catalog.setval('public.social_bookmarks_tag_id_seq', 7, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: social_bookmarks_bookmark social_bookmarks_bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark
    ADD CONSTRAINT social_bookmarks_bookmark_pkey PRIMARY KEY (id);


--
-- Name: social_bookmarks_bookmark_tags social_bookmarks_bookmark_tags_bookmark_id_tag_id_f3f43ead_uniq; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark_tags
    ADD CONSTRAINT social_bookmarks_bookmark_tags_bookmark_id_tag_id_f3f43ead_uniq UNIQUE (bookmark_id, tag_id);


--
-- Name: social_bookmarks_bookmark_tags social_bookmarks_bookmark_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark_tags
    ADD CONSTRAINT social_bookmarks_bookmark_tags_pkey PRIMARY KEY (id);


--
-- Name: social_bookmarks_tag social_bookmarks_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_tag
    ADD CONSTRAINT social_bookmarks_tag_name_key UNIQUE (name);


--
-- Name: social_bookmarks_tag social_bookmarks_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_tag
    ADD CONSTRAINT social_bookmarks_tag_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: social_bookmarks_bookmark_owner_id_8df3e334; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX social_bookmarks_bookmark_owner_id_8df3e334 ON public.social_bookmarks_bookmark USING btree (owner_id);


--
-- Name: social_bookmarks_bookmark_tags_bookmark_id_948101b2; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX social_bookmarks_bookmark_tags_bookmark_id_948101b2 ON public.social_bookmarks_bookmark_tags USING btree (bookmark_id);


--
-- Name: social_bookmarks_bookmark_tags_tag_id_aaa13945; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX social_bookmarks_bookmark_tags_tag_id_aaa13945 ON public.social_bookmarks_bookmark_tags USING btree (tag_id);


--
-- Name: social_bookmarks_tag_name_11115941_like; Type: INDEX; Schema: public; Owner: postgresuser
--

CREATE INDEX social_bookmarks_tag_name_11115941_like ON public.social_bookmarks_tag USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_bookmarks_bookmark_tags social_bookmarks_boo_bookmark_id_948101b2_fk_social_bo; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark_tags
    ADD CONSTRAINT social_bookmarks_boo_bookmark_id_948101b2_fk_social_bo FOREIGN KEY (bookmark_id) REFERENCES public.social_bookmarks_bookmark(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_bookmarks_bookmark_tags social_bookmarks_boo_tag_id_aaa13945_fk_social_bo; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark_tags
    ADD CONSTRAINT social_bookmarks_boo_tag_id_aaa13945_fk_social_bo FOREIGN KEY (tag_id) REFERENCES public.social_bookmarks_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_bookmarks_bookmark social_bookmarks_bookmark_owner_id_8df3e334_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgresuser
--

ALTER TABLE ONLY public.social_bookmarks_bookmark
    ADD CONSTRAINT social_bookmarks_bookmark_owner_id_8df3e334_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

