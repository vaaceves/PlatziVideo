--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Debian 11.1-1.pgdg90+1)
-- Dumped by pg_dump version 11.1

-- Started on 2019-03-22 23:02:13 CST

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
-- TOC entry 229 (class 1259 OID 16622)
-- Name: users_profesor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_profesor (
    user_id integer NOT NULL,
    fecha_de_nacimiento date,
    cede_id integer,
    diciplina_id integer,
    escuela_id integer
);


ALTER TABLE public.users_profesor OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 16622)
-- Dependencies: 229
-- Data for Name: users_profesor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_profesor (user_id, fecha_de_nacimiento, cede_id, diciplina_id, escuela_id) FROM stdin;
1227	2018-01-01	1	1	1
1228	2018-01-01	2	1	1
1229	2018-01-01	3	1	1
1230	2018-01-01	3	1	1
1231	2018-01-01	3	1	1
1232	2018-01-01	3	1	1
1233	2018-01-01	4	1	1
1234	2018-01-01	4	1	1
1235	2018-01-01	4	1	1
1236	2018-01-01	4	1	1
1237	2018-01-01	5	1	1
1238	2018-01-01	5	1	1
1239	2018-01-01	8	1	1
1240	2018-01-01	5	1	1
1241	2018-01-01	10	1	2
1245	2018-01-01	10	1	2
1246	2018-01-01	10	1	2
1247	2018-01-01	10	1	2
1248	2018-01-01	10	1	2
1249	2018-01-01	10	1	2
1250	2018-01-01	10	1	2
1251	2018-01-01	11	1	3
1252	2018-01-01	11	1	3
1253	2018-01-01	11	1	3
1254	2018-01-01	11	1	3
1255	2018-01-01	11	1	3
1256	2018-01-01	11	1	3
1257	2018-01-01	12	1	4
1258	2018-01-01	12	1	4
1259	2018-01-01	12	1	4
1260	2018-01-01	12	1	4
1261	2018-01-01	12	1	4
1262	2018-01-01	13	1	5
1263	2018-01-01	13	1	5
1264	2018-01-01	13	1	5
1265	2018-01-01	13	1	5
1266	2018-01-01	13	1	5
1267	2018-01-01	13	1	5
1268	2018-01-01	13	1	5
1269	2018-01-01	13	1	5
1270	2018-01-01	13	1	5
1271	2018-01-01	13	1	5
1272	2018-01-01	13	1	5
1273	2018-01-01	13	1	5
1274	2018-01-01	13	1	5
1275	2018-01-01	13	1	5
1276	2018-01-01	13	1	5
1277	2018-01-01	13	1	5
1278	2018-01-01	13	1	5
1279	2018-01-01	13	1	5
1280	2018-01-01	13	1	5
1529	2018-01-01	9	1	1
1530	2018-01-01	6	1	1
1531	2018-01-01	7	1	1
1532	2018-01-01	5	1	1
1533	2018-01-01	6	1	1
1534	2018-01-01	5	1	1
1535	2018-01-01	6	1	1
1536	2018-01-01	6	1	1
1537	2018-01-01	9	1	1
1538	2018-01-01	5	1	1
1539	2018-01-01	9	1	1
1540	2018-01-01	6	1	1
1541	2018-01-01	9	1	1
1542	2018-01-01	6	1	1
1810	2018-01-01	14	1	6
1811	2018-01-01	14	1	6
1812	2018-01-01	14	1	6
1	2019-01-22	1	1	1
1813	2018-01-01	14	1	6
1814	2018-01-01	14	1	6
1815	2018-01-01	14	1	6
1816	2018-01-01	14	1	6
1817	2018-01-01	15	1	7
1818	2018-01-01	15	1	7
1819	2018-01-01	15	1	7
1839	\N	3	1	1
1840	\N	3	1	1
1838	\N	12	1	4
\.


--
-- TOC entry 2913 (class 2606 OID 16626)
-- Name: users_profesor users_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_pkey PRIMARY KEY (user_id);


--
-- TOC entry 2909 (class 1259 OID 16761)
-- Name: users_profesor_2275ee47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_2275ee47 ON public.users_profesor USING btree (cede_id);


--
-- TOC entry 2910 (class 1259 OID 16762)
-- Name: users_profesor_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_334a5176 ON public.users_profesor USING btree (diciplina_id);


--
-- TOC entry 2911 (class 1259 OID 16763)
-- Name: users_profesor_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_8a08820e ON public.users_profesor USING btree (escuela_id);


--
-- TOC entry 2918 (class 2606 OID 17917)
-- Name: users_profesor users_pro_diciplina_id_1938182d51224245_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_pro_diciplina_id_1938182d51224245_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2919 (class 2606 OID 17922)
-- Name: users_profesor users_pro_diciplina_id_1a75d20c20b4821e_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_pro_diciplina_id_1a75d20c20b4821e_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2916 (class 2606 OID 16751)
-- Name: users_profesor users_pro_diciplina_id_519ecd4bd6860648_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_pro_diciplina_id_519ecd4bd6860648_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2920 (class 2606 OID 17932)
-- Name: users_profesor users_profeso_escuela_id_2bcf3526d7558acf_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profeso_escuela_id_2bcf3526d7558acf_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2917 (class 2606 OID 16756)
-- Name: users_profesor users_profeso_escuela_id_5d2ddc270442a4ec_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profeso_escuela_id_5d2ddc270442a4ec_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2921 (class 2606 OID 17937)
-- Name: users_profesor users_profeso_escuela_id_70c8e9c8920bf111_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profeso_escuela_id_70c8e9c8920bf111_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2915 (class 2606 OID 16746)
-- Name: users_profesor users_profesor_cede_id_2127a85eb82a3994_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_cede_id_2127a85eb82a3994_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2922 (class 2606 OID 17942)
-- Name: users_profesor users_profesor_cede_id_3b36bf5c6925cf93_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_cede_id_3b36bf5c6925cf93_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2923 (class 2606 OID 17947)
-- Name: users_profesor users_profesor_cede_id_a8ed65d9c0eac0f_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_cede_id_a8ed65d9c0eac0f_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2924 (class 2606 OID 17952)
-- Name: users_profesor users_profesor_user_id_28d87dff479eed3e_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_user_id_28d87dff479eed3e_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2914 (class 2606 OID 16741)
-- Name: users_profesor users_profesor_user_id_295b5283695968fe_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_user_id_295b5283695968fe_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2925 (class 2606 OID 17957)
-- Name: users_profesor users_profesor_user_id_2da484271d5538de_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_user_id_2da484271d5538de_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2019-03-22 23:02:19 CST

--
-- PostgreSQL database dump complete
--

