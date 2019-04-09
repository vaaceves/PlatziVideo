--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Debian 11.1-1.pgdg90+1)
-- Dumped by pg_dump version 11.1

-- Started on 2019-03-22 23:02:51 CST

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 231 (class 1259 OID 16629)
-- Name: users_profesor_categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_profesor_categorias (
    id integer NOT NULL,
    profesor_id integer NOT NULL,
    categoria_id integer NOT NULL
);


ALTER TABLE public.users_profesor_categorias OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16627)
-- Name: users_profesor_categorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_profesor_categorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_profesor_categorias_id_seq OWNER TO postgres;

--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 230
-- Name: users_profesor_categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_profesor_categorias_id_seq OWNED BY public.users_profesor_categorias.id;


--
-- TOC entry 2909 (class 2604 OID 24629)
-- Name: users_profesor_categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias ALTER COLUMN id SET DEFAULT nextval('public.users_profesor_categorias_id_seq'::regclass);


--
-- TOC entry 3044 (class 0 OID 16629)
-- Dependencies: 231
-- Data for Name: users_profesor_categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profesor_categorias (id, profesor_id, categoria_id) FROM stdin;
1	1228	7
2	1230	10
3	1232	12
4	1231	11
5	1229	7
6	1235	16
7	1234	15
8	1236	17
9	1236	12
10	1233	13
11	1233	14
12	1239	23
13	1240	24
14	1240	26
15	1532	27
16	1532	30
17	1534	28
18	1534	32
19	1534	33
20	1238	21
21	1238	22
22	1538	25
23	1538	29
24	1538	31
25	1237	20
26	1530	20
27	1530	43
28	1530	47
29	1533	45
30	1533	46
31	1533	48
32	1535	36
33	1535	44
34	1536	40
35	1536	42
36	1536	41
37	1540	35
38	1540	34
39	1542	39
40	1531	49
41	1531	50
42	1531	51
43	1227	1
44	1227	3
45	1227	4
46	1227	5
47	1227	6
48	1239	46
49	1239	52
50	1239	50
51	1239	55
52	1239	53
53	1529	63
54	1537	2
57	1539	61
58	1539	62
59	1539	64
60	1541	35
61	1541	39
62	1241	65
63	1245	65
64	1246	66
65	1247	70
66	1248	71
67	1249	72
68	1250	68
69	1251	76
70	1252	77
71	1253	78
72	1254	80
73	1255	80
74	1256	82
75	1256	83
76	1257	86
77	1258	87
78	1259	90
79	1260	89
80	1261	93
81	1	1
82	1	3
83	1	4
84	1	5
85	1	6
86	1	7
87	1	9
88	1	10
89	1	11
90	1	12
91	1	13
92	1	14
93	1	15
94	1	16
95	1	17
96	1	19
97	1	20
98	1	21
99	1	22
100	1	23
101	1	24
102	1	25
103	1	26
104	1	27
105	1	28
106	1	29
107	1	30
108	1	31
109	1	32
110	1	33
111	1	34
112	1	35
113	1	36
114	1	38
115	1	39
116	1	40
117	1	41
118	1	42
119	1	43
120	1	44
121	1	45
122	1	46
123	1	47
124	1	48
125	1	49
126	1	50
127	1	51
128	1	52
129	1	53
130	1	54
131	1	55
132	1	56
133	1	57
134	1	58
135	1	59
136	1	60
137	1	61
138	1	62
139	1	63
140	1	64
141	1	65
142	1	66
143	1	68
144	1	69
145	1	70
146	1	71
147	1	72
148	1	74
149	1	75
150	1	76
151	1	77
152	1	78
153	1	79
154	1	80
155	1	81
156	1	82
157	1	83
158	1	84
159	1	85
160	1	86
161	1	87
162	1	88
163	1	89
164	1	90
165	1	91
166	1	92
167	1	93
168	1262	94
169	1263	95
170	1266	96
171	1267	97
172	1268	98
173	1269	99
174	1270	100
175	1271	101
176	1272	102
177	1273	103
178	1274	104
179	1275	105
180	1276	106
181	1277	107
182	1278	108
183	1279	109
184	1280	110
185	1810	111
186	1811	112
187	1812	113
188	1813	114
189	1814	115
190	1815	116
191	1816	117
192	1817	118
193	1818	118
194	1819	118
195	1539	58
196	1539	59
198	1257	85
200	1259	88
202	1838	90
203	1258	91
204	1261	92
205	1257	93
206	1839	9
207	1840	11
208	1269	97
\.


--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 230
-- Name: users_profesor_categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profesor_categorias_id_seq', 140, true);


--
-- TOC entry 2913 (class 2606 OID 16634)
-- Name: users_profesor_categorias users_profesor_categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_profesor_categorias_pkey PRIMARY KEY (id);


--
-- TOC entry 2915 (class 2606 OID 16636)
-- Name: users_profesor_categorias users_profesor_categorias_profesor_id_categoria_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_profesor_categorias_profesor_id_categoria_id_key UNIQUE (profesor_id, categoria_id);


--
-- TOC entry 2910 (class 1259 OID 16774)
-- Name: users_profesor_categorias_21c9ccfc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_categorias_21c9ccfc ON public.users_profesor_categorias USING btree (profesor_id);


--
-- TOC entry 2911 (class 1259 OID 16775)
-- Name: users_profesor_categorias_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_categorias_daf3833b ON public.users_profesor_categorias USING btree (categoria_id);


--
-- TOC entry 2918 (class 2606 OID 17902)
-- Name: users_profesor_categorias users_pr_profesor_id_5e334c1c3c25b772_fk_users_profesor_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_pr_profesor_id_5e334c1c3c25b772_fk_users_profesor_user_id FOREIGN KEY (profesor_id) REFERENCES public.users_profesor(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2919 (class 2606 OID 17907)
-- Name: users_profesor_categorias users_pr_profesor_id_61e161d6dd7e1228_fk_users_profesor_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_pr_profesor_id_61e161d6dd7e1228_fk_users_profesor_user_id FOREIGN KEY (profesor_id) REFERENCES public.users_profesor(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2916 (class 2606 OID 16764)
-- Name: users_profesor_categorias users_pr_profesor_id_732e3c8171c21648_fk_users_profesor_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_pr_profesor_id_732e3c8171c21648_fk_users_profesor_user_id FOREIGN KEY (profesor_id) REFERENCES public.users_profesor(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2920 (class 2606 OID 17912)
-- Name: users_profesor_categorias users_pro_categoria_id_17bfe01c34d222f9_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_pro_categoria_id_17bfe01c34d222f9_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2917 (class 2606 OID 16769)
-- Name: users_profesor_categorias users_pro_categoria_id_5e81d9038463aa88_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_pro_categoria_id_5e81d9038463aa88_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2921 (class 2606 OID 17927)
-- Name: users_profesor_categorias users_profe_categoria_id_bb52437d046e71_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_profe_categoria_id_bb52437d046e71_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2019-03-22 23:03:03 CST

--
-- PostgreSQL database dump complete
--

