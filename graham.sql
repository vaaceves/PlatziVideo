--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1 (Debian 11.1-1.pgdg90+1)
-- Dumped by pg_dump version 11.1

-- Started on 2019-03-01 16:53:05 CST

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
-- TOC entry 217 (class 1259 OID 16537)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16535)
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
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 219 (class 1259 OID 16547)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16545)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 215 (class 1259 OID 16527)
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
-- TOC entry 214 (class 1259 OID 16525)
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
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 237 (class 1259 OID 16808)
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
-- TOC entry 236 (class 1259 OID 16806)
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
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 236
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 213 (class 1259 OID 16517)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16515)
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
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 16386)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16384)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 254 (class 1259 OID 17050)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16832)
-- Name: evaluations_evaluacioncualitativa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_evaluacioncualitativa (
    id integer NOT NULL,
    objetivo character varying(149),
    numero_de_preguntas integer NOT NULL,
    habilitar_pregunta_1 boolean NOT NULL,
    pregunta_1 character varying(149),
    habilitar_pregunta_2 boolean NOT NULL,
    pregunta_2 character varying(149),
    habilitar_pregunta_3 boolean NOT NULL,
    pregunta_3 character varying(149),
    habilitar_pregunta_4 boolean NOT NULL,
    pregunta_4 character varying(149),
    habilitar_pregunta_5 boolean NOT NULL,
    pregunta_5 character varying(149),
    fecha_y_hora timestamp with time zone NOT NULL,
    diciplina_id integer NOT NULL,
    escuela_id integer NOT NULL,
    periodo_id integer NOT NULL,
    categoria_id integer NOT NULL,
    CONSTRAINT evaluations_evaluacioncualitativa_numero_de_preguntas_check CHECK ((numero_de_preguntas >= 0))
);


ALTER TABLE public.evaluations_evaluacioncualitativa OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16830)
-- Name: evaluations_evaluacioncualitativa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_evaluacioncualitativa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_evaluacioncualitativa_id_seq OWNER TO postgres;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 238
-- Name: evaluations_evaluacioncualitativa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_evaluacioncualitativa_id_seq OWNED BY public.evaluations_evaluacioncualitativa.id;


--
-- TOC entry 241 (class 1259 OID 16844)
-- Name: evaluations_evaluacioncuantitativa; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_evaluacioncuantitativa (
    id integer NOT NULL,
    objetivo character varying(149),
    fecha_y_hora timestamp with time zone NOT NULL,
    diciplina_id integer NOT NULL,
    escuela_id integer NOT NULL,
    periodo_id integer NOT NULL,
    categoria_id integer NOT NULL,
    grupo_de_objetivos_id integer,
    numero_de_objetivos integer,
    CONSTRAINT evaluations_evaluacioncuantitativa_numero_de_objetivos_check CHECK ((numero_de_objetivos >= 0))
);


ALTER TABLE public.evaluations_evaluacioncuantitativa OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16842)
-- Name: evaluations_evaluacioncuantitativa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_evaluacioncuantitativa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_evaluacioncuantitativa_id_seq OWNER TO postgres;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 240
-- Name: evaluations_evaluacioncuantitativa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_evaluacioncuantitativa_id_seq OWNED BY public.evaluations_evaluacioncuantitativa.id;


--
-- TOC entry 243 (class 1259 OID 16853)
-- Name: evaluations_grupodeobjectivos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_grupodeobjectivos (
    id integer NOT NULL,
    nombre character varying(149),
    slug character varying(149) NOT NULL,
    categoria_id integer NOT NULL,
    diciplina_id integer NOT NULL,
    escuela_id integer NOT NULL
);


ALTER TABLE public.evaluations_grupodeobjectivos OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16851)
-- Name: evaluations_grupodeobjectivos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_grupodeobjectivos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_grupodeobjectivos_id_seq OWNER TO postgres;

--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 242
-- Name: evaluations_grupodeobjectivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_grupodeobjectivos_id_seq OWNED BY public.evaluations_grupodeobjectivos.id;


--
-- TOC entry 258 (class 1259 OID 25321)
-- Name: evaluations_grupodeobjectivos_objetivos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_grupodeobjectivos_objetivos (
    id integer NOT NULL,
    grupodeobjectivos_id integer NOT NULL,
    objetivo_id integer NOT NULL
);


ALTER TABLE public.evaluations_grupodeobjectivos_objetivos OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 25319)
-- Name: evaluations_grupodeobjectivos_objetivos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_grupodeobjectivos_objetivos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_grupodeobjectivos_objetivos_id_seq OWNER TO postgres;

--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 257
-- Name: evaluations_grupodeobjectivos_objetivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_grupodeobjectivos_objetivos_id_seq OWNED BY public.evaluations_grupodeobjectivos_objetivos.id;


--
-- TOC entry 256 (class 1259 OID 25291)
-- Name: evaluations_objetivo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_objetivo (
    id integer NOT NULL,
    nombre character varying(149) NOT NULL,
    unidad_de_medicion character varying(149) NOT NULL,
    categoria_id integer NOT NULL,
    diciplina_id integer NOT NULL,
    escuela_id integer NOT NULL
);


ALTER TABLE public.evaluations_objetivo OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 25289)
-- Name: evaluations_objetivo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_objetivo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_objetivo_id_seq OWNER TO postgres;

--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 255
-- Name: evaluations_objetivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_objetivo_id_seq OWNED BY public.evaluations_objetivo.id;


--
-- TOC entry 245 (class 1259 OID 16861)
-- Name: evaluations_periododeevaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_periododeevaluacion (
    id integer NOT NULL,
    inicio date NOT NULL,
    final date NOT NULL,
    slug character varying(149) NOT NULL,
    diciplina_id integer NOT NULL,
    escuela_id integer NOT NULL
);


ALTER TABLE public.evaluations_periododeevaluacion OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16859)
-- Name: evaluations_periododeevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_periododeevaluacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_periododeevaluacion_id_seq OWNER TO postgres;

--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 244
-- Name: evaluations_periododeevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_periododeevaluacion_id_seq OWNED BY public.evaluations_periododeevaluacion.id;


--
-- TOC entry 247 (class 1259 OID 16869)
-- Name: evaluations_resultadocualitativo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_resultadocualitativo (
    id integer NOT NULL,
    objetivo character varying(149) NOT NULL,
    numero_de_respuestas integer NOT NULL,
    respuesta_1 character varying(149),
    respuesta_2 character varying(149),
    respuesta_3 character varying(149),
    respuesta_4 character varying(149),
    respuesta_5 character varying(149),
    fecha_y_hora timestamp with time zone NOT NULL,
    alumno_id integer,
    diciplina_id integer,
    escuela_id integer,
    evaluacion_id integer,
    periodo_id integer,
    profesor_id integer,
    CONSTRAINT evaluations_resultadocualitativo_numero_de_respuestas_check CHECK ((numero_de_respuestas >= 0))
);


ALTER TABLE public.evaluations_resultadocualitativo OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16867)
-- Name: evaluations_resultadocualitativo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_resultadocualitativo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_resultadocualitativo_id_seq OWNER TO postgres;

--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 246
-- Name: evaluations_resultadocualitativo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_resultadocualitativo_id_seq OWNED BY public.evaluations_resultadocualitativo.id;


--
-- TOC entry 249 (class 1259 OID 16881)
-- Name: evaluations_resultadocuantitativo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.evaluations_resultadocuantitativo (
    id integer NOT NULL,
    objetivo character varying(149) NOT NULL,
    numero_de_resultados integer,
    unidad_de_medicion character varying(149),
    resultado_1 character varying(149),
    resultado_2 character varying(149),
    resultado_3 character varying(149),
    resultado_4 character varying(149),
    resultado_5 character varying(149),
    fecha_y_hora timestamp with time zone NOT NULL,
    alumno_id integer,
    diciplina_id integer,
    escuela_id integer,
    evaluacion_id integer,
    periodo_id integer,
    profesor_id integer,
    objetivo_1 character varying(149),
    objetivo_2 character varying(149),
    objetivo_3 character varying(149),
    objetivo_4 character varying(149),
    objetivo_5 character varying(149),
    um_1 character varying(149),
    um_2 character varying(149),
    um_3 character varying(149),
    um_4 character varying(149),
    um_5 character varying(149),
    CONSTRAINT evaluations_resultadocuantitativo_numero_de_resultados_check CHECK ((numero_de_resultados >= 0))
);


ALTER TABLE public.evaluations_resultadocuantitativo OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16879)
-- Name: evaluations_resultadocuantitativo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.evaluations_resultadocuantitativo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.evaluations_resultadocuantitativo_id_seq OWNER TO postgres;

--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 248
-- Name: evaluations_resultadocuantitativo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.evaluations_resultadocuantitativo_id_seq OWNED BY public.evaluations_resultadocuantitativo.id;


--
-- TOC entry 251 (class 1259 OID 17018)
-- Name: matches_partido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.matches_partido (
    id integer NOT NULL,
    equipo character varying(149) NOT NULL,
    rival character varying(149) NOT NULL,
    local boolean NOT NULL,
    visitante boolean NOT NULL,
    lugar character varying(149) NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    detalles text NOT NULL,
    goles_a_favor smallint,
    goles_en_contra smallint,
    resultado integer,
    categoria_id integer NOT NULL,
    CONSTRAINT matches_partido_goles_a_favor_check CHECK ((goles_a_favor >= 0)),
    CONSTRAINT matches_partido_goles_en_contra_check CHECK ((goles_en_contra >= 0))
);


ALTER TABLE public.matches_partido OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 17016)
-- Name: matches_partido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.matches_partido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.matches_partido_id_seq OWNER TO postgres;

--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 250
-- Name: matches_partido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.matches_partido_id_seq OWNED BY public.matches_partido.id;


--
-- TOC entry 253 (class 1259 OID 17037)
-- Name: payments_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payments_pago (
    id integer NOT NULL,
    "timestamp" timestamp with time zone NOT NULL,
    vencimiento timestamp with time zone NOT NULL,
    metodo_de_pago character varying(140) NOT NULL,
    referencia character varying(140) NOT NULL,
    escuela_id integer NOT NULL
);


ALTER TABLE public.payments_pago OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 17035)
-- Name: payments_pago_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payments_pago_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payments_pago_id_seq OWNER TO postgres;

--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 252
-- Name: payments_pago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payments_pago_id_seq OWNED BY public.payments_pago.id;


--
-- TOC entry 199 (class 1259 OID 16397)
-- Name: schools_categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_categoria (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    slug character varying(255) NOT NULL,
    cede_id integer,
    escuela_id integer NOT NULL
);


ALTER TABLE public.schools_categoria OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16395)
-- Name: schools_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_categoria_id_seq OWNER TO postgres;

--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 198
-- Name: schools_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_categoria_id_seq OWNED BY public.schools_categoria.id;


--
-- TOC entry 201 (class 1259 OID 16407)
-- Name: schools_cede; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_cede (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    slug character varying(255) NOT NULL,
    direccion character varying(149) NOT NULL,
    escuela_id integer NOT NULL
);


ALTER TABLE public.schools_cede OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16405)
-- Name: schools_cede_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_cede_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_cede_id_seq OWNER TO postgres;

--
-- TOC entry 3434 (class 0 OID 0)
-- Dependencies: 200
-- Name: schools_cede_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_cede_id_seq OWNED BY public.schools_cede.id;


--
-- TOC entry 203 (class 1259 OID 16420)
-- Name: schools_diciplina; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_diciplina (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    slug character varying(255) NOT NULL
);


ALTER TABLE public.schools_diciplina OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16418)
-- Name: schools_diciplina_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_diciplina_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_diciplina_id_seq OWNER TO postgres;

--
-- TOC entry 3435 (class 0 OID 0)
-- Dependencies: 202
-- Name: schools_diciplina_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_diciplina_id_seq OWNED BY public.schools_diciplina.id;


--
-- TOC entry 205 (class 1259 OID 16430)
-- Name: schools_escuela; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_escuela (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    slug character varying(255) NOT NULL,
    logo character varying(100),
    direccion character varying(149) NOT NULL,
    afiliada boolean NOT NULL,
    color_principal character varying(18) NOT NULL,
    color_secundario character varying(18) NOT NULL,
    facebook character varying(200),
    twitter character varying(200),
    youtube character varying(200),
    instagram character varying(200),
    tiene_caja boolean NOT NULL,
    maneja_horarios boolean NOT NULL
);


ALTER TABLE public.schools_escuela OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16443)
-- Name: schools_escuela_diciplinas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_escuela_diciplinas (
    id integer NOT NULL,
    escuela_id integer NOT NULL,
    diciplina_id integer NOT NULL
);


ALTER TABLE public.schools_escuela_diciplinas OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16441)
-- Name: schools_escuela_diciplinas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_escuela_diciplinas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_escuela_diciplinas_id_seq OWNER TO postgres;

--
-- TOC entry 3436 (class 0 OID 0)
-- Dependencies: 206
-- Name: schools_escuela_diciplinas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_escuela_diciplinas_id_seq OWNED BY public.schools_escuela_diciplinas.id;


--
-- TOC entry 204 (class 1259 OID 16428)
-- Name: schools_escuela_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_escuela_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_escuela_id_seq OWNER TO postgres;

--
-- TOC entry 3437 (class 0 OID 0)
-- Dependencies: 204
-- Name: schools_escuela_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_escuela_id_seq OWNED BY public.schools_escuela.id;


--
-- TOC entry 209 (class 1259 OID 16453)
-- Name: schools_importarcategorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_importarcategorias (
    id integer NOT NULL,
    nombre character varying(149) NOT NULL,
    archivo_cvs character varying(100) NOT NULL,
    escuela_id integer NOT NULL
);


ALTER TABLE public.schools_importarcategorias OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16451)
-- Name: schools_importarcategorias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_importarcategorias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_importarcategorias_id_seq OWNER TO postgres;

--
-- TOC entry 3438 (class 0 OID 0)
-- Dependencies: 208
-- Name: schools_importarcategorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_importarcategorias_id_seq OWNED BY public.schools_importarcategorias.id;


--
-- TOC entry 211 (class 1259 OID 16463)
-- Name: schools_sliderescuela; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schools_sliderescuela (
    id integer NOT NULL,
    imagen_1 character varying(100),
    imagen_2 character varying(100),
    imagen_3 character varying(100),
    imagen_4 character varying(100),
    escuela_id integer NOT NULL
);


ALTER TABLE public.schools_sliderescuela OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16461)
-- Name: schools_sliderescuela_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.schools_sliderescuela_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.schools_sliderescuela_id_seq OWNER TO postgres;

--
-- TOC entry 3439 (class 0 OID 0)
-- Dependencies: 210
-- Name: schools_sliderescuela_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.schools_sliderescuela_id_seq OWNED BY public.schools_sliderescuela.id;


--
-- TOC entry 223 (class 1259 OID 16587)
-- Name: users_asistencia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_asistencia (
    id integer NOT NULL,
    alumno_id integer NOT NULL,
    asistencia character varying(2),
    horario character varying(10),
    categoria_id integer NOT NULL,
    fecha date NOT NULL
);


ALTER TABLE public.users_asistencia OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16585)
-- Name: users_asistencia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_asistencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_asistencia_id_seq OWNER TO postgres;

--
-- TOC entry 3440 (class 0 OID 0)
-- Dependencies: 222
-- Name: users_asistencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_asistencia_id_seq OWNED BY public.users_asistencia.id;


--
-- TOC entry 224 (class 1259 OID 16593)
-- Name: users_caja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_caja (
    user_id integer NOT NULL,
    cede_id integer,
    escuela_id integer
);


ALTER TABLE public.users_caja OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16602)
-- Name: users_coordinador; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_coordinador (
    user_id integer NOT NULL,
    fecha_de_nacimiento date,
    cede_id integer,
    escuela_id integer
);


ALTER TABLE public.users_coordinador OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16607)
-- Name: users_director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_director (
    user_id integer NOT NULL,
    fecha_de_nacimiento date,
    cede_id integer,
    escuela_id integer
);


ALTER TABLE public.users_director OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16612)
-- Name: users_graham; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_graham (
    user_id integer NOT NULL
);


ALTER TABLE public.users_graham OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16617)
-- Name: users_padrealumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_padrealumno (
    user_id integer NOT NULL,
    fecha_de_nacimiento date,
    categoria_id integer,
    cede_id integer,
    diciplina_id integer,
    escuela_id integer
);


ALTER TABLE public.users_padrealumno OWNER TO postgres;

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
-- TOC entry 3441 (class 0 OID 0)
-- Dependencies: 230
-- Name: users_profesor_categorias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_profesor_categorias_id_seq OWNED BY public.users_profesor_categorias.id;


--
-- TOC entry 221 (class 1259 OID 16576)
-- Name: users_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    user_type smallint,
    CONSTRAINT users_user_user_type_check CHECK ((user_type >= 0))
);


ALTER TABLE public.users_user OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16639)
-- Name: users_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.users_user_groups OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16637)
-- Name: users_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3442 (class 0 OID 0)
-- Dependencies: 232
-- Name: users_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_groups_id_seq OWNED BY public.users_user_groups.id;


--
-- TOC entry 220 (class 1259 OID 16574)
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO postgres;

--
-- TOC entry 3443 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users_user.id;


--
-- TOC entry 235 (class 1259 OID 16649)
-- Name: users_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.users_user_user_permissions OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16647)
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3444 (class 0 OID 0)
-- Dependencies: 234
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_user_permissions_id_seq OWNED BY public.users_user_user_permissions.id;


--
-- TOC entry 2949 (class 2604 OID 16540)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2950 (class 2604 OID 16550)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2948 (class 2604 OID 16530)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2957 (class 2604 OID 16811)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2947 (class 2604 OID 16520)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 16389)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2959 (class 2604 OID 16835)
-- Name: evaluations_evaluacioncualitativa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncualitativa ALTER COLUMN id SET DEFAULT nextval('public.evaluations_evaluacioncualitativa_id_seq'::regclass);


--
-- TOC entry 2961 (class 2604 OID 16847)
-- Name: evaluations_evaluacioncuantitativa id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa ALTER COLUMN id SET DEFAULT nextval('public.evaluations_evaluacioncuantitativa_id_seq'::regclass);


--
-- TOC entry 2963 (class 2604 OID 16856)
-- Name: evaluations_grupodeobjectivos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos ALTER COLUMN id SET DEFAULT nextval('public.evaluations_grupodeobjectivos_id_seq'::regclass);


--
-- TOC entry 2974 (class 2604 OID 25324)
-- Name: evaluations_grupodeobjectivos_objetivos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos_objetivos ALTER COLUMN id SET DEFAULT nextval('public.evaluations_grupodeobjectivos_objetivos_id_seq'::regclass);


--
-- TOC entry 2973 (class 2604 OID 25294)
-- Name: evaluations_objetivo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_objetivo ALTER COLUMN id SET DEFAULT nextval('public.evaluations_objetivo_id_seq'::regclass);


--
-- TOC entry 2964 (class 2604 OID 16864)
-- Name: evaluations_periododeevaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_periododeevaluacion ALTER COLUMN id SET DEFAULT nextval('public.evaluations_periododeevaluacion_id_seq'::regclass);


--
-- TOC entry 2965 (class 2604 OID 16872)
-- Name: evaluations_resultadocualitativo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo ALTER COLUMN id SET DEFAULT nextval('public.evaluations_resultadocualitativo_id_seq'::regclass);


--
-- TOC entry 2967 (class 2604 OID 16884)
-- Name: evaluations_resultadocuantitativo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo ALTER COLUMN id SET DEFAULT nextval('public.evaluations_resultadocuantitativo_id_seq'::regclass);


--
-- TOC entry 2969 (class 2604 OID 17021)
-- Name: matches_partido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matches_partido ALTER COLUMN id SET DEFAULT nextval('public.matches_partido_id_seq'::regclass);


--
-- TOC entry 2972 (class 2604 OID 17040)
-- Name: payments_pago id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_pago ALTER COLUMN id SET DEFAULT nextval('public.payments_pago_id_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 16400)
-- Name: schools_categoria id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_categoria ALTER COLUMN id SET DEFAULT nextval('public.schools_categoria_id_seq'::regclass);


--
-- TOC entry 2941 (class 2604 OID 16410)
-- Name: schools_cede id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_cede ALTER COLUMN id SET DEFAULT nextval('public.schools_cede_id_seq'::regclass);


--
-- TOC entry 2942 (class 2604 OID 16423)
-- Name: schools_diciplina id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_diciplina ALTER COLUMN id SET DEFAULT nextval('public.schools_diciplina_id_seq'::regclass);


--
-- TOC entry 2943 (class 2604 OID 16433)
-- Name: schools_escuela id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela ALTER COLUMN id SET DEFAULT nextval('public.schools_escuela_id_seq'::regclass);


--
-- TOC entry 2944 (class 2604 OID 16446)
-- Name: schools_escuela_diciplinas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela_diciplinas ALTER COLUMN id SET DEFAULT nextval('public.schools_escuela_diciplinas_id_seq'::regclass);


--
-- TOC entry 2945 (class 2604 OID 16456)
-- Name: schools_importarcategorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_importarcategorias ALTER COLUMN id SET DEFAULT nextval('public.schools_importarcategorias_id_seq'::regclass);


--
-- TOC entry 2946 (class 2604 OID 16466)
-- Name: schools_sliderescuela id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_sliderescuela ALTER COLUMN id SET DEFAULT nextval('public.schools_sliderescuela_id_seq'::regclass);


--
-- TOC entry 2953 (class 2604 OID 16590)
-- Name: users_asistencia id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_asistencia ALTER COLUMN id SET DEFAULT nextval('public.users_asistencia_id_seq'::regclass);


--
-- TOC entry 2954 (class 2604 OID 16632)
-- Name: users_profesor_categorias id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias ALTER COLUMN id SET DEFAULT nextval('public.users_profesor_categorias_id_seq'::regclass);


--
-- TOC entry 2951 (class 2604 OID 16579)
-- Name: users_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user ALTER COLUMN id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- TOC entry 2955 (class 2604 OID 16642)
-- Name: users_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups ALTER COLUMN id SET DEFAULT nextval('public.users_user_groups_id_seq'::regclass);


--
-- TOC entry 2956 (class 2604 OID 16652)
-- Name: users_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.users_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3370 (class 0 OID 16537)
-- Dependencies: 217
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 3372 (class 0 OID 16547)
-- Dependencies: 219
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3368 (class 0 OID 16527)
-- Dependencies: 215
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add user	6	add_user
17	Can change user	6	change_user
18	Can delete user	6	delete_user
19	Can add graham	7	add_graham
20	Can change graham	7	change_graham
21	Can delete graham	7	delete_graham
22	Can add director	8	add_director
23	Can change director	8	change_director
24	Can delete director	8	delete_director
25	Can add coordinador	9	add_coordinador
26	Can change coordinador	9	change_coordinador
27	Can delete coordinador	9	delete_coordinador
28	Can add profesor	10	add_profesor
29	Can change profesor	10	change_profesor
30	Can delete profesor	10	delete_profesor
31	Can add padre alumno	11	add_padrealumno
32	Can change padre alumno	11	change_padrealumno
33	Can delete padre alumno	11	delete_padrealumno
34	Can add caja	12	add_caja
35	Can change caja	12	change_caja
36	Can delete caja	12	delete_caja
37	Can add asistencia	13	add_asistencia
38	Can change asistencia	13	change_asistencia
39	Can delete asistencia	13	delete_asistencia
40	Can add diciplina	14	add_diciplina
41	Can change diciplina	14	change_diciplina
42	Can delete diciplina	14	delete_diciplina
43	Can add escuela	15	add_escuela
44	Can change escuela	15	change_escuela
45	Can delete escuela	15	delete_escuela
46	Can add slider escuela	16	add_sliderescuela
47	Can change slider escuela	16	change_sliderescuela
48	Can delete slider escuela	16	delete_sliderescuela
49	Can add cede	17	add_cede
50	Can change cede	17	change_cede
51	Can delete cede	17	delete_cede
52	Can add categoria	18	add_categoria
53	Can change categoria	18	change_categoria
54	Can delete categoria	18	delete_categoria
55	Can add importar categorias	19	add_importarcategorias
56	Can change importar categorias	19	change_importarcategorias
57	Can delete importar categorias	19	delete_importarcategorias
58	Can add pago	20	add_pago
59	Can change pago	20	change_pago
60	Can delete pago	20	delete_pago
61	Can add periodo de evaluacion	21	add_periododeevaluacion
62	Can change periodo de evaluacion	21	change_periododeevaluacion
63	Can delete periodo de evaluacion	21	delete_periododeevaluacion
64	Can add grupo de objectivos	22	add_grupodeobjectivos
65	Can change grupo de objectivos	22	change_grupodeobjectivos
66	Can delete grupo de objectivos	22	delete_grupodeobjectivos
67	Can add evaluacion cuantitativa	23	add_evaluacioncuantitativa
68	Can change evaluacion cuantitativa	23	change_evaluacioncuantitativa
69	Can delete evaluacion cuantitativa	23	delete_evaluacioncuantitativa
70	Can add evaluacion cualitativa	24	add_evaluacioncualitativa
71	Can change evaluacion cualitativa	24	change_evaluacioncualitativa
72	Can delete evaluacion cualitativa	24	delete_evaluacioncualitativa
73	Can add resultado cualitativo	25	add_resultadocualitativo
74	Can change resultado cualitativo	25	change_resultadocualitativo
75	Can delete resultado cualitativo	25	delete_resultadocualitativo
76	Can add resultado cuantitativo	26	add_resultadocuantitativo
77	Can change resultado cuantitativo	26	change_resultadocuantitativo
78	Can delete resultado cuantitativo	26	delete_resultadocuantitativo
79	Can add partido	27	add_partido
80	Can change partido	27	change_partido
81	Can delete partido	27	delete_partido
82	Can add objetivo	28	add_objetivo
83	Can change objetivo	28	change_objetivo
84	Can delete objetivo	28	delete_objetivo
\.


--
-- TOC entry 3390 (class 0 OID 16808)
-- Dependencies: 237
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-01-19 12:16:14.295512+00	1	Soccer	1		14	1
2	2019-01-19 12:16:21.083924+00	1	Borussia	1		15	1
3	2019-01-19 12:36:29.494492+00	2	Fluminense	1		15	1
4	2019-01-19 12:41:28.439234+00	3	Instituto México	1		15	1
5	2019-01-19 12:59:07.375061+00	4	Nido Águila	1		15	1
6	2019-01-19 13:00:30.731411+00	1	Borussia	1		16	1
7	2019-01-19 13:02:19.217045+00	2	Fluminense	1		16	1
8	2019-01-19 13:08:08.456501+00	3	Instituto México	1		16	1
9	2019-01-19 13:09:40.01589+00	4	Nido Águila	1		16	1
10	2019-01-19 13:11:18.316671+00	1	Valle de Bravo - Borussia	1		17	1
11	2019-01-19 13:11:38.363465+00	2	Alto Rendimiento - Borussia	1		17	1
12	2019-01-19 13:12:02.46926+00	3	Club Alemán - Borussia	1		17	1
13	2019-01-19 13:12:17.604871+00	4	Fragata - Borussia	1		17	1
14	2019-01-19 13:12:35.724312+00	5	Herradura - Borussia	1		17	1
15	2019-01-19 13:13:05.840493+00	6	Lomas Verdes - Borussia	1		17	1
16	2019-01-19 13:13:21.789297+00	7	Pedregal - Borussia	1		17	1
17	2019-01-19 13:13:54.988417+00	8	Xochimilco - Borussia	1		17	1
18	2019-01-19 13:14:15.994767+00	9	Xochimilco 2 - Borussia	1		17	1
19	2019-01-19 13:15:11.310099+00	10	Fluminense - Fluminense	1		17	1
20	2019-01-19 13:15:25.04137+00	11	Instituto México Primaria - Instituto México	1		17	1
21	2019-01-19 13:15:52.650045+00	12	Tlalpan Sur - Nido Águila	1		17	1
22	2019-01-19 13:16:41.58018+00	1	1 - Borussia	1		18	1
23	2019-01-21 00:24:57.370054+00	3	2 - Borussia	1		18	1
24	2019-01-21 00:25:16.265685+00	4	3 - Borussia	1		18	1
25	2019-01-21 00:25:35.074209+00	5	4 - Borussia	1		18	1
26	2019-01-21 00:27:06.478017+00	6	5 - Borussia	1		18	1
27	2019-01-21 00:27:38.931658+00	7	Alto Rendimiento - Borussia	1		18	1
28	2019-01-21 00:29:51.328313+00	7	Alto Rendimiento  - Borussia	2	Modifica nombre.	18	1
29	2019-01-21 00:30:45.067846+00	9	Alto Rendimiento Club Alemán - Borussia	1		18	1
30	2019-01-21 00:31:14.430882+00	10	Borusse - Borussia	1		18	1
31	2019-01-21 00:31:32.033672+00	11	Dortmunder Jungs - Borussia	1		18	1
32	2019-01-21 00:31:46.396189+00	12	EMMA - Borussia	1		18	1
33	2019-01-21 00:32:08.739766+00	13	2006 - Borussia	1		18	1
34	2019-01-21 00:32:24.256754+00	14	2007 - Borussia	1		18	1
35	2019-01-21 00:32:47.153381+00	15	2008 - 2009 - Borussia	1		18	1
36	2019-01-21 00:33:07.534765+00	16	2010 - 2012 - Borussia	1		18	1
37	2019-01-21 00:33:23.411627+00	17	2013 - 2015 - Borussia	1		18	1
38	2019-01-21 00:34:52.819509+00	19	EMMA Fragata - Borussia	1		18	1
39	2019-01-21 00:35:16.344669+00	20	2010 - Borussia	1		18	1
40	2019-01-21 00:35:32.255617+00	21	Femenil Alta - Borussia	1		18	1
41	2019-01-21 00:36:14.245137+00	22	Femenil Baja - Borussia	1		18	1
42	2019-01-21 00:36:28.274098+00	23	Porteros - Borussia	1		18	1
43	2019-01-21 00:36:44.127798+00	24	Preparatoria - Borussia	1		18	1
44	2019-01-21 00:37:05.724088+00	25	Secuandaria 1 - Borussia	1		18	1
45	2019-01-21 00:37:20.376693+00	26	Secuandaria 2 - Borussia	1		18	1
46	2019-01-21 00:37:34.64572+00	27	Varonil 2006-2005 - Borussia	1		18	1
47	2019-01-21 00:37:52.86484+00	28	Varonil 2007 - Borussia	1		18	1
48	2019-01-21 00:38:05.462386+00	29	Varonil 2008 - Borussia	1		18	1
49	2019-01-21 00:38:19.391701+00	30	Varonil 2009 - Borussia	1		18	1
50	2019-01-21 00:38:40.00449+00	31	Varonil 2010-2011 - Borussia	1		18	1
51	2019-01-21 00:38:51.123477+00	32	Varonil 2011 - Borussia	1		18	1
52	2019-01-21 00:39:04.652751+00	33	Varonil 2012 - Borussia	1		18	1
53	2019-01-21 00:39:29.145323+00	34	2006-2007 - Borussia	1		18	1
54	2019-01-21 00:39:41.815047+00	35	2008 - Borussia	1		18	1
55	2019-01-21 00:39:56.044983+00	36	2009 - Borussia	1		18	1
56	2019-01-21 00:41:35.45001+00	38	2010 Lomas Verdes - Borussia	1		18	1
57	2019-01-21 00:41:52.550559+00	39	2011 - Borussia	1		18	1
58	2019-01-21 00:42:07.255147+00	40	2012 - Borussia	1		18	1
59	2019-01-21 00:42:24.991217+00	41	2012 Vorshule - Borussia	1		18	1
60	2019-01-21 00:42:42.137404+00	42	2013 - Borussia	1		18	1
61	2019-01-21 00:42:50.289061+00	43	2014 - Borussia	1		18	1
62	2019-01-21 00:43:07.666232+00	44	2014-1 - Borussia	1		18	1
63	2019-01-21 00:43:24.51931+00	45	Prepa Femenil - Borussia	1		18	1
64	2019-01-21 00:43:52.346971+00	46	Prepa Varonil - Borussia	1		18	1
65	2019-01-21 00:44:30.94301+00	47	Secundaria Femenil - Borussia	1		18	1
66	2019-01-21 00:44:51.974737+00	48	Secundaria Varonil - Borussia	1		18	1
67	2019-01-21 00:45:06.907189+00	49	Martes - Borussia	1		18	1
68	2019-01-21 00:45:23.641387+00	50	Miércoles - Borussia	1		18	1
69	2019-01-21 00:45:35.667857+00	51	Jueves - Borussia	1		18	1
70	2019-01-21 00:45:58.203262+00	52	Prepa/Femenil - Borussia	1		18	1
71	2019-01-21 00:46:10.85857+00	53	Sec Femenil - Borussia	1		18	1
72	2019-01-21 00:46:42.96997+00	54	Prepa Varonil Xochimilco - Borussia	1		18	1
73	2019-01-21 00:47:00.066524+00	55	Sec 2° Y 3°/2004 Varonil - Borussia	1		18	1
74	2019-01-21 00:47:12.602533+00	56	Sec 1°/ 2005 Varonil - Borussia	1		18	1
75	2019-01-21 00:47:48.215391+00	57	2008 Xochimilco 2 - Borussia	1		18	1
76	2019-01-21 00:48:12.782818+00	58	2009 Xochimilco 2 - Borussia	1		18	1
77	2019-01-21 00:48:31.733041+00	59	2010 Xochimilco 2 - Borussia	1		18	1
78	2019-01-21 00:48:42.909694+00	60	2011 Xochimilco 2 - Borussia	1		18	1
79	2019-01-21 00:49:00.138158+00	61	DT Femenil - Borussia	1		18	1
80	2019-01-21 00:49:19.490001+00	62	DT Varonil - Borussia	1		18	1
81	2019-01-21 00:49:32.833914+00	63	Escuela Femenil - Borussia	1		18	1
82	2019-01-21 00:49:46.918063+00	64	Selectivo 08-09 - Borussia	1		18	1
83	2019-01-21 00:50:06.499556+00	65	4 División - Fluminense	1		18	1
84	2019-01-21 00:50:24.216547+00	66	Inf D - Fluminense	1		18	1
85	2019-01-21 00:51:29.696674+00	68	Inf D Fluminense - Fluminense	1		18	1
86	2019-01-21 00:51:48.827875+00	69	Club Futbol MAT - Fluminense	1		18	1
87	2019-01-21 00:52:02.648121+00	70	Femenil - Fluminense	1		18	1
88	2019-01-21 00:52:18.267965+00	71	Inf A - Fluminense	1		18	1
89	2019-01-21 00:52:36.62677+00	72	Inf B - Fluminense	1		18	1
90	2019-01-21 00:53:52.661396+00	68	Inf C - Fluminense	2	Modifica nombre.	18	1
91	2019-01-21 00:54:29.034794+00	74	Juv C - Fluminense	1		18	1
92	2019-01-21 00:54:52.910351+00	75	Porteros. - Fluminense	1		18	1
93	2019-01-21 00:57:15.01741+00	76	2007. - Instituto México	1		18	1
94	2019-01-21 00:57:26.598548+00	77	2008. - Instituto México	1		18	1
95	2019-01-21 00:57:37.427565+00	78	2009. - Instituto México	1		18	1
96	2019-01-21 00:58:01.198068+00	79	2010. - Instituto México	1		18	1
97	2019-01-21 00:58:13.036301+00	80	2011. - Instituto México	1		18	1
98	2019-01-21 00:58:25.276078+00	81	2012. - Instituto México	1		18	1
99	2019-01-21 00:58:52.388735+00	82	Escuela De Formacion P.A. - Instituto México	1		18	1
100	2019-01-21 00:59:08.718108+00	83	Escuela De Formacion P.B. - Instituto México	1		18	1
101	2019-01-21 01:00:17.786474+00	84	Femenil. - Instituto México	1		18	1
102	2019-01-21 01:00:36.718191+00	85	1999-2002 - Instituto México	1		18	1
103	2019-01-21 01:00:54.835104+00	86	2003-2004 - Nido Águila	1		18	1
104	2019-01-21 01:01:08.794967+00	85	1999-2002 - Nido Águila	2	Modifica escuela y cede.	18	1
105	2019-01-21 01:01:40.206094+00	87	2005-2006 - Nido Águila	1		18	1
106	2019-01-21 01:02:04.667305+00	88	2007, - Nido Águila	1		18	1
107	2019-01-21 01:02:28.555356+00	89	2008, - Nido Águila	1		18	1
108	2019-01-21 01:02:40.031622+00	90	2009, - Nido Águila	1		18	1
109	2019-01-21 01:02:53.6956+00	91	2010-2011 - Nido Águila	1		18	1
110	2019-01-21 01:03:06.248709+00	92	2012-2013 - Nido Águila	1		18	1
111	2019-01-21 01:03:36.376161+00	93	Femenil, - Nido Águila	1		18	1
112	2019-01-21 03:09:00.596556+00	2	2cristiobalalvarezpr	1	new through import_export	6	1
113	2019-01-21 03:09:00.600245+00	3	3mateobenitezvelazqu	1	new through import_export	6	1
114	2019-01-21 03:09:00.602006+00	4	4anniajaymecabreralo	1	new through import_export	6	1
115	2019-01-21 03:09:00.60364+00	5	5edgarsebastiancabre	1	new through import_export	6	1
116	2019-01-21 03:09:00.605325+00	6	6luisangelgarciagarc	1	new through import_export	6	1
117	2019-01-21 03:09:00.606951+00	7	7erickpatriciogarcia	1	new through import_export	6	1
118	2019-01-21 03:09:00.608474+00	8	8axelgonzalezdomingu	1	new through import_export	6	1
119	2019-01-21 03:09:00.610006+00	9	9emiliohidalgoplanti	1	new through import_export	6	1
120	2019-01-21 03:09:00.611599+00	10	10inttihoffmannbonna	1	new through import_export	6	1
121	2019-01-21 03:09:00.613318+00	11	11mateolebrijagarza	1	new through import_export	6	1
122	2019-01-21 03:09:00.614823+00	12	12lucalopezpauls	1	new through import_export	6	1
123	2019-01-21 03:09:00.616224+00	13	13naraianrattivillar	1	new through import_export	6	1
124	2019-01-21 03:09:00.617673+00	14	14matiasrebollarcere	1	new through import_export	6	1
125	2019-01-21 03:09:00.619172+00	15	15kairosasrosenfeld	1	new through import_export	6	1
126	2019-01-21 03:09:00.620533+00	16	16eriksalashernandez	1	new through import_export	6	1
127	2019-01-21 03:09:00.622016+00	17	17javiersalinasalmaz	1	new through import_export	6	1
128	2019-01-21 03:09:00.623498+00	18	18luisezequielsotopo	1	new through import_export	6	1
129	2019-01-21 03:09:00.624962+00	19	19ikaitreviñodorado	1	new through import_export	6	1
130	2019-01-21 03:09:00.626477+00	20	20emilianomercadooca	1	new through import_export	6	1
131	2019-01-21 03:09:00.627908+00	21	21erickfaguilarsuare	1	new through import_export	6	1
132	2019-01-21 03:09:00.629307+00	22	22emilianobautistaca	1	new through import_export	6	1
133	2019-01-21 03:09:00.630733+00	23	23josuebautistaestra	1	new through import_export	6	1
134	2019-01-21 03:09:00.632126+00	24	24jonathancruzjarami	1	new through import_export	6	1
135	2019-01-21 03:09:00.633504+00	25	25arielgarciagomez	1	new through import_export	6	1
136	2019-01-21 03:09:00.634986+00	26	26darìoguadarramaja	1	new through import_export	6	1
137	2019-01-21 03:09:00.636369+00	27	27ricardolegorretaca	1	new through import_export	6	1
138	2019-01-21 03:09:00.637817+00	28	28diegolujanoemilian	1	new through import_export	6	1
139	2019-01-21 03:09:00.639227+00	29	29hazielafifperedoes	1	new through import_export	6	1
140	2019-01-21 03:09:00.640588+00	30	30josepablotolamendo	1	new through import_export	6	1
141	2019-01-21 03:09:00.642014+00	31	31kuntreviñodorado	1	new through import_export	6	1
142	2019-01-21 03:09:00.643428+00	32	32yohanavazquezrebol	1	new through import_export	6	1
143	2019-01-21 03:09:00.644844+00	33	33mateovillafañareb	1	new through import_export	6	1
144	2019-01-21 03:09:00.646286+00	34	34julianvillanuevaor	1	new through import_export	6	1
145	2019-01-21 03:09:00.647685+00	35	35rodrigocruzjaramil	1	new through import_export	6	1
146	2019-01-21 03:09:00.649101+00	36	36pedrodiazflores	1	new through import_export	6	1
147	2019-01-21 03:09:00.650576+00	37	37juanmanueldiazgard	1	new through import_export	6	1
148	2019-01-21 03:09:00.652012+00	38	38nicolaslebrijagarz	1	new through import_export	6	1
149	2019-01-21 03:09:00.653467+00	39	39giovanisantoscolin	1	new through import_export	6	1
150	2019-01-21 03:09:00.655017+00	40	40kevinsaidvazquezre	1	new through import_export	6	1
151	2019-01-21 03:09:00.656523+00	41	41dyronacostasantill	1	new through import_export	6	1
152	2019-01-21 03:09:00.658002+00	42	42rosauracarbajalreb	1	new through import_export	6	1
153	2019-01-21 03:09:00.659501+00	43	43sebastiancastilloa	1	new through import_export	6	1
154	2019-01-21 03:09:00.66099+00	44	44franciscodiazflore	1	new through import_export	6	1
155	2019-01-21 03:09:00.662484+00	45	45gaelgarciabernal	1	new through import_export	6	1
156	2019-01-21 03:09:00.663689+00	46	46lucaslebrijagarza	1	new through import_export	6	1
157	2019-01-21 03:09:00.66484+00	47	47giovanipeñalozalo	1	new through import_export	6	1
158	2019-01-21 03:09:00.666172+00	48	48carlosreyesjimenez	1	new through import_export	6	1
159	2019-01-21 03:09:00.667553+00	49	49mauriciosalasherna	1	new through import_export	6	1
160	2019-01-21 03:09:00.66901+00	50	50juancarlossantosco	1	new through import_export	6	1
161	2019-01-21 03:09:00.670303+00	51	51oscarvacacaballero	1	new through import_export	6	1
162	2019-01-21 03:09:00.671519+00	52	52victorvillafañaes	1	new through import_export	6	1
163	2019-01-21 03:09:00.672651+00	53	53joaquinvillafañar	1	new through import_export	6	1
164	2019-01-21 03:09:00.673994+00	54	54bryanesquivellopez	1	new through import_export	6	1
165	2019-01-21 03:09:00.675192+00	55	55brandondanielgonza	1	new through import_export	6	1
166	2019-01-21 03:09:00.676332+00	56	56jostinbrianguadarr	1	new through import_export	6	1
167	2019-01-21 03:09:00.677602+00	57	57taniaguadarramaram	1	new through import_export	6	1
168	2019-01-21 03:09:00.678857+00	58	58joseenriquegutierr	1	new through import_export	6	1
169	2019-01-21 03:09:00.679999+00	59	59jesusjuarezquinter	1	new through import_export	6	1
170	2019-01-21 03:09:00.681195+00	60	60erickomarlopezbece	1	new through import_export	6	1
171	2019-01-21 03:09:00.682434+00	61	61fiorenzalujanoemil	1	new through import_export	6	1
172	2019-01-21 03:09:00.683651+00	62	62jazminmontorosotel	1	new through import_export	6	1
173	2019-01-21 03:09:00.684776+00	63	63sebastianortizpeñ	1	new through import_export	6	1
174	2019-01-21 03:09:00.685945+00	64	64fernandoortizreyes	1	new through import_export	6	1
175	2019-01-21 03:09:00.687067+00	65	65omarpedrazaaguilar	1	new through import_export	6	1
176	2019-01-21 03:09:00.688296+00	66	66rubenpedrazasaldan	1	new through import_export	6	1
177	2019-01-21 03:09:00.689383+00	67	67luisenriquerebolla	1	new through import_export	6	1
178	2019-01-21 03:09:00.690596+00	68	68marcoantoniosantos	1	new through import_export	6	1
179	2019-01-21 03:09:00.691717+00	69	69luisfernandovictor	1	new through import_export	6	1
180	2019-01-21 03:09:00.692934+00	70	70tomalexanderschmid	1	new through import_export	6	1
181	2019-01-21 03:09:00.694117+00	71	71aquilescarrillorod	1	new through import_export	6	1
182	2019-01-21 03:09:00.695369+00	72	72joaohernandez	1	new through import_export	6	1
183	2019-01-21 03:09:00.696607+00	73	73juanluisbarillas	1	new through import_export	6	1
184	2019-01-21 03:09:00.697833+00	74	74pablostoehr	1	new through import_export	6	1
185	2019-01-21 03:09:00.699061+00	75	75efrenmontealongoma	1	new through import_export	6	1
186	2019-01-21 03:09:00.700229+00	76	76fernandogarciameji	1	new through import_export	6	1
187	2019-01-21 03:09:00.701381+00	77	77franciscoandrescar	1	new through import_export	6	1
188	2019-01-21 03:09:00.702581+00	78	78axelmendozagodinez	1	new through import_export	6	1
189	2019-01-21 03:09:00.703799+00	79	79emiliodelvallegrun	1	new through import_export	6	1
190	2019-01-21 03:09:00.705078+00	80	80bryanreyesmartinez	1	new through import_export	6	1
191	2019-01-21 03:09:00.706489+00	81	81gabrielhernandez	1	new through import_export	6	1
192	2019-01-21 03:09:00.707731+00	82	82alejandrovsanchezh	1	new through import_export	6	1
193	2019-01-21 03:09:00.708994+00	83	83diegohernandezrome	1	new through import_export	6	1
194	2019-01-21 03:09:00.710143+00	84	84andreasweber	1	new through import_export	6	1
195	2019-01-21 03:09:00.71126+00	85	85alvaroelizaldezamu	1	new through import_export	6	1
196	2019-01-21 03:09:00.712585+00	86	86emiliomedinacastel	1	new through import_export	6	1
197	2019-01-21 03:09:00.713829+00	87	87danielapontonesgru	1	new through import_export	6	1
198	2019-01-21 03:09:00.714967+00	88	88sebastianbenitez	1	new through import_export	6	1
199	2019-01-21 03:09:00.716134+00	89	89gerardoalonsomarti	1	new through import_export	6	1
200	2019-01-21 03:09:00.717228+00	90	90alejandrofernandez	1	new through import_export	6	1
201	2019-01-21 03:09:00.718508+00	91	91emilianohermosillo	1	new through import_export	6	1
202	2019-01-21 03:09:00.72027+00	92	92javierrancañobotay	1	new through import_export	6	1
203	2019-01-21 03:09:00.721871+00	93	93hectormauricioguzm	1	new through import_export	6	1
204	2019-01-21 03:09:00.723374+00	94	94dariohernandezcorn	1	new through import_export	6	1
205	2019-01-21 03:09:00.725043+00	95	95santiagobarbosazaz	1	new through import_export	6	1
206	2019-01-21 03:09:00.7264+00	96	96andrecubillaschave	1	new through import_export	6	1
207	2019-01-21 03:09:00.727668+00	97	97mariotorresmeneses	1	new through import_export	6	1
208	2019-01-21 03:09:00.729396+00	98	98ikerolinvelazco	1	new through import_export	6	1
209	2019-01-21 03:09:00.731126+00	99	99alexisgonzalesriva	1	new through import_export	6	1
210	2019-01-21 03:09:00.732641+00	100	100jovaniuwitonzerwa	1	new through import_export	6	1
211	2019-01-21 03:09:00.73411+00	101	101guillermodomingue	1	new through import_export	6	1
212	2019-01-21 03:09:00.73563+00	102	102miltonochoanieves	1	new through import_export	6	1
213	2019-01-21 03:09:00.737053+00	103	103robertogarcia	1	new through import_export	6	1
214	2019-01-21 03:09:00.738567+00	104	104brunodanielcaball	1	new through import_export	6	1
215	2019-01-21 03:09:00.739983+00	105	105mackenziemackenzi	1	new through import_export	6	1
216	2019-01-21 03:09:00.741465+00	106	106tonatiuhgutierrez	1	new through import_export	6	1
217	2019-01-21 03:09:00.743223+00	107	107hugocarlosgomez	1	new through import_export	6	1
218	2019-01-21 03:09:00.74502+00	108	108marianofrancocace	1	new through import_export	6	1
219	2019-01-21 03:09:00.746793+00	109	109kongphiphatmachot	1	new through import_export	6	1
220	2019-01-21 03:09:00.748536+00	110	110omardelacruz	1	new through import_export	6	1
221	2019-01-21 03:09:00.750246+00	111	111patriciovelazquez	1	new through import_export	6	1
222	2019-01-21 03:09:00.75203+00	112	112ikernarvaezbedoll	1	new through import_export	6	1
223	2019-01-21 03:09:00.753854+00	113	113josetorrescipres	1	new through import_export	6	1
224	2019-01-21 03:09:00.755615+00	114	114davidmichellereye	1	new through import_export	6	1
225	2019-01-21 03:09:00.757333+00	115	115luisfernandoweber	1	new through import_export	6	1
226	2019-01-21 03:09:00.759137+00	116	116diegodelgadillolo	1	new through import_export	6	1
227	2019-01-21 03:09:00.760831+00	117	117emilianoparedessa	1	new through import_export	6	1
228	2019-01-21 03:09:00.762563+00	118	118santiagoramosespi	1	new through import_export	6	1
229	2019-01-21 03:09:00.764347+00	119	119benjaminramosespi	1	new through import_export	6	1
230	2019-01-21 03:09:00.766132+00	120	120santiagoglatzguti	1	new through import_export	6	1
231	2019-01-21 03:09:00.767842+00	121	121pabloglatzgutierr	1	new through import_export	6	1
232	2019-01-21 03:09:00.76955+00	122	122juancarlosulasiad	1	new through import_export	6	1
233	2019-01-21 03:09:00.77143+00	123	123anderrobleslarruc	1	new through import_export	6	1
234	2019-01-21 03:09:00.773214+00	124	124diegoalvarez	1	new through import_export	6	1
235	2019-01-21 03:09:00.774999+00	125	125mickelmanzo	1	new through import_export	6	1
236	2019-01-21 03:09:00.776688+00	126	126alonsorosales	1	new through import_export	6	1
237	2019-01-21 03:09:00.778333+00	127	127alonsolatorrerojo	1	new through import_export	6	1
238	2019-01-21 03:09:00.779992+00	128	128emilioruizmackenz	1	new through import_export	6	1
239	2019-01-21 03:09:00.781649+00	129	129santiagoospinagon	1	new through import_export	6	1
240	2019-01-21 03:09:00.783217+00	130	130rafaelemilianonav	1	new through import_export	6	1
241	2019-01-21 03:09:00.784763+00	131	131joellopezjimenez	1	new through import_export	6	1
242	2019-01-21 03:09:00.786242+00	132	132rubenjesuslaracor	1	new through import_export	6	1
243	2019-01-21 03:09:00.787676+00	133	133josearturogutierr	1	new through import_export	6	1
244	2019-01-21 03:09:00.789071+00	134	134emilianomartinezr	1	new through import_export	6	1
245	2019-01-21 03:09:00.790582+00	135	135jorgeignaciocasti	1	new through import_export	6	1
246	2019-01-21 03:09:00.792081+00	136	136santiagorojaszapa	1	new through import_export	6	1
247	2019-01-21 03:09:00.793473+00	137	137sebastianpaaschca	1	new through import_export	6	1
248	2019-01-21 03:09:00.795004+00	138	138ricardozorreroarg	1	new through import_export	6	1
249	2019-01-21 03:09:00.796421+00	139	139diegodelaveganuñe	1	new through import_export	6	1
250	2019-01-21 03:09:00.797897+00	140	140jorgefreyremendoz	1	new through import_export	6	1
251	2019-01-21 03:09:00.799375+00	141	141josemanuelvenegas	1	new through import_export	6	1
252	2019-01-21 03:09:00.800822+00	142	142gustavoalfonsocas	1	new through import_export	6	1
253	2019-01-21 03:09:00.802307+00	143	143maximilianocervan	1	new through import_export	6	1
254	2019-01-21 03:09:00.803776+00	144	144hectorjaspeadobec	1	new through import_export	6	1
255	2019-01-21 03:09:00.805268+00	145	145sebastiancontroho	1	new through import_export	6	1
256	2019-01-21 03:09:00.806771+00	146	146santiagogomezdelv	1	new through import_export	6	1
257	2019-01-21 03:09:00.808295+00	147	147sebastianzapatalo	1	new through import_export	6	1
258	2019-01-21 03:09:00.809879+00	148	148emilianosanchezma	1	new through import_export	6	1
259	2019-01-21 03:09:00.811203+00	149	149adrespesqueiravog	1	new through import_export	6	1
260	2019-01-21 03:09:00.812356+00	150	150mauriciohuertatov	1	new through import_export	6	1
261	2019-01-21 03:09:00.813528+00	151	151alejandrobarragan	1	new through import_export	6	1
262	2019-01-21 03:09:00.814734+00	152	152mateosanchezcisne	1	new through import_export	6	1
263	2019-01-21 03:09:00.815988+00	153	153santiagosanchezci	1	new through import_export	6	1
264	2019-01-21 03:09:00.817315+00	154	154andresurrutiasegu	1	new through import_export	6	1
265	2019-01-21 03:09:00.818515+00	155	155inescorresruiz	1	new through import_export	6	1
266	2019-01-21 03:09:00.819698+00	156	156matiasalvaradojua	1	new through import_export	6	1
267	2019-01-21 03:09:00.8209+00	157	157emiliolaracortesl	1	new through import_export	6	1
268	2019-01-21 03:09:00.822066+00	158	158alejandrolinarest	1	new through import_export	6	1
269	2019-01-21 03:09:00.823315+00	159	159emilioeugeniomart	1	new through import_export	6	1
270	2019-01-21 03:09:00.824613+00	160	160pabloquinterovill	1	new through import_export	6	1
271	2019-01-21 03:09:00.825946+00	161	161carloshumbertooro	1	new through import_export	6	1
272	2019-01-21 03:09:00.827141+00	162	162mariaestherespino	1	new through import_export	6	1
273	2019-01-21 03:09:00.82833+00	163	163alejandrotreviñop	1	new through import_export	6	1
274	2019-01-21 03:09:00.829603+00	164	164andremartinez(pru	1	new through import_export	6	1
275	2019-01-21 03:09:00.830998+00	165	165danielcortezranir	1	new through import_export	6	1
276	2019-01-21 03:09:00.832205+00	166	166dantecortezramire	1	new through import_export	6	1
277	2019-01-21 03:09:00.833357+00	167	167diegodelarivaunza	1	new through import_export	6	1
278	2019-01-21 03:09:00.834562+00	168	168erikdöringgutierr	1	new through import_export	6	1
279	2019-01-21 03:09:00.835843+00	169	169juliangraueharo	1	new through import_export	6	1
280	2019-01-21 03:09:00.837006+00	170	170gilbertomoedanoar	1	new through import_export	6	1
281	2019-01-21 03:09:00.83815+00	171	171gaelgerardoreyesm	1	new through import_export	6	1
282	2019-01-21 03:09:00.839343+00	172	172paoloramirezvazqu	1	new through import_export	6	1
283	2019-01-21 03:09:00.840553+00	173	173juliopabloascorve	1	new through import_export	6	1
284	2019-01-21 03:09:00.841778+00	174	174andrescardenascru	1	new through import_export	6	1
285	2019-01-21 03:09:00.842956+00	175	175salomonairaje	1	new through import_export	6	1
286	2019-01-21 03:09:00.844251+00	176	176luccianobarocioar	1	new through import_export	6	1
287	2019-01-21 03:09:00.845362+00	177	177diegovaldezlopez	1	new through import_export	6	1
288	2019-01-21 03:09:00.84659+00	178	178santiagodiazdeleo	1	new through import_export	6	1
289	2019-01-21 03:09:00.847646+00	179	179rodrigomejiaalvar	1	new through import_export	6	1
290	2019-01-21 03:09:00.848792+00	180	180manuelvalero	1	new through import_export	6	1
291	2019-01-21 03:09:00.850058+00	181	181andresmiguelherna	1	new through import_export	6	1
292	2019-01-21 03:09:00.851529+00	182	182danielkiewekgarci	1	new through import_export	6	1
293	2019-01-21 03:09:00.853044+00	183	183danielhaziel	1	new through import_export	6	1
294	2019-01-21 03:09:00.854622+00	184	184alonsomartinez	1	new through import_export	6	1
295	2019-01-21 03:09:00.856145+00	185	185vinicioaguirretor	1	new through import_export	6	1
296	2019-01-21 03:09:00.857712+00	186	186santiagoleyvagarc	1	new through import_export	6	1
297	2019-01-21 03:09:00.859385+00	187	187danielmoradorebol	1	new through import_export	6	1
298	2019-01-21 03:09:00.861269+00	188	188nicolascarrionlop	1	new through import_export	6	1
299	2019-01-21 03:09:00.862932+00	189	189jorgeolinvelasco	1	new through import_export	6	1
300	2019-01-21 03:09:00.864349+00	190	190valeriaalizeezamo	1	new through import_export	6	1
301	2019-01-21 03:09:00.866014+00	191	191renatanavarrovill	1	new through import_export	6	1
302	2019-01-21 03:09:00.867574+00	192	192salvadorjanmartit	1	new through import_export	6	1
303	2019-01-21 03:09:00.869218+00	193	193iandiegomejiaorti	1	new through import_export	6	1
304	2019-01-21 03:09:00.870685+00	194	194rosendojimenezser	1	new through import_export	6	1
305	2019-01-21 03:09:00.8719+00	195	195cosmoblancoguerre	1	new through import_export	6	1
306	2019-01-21 03:09:00.873172+00	196	196joshuadanielbecer	1	new through import_export	6	1
307	2019-01-21 03:09:00.874548+00	197	197patriciopichardol	1	new through import_export	6	1
308	2019-01-21 03:09:00.875792+00	198	198carlosdiazdeleona	1	new through import_export	6	1
309	2019-01-21 03:09:00.877046+00	199	199salvadorpeñamonca	1	new through import_export	6	1
310	2019-01-21 03:09:00.878348+00	200	200ianlucamaraschein	1	new through import_export	6	1
311	2019-01-21 03:09:00.879544+00	201	201alejandrorodrigue	1	new through import_export	6	1
312	2019-01-21 03:09:00.880759+00	202	202juanpablorodrigue	1	new through import_export	6	1
313	2019-01-21 03:09:00.881933+00	203	203brunovazqueztapia	1	new through import_export	6	1
314	2019-01-21 03:09:00.883226+00	204	204miguelangelgarcia	1	new through import_export	6	1
315	2019-01-21 03:09:00.884338+00	205	205fernandoalcantaro	1	new through import_export	6	1
316	2019-01-21 03:09:00.885467+00	206	206carlossebastianru	1	new through import_export	6	1
317	2019-01-21 03:09:00.886639+00	207	207emiliocarlosalman	1	new through import_export	6	1
318	2019-01-21 03:09:00.887813+00	208	208poltreserrasbogot	1	new through import_export	6	1
319	2019-01-21 03:09:00.889039+00	209	209santiagocalvasanc	1	new through import_export	6	1
320	2019-01-21 03:09:00.890287+00	210	210ulisesmauricioper	1	new through import_export	6	1
321	2019-01-21 03:09:00.89158+00	211	211javierhernandez	1	new through import_export	6	1
322	2019-01-21 03:09:00.892914+00	212	212emilianoxavieravi	1	new through import_export	6	1
323	2019-01-21 03:09:00.894382+00	213	213javiervalero	1	new through import_export	6	1
324	2019-01-21 03:09:00.895691+00	214	214luisenriquegrcia	1	new through import_export	6	1
325	2019-01-21 03:09:00.897021+00	215	215mateomiguelorozco	1	new through import_export	6	1
326	2019-01-21 03:09:00.898322+00	216	216alexgandaracastil	1	new through import_export	6	1
327	2019-01-21 03:09:00.899756+00	217	217diegoadrianzamora	1	new through import_export	6	1
328	2019-01-21 03:09:00.901135+00	218	218nicolascallejasqu	1	new through import_export	6	1
329	2019-01-21 03:09:00.902614+00	219	219emiliaisabelvazqu	1	new through import_export	6	1
330	2019-01-21 03:09:00.903986+00	220	220emilianofuentesca	1	new through import_export	6	1
331	2019-01-21 03:09:00.905469+00	221	221matiasgarcia	1	new through import_export	6	1
332	2019-01-21 03:09:00.907068+00	222	222matiasaragonmora	1	new through import_export	6	1
333	2019-01-21 03:09:00.908341+00	223	223josemarianovazque	1	new through import_export	6	1
334	2019-01-21 03:09:00.909732+00	224	224teodeleonsuarez	1	new through import_export	6	1
335	2019-01-21 03:09:00.911064+00	225	225maximilianosiebee	1	new through import_export	6	1
336	2019-01-21 03:09:00.912278+00	226	226patriciobañosgarc	1	new through import_export	6	1
337	2019-01-21 03:09:00.91385+00	227	227rubennavarrovilla	1	new through import_export	6	1
338	2019-01-21 03:09:00.915106+00	228	228rafaellopezalvare	1	new through import_export	6	1
339	2019-01-21 03:09:00.916542+00	229	229juanguillermojuar	1	new through import_export	6	1
340	2019-01-21 03:09:00.917873+00	230	230iñigoruizamezcua	1	new through import_export	6	1
341	2019-01-21 03:09:00.919235+00	231	231santiagoalonsoang	1	new through import_export	6	1
342	2019-01-21 03:09:00.920433+00	232	232josebojorgemoscon	1	new through import_export	6	1
343	2019-01-21 03:09:00.92182+00	233	233andresdelvalleg.	1	new through import_export	6	1
344	2019-01-21 03:09:00.922984+00	234	234cristobalperezcor	1	new through import_export	6	1
345	2019-01-21 03:09:00.92411+00	235	235leongrediagaramir	1	new through import_export	6	1
346	2019-01-21 03:09:00.925257+00	236	236luisandresrojasur	1	new through import_export	6	1
347	2019-01-21 03:09:00.926588+00	237	237camilacallejosqui	1	new through import_export	6	1
348	2019-01-21 03:09:00.927977+00	238	238valentinoreytrejo	1	new through import_export	6	1
349	2019-01-21 03:09:00.929344+00	239	239ikersaucedaalvare	1	new through import_export	6	1
350	2019-01-21 03:09:00.93065+00	240	240mariarominadelgad	1	new through import_export	6	1
351	2019-01-21 03:09:00.931984+00	241	241davidmaximilianol	1	new through import_export	6	1
352	2019-01-21 03:09:00.933313+00	242	242mateolopezvergara	1	new through import_export	6	1
353	2019-01-21 03:09:00.934485+00	243	243patriciotorresgar	1	new through import_export	6	1
354	2019-01-21 03:09:00.935557+00	244	244lorenzotorresgarc	1	new through import_export	6	1
355	2019-01-21 03:09:00.93665+00	245	245eliasvital	1	new through import_export	6	1
356	2019-01-21 03:09:00.937818+00	246	246lorenzobenitez	1	new through import_export	6	1
357	2019-01-21 03:09:00.939112+00	247	247danielfunkeruiz	1	new through import_export	6	1
358	2019-01-21 03:09:00.940449+00	248	248lucasescalante	1	new through import_export	6	1
359	2019-01-21 03:09:00.941797+00	249	249alonsorodriguezor	1	new through import_export	6	1
360	2019-01-21 03:09:00.943046+00	250	250diegoriveroborrel	1	new through import_export	6	1
361	2019-01-21 03:09:00.944311+00	251	251mirandaguerreroma	1	new through import_export	6	1
362	2019-01-21 03:09:00.945486+00	252	252samuelmejiarojas	1	new through import_export	6	1
363	2019-01-21 03:09:00.946721+00	253	253sebastianlizamama	1	new through import_export	6	1
364	2019-01-21 03:09:00.947806+00	254	254mateoislasreyes	1	new through import_export	6	1
365	2019-01-21 03:09:00.949137+00	255	255alejandrogalvanmi	1	new through import_export	6	1
366	2019-01-21 03:09:00.950336+00	256	256gerardofernandezg	1	new through import_export	6	1
367	2019-01-21 03:09:00.951457+00	257	257emilianozaraterey	1	new through import_export	6	1
368	2019-01-21 03:09:00.952606+00	258	258josemariadottivel	1	new through import_export	6	1
369	2019-01-21 03:09:00.953747+00	259	259matiasboyherreria	1	new through import_export	6	1
370	2019-01-21 03:09:00.95492+00	260	260juanpablobenitola	1	new through import_export	6	1
371	2019-01-21 03:09:00.95624+00	261	261iñakiavilamoran	1	new through import_export	6	1
372	2019-01-21 03:09:00.957394+00	262	262lotte volpert	1	new through import_export	6	1
373	2019-01-21 03:09:00.958671+00	263	263katrynjohannatimm	1	new through import_export	6	1
374	2019-01-21 03:09:00.959909+00	264	264valerie posch	1	new through import_export	6	1
375	2019-01-21 03:09:00.961083+00	265	265lucianamaiteimaña	1	new through import_export	6	1
376	2019-01-21 03:09:00.962215+00	266	266michellehadadgonz	1	new through import_export	6	1
377	2019-01-21 03:09:00.963327+00	267	267lea diepeenbrock	1	new through import_export	6	1
378	2019-01-21 03:09:00.964452+00	268	268alejandracantuvil	1	new through import_export	6	1
379	2019-01-21 03:09:00.965516+00	269	269danielabonequivel	1	new through import_export	6	1
380	2019-01-21 03:09:00.966699+00	270	270nadinetablerosana	1	new through import_export	6	1
381	2019-01-21 03:09:00.967787+00	271	271andrearomancrabtr	1	new through import_export	6	1
382	2019-01-21 03:09:00.968927+00	272	272mariafernandareye	1	new through import_export	6	1
383	2019-01-21 03:09:00.970167+00	273	273julianoriegatrevi	1	new through import_export	6	1
384	2019-01-21 03:09:00.971399+00	274	274julianahuertaszam	1	new through import_export	6	1
385	2019-01-21 03:09:00.972637+00	275	275isabellahernandez	1	new through import_export	6	1
386	2019-01-21 03:09:00.97391+00	276	276victoriaflorestol	1	new through import_export	6	1
387	2019-01-21 03:09:00.975143+00	277	277sofiaespinosarosa	1	new through import_export	6	1
388	2019-01-21 03:09:00.976431+00	278	278emiliadiazbarriga	1	new through import_export	6	1
389	2019-01-21 03:09:00.977911+00	279	279marianabonequivel	1	new through import_export	6	1
390	2019-01-21 03:09:00.9792+00	280	280isabelabauersanch	1	new through import_export	6	1
391	2019-01-21 03:09:00.980299+00	281	281luciabargalloknod	1	new through import_export	6	1
392	2019-01-21 03:09:00.981474+00	282	282elisabargalloknod	1	new through import_export	6	1
393	2019-01-21 03:09:00.982694+00	283	283rominaalexandraba	1	new through import_export	6	1
394	2019-01-21 03:09:00.983838+00	284	284katrynjohannatimm	1	new through import_export	6	1
395	2019-01-21 03:09:00.985009+00	285	285nadinetablerosana	1	new through import_export	6	1
396	2019-01-21 03:09:00.986286+00	286	286federicoscullzing	1	new through import_export	6	1
397	2019-01-21 03:09:00.987376+00	287	287alonsorodriguezor	1	new through import_export	6	1
398	2019-01-21 03:09:00.988467+00	288	288nicolasnavratiles	1	new through import_export	6	1
399	2019-01-21 03:09:00.98966+00	289	289emiliomorgenstern	1	new through import_export	6	1
400	2019-01-21 03:09:00.990807+00	290	290axelhintzesaucedo	1	new through import_export	6	1
401	2019-01-21 03:09:00.992102+00	291	291paolocusimaldonad	1	new through import_export	6	1
402	2019-01-21 03:09:00.993308+00	292	292rominaalexandraba	1	new through import_export	6	1
403	2019-01-21 03:09:00.994485+00	293	293jaimediego tellez	1	new through import_export	6	1
404	2019-01-21 03:09:00.995591+00	294	294sebastian sommerp	1	new through import_export	6	1
405	2019-01-21 03:09:00.996769+00	295	295matias sommerpera	1	new through import_export	6	1
406	2019-01-21 03:09:00.997852+00	296	296danieleliassibaja	1	new through import_export	6	1
407	2019-01-21 03:09:00.998951+00	297	297patrickseguraesco	1	new through import_export	6	1
408	2019-01-21 03:09:01.000056+00	298	298petermichael ritt	1	new through import_export	6	1
409	2019-01-21 03:09:01.001989+00	299	299maximilian perman	1	new through import_export	6	1
410	2019-01-21 03:09:01.003612+00	300	300felixalexander pe	1	new through import_export	6	1
411	2019-01-21 03:09:01.005144+00	301	301luisgperezmartine	1	new through import_export	6	1
412	2019-01-21 03:09:01.006427+00	302	302martin  pamoulis	1	new through import_export	6	1
413	2019-01-21 03:09:01.007531+00	303	303gustavo pachecoor	1	new through import_export	6	1
414	2019-01-21 03:09:01.008706+00	304	304patrickmaxottmull	1	new through import_export	6	1
415	2019-01-21 03:09:01.009934+00	305	305humberto mijarest	1	new through import_export	6	1
416	2019-01-21 03:09:01.011268+00	306	306silvamauricio mar	1	new through import_export	6	1
417	2019-01-21 03:09:01.01247+00	307	307nicolas lacknerbr	1	new through import_export	6	1
418	2019-01-21 03:09:01.013611+00	308	308santiago hernande	1	new through import_export	6	1
419	2019-01-21 03:09:01.014871+00	309	309pablo hernandezro	1	new through import_export	6	1
420	2019-01-21 03:09:01.016099+00	310	310johannesh.hauserf	1	new through import_export	6	1
421	2019-01-21 03:09:01.017427+00	311	311sebastian gunther	1	new through import_export	6	1
422	2019-01-21 03:09:01.018597+00	312	312axel gieseckevald	1	new through import_export	6	1
423	2019-01-21 03:09:01.01991+00	313	313santiango garcia 	1	new through import_export	6	1
424	2019-01-21 03:09:01.021123+00	314	314patricio garciamo	1	new through import_export	6	1
425	2019-01-21 03:09:01.022314+00	315	315josemaria fuentes	1	new through import_export	6	1
426	2019-01-21 03:09:01.023393+00	316	316alexandereichervi	1	new through import_export	6	1
427	2019-01-21 03:09:01.024506+00	317	317diegoa.estefanbiu	1	new through import_export	6	1
428	2019-01-21 03:09:01.025594+00	318	318daniel dehoyosort	1	new through import_export	6	1
429	2019-01-21 03:09:01.026812+00	319	319santiago collante	1	new through import_export	6	1
430	2019-01-21 03:09:01.027882+00	320	320diegocollantestam	1	new through import_export	6	1
431	2019-01-21 03:09:01.02894+00	321	321mauricio brocados	1	new through import_export	6	1
432	2019-01-21 03:09:01.030061+00	322	322patricio bosquero	1	new through import_export	6	1
433	2019-01-21 03:09:01.031196+00	323	323mariano  biehler	1	new through import_export	6	1
434	2019-01-21 03:09:01.032364+00	324	324alberto arienzoac	1	new through import_export	6	1
435	2019-01-21 03:09:01.03344+00	325	325michelle zimmerga	1	new through import_export	6	1
436	2019-01-21 03:09:01.034548+00	326	326sebastian woodsan	1	new through import_export	6	1
437	2019-01-21 03:09:01.035639+00	327	327andresfelipe rest	1	new through import_export	6	1
438	2019-01-21 03:09:01.036715+00	328	328yakimpresarueda	1	new through import_export	6	1
439	2019-01-21 03:09:01.037854+00	329	329arturo martinesla	1	new through import_export	6	1
440	2019-01-21 03:09:01.038974+00	330	330nicolas lizamamag	1	new through import_export	6	1
441	2019-01-21 03:09:01.040059+00	331	331santiago lazaropo	1	new through import_export	6	1
442	2019-01-21 03:09:01.041139+00	332	332nicolas lazaropol	1	new through import_export	6	1
443	2019-01-21 03:09:01.042309+00	333	333frederickgutcorde	1	new through import_export	6	1
444	2019-01-21 03:09:01.043409+00	334	334bennetfischernico	1	new through import_export	6	1
445	2019-01-21 03:09:01.044542+00	335	335jeronimo diazbarr	1	new through import_export	6	1
446	2019-01-21 03:09:01.045703+00	336	336joseluis castrofe	1	new through import_export	6	1
447	2019-01-21 03:09:01.047108+00	337	337stephan beihofers	1	new through import_export	6	1
448	2019-01-21 03:09:01.048207+00	338	338juanpablo alvarez	1	new through import_export	6	1
449	2019-01-21 03:09:01.049323+00	339	339francisco ablaned	1	new through import_export	6	1
450	2019-01-21 03:09:01.050649+00	340	340patricio vegagome	1	new through import_export	6	1
451	2019-01-21 03:09:01.051845+00	341	341david tolksdorffa	1	new through import_export	6	1
452	2019-01-21 03:09:01.05292+00	342	342juanseguraescobar	1	new through import_export	6	1
453	2019-01-21 03:09:01.054038+00	343	343guillermo reyessc	1	new through import_export	6	1
454	2019-01-21 03:09:01.055139+00	344	344mateo renteriague	1	new through import_export	6	1
455	2019-01-21 03:09:01.056224+00	345	345adriano pachecoor	1	new through import_export	6	1
456	2019-01-21 03:09:01.05733+00	346	346steffenguillenper	1	new through import_export	6	1
457	2019-01-21 03:09:01.058444+00	347	347alonso gonzalezme	1	new through import_export	6	1
458	2019-01-21 03:09:01.059537+00	348	348haraldfeldhausthi	1	new through import_export	6	1
459	2019-01-21 03:09:01.060609+00	349	349emilianocortinasa	1	new through import_export	6	1
460	2019-01-21 03:09:01.061682+00	350	350andrevaronstorsbe	1	new through import_export	6	1
461	2019-01-21 03:09:01.062826+00	351	351santiagoromancrab	1	new through import_export	6	1
462	2019-01-21 03:09:01.063876+00	352	352emiliomorgenstern	1	new through import_export	6	1
463	2019-01-21 03:09:01.064884+00	353	353jeronimomejiaroja	1	new through import_export	6	1
464	2019-01-21 03:09:01.065969+00	354	354maximilianomartin	1	new through import_export	6	1
465	2019-01-21 03:09:01.067093+00	355	355leonardodominguez	1	new through import_export	6	1
466	2019-01-21 03:09:01.068316+00	356	356alandiazmueller	1	new through import_export	6	1
467	2019-01-21 03:09:01.069454+00	357	357robertodavisdelac	1	new through import_export	6	1
468	2019-01-21 03:09:01.070704+00	358	358patriciocorzogarc	1	new through import_export	6	1
469	2019-01-21 03:09:01.071903+00	359	359arturoavilamoran	1	new through import_export	6	1
470	2019-01-21 03:09:01.073078+00	360	360rodrigozepedaclua	1	new through import_export	6	1
471	2019-01-21 03:09:01.07424+00	361	361jeronimovelazquez	1	new through import_export	6	1
472	2019-01-21 03:09:01.075402+00	362	362julenpimenteldeiz	1	new through import_export	6	1
473	2019-01-21 03:09:01.076514+00	363	363jeronimomejiaroja	1	new through import_export	6	1
474	2019-01-21 03:09:01.077604+00	364	364axelhintzesaucedo	1	new through import_export	6	1
475	2019-01-21 03:09:01.078709+00	365	365olafhentschelrans	1	new through import_export	6	1
476	2019-01-21 03:09:01.079767+00	366	366albertalexanderhe	1	new through import_export	6	1
477	2019-01-21 03:09:01.081114+00	367	367nicolasfriedrichg	1	new through import_export	6	1
478	2019-01-21 03:09:01.082283+00	368	368franciscocastroco	1	new through import_export	6	1
479	2019-01-21 03:09:01.083433+00	369	369pablocarazamolina	1	new through import_export	6	1
480	2019-01-21 03:09:01.084565+00	370	370arturoavilamoran	1	new through import_export	6	1
481	2019-01-21 03:09:01.085796+00	371	371hugoemiliovegagom	1	new through import_export	6	1
482	2019-01-21 03:09:01.08697+00	372	372joserenescullzing	1	new through import_export	6	1
483	2019-01-21 03:09:01.088074+00	373	373mateoriveroborrel	1	new through import_export	6	1
484	2019-01-21 03:09:01.089306+00	374	374teodorohernandezh	1	new through import_export	6	1
485	2019-01-21 03:09:01.090502+00	375	375mateoguajardorebo	1	new through import_export	6	1
486	2019-01-21 03:09:01.091693+00	376	376maximograndecarde	1	new through import_export	6	1
487	2019-01-21 03:09:01.093028+00	377	377lukafeldhausfaria	1	new through import_export	6	1
488	2019-01-21 03:09:01.094548+00	378	378paolocusimaldonad	1	new through import_export	6	1
489	2019-01-21 03:09:01.095852+00	379	379julianemilianocos	1	new through import_export	6	1
490	2019-01-21 03:09:01.097183+00	380	380matteocorreiamore	1	new through import_export	6	1
491	2019-01-21 03:09:01.098599+00	381	381janlorenzbrandtba	1	new through import_export	6	1
492	2019-01-21 03:09:01.099962+00	382	382ricardosepulvedag	1	new through import_export	6	1
493	2019-01-21 03:09:01.101365+00	383	383yunlongschwabmori	1	new through import_export	6	1
494	2019-01-21 03:09:01.102727+00	384	384juancarlosrodrigu	1	new through import_export	6	1
495	2019-01-21 03:09:01.104223+00	385	385ricardoortegabeni	1	new through import_export	6	1
496	2019-01-21 03:09:01.105421+00	386	386francomarinmezabu	1	new through import_export	6	1
497	2019-01-21 03:09:01.106632+00	387	387gustavolozanohent	1	new through import_export	6	1
498	2019-01-21 03:09:01.107853+00	388	388emilioiglesiassch	1	new through import_export	6	1
499	2019-01-21 03:09:01.109105+00	389	389jorgegallegosopit	1	new through import_export	6	1
500	2019-01-21 03:09:01.110464+00	390	390phillip diepenbro	1	new through import_export	6	1
501	2019-01-21 03:09:01.111714+00	391	391jeandiazmueller	1	new through import_export	6	1
502	2019-01-21 03:09:01.112993+00	392	392mateoacuñagimeno	1	new through import_export	6	1
503	2019-01-21 03:09:01.114225+00	393	393lucasvilalondoño	1	new through import_export	6	1
504	2019-01-21 03:09:01.115351+00	394	394federicoscullzing	1	new through import_export	6	1
505	2019-01-21 03:09:01.116591+00	395	395jeronimopalmalope	1	new through import_export	6	1
506	2019-01-21 03:09:01.117906+00	396	396nicolasnavratiles	1	new through import_export	6	1
507	2019-01-21 03:09:01.119098+00	397	397diegoulisesmadrig	1	new through import_export	6	1
508	2019-01-21 03:09:01.120353+00	398	398kamilooniaskrusea	1	new through import_export	6	1
509	2019-01-21 03:09:01.121593+00	399	399matthiaskoechlins	1	new through import_export	6	1
510	2019-01-21 03:09:01.122908+00	400	400oliverhernandezhi	1	new through import_export	6	1
511	2019-01-21 03:09:01.124156+00	401	401juanpablofloresbr	1	new through import_export	6	1
512	2019-01-21 03:09:01.125292+00	402	402eliasfischermendo	1	new through import_export	6	1
513	2019-01-21 03:09:01.126449+00	403	403brunofischermendo	1	new through import_export	6	1
514	2019-01-21 03:09:01.127579+00	404	404iñigohumbertoegid	1	new through import_export	6	1
515	2019-01-21 03:09:01.128736+00	405	405sebastianacevedov	1	new through import_export	6	1
516	2019-01-21 03:09:01.129953+00	406	406escobarleonardoru	1	new through import_export	6	1
517	2019-01-21 03:09:01.131125+00	407	407rodrigoromerogome	1	new through import_export	6	1
518	2019-01-21 03:09:01.132319+00	408	408miguelromerogomez	1	new through import_export	6	1
519	2019-01-21 03:09:01.133525+00	409	409valentinorobledo	1	new through import_export	6	1
520	2019-01-21 03:09:01.134736+00	410	410bastianrichterbio	1	new through import_export	6	1
521	2019-01-21 03:09:01.135931+00	411	411arturopueblitacas	1	new through import_export	6	1
522	2019-01-21 03:09:01.137154+00	412	412thomasharingdeyta	1	new through import_export	6	1
523	2019-01-21 03:09:01.138461+00	413	413patriciogomezport	1	new through import_export	6	1
524	2019-01-21 03:09:01.139594+00	414	414jeronimogallegoso	1	new through import_export	6	1
525	2019-01-21 03:09:01.140728+00	415	415jorgetomasbraniff	1	new through import_export	6	1
526	2019-01-21 03:09:01.142044+00	416	416gonzalomagonville	1	new through import_export	6	1
527	2019-01-21 03:09:01.143302+00	417	417iñakivargasgarcia	1	new through import_export	6	1
528	2019-01-21 03:09:01.144597+00	418	418antoniosalazarrey	1	new through import_export	6	1
529	2019-01-21 03:09:01.146214+00	419	419patrick morethsan	1	new through import_export	6	1
530	2019-01-21 03:09:01.147609+00	420	420marianomaldonadom	1	new through import_export	6	1
531	2019-01-21 03:09:01.14908+00	421	421gerardoherreramor	1	new through import_export	6	1
532	2019-01-21 03:09:01.150468+00	422	422andregonzalezdiaz	1	new through import_export	6	1
533	2019-01-21 03:09:01.151694+00	423	423luccouttolencpeye	1	new through import_export	6	1
534	2019-01-21 03:09:01.15291+00	424	424marioemiliochavez	1	new through import_export	6	1
535	2019-01-21 03:09:01.154096+00	425	425nicolascarrerasot	1	new through import_export	6	1
536	2019-01-21 03:09:01.155171+00	426	426viccoandreacardin	1	new through import_export	6	1
537	2019-01-21 03:09:01.156258+00	427	427juliancalzadaspat	1	new through import_export	6	1
538	2019-01-21 03:09:01.157337+00	428	428marcoantonioarand	1	new through import_export	6	1
539	2019-01-21 03:09:01.158469+00	429	429carlotiburciorami	1	new through import_export	6	1
540	2019-01-21 03:09:01.159533+00	430	430danielsotocardena	1	new through import_export	6	1
541	2019-01-21 03:09:01.160589+00	431	431iñigopizanofernan	1	new through import_export	6	1
542	2019-01-21 03:09:01.161734+00	432	432matiaspelayosoto	1	new through import_export	6	1
543	2019-01-21 03:09:01.162938+00	433	433christianottoniel	1	new through import_export	6	1
544	2019-01-21 03:09:01.16407+00	434	434ricardomateosbeta	1	new through import_export	6	1
545	2019-01-21 03:09:01.165325+00	435	435victoralonsomarti	1	new through import_export	6	1
546	2019-01-21 03:09:01.166598+00	436	436crespoestefaniajä	1	new through import_export	6	1
547	2019-01-21 03:09:01.16776+00	437	437salomonjahengonza	1	new through import_export	6	1
548	2019-01-21 03:09:01.168901+00	438	438rodrigoeliasrange	1	new through import_export	6	1
549	2019-01-21 03:09:01.170022+00	439	439jorgeivancisneros	1	new through import_export	6	1
550	2019-01-21 03:09:01.171139+00	440	440mikelcarretecalle	1	new through import_export	6	1
551	2019-01-21 03:09:01.172164+00	441	441diegoviniegraruiz	1	new through import_export	6	1
552	2019-01-21 03:09:01.173241+00	442	442emilianoveraromer	1	new through import_export	6	1
553	2019-01-21 03:09:01.174313+00	443	443matthiasalexander	1	new through import_export	6	1
554	2019-01-21 03:09:01.175378+00	444	444alejandrostephens	1	new through import_export	6	1
555	2019-01-21 03:09:01.176401+00	445	445patricioramirezpo	1	new through import_export	6	1
556	2019-01-21 03:09:01.177499+00	446	446salvadormontesdeo	1	new through import_export	6	1
557	2019-01-21 03:09:01.178632+00	447	447patriciogonsalvez	1	new through import_export	6	1
558	2019-01-21 03:09:01.179837+00	448	448maximilianofelixa	1	new through import_export	6	1
559	2019-01-21 03:09:01.181054+00	449	449mateodelahuertape	1	new through import_export	6	1
560	2019-01-21 03:09:01.182331+00	450	450gaelcorderolara	1	new through import_export	6	1
561	2019-01-21 03:09:01.183534+00	451	451sergiocamarapalan	1	new through import_export	6	1
562	2019-01-21 03:09:01.18477+00	452	452santiagocamarapal	1	new through import_export	6	1
563	2019-01-21 03:09:01.18602+00	453	453maximilianoayalas	1	new through import_export	6	1
564	2019-01-21 03:09:01.187191+00	454	454dantearaizafernan	1	new through import_export	6	1
565	2019-01-21 03:09:01.18835+00	455	455ricardoaguilarqui	1	new through import_export	6	1
566	2019-01-21 03:09:01.18939+00	456	456santiagoveraromer	1	new through import_export	6	1
567	2019-01-21 03:09:01.190458+00	457	457brunovazquezbecke	1	new through import_export	6	1
568	2019-01-21 03:09:01.191866+00	458	458luiseduardotovarg	1	new through import_export	6	1
569	2019-01-21 03:09:01.193297+00	459	459diegoemiliotoquer	1	new through import_export	6	1
570	2019-01-21 03:09:01.194573+00	460	460xaviersantamariag	1	new through import_export	6	1
571	2019-01-21 03:09:01.195781+00	461	461luisjoaquinnollag	1	new through import_export	6	1
572	2019-01-21 03:09:01.196937+00	462	462lennartlipplcarde	1	new through import_export	6	1
573	2019-01-21 03:09:01.198145+00	463	463lucakaehlercapuzz	1	new through import_export	6	1
574	2019-01-21 03:09:01.199261+00	464	464andresjuarezpeña	1	new through import_export	6	1
575	2019-01-21 03:09:01.200382+00	465	465sebastianthomasha	1	new through import_export	6	1
576	2019-01-21 03:09:01.201478+00	466	466brunogöbelaranda	1	new through import_export	6	1
577	2019-01-21 03:09:01.202688+00	467	467matiascortesfenne	1	new through import_export	6	1
578	2019-01-21 03:09:01.203823+00	468	468andressimonbrewer	1	new through import_export	6	1
579	2019-01-21 03:09:01.204981+00	469	469josemariaarreolar	1	new through import_export	6	1
580	2019-01-21 03:09:01.206211+00	470	470nicolasemiliof.al	1	new through import_export	6	1
581	2019-01-21 03:09:01.207375+00	471	471mateosotocardenas	1	new through import_export	6	1
582	2019-01-21 03:09:01.208514+00	472	472humbertomerino 	1	new through import_export	6	1
583	2019-01-21 03:09:01.209615+00	473	473gustavoa.omarzuñi	1	new through import_export	6	1
584	2019-01-21 03:09:01.210798+00	474	474andrecorderolara	1	new through import_export	6	1
585	2019-01-21 03:09:01.211855+00	475	475paolosiessmelende	1	new through import_export	6	1
586	2019-01-21 03:09:01.213069+00	476	476camilasahiaorozco	1	new through import_export	6	1
587	2019-01-21 03:09:01.214344+00	477	477gabrielherreraygo	1	new through import_export	6	1
588	2019-01-21 03:09:01.215594+00	478	478danielhampsonmedi	1	new through import_export	6	1
589	2019-01-21 03:09:01.21686+00	479	479leahscarlettespin	1	new through import_export	6	1
590	2019-01-21 03:09:01.218168+00	480	480pabloespinosagarc	1	new through import_export	6	1
591	2019-01-21 03:09:01.219549+00	481	481diegoespinosagarc	1	new through import_export	6	1
592	2019-01-21 03:09:01.220934+00	482	482francocastelazoro	1	new through import_export	6	1
593	2019-01-21 03:09:01.222324+00	483	483martincamposcasil	1	new through import_export	6	1
594	2019-01-21 03:09:01.223515+00	484	484matiascamberosrob	1	new through import_export	6	1
595	2019-01-21 03:09:01.224697+00	485	485ferranbarjaucorde	1	new through import_export	6	1
596	2019-01-21 03:09:01.226887+00	486	486lucasbalandranoto	1	new through import_export	6	1
597	2019-01-21 03:09:01.228246+00	487	487diegomaximilianst	1	new through import_export	6	1
598	2019-01-21 03:09:01.229538+00	488	488rafael sandovalpo	1	new through import_export	6	1
599	2019-01-21 03:09:01.23089+00	489	489sebastianromerode	1	new through import_export	6	1
600	2019-01-21 03:09:01.232172+00	490	490annaximenareynaib	1	new through import_export	6	1
601	2019-01-21 03:09:01.233356+00	491	491kalebeduardopined	1	new through import_export	6	1
602	2019-01-21 03:09:01.234508+00	492	492antoniolopezguerr	1	new through import_export	6	1
603	2019-01-21 03:09:01.235779+00	493	493santiagogarduñogo	1	new through import_export	6	1
604	2019-01-21 03:09:01.236935+00	494	494paulafriasestrell	1	new through import_export	6	1
605	2019-01-21 03:09:01.238198+00	495	495santiagoescobedor	1	new through import_export	6	1
606	2019-01-21 03:09:01.239439+00	496	496rodrigodiazneri	1	new through import_export	6	1
607	2019-01-21 03:09:01.24065+00	497	497natansantiagodelg	1	new through import_export	6	1
608	2019-01-21 03:09:01.24197+00	498	498diegozaldivarbust	1	new through import_export	6	1
609	2019-01-21 03:09:01.243287+00	499	499santiagotapiadela	1	new through import_export	6	1
610	2019-01-21 03:09:01.244495+00	500	500andrepalmacarreto	1	new through import_export	6	1
611	2019-01-21 03:09:01.245774+00	501	501maximilianmaldona	1	new through import_export	6	1
612	2019-01-21 03:09:01.246922+00	502	502matiasgutierrezru	1	new through import_export	6	1
613	2019-01-21 03:09:01.248041+00	503	503sergioikergonzale	1	new through import_export	6	1
614	2019-01-21 03:09:01.24914+00	504	504ignacioenriquebre	1	new through import_export	6	1
615	2019-01-21 03:09:01.250273+00	505	505ashleypriscillava	1	new through import_export	6	1
616	2019-01-21 03:09:01.251425+00	506	506andrevillalopez	1	new through import_export	6	1
617	2019-01-21 03:09:01.252698+00	507	507nielsvanvlietferr	1	new through import_export	6	1
618	2019-01-21 03:09:01.253943+00	508	508maximilanomarzuñi	1	new through import_export	6	1
619	2019-01-21 03:09:01.255144+00	509	509hugoluislopezchap	1	new through import_export	6	1
620	2019-01-21 03:09:01.256548+00	510	510luisannaclaudialo	1	new through import_export	6	1
621	2019-01-21 03:09:01.257971+00	511	511nicolascortesfenn	1	new through import_export	6	1
622	2019-01-21 03:09:01.25933+00	512	512patrickcastellano	1	new through import_export	6	1
623	2019-01-21 03:09:01.260674+00	513	513jeronimocastelbla	1	new through import_export	6	1
624	2019-01-21 03:09:01.262035+00	514	514maximilianocamber	1	new through import_export	6	1
625	2019-01-21 03:09:01.263443+00	515	515davilarebecagutie	1	new through import_export	6	1
626	2019-01-21 03:09:01.264764+00	516	516juanpabloramiroco	1	new through import_export	6	1
627	2019-01-21 03:09:01.266275+00	517	517patriciovalladare	1	new through import_export	6	1
628	2019-01-21 03:09:01.267609+00	518	518niklasandretellma	1	new through import_export	6	1
629	2019-01-21 03:09:01.269006+00	519	519liambarukherreraa	1	new through import_export	6	1
630	2019-01-21 03:09:01.270444+00	520	520khaledhassantrejo	1	new through import_export	6	1
631	2019-01-21 03:09:01.271817+00	521	521joseluisrangelher	1	new through import_export	6	1
632	2019-01-21 03:09:01.27322+00	522	522andreherreraygome	1	new through import_export	6	1
633	2019-01-21 03:09:01.274825+00	523	523fernandosolizpazs	1	new through import_export	6	1
634	2019-01-21 03:09:01.276178+00	524	524federicochaparrom	1	new through import_export	6	1
635	2019-01-21 03:09:01.277563+00	525	525brunojimenezmuñoz	1	new through import_export	6	1
636	2019-01-21 03:09:01.278947+00	526	526virgilioaltairvid	1	new through import_export	6	1
637	2019-01-21 03:09:01.280288+00	527	527pablozaldivarbust	1	new through import_export	6	1
638	2019-01-21 03:09:01.281661+00	528	528nicolasramirezled	1	new through import_export	6	1
639	2019-01-21 03:09:01.283233+00	529	529maximoespinosawal	1	new through import_export	6	1
640	2019-01-21 03:09:01.284551+00	530	530martinmosquerajac	1	new through import_export	6	1
641	2019-01-21 03:09:01.285969+00	531	531juanpablodiazcruz	1	new through import_export	6	1
642	2019-01-21 03:09:01.287342+00	532	532guillermoandressa	1	new through import_export	6	1
643	2019-01-21 03:09:01.288741+00	533	533guillermoabaunzac	1	new through import_export	6	1
644	2019-01-21 03:09:01.29013+00	534	534fabiangonzalezmai	1	new through import_export	6	1
645	2019-01-21 03:09:01.291507+00	535	535emmafriasestrella	1	new through import_export	6	1
646	2019-01-21 03:09:01.292875+00	536	536kimberlywoodwardc	1	new through import_export	6	1
647	2019-01-21 03:09:01.294293+00	537	537sofiasañudocarril	1	new through import_export	6	1
648	2019-01-21 03:09:01.295489+00	538	538camilamateosbetan	1	new through import_export	6	1
649	2019-01-21 03:09:01.296834+00	539	539mariareginadiazro	1	new through import_export	6	1
650	2019-01-21 03:09:01.298153+00	540	540andrealachicaysan	1	new through import_export	6	1
651	2019-01-21 03:09:01.299453+00	541	541nicolejimenezfrey	1	new through import_export	6	1
652	2019-01-21 03:09:01.300727+00	542	542sofiaiglesiaspina	1	new through import_export	6	1
653	2019-01-21 03:09:01.302107+00	543	543nataliagamezarand	1	new through import_export	6	1
654	2019-01-21 03:09:01.303444+00	544	544nikitafaisalrusse	1	new through import_export	6	1
655	2019-01-21 03:09:01.304579+00	545	545valeriaisabelcesp	1	new through import_export	6	1
656	2019-01-21 03:09:01.30577+00	546	546claudiajirehelice	1	new through import_export	6	1
657	2019-01-21 03:09:01.307013+00	547	547danielabarragande	1	new through import_export	6	1
658	2019-01-21 03:09:01.308165+00	548	548yoanaaboitizdelac	1	new through import_export	6	1
659	2019-01-21 03:09:01.309299+00	549	549josevaldesvelazqu	1	new through import_export	6	1
660	2019-01-21 03:09:01.310402+00	550	550pablosanchezalcal	1	new through import_export	6	1
661	2019-01-21 03:09:01.311554+00	551	551sergioplatonofflo	1	new through import_export	6	1
662	2019-01-21 03:09:01.312673+00	552	552jorgepilegorreta	1	new through import_export	6	1
663	2019-01-21 03:09:01.313968+00	553	553claudiorodrigomen	1	new through import_export	6	1
664	2019-01-21 03:09:01.315199+00	554	554jorgeemiliolandet	1	new through import_export	6	1
665	2019-01-21 03:09:01.316378+00	555	555jorgeaugustolande	1	new through import_export	6	1
666	2019-01-21 03:09:01.317576+00	556	556johannesschubert 	1	new through import_export	6	1
667	2019-01-21 03:09:01.318766+00	557	557marian hofmann 	1	new through import_export	6	1
668	2019-01-21 03:09:01.319917+00	558	558albertogonzalezhe	1	new through import_export	6	1
669	2019-01-21 03:09:01.321218+00	559	559ianballaraiza	1	new through import_export	6	1
670	2019-01-21 03:09:01.322631+00	560	560arantzavalladares	1	new through import_export	6	1
671	2019-01-21 03:09:01.323958+00	561	561monserratvaldesix	1	new through import_export	6	1
672	2019-01-21 03:09:01.325472+00	562	562dianapaolasotoqui	1	new through import_export	6	1
673	2019-01-21 03:09:01.327174+00	563	563victoriaalexandra	1	new through import_export	6	1
674	2019-01-21 03:09:01.32877+00	564	564reginaperezortega	1	new through import_export	6	1
675	2019-01-21 03:09:01.330462+00	565	565danielamontesdeoc	1	new through import_export	6	1
676	2019-01-21 03:09:01.3321+00	566	566maytelechugarodri	1	new through import_export	6	1
677	2019-01-21 03:09:01.333793+00	567	567rominagonzalezmar	1	new through import_export	6	1
678	2019-01-21 03:09:01.335229+00	568	568lysdeguadalupeger	1	new through import_export	6	1
679	2019-01-21 03:09:01.336649+00	569	569valentinagalindoa	1	new through import_export	6	1
680	2019-01-21 03:09:01.338108+00	570	570marianadavilarodr	1	new through import_export	6	1
681	2019-01-21 03:09:01.339494+00	571	571isabellasednacova	1	new through import_export	6	1
682	2019-01-21 03:09:01.340846+00	572	572mariareginacastro	1	new through import_export	6	1
683	2019-01-21 03:09:01.342199+00	573	573ximenabaizadeavil	1	new through import_export	6	1
684	2019-01-21 03:09:01.343541+00	574	574karenaizmancarden	1	new through import_export	6	1
685	2019-01-21 03:09:01.345043+00	575	575sebastianvelamart	1	new through import_export	6	1
686	2019-01-21 03:09:01.346452+00	576	576santiagotorrescos	1	new through import_export	6	1
687	2019-01-21 03:09:01.347728+00	577	577mateotarragocanto	1	new through import_export	6	1
688	2019-01-21 03:09:01.348913+00	578	578herediasantiagovi	1	new through import_export	6	1
689	2019-01-21 03:09:01.350188+00	579	579jorgerodriguezfue	1	new through import_export	6	1
690	2019-01-21 03:09:01.351451+00	580	580andrespizanoferna	1	new through import_export	6	1
691	2019-01-21 03:09:01.352665+00	581	581mateoparramolina	1	new through import_export	6	1
692	2019-01-21 03:09:01.353881+00	582	582axelmoramuths	1	new through import_export	6	1
693	2019-01-21 03:09:01.355149+00	583	583josemarialuisesgo	1	new through import_export	6	1
694	2019-01-21 03:09:01.356553+00	584	584adrianhernandezgu	1	new through import_export	6	1
695	2019-01-21 03:09:01.357903+00	585	585santiagohernandez	1	new through import_export	6	1
696	2019-01-21 03:09:01.359149+00	586	586rogeliosebastiane	1	new through import_export	6	1
697	2019-01-21 03:09:01.360306+00	587	587pedroescalonatorr	1	new through import_export	6	1
698	2019-01-21 03:09:01.361525+00	588	588josegabrielarreol	1	new through import_export	6	1
699	2019-01-21 03:09:01.362691+00	589	589ukkosmith 	1	new through import_export	6	1
700	2019-01-21 03:09:01.363758+00	590	590sofiabalboa 	1	new through import_export	6	1
701	2019-01-21 03:09:01.364837+00	591	591santiagobernal 	1	new through import_export	6	1
702	2019-01-21 03:09:01.366389+00	592	592robertovarela 	1	new through import_export	6	1
703	2019-01-21 03:09:01.367638+00	593	593milajoseph 	1	new through import_export	6	1
704	2019-01-21 03:09:01.36895+00	594	594milabeltran 	1	new through import_export	6	1
705	2019-01-21 03:09:01.370124+00	595	595mianaguiano 	1	new through import_export	6	1
706	2019-01-21 03:09:01.37128+00	596	596leonardofeilbogen	1	new through import_export	6	1
707	2019-01-21 03:09:01.372539+00	597	597julianehrensber 	1	new through import_export	6	1
708	2019-01-21 03:09:01.373813+00	598	598fatimazavala 	1	new through import_export	6	1
709	2019-01-21 03:09:01.375188+00	599	599eduardorodriguez 	1	new through import_export	6	1
710	2019-01-21 03:09:01.376468+00	600	600andreagutierrez	1	new through import_export	6	1
711	2019-01-21 03:09:01.377912+00	601	601santiagoerlbaher 	1	new through import_export	6	1
712	2019-01-21 03:09:01.379398+00	602	602robertamochelena 	1	new through import_export	6	1
713	2019-01-21 03:09:01.381015+00	603	603nicolasjacobsen 	1	new through import_export	6	1
714	2019-01-21 03:09:01.382435+00	604	604miacortes 	1	new through import_export	6	1
715	2019-01-21 03:09:01.383836+00	605	605leonardograeslin 	1	new through import_export	6	1
716	2019-01-21 03:09:01.385476+00	606	606juliancañedo 	1	new through import_export	6	1
717	2019-01-21 03:09:01.387196+00	607	607josetorres 	1	new through import_export	6	1
718	2019-01-21 03:09:01.38896+00	608	608joelcortes 	1	new through import_export	6	1
719	2019-01-21 03:09:01.39211+00	609	609joaquinraab 	1	new through import_export	6	1
720	2019-01-21 03:09:01.393927+00	610	610erichjacobsen 	1	new through import_export	6	1
721	2019-01-21 03:09:01.395485+00	611	611emmavalencia 	1	new through import_export	6	1
722	2019-01-21 03:09:01.397027+00	612	612emmatorres 	1	new through import_export	6	1
723	2019-01-21 03:09:01.398846+00	613	613emmajoseph 	1	new through import_export	6	1
724	2019-01-21 03:09:01.400483+00	614	614eduardoargûelles 	1	new through import_export	6	1
725	2019-01-21 03:09:01.402119+00	615	615cristobalheredia 	1	new through import_export	6	1
726	2019-01-21 03:09:01.403404+00	616	616cayetanasanchez 	1	new through import_export	6	1
727	2019-01-21 03:09:01.40471+00	617	617bernardojoseph 	1	new through import_export	6	1
728	2019-01-21 03:09:01.406306+00	618	618andrèsalazar 	1	new through import_export	6	1
729	2019-01-21 03:09:01.407733+00	619	619anajimenaraab	1	new through import_export	6	1
730	2019-01-21 03:09:01.40915+00	620	620sophiacarbajal 	1	new through import_export	6	1
731	2019-01-21 03:09:01.410789+00	621	621sebastianponce 	1	new through import_export	6	1
732	2019-01-21 03:09:01.412408+00	622	622sebastianamador 	1	new through import_export	6	1
733	2019-01-21 03:09:01.41427+00	623	623santiagocalderon 	1	new through import_export	6	1
734	2019-01-21 03:09:01.416375+00	624	624santiagobernal 	1	new through import_export	6	1
735	2019-01-21 03:09:01.418386+00	625	625pabloluz 	1	new through import_export	6	1
736	2019-01-21 03:09:01.420317+00	626	626milabeltran 	1	new through import_export	6	1
737	2019-01-21 03:09:01.422167+00	627	627mateocalderon 	1	new through import_export	6	1
738	2019-01-21 03:09:01.423794+00	628	628lorenzolinares 	1	new through import_export	6	1
739	2019-01-21 03:09:01.425862+00	629	629linuswillmans 	1	new through import_export	6	1
740	2019-01-21 03:09:01.427577+00	630	630leandrobrailovsky	1	new through import_export	6	1
741	2019-01-21 03:09:01.429086+00	631	631leahcastelan 	1	new through import_export	6	1
742	2019-01-21 03:09:01.430609+00	632	632julietalinares 	1	new through import_export	6	1
743	2019-01-21 03:09:01.432085+00	633	633julianhernandez 	1	new through import_export	6	1
744	2019-01-21 03:09:01.433542+00	634	634juliawillmans 	1	new through import_export	6	1
745	2019-01-21 03:09:01.435116+00	635	635juanmiguelarce	1	new through import_export	6	1
746	2019-01-21 03:09:01.436457+00	636	636elizabethcota 	1	new through import_export	6	1
747	2019-01-21 03:09:01.437947+00	637	637danielnuñez 	1	new through import_export	6	1
748	2019-01-21 03:09:01.43916+00	638	638bernardoalvarez 	1	new through import_export	6	1
749	2019-01-21 03:09:01.440387+00	639	639andreacuevas 	1	new through import_export	6	1
750	2019-01-21 03:09:01.441517+00	640	640anaambrosi	1	new through import_export	6	1
751	2019-01-21 03:09:01.442963+00	641	641anagabrielavazque	1	new through import_export	6	1
752	2019-01-21 03:09:01.44431+00	642	642taniavallejoherna	1	new through import_export	6	1
753	2019-01-21 03:09:01.445567+00	643	643anasofiaoterorive	1	new through import_export	6	1
754	2019-01-21 03:09:01.447305+00	644	644isoldeeleonordela	1	new through import_export	6	1
755	2019-01-21 03:09:01.448712+00	645	645angelacosmecabrer	1	new through import_export	6	1
756	2019-01-21 03:09:01.450058+00	646	646marthalorenawille	1	new through import_export	6	1
757	2019-01-21 03:09:01.451431+00	647	647sofiamoraanzurez	1	new through import_export	6	1
758	2019-01-21 03:09:01.452975+00	648	648loanabaron	1	new through import_export	6	1
759	2019-01-21 03:09:01.454519+00	649	649abigailespinosamu	1	new through import_export	6	1
760	2019-01-21 03:09:01.4559+00	650	650luzelenasosamarti	1	new through import_export	6	1
761	2019-01-21 03:09:01.457148+00	651	651angelalopezparra	1	new through import_export	6	1
762	2019-01-21 03:09:01.458415+00	652	652sofiacastañonguti	1	new through import_export	6	1
763	2019-01-21 03:09:01.45962+00	653	653lorenzamanriquega	1	new through import_export	6	1
764	2019-01-21 03:09:01.461032+00	654	654noramorales	1	new through import_export	6	1
765	2019-01-21 03:09:01.462528+00	655	655mariafernandamene	1	new through import_export	6	1
766	2019-01-21 03:09:01.464254+00	656	656helenatrujillorod	1	new through import_export	6	1
767	2019-01-21 03:09:01.465934+00	657	657elkeliceagaadam	1	new through import_export	6	1
768	2019-01-21 03:09:01.467562+00	658	658mariemülleremilie	1	new through import_export	6	1
769	2019-01-21 03:09:01.469043+00	659	659danielasierrabach	1	new through import_export	6	1
770	2019-01-21 03:09:01.470672+00	660	660fernandaabdeljale	1	new through import_export	6	1
771	2019-01-21 03:09:01.472207+00	661	661isabellaroelstoop	1	new through import_export	6	1
772	2019-01-21 03:09:01.473848+00	662	662brunonicolaskubli	1	new through import_export	6	1
773	2019-01-21 03:09:01.475394+00	663	663josericardocanoga	1	new through import_export	6	1
774	2019-01-21 03:09:01.477021+00	664	664oscarmartinezcoel	1	new through import_export	6	1
775	2019-01-21 03:09:01.478665+00	665	665mauricioaviladela	1	new through import_export	6	1
776	2019-01-21 03:09:01.480211+00	666	666darianmembrilloal	1	new through import_export	6	1
777	2019-01-21 03:09:01.48169+00	667	667carlosascenciovil	1	new through import_export	6	1
778	2019-01-21 03:09:01.483241+00	668	668darioantonio	1	new through import_export	6	1
779	2019-01-21 03:09:01.484714+00	669	669franciscoortiz	1	new through import_export	6	1
780	2019-01-21 03:09:01.48611+00	670	670gustavokubligolln	1	new through import_export	6	1
781	2019-01-21 03:09:01.487527+00	671	671juanpablorobles	1	new through import_export	6	1
782	2019-01-21 03:09:01.488914+00	672	672alvarogomez	1	new through import_export	6	1
783	2019-01-21 03:09:01.490388+00	673	673emiliopiña	1	new through import_export	6	1
784	2019-01-21 03:09:01.491946+00	674	674matthiaslynen	1	new through import_export	6	1
785	2019-01-21 03:09:01.493456+00	675	675andresmagallon	1	new through import_export	6	1
786	2019-01-21 03:09:01.495049+00	676	676santiagocastillon	1	new through import_export	6	1
787	2019-01-21 03:09:01.496532+00	677	677alexandergladen	1	new through import_export	6	1
788	2019-01-21 03:09:01.498147+00	678	678rodrigoloyola	1	new through import_export	6	1
789	2019-01-21 03:09:01.499732+00	679	679federicoaguilarbl	1	new through import_export	6	1
790	2019-01-21 03:09:01.501316+00	680	680iancastañedapache	1	new through import_export	6	1
791	2019-01-21 03:09:01.503171+00	681	681ikercollromero	1	new through import_export	6	1
792	2019-01-21 03:09:01.504716+00	682	682albertoesquivelfu	1	new through import_export	6	1
793	2019-01-21 03:09:01.506243+00	683	683orlandogomezvalde	1	new through import_export	6	1
794	2019-01-21 03:09:01.50803+00	684	684rodrigoniembromar	1	new through import_export	6	1
795	2019-01-21 03:09:01.509951+00	685	685emilianopeñaserra	1	new through import_export	6	1
796	2019-01-21 03:09:01.51156+00	686	686mateotoledowerner	1	new through import_export	6	1
797	2019-01-21 03:09:01.513074+00	687	687robertoaguilarman	1	new through import_export	6	1
798	2019-01-21 03:09:01.514662+00	688	688hugomanuelmartine	1	new through import_export	6	1
799	2019-01-21 03:09:01.515933+00	689	689sebastianmoguello	1	new through import_export	6	1
800	2019-01-21 03:09:01.517178+00	690	690albertotalamantes	1	new through import_export	6	1
801	2019-01-21 03:09:01.518456+00	691	691alexandertwardytr	1	new through import_export	6	1
802	2019-01-21 03:09:01.519639+00	692	692mattiazuincordero	1	new through import_export	6	1
803	2019-01-21 03:09:01.520889+00	693	693aripulidoferrer	1	new through import_export	6	1
804	2019-01-21 03:09:01.522053+00	694	694nicolashernandezf	1	new through import_export	6	1
805	2019-01-21 03:09:01.523322+00	695	695josepabloolivasar	1	new through import_export	6	1
806	2019-01-21 03:09:01.524465+00	696	696emiliolanda	1	new through import_export	6	1
807	2019-01-21 03:09:01.525687+00	697	697neftalicuevas	1	new through import_export	6	1
808	2019-01-21 03:09:01.527094+00	698	698franciscojavierag	1	new through import_export	6	1
809	2019-01-21 03:09:01.52844+00	699	699belanoelangermann	1	new through import_export	6	1
810	2019-01-21 03:09:01.529897+00	700	700pablocastroschmit	1	new through import_export	6	1
811	2019-01-21 03:09:01.531274+00	701	701luismanuelcastros	1	new through import_export	6	1
812	2019-01-21 03:09:01.532515+00	702	702federicofleischma	1	new through import_export	6	1
813	2019-01-21 03:09:01.533666+00	703	703julianroelstoopen	1	new through import_export	6	1
814	2019-01-21 03:09:01.534897+00	704	704kevinrohleder.	1	new through import_export	6	1
815	2019-01-21 03:09:01.536073+00	705	705andresvelascotorr	1	new through import_export	6	1
816	2019-01-21 03:09:01.537294+00	706	706emmanuelalcantarc	1	new through import_export	6	1
817	2019-01-21 03:09:01.53847+00	707	707jordividalvillase	1	new through import_export	6	1
818	2019-01-21 03:09:01.539536+00	708	708diegosanchezarrio	1	new through import_export	6	1
819	2019-01-21 03:09:01.540652+00	709	709mateorodriguezazp	1	new through import_export	6	1
820	2019-01-21 03:09:01.541885+00	710	710luisemiliopozopac	1	new through import_export	6	1
821	2019-01-21 03:09:01.543002+00	711	711marcoantonioostoa	1	new through import_export	6	1
822	2019-01-21 03:09:01.544068+00	712	712santiagomaydongon	1	new through import_export	6	1
823	2019-01-21 03:09:01.545122+00	713	713sebastianliceagaa	1	new through import_export	6	1
824	2019-01-21 03:09:01.546301+00	714	714axelkaramarroyo	1	new through import_export	6	1
825	2019-01-21 03:09:01.547449+00	715	715jeronimogomezcolc	1	new through import_export	6	1
826	2019-01-21 03:09:01.548558+00	716	716stephanmaximodiet	1	new through import_export	6	1
827	2019-01-21 03:09:01.54971+00	717	717alonsodiazprocel	1	new through import_export	6	1
828	2019-01-21 03:09:01.550788+00	718	718svenurbanekbarrei	1	new through import_export	6	1
829	2019-01-21 03:09:01.551811+00	719	719paolotoledowerner	1	new through import_export	6	1
830	2019-01-21 03:09:01.552867+00	720	720carstenserretköhl	1	new through import_export	6	1
831	2019-01-21 03:09:01.553943+00	721	721andresmateopozosa	1	new through import_export	6	1
832	2019-01-21 03:09:01.555008+00	722	722axelpoogonzalez	1	new through import_export	6	1
833	2019-01-21 03:09:01.556126+00	723	723jorgesantiagomari	1	new through import_export	6	1
834	2019-01-21 03:09:01.557281+00	724	724mateomaciashernan	1	new through import_export	6	1
835	2019-01-21 03:09:01.558447+00	725	725isaacgarciasigala	1	new through import_export	6	1
836	2019-01-21 03:09:01.567528+00	726	726federicogalvezalv	1	new through import_export	6	1
837	2019-01-21 03:09:01.569681+00	727	727arturocamachooroz	1	new through import_export	6	1
838	2019-01-21 03:09:01.571753+00	728	728stefanmikelbolaño	1	new through import_export	6	1
839	2019-01-21 03:09:01.573435+00	729	729iñigovidalvillase	1	new through import_export	6	1
840	2019-01-21 03:09:01.574887+00	730	730jorgeliamsoriagar	1	new through import_export	6	1
841	2019-01-21 03:09:01.576134+00	731	731victoralonsomonro	1	new through import_export	6	1
842	2019-01-21 03:09:01.577371+00	732	732nestormatarredona	1	new through import_export	6	1
843	2019-01-21 03:09:01.578675+00	733	733carlosfedericomar	1	new through import_export	6	1
844	2019-01-21 03:09:01.579883+00	734	734joaquingraufranci	1	new through import_export	6	1
845	2019-01-21 03:09:01.581131+00	735	735demiangonzalesrub	1	new through import_export	6	1
846	2019-01-21 03:09:01.582554+00	736	736enriquefernandogo	1	new through import_export	6	1
847	2019-01-21 03:09:01.584223+00	737	737victorisaaccardeñ	1	new through import_export	6	1
848	2019-01-21 03:09:01.585492+00	738	738matiasrodileskara	1	new through import_export	6	1
849	2019-01-21 03:09:01.586808+00	739	739rodrigoantoniopra	1	new through import_export	6	1
850	2019-01-21 03:09:01.587972+00	740	740carloseugenioporc	1	new through import_export	6	1
851	2019-01-21 03:09:01.5892+00	741	741theoantoniomüller	1	new through import_export	6	1
1079	2019-01-21 03:09:02.077055+00	969	969ikercastro 	1	new through import_export	6	1
852	2019-01-21 03:09:01.590667+00	742	742mateomorenocastañ	1	new through import_export	6	1
853	2019-01-21 03:09:01.591967+00	743	743samuelmoralesjung	1	new through import_export	6	1
854	2019-01-21 03:09:01.593337+00	744	744juanpablomontañog	1	new through import_export	6	1
855	2019-01-21 03:09:01.594884+00	745	745tadeolozamendoza	1	new through import_export	6	1
856	2019-01-21 03:09:01.596343+00	746	746diegocelistessman	1	new through import_export	6	1
857	2019-01-21 03:09:01.59768+00	747	747mateangermannkeno	1	new through import_export	6	1
858	2019-01-21 03:09:01.599051+00	748	748ignaciozuñigagarc	1	new through import_export	6	1
859	2019-01-21 03:09:01.600421+00	749	749matthiassantaella	1	new through import_export	6	1
860	2019-01-21 03:09:01.601807+00	750	750matteorossoorihue	1	new through import_export	6	1
861	2019-01-21 03:09:01.603146+00	751	751paulroenigerjaram	1	new through import_export	6	1
862	2019-01-21 03:09:01.604504+00	752	752paulojosueolivare	1	new through import_export	6	1
863	2019-01-21 03:09:01.606083+00	753	753andrelopezrodrigu	1	new through import_export	6	1
864	2019-01-21 03:09:01.607407+00	754	754josemariaenriquez	1	new through import_export	6	1
865	2019-01-21 03:09:01.608831+00	755	755emirapistellez	1	new through import_export	6	1
866	2019-01-21 03:09:01.61019+00	756	756ximenavegatapia	1	new through import_export	6	1
867	2019-01-21 03:09:01.611905+00	757	757anasanchezarriola	1	new through import_export	6	1
868	2019-01-21 03:09:01.613689+00	758	758sofiarohleder	1	new through import_export	6	1
869	2019-01-21 03:09:01.615336+00	759	759valentinarenteria	1	new through import_export	6	1
870	2019-01-21 03:09:01.616664+00	760	760ileanacamilaoliva	1	new through import_export	6	1
871	2019-01-21 03:09:01.617975+00	761	761arantxanellenlayo	1	new through import_export	6	1
872	2019-01-21 03:09:01.619274+00	762	762reginamorenoflore	1	new through import_export	6	1
873	2019-01-21 03:09:01.620609+00	763	763sofiamenendezespi	1	new through import_export	6	1
874	2019-01-21 03:09:01.621977+00	764	764kenyaizabellamart	1	new through import_export	6	1
875	2019-01-21 03:09:01.62341+00	765	765paulakaiserlopez	1	new through import_export	6	1
876	2019-01-21 03:09:01.624941+00	766	766valentinagonzalez	1	new through import_export	6	1
877	2019-01-21 03:09:01.626628+00	767	767paulinabeltranpru	1	new through import_export	6	1
878	2019-01-21 03:09:01.628364+00	768	768marianeabdeljalek	1	new through import_export	6	1
879	2019-01-21 03:09:01.629874+00	769	769juliazacariasalde	1	new through import_export	6	1
880	2019-01-21 03:09:01.631264+00	770	770patriciovaldiviac	1	new through import_export	6	1
881	2019-01-21 03:09:01.632559+00	771	771carlosestebantell	1	new through import_export	6	1
882	2019-01-21 03:09:01.633874+00	772	772oscargaelsantanat	1	new through import_export	6	1
883	2019-01-21 03:09:01.635208+00	773	773jesussalazarvelaz	1	new through import_export	6	1
884	2019-01-21 03:09:01.636506+00	774	774brunomiguelromero	1	new through import_export	6	1
885	2019-01-21 03:09:01.637896+00	775	775diegoreydavo	1	new through import_export	6	1
886	2019-01-21 03:09:01.639445+00	776	776diegomuñozcarvaja	1	new through import_export	6	1
887	2019-01-21 03:09:01.640925+00	777	777oscargustavomendo	1	new through import_export	6	1
888	2019-01-21 03:09:01.642385+00	778	778jorgeantoniomende	1	new through import_export	6	1
889	2019-01-21 03:09:01.643782+00	779	779christopherleitme	1	new through import_export	6	1
890	2019-01-21 03:09:01.645128+00	780	780alonsoiturriagabo	1	new through import_export	6	1
891	2019-01-21 03:09:01.646609+00	781	781thomasleonardoenr	1	new through import_export	6	1
892	2019-01-21 03:09:01.647922+00	782	782adolfocarrillogan	1	new through import_export	6	1
893	2019-01-21 03:09:01.649231+00	783	783ikergustavbolaños	1	new through import_export	6	1
894	2019-01-21 03:09:01.650748+00	784	784maitevelascotorre	1	new through import_export	6	1
895	2019-01-21 03:09:01.652176+00	785	785robertatapiazamor	1	new through import_export	6	1
896	2019-01-21 03:09:01.653698+00	786	786luzadrianasalcedo	1	new through import_export	6	1
897	2019-01-21 03:09:01.655507+00	787	787fernandaruedavall	1	new through import_export	6	1
898	2019-01-21 03:09:01.656869+00	788	788manerodriguezazpi	1	new through import_export	6	1
899	2019-01-21 03:09:01.658267+00	789	789junerodriguezazpi	1	new through import_export	6	1
900	2019-01-21 03:09:01.659745+00	790	790emiliarechymadina	1	new through import_export	6	1
901	2019-01-21 03:09:01.661335+00	791	791sofiamaydongonzal	1	new through import_export	6	1
902	2019-01-21 03:09:01.663041+00	792	792laraleitmeirrosas	1	new through import_export	6	1
903	2019-01-21 03:09:01.664639+00	793	793hannahleitmeirros	1	new through import_export	6	1
904	2019-01-21 03:09:01.66641+00	794	794iaradiederichsenr	1	new through import_export	6	1
905	2019-01-21 03:09:01.667867+00	795	795pamelaalemancarra	1	new through import_export	6	1
906	2019-01-21 03:09:01.669721+00	796	796darienalejandroza	1	new through import_export	6	1
907	2019-01-21 03:09:01.671544+00	797	797diegovegatapia	1	new through import_export	6	1
908	2019-01-21 03:09:01.673234+00	798	798patriciovaldiviac	1	new through import_export	6	1
909	2019-01-21 03:09:01.675205+00	799	799lukastoledowerner	1	new through import_export	6	1
910	2019-01-21 03:09:01.677156+00	800	800carlosrojocamez	1	new through import_export	6	1
911	2019-01-21 03:09:01.679137+00	801	801juanpabloreydavo	1	new through import_export	6	1
912	2019-01-21 03:09:01.681018+00	802	802diegoreydavo	1	new through import_export	6	1
913	2019-01-21 03:09:01.683227+00	803	803gustavooteroriver	1	new through import_export	6	1
914	2019-01-21 03:09:01.68566+00	804	804leonardoosoriosau	1	new through import_export	6	1
915	2019-01-21 03:09:01.687556+00	805	805franziscomüllerpa	1	new through import_export	6	1
916	2019-01-21 03:09:01.689073+00	806	806ernestolopezbalta	1	new through import_export	6	1
917	2019-01-21 03:09:01.690834+00	807	807alexanderleitmeir	1	new through import_export	6	1
918	2019-01-21 03:09:01.692858+00	808	808diegokaiserlopez	1	new through import_export	6	1
919	2019-01-21 03:09:01.695482+00	809	809brunofernandeztor	1	new through import_export	6	1
920	2019-01-21 03:09:01.698156+00	810	810santiagofavelabat	1	new through import_export	6	1
921	2019-01-21 03:09:01.70034+00	811	811thomasleonardoenr	1	new through import_export	6	1
922	2019-01-21 03:09:01.702529+00	812	812liamdiederichsenr	1	new through import_export	6	1
923	2019-01-21 03:09:01.704928+00	813	813andrescarrillogan	1	new through import_export	6	1
924	2019-01-21 03:09:01.707416+00	814	814santiagocaballero	1	new through import_export	6	1
925	2019-01-21 03:09:01.709789+00	815	815brunoarredondoeli	1	new through import_export	6	1
926	2019-01-21 03:09:01.711842+00	816	816luisabdeljalekmil	1	new through import_export	6	1
927	2019-01-21 03:09:01.713938+00	817	817williamcordoba 	1	new through import_export	6	1
928	2019-01-21 03:09:01.71658+00	818	818santiagosalgado	1	new through import_export	6	1
929	2019-01-21 03:09:01.718702+00	819	819rubenduarte 	1	new through import_export	6	1
930	2019-01-21 03:09:01.720952+00	820	820reneponce 	1	new through import_export	6	1
931	2019-01-21 03:09:01.723338+00	821	821pablobarba 	1	new through import_export	6	1
932	2019-01-21 03:09:01.726811+00	822	822luisjavier	1	new through import_export	6	1
933	2019-01-21 03:09:01.730749+00	823	823fernandovazquez 	1	new through import_export	6	1
934	2019-01-21 03:09:01.7333+00	824	824fernandohernandez	1	new through import_export	6	1
935	2019-01-21 03:09:01.735813+00	825	825eduardobautista 	1	new through import_export	6	1
936	2019-01-21 03:09:01.737891+00	826	826diegonava 	1	new through import_export	6	1
937	2019-01-21 03:09:01.740018+00	827	827danielpineda 	1	new through import_export	6	1
938	2019-01-21 03:09:01.74242+00	828	828axeljafet	1	new through import_export	6	1
939	2019-01-21 03:09:01.745001+00	829	829angelbecerril 	1	new through import_export	6	1
940	2019-01-21 03:09:01.747472+00	830	830adriangonzalez 	1	new through import_export	6	1
941	2019-01-21 03:09:01.749913+00	831	831sebastianzaragoza	1	new through import_export	6	1
942	2019-01-21 03:09:01.752244+00	832	832santiagobastida 	1	new through import_export	6	1
943	2019-01-21 03:09:01.755163+00	833	833rifkavillamizar 	1	new through import_export	6	1
944	2019-01-21 03:09:01.757841+00	834	834mateorodriguez 	1	new through import_export	6	1
945	2019-01-21 03:09:01.760536+00	835	835lukacervera 	1	new through import_export	6	1
946	2019-01-21 03:09:01.762887+00	836	836leonsanchez 	1	new through import_export	6	1
947	2019-01-21 03:09:01.765475+00	837	837juanduartesmith	1	new through import_export	6	1
948	2019-01-21 03:09:01.76822+00	838	838jeronimorettig 	1	new through import_export	6	1
949	2019-01-21 03:09:01.771139+00	839	839emavazquezmaya	1	new through import_export	6	1
950	2019-01-21 03:09:01.774476+00	840	840dominickfernandez	1	new through import_export	6	1
951	2019-01-21 03:09:01.776875+00	841	841diegofabricebotto	1	new through import_export	6	1
952	2019-01-21 03:09:01.778892+00	842	842arturoemilianorub	1	new through import_export	6	1
953	2019-01-21 03:09:01.781137+00	843	843alejandrouribe	1	new through import_export	6	1
954	2019-01-21 03:09:01.784206+00	844	844rodrigofranciscom	1	new through import_export	6	1
955	2019-01-21 03:09:01.787042+00	845	845orlandosuarez 	1	new through import_export	6	1
956	2019-01-21 03:09:01.789522+00	846	846fernandovazquez 	1	new through import_export	6	1
957	2019-01-21 03:09:01.792166+00	847	847fernandohernandez	1	new through import_export	6	1
958	2019-01-21 03:09:01.794818+00	848	848eduardobautista 	1	new through import_export	6	1
959	2019-01-21 03:09:01.796919+00	849	849diegonava 	1	new through import_export	6	1
960	2019-01-21 03:09:01.799064+00	850	850axeljafetperez	1	new through import_export	6	1
961	2019-01-21 03:09:01.801076+00	851	851axelcarrasco	1	new through import_export	6	1
962	2019-01-21 03:09:01.803422+00	852	852valeriavillamizar	1	new through import_export	6	1
963	2019-01-21 03:09:01.806734+00	853	853valeriagalan 	1	new through import_export	6	1
964	2019-01-21 03:09:01.80916+00	854	854paolaperez 	1	new through import_export	6	1
965	2019-01-21 03:09:01.811495+00	855	855nataliaperez 	1	new through import_export	6	1
966	2019-01-21 03:09:01.814143+00	856	856jeniferlopez 	1	new through import_export	6	1
967	2019-01-21 03:09:01.816761+00	857	857ethelrubilopez	1	new through import_export	6	1
968	2019-01-21 03:09:01.819269+00	858	858danielareygadas 	1	new through import_export	6	1
969	2019-01-21 03:09:01.821737+00	859	859arantzagalan	1	new through import_export	6	1
970	2019-01-21 03:09:01.824213+00	860	860victoranaya 	1	new through import_export	6	1
971	2019-01-21 03:09:01.826839+00	861	861leonardorios 	1	new through import_export	6	1
972	2019-01-21 03:09:01.829349+00	862	862josemiguelmendoza	1	new through import_export	6	1
973	2019-01-21 03:09:01.831915+00	863	863josefernandopiña	1	new through import_export	6	1
974	2019-01-21 03:09:01.834282+00	864	864javieremiliopetoz	1	new through import_export	6	1
975	2019-01-21 03:09:01.836717+00	865	865javierdiaz 	1	new through import_export	6	1
976	2019-01-21 03:09:01.839312+00	866	866gabrielruiz 	1	new through import_export	6	1
977	2019-01-21 03:09:01.841704+00	867	867elliotferruzca 	1	new through import_export	6	1
978	2019-01-21 03:09:01.843955+00	868	868diegoperez 	1	new through import_export	6	1
979	2019-01-21 03:09:01.846242+00	869	869diegomartinez 	1	new through import_export	6	1
980	2019-01-21 03:09:01.84853+00	870	870carlosortiz 	1	new through import_export	6	1
981	2019-01-21 03:09:01.85096+00	871	871calebperez 	1	new through import_export	6	1
982	2019-01-21 03:09:01.853037+00	872	872brunocastro 	1	new through import_export	6	1
983	2019-01-21 03:09:01.855646+00	873	873bernardoquiroz	1	new through import_export	6	1
984	2019-01-21 03:09:01.85818+00	874	874yoavalexeiperez	1	new through import_export	6	1
985	2019-01-21 03:09:01.860422+00	875	875santiagozaragoza 	1	new through import_export	6	1
986	2019-01-21 03:09:01.862496+00	876	876santiagoolmedo 	1	new through import_export	6	1
987	2019-01-21 03:09:01.864567+00	877	877santiagogomez 	1	new through import_export	6	1
988	2019-01-21 03:09:01.866707+00	878	878robertosanchez 	1	new through import_export	6	1
989	2019-01-21 03:09:01.868899+00	879	879rafaelrivapalacio	1	new through import_export	6	1
990	2019-01-21 03:09:01.871185+00	880	880patricioislas 	1	new through import_export	6	1
991	2019-01-21 03:09:01.873423+00	881	881pablobastida 	1	new through import_export	6	1
992	2019-01-21 03:09:01.876121+00	882	882mateotrias 	1	new through import_export	6	1
993	2019-01-21 03:09:01.87827+00	883	883martinjurado 	1	new through import_export	6	1
994	2019-01-21 03:09:01.880239+00	884	884lucianoromero 	1	new through import_export	6	1
995	2019-01-21 03:09:01.882287+00	885	885julioalfonzoalvar	1	new through import_export	6	1
996	2019-01-21 03:09:01.884152+00	886	886josemariasalgado	1	new through import_export	6	1
997	2019-01-21 03:09:01.886067+00	887	887joseemilianomuñoz	1	new through import_export	6	1
998	2019-01-21 03:09:01.887916+00	888	888gabrielruiz 	1	new through import_export	6	1
999	2019-01-21 03:09:01.889967+00	889	889emilioisrael 	1	new through import_export	6	1
1000	2019-01-21 03:09:01.891996+00	890	890eduardopeña 	1	new through import_export	6	1
1001	2019-01-21 03:09:01.894051+00	891	891brunouribe 	1	new through import_export	6	1
1002	2019-01-21 03:09:01.89631+00	892	892brunomartinez 	1	new through import_export	6	1
1003	2019-01-21 03:09:01.898763+00	893	893angelgabrielsanch	1	new through import_export	6	1
1004	2019-01-21 03:09:01.900717+00	894	894alonsoortiz	1	new through import_export	6	1
1005	2019-01-21 03:09:01.90287+00	895	895valeriavillamizar	1	new through import_export	6	1
1006	2019-01-21 03:09:01.905305+00	896	896santiagozaragoza 	1	new through import_export	6	1
1007	2019-01-21 03:09:01.907804+00	897	897santiagoolmedo 	1	new through import_export	6	1
1008	2019-01-21 03:09:01.911024+00	898	898saidcasab 	1	new through import_export	6	1
1009	2019-01-21 03:09:01.913243+00	899	899rodrigobaez 	1	new through import_export	6	1
1010	2019-01-21 03:09:01.915875+00	900	900patricioramirez 	1	new through import_export	6	1
1011	2019-01-21 03:09:01.918233+00	901	901nicolasvillareal 	1	new through import_export	6	1
1012	2019-01-21 03:09:01.920591+00	902	902nicolasvarela 	1	new through import_export	6	1
1013	2019-01-21 03:09:01.923196+00	903	903matiasvazquezmaya	1	new through import_export	6	1
1014	2019-01-21 03:09:01.925548+00	904	904martinjurado 	1	new through import_export	6	1
1015	2019-01-21 03:09:01.928517+00	905	905lucianoromero 	1	new through import_export	6	1
1016	2019-01-21 03:09:01.931089+00	906	906leonsanchez 	1	new through import_export	6	1
1017	2019-01-21 03:09:01.933301+00	907	907juanpabloflores	1	new through import_export	6	1
1018	2019-01-21 03:09:01.935422+00	908	908juancarlosmartine	1	new through import_export	6	1
1019	2019-01-21 03:09:01.937399+00	909	909josepabloochoa	1	new through import_export	6	1
1020	2019-01-21 03:09:01.941897+00	910	910jorgeemilianogarc	1	new through import_export	6	1
1021	2019-01-21 03:09:01.94557+00	911	911ikerhidalgo 	1	new through import_export	6	1
1022	2019-01-21 03:09:01.948101+00	912	912ikercastro 	1	new through import_export	6	1
1023	2019-01-21 03:09:01.950868+00	913	913hectorivanrivera	1	new through import_export	6	1
1024	2019-01-21 03:09:01.954764+00	914	914gabrieluribe 	1	new through import_export	6	1
1025	2019-01-21 03:09:01.957718+00	915	915fernandoortiz 	1	new through import_export	6	1
1026	2019-01-21 03:09:01.9605+00	916	916evanrobles 	1	new through import_export	6	1
1027	2019-01-21 03:09:01.963327+00	917	917ernestodavidmedin	1	new through import_export	6	1
1028	2019-01-21 03:09:01.966333+00	918	918emilianogenarogom	1	new through import_export	6	1
1029	2019-01-21 03:09:01.969064+00	919	919diegoorozco 	1	new through import_export	6	1
1030	2019-01-21 03:09:01.971917+00	920	920danielbecerril 	1	new through import_export	6	1
1031	2019-01-21 03:09:01.974373+00	921	921cristiangaelarmen	1	new through import_export	6	1
1032	2019-01-21 03:09:01.97675+00	922	922brunopacheco 	1	new through import_export	6	1
1033	2019-01-21 03:09:01.979572+00	923	923aryasingh 	1	new through import_export	6	1
1034	2019-01-21 03:09:01.982227+00	924	924arturodueñasdueña	1	new through import_export	6	1
1035	2019-01-21 03:09:01.984676+00	925	925arturoaguillon 	1	new through import_export	6	1
1036	2019-01-21 03:09:01.987502+00	926	926alejandrodiaz	1	new through import_export	6	1
1037	2019-01-21 03:09:01.99028+00	927	927valeriavillamizar	1	new through import_export	6	1
1038	2019-01-21 03:09:01.992656+00	928	928santiagozaragoza 	1	new through import_export	6	1
1039	2019-01-21 03:09:01.995389+00	929	929santiagoolmedo 	1	new through import_export	6	1
1040	2019-01-21 03:09:01.997512+00	930	930saidcasab 	1	new through import_export	6	1
1041	2019-01-21 03:09:02.000007+00	931	931rodrigobaez 	1	new through import_export	6	1
1042	2019-01-21 03:09:02.002746+00	932	932patricioramirez 	1	new through import_export	6	1
1043	2019-01-21 03:09:02.005569+00	933	933nicolasvillareal 	1	new through import_export	6	1
1044	2019-01-21 03:09:02.008499+00	934	934nicolasvarela 	1	new through import_export	6	1
1045	2019-01-21 03:09:02.011033+00	935	935matiasvazquezmaya	1	new through import_export	6	1
1046	2019-01-21 03:09:02.013393+00	936	936martinjurado 	1	new through import_export	6	1
1047	2019-01-21 03:09:02.015906+00	937	937lucianoromero 	1	new through import_export	6	1
1048	2019-01-21 03:09:02.018193+00	938	938leonsanchez 	1	new through import_export	6	1
1049	2019-01-21 03:09:02.020243+00	939	939juanpabloflores	1	new through import_export	6	1
1050	2019-01-21 03:09:02.022194+00	940	940juancarlosmartine	1	new through import_export	6	1
1051	2019-01-21 03:09:02.024163+00	941	941josepabloochoa	1	new through import_export	6	1
1052	2019-01-21 03:09:02.02613+00	942	942jorgeemilianogarc	1	new through import_export	6	1
1053	2019-01-21 03:09:02.027864+00	943	943ikerhidalgo 	1	new through import_export	6	1
1054	2019-01-21 03:09:02.02968+00	944	944ikercastro 	1	new through import_export	6	1
1055	2019-01-21 03:09:02.032028+00	945	945hectorivanrivera	1	new through import_export	6	1
1056	2019-01-21 03:09:02.034111+00	946	946gabrieluribe 	1	new through import_export	6	1
1057	2019-01-21 03:09:02.035931+00	947	947fernandoortiz 	1	new through import_export	6	1
1058	2019-01-21 03:09:02.037836+00	948	948evanrobles 	1	new through import_export	6	1
1059	2019-01-21 03:09:02.039491+00	949	949ernestodavidmedin	1	new through import_export	6	1
1060	2019-01-21 03:09:02.04156+00	950	950emilianogenarogom	1	new through import_export	6	1
1061	2019-01-21 03:09:02.043683+00	951	951diegoorozco 	1	new through import_export	6	1
1062	2019-01-21 03:09:02.045783+00	952	952danielbecerril 	1	new through import_export	6	1
1063	2019-01-21 03:09:02.048261+00	953	953cristiangaelarmen	1	new through import_export	6	1
1064	2019-01-21 03:09:02.050331+00	954	954brunopacheco 	1	new through import_export	6	1
1065	2019-01-21 03:09:02.052574+00	955	955aryasingh 	1	new through import_export	6	1
1066	2019-01-21 03:09:02.054406+00	956	956arturodueñasdueña	1	new through import_export	6	1
1067	2019-01-21 03:09:02.056348+00	957	957arturoaguillon 	1	new through import_export	6	1
1068	2019-01-21 03:09:02.058298+00	958	958alejandrodiaz	1	new through import_export	6	1
1069	2019-01-21 03:09:02.060124+00	959	959victoranaya 	1	new through import_export	6	1
1070	2019-01-21 03:09:02.061952+00	960	960santiagopeña 	1	new through import_export	6	1
1071	2019-01-21 03:09:02.063863+00	961	961santiagoparedes 	1	new through import_export	6	1
1072	2019-01-21 03:09:02.065515+00	962	962rubenlira 	1	new through import_export	6	1
1073	2019-01-21 03:09:02.067333+00	963	963rafaelrivapalacio	1	new through import_export	6	1
1074	2019-01-21 03:09:02.06895+00	964	964patricioislas 	1	new through import_export	6	1
1075	2019-01-21 03:09:02.070876+00	965	965pablomoctezuma 	1	new through import_export	6	1
1076	2019-01-21 03:09:02.072518+00	966	966julioalfonzoalvar	1	new through import_export	6	1
1077	2019-01-21 03:09:02.07411+00	967	967josefernandopiña	1	new through import_export	6	1
1078	2019-01-21 03:09:02.075461+00	968	968ikerhidalgo 	1	new through import_export	6	1
1080	2019-01-21 03:09:02.078754+00	970	970gabrielruiz 	1	new through import_export	6	1
1081	2019-01-21 03:09:02.080522+00	971	971emilioisrael 	1	new through import_export	6	1
1082	2019-01-21 03:09:02.082079+00	972	972eduardobautista 	1	new through import_export	6	1
1083	2019-01-21 03:09:02.083553+00	973	973danielareygadas 	1	new through import_export	6	1
1084	2019-01-21 03:09:02.085163+00	974	974danielbecerril 	1	new through import_export	6	1
1085	2019-01-21 03:09:02.086802+00	975	975cesarlopez 	1	new through import_export	6	1
1086	2019-01-21 03:09:02.088673+00	976	976axeljafetperez	1	new through import_export	6	1
1087	2019-01-21 03:09:02.090956+00	977	977aryasingh 	1	new through import_export	6	1
1088	2019-01-21 03:09:02.093164+00	978	978alonsoortiz	1	new through import_export	6	1
1089	2019-01-21 03:09:02.09565+00	979	979victorrafaelsevil	1	new through import_export	6	1
1090	2019-01-21 03:09:02.09804+00	980	980santiagomiranda 	1	new through import_export	6	1
1091	2019-01-21 03:09:02.100156+00	981	981santiagolopezruiz	1	new through import_export	6	1
1092	2019-01-21 03:09:02.103182+00	982	982santiagogaribaylu	1	new through import_export	6	1
1093	2019-01-21 03:09:02.105311+00	983	983rafaelnavarodrigu	1	new through import_export	6	1
1094	2019-01-21 03:09:02.107626+00	984	984ivanhernandezpadu	1	new through import_export	6	1
1095	2019-01-21 03:09:02.109361+00	985	985hectoraldereteguz	1	new through import_export	6	1
1096	2019-01-21 03:09:02.111137+00	986	986fernandoharomerca	1	new through import_export	6	1
1097	2019-01-21 03:09:02.112681+00	987	987diegovalencianomu	1	new through import_export	6	1
1098	2019-01-21 03:09:02.114303+00	988	988diegoisaactorizar	1	new through import_export	6	1
1099	2019-01-21 03:09:02.115772+00	989	989carlossantanaorti	1	new through import_export	6	1
1100	2019-01-21 03:09:02.117224+00	990	990carloselianbedoll	1	new through import_export	6	1
1101	2019-01-21 03:09:02.118743+00	991	991braulioyazidballa	1	new through import_export	6	1
1102	2019-01-21 03:09:02.120234+00	992	992bernardouribesoto	1	new through import_export	6	1
1103	2019-01-21 03:09:02.121922+00	993	993amilcararathsanch	1	new through import_export	6	1
1104	2019-01-21 03:09:02.12342+00	994	994alejandroparramon	1	new through import_export	6	1
1105	2019-01-21 03:09:02.125017+00	995	995victormanuelsando	1	new through import_export	6	1
1106	2019-01-21 03:09:02.126631+00	996	996santiagocastellan	1	new through import_export	6	1
1107	2019-01-21 03:09:02.12828+00	997	997oscarortegaespind	1	new through import_export	6	1
1108	2019-01-21 03:09:02.129872+00	998	998nelsonalejandrome	1	new through import_export	6	1
1109	2019-01-21 03:09:02.131379+00	999	999josemanuelfragoso	1	new through import_export	6	1
1110	2019-01-21 03:09:02.13282+00	1000	1000joseguillermosan	1	new through import_export	6	1
1111	2019-01-21 03:09:02.134376+00	1001	1001hectoralonsomarq	1	new through import_export	6	1
1112	2019-01-21 03:09:02.136017+00	1002	1002gustavoeduardono	1	new through import_export	6	1
1113	2019-01-21 03:09:02.13742+00	1003	1003erickrobertogonz	1	new through import_export	6	1
1114	2019-01-21 03:09:02.13888+00	1004	1004erickjesusnagano	1	new through import_export	6	1
1115	2019-01-21 03:09:02.140285+00	1005	1005emilioorozcotorr	1	new through import_export	6	1
1116	2019-01-21 03:09:02.141691+00	1006	1006carlosantoniogar	1	new through import_export	6	1
1117	2019-01-21 03:09:02.143105+00	1007	1007zoeayelengarcia	1	new through import_export	6	1
1118	2019-01-21 03:09:02.144534+00	1008	1008yahirramirezorti	1	new through import_export	6	1
1119	2019-01-21 03:09:02.145928+00	1009	1009sorenalbertojard	1	new through import_export	6	1
1120	2019-01-21 03:09:02.147353+00	1010	1010omaremmanuelmart	1	new through import_export	6	1
1121	2019-01-21 03:09:02.148825+00	1011	1011miguelangelmaria	1	new through import_export	6	1
1122	2019-01-21 03:09:02.150492+00	1012	1012joseabizaidrusz	1	new through import_export	6	1
1123	2019-01-21 03:09:02.151877+00	1013	1013joaquincastellan	1	new through import_export	6	1
1124	2019-01-21 03:09:02.153201+00	1014	1014jesusandresherna	1	new through import_export	6	1
1125	2019-01-21 03:09:02.154622+00	1015	1015erickleonardoher	1	new through import_export	6	1
1126	2019-01-21 03:09:02.155944+00	1016	1016emilioespinosaal	1	new through import_export	6	1
1127	2019-01-21 03:09:02.157472+00	1017	1017emilianovargasra	1	new through import_export	6	1
1128	2019-01-21 03:09:02.158945+00	1018	1018diegomurosanchez	1	new through import_export	6	1
1129	2019-01-21 03:09:02.160273+00	1019	1019danielfabrizioji	1	new through import_export	6	1
1130	2019-01-21 03:09:02.161528+00	1020	1020brunogaelgarciag	1	new through import_export	6	1
1131	2019-01-21 03:09:02.162874+00	1021	1021axelherediaville	1	new through import_export	6	1
1132	2019-01-21 03:09:02.164112+00	1022	1022angeldanielperez	1	new through import_export	6	1
1133	2019-01-21 03:09:02.165427+00	1023	1023andreslozanolaga	1	new through import_export	6	1
1134	2019-01-21 03:09:02.16695+00	1024	1024victorjovangarci	1	new through import_export	6	1
1135	2019-01-21 03:09:02.168397+00	1025	1025sebastianlopezdu	1	new through import_export	6	1
1136	2019-01-21 03:09:02.170036+00	1026	1026pabloalvaradogon	1	new through import_export	6	1
1137	2019-01-21 03:09:02.171602+00	1027	1027nicolasescobarce	1	new through import_export	6	1
1138	2019-01-21 03:09:02.173064+00	1028	1028leonardolopezram	1	new through import_export	6	1
1139	2019-01-21 03:09:02.174485+00	1029	1029leonardocastillo	1	new through import_export	6	1
1140	2019-01-21 03:09:02.175862+00	1030	1030joelhernandezdur	1	new through import_export	6	1
1141	2019-01-21 03:09:02.177334+00	1031	1031joaquincastellan	1	new through import_export	6	1
1142	2019-01-21 03:09:02.178764+00	1032	1032francovertizvill	1	new through import_export	6	1
1143	2019-01-21 03:09:02.180273+00	1033	1033emilianogomezjua	1	new through import_export	6	1
1144	2019-01-21 03:09:02.181962+00	1034	1034emilianocaldronc	1	new through import_export	6	1
1145	2019-01-21 03:09:02.183471+00	1035	1035eliandavidcarras	1	new through import_export	6	1
1146	2019-01-21 03:09:02.185305+00	1036	1036diegorosasaguila	1	new through import_export	6	1
1147	2019-01-21 03:09:02.187229+00	1037	1037diegoemiliolopez	1	new through import_export	6	1
1148	2019-01-21 03:09:02.189096+00	1038	1038bernardonicolasc	1	new through import_export	6	1
1149	2019-01-21 03:09:02.19103+00	1039	1039angeljavierperez	1	new through import_export	6	1
1150	2019-01-21 03:09:02.192927+00	1040	1040alfredomarquezme	1	new through import_export	6	1
1151	2019-01-21 03:09:02.195158+00	1041	1041santiagobenjamin	1	new through import_export	6	1
1152	2019-01-21 03:09:02.196797+00	1042	1042nicolassuarezcob	1	new through import_export	6	1
1153	2019-01-21 03:09:02.198481+00	1043	1043maximilianomolin	1	new through import_export	6	1
1154	2019-01-21 03:09:02.201495+00	1044	1044leonardomaximili	1	new through import_export	6	1
1155	2019-01-21 03:09:02.204011+00	1045	1045juanpablodelator	1	new through import_export	6	1
1156	2019-01-21 03:09:02.205965+00	1046	1046isaachernandezpa	1	new through import_export	6	1
1157	2019-01-21 03:09:02.207393+00	1047	1047isaacchavezrojas	1	new through import_export	6	1
1158	2019-01-21 03:09:02.208766+00	1048	1048ikervazquez 	1	new through import_export	6	1
1159	2019-01-21 03:09:02.210327+00	1049	1049ikergarciaortiz	1	new through import_export	6	1
1160	2019-01-21 03:09:02.211679+00	1050	1050emilianozeledona	1	new through import_export	6	1
1161	2019-01-21 03:09:02.212959+00	1051	1051emanuelalexander	1	new through import_export	6	1
1162	2019-01-21 03:09:02.21446+00	1052	1052edgarpatriciomay	1	new through import_export	6	1
1163	2019-01-21 03:09:02.21589+00	1053	1053diegoandressando	1	new through import_export	6	1
1164	2019-01-21 03:09:02.217256+00	1054	1054andresebastianag	1	new through import_export	6	1
1165	2019-01-21 03:09:02.21844+00	1055	1055alainraulbadiahe	1	new through import_export	6	1
1166	2019-01-21 03:09:02.219606+00	1056	1056adrianperezdiaz	1	new through import_export	6	1
1167	2019-01-21 03:09:02.220994+00	1057	1057sebastianhernand	1	new through import_export	6	1
1168	2019-01-21 03:09:02.222401+00	1058	1058santiagotorresve	1	new through import_export	6	1
1169	2019-01-21 03:09:02.223761+00	1059	1059santiagonoriegav	1	new through import_export	6	1
1170	2019-01-21 03:09:02.22517+00	1060	1060ricardosantiagor	1	new through import_export	6	1
1171	2019-01-21 03:09:02.227293+00	1061	1061renejosuebuendia	1	new through import_export	6	1
1172	2019-01-21 03:09:02.228795+00	1062	1062patricioorozcoto	1	new through import_export	6	1
1173	2019-01-21 03:09:02.230442+00	1063	1063pabloalbertoespe	1	new through import_export	6	1
1174	2019-01-21 03:09:02.232148+00	1064	1064omarzavalapeña	1	new through import_export	6	1
1175	2019-01-21 03:09:02.23407+00	1065	1065mikelmedinazarza	1	new through import_export	6	1
1176	2019-01-21 03:09:02.235885+00	1066	1066josedavidmelonar	1	new through import_export	6	1
1177	2019-01-21 03:09:02.237514+00	1067	1067emilianovazqueza	1	new through import_export	6	1
1178	2019-01-21 03:09:02.239561+00	1068	1068ederalessandroru	1	new through import_export	6	1
1179	2019-01-21 03:09:02.241069+00	1069	1069diegorodriguezbu	1	new through import_export	6	1
1180	2019-01-21 03:09:02.242606+00	1070	1070davidsaulmoreno	1	new through import_export	6	1
1181	2019-01-21 03:09:02.24405+00	1071	1071alainemanuelcort	1	new through import_export	6	1
1182	2019-01-21 03:09:02.245438+00	1072	1072santiagoreyesrom	1	new through import_export	6	1
1183	2019-01-21 03:09:02.246771+00	1073	1073santiagofrancomo	1	new through import_export	6	1
1184	2019-01-21 03:09:02.24809+00	1074	1074rubenfranciscogo	1	new through import_export	6	1
1185	2019-01-21 03:09:02.249401+00	1075	1075rodrigobasiliohe	1	new through import_export	6	1
1186	2019-01-21 03:09:02.25282+00	1076	1076ricardodelrioavi	1	new through import_export	6	1
1187	2019-01-21 03:09:02.254618+00	1077	1077pablobelmontemen	1	new through import_export	6	1
1188	2019-01-21 03:09:02.256417+00	1078	1078mauriciovillarre	1	new through import_export	6	1
1189	2019-01-21 03:09:02.25854+00	1079	1079leonardojavierra	1	new through import_export	6	1
1190	2019-01-21 03:09:02.260701+00	1080	1080julianrodriguezh	1	new through import_export	6	1
1191	2019-01-21 03:09:02.262746+00	1081	1081juanpabloandrade	1	new through import_export	6	1
1192	2019-01-21 03:09:02.264491+00	1082	1082jorgeemiliochape	1	new through import_export	6	1
1193	2019-01-21 03:09:02.266203+00	1083	1083emmanuelbelmonte	1	new through import_export	6	1
1194	2019-01-21 03:09:02.26818+00	1084	1084eduardosantiagoh	1	new through import_export	6	1
1195	2019-01-21 03:09:02.270339+00	1085	1085diegogalvan 	1	new through import_export	6	1
1196	2019-01-21 03:09:02.272408+00	1086	1086christophernaimr	1	new through import_export	6	1
1197	2019-01-21 03:09:02.274478+00	1087	1087atzinbayardisanc	1	new through import_export	6	1
1198	2019-01-21 03:09:02.276225+00	1088	1088alvarojesusvarga	1	new through import_export	6	1
1199	2019-01-21 03:09:02.277998+00	1089	1089alejandrohernand	1	new through import_export	6	1
1200	2019-01-21 03:09:02.280151+00	1090	1090selikpalaciospal	1	new through import_export	6	1
1201	2019-01-21 03:09:02.282149+00	1091	1091rubenarturomendo	1	new through import_export	6	1
1202	2019-01-21 03:09:02.284622+00	1092	1092rafaelmisaelsoto	1	new through import_export	6	1
1203	2019-01-21 03:09:02.28722+00	1093	1093nicolashernandez	1	new through import_export	6	1
1204	2019-01-21 03:09:02.289585+00	1094	1094maximilianoteran	1	new through import_export	6	1
1205	2019-01-21 03:09:02.291993+00	1095	1095leonardovazquezm	1	new through import_export	6	1
1206	2019-01-21 03:09:02.294288+00	1096	1096joseandresherrer	1	new through import_export	6	1
1207	2019-01-21 03:09:02.29678+00	1097	1097ikerlazcanomonzo	1	new through import_export	6	1
1208	2019-01-21 03:09:02.299362+00	1098	1098giancarlocamilli	1	new through import_export	6	1
1209	2019-01-21 03:09:02.301814+00	1099	1099enriquearanarent	1	new through import_export	6	1
1210	2019-01-21 03:09:02.30439+00	1100	1100diegohumbertoarr	1	new through import_export	6	1
1211	2019-01-21 03:09:02.306939+00	1101	1101carlosledezmatru	1	new through import_export	6	1
1212	2019-01-21 03:09:02.30941+00	1102	1102carlosisaacdelac	1	new through import_export	6	1
1213	2019-01-21 03:09:02.311963+00	1103	1103andredavidflores	1	new through import_export	6	1
1214	2019-01-21 03:09:02.314306+00	1104	1104alonsotadeomonca	1	new through import_export	6	1
1215	2019-01-21 03:09:02.316718+00	1105	1105alejandrobarroso	1	new through import_export	6	1
1216	2019-01-21 03:09:02.319351+00	1106	1106alanalbertobrito	1	new through import_export	6	1
1217	2019-01-21 03:09:02.321195+00	1107	1107zoefloresgracia	1	new through import_export	6	1
1218	2019-01-21 03:09:02.322659+00	1108	1108ximenamontesinos	1	new through import_export	6	1
1219	2019-01-21 03:09:02.323935+00	1109	1109valentinacamacho	1	new through import_export	6	1
1220	2019-01-21 03:09:02.325237+00	1110	1110trianafortenells	1	new through import_export	6	1
1221	2019-01-21 03:09:02.32657+00	1111	1111sofiairiaquisrod	1	new through import_export	6	1
1222	2019-01-21 03:09:02.327842+00	1112	1112roxanaledezmatru	1	new through import_export	6	1
1223	2019-01-21 03:09:02.329244+00	1113	1113renatajuareguimu	1	new through import_export	6	1
1224	2019-01-21 03:09:02.330752+00	1114	1114pamelagissetcort	1	new through import_export	6	1
1225	2019-01-21 03:09:02.332172+00	1115	1115marianalozanolag	1	new through import_export	6	1
1226	2019-01-21 03:09:02.333803+00	1116	1116lucianazanellapl	1	new through import_export	6	1
1227	2019-01-21 03:09:02.335587+00	1117	1117jimenasanchezoga	1	new through import_export	6	1
1228	2019-01-21 03:09:02.337423+00	1118	1118fridasofiamartin	1	new through import_export	6	1
1229	2019-01-21 03:09:02.339307+00	1119	1119fatimavazquezcor	1	new through import_export	6	1
1230	2019-01-21 03:09:02.341034+00	1120	1120carinapalomasern	1	new through import_export	6	1
1231	2019-01-21 03:09:02.342899+00	1121	1121camilasaidsanche	1	new through import_export	6	1
1232	2019-01-21 03:09:02.344589+00	1122	1122andreairiaquisro	1	new through import_export	6	1
1233	2019-01-21 03:09:02.346374+00	1123	1123rodrigoriverasol	1	new through import_export	6	1
1234	2019-01-21 03:09:02.348167+00	1124	1124pabloanayaalonzo	1	new through import_export	6	1
1235	2019-01-21 03:09:02.350125+00	1125	1125marioambrociooli	1	new through import_export	6	1
1236	2019-01-21 03:09:02.352186+00	1126	1126luisangel delacr	1	new through import_export	6	1
1237	2019-01-21 03:09:02.354024+00	1127	1127luisalexismartin	1	new through import_export	6	1
1238	2019-01-21 03:09:02.355827+00	1128	1128hectorestebanrod	1	new through import_export	6	1
1239	2019-01-21 03:09:02.357662+00	1129	1129gaelmartinezpeña	1	new through import_export	6	1
1240	2019-01-21 03:09:02.359569+00	1130	1130brandongiovannit	1	new through import_export	6	1
1241	2019-01-21 03:09:02.361531+00	1131	1131angelzuñigaalonz	1	new through import_export	6	1
1242	2019-01-21 03:09:02.363562+00	1132	1132anayactxyvelazqu	1	new through import_export	6	1
1243	2019-01-21 03:09:02.365151+00	1133	1133alejandrohernand	1	new through import_export	6	1
1244	2019-01-21 03:09:02.366771+00	1134	1134santiagomartinez	1	new through import_export	6	1
1245	2019-01-21 03:09:02.368624+00	1135	1135saidabrahamgomez	1	new through import_export	6	1
1246	2019-01-21 03:09:02.371066+00	1136	1136raulemmanuelcord	1	new through import_export	6	1
1247	2019-01-21 03:09:02.373279+00	1137	1137omarcuevasbalbue	1	new through import_export	6	1
1248	2019-01-21 03:09:02.375555+00	1138	1138luisjancanofuent	1	new through import_export	6	1
1249	2019-01-21 03:09:02.377369+00	1139	1139luisenriquesolor	1	new through import_export	6	1
1250	2019-01-21 03:09:02.379246+00	1140	1140leonardogabrielr	1	new through import_export	6	1
1251	2019-01-21 03:09:02.381002+00	1141	1141juanpablohernand	1	new through import_export	6	1
1252	2019-01-21 03:09:02.382607+00	1142	1142joshelinelopezhe	1	new through import_export	6	1
1253	2019-01-21 03:09:02.384196+00	1143	1143ferranmauricioku	1	new through import_export	6	1
1254	2019-01-21 03:09:02.385846+00	1144	1144diegoalvaradomej	1	new through import_export	6	1
1255	2019-01-21 03:09:02.387645+00	1145	1145axelyaelgomezher	1	new through import_export	6	1
1256	2019-01-21 03:09:02.389955+00	1146	1146aldoemilianoordu	1	new through import_export	6	1
1257	2019-01-21 03:09:02.392537+00	1147	1147pabloavilawolf	1	new through import_export	6	1
1258	2019-01-21 03:09:02.395433+00	1148	1148marcoantonioflor	1	new through import_export	6	1
1259	2019-01-21 03:09:02.398176+00	1149	1149luisarturorodrig	1	new through import_export	6	1
1260	2019-01-21 03:09:02.400369+00	1150	1150leonardosantacru	1	new through import_export	6	1
1261	2019-01-21 03:09:02.40217+00	1151	1151leonardomirandaa	1	new through import_export	6	1
1262	2019-01-21 03:09:02.403778+00	1152	1152jorgeemilioortiz	1	new through import_export	6	1
1263	2019-01-21 03:09:02.405474+00	1153	1153emiliosantiagobo	1	new through import_export	6	1
1264	2019-01-21 03:09:02.407399+00	1154	1154diegomatiasborza	1	new through import_export	6	1
1265	2019-01-21 03:09:02.409359+00	1155	1155andreszuñigamont	1	new through import_export	6	1
1266	2019-01-21 03:09:02.411496+00	1156	1156alejandrotorrese	1	new through import_export	6	1
1267	2019-01-21 03:09:02.41346+00	1157	1157alejandrosegurac	1	new through import_export	6	1
1268	2019-01-21 03:09:02.415436+00	1158	1158alanemilianotapi	1	new through import_export	6	1
1269	2019-01-21 03:09:02.417117+00	1159	1159yadielcanofuente	1	new through import_export	6	1
1270	2019-01-21 03:09:02.419306+00	1160	1160santiagohernande	1	new through import_export	6	1
1271	2019-01-21 03:09:02.421053+00	1161	1161ricardoefrenmaya	1	new through import_export	6	1
1272	2019-01-21 03:09:02.422748+00	1162	1162luiseduardocoron	1	new through import_export	6	1
1273	2019-01-21 03:09:02.424692+00	1163	1163julianfloresvill	1	new through import_export	6	1
1274	2019-01-21 03:09:02.426722+00	1164	1164gaeltorresesquiv	1	new through import_export	6	1
1275	2019-01-21 03:09:02.428444+00	1165	1165emiranuarthernan	1	new through import_export	6	1
1276	2019-01-21 03:09:02.43018+00	1166	1166emiliohernandezg	1	new through import_export	6	1
1277	2019-01-21 03:09:02.431933+00	1167	1167diegosaavedranar	1	new through import_export	6	1
1278	2019-01-21 03:09:02.433666+00	1168	1168alexgranadosgarc	1	new through import_export	6	1
1279	2019-01-21 03:09:02.435462+00	1169	1169rodrigomirandaal	1	new through import_export	6	1
1280	2019-01-21 03:09:02.437109+00	1170	1170reymundobaltazar	1	new through import_export	6	1
1281	2019-01-21 03:09:02.438913+00	1171	1171joseluissuarez 	1	new through import_export	6	1
1282	2019-01-21 03:09:02.44059+00	1172	1172joseemilioarroyo	1	new through import_export	6	1
1283	2019-01-21 03:09:02.442396+00	1173	1173josecarlosgarcia	1	new through import_export	6	1
1284	2019-01-21 03:09:02.44462+00	1174	1174jesuspaolo ramir	1	new through import_export	6	1
1285	2019-01-21 03:09:02.446643+00	1175	1175giancarloamayama	1	new through import_export	6	1
1286	2019-01-21 03:09:02.448637+00	1176	1176ernestofortino g	1	new through import_export	6	1
1287	2019-01-21 03:09:02.450884+00	1177	1177emilio medinamon	1	new through import_export	6	1
1288	2019-01-21 03:09:02.453017+00	1178	1178elianemanuelsolo	1	new through import_export	6	1
1289	2019-01-21 03:09:02.455196+00	1179	1179diegomateo nonel	1	new through import_export	6	1
1290	2019-01-21 03:09:02.457373+00	1180	1180diegogranadosber	1	new through import_export	6	1
1291	2019-01-21 03:09:02.459369+00	1181	1181diegoenriquemart	1	new through import_export	6	1
1292	2019-01-21 03:09:02.461157+00	1182	1182cesarrodrigoosna	1	new through import_export	6	1
1293	2019-01-21 03:09:02.463012+00	1183	1183brandonmartinezb	1	new through import_export	6	1
1294	2019-01-21 03:09:02.464818+00	1184	1184bilhanescobardie	1	new through import_export	6	1
1295	2019-01-21 03:09:02.466863+00	1185	1185alanrafaelgarcia	1	new through import_export	6	1
1296	2019-01-21 03:09:02.468729+00	1186	1186patriciojimeneza	1	new through import_export	6	1
1297	2019-01-21 03:09:02.470649+00	1187	1187oscargabrielsanq	1	new through import_export	6	1
1298	2019-01-21 03:09:02.472473+00	1188	1188miguel herrerahe	1	new through import_export	6	1
1299	2019-01-21 03:09:02.474536+00	1189	1189joseangelfloresg	1	new through import_export	6	1
1300	2019-01-21 03:09:02.476264+00	1190	1190hectorherreraher	1	new through import_export	6	1
1301	2019-01-21 03:09:02.478159+00	1191	1191yaelisaihidalgo 	1	new through import_export	6	1
1302	2019-01-21 03:09:02.480095+00	1192	1192ulicesabundiomen	1	new through import_export	6	1
1303	2019-01-21 03:09:02.481915+00	1193	1193patriciosantinoc	1	new through import_export	6	1
1304	2019-01-21 03:09:02.483826+00	1194	1194pablogarciavalen	1	new through import_export	6	1
1305	2019-01-21 03:09:02.485701+00	1195	1195oscaremilianonon	1	new through import_export	6	1
1306	2019-01-21 03:09:02.48774+00	1196	1196miguelemiliogonz	1	new through import_export	6	1
1307	2019-01-21 03:09:02.489727+00	1197	1197miguelangel carm	1	new through import_export	6	1
1308	2019-01-21 03:09:02.491747+00	1198	1198manuelenriquemen	1	new through import_export	6	1
1309	2019-01-21 03:09:02.493674+00	1199	1199luisangelespinos	1	new through import_export	6	1
1310	2019-01-21 03:09:02.495767+00	1200	1200jesussebastiango	1	new through import_export	6	1
1311	2019-01-21 03:09:02.497582+00	1201	1201ikersanquillilun	1	new through import_export	6	1
1312	2019-01-21 03:09:02.499575+00	1202	1202gerardoromeroram	1	new through import_export	6	1
1313	2019-01-21 03:09:02.501568+00	1203	1203emilianoromerohe	1	new through import_export	6	1
1314	2019-01-21 03:09:02.503724+00	1204	1204emilianohernande	1	new through import_export	6	1
1315	2019-01-21 03:09:02.505873+00	1205	1205cesaryosielmarti	1	new through import_export	6	1
1316	2019-01-21 03:09:02.507933+00	1206	1206santiagolozanowo	1	new through import_export	6	1
1317	2019-01-21 03:09:02.510007+00	1207	1207samuelmedinasanc	1	new through import_export	6	1
1318	2019-01-21 03:09:02.512061+00	1208	1208samuelmaximilian	1	new through import_export	6	1
1319	2019-01-21 03:09:02.514694+00	1209	1209joseeduardopazga	1	new through import_export	6	1
1320	2019-01-21 03:09:02.51705+00	1210	1210huberescobardieg	1	new through import_export	6	1
1321	2019-01-21 03:09:02.5194+00	1211	1211emanuelromeroher	1	new through import_export	6	1
1322	2019-01-21 03:09:02.521578+00	1212	1212cristianurielsua	1	new through import_export	6	1
1323	2019-01-21 03:09:02.524056+00	1213	1213brunosalquerorom	1	new through import_export	6	1
1324	2019-01-21 03:09:02.526365+00	1214	1214yaninayaretzibol	1	new through import_export	6	1
1325	2019-01-21 03:09:02.528881+00	1215	1215victoriachavezhe	1	new through import_export	6	1
1326	2019-01-21 03:09:02.531374+00	1216	1216sophiasaraisanqu	1	new through import_export	6	1
1327	2019-01-21 03:09:02.533936+00	1217	1217sophia salinasla	1	new through import_export	6	1
1328	2019-01-21 03:09:02.536199+00	1218	1218pamelayaleny mar	1	new through import_export	6	1
1329	2019-01-21 03:09:02.538845+00	1219	1219marthapatriciaca	1	new through import_export	6	1
1330	2019-01-21 03:09:02.54132+00	1220	1220mariajose carmon	1	new through import_export	6	1
1331	2019-01-21 03:09:02.543171+00	1221	1221mariafernanda ju	1	new through import_export	6	1
1332	2019-01-21 03:09:02.544953+00	1222	1222joshelinelopezhe	1	new through import_export	6	1
1333	2019-01-21 03:09:02.547449+00	1223	1223fatima pascualfr	1	new through import_export	6	1
1334	2019-01-21 03:09:02.550062+00	1224	1224etnisarahialvare	1	new through import_export	6	1
1335	2019-01-21 03:09:02.552397+00	1225	1225alineyuleymibola	1	new through import_export	6	1
1336	2019-01-21 04:55:17.18823+00	1	graham	1		11	1
1337	2019-01-21 16:12:15.801521+00	2	2cristiobalalvarezpr	1	new through import_export	11	1
1338	2019-01-21 16:12:15.804001+00	3	3mateobenitezvelazqu	1	new through import_export	11	1
1339	2019-01-21 16:12:15.805817+00	4	4anniajaymecabreralo	1	new through import_export	11	1
1340	2019-01-21 16:12:15.807305+00	5	5edgarsebastiancabre	1	new through import_export	11	1
1341	2019-01-21 16:12:15.808541+00	6	6luisangelgarciagarc	1	new through import_export	11	1
1342	2019-01-21 16:12:15.80984+00	7	7erickpatriciogarcia	1	new through import_export	11	1
1343	2019-01-21 16:12:15.811097+00	8	8axelgonzalezdomingu	1	new through import_export	11	1
1344	2019-01-21 16:12:15.812361+00	9	9emiliohidalgoplanti	1	new through import_export	11	1
1345	2019-01-21 16:12:15.813699+00	10	10inttihoffmannbonna	1	new through import_export	11	1
1346	2019-01-21 16:12:15.814807+00	11	11mateolebrijagarza	1	new through import_export	11	1
1347	2019-01-21 16:12:15.815981+00	12	12lucalopezpauls	1	new through import_export	11	1
1348	2019-01-21 16:12:15.817093+00	13	13naraianrattivillar	1	new through import_export	11	1
1349	2019-01-21 16:12:15.818333+00	14	14matiasrebollarcere	1	new through import_export	11	1
1350	2019-01-21 16:12:15.819546+00	15	15kairosasrosenfeld	1	new through import_export	11	1
1351	2019-01-21 16:12:15.82066+00	16	16eriksalashernandez	1	new through import_export	11	1
1352	2019-01-21 16:12:15.821736+00	17	17javiersalinasalmaz	1	new through import_export	11	1
1353	2019-01-21 16:12:15.823075+00	18	18luisezequielsotopo	1	new through import_export	11	1
1354	2019-01-21 16:12:15.824348+00	19	19ikaitreviñodorado	1	new through import_export	11	1
1355	2019-01-21 16:12:15.825664+00	20	20emilianomercadooca	1	new through import_export	11	1
1356	2019-01-21 16:12:15.827069+00	21	21erickfaguilarsuare	1	new through import_export	11	1
1357	2019-01-21 16:12:15.828416+00	22	22emilianobautistaca	1	new through import_export	11	1
1358	2019-01-21 16:12:15.829694+00	23	23josuebautistaestra	1	new through import_export	11	1
1359	2019-01-21 16:12:15.830873+00	24	24jonathancruzjarami	1	new through import_export	11	1
1360	2019-01-21 16:12:15.831966+00	25	25arielgarciagomez	1	new through import_export	11	1
1361	2019-01-21 16:12:15.833033+00	26	26darìoguadarramaja	1	new through import_export	11	1
1362	2019-01-21 16:12:15.834214+00	27	27ricardolegorretaca	1	new through import_export	11	1
1363	2019-01-21 16:12:15.83534+00	28	28diegolujanoemilian	1	new through import_export	11	1
1364	2019-01-21 16:12:15.836578+00	29	29hazielafifperedoes	1	new through import_export	11	1
1365	2019-01-21 16:12:15.837778+00	30	30josepablotolamendo	1	new through import_export	11	1
1366	2019-01-21 16:12:15.839206+00	31	31kuntreviñodorado	1	new through import_export	11	1
1367	2019-01-21 16:12:15.840353+00	32	32yohanavazquezrebol	1	new through import_export	11	1
1368	2019-01-21 16:12:15.8415+00	33	33mateovillafañareb	1	new through import_export	11	1
1369	2019-01-21 16:12:15.842685+00	34	34julianvillanuevaor	1	new through import_export	11	1
1370	2019-01-21 16:12:15.843833+00	35	35rodrigocruzjaramil	1	new through import_export	11	1
1371	2019-01-21 16:12:15.844936+00	36	36pedrodiazflores	1	new through import_export	11	1
1372	2019-01-21 16:12:15.84609+00	37	37juanmanueldiazgard	1	new through import_export	11	1
1373	2019-01-21 16:12:15.847195+00	38	38nicolaslebrijagarz	1	new through import_export	11	1
1374	2019-01-21 16:12:15.848289+00	39	39giovanisantoscolin	1	new through import_export	11	1
1375	2019-01-21 16:12:15.849347+00	40	40kevinsaidvazquezre	1	new through import_export	11	1
1376	2019-01-21 16:12:15.850696+00	41	41dyronacostasantill	1	new through import_export	11	1
1377	2019-01-21 16:12:15.852035+00	42	42rosauracarbajalreb	1	new through import_export	11	1
1378	2019-01-21 16:12:15.853287+00	43	43sebastiancastilloa	1	new through import_export	11	1
1379	2019-01-21 16:12:15.854471+00	44	44franciscodiazflore	1	new through import_export	11	1
1380	2019-01-21 16:12:15.855666+00	45	45gaelgarciabernal	1	new through import_export	11	1
1381	2019-01-21 16:12:15.857153+00	46	46lucaslebrijagarza	1	new through import_export	11	1
1382	2019-01-21 16:12:15.858618+00	47	47giovanipeñalozalo	1	new through import_export	11	1
1383	2019-01-21 16:12:15.859871+00	48	48carlosreyesjimenez	1	new through import_export	11	1
1384	2019-01-21 16:12:15.861104+00	49	49mauriciosalasherna	1	new through import_export	11	1
1385	2019-01-21 16:12:15.862374+00	50	50juancarlossantosco	1	new through import_export	11	1
1386	2019-01-21 16:12:15.863561+00	51	51oscarvacacaballero	1	new through import_export	11	1
1387	2019-01-21 16:12:15.864739+00	52	52victorvillafañaes	1	new through import_export	11	1
1388	2019-01-21 16:12:15.866043+00	53	53joaquinvillafañar	1	new through import_export	11	1
1389	2019-01-21 16:12:15.867249+00	54	54bryanesquivellopez	1	new through import_export	11	1
1390	2019-01-21 16:12:15.868392+00	55	55brandondanielgonza	1	new through import_export	11	1
1391	2019-01-21 16:12:15.869513+00	56	56jostinbrianguadarr	1	new through import_export	11	1
1392	2019-01-21 16:12:15.870616+00	57	57taniaguadarramaram	1	new through import_export	11	1
1393	2019-01-21 16:12:15.871701+00	58	58joseenriquegutierr	1	new through import_export	11	1
1394	2019-01-21 16:12:15.872771+00	59	59jesusjuarezquinter	1	new through import_export	11	1
1395	2019-01-21 16:12:15.873967+00	60	60erickomarlopezbece	1	new through import_export	11	1
1396	2019-01-21 16:12:15.875137+00	61	61fiorenzalujanoemil	1	new through import_export	11	1
1397	2019-01-21 16:12:15.876295+00	62	62jazminmontorosotel	1	new through import_export	11	1
1398	2019-01-21 16:12:15.877406+00	63	63sebastianortizpeñ	1	new through import_export	11	1
1399	2019-01-21 16:12:15.878593+00	64	64fernandoortizreyes	1	new through import_export	11	1
1400	2019-01-21 16:12:15.879715+00	65	65omarpedrazaaguilar	1	new through import_export	11	1
1401	2019-01-21 16:12:15.880912+00	66	66rubenpedrazasaldan	1	new through import_export	11	1
1402	2019-01-21 16:12:15.88202+00	67	67luisenriquerebolla	1	new through import_export	11	1
1403	2019-01-21 16:12:15.883239+00	68	68marcoantoniosantos	1	new through import_export	11	1
1404	2019-01-21 16:12:15.884428+00	69	69luisfernandovictor	1	new through import_export	11	1
1405	2019-01-21 16:12:15.885703+00	70	70tomalexanderschmid	1	new through import_export	11	1
1406	2019-01-21 16:12:15.886876+00	71	71aquilescarrillorod	1	new through import_export	11	1
1407	2019-01-21 16:12:15.88799+00	72	72joaohernandez	1	new through import_export	11	1
1408	2019-01-21 16:12:15.88975+00	73	73juanluisbarillas	1	new through import_export	11	1
1409	2019-01-21 16:12:15.890964+00	74	74pablostoehr	1	new through import_export	11	1
1410	2019-01-21 16:12:15.892277+00	75	75efrenmontealongoma	1	new through import_export	11	1
1411	2019-01-21 16:12:15.893647+00	76	76fernandogarciameji	1	new through import_export	11	1
1412	2019-01-21 16:12:15.894838+00	77	77franciscoandrescar	1	new through import_export	11	1
1413	2019-01-21 16:12:15.895964+00	78	78axelmendozagodinez	1	new through import_export	11	1
1414	2019-01-21 16:12:15.897052+00	79	79emiliodelvallegrun	1	new through import_export	11	1
1415	2019-01-21 16:12:15.898087+00	80	80bryanreyesmartinez	1	new through import_export	11	1
1416	2019-01-21 16:12:15.899165+00	81	81gabrielhernandez	1	new through import_export	11	1
1417	2019-01-21 16:12:15.906865+00	82	82alejandrovsanchezh	1	new through import_export	11	1
1418	2019-01-21 16:12:15.908074+00	83	83diegohernandezrome	1	new through import_export	11	1
1419	2019-01-21 16:12:15.909297+00	84	84andreasweber	1	new through import_export	11	1
1420	2019-01-21 16:12:15.910716+00	85	85alvaroelizaldezamu	1	new through import_export	11	1
1421	2019-01-21 16:12:15.91196+00	86	86emiliomedinacastel	1	new through import_export	11	1
1422	2019-01-21 16:12:15.913128+00	87	87danielapontonesgru	1	new through import_export	11	1
1423	2019-01-21 16:12:15.914302+00	88	88sebastianbenitez	1	new through import_export	11	1
1424	2019-01-21 16:12:15.915441+00	89	89gerardoalonsomarti	1	new through import_export	11	1
1425	2019-01-21 16:12:15.916603+00	90	90alejandrofernandez	1	new through import_export	11	1
1426	2019-01-21 16:12:15.917735+00	91	91emilianohermosillo	1	new through import_export	11	1
1427	2019-01-21 16:12:15.918914+00	92	92javierrancañobotay	1	new through import_export	11	1
1428	2019-01-21 16:12:15.920036+00	93	93hectormauricioguzm	1	new through import_export	11	1
1429	2019-01-21 16:12:15.921146+00	94	94dariohernandezcorn	1	new through import_export	11	1
1430	2019-01-21 16:12:15.922333+00	95	95santiagobarbosazaz	1	new through import_export	11	1
1431	2019-01-21 16:12:15.923599+00	96	96andrecubillaschave	1	new through import_export	11	1
1432	2019-01-21 16:12:15.924797+00	97	97mariotorresmeneses	1	new through import_export	11	1
1433	2019-01-21 16:12:15.925943+00	98	98ikerolinvelazco	1	new through import_export	11	1
1434	2019-01-21 16:12:15.927194+00	99	99alexisgonzalesriva	1	new through import_export	11	1
1435	2019-01-21 16:12:15.92834+00	100	100jovaniuwitonzerwa	1	new through import_export	11	1
1436	2019-01-21 16:12:15.929516+00	101	101guillermodomingue	1	new through import_export	11	1
1437	2019-01-21 16:12:15.930774+00	102	102miltonochoanieves	1	new through import_export	11	1
1438	2019-01-21 16:12:15.93197+00	103	103robertogarcia	1	new through import_export	11	1
1439	2019-01-21 16:12:15.933179+00	104	104brunodanielcaball	1	new through import_export	11	1
1440	2019-01-21 16:12:15.934386+00	105	105mackenziemackenzi	1	new through import_export	11	1
1441	2019-01-21 16:12:15.935567+00	106	106tonatiuhgutierrez	1	new through import_export	11	1
1442	2019-01-21 16:12:15.939409+00	107	107hugocarlosgomez	1	new through import_export	11	1
1443	2019-01-21 16:12:15.94071+00	108	108marianofrancocace	1	new through import_export	11	1
1444	2019-01-21 16:12:15.941896+00	109	109kongphiphatmachot	1	new through import_export	11	1
1445	2019-01-21 16:12:15.943103+00	110	110omardelacruz	1	new through import_export	11	1
1446	2019-01-21 16:12:15.944247+00	111	111patriciovelazquez	1	new through import_export	11	1
1447	2019-01-21 16:12:15.945368+00	112	112ikernarvaezbedoll	1	new through import_export	11	1
1448	2019-01-21 16:12:15.946616+00	113	113josetorrescipres	1	new through import_export	11	1
1449	2019-01-21 16:12:15.947784+00	114	114davidmichellereye	1	new through import_export	11	1
1450	2019-01-21 16:12:15.948993+00	115	115luisfernandoweber	1	new through import_export	11	1
1451	2019-01-21 16:12:15.950192+00	116	116diegodelgadillolo	1	new through import_export	11	1
1452	2019-01-21 16:12:15.951413+00	117	117emilianoparedessa	1	new through import_export	11	1
1453	2019-01-21 16:12:15.952555+00	118	118santiagoramosespi	1	new through import_export	11	1
1454	2019-01-21 16:12:15.953728+00	119	119benjaminramosespi	1	new through import_export	11	1
1455	2019-01-21 16:12:15.954924+00	120	120santiagoglatzguti	1	new through import_export	11	1
2656	2019-01-22 21:11:52.999917+00	1291	sampu91	1	new through import_export	6	1
1456	2019-01-21 16:12:15.956196+00	121	121pabloglatzgutierr	1	new through import_export	11	1
1457	2019-01-21 16:12:15.957508+00	122	122juancarlosulasiad	1	new through import_export	11	1
1458	2019-01-21 16:12:15.958777+00	123	123anderrobleslarruc	1	new through import_export	11	1
1459	2019-01-21 16:12:15.960092+00	124	124diegoalvarez	1	new through import_export	11	1
1460	2019-01-21 16:12:15.961261+00	125	125mickelmanzo	1	new through import_export	11	1
1461	2019-01-21 16:12:15.962461+00	126	126alonsorosales	1	new through import_export	11	1
1462	2019-01-21 16:12:15.96374+00	127	127alonsolatorrerojo	1	new through import_export	11	1
1463	2019-01-21 16:12:15.964961+00	128	128emilioruizmackenz	1	new through import_export	11	1
1464	2019-01-21 16:12:15.966272+00	129	129santiagoospinagon	1	new through import_export	11	1
1465	2019-01-21 16:12:15.967426+00	130	130rafaelemilianonav	1	new through import_export	11	1
1466	2019-01-21 16:12:15.968618+00	131	131joellopezjimenez	1	new through import_export	11	1
1467	2019-01-21 16:12:15.970207+00	132	132rubenjesuslaracor	1	new through import_export	11	1
1468	2019-01-21 16:12:15.97144+00	133	133josearturogutierr	1	new through import_export	11	1
1469	2019-01-21 16:12:15.972973+00	134	134emilianomartinezr	1	new through import_export	11	1
1470	2019-01-21 16:12:15.974337+00	135	135jorgeignaciocasti	1	new through import_export	11	1
1471	2019-01-21 16:12:15.975966+00	136	136santiagorojaszapa	1	new through import_export	11	1
1472	2019-01-21 16:12:15.977228+00	137	137sebastianpaaschca	1	new through import_export	11	1
1473	2019-01-21 16:12:15.97841+00	138	138ricardozorreroarg	1	new through import_export	11	1
1474	2019-01-21 16:12:15.979784+00	139	139diegodelaveganuñe	1	new through import_export	11	1
1475	2019-01-21 16:12:15.980952+00	140	140jorgefreyremendoz	1	new through import_export	11	1
1476	2019-01-21 16:12:15.982172+00	141	141josemanuelvenegas	1	new through import_export	11	1
1477	2019-01-21 16:12:15.984737+00	142	142gustavoalfonsocas	1	new through import_export	11	1
1478	2019-01-21 16:12:15.985963+00	143	143maximilianocervan	1	new through import_export	11	1
1479	2019-01-21 16:12:15.987168+00	144	144hectorjaspeadobec	1	new through import_export	11	1
1480	2019-01-21 16:12:15.988361+00	145	145sebastiancontroho	1	new through import_export	11	1
1481	2019-01-21 16:12:15.989446+00	146	146santiagogomezdelv	1	new through import_export	11	1
1482	2019-01-21 16:12:15.990544+00	147	147sebastianzapatalo	1	new through import_export	11	1
1483	2019-01-21 16:12:15.991687+00	148	148emilianosanchezma	1	new through import_export	11	1
1484	2019-01-21 16:12:15.992993+00	149	149adrespesqueiravog	1	new through import_export	11	1
1485	2019-01-21 16:12:15.994214+00	150	150mauriciohuertatov	1	new through import_export	11	1
1486	2019-01-21 16:12:15.995372+00	151	151alejandrobarragan	1	new through import_export	11	1
1487	2019-01-21 16:12:15.9965+00	152	152mateosanchezcisne	1	new through import_export	11	1
1488	2019-01-21 16:12:15.997846+00	153	153santiagosanchezci	1	new through import_export	11	1
1489	2019-01-21 16:12:16.000189+00	154	154andresurrutiasegu	1	new through import_export	11	1
1490	2019-01-21 16:12:16.001424+00	155	155inescorresruiz	1	new through import_export	11	1
1491	2019-01-21 16:12:16.002817+00	156	156matiasalvaradojua	1	new through import_export	11	1
1492	2019-01-21 16:12:16.004128+00	157	157emiliolaracortesl	1	new through import_export	11	1
1493	2019-01-21 16:12:16.005377+00	158	158alejandrolinarest	1	new through import_export	11	1
1494	2019-01-21 16:12:16.006635+00	159	159emilioeugeniomart	1	new through import_export	11	1
1495	2019-01-21 16:12:16.007739+00	160	160pabloquinterovill	1	new through import_export	11	1
1496	2019-01-21 16:12:16.008954+00	161	161carloshumbertooro	1	new through import_export	11	1
1497	2019-01-21 16:12:16.010048+00	162	162mariaestherespino	1	new through import_export	11	1
1498	2019-01-21 16:12:16.011196+00	163	163alejandrotreviñop	1	new through import_export	11	1
1499	2019-01-21 16:12:16.012279+00	164	164andremartinez(pru	1	new through import_export	11	1
1500	2019-01-21 16:12:16.013343+00	165	165danielcortezranir	1	new through import_export	11	1
1501	2019-01-21 16:12:16.014457+00	166	166dantecortezramire	1	new through import_export	11	1
1502	2019-01-21 16:12:16.015629+00	167	167diegodelarivaunza	1	new through import_export	11	1
1503	2019-01-21 16:12:16.016818+00	168	168erikdöringgutierr	1	new through import_export	11	1
1504	2019-01-21 16:12:16.018029+00	169	169juliangraueharo	1	new through import_export	11	1
1505	2019-01-21 16:12:16.019672+00	170	170gilbertomoedanoar	1	new through import_export	11	1
1506	2019-01-21 16:12:16.02248+00	171	171gaelgerardoreyesm	1	new through import_export	11	1
1507	2019-01-21 16:12:16.023862+00	172	172paoloramirezvazqu	1	new through import_export	11	1
1508	2019-01-21 16:12:16.025135+00	173	173juliopabloascorve	1	new through import_export	11	1
1509	2019-01-21 16:12:16.026301+00	174	174andrescardenascru	1	new through import_export	11	1
1510	2019-01-21 16:12:16.027407+00	175	175salomonairaje	1	new through import_export	11	1
1511	2019-01-21 16:12:16.028656+00	176	176luccianobarocioar	1	new through import_export	11	1
1512	2019-01-21 16:12:16.029816+00	177	177diegovaldezlopez	1	new through import_export	11	1
1513	2019-01-21 16:12:16.030933+00	178	178santiagodiazdeleo	1	new through import_export	11	1
1514	2019-01-21 16:12:16.032073+00	179	179rodrigomejiaalvar	1	new through import_export	11	1
1515	2019-01-21 16:12:16.033184+00	180	180manuelvalero	1	new through import_export	11	1
1516	2019-01-21 16:12:16.034354+00	181	181andresmiguelherna	1	new through import_export	11	1
1517	2019-01-21 16:12:16.035485+00	182	182danielkiewekgarci	1	new through import_export	11	1
1518	2019-01-21 16:12:16.036596+00	183	183danielhaziel	1	new through import_export	11	1
1519	2019-01-21 16:12:16.037721+00	184	184alonsomartinez	1	new through import_export	11	1
1520	2019-01-21 16:12:16.038827+00	185	185vinicioaguirretor	1	new through import_export	11	1
1521	2019-01-21 16:12:16.040069+00	186	186santiagoleyvagarc	1	new through import_export	11	1
1522	2019-01-21 16:12:16.041141+00	187	187danielmoradorebol	1	new through import_export	11	1
1523	2019-01-21 16:12:16.042379+00	188	188nicolascarrionlop	1	new through import_export	11	1
1524	2019-01-21 16:12:16.043529+00	189	189jorgeolinvelasco	1	new through import_export	11	1
1525	2019-01-21 16:12:16.044689+00	190	190valeriaalizeezamo	1	new through import_export	11	1
1526	2019-01-21 16:12:16.045896+00	191	191renatanavarrovill	1	new through import_export	11	1
1527	2019-01-21 16:12:16.047235+00	192	192salvadorjanmartit	1	new through import_export	11	1
1528	2019-01-21 16:12:16.048421+00	193	193iandiegomejiaorti	1	new through import_export	11	1
1529	2019-01-21 16:12:16.049538+00	194	194rosendojimenezser	1	new through import_export	11	1
1530	2019-01-21 16:12:16.050689+00	195	195cosmoblancoguerre	1	new through import_export	11	1
2657	2019-01-22 21:11:53.001222+00	1292	ccama92	1	new through import_export	6	1
1531	2019-01-21 16:12:16.051865+00	196	196joshuadanielbecer	1	new through import_export	11	1
1532	2019-01-21 16:12:16.053108+00	197	197patriciopichardol	1	new through import_export	11	1
1533	2019-01-21 16:12:16.054211+00	198	198carlosdiazdeleona	1	new through import_export	11	1
1534	2019-01-21 16:12:16.055306+00	199	199salvadorpeñamonca	1	new through import_export	11	1
1535	2019-01-21 16:12:16.05636+00	200	200ianlucamaraschein	1	new through import_export	11	1
1536	2019-01-21 16:12:16.057419+00	201	201alejandrorodrigue	1	new through import_export	11	1
1537	2019-01-21 16:12:16.058626+00	202	202juanpablorodrigue	1	new through import_export	11	1
1538	2019-01-21 16:12:16.059811+00	203	203brunovazqueztapia	1	new through import_export	11	1
1539	2019-01-21 16:12:16.060936+00	204	204miguelangelgarcia	1	new through import_export	11	1
1540	2019-01-21 16:12:16.062049+00	205	205fernandoalcantaro	1	new through import_export	11	1
1541	2019-01-21 16:12:16.063157+00	206	206carlossebastianru	1	new through import_export	11	1
1542	2019-01-21 16:12:16.064191+00	207	207emiliocarlosalman	1	new through import_export	11	1
1543	2019-01-21 16:12:16.065259+00	208	208poltreserrasbogot	1	new through import_export	11	1
1544	2019-01-21 16:12:16.066288+00	209	209santiagocalvasanc	1	new through import_export	11	1
1545	2019-01-21 16:12:16.067354+00	210	210ulisesmauricioper	1	new through import_export	11	1
1546	2019-01-21 16:12:16.068429+00	211	211javierhernandez	1	new through import_export	11	1
1547	2019-01-21 16:12:16.069486+00	212	212emilianoxavieravi	1	new through import_export	11	1
1548	2019-01-21 16:12:16.070574+00	213	213javiervalero	1	new through import_export	11	1
1549	2019-01-21 16:12:16.071741+00	214	214luisenriquegrcia	1	new through import_export	11	1
1550	2019-01-21 16:12:16.072792+00	215	215mateomiguelorozco	1	new through import_export	11	1
1551	2019-01-21 16:12:16.073868+00	216	216alexgandaracastil	1	new through import_export	11	1
1552	2019-01-21 16:12:16.075344+00	217	217diegoadrianzamora	1	new through import_export	11	1
1553	2019-01-21 16:12:16.076499+00	218	218nicolascallejasqu	1	new through import_export	11	1
1554	2019-01-21 16:12:16.07756+00	219	219emiliaisabelvazqu	1	new through import_export	11	1
1555	2019-01-21 16:12:16.078797+00	220	220emilianofuentesca	1	new through import_export	11	1
1556	2019-01-21 16:12:16.080075+00	221	221matiasgarcia	1	new through import_export	11	1
1557	2019-01-21 16:12:16.081209+00	222	222matiasaragonmora	1	new through import_export	11	1
1558	2019-01-21 16:12:16.082403+00	223	223josemarianovazque	1	new through import_export	11	1
1559	2019-01-21 16:12:16.083549+00	224	224teodeleonsuarez	1	new through import_export	11	1
1560	2019-01-21 16:12:16.084702+00	225	225maximilianosiebee	1	new through import_export	11	1
1561	2019-01-21 16:12:16.085871+00	226	226patriciobañosgarc	1	new through import_export	11	1
1562	2019-01-21 16:12:16.087044+00	227	227rubennavarrovilla	1	new through import_export	11	1
1563	2019-01-21 16:12:16.088147+00	228	228rafaellopezalvare	1	new through import_export	11	1
1564	2019-01-21 16:12:16.089238+00	229	229juanguillermojuar	1	new through import_export	11	1
1565	2019-01-21 16:12:16.090296+00	230	230iñigoruizamezcua	1	new through import_export	11	1
1566	2019-01-21 16:12:16.091532+00	231	231santiagoalonsoang	1	new through import_export	11	1
1567	2019-01-21 16:12:16.092688+00	232	232josebojorgemoscon	1	new through import_export	11	1
1568	2019-01-21 16:12:16.093802+00	233	233andresdelvalleg.	1	new through import_export	11	1
1569	2019-01-21 16:12:16.094946+00	234	234cristobalperezcor	1	new through import_export	11	1
1570	2019-01-21 16:12:16.096199+00	235	235leongrediagaramir	1	new through import_export	11	1
1571	2019-01-21 16:12:16.09732+00	236	236luisandresrojasur	1	new through import_export	11	1
1572	2019-01-21 16:12:16.098479+00	237	237camilacallejosqui	1	new through import_export	11	1
1573	2019-01-21 16:12:16.099599+00	238	238valentinoreytrejo	1	new through import_export	11	1
1574	2019-01-21 16:12:16.100676+00	239	239ikersaucedaalvare	1	new through import_export	11	1
1575	2019-01-21 16:12:16.101729+00	240	240mariarominadelgad	1	new through import_export	11	1
1576	2019-01-21 16:12:16.102823+00	241	241davidmaximilianol	1	new through import_export	11	1
1577	2019-01-21 16:12:16.103931+00	242	242mateolopezvergara	1	new through import_export	11	1
1578	2019-01-21 16:12:16.105016+00	243	243patriciotorresgar	1	new through import_export	11	1
1579	2019-01-21 16:12:16.106188+00	244	244lorenzotorresgarc	1	new through import_export	11	1
1580	2019-01-21 16:12:16.107358+00	245	245eliasvital	1	new through import_export	11	1
1581	2019-01-21 16:12:16.10847+00	246	246lorenzobenitez	1	new through import_export	11	1
1582	2019-01-21 16:12:16.109538+00	247	247danielfunkeruiz	1	new through import_export	11	1
1583	2019-01-21 16:12:16.110606+00	248	248lucasescalante	1	new through import_export	11	1
1584	2019-01-21 16:12:16.111763+00	249	249alonsorodriguezor	1	new through import_export	11	1
1585	2019-01-21 16:12:16.113498+00	250	250diegoriveroborrel	1	new through import_export	11	1
1586	2019-01-21 16:12:16.114786+00	251	251mirandaguerreroma	1	new through import_export	11	1
1587	2019-01-21 16:12:16.115906+00	252	252samuelmejiarojas	1	new through import_export	11	1
1588	2019-01-21 16:12:16.117167+00	253	253sebastianlizamama	1	new through import_export	11	1
1589	2019-01-21 16:12:16.118386+00	254	254mateoislasreyes	1	new through import_export	11	1
1590	2019-01-21 16:12:16.119654+00	255	255alejandrogalvanmi	1	new through import_export	11	1
1591	2019-01-21 16:12:16.120817+00	256	256gerardofernandezg	1	new through import_export	11	1
1592	2019-01-21 16:12:16.121984+00	257	257emilianozaraterey	1	new through import_export	11	1
1593	2019-01-21 16:12:16.123128+00	258	258josemariadottivel	1	new through import_export	11	1
1594	2019-01-21 16:12:16.124267+00	259	259matiasboyherreria	1	new through import_export	11	1
1595	2019-01-21 16:12:16.12544+00	260	260juanpablobenitola	1	new through import_export	11	1
1596	2019-01-21 16:12:16.1266+00	261	261iñakiavilamoran	1	new through import_export	11	1
1597	2019-01-21 16:12:16.127878+00	262	262lotte volpert	1	new through import_export	11	1
1598	2019-01-21 16:12:16.129066+00	263	263katrynjohannatimm	1	new through import_export	11	1
1599	2019-01-21 16:12:16.130256+00	264	264valerie posch	1	new through import_export	11	1
1600	2019-01-21 16:12:16.131489+00	265	265lucianamaiteimaña	1	new through import_export	11	1
1601	2019-01-21 16:12:16.132601+00	266	266michellehadadgonz	1	new through import_export	11	1
1602	2019-01-21 16:12:16.133755+00	267	267lea diepeenbrock	1	new through import_export	11	1
1603	2019-01-21 16:12:16.13486+00	268	268alejandracantuvil	1	new through import_export	11	1
1604	2019-01-21 16:12:16.136035+00	269	269danielabonequivel	1	new through import_export	11	1
1605	2019-01-21 16:12:16.137068+00	270	270nadinetablerosana	1	new through import_export	11	1
1606	2019-01-21 16:12:16.138626+00	271	271andrearomancrabtr	1	new through import_export	11	1
1607	2019-01-21 16:12:16.139821+00	272	272mariafernandareye	1	new through import_export	11	1
1608	2019-01-21 16:12:16.140961+00	273	273julianoriegatrevi	1	new through import_export	11	1
1609	2019-01-21 16:12:16.142087+00	274	274julianahuertaszam	1	new through import_export	11	1
1610	2019-01-21 16:12:16.143159+00	275	275isabellahernandez	1	new through import_export	11	1
1611	2019-01-21 16:12:16.14422+00	276	276victoriaflorestol	1	new through import_export	11	1
1612	2019-01-21 16:12:16.145273+00	277	277sofiaespinosarosa	1	new through import_export	11	1
1613	2019-01-21 16:12:16.146347+00	278	278emiliadiazbarriga	1	new through import_export	11	1
1614	2019-01-21 16:12:16.147473+00	279	279marianabonequivel	1	new through import_export	11	1
1615	2019-01-21 16:12:16.148642+00	280	280isabelabauersanch	1	new through import_export	11	1
1616	2019-01-21 16:12:16.149832+00	281	281luciabargalloknod	1	new through import_export	11	1
1617	2019-01-21 16:12:16.150936+00	282	282elisabargalloknod	1	new through import_export	11	1
1618	2019-01-21 16:12:16.15199+00	283	283rominaalexandraba	1	new through import_export	11	1
1619	2019-01-21 16:12:16.153195+00	284	284katrynjohannatimm	1	new through import_export	11	1
1620	2019-01-21 16:12:16.154412+00	285	285nadinetablerosana	1	new through import_export	11	1
1621	2019-01-21 16:12:16.155514+00	286	286federicoscullzing	1	new through import_export	11	1
1622	2019-01-21 16:12:16.156673+00	287	287alonsorodriguezor	1	new through import_export	11	1
1623	2019-01-21 16:12:16.157918+00	288	288nicolasnavratiles	1	new through import_export	11	1
1624	2019-01-21 16:12:16.15909+00	289	289emiliomorgenstern	1	new through import_export	11	1
1625	2019-01-21 16:12:16.160245+00	290	290axelhintzesaucedo	1	new through import_export	11	1
1626	2019-01-21 16:12:16.16147+00	291	291paolocusimaldonad	1	new through import_export	11	1
1627	2019-01-21 16:12:16.162644+00	292	292rominaalexandraba	1	new through import_export	11	1
1628	2019-01-21 16:12:16.163826+00	293	293jaimediego tellez	1	new through import_export	11	1
1629	2019-01-21 16:12:16.165+00	294	294sebastian sommerp	1	new through import_export	11	1
1630	2019-01-21 16:12:16.166268+00	295	295matias sommerpera	1	new through import_export	11	1
1631	2019-01-21 16:12:16.16765+00	296	296danieleliassibaja	1	new through import_export	11	1
1632	2019-01-21 16:12:16.168846+00	297	297patrickseguraesco	1	new through import_export	11	1
1633	2019-01-21 16:12:16.170128+00	298	298petermichael ritt	1	new through import_export	11	1
1634	2019-01-21 16:12:16.171318+00	299	299maximilian perman	1	new through import_export	11	1
1635	2019-01-21 16:12:16.172462+00	300	300felixalexander pe	1	new through import_export	11	1
1636	2019-01-21 16:12:16.173573+00	301	301luisgperezmartine	1	new through import_export	11	1
1637	2019-01-21 16:12:16.174859+00	302	302martin  pamoulis	1	new through import_export	11	1
1638	2019-01-21 16:12:16.176014+00	303	303gustavo pachecoor	1	new through import_export	11	1
1639	2019-01-21 16:12:16.177119+00	304	304patrickmaxottmull	1	new through import_export	11	1
1640	2019-01-21 16:12:16.178279+00	305	305humberto mijarest	1	new through import_export	11	1
1641	2019-01-21 16:12:16.179372+00	306	306silvamauricio mar	1	new through import_export	11	1
1642	2019-01-21 16:12:16.180437+00	307	307nicolas lacknerbr	1	new through import_export	11	1
1643	2019-01-21 16:12:16.181785+00	308	308santiago hernande	1	new through import_export	11	1
1644	2019-01-21 16:12:16.182972+00	309	309pablo hernandezro	1	new through import_export	11	1
1645	2019-01-21 16:12:16.184178+00	310	310johannesh.hauserf	1	new through import_export	11	1
1646	2019-01-21 16:12:16.185354+00	311	311sebastian gunther	1	new through import_export	11	1
1647	2019-01-21 16:12:16.186572+00	312	312axel gieseckevald	1	new through import_export	11	1
1648	2019-01-21 16:12:16.187734+00	313	313santiango garcia 	1	new through import_export	11	1
1649	2019-01-21 16:12:16.189081+00	314	314patricio garciamo	1	new through import_export	11	1
1650	2019-01-21 16:12:16.19052+00	315	315josemaria fuentes	1	new through import_export	11	1
1651	2019-01-21 16:12:16.191821+00	316	316alexandereichervi	1	new through import_export	11	1
1652	2019-01-21 16:12:16.192961+00	317	317diegoa.estefanbiu	1	new through import_export	11	1
1653	2019-01-21 16:12:16.194135+00	318	318daniel dehoyosort	1	new through import_export	11	1
1654	2019-01-21 16:12:16.195291+00	319	319santiago collante	1	new through import_export	11	1
1655	2019-01-21 16:12:16.1964+00	320	320diegocollantestam	1	new through import_export	11	1
1656	2019-01-21 16:12:16.197524+00	321	321mauricio brocados	1	new through import_export	11	1
1657	2019-01-21 16:12:16.198676+00	322	322patricio bosquero	1	new through import_export	11	1
1658	2019-01-21 16:12:16.19977+00	323	323mariano  biehler	1	new through import_export	11	1
1659	2019-01-21 16:12:16.200981+00	324	324alberto arienzoac	1	new through import_export	11	1
1660	2019-01-21 16:12:16.2021+00	325	325michelle zimmerga	1	new through import_export	11	1
1661	2019-01-21 16:12:16.203148+00	326	326sebastian woodsan	1	new through import_export	11	1
1662	2019-01-21 16:12:16.204148+00	327	327andresfelipe rest	1	new through import_export	11	1
1663	2019-01-21 16:12:16.205169+00	328	328yakimpresarueda	1	new through import_export	11	1
1664	2019-01-21 16:12:16.206278+00	329	329arturo martinesla	1	new through import_export	11	1
1665	2019-01-21 16:12:16.207755+00	330	330nicolas lizamamag	1	new through import_export	11	1
1666	2019-01-21 16:12:16.208972+00	331	331santiago lazaropo	1	new through import_export	11	1
1667	2019-01-21 16:12:16.210181+00	332	332nicolas lazaropol	1	new through import_export	11	1
1668	2019-01-21 16:12:16.211323+00	333	333frederickgutcorde	1	new through import_export	11	1
1669	2019-01-21 16:12:16.212916+00	334	334bennetfischernico	1	new through import_export	11	1
1670	2019-01-21 16:12:16.216678+00	335	335jeronimo diazbarr	1	new through import_export	11	1
1671	2019-01-21 16:12:16.217938+00	336	336joseluis castrofe	1	new through import_export	11	1
1672	2019-01-21 16:12:16.219131+00	337	337stephan beihofers	1	new through import_export	11	1
1673	2019-01-21 16:12:16.220296+00	338	338juanpablo alvarez	1	new through import_export	11	1
1674	2019-01-21 16:12:16.221412+00	339	339francisco ablaned	1	new through import_export	11	1
1675	2019-01-21 16:12:16.222492+00	340	340patricio vegagome	1	new through import_export	11	1
1676	2019-01-21 16:12:16.22375+00	341	341david tolksdorffa	1	new through import_export	11	1
1677	2019-01-21 16:12:16.224909+00	342	342juanseguraescobar	1	new through import_export	11	1
1678	2019-01-21 16:12:16.226018+00	343	343guillermo reyessc	1	new through import_export	11	1
1679	2019-01-21 16:12:16.227106+00	344	344mateo renteriague	1	new through import_export	11	1
1680	2019-01-21 16:12:16.22823+00	345	345adriano pachecoor	1	new through import_export	11	1
1681	2019-01-21 16:12:16.229483+00	346	346steffenguillenper	1	new through import_export	11	1
1682	2019-01-21 16:12:16.230721+00	347	347alonso gonzalezme	1	new through import_export	11	1
1683	2019-01-21 16:12:16.231885+00	348	348haraldfeldhausthi	1	new through import_export	11	1
1684	2019-01-21 16:12:16.233525+00	349	349emilianocortinasa	1	new through import_export	11	1
1685	2019-01-21 16:12:16.234795+00	350	350andrevaronstorsbe	1	new through import_export	11	1
1686	2019-01-21 16:12:16.235995+00	351	351santiagoromancrab	1	new through import_export	11	1
1687	2019-01-21 16:12:16.23713+00	352	352emiliomorgenstern	1	new through import_export	11	1
1688	2019-01-21 16:12:16.238329+00	353	353jeronimomejiaroja	1	new through import_export	11	1
1689	2019-01-21 16:12:16.239459+00	354	354maximilianomartin	1	new through import_export	11	1
1690	2019-01-21 16:12:16.240811+00	355	355leonardodominguez	1	new through import_export	11	1
1691	2019-01-21 16:12:16.242049+00	356	356alandiazmueller	1	new through import_export	11	1
1692	2019-01-21 16:12:16.243253+00	357	357robertodavisdelac	1	new through import_export	11	1
1693	2019-01-21 16:12:16.244325+00	358	358patriciocorzogarc	1	new through import_export	11	1
1694	2019-01-21 16:12:16.2454+00	359	359arturoavilamoran	1	new through import_export	11	1
1695	2019-01-21 16:12:16.246492+00	360	360rodrigozepedaclua	1	new through import_export	11	1
1696	2019-01-21 16:12:16.248094+00	361	361jeronimovelazquez	1	new through import_export	11	1
1697	2019-01-21 16:12:16.2493+00	362	362julenpimenteldeiz	1	new through import_export	11	1
1698	2019-01-21 16:12:16.250562+00	363	363jeronimomejiaroja	1	new through import_export	11	1
1699	2019-01-21 16:12:16.251748+00	364	364axelhintzesaucedo	1	new through import_export	11	1
1700	2019-01-21 16:12:16.252878+00	365	365olafhentschelrans	1	new through import_export	11	1
1701	2019-01-21 16:12:16.254075+00	366	366albertalexanderhe	1	new through import_export	11	1
1702	2019-01-21 16:12:16.255297+00	367	367nicolasfriedrichg	1	new through import_export	11	1
1703	2019-01-21 16:12:16.256609+00	368	368franciscocastroco	1	new through import_export	11	1
1704	2019-01-21 16:12:16.257848+00	369	369pablocarazamolina	1	new through import_export	11	1
1705	2019-01-21 16:12:16.259066+00	370	370arturoavilamoran	1	new through import_export	11	1
1706	2019-01-21 16:12:16.260217+00	371	371hugoemiliovegagom	1	new through import_export	11	1
1707	2019-01-21 16:12:16.261341+00	372	372joserenescullzing	1	new through import_export	11	1
1708	2019-01-21 16:12:16.264076+00	373	373mateoriveroborrel	1	new through import_export	11	1
1709	2019-01-21 16:12:16.265266+00	374	374teodorohernandezh	1	new through import_export	11	1
1710	2019-01-21 16:12:16.266474+00	375	375mateoguajardorebo	1	new through import_export	11	1
1711	2019-01-21 16:12:16.267606+00	376	376maximograndecarde	1	new through import_export	11	1
1712	2019-01-21 16:12:16.268687+00	377	377lukafeldhausfaria	1	new through import_export	11	1
1713	2019-01-21 16:12:16.269742+00	378	378paolocusimaldonad	1	new through import_export	11	1
1714	2019-01-21 16:12:16.270896+00	379	379julianemilianocos	1	new through import_export	11	1
1715	2019-01-21 16:12:16.272014+00	380	380matteocorreiamore	1	new through import_export	11	1
1716	2019-01-21 16:12:16.273168+00	381	381janlorenzbrandtba	1	new through import_export	11	1
1717	2019-01-21 16:12:16.276009+00	382	382ricardosepulvedag	1	new through import_export	11	1
1718	2019-01-21 16:12:16.277166+00	383	383yunlongschwabmori	1	new through import_export	11	1
1719	2019-01-21 16:12:16.278331+00	384	384juancarlosrodrigu	1	new through import_export	11	1
1720	2019-01-21 16:12:16.279413+00	385	385ricardoortegabeni	1	new through import_export	11	1
1721	2019-01-21 16:12:16.28067+00	386	386francomarinmezabu	1	new through import_export	11	1
1722	2019-01-21 16:12:16.281851+00	387	387gustavolozanohent	1	new through import_export	11	1
1723	2019-01-21 16:12:16.283188+00	388	388emilioiglesiassch	1	new through import_export	11	1
1724	2019-01-21 16:12:16.2844+00	389	389jorgegallegosopit	1	new through import_export	11	1
1725	2019-01-21 16:12:16.285657+00	390	390phillip diepenbro	1	new through import_export	11	1
1726	2019-01-21 16:12:16.286792+00	391	391jeandiazmueller	1	new through import_export	11	1
1727	2019-01-21 16:12:16.289359+00	392	392mateoacuñagimeno	1	new through import_export	11	1
1728	2019-01-21 16:12:16.290597+00	393	393lucasvilalondoño	1	new through import_export	11	1
1729	2019-01-21 16:12:16.291816+00	394	394federicoscullzing	1	new through import_export	11	1
1730	2019-01-21 16:12:16.292968+00	395	395jeronimopalmalope	1	new through import_export	11	1
1731	2019-01-21 16:12:16.294212+00	396	396nicolasnavratiles	1	new through import_export	11	1
1732	2019-01-21 16:12:16.295409+00	397	397diegoulisesmadrig	1	new through import_export	11	1
1733	2019-01-21 16:12:16.296567+00	398	398kamilooniaskrusea	1	new through import_export	11	1
1734	2019-01-21 16:12:16.298132+00	399	399matthiaskoechlins	1	new through import_export	11	1
1735	2019-01-21 16:12:16.299494+00	400	400oliverhernandezhi	1	new through import_export	11	1
1736	2019-01-21 16:12:16.300636+00	401	401juanpablofloresbr	1	new through import_export	11	1
1737	2019-01-21 16:12:16.301764+00	402	402eliasfischermendo	1	new through import_export	11	1
1738	2019-01-21 16:12:16.302882+00	403	403brunofischermendo	1	new through import_export	11	1
1739	2019-01-21 16:12:16.304477+00	404	404iñigohumbertoegid	1	new through import_export	11	1
1740	2019-01-21 16:12:16.305611+00	405	405sebastianacevedov	1	new through import_export	11	1
1741	2019-01-21 16:12:16.306786+00	406	406escobarleonardoru	1	new through import_export	11	1
1742	2019-01-21 16:12:16.307872+00	407	407rodrigoromerogome	1	new through import_export	11	1
1743	2019-01-21 16:12:16.308987+00	408	408miguelromerogomez	1	new through import_export	11	1
1744	2019-01-21 16:12:16.310062+00	409	409valentinorobledo	1	new through import_export	11	1
1745	2019-01-21 16:12:16.311385+00	410	410bastianrichterbio	1	new through import_export	11	1
1746	2019-01-21 16:12:16.31252+00	411	411arturopueblitacas	1	new through import_export	11	1
1747	2019-01-21 16:12:16.313591+00	412	412thomasharingdeyta	1	new through import_export	11	1
1748	2019-01-21 16:12:16.314736+00	413	413patriciogomezport	1	new through import_export	11	1
1749	2019-01-21 16:12:16.315813+00	414	414jeronimogallegoso	1	new through import_export	11	1
1750	2019-01-21 16:12:16.3169+00	415	415jorgetomasbraniff	1	new through import_export	11	1
1751	2019-01-21 16:12:16.318007+00	416	416gonzalomagonville	1	new through import_export	11	1
1752	2019-01-21 16:12:16.319082+00	417	417iñakivargasgarcia	1	new through import_export	11	1
1753	2019-01-21 16:12:16.320208+00	418	418antoniosalazarrey	1	new through import_export	11	1
1754	2019-01-21 16:12:16.322116+00	419	419patrick morethsan	1	new through import_export	11	1
1755	2019-01-21 16:12:16.323376+00	420	420marianomaldonadom	1	new through import_export	11	1
1756	2019-01-21 16:12:16.324538+00	421	421gerardoherreramor	1	new through import_export	11	1
1757	2019-01-21 16:12:16.325795+00	422	422andregonzalezdiaz	1	new through import_export	11	1
1758	2019-01-21 16:12:16.326966+00	423	423luccouttolencpeye	1	new through import_export	11	1
1759	2019-01-21 16:12:16.329696+00	424	424marioemiliochavez	1	new through import_export	11	1
1760	2019-01-21 16:12:16.330952+00	425	425nicolascarrerasot	1	new through import_export	11	1
1761	2019-01-21 16:12:16.332144+00	426	426viccoandreacardin	1	new through import_export	11	1
1762	2019-01-21 16:12:16.333287+00	427	427juliancalzadaspat	1	new through import_export	11	1
1763	2019-01-21 16:12:16.33458+00	428	428marcoantonioarand	1	new through import_export	11	1
1764	2019-01-21 16:12:16.335901+00	429	429carlotiburciorami	1	new through import_export	11	1
1765	2019-01-21 16:12:16.337222+00	430	430danielsotocardena	1	new through import_export	11	1
1766	2019-01-21 16:12:16.338995+00	431	431iñigopizanofernan	1	new through import_export	11	1
1767	2019-01-21 16:12:16.340402+00	432	432matiaspelayosoto	1	new through import_export	11	1
1768	2019-01-21 16:12:16.341771+00	433	433christianottoniel	1	new through import_export	11	1
1769	2019-01-21 16:12:16.343083+00	434	434ricardomateosbeta	1	new through import_export	11	1
1770	2019-01-21 16:12:16.344374+00	435	435victoralonsomarti	1	new through import_export	11	1
1771	2019-01-21 16:12:16.34567+00	436	436crespoestefaniajä	1	new through import_export	11	1
1772	2019-01-21 16:12:16.346888+00	437	437salomonjahengonza	1	new through import_export	11	1
1773	2019-01-21 16:12:16.348165+00	438	438rodrigoeliasrange	1	new through import_export	11	1
1774	2019-01-21 16:12:16.349361+00	439	439jorgeivancisneros	1	new through import_export	11	1
1775	2019-01-21 16:12:16.350787+00	440	440mikelcarretecalle	1	new through import_export	11	1
1776	2019-01-21 16:12:16.352134+00	441	441diegoviniegraruiz	1	new through import_export	11	1
1777	2019-01-21 16:12:16.353312+00	442	442emilianoveraromer	1	new through import_export	11	1
1778	2019-01-21 16:12:16.354471+00	443	443matthiasalexander	1	new through import_export	11	1
1779	2019-01-21 16:12:16.355806+00	444	444alejandrostephens	1	new through import_export	11	1
1780	2019-01-21 16:12:16.356918+00	445	445patricioramirezpo	1	new through import_export	11	1
1781	2019-01-21 16:12:16.358054+00	446	446salvadormontesdeo	1	new through import_export	11	1
1782	2019-01-21 16:12:16.359154+00	447	447patriciogonsalvez	1	new through import_export	11	1
1783	2019-01-21 16:12:16.360301+00	448	448maximilianofelixa	1	new through import_export	11	1
1784	2019-01-21 16:12:16.361444+00	449	449mateodelahuertape	1	new through import_export	11	1
1785	2019-01-21 16:12:16.362643+00	450	450gaelcorderolara	1	new through import_export	11	1
1786	2019-01-21 16:12:16.363761+00	451	451sergiocamarapalan	1	new through import_export	11	1
1787	2019-01-21 16:12:16.364905+00	452	452santiagocamarapal	1	new through import_export	11	1
1788	2019-01-21 16:12:16.366156+00	453	453maximilianoayalas	1	new through import_export	11	1
1789	2019-01-21 16:12:16.367846+00	454	454dantearaizafernan	1	new through import_export	11	1
1790	2019-01-21 16:12:16.369218+00	455	455ricardoaguilarqui	1	new through import_export	11	1
1791	2019-01-21 16:12:16.370566+00	456	456santiagoveraromer	1	new through import_export	11	1
1792	2019-01-21 16:12:16.371752+00	457	457brunovazquezbecke	1	new through import_export	11	1
1793	2019-01-21 16:12:16.372993+00	458	458luiseduardotovarg	1	new through import_export	11	1
1794	2019-01-21 16:12:16.374129+00	459	459diegoemiliotoquer	1	new through import_export	11	1
1795	2019-01-21 16:12:16.375364+00	460	460xaviersantamariag	1	new through import_export	11	1
1796	2019-01-21 16:12:16.376652+00	461	461luisjoaquinnollag	1	new through import_export	11	1
1797	2019-01-21 16:12:16.378423+00	462	462lennartlipplcarde	1	new through import_export	11	1
1798	2019-01-21 16:12:16.379719+00	463	463lucakaehlercapuzz	1	new through import_export	11	1
1799	2019-01-21 16:12:16.381049+00	464	464andresjuarezpeña	1	new through import_export	11	1
1800	2019-01-21 16:12:16.382425+00	465	465sebastianthomasha	1	new through import_export	11	1
1801	2019-01-21 16:12:16.38381+00	466	466brunogöbelaranda	1	new through import_export	11	1
1802	2019-01-21 16:12:16.385462+00	467	467matiascortesfenne	1	new through import_export	11	1
1803	2019-01-21 16:12:16.386843+00	468	468andressimonbrewer	1	new through import_export	11	1
1804	2019-01-21 16:12:16.388297+00	469	469josemariaarreolar	1	new through import_export	11	1
1805	2019-01-21 16:12:16.390106+00	470	470nicolasemiliof.al	1	new through import_export	11	1
1806	2019-01-21 16:12:16.391455+00	471	471mateosotocardenas	1	new through import_export	11	1
1807	2019-01-21 16:12:16.392609+00	472	472humbertomerino 	1	new through import_export	11	1
1808	2019-01-21 16:12:16.39378+00	473	473gustavoa.omarzuñi	1	new through import_export	11	1
1809	2019-01-21 16:12:16.394971+00	474	474andrecorderolara	1	new through import_export	11	1
1810	2019-01-21 16:12:16.396139+00	475	475paolosiessmelende	1	new through import_export	11	1
1811	2019-01-21 16:12:16.397331+00	476	476camilasahiaorozco	1	new through import_export	11	1
1812	2019-01-21 16:12:16.398579+00	477	477gabrielherreraygo	1	new through import_export	11	1
1813	2019-01-21 16:12:16.399955+00	478	478danielhampsonmedi	1	new through import_export	11	1
1814	2019-01-21 16:12:16.401175+00	479	479leahscarlettespin	1	new through import_export	11	1
1815	2019-01-21 16:12:16.402435+00	480	480pabloespinosagarc	1	new through import_export	11	1
1816	2019-01-21 16:12:16.403682+00	481	481diegoespinosagarc	1	new through import_export	11	1
1817	2019-01-21 16:12:16.40489+00	482	482francocastelazoro	1	new through import_export	11	1
1818	2019-01-21 16:12:16.405993+00	483	483martincamposcasil	1	new through import_export	11	1
1819	2019-01-21 16:12:16.407195+00	484	484matiascamberosrob	1	new through import_export	11	1
1820	2019-01-21 16:12:16.408432+00	485	485ferranbarjaucorde	1	new through import_export	11	1
1821	2019-01-21 16:12:16.40958+00	486	486lucasbalandranoto	1	new through import_export	11	1
1822	2019-01-21 16:12:16.410913+00	487	487diegomaximilianst	1	new through import_export	11	1
1823	2019-01-21 16:12:16.412181+00	488	488rafael sandovalpo	1	new through import_export	11	1
1824	2019-01-21 16:12:16.413674+00	489	489sebastianromerode	1	new through import_export	11	1
1825	2019-01-21 16:12:16.414802+00	490	490annaximenareynaib	1	new through import_export	11	1
1826	2019-01-21 16:12:16.415937+00	491	491kalebeduardopined	1	new through import_export	11	1
1827	2019-01-21 16:12:16.417001+00	492	492antoniolopezguerr	1	new through import_export	11	1
1828	2019-01-21 16:12:16.418063+00	493	493santiagogarduñogo	1	new through import_export	11	1
1829	2019-01-21 16:12:16.419142+00	494	494paulafriasestrell	1	new through import_export	11	1
1830	2019-01-21 16:12:16.420159+00	495	495santiagoescobedor	1	new through import_export	11	1
1831	2019-01-21 16:12:16.421271+00	496	496rodrigodiazneri	1	new through import_export	11	1
1832	2019-01-21 16:12:16.422408+00	497	497natansantiagodelg	1	new through import_export	11	1
1833	2019-01-21 16:12:16.423488+00	498	498diegozaldivarbust	1	new through import_export	11	1
1834	2019-01-21 16:12:16.424534+00	499	499santiagotapiadela	1	new through import_export	11	1
1835	2019-01-21 16:12:16.425653+00	500	500andrepalmacarreto	1	new through import_export	11	1
1836	2019-01-21 16:12:16.426898+00	501	501maximilianmaldona	1	new through import_export	11	1
1837	2019-01-21 16:12:16.428086+00	502	502matiasgutierrezru	1	new through import_export	11	1
1838	2019-01-21 16:12:16.429201+00	503	503sergioikergonzale	1	new through import_export	11	1
1839	2019-01-21 16:12:16.430315+00	504	504ignacioenriquebre	1	new through import_export	11	1
1840	2019-01-21 16:12:16.431439+00	505	505ashleypriscillava	1	new through import_export	11	1
1841	2019-01-21 16:12:16.432524+00	506	506andrevillalopez	1	new through import_export	11	1
1842	2019-01-21 16:12:16.43355+00	507	507nielsvanvlietferr	1	new through import_export	11	1
1843	2019-01-21 16:12:16.43466+00	508	508maximilanomarzuñi	1	new through import_export	11	1
1844	2019-01-21 16:12:16.436536+00	509	509hugoluislopezchap	1	new through import_export	11	1
1845	2019-01-21 16:12:16.437948+00	510	510luisannaclaudialo	1	new through import_export	11	1
1846	2019-01-21 16:12:16.439275+00	511	511nicolascortesfenn	1	new through import_export	11	1
1847	2019-01-21 16:12:16.440886+00	512	512patrickcastellano	1	new through import_export	11	1
1848	2019-01-21 16:12:16.44235+00	513	513jeronimocastelbla	1	new through import_export	11	1
1849	2019-01-21 16:12:16.443835+00	514	514maximilianocamber	1	new through import_export	11	1
1850	2019-01-21 16:12:16.445133+00	515	515davilarebecagutie	1	new through import_export	11	1
1851	2019-01-21 16:12:16.446574+00	516	516juanpabloramiroco	1	new through import_export	11	1
1852	2019-01-21 16:12:16.448002+00	517	517patriciovalladare	1	new through import_export	11	1
1853	2019-01-21 16:12:16.449902+00	518	518niklasandretellma	1	new through import_export	11	1
1854	2019-01-21 16:12:16.451409+00	519	519liambarukherreraa	1	new through import_export	11	1
1855	2019-01-21 16:12:16.452822+00	520	520khaledhassantrejo	1	new through import_export	11	1
1856	2019-01-21 16:12:16.454463+00	521	521joseluisrangelher	1	new through import_export	11	1
1857	2019-01-21 16:12:16.456235+00	522	522andreherreraygome	1	new through import_export	11	1
1858	2019-01-21 16:12:16.457861+00	523	523fernandosolizpazs	1	new through import_export	11	1
1859	2019-01-21 16:12:16.45933+00	524	524federicochaparrom	1	new through import_export	11	1
1860	2019-01-21 16:12:16.46068+00	525	525brunojimenezmuñoz	1	new through import_export	11	1
1861	2019-01-21 16:12:16.462189+00	526	526virgilioaltairvid	1	new through import_export	11	1
1862	2019-01-21 16:12:16.463955+00	527	527pablozaldivarbust	1	new through import_export	11	1
1863	2019-01-21 16:12:16.46548+00	528	528nicolasramirezled	1	new through import_export	11	1
1864	2019-01-21 16:12:16.466959+00	529	529maximoespinosawal	1	new through import_export	11	1
1865	2019-01-21 16:12:16.468366+00	530	530martinmosquerajac	1	new through import_export	11	1
1866	2019-01-21 16:12:16.469962+00	531	531juanpablodiazcruz	1	new through import_export	11	1
1867	2019-01-21 16:12:16.471507+00	532	532guillermoandressa	1	new through import_export	11	1
1868	2019-01-21 16:12:16.472939+00	533	533guillermoabaunzac	1	new through import_export	11	1
1869	2019-01-21 16:12:16.474577+00	534	534fabiangonzalezmai	1	new through import_export	11	1
1870	2019-01-21 16:12:16.476097+00	535	535emmafriasestrella	1	new through import_export	11	1
1871	2019-01-21 16:12:16.477489+00	536	536kimberlywoodwardc	1	new through import_export	11	1
1872	2019-01-21 16:12:16.47886+00	537	537sofiasañudocarril	1	new through import_export	11	1
1873	2019-01-21 16:12:16.480368+00	538	538camilamateosbetan	1	new through import_export	11	1
1874	2019-01-21 16:12:16.481863+00	539	539mariareginadiazro	1	new through import_export	11	1
1875	2019-01-21 16:12:16.483094+00	540	540andrealachicaysan	1	new through import_export	11	1
1876	2019-01-21 16:12:16.484233+00	541	541nicolejimenezfrey	1	new through import_export	11	1
1877	2019-01-21 16:12:16.485417+00	542	542sofiaiglesiaspina	1	new through import_export	11	1
1878	2019-01-21 16:12:16.48658+00	543	543nataliagamezarand	1	new through import_export	11	1
1879	2019-01-21 16:12:16.487752+00	544	544nikitafaisalrusse	1	new through import_export	11	1
1880	2019-01-21 16:12:16.488948+00	545	545valeriaisabelcesp	1	new through import_export	11	1
1881	2019-01-21 16:12:16.490018+00	546	546claudiajirehelice	1	new through import_export	11	1
1882	2019-01-21 16:12:16.491128+00	547	547danielabarragande	1	new through import_export	11	1
1883	2019-01-21 16:12:16.492287+00	548	548yoanaaboitizdelac	1	new through import_export	11	1
1884	2019-01-21 16:12:16.493475+00	549	549josevaldesvelazqu	1	new through import_export	11	1
1885	2019-01-21 16:12:16.49479+00	550	550pablosanchezalcal	1	new through import_export	11	1
1886	2019-01-21 16:12:16.495974+00	551	551sergioplatonofflo	1	new through import_export	11	1
1887	2019-01-21 16:12:16.497127+00	552	552jorgepilegorreta	1	new through import_export	11	1
1888	2019-01-21 16:12:16.498439+00	553	553claudiorodrigomen	1	new through import_export	11	1
1889	2019-01-21 16:12:16.49965+00	554	554jorgeemiliolandet	1	new through import_export	11	1
1890	2019-01-21 16:12:16.500965+00	555	555jorgeaugustolande	1	new through import_export	11	1
1891	2019-01-21 16:12:16.502414+00	556	556johannesschubert 	1	new through import_export	11	1
1892	2019-01-21 16:12:16.503933+00	557	557marian hofmann 	1	new through import_export	11	1
1893	2019-01-21 16:12:16.505393+00	558	558albertogonzalezhe	1	new through import_export	11	1
1894	2019-01-21 16:12:16.506884+00	559	559ianballaraiza	1	new through import_export	11	1
1895	2019-01-21 16:12:16.508391+00	560	560arantzavalladares	1	new through import_export	11	1
1896	2019-01-21 16:12:16.509918+00	561	561monserratvaldesix	1	new through import_export	11	1
1897	2019-01-21 16:12:16.511402+00	562	562dianapaolasotoqui	1	new through import_export	11	1
1898	2019-01-21 16:12:16.512985+00	563	563victoriaalexandra	1	new through import_export	11	1
1899	2019-01-21 16:12:16.514526+00	564	564reginaperezortega	1	new through import_export	11	1
1900	2019-01-21 16:12:16.515976+00	565	565danielamontesdeoc	1	new through import_export	11	1
1901	2019-01-21 16:12:16.517447+00	566	566maytelechugarodri	1	new through import_export	11	1
1902	2019-01-21 16:12:16.519109+00	567	567rominagonzalezmar	1	new through import_export	11	1
1903	2019-01-21 16:12:16.521387+00	568	568lysdeguadalupeger	1	new through import_export	11	1
1904	2019-01-21 16:12:16.523113+00	569	569valentinagalindoa	1	new through import_export	11	1
1905	2019-01-21 16:12:16.524906+00	570	570marianadavilarodr	1	new through import_export	11	1
1906	2019-01-21 16:12:16.52634+00	571	571isabellasednacova	1	new through import_export	11	1
1907	2019-01-21 16:12:16.527671+00	572	572mariareginacastro	1	new through import_export	11	1
1908	2019-01-21 16:12:16.528909+00	573	573ximenabaizadeavil	1	new through import_export	11	1
1909	2019-01-21 16:12:16.530261+00	574	574karenaizmancarden	1	new through import_export	11	1
1910	2019-01-21 16:12:16.531565+00	575	575sebastianvelamart	1	new through import_export	11	1
1911	2019-01-21 16:12:16.53288+00	576	576santiagotorrescos	1	new through import_export	11	1
1912	2019-01-21 16:12:16.534111+00	577	577mateotarragocanto	1	new through import_export	11	1
1913	2019-01-21 16:12:16.535387+00	578	578herediasantiagovi	1	new through import_export	11	1
1914	2019-01-21 16:12:16.536931+00	579	579jorgerodriguezfue	1	new through import_export	11	1
1915	2019-01-21 16:12:16.538552+00	580	580andrespizanoferna	1	new through import_export	11	1
1916	2019-01-21 16:12:16.539812+00	581	581mateoparramolina	1	new through import_export	11	1
1917	2019-01-21 16:12:16.541297+00	582	582axelmoramuths	1	new through import_export	11	1
1918	2019-01-21 16:12:16.54245+00	583	583josemarialuisesgo	1	new through import_export	11	1
1919	2019-01-21 16:12:16.543658+00	584	584adrianhernandezgu	1	new through import_export	11	1
1920	2019-01-21 16:12:16.544995+00	585	585santiagohernandez	1	new through import_export	11	1
1921	2019-01-21 16:12:16.546159+00	586	586rogeliosebastiane	1	new through import_export	11	1
1922	2019-01-21 16:12:16.54781+00	587	587pedroescalonatorr	1	new through import_export	11	1
1923	2019-01-21 16:12:16.549094+00	588	588josegabrielarreol	1	new through import_export	11	1
1924	2019-01-21 16:12:16.550466+00	589	589ukkosmith 	1	new through import_export	11	1
1925	2019-01-21 16:12:16.551767+00	590	590sofiabalboa 	1	new through import_export	11	1
1926	2019-01-21 16:12:16.55305+00	591	591santiagobernal 	1	new through import_export	11	1
1927	2019-01-21 16:12:16.554598+00	592	592robertovarela 	1	new through import_export	11	1
1928	2019-01-21 16:12:16.556069+00	593	593milajoseph 	1	new through import_export	11	1
1929	2019-01-21 16:12:16.557483+00	594	594milabeltran 	1	new through import_export	11	1
1930	2019-01-21 16:12:16.559037+00	595	595mianaguiano 	1	new through import_export	11	1
1931	2019-01-21 16:12:16.560526+00	596	596leonardofeilbogen	1	new through import_export	11	1
1932	2019-01-21 16:12:16.561963+00	597	597julianehrensber 	1	new through import_export	11	1
1933	2019-01-21 16:12:16.56333+00	598	598fatimazavala 	1	new through import_export	11	1
1934	2019-01-21 16:12:16.564745+00	599	599eduardorodriguez 	1	new through import_export	11	1
1935	2019-01-21 16:12:16.566353+00	600	600andreagutierrez	1	new through import_export	11	1
1936	2019-01-21 16:12:16.568004+00	601	601santiagoerlbaher 	1	new through import_export	11	1
1937	2019-01-21 16:12:16.569729+00	602	602robertamochelena 	1	new through import_export	11	1
1938	2019-01-21 16:12:16.571035+00	603	603nicolasjacobsen 	1	new through import_export	11	1
1939	2019-01-21 16:12:16.572367+00	604	604miacortes 	1	new through import_export	11	1
1940	2019-01-21 16:12:16.573927+00	605	605leonardograeslin 	1	new through import_export	11	1
1941	2019-01-21 16:12:16.575341+00	606	606juliancañedo 	1	new through import_export	11	1
1942	2019-01-21 16:12:16.576707+00	607	607josetorres 	1	new through import_export	11	1
1943	2019-01-21 16:12:16.578107+00	608	608joelcortes 	1	new through import_export	11	1
1944	2019-01-21 16:12:16.579453+00	609	609joaquinraab 	1	new through import_export	11	1
1945	2019-01-21 16:12:16.580769+00	610	610erichjacobsen 	1	new through import_export	11	1
1946	2019-01-21 16:12:16.581971+00	611	611emmavalencia 	1	new through import_export	11	1
1947	2019-01-21 16:12:16.583184+00	612	612emmatorres 	1	new through import_export	11	1
1948	2019-01-21 16:12:16.584442+00	613	613emmajoseph 	1	new through import_export	11	1
1949	2019-01-21 16:12:16.585781+00	614	614eduardoargûelles 	1	new through import_export	11	1
1950	2019-01-21 16:12:16.586958+00	615	615cristobalheredia 	1	new through import_export	11	1
1951	2019-01-21 16:12:16.588122+00	616	616cayetanasanchez 	1	new through import_export	11	1
1952	2019-01-21 16:12:16.589264+00	617	617bernardojoseph 	1	new through import_export	11	1
1953	2019-01-21 16:12:16.590483+00	618	618andrèsalazar 	1	new through import_export	11	1
1954	2019-01-21 16:12:16.591623+00	619	619anajimenaraab	1	new through import_export	11	1
1955	2019-01-21 16:12:16.592851+00	620	620sophiacarbajal 	1	new through import_export	11	1
1956	2019-01-21 16:12:16.594053+00	621	621sebastianponce 	1	new through import_export	11	1
1957	2019-01-21 16:12:16.59521+00	622	622sebastianamador 	1	new through import_export	11	1
1958	2019-01-21 16:12:16.596405+00	623	623santiagocalderon 	1	new through import_export	11	1
1959	2019-01-21 16:12:16.597518+00	624	624santiagobernal 	1	new through import_export	11	1
1960	2019-01-21 16:12:16.598783+00	625	625pabloluz 	1	new through import_export	11	1
1961	2019-01-21 16:12:16.599984+00	626	626milabeltran 	1	new through import_export	11	1
1962	2019-01-21 16:12:16.601424+00	627	627mateocalderon 	1	new through import_export	11	1
1963	2019-01-21 16:12:16.602671+00	628	628lorenzolinares 	1	new through import_export	11	1
1964	2019-01-21 16:12:16.603814+00	629	629linuswillmans 	1	new through import_export	11	1
1965	2019-01-21 16:12:16.604955+00	630	630leandrobrailovsky	1	new through import_export	11	1
1966	2019-01-21 16:12:16.606123+00	631	631leahcastelan 	1	new through import_export	11	1
1967	2019-01-21 16:12:16.607352+00	632	632julietalinares 	1	new through import_export	11	1
1968	2019-01-21 16:12:16.608478+00	633	633julianhernandez 	1	new through import_export	11	1
1969	2019-01-21 16:12:16.609588+00	634	634juliawillmans 	1	new through import_export	11	1
1970	2019-01-21 16:12:16.610774+00	635	635juanmiguelarce	1	new through import_export	11	1
1971	2019-01-21 16:12:16.611968+00	636	636elizabethcota 	1	new through import_export	11	1
1972	2019-01-21 16:12:16.613137+00	637	637danielnuñez 	1	new through import_export	11	1
1973	2019-01-21 16:12:16.614374+00	638	638bernardoalvarez 	1	new through import_export	11	1
1974	2019-01-21 16:12:16.615625+00	639	639andreacuevas 	1	new through import_export	11	1
1975	2019-01-21 16:12:16.616871+00	640	640anaambrosi	1	new through import_export	11	1
1976	2019-01-21 16:12:16.618056+00	641	641anagabrielavazque	1	new through import_export	11	1
1977	2019-01-21 16:12:16.619326+00	642	642taniavallejoherna	1	new through import_export	11	1
1978	2019-01-21 16:12:16.620495+00	643	643anasofiaoterorive	1	new through import_export	11	1
1979	2019-01-21 16:12:16.621722+00	644	644isoldeeleonordela	1	new through import_export	11	1
1980	2019-01-21 16:12:16.622992+00	645	645angelacosmecabrer	1	new through import_export	11	1
1981	2019-01-21 16:12:16.624487+00	646	646marthalorenawille	1	new through import_export	11	1
1982	2019-01-21 16:12:16.626476+00	647	647sofiamoraanzurez	1	new through import_export	11	1
1983	2019-01-21 16:12:16.628136+00	648	648loanabaron	1	new through import_export	11	1
1984	2019-01-21 16:12:16.659743+00	649	649abigailespinosamu	1	new through import_export	11	1
1985	2019-01-21 16:12:16.675235+00	650	650luzelenasosamarti	1	new through import_export	11	1
1986	2019-01-21 16:12:16.6891+00	651	651angelalopezparra	1	new through import_export	11	1
1987	2019-01-21 16:12:16.70303+00	652	652sofiacastañonguti	1	new through import_export	11	1
1988	2019-01-21 16:12:16.705754+00	653	653lorenzamanriquega	1	new through import_export	11	1
1989	2019-01-21 16:12:16.707171+00	654	654noramorales	1	new through import_export	11	1
1990	2019-01-21 16:12:16.708505+00	655	655mariafernandamene	1	new through import_export	11	1
1991	2019-01-21 16:12:16.709911+00	656	656helenatrujillorod	1	new through import_export	11	1
1992	2019-01-21 16:12:16.711132+00	657	657elkeliceagaadam	1	new through import_export	11	1
1993	2019-01-21 16:12:16.712327+00	658	658mariemülleremilie	1	new through import_export	11	1
1994	2019-01-21 16:12:16.713658+00	659	659danielasierrabach	1	new through import_export	11	1
1995	2019-01-21 16:12:16.714795+00	660	660fernandaabdeljale	1	new through import_export	11	1
1996	2019-01-21 16:12:16.715925+00	661	661isabellaroelstoop	1	new through import_export	11	1
1997	2019-01-21 16:12:16.716995+00	662	662brunonicolaskubli	1	new through import_export	11	1
1998	2019-01-21 16:12:16.718203+00	663	663josericardocanoga	1	new through import_export	11	1
1999	2019-01-21 16:12:16.719341+00	664	664oscarmartinezcoel	1	new through import_export	11	1
2000	2019-01-21 16:12:16.72043+00	665	665mauricioaviladela	1	new through import_export	11	1
2001	2019-01-21 16:12:16.721668+00	666	666darianmembrilloal	1	new through import_export	11	1
2002	2019-01-21 16:12:16.722789+00	667	667carlosascenciovil	1	new through import_export	11	1
2003	2019-01-21 16:12:16.723951+00	668	668darioantonio	1	new through import_export	11	1
2004	2019-01-21 16:12:16.725132+00	669	669franciscoortiz	1	new through import_export	11	1
2005	2019-01-21 16:12:16.726432+00	670	670gustavokubligolln	1	new through import_export	11	1
2006	2019-01-21 16:12:16.727589+00	671	671juanpablorobles	1	new through import_export	11	1
2007	2019-01-21 16:12:16.728704+00	672	672alvarogomez	1	new through import_export	11	1
2008	2019-01-21 16:12:16.729816+00	673	673emiliopiña	1	new through import_export	11	1
2009	2019-01-21 16:12:16.730957+00	674	674matthiaslynen	1	new through import_export	11	1
2010	2019-01-21 16:12:16.732023+00	675	675andresmagallon	1	new through import_export	11	1
2011	2019-01-21 16:12:16.733094+00	676	676santiagocastillon	1	new through import_export	11	1
2012	2019-01-21 16:12:16.73423+00	677	677alexandergladen	1	new through import_export	11	1
2013	2019-01-21 16:12:16.735427+00	678	678rodrigoloyola	1	new through import_export	11	1
2014	2019-01-21 16:12:16.736489+00	679	679federicoaguilarbl	1	new through import_export	11	1
2015	2019-01-21 16:12:16.737663+00	680	680iancastañedapache	1	new through import_export	11	1
2016	2019-01-21 16:12:16.738768+00	681	681ikercollromero	1	new through import_export	11	1
2017	2019-01-21 16:12:16.739881+00	682	682albertoesquivelfu	1	new through import_export	11	1
2018	2019-01-21 16:12:16.741018+00	683	683orlandogomezvalde	1	new through import_export	11	1
2019	2019-01-21 16:12:16.74237+00	684	684rodrigoniembromar	1	new through import_export	11	1
2020	2019-01-21 16:12:16.743871+00	685	685emilianopeñaserra	1	new through import_export	11	1
2021	2019-01-21 16:12:16.745335+00	686	686mateotoledowerner	1	new through import_export	11	1
2022	2019-01-21 16:12:16.74676+00	687	687robertoaguilarman	1	new through import_export	11	1
2023	2019-01-21 16:12:16.748049+00	688	688hugomanuelmartine	1	new through import_export	11	1
2024	2019-01-21 16:12:16.749203+00	689	689sebastianmoguello	1	new through import_export	11	1
2025	2019-01-21 16:12:16.750412+00	690	690albertotalamantes	1	new through import_export	11	1
2026	2019-01-21 16:12:16.751604+00	691	691alexandertwardytr	1	new through import_export	11	1
2027	2019-01-21 16:12:16.75264+00	692	692mattiazuincordero	1	new through import_export	11	1
2028	2019-01-21 16:12:16.753735+00	693	693aripulidoferrer	1	new through import_export	11	1
2029	2019-01-21 16:12:16.755086+00	694	694nicolashernandezf	1	new through import_export	11	1
2030	2019-01-21 16:12:16.756308+00	695	695josepabloolivasar	1	new through import_export	11	1
2031	2019-01-21 16:12:16.757489+00	696	696emiliolanda	1	new through import_export	11	1
2032	2019-01-21 16:12:16.758646+00	697	697neftalicuevas	1	new through import_export	11	1
2033	2019-01-21 16:12:16.759746+00	698	698franciscojavierag	1	new through import_export	11	1
2034	2019-01-21 16:12:16.760807+00	699	699belanoelangermann	1	new through import_export	11	1
2035	2019-01-21 16:12:16.761887+00	700	700pablocastroschmit	1	new through import_export	11	1
2036	2019-01-21 16:12:16.763073+00	701	701luismanuelcastros	1	new through import_export	11	1
2037	2019-01-21 16:12:16.764145+00	702	702federicofleischma	1	new through import_export	11	1
2038	2019-01-21 16:12:16.765212+00	703	703julianroelstoopen	1	new through import_export	11	1
2039	2019-01-21 16:12:16.766396+00	704	704kevinrohleder.	1	new through import_export	11	1
2040	2019-01-21 16:12:16.767542+00	705	705andresvelascotorr	1	new through import_export	11	1
2041	2019-01-21 16:12:16.768652+00	706	706emmanuelalcantarc	1	new through import_export	11	1
2042	2019-01-21 16:12:16.769762+00	707	707jordividalvillase	1	new through import_export	11	1
2043	2019-01-21 16:12:16.770921+00	708	708diegosanchezarrio	1	new through import_export	11	1
2044	2019-01-21 16:12:16.772032+00	709	709mateorodriguezazp	1	new through import_export	11	1
2045	2019-01-21 16:12:16.773085+00	710	710luisemiliopozopac	1	new through import_export	11	1
2046	2019-01-21 16:12:16.774177+00	711	711marcoantonioostoa	1	new through import_export	11	1
2047	2019-01-21 16:12:16.775232+00	712	712santiagomaydongon	1	new through import_export	11	1
2048	2019-01-21 16:12:16.776329+00	713	713sebastianliceagaa	1	new through import_export	11	1
2049	2019-01-21 16:12:16.777565+00	714	714axelkaramarroyo	1	new through import_export	11	1
2050	2019-01-21 16:12:16.778946+00	715	715jeronimogomezcolc	1	new through import_export	11	1
2051	2019-01-21 16:12:16.780337+00	716	716stephanmaximodiet	1	new through import_export	11	1
2052	2019-01-21 16:12:16.781705+00	717	717alonsodiazprocel	1	new through import_export	11	1
2053	2019-01-21 16:12:16.783037+00	718	718svenurbanekbarrei	1	new through import_export	11	1
2054	2019-01-21 16:12:16.784524+00	719	719paolotoledowerner	1	new through import_export	11	1
2055	2019-01-21 16:12:16.785905+00	720	720carstenserretköhl	1	new through import_export	11	1
2056	2019-01-21 16:12:16.787474+00	721	721andresmateopozosa	1	new through import_export	11	1
2057	2019-01-21 16:12:16.788844+00	722	722axelpoogonzalez	1	new through import_export	11	1
2058	2019-01-21 16:12:16.790252+00	723	723jorgesantiagomari	1	new through import_export	11	1
2059	2019-01-21 16:12:16.791737+00	724	724mateomaciashernan	1	new through import_export	11	1
2060	2019-01-21 16:12:16.793381+00	725	725isaacgarciasigala	1	new through import_export	11	1
2061	2019-01-21 16:12:16.795148+00	726	726federicogalvezalv	1	new through import_export	11	1
2062	2019-01-21 16:12:16.796876+00	727	727arturocamachooroz	1	new through import_export	11	1
2063	2019-01-21 16:12:16.798608+00	728	728stefanmikelbolaño	1	new through import_export	11	1
2064	2019-01-21 16:12:16.800323+00	729	729iñigovidalvillase	1	new through import_export	11	1
2065	2019-01-21 16:12:16.801913+00	730	730jorgeliamsoriagar	1	new through import_export	11	1
2066	2019-01-21 16:12:16.803431+00	731	731victoralonsomonro	1	new through import_export	11	1
2067	2019-01-21 16:12:16.804933+00	732	732nestormatarredona	1	new through import_export	11	1
2068	2019-01-21 16:12:16.806328+00	733	733carlosfedericomar	1	new through import_export	11	1
2069	2019-01-21 16:12:16.807439+00	734	734joaquingraufranci	1	new through import_export	11	1
2070	2019-01-21 16:12:16.808693+00	735	735demiangonzalesrub	1	new through import_export	11	1
2071	2019-01-21 16:12:16.810003+00	736	736enriquefernandogo	1	new through import_export	11	1
2072	2019-01-21 16:12:16.811266+00	737	737victorisaaccardeñ	1	new through import_export	11	1
2073	2019-01-21 16:12:16.81243+00	738	738matiasrodileskara	1	new through import_export	11	1
2074	2019-01-21 16:12:16.813836+00	739	739rodrigoantoniopra	1	new through import_export	11	1
2075	2019-01-21 16:12:16.815212+00	740	740carloseugenioporc	1	new through import_export	11	1
2076	2019-01-21 16:12:16.816824+00	741	741theoantoniomüller	1	new through import_export	11	1
2077	2019-01-21 16:12:16.818243+00	742	742mateomorenocastañ	1	new through import_export	11	1
2078	2019-01-21 16:12:16.819611+00	743	743samuelmoralesjung	1	new through import_export	11	1
2079	2019-01-21 16:12:16.820834+00	744	744juanpablomontañog	1	new through import_export	11	1
2080	2019-01-21 16:12:16.821966+00	745	745tadeolozamendoza	1	new through import_export	11	1
2081	2019-01-21 16:12:16.823116+00	746	746diegocelistessman	1	new through import_export	11	1
2082	2019-01-21 16:12:16.824411+00	747	747mateangermannkeno	1	new through import_export	11	1
2083	2019-01-21 16:12:16.825717+00	748	748ignaciozuñigagarc	1	new through import_export	11	1
2084	2019-01-21 16:12:16.827105+00	749	749matthiassantaella	1	new through import_export	11	1
2085	2019-01-21 16:12:16.828446+00	750	750matteorossoorihue	1	new through import_export	11	1
2086	2019-01-21 16:12:16.82983+00	751	751paulroenigerjaram	1	new through import_export	11	1
2087	2019-01-21 16:12:16.831216+00	752	752paulojosueolivare	1	new through import_export	11	1
2088	2019-01-21 16:12:16.832441+00	753	753andrelopezrodrigu	1	new through import_export	11	1
2089	2019-01-21 16:12:16.833911+00	754	754josemariaenriquez	1	new through import_export	11	1
2090	2019-01-21 16:12:16.835361+00	755	755emirapistellez	1	new through import_export	11	1
2091	2019-01-21 16:12:16.836699+00	756	756ximenavegatapia	1	new through import_export	11	1
2092	2019-01-21 16:12:16.838036+00	757	757anasanchezarriola	1	new through import_export	11	1
2093	2019-01-21 16:12:16.839306+00	758	758sofiarohleder	1	new through import_export	11	1
2094	2019-01-21 16:12:16.840612+00	759	759valentinarenteria	1	new through import_export	11	1
2095	2019-01-21 16:12:16.842022+00	760	760ileanacamilaoliva	1	new through import_export	11	1
2096	2019-01-21 16:12:16.843351+00	761	761arantxanellenlayo	1	new through import_export	11	1
2097	2019-01-21 16:12:16.84457+00	762	762reginamorenoflore	1	new through import_export	11	1
2098	2019-01-21 16:12:16.845808+00	763	763sofiamenendezespi	1	new through import_export	11	1
2099	2019-01-21 16:12:16.846925+00	764	764kenyaizabellamart	1	new through import_export	11	1
2100	2019-01-21 16:12:16.848042+00	765	765paulakaiserlopez	1	new through import_export	11	1
2101	2019-01-21 16:12:16.849136+00	766	766valentinagonzalez	1	new through import_export	11	1
2102	2019-01-21 16:12:16.850418+00	767	767paulinabeltranpru	1	new through import_export	11	1
2103	2019-01-21 16:12:16.851581+00	768	768marianeabdeljalek	1	new through import_export	11	1
2104	2019-01-21 16:12:16.852677+00	769	769juliazacariasalde	1	new through import_export	11	1
2105	2019-01-21 16:12:16.853824+00	770	770patriciovaldiviac	1	new through import_export	11	1
2106	2019-01-21 16:12:16.854928+00	771	771carlosestebantell	1	new through import_export	11	1
2107	2019-01-21 16:12:16.856077+00	772	772oscargaelsantanat	1	new through import_export	11	1
2108	2019-01-21 16:12:16.85718+00	773	773jesussalazarvelaz	1	new through import_export	11	1
2109	2019-01-21 16:12:16.858305+00	774	774brunomiguelromero	1	new through import_export	11	1
2110	2019-01-21 16:12:16.859406+00	775	775diegoreydavo	1	new through import_export	11	1
2111	2019-01-21 16:12:16.860603+00	776	776diegomuñozcarvaja	1	new through import_export	11	1
2112	2019-01-21 16:12:16.861794+00	777	777oscargustavomendo	1	new through import_export	11	1
2113	2019-01-21 16:12:16.863049+00	778	778jorgeantoniomende	1	new through import_export	11	1
2114	2019-01-21 16:12:16.864429+00	779	779christopherleitme	1	new through import_export	11	1
2115	2019-01-21 16:12:16.86587+00	780	780alonsoiturriagabo	1	new through import_export	11	1
2116	2019-01-21 16:12:16.867115+00	781	781thomasleonardoenr	1	new through import_export	11	1
2117	2019-01-21 16:12:16.868371+00	782	782adolfocarrillogan	1	new through import_export	11	1
2118	2019-01-21 16:12:16.869654+00	783	783ikergustavbolaños	1	new through import_export	11	1
2119	2019-01-21 16:12:16.870866+00	784	784maitevelascotorre	1	new through import_export	11	1
2120	2019-01-21 16:12:16.872028+00	785	785robertatapiazamor	1	new through import_export	11	1
2121	2019-01-21 16:12:16.873293+00	786	786luzadrianasalcedo	1	new through import_export	11	1
2122	2019-01-21 16:12:16.874465+00	787	787fernandaruedavall	1	new through import_export	11	1
2123	2019-01-21 16:12:16.875688+00	788	788manerodriguezazpi	1	new through import_export	11	1
2124	2019-01-21 16:12:16.876851+00	789	789junerodriguezazpi	1	new through import_export	11	1
2125	2019-01-21 16:12:16.877933+00	790	790emiliarechymadina	1	new through import_export	11	1
2126	2019-01-21 16:12:16.878999+00	791	791sofiamaydongonzal	1	new through import_export	11	1
2127	2019-01-21 16:12:16.880116+00	792	792laraleitmeirrosas	1	new through import_export	11	1
2128	2019-01-21 16:12:16.881569+00	793	793hannahleitmeirros	1	new through import_export	11	1
2129	2019-01-21 16:12:16.883145+00	794	794iaradiederichsenr	1	new through import_export	11	1
2130	2019-01-21 16:12:16.884619+00	795	795pamelaalemancarra	1	new through import_export	11	1
2131	2019-01-21 16:12:16.885988+00	796	796darienalejandroza	1	new through import_export	11	1
2132	2019-01-21 16:12:16.887394+00	797	797diegovegatapia	1	new through import_export	11	1
2133	2019-01-21 16:12:16.888697+00	798	798patriciovaldiviac	1	new through import_export	11	1
2134	2019-01-21 16:12:16.89058+00	799	799lukastoledowerner	1	new through import_export	11	1
2135	2019-01-21 16:12:16.891868+00	800	800carlosrojocamez	1	new through import_export	11	1
2136	2019-01-21 16:12:16.893084+00	801	801juanpabloreydavo	1	new through import_export	11	1
2137	2019-01-21 16:12:16.894361+00	802	802diegoreydavo	1	new through import_export	11	1
2138	2019-01-21 16:12:16.895639+00	803	803gustavooteroriver	1	new through import_export	11	1
2139	2019-01-21 16:12:16.896821+00	804	804leonardoosoriosau	1	new through import_export	11	1
2140	2019-01-21 16:12:16.89814+00	805	805franziscomüllerpa	1	new through import_export	11	1
2141	2019-01-21 16:12:16.899523+00	806	806ernestolopezbalta	1	new through import_export	11	1
2142	2019-01-21 16:12:16.900772+00	807	807alexanderleitmeir	1	new through import_export	11	1
2143	2019-01-21 16:12:16.90199+00	808	808diegokaiserlopez	1	new through import_export	11	1
2144	2019-01-21 16:12:16.903348+00	809	809brunofernandeztor	1	new through import_export	11	1
2145	2019-01-21 16:12:16.904647+00	810	810santiagofavelabat	1	new through import_export	11	1
2146	2019-01-21 16:12:16.905883+00	811	811thomasleonardoenr	1	new through import_export	11	1
2147	2019-01-21 16:12:16.907158+00	812	812liamdiederichsenr	1	new through import_export	11	1
2148	2019-01-21 16:12:16.908385+00	813	813andrescarrillogan	1	new through import_export	11	1
2149	2019-01-21 16:12:16.909897+00	814	814santiagocaballero	1	new through import_export	11	1
2150	2019-01-21 16:12:16.911282+00	815	815brunoarredondoeli	1	new through import_export	11	1
2151	2019-01-21 16:12:16.912526+00	816	816luisabdeljalekmil	1	new through import_export	11	1
2152	2019-01-21 16:12:16.913865+00	817	817williamcordoba 	1	new through import_export	11	1
2153	2019-01-21 16:12:16.915244+00	818	818santiagosalgado	1	new through import_export	11	1
2154	2019-01-21 16:12:16.91668+00	819	819rubenduarte 	1	new through import_export	11	1
2155	2019-01-21 16:12:16.918091+00	820	820reneponce 	1	new through import_export	11	1
2156	2019-01-21 16:12:16.919521+00	821	821pablobarba 	1	new through import_export	11	1
2157	2019-01-21 16:12:16.920908+00	822	822luisjavier	1	new through import_export	11	1
2158	2019-01-21 16:12:16.922342+00	823	823fernandovazquez 	1	new through import_export	11	1
2159	2019-01-21 16:12:16.923803+00	824	824fernandohernandez	1	new through import_export	11	1
2160	2019-01-21 16:12:16.924982+00	825	825eduardobautista 	1	new through import_export	11	1
2161	2019-01-21 16:12:16.926191+00	826	826diegonava 	1	new through import_export	11	1
2162	2019-01-21 16:12:16.927407+00	827	827danielpineda 	1	new through import_export	11	1
2163	2019-01-21 16:12:16.928618+00	828	828axeljafet	1	new through import_export	11	1
2164	2019-01-21 16:12:16.929804+00	829	829angelbecerril 	1	new through import_export	11	1
2165	2019-01-21 16:12:16.93104+00	830	830adriangonzalez 	1	new through import_export	11	1
2166	2019-01-21 16:12:16.932296+00	831	831sebastianzaragoza	1	new through import_export	11	1
2167	2019-01-21 16:12:16.933533+00	832	832santiagobastida 	1	new through import_export	11	1
2168	2019-01-21 16:12:16.934763+00	833	833rifkavillamizar 	1	new through import_export	11	1
2169	2019-01-21 16:12:16.935866+00	834	834mateorodriguez 	1	new through import_export	11	1
2170	2019-01-21 16:12:16.937232+00	835	835lukacervera 	1	new through import_export	11	1
2171	2019-01-21 16:12:16.938429+00	836	836leonsanchez 	1	new through import_export	11	1
2172	2019-01-21 16:12:16.939629+00	837	837juanduartesmith	1	new through import_export	11	1
2173	2019-01-21 16:12:16.9407+00	838	838jeronimorettig 	1	new through import_export	11	1
2174	2019-01-21 16:12:16.941952+00	839	839emavazquezmaya	1	new through import_export	11	1
2175	2019-01-21 16:12:16.943133+00	840	840dominickfernandez	1	new through import_export	11	1
2176	2019-01-21 16:12:16.944221+00	841	841diegofabricebotto	1	new through import_export	11	1
2177	2019-01-21 16:12:16.945295+00	842	842arturoemilianorub	1	new through import_export	11	1
2178	2019-01-21 16:12:16.946417+00	843	843alejandrouribe	1	new through import_export	11	1
2179	2019-01-21 16:12:16.947552+00	844	844rodrigofranciscom	1	new through import_export	11	1
2180	2019-01-21 16:12:16.948709+00	845	845orlandosuarez 	1	new through import_export	11	1
2181	2019-01-21 16:12:16.949862+00	846	846fernandovazquez 	1	new through import_export	11	1
2182	2019-01-21 16:12:16.950994+00	847	847fernandohernandez	1	new through import_export	11	1
2183	2019-01-21 16:12:16.95215+00	848	848eduardobautista 	1	new through import_export	11	1
2184	2019-01-21 16:12:16.953236+00	849	849diegonava 	1	new through import_export	11	1
2185	2019-01-21 16:12:16.954324+00	850	850axeljafetperez	1	new through import_export	11	1
2186	2019-01-21 16:12:16.955429+00	851	851axelcarrasco	1	new through import_export	11	1
2187	2019-01-21 16:12:16.956544+00	852	852valeriavillamizar	1	new through import_export	11	1
2188	2019-01-21 16:12:16.957605+00	853	853valeriagalan 	1	new through import_export	11	1
2189	2019-01-21 16:12:16.958779+00	854	854paolaperez 	1	new through import_export	11	1
2190	2019-01-21 16:12:16.95989+00	855	855nataliaperez 	1	new through import_export	11	1
2191	2019-01-21 16:12:16.960903+00	856	856jeniferlopez 	1	new through import_export	11	1
2192	2019-01-21 16:12:16.970353+00	857	857ethelrubilopez	1	new through import_export	11	1
2193	2019-01-21 16:12:16.972137+00	858	858danielareygadas 	1	new through import_export	11	1
2194	2019-01-21 16:12:16.973535+00	859	859arantzagalan	1	new through import_export	11	1
2195	2019-01-21 16:12:16.97488+00	860	860victoranaya 	1	new through import_export	11	1
2196	2019-01-21 16:12:16.976148+00	861	861leonardorios 	1	new through import_export	11	1
2197	2019-01-21 16:12:16.977471+00	862	862josemiguelmendoza	1	new through import_export	11	1
2198	2019-01-21 16:12:16.979073+00	863	863josefernandopiña	1	new through import_export	11	1
2199	2019-01-21 16:12:16.980314+00	864	864javieremiliopetoz	1	new through import_export	11	1
2200	2019-01-21 16:12:16.981956+00	865	865javierdiaz 	1	new through import_export	11	1
2201	2019-01-21 16:12:16.98353+00	866	866gabrielruiz 	1	new through import_export	11	1
2202	2019-01-21 16:12:16.985155+00	867	867elliotferruzca 	1	new through import_export	11	1
2203	2019-01-21 16:12:16.986914+00	868	868diegoperez 	1	new through import_export	11	1
2204	2019-01-21 16:12:16.988428+00	869	869diegomartinez 	1	new through import_export	11	1
2205	2019-01-21 16:12:16.989946+00	870	870carlosortiz 	1	new through import_export	11	1
2206	2019-01-21 16:12:16.991463+00	871	871calebperez 	1	new through import_export	11	1
2207	2019-01-21 16:12:16.992958+00	872	872brunocastro 	1	new through import_export	11	1
2208	2019-01-21 16:12:16.994312+00	873	873bernardoquiroz	1	new through import_export	11	1
2209	2019-01-21 16:12:16.995554+00	874	874yoavalexeiperez	1	new through import_export	11	1
2210	2019-01-21 16:12:16.996781+00	875	875santiagozaragoza 	1	new through import_export	11	1
2211	2019-01-21 16:12:16.998004+00	876	876santiagoolmedo 	1	new through import_export	11	1
2212	2019-01-21 16:12:16.999177+00	877	877santiagogomez 	1	new through import_export	11	1
2213	2019-01-21 16:12:17.000558+00	878	878robertosanchez 	1	new through import_export	11	1
2214	2019-01-21 16:12:17.001845+00	879	879rafaelrivapalacio	1	new through import_export	11	1
2215	2019-01-21 16:12:17.003032+00	880	880patricioislas 	1	new through import_export	11	1
2216	2019-01-21 16:12:17.004239+00	881	881pablobastida 	1	new through import_export	11	1
2217	2019-01-21 16:12:17.00539+00	882	882mateotrias 	1	new through import_export	11	1
2218	2019-01-21 16:12:17.006662+00	883	883martinjurado 	1	new through import_export	11	1
2219	2019-01-21 16:12:17.00793+00	884	884lucianoromero 	1	new through import_export	11	1
2220	2019-01-21 16:12:17.0092+00	885	885julioalfonzoalvar	1	new through import_export	11	1
2221	2019-01-21 16:12:17.010446+00	886	886josemariasalgado	1	new through import_export	11	1
2222	2019-01-21 16:12:17.011794+00	887	887joseemilianomuñoz	1	new through import_export	11	1
2223	2019-01-21 16:12:17.013055+00	888	888gabrielruiz 	1	new through import_export	11	1
2224	2019-01-21 16:12:17.014243+00	889	889emilioisrael 	1	new through import_export	11	1
2225	2019-01-21 16:12:17.015541+00	890	890eduardopeña 	1	new through import_export	11	1
2226	2019-01-21 16:12:17.016734+00	891	891brunouribe 	1	new through import_export	11	1
2227	2019-01-21 16:12:17.017965+00	892	892brunomartinez 	1	new through import_export	11	1
2228	2019-01-21 16:12:17.01921+00	893	893angelgabrielsanch	1	new through import_export	11	1
2229	2019-01-21 16:12:17.020367+00	894	894alonsoortiz	1	new through import_export	11	1
2230	2019-01-21 16:12:17.02154+00	895	895valeriavillamizar	1	new through import_export	11	1
2231	2019-01-21 16:12:17.022714+00	896	896santiagozaragoza 	1	new through import_export	11	1
2232	2019-01-21 16:12:17.02386+00	897	897santiagoolmedo 	1	new through import_export	11	1
2233	2019-01-21 16:12:17.025039+00	898	898saidcasab 	1	new through import_export	11	1
2234	2019-01-21 16:12:17.026283+00	899	899rodrigobaez 	1	new through import_export	11	1
2235	2019-01-21 16:12:17.027476+00	900	900patricioramirez 	1	new through import_export	11	1
2236	2019-01-21 16:12:17.028633+00	901	901nicolasvillareal 	1	new through import_export	11	1
2237	2019-01-21 16:12:17.029886+00	902	902nicolasvarela 	1	new through import_export	11	1
2238	2019-01-21 16:12:17.03103+00	903	903matiasvazquezmaya	1	new through import_export	11	1
2239	2019-01-21 16:12:17.032179+00	904	904martinjurado 	1	new through import_export	11	1
2240	2019-01-21 16:12:17.033261+00	905	905lucianoromero 	1	new through import_export	11	1
2241	2019-01-21 16:12:17.034447+00	906	906leonsanchez 	1	new through import_export	11	1
2242	2019-01-21 16:12:17.03568+00	907	907juanpabloflores	1	new through import_export	11	1
2243	2019-01-21 16:12:17.037002+00	908	908juancarlosmartine	1	new through import_export	11	1
2244	2019-01-21 16:12:17.038309+00	909	909josepabloochoa	1	new through import_export	11	1
2245	2019-01-21 16:12:17.039514+00	910	910jorgeemilianogarc	1	new through import_export	11	1
2246	2019-01-21 16:12:17.040675+00	911	911ikerhidalgo 	1	new through import_export	11	1
2247	2019-01-21 16:12:17.041909+00	912	912ikercastro 	1	new through import_export	11	1
2248	2019-01-21 16:12:17.04307+00	913	913hectorivanrivera	1	new through import_export	11	1
2249	2019-01-21 16:12:17.04417+00	914	914gabrieluribe 	1	new through import_export	11	1
2250	2019-01-21 16:12:17.045231+00	915	915fernandoortiz 	1	new through import_export	11	1
2251	2019-01-21 16:12:17.046302+00	916	916evanrobles 	1	new through import_export	11	1
2252	2019-01-21 16:12:17.047704+00	917	917ernestodavidmedin	1	new through import_export	11	1
2253	2019-01-21 16:12:17.048839+00	918	918emilianogenarogom	1	new through import_export	11	1
2254	2019-01-21 16:12:17.049944+00	919	919diegoorozco 	1	new through import_export	11	1
2255	2019-01-21 16:12:17.05121+00	920	920danielbecerril 	1	new through import_export	11	1
2256	2019-01-21 16:12:17.052362+00	921	921cristiangaelarmen	1	new through import_export	11	1
2257	2019-01-21 16:12:17.05366+00	922	922brunopacheco 	1	new through import_export	11	1
2258	2019-01-21 16:12:17.05495+00	923	923aryasingh 	1	new through import_export	11	1
2259	2019-01-21 16:12:17.056205+00	924	924arturodueñasdueña	1	new through import_export	11	1
2260	2019-01-21 16:12:17.057383+00	925	925arturoaguillon 	1	new through import_export	11	1
2261	2019-01-21 16:12:17.05888+00	926	926alejandrodiaz	1	new through import_export	11	1
2262	2019-01-21 16:12:17.06005+00	927	927valeriavillamizar	1	new through import_export	11	1
2263	2019-01-21 16:12:17.061186+00	928	928santiagozaragoza 	1	new through import_export	11	1
2264	2019-01-21 16:12:17.062562+00	929	929santiagoolmedo 	1	new through import_export	11	1
2265	2019-01-21 16:12:17.063774+00	930	930saidcasab 	1	new through import_export	11	1
2266	2019-01-21 16:12:17.064901+00	931	931rodrigobaez 	1	new through import_export	11	1
2267	2019-01-21 16:12:17.066018+00	932	932patricioramirez 	1	new through import_export	11	1
2268	2019-01-21 16:12:17.067829+00	933	933nicolasvillareal 	1	new through import_export	11	1
2269	2019-01-21 16:12:17.068982+00	934	934nicolasvarela 	1	new through import_export	11	1
2270	2019-01-21 16:12:17.070169+00	935	935matiasvazquezmaya	1	new through import_export	11	1
2271	2019-01-21 16:12:17.071457+00	936	936martinjurado 	1	new through import_export	11	1
2272	2019-01-21 16:12:17.072617+00	937	937lucianoromero 	1	new through import_export	11	1
2273	2019-01-21 16:12:17.073781+00	938	938leonsanchez 	1	new through import_export	11	1
2274	2019-01-21 16:12:17.074982+00	939	939juanpabloflores	1	new through import_export	11	1
2275	2019-01-21 16:12:17.076123+00	940	940juancarlosmartine	1	new through import_export	11	1
2276	2019-01-21 16:12:17.077219+00	941	941josepabloochoa	1	new through import_export	11	1
2277	2019-01-21 16:12:17.078397+00	942	942jorgeemilianogarc	1	new through import_export	11	1
2278	2019-01-21 16:12:17.079566+00	943	943ikerhidalgo 	1	new through import_export	11	1
2279	2019-01-21 16:12:17.081398+00	944	944ikercastro 	1	new through import_export	11	1
2280	2019-01-21 16:12:17.082649+00	945	945hectorivanrivera	1	new through import_export	11	1
2281	2019-01-21 16:12:17.083908+00	946	946gabrieluribe 	1	new through import_export	11	1
2282	2019-01-21 16:12:17.08521+00	947	947fernandoortiz 	1	new through import_export	11	1
2283	2019-01-21 16:12:17.086672+00	948	948evanrobles 	1	new through import_export	11	1
2284	2019-01-21 16:12:17.088045+00	949	949ernestodavidmedin	1	new through import_export	11	1
2285	2019-01-21 16:12:17.089406+00	950	950emilianogenarogom	1	new through import_export	11	1
2286	2019-01-21 16:12:17.090764+00	951	951diegoorozco 	1	new through import_export	11	1
2287	2019-01-21 16:12:17.092032+00	952	952danielbecerril 	1	new through import_export	11	1
2288	2019-01-21 16:12:17.093229+00	953	953cristiangaelarmen	1	new through import_export	11	1
2289	2019-01-21 16:12:17.094382+00	954	954brunopacheco 	1	new through import_export	11	1
2290	2019-01-21 16:12:17.09552+00	955	955aryasingh 	1	new through import_export	11	1
2291	2019-01-21 16:12:17.096672+00	956	956arturodueñasdueña	1	new through import_export	11	1
2292	2019-01-21 16:12:17.097818+00	957	957arturoaguillon 	1	new through import_export	11	1
2293	2019-01-21 16:12:17.099042+00	958	958alejandrodiaz	1	new through import_export	11	1
2294	2019-01-21 16:12:17.10018+00	959	959victoranaya 	1	new through import_export	11	1
2295	2019-01-21 16:12:17.101366+00	960	960santiagopeña 	1	new through import_export	11	1
2296	2019-01-21 16:12:17.102595+00	961	961santiagoparedes 	1	new through import_export	11	1
2297	2019-01-21 16:12:17.103727+00	962	962rubenlira 	1	new through import_export	11	1
2298	2019-01-21 16:12:17.104829+00	963	963rafaelrivapalacio	1	new through import_export	11	1
2299	2019-01-21 16:12:17.105958+00	964	964patricioislas 	1	new through import_export	11	1
2300	2019-01-21 16:12:17.107123+00	965	965pablomoctezuma 	1	new through import_export	11	1
2301	2019-01-21 16:12:17.10816+00	966	966julioalfonzoalvar	1	new through import_export	11	1
2302	2019-01-21 16:12:17.109232+00	967	967josefernandopiña	1	new through import_export	11	1
2303	2019-01-21 16:12:17.110273+00	968	968ikerhidalgo 	1	new through import_export	11	1
2304	2019-01-21 16:12:17.111352+00	969	969ikercastro 	1	new through import_export	11	1
2305	2019-01-21 16:12:17.112436+00	970	970gabrielruiz 	1	new through import_export	11	1
2306	2019-01-21 16:12:17.113666+00	971	971emilioisrael 	1	new through import_export	11	1
2307	2019-01-21 16:12:17.114853+00	972	972eduardobautista 	1	new through import_export	11	1
2308	2019-01-21 16:12:17.115973+00	973	973danielareygadas 	1	new through import_export	11	1
2309	2019-01-21 16:12:17.117145+00	974	974danielbecerril 	1	new through import_export	11	1
2310	2019-01-21 16:12:17.11827+00	975	975cesarlopez 	1	new through import_export	11	1
2311	2019-01-21 16:12:17.119477+00	976	976axeljafetperez	1	new through import_export	11	1
2312	2019-01-21 16:12:17.120617+00	977	977aryasingh 	1	new through import_export	11	1
2313	2019-01-21 16:12:17.121778+00	978	978alonsoortiz	1	new through import_export	11	1
2314	2019-01-21 16:12:17.122925+00	979	979victorrafaelsevil	1	new through import_export	11	1
2315	2019-01-21 16:12:17.124028+00	980	980santiagomiranda 	1	new through import_export	11	1
2316	2019-01-21 16:12:17.12507+00	981	981santiagolopezruiz	1	new through import_export	11	1
2317	2019-01-21 16:12:17.126125+00	982	982santiagogaribaylu	1	new through import_export	11	1
2318	2019-01-21 16:12:17.12717+00	983	983rafaelnavarodrigu	1	new through import_export	11	1
2319	2019-01-21 16:12:17.128245+00	984	984ivanhernandezpadu	1	new through import_export	11	1
2320	2019-01-21 16:12:17.1293+00	985	985hectoraldereteguz	1	new through import_export	11	1
2321	2019-01-21 16:12:17.130344+00	986	986fernandoharomerca	1	new through import_export	11	1
2322	2019-01-21 16:12:17.132128+00	987	987diegovalencianomu	1	new through import_export	11	1
2323	2019-01-21 16:12:17.13354+00	988	988diegoisaactorizar	1	new through import_export	11	1
2324	2019-01-21 16:12:17.134924+00	989	989carlossantanaorti	1	new through import_export	11	1
2325	2019-01-21 16:12:17.13619+00	990	990carloselianbedoll	1	new through import_export	11	1
2326	2019-01-21 16:12:17.137443+00	991	991braulioyazidballa	1	new through import_export	11	1
2327	2019-01-21 16:12:17.138735+00	992	992bernardouribesoto	1	new through import_export	11	1
2328	2019-01-21 16:12:17.139957+00	993	993amilcararathsanch	1	new through import_export	11	1
2329	2019-01-21 16:12:17.141114+00	994	994alejandroparramon	1	new through import_export	11	1
2330	2019-01-21 16:12:17.142453+00	995	995victormanuelsando	1	new through import_export	11	1
2331	2019-01-21 16:12:17.143591+00	996	996santiagocastellan	1	new through import_export	11	1
2332	2019-01-21 16:12:17.144701+00	997	997oscarortegaespind	1	new through import_export	11	1
2333	2019-01-21 16:12:17.145878+00	998	998nelsonalejandrome	1	new through import_export	11	1
2334	2019-01-21 16:12:17.147116+00	999	999josemanuelfragoso	1	new through import_export	11	1
2335	2019-01-21 16:12:17.14837+00	1000	1000joseguillermosan	1	new through import_export	11	1
2336	2019-01-21 16:12:17.149492+00	1001	1001hectoralonsomarq	1	new through import_export	11	1
2337	2019-01-21 16:12:17.150619+00	1002	1002gustavoeduardono	1	new through import_export	11	1
2338	2019-01-21 16:12:17.151683+00	1003	1003erickrobertogonz	1	new through import_export	11	1
2339	2019-01-21 16:12:17.152706+00	1004	1004erickjesusnagano	1	new through import_export	11	1
2340	2019-01-21 16:12:17.154035+00	1005	1005emilioorozcotorr	1	new through import_export	11	1
2341	2019-01-21 16:12:17.155375+00	1006	1006carlosantoniogar	1	new through import_export	11	1
2342	2019-01-21 16:12:17.159203+00	1007	1007zoeayelengarcia	1	new through import_export	11	1
2343	2019-01-21 16:12:17.160475+00	1008	1008yahirramirezorti	1	new through import_export	11	1
2344	2019-01-21 16:12:17.16176+00	1009	1009sorenalbertojard	1	new through import_export	11	1
2345	2019-01-21 16:12:17.163131+00	1010	1010omaremmanuelmart	1	new through import_export	11	1
2346	2019-01-21 16:12:17.164418+00	1011	1011miguelangelmaria	1	new through import_export	11	1
2347	2019-01-21 16:12:17.165691+00	1012	1012joseabizaidrusz	1	new through import_export	11	1
2348	2019-01-21 16:12:17.166852+00	1013	1013joaquincastellan	1	new through import_export	11	1
2349	2019-01-21 16:12:17.168067+00	1014	1014jesusandresherna	1	new through import_export	11	1
2350	2019-01-21 16:12:17.169221+00	1015	1015erickleonardoher	1	new through import_export	11	1
2351	2019-01-21 16:12:17.170741+00	1016	1016emilioespinosaal	1	new through import_export	11	1
2352	2019-01-21 16:12:17.171976+00	1017	1017emilianovargasra	1	new through import_export	11	1
2353	2019-01-21 16:12:17.173169+00	1018	1018diegomurosanchez	1	new through import_export	11	1
2354	2019-01-21 16:12:17.174447+00	1019	1019danielfabrizioji	1	new through import_export	11	1
2355	2019-01-21 16:12:17.175731+00	1020	1020brunogaelgarciag	1	new through import_export	11	1
2356	2019-01-21 16:12:17.176819+00	1021	1021axelherediaville	1	new through import_export	11	1
2357	2019-01-21 16:12:17.177931+00	1022	1022angeldanielperez	1	new through import_export	11	1
2358	2019-01-21 16:12:17.179585+00	1023	1023andreslozanolaga	1	new through import_export	11	1
2359	2019-01-21 16:12:17.180781+00	1024	1024victorjovangarci	1	new through import_export	11	1
2360	2019-01-21 16:12:17.181999+00	1025	1025sebastianlopezdu	1	new through import_export	11	1
2361	2019-01-21 16:12:17.183267+00	1026	1026pabloalvaradogon	1	new through import_export	11	1
2362	2019-01-21 16:12:17.184534+00	1027	1027nicolasescobarce	1	new through import_export	11	1
2363	2019-01-21 16:12:17.185714+00	1028	1028leonardolopezram	1	new through import_export	11	1
2364	2019-01-21 16:12:17.186935+00	1029	1029leonardocastillo	1	new through import_export	11	1
2365	2019-01-21 16:12:17.188118+00	1030	1030joelhernandezdur	1	new through import_export	11	1
2366	2019-01-21 16:12:17.189189+00	1031	1031joaquincastellan	1	new through import_export	11	1
2367	2019-01-21 16:12:17.190636+00	1032	1032francovertizvill	1	new through import_export	11	1
2368	2019-01-21 16:12:17.191846+00	1033	1033emilianogomezjua	1	new through import_export	11	1
2369	2019-01-21 16:12:17.19301+00	1034	1034emilianocaldronc	1	new through import_export	11	1
2370	2019-01-21 16:12:17.19547+00	1035	1035eliandavidcarras	1	new through import_export	11	1
2371	2019-01-21 16:12:17.196708+00	1036	1036diegorosasaguila	1	new through import_export	11	1
2372	2019-01-21 16:12:17.197937+00	1037	1037diegoemiliolopez	1	new through import_export	11	1
2373	2019-01-21 16:12:17.199074+00	1038	1038bernardonicolasc	1	new through import_export	11	1
2374	2019-01-21 16:12:17.200175+00	1039	1039angeljavierperez	1	new through import_export	11	1
2375	2019-01-21 16:12:17.201521+00	1040	1040alfredomarquezme	1	new through import_export	11	1
2376	2019-01-21 16:12:17.202757+00	1041	1041santiagobenjamin	1	new through import_export	11	1
2377	2019-01-21 16:12:17.203928+00	1042	1042nicolassuarezcob	1	new through import_export	11	1
2378	2019-01-21 16:12:17.205165+00	1043	1043maximilianomolin	1	new through import_export	11	1
2379	2019-01-21 16:12:17.206285+00	1044	1044leonardomaximili	1	new through import_export	11	1
2380	2019-01-21 16:12:17.207382+00	1045	1045juanpablodelator	1	new through import_export	11	1
2381	2019-01-21 16:12:17.208491+00	1046	1046isaachernandezpa	1	new through import_export	11	1
2382	2019-01-21 16:12:17.209802+00	1047	1047isaacchavezrojas	1	new through import_export	11	1
2383	2019-01-21 16:12:17.210965+00	1048	1048ikervazquez 	1	new through import_export	11	1
2384	2019-01-21 16:12:17.21214+00	1049	1049ikergarciaortiz	1	new through import_export	11	1
2385	2019-01-21 16:12:17.213328+00	1050	1050emilianozeledona	1	new through import_export	11	1
2386	2019-01-21 16:12:17.214516+00	1051	1051emanuelalexander	1	new through import_export	11	1
2387	2019-01-21 16:12:17.215637+00	1052	1052edgarpatriciomay	1	new through import_export	11	1
2388	2019-01-21 16:12:17.216783+00	1053	1053diegoandressando	1	new through import_export	11	1
2389	2019-01-21 16:12:17.218021+00	1054	1054andresebastianag	1	new through import_export	11	1
2390	2019-01-21 16:12:17.219095+00	1055	1055alainraulbadiahe	1	new through import_export	11	1
2391	2019-01-21 16:12:17.220168+00	1056	1056adrianperezdiaz	1	new through import_export	11	1
2392	2019-01-21 16:12:17.223138+00	1057	1057sebastianhernand	1	new through import_export	11	1
2393	2019-01-21 16:12:17.224453+00	1058	1058santiagotorresve	1	new through import_export	11	1
2394	2019-01-21 16:12:17.225738+00	1059	1059santiagonoriegav	1	new through import_export	11	1
2395	2019-01-21 16:12:17.227014+00	1060	1060ricardosantiagor	1	new through import_export	11	1
2396	2019-01-21 16:12:17.228209+00	1061	1061renejosuebuendia	1	new through import_export	11	1
2397	2019-01-21 16:12:17.229332+00	1062	1062patricioorozcoto	1	new through import_export	11	1
2398	2019-01-21 16:12:17.230494+00	1063	1063pabloalbertoespe	1	new through import_export	11	1
2399	2019-01-21 16:12:17.231681+00	1064	1064omarzavalapeña	1	new through import_export	11	1
2400	2019-01-21 16:12:17.232758+00	1065	1065mikelmedinazarza	1	new through import_export	11	1
2401	2019-01-21 16:12:17.233849+00	1066	1066josedavidmelonar	1	new through import_export	11	1
2402	2019-01-21 16:12:17.235068+00	1067	1067emilianovazqueza	1	new through import_export	11	1
2403	2019-01-21 16:12:17.236205+00	1068	1068ederalessandroru	1	new through import_export	11	1
2404	2019-01-21 16:12:17.237362+00	1069	1069diegorodriguezbu	1	new through import_export	11	1
2405	2019-01-21 16:12:17.23845+00	1070	1070davidsaulmoreno	1	new through import_export	11	1
2406	2019-01-21 16:12:17.239589+00	1071	1071alainemanuelcort	1	new through import_export	11	1
2407	2019-01-21 16:12:17.240668+00	1072	1072santiagoreyesrom	1	new through import_export	11	1
2408	2019-01-21 16:12:17.241751+00	1073	1073santiagofrancomo	1	new through import_export	11	1
2409	2019-01-21 16:12:17.242834+00	1074	1074rubenfranciscogo	1	new through import_export	11	1
2410	2019-01-21 16:12:17.24391+00	1075	1075rodrigobasiliohe	1	new through import_export	11	1
2411	2019-01-21 16:12:17.244987+00	1076	1076ricardodelrioavi	1	new through import_export	11	1
2412	2019-01-21 16:12:17.246432+00	1077	1077pablobelmontemen	1	new through import_export	11	1
2413	2019-01-21 16:12:17.247686+00	1078	1078mauriciovillarre	1	new through import_export	11	1
2414	2019-01-21 16:12:17.248799+00	1079	1079leonardojavierra	1	new through import_export	11	1
2415	2019-01-21 16:12:17.249942+00	1080	1080julianrodriguezh	1	new through import_export	11	1
2416	2019-01-21 16:12:17.251044+00	1081	1081juanpabloandrade	1	new through import_export	11	1
2417	2019-01-21 16:12:17.252289+00	1082	1082jorgeemiliochape	1	new through import_export	11	1
2418	2019-01-21 16:12:17.253588+00	1083	1083emmanuelbelmonte	1	new through import_export	11	1
2419	2019-01-21 16:12:17.254909+00	1084	1084eduardosantiagoh	1	new through import_export	11	1
2420	2019-01-21 16:12:17.256216+00	1085	1085diegogalvan 	1	new through import_export	11	1
2421	2019-01-21 16:12:17.25749+00	1086	1086christophernaimr	1	new through import_export	11	1
2422	2019-01-21 16:12:17.25897+00	1087	1087atzinbayardisanc	1	new through import_export	11	1
2423	2019-01-21 16:12:17.260261+00	1088	1088alvarojesusvarga	1	new through import_export	11	1
2424	2019-01-21 16:12:17.261537+00	1089	1089alejandrohernand	1	new through import_export	11	1
2425	2019-01-21 16:12:17.262876+00	1090	1090selikpalaciospal	1	new through import_export	11	1
2426	2019-01-21 16:12:17.264147+00	1091	1091rubenarturomendo	1	new through import_export	11	1
2427	2019-01-21 16:12:17.265493+00	1092	1092rafaelmisaelsoto	1	new through import_export	11	1
2428	2019-01-21 16:12:17.266725+00	1093	1093nicolashernandez	1	new through import_export	11	1
2429	2019-01-21 16:12:17.268058+00	1094	1094maximilianoteran	1	new through import_export	11	1
2430	2019-01-21 16:12:17.269356+00	1095	1095leonardovazquezm	1	new through import_export	11	1
2431	2019-01-21 16:12:17.270559+00	1096	1096joseandresherrer	1	new through import_export	11	1
2432	2019-01-21 16:12:17.271771+00	1097	1097ikerlazcanomonzo	1	new through import_export	11	1
2433	2019-01-21 16:12:17.272961+00	1098	1098giancarlocamilli	1	new through import_export	11	1
2434	2019-01-21 16:12:17.274142+00	1099	1099enriquearanarent	1	new through import_export	11	1
2435	2019-01-21 16:12:17.275416+00	1100	1100diegohumbertoarr	1	new through import_export	11	1
2436	2019-01-21 16:12:17.276584+00	1101	1101carlosledezmatru	1	new through import_export	11	1
2437	2019-01-21 16:12:17.27781+00	1102	1102carlosisaacdelac	1	new through import_export	11	1
2438	2019-01-21 16:12:17.279119+00	1103	1103andredavidflores	1	new through import_export	11	1
2439	2019-01-21 16:12:17.280312+00	1104	1104alonsotadeomonca	1	new through import_export	11	1
2440	2019-01-21 16:12:17.281512+00	1105	1105alejandrobarroso	1	new through import_export	11	1
2441	2019-01-21 16:12:17.282761+00	1106	1106alanalbertobrito	1	new through import_export	11	1
2442	2019-01-21 16:12:17.28398+00	1107	1107zoefloresgracia	1	new through import_export	11	1
2443	2019-01-21 16:12:17.285247+00	1108	1108ximenamontesinos	1	new through import_export	11	1
2444	2019-01-21 16:12:17.286494+00	1109	1109valentinacamacho	1	new through import_export	11	1
2445	2019-01-21 16:12:17.287696+00	1110	1110trianafortenells	1	new through import_export	11	1
2446	2019-01-21 16:12:17.288964+00	1111	1111sofiairiaquisrod	1	new through import_export	11	1
2447	2019-01-21 16:12:17.290157+00	1112	1112roxanaledezmatru	1	new through import_export	11	1
2448	2019-01-21 16:12:17.291364+00	1113	1113renatajuareguimu	1	new through import_export	11	1
2449	2019-01-21 16:12:17.292549+00	1114	1114pamelagissetcort	1	new through import_export	11	1
2450	2019-01-21 16:12:17.293818+00	1115	1115marianalozanolag	1	new through import_export	11	1
2451	2019-01-21 16:12:17.295112+00	1116	1116lucianazanellapl	1	new through import_export	11	1
2452	2019-01-21 16:12:17.29627+00	1117	1117jimenasanchezoga	1	new through import_export	11	1
2453	2019-01-21 16:12:17.297376+00	1118	1118fridasofiamartin	1	new through import_export	11	1
2454	2019-01-21 16:12:17.298712+00	1119	1119fatimavazquezcor	1	new through import_export	11	1
2455	2019-01-21 16:12:17.299916+00	1120	1120carinapalomasern	1	new through import_export	11	1
2456	2019-01-21 16:12:17.301275+00	1121	1121camilasaidsanche	1	new through import_export	11	1
2457	2019-01-21 16:12:17.302561+00	1122	1122andreairiaquisro	1	new through import_export	11	1
2458	2019-01-21 16:12:17.303833+00	1123	1123rodrigoriverasol	1	new through import_export	11	1
2459	2019-01-21 16:12:17.305065+00	1124	1124pabloanayaalonzo	1	new through import_export	11	1
2460	2019-01-21 16:12:17.306205+00	1125	1125marioambrociooli	1	new through import_export	11	1
2461	2019-01-21 16:12:17.307417+00	1126	1126luisangel delacr	1	new through import_export	11	1
2462	2019-01-21 16:12:17.308589+00	1127	1127luisalexismartin	1	new through import_export	11	1
2463	2019-01-21 16:12:17.309754+00	1128	1128hectorestebanrod	1	new through import_export	11	1
2464	2019-01-21 16:12:17.310862+00	1129	1129gaelmartinezpeña	1	new through import_export	11	1
2465	2019-01-21 16:12:17.312065+00	1130	1130brandongiovannit	1	new through import_export	11	1
2466	2019-01-21 16:12:17.313185+00	1131	1131angelzuñigaalonz	1	new through import_export	11	1
2467	2019-01-21 16:12:17.31444+00	1132	1132anayactxyvelazqu	1	new through import_export	11	1
2468	2019-01-21 16:12:17.315727+00	1133	1133alejandrohernand	1	new through import_export	11	1
2469	2019-01-21 16:12:17.317007+00	1134	1134santiagomartinez	1	new through import_export	11	1
2470	2019-01-21 16:12:17.318224+00	1135	1135saidabrahamgomez	1	new through import_export	11	1
2471	2019-01-21 16:12:17.319325+00	1136	1136raulemmanuelcord	1	new through import_export	11	1
2472	2019-01-21 16:12:17.320422+00	1137	1137omarcuevasbalbue	1	new through import_export	11	1
2473	2019-01-21 16:12:17.321569+00	1138	1138luisjancanofuent	1	new through import_export	11	1
2474	2019-01-21 16:12:17.322692+00	1139	1139luisenriquesolor	1	new through import_export	11	1
2475	2019-01-21 16:12:17.323819+00	1140	1140leonardogabrielr	1	new through import_export	11	1
2476	2019-01-21 16:12:17.324948+00	1141	1141juanpablohernand	1	new through import_export	11	1
2477	2019-01-21 16:12:17.326047+00	1142	1142joshelinelopezhe	1	new through import_export	11	1
2478	2019-01-21 16:12:17.32715+00	1143	1143ferranmauricioku	1	new through import_export	11	1
2479	2019-01-21 16:12:17.328947+00	1144	1144diegoalvaradomej	1	new through import_export	11	1
2480	2019-01-21 16:12:17.330173+00	1145	1145axelyaelgomezher	1	new through import_export	11	1
2481	2019-01-21 16:12:17.331402+00	1146	1146aldoemilianoordu	1	new through import_export	11	1
2482	2019-01-21 16:12:17.332712+00	1147	1147pabloavilawolf	1	new through import_export	11	1
2483	2019-01-21 16:12:17.333904+00	1148	1148marcoantonioflor	1	new through import_export	11	1
2484	2019-01-21 16:12:17.335057+00	1149	1149luisarturorodrig	1	new through import_export	11	1
2485	2019-01-21 16:12:17.336129+00	1150	1150leonardosantacru	1	new through import_export	11	1
2486	2019-01-21 16:12:17.337221+00	1151	1151leonardomirandaa	1	new through import_export	11	1
2487	2019-01-21 16:12:17.338408+00	1152	1152jorgeemilioortiz	1	new through import_export	11	1
2488	2019-01-21 16:12:17.339535+00	1153	1153emiliosantiagobo	1	new through import_export	11	1
2489	2019-01-21 16:12:17.340727+00	1154	1154diegomatiasborza	1	new through import_export	11	1
2490	2019-01-21 16:12:17.341974+00	1155	1155andreszuñigamont	1	new through import_export	11	1
2491	2019-01-21 16:12:17.343123+00	1156	1156alejandrotorrese	1	new through import_export	11	1
2492	2019-01-21 16:12:17.344285+00	1157	1157alejandrosegurac	1	new through import_export	11	1
2493	2019-01-21 16:12:17.345442+00	1158	1158alanemilianotapi	1	new through import_export	11	1
2494	2019-01-21 16:12:17.34662+00	1159	1159yadielcanofuente	1	new through import_export	11	1
2495	2019-01-21 16:12:17.347835+00	1160	1160santiagohernande	1	new through import_export	11	1
2496	2019-01-21 16:12:17.348923+00	1161	1161ricardoefrenmaya	1	new through import_export	11	1
2497	2019-01-21 16:12:17.350215+00	1162	1162luiseduardocoron	1	new through import_export	11	1
2498	2019-01-21 16:12:17.351331+00	1163	1163julianfloresvill	1	new through import_export	11	1
2499	2019-01-21 16:12:17.352487+00	1164	1164gaeltorresesquiv	1	new through import_export	11	1
2500	2019-01-21 16:12:17.353657+00	1165	1165emiranuarthernan	1	new through import_export	11	1
2501	2019-01-21 16:12:17.355148+00	1166	1166emiliohernandezg	1	new through import_export	11	1
2502	2019-01-21 16:12:17.356403+00	1167	1167diegosaavedranar	1	new through import_export	11	1
2503	2019-01-21 16:12:17.357614+00	1168	1168alexgranadosgarc	1	new through import_export	11	1
2504	2019-01-21 16:12:17.358889+00	1169	1169rodrigomirandaal	1	new through import_export	11	1
2505	2019-01-21 16:12:17.361271+00	1170	1170reymundobaltazar	1	new through import_export	11	1
2506	2019-01-21 16:12:17.363165+00	1171	1171joseluissuarez 	1	new through import_export	11	1
2507	2019-01-21 16:12:17.364985+00	1172	1172joseemilioarroyo	1	new through import_export	11	1
2508	2019-01-21 16:12:17.36657+00	1173	1173josecarlosgarcia	1	new through import_export	11	1
2509	2019-01-21 16:12:17.368042+00	1174	1174jesuspaolo ramir	1	new through import_export	11	1
2510	2019-01-21 16:12:17.369238+00	1175	1175giancarloamayama	1	new through import_export	11	1
2511	2019-01-21 16:12:17.370435+00	1176	1176ernestofortino g	1	new through import_export	11	1
2512	2019-01-21 16:12:17.37169+00	1177	1177emilio medinamon	1	new through import_export	11	1
2513	2019-01-21 16:12:17.37285+00	1178	1178elianemanuelsolo	1	new through import_export	11	1
2514	2019-01-21 16:12:17.374016+00	1179	1179diegomateo nonel	1	new through import_export	11	1
2515	2019-01-21 16:12:17.375143+00	1180	1180diegogranadosber	1	new through import_export	11	1
2516	2019-01-21 16:12:17.376266+00	1181	1181diegoenriquemart	1	new through import_export	11	1
2517	2019-01-21 16:12:17.37771+00	1182	1182cesarrodrigoosna	1	new through import_export	11	1
2518	2019-01-21 16:12:17.378843+00	1183	1183brandonmartinezb	1	new through import_export	11	1
2519	2019-01-21 16:12:17.379928+00	1184	1184bilhanescobardie	1	new through import_export	11	1
2520	2019-01-21 16:12:17.381603+00	1185	1185alanrafaelgarcia	1	new through import_export	11	1
2521	2019-01-21 16:12:17.382817+00	1186	1186patriciojimeneza	1	new through import_export	11	1
2522	2019-01-21 16:12:17.384041+00	1187	1187oscargabrielsanq	1	new through import_export	11	1
2523	2019-01-21 16:12:17.385199+00	1188	1188miguel herrerahe	1	new through import_export	11	1
2524	2019-01-21 16:12:17.386384+00	1189	1189joseangelfloresg	1	new through import_export	11	1
2525	2019-01-21 16:12:17.387574+00	1190	1190hectorherreraher	1	new through import_export	11	1
2526	2019-01-21 16:12:17.388785+00	1191	1191yaelisaihidalgo 	1	new through import_export	11	1
2527	2019-01-21 16:12:17.38989+00	1192	1192ulicesabundiomen	1	new through import_export	11	1
2528	2019-01-21 16:12:17.391605+00	1193	1193patriciosantinoc	1	new through import_export	11	1
2529	2019-01-21 16:12:17.392736+00	1194	1194pablogarciavalen	1	new through import_export	11	1
2530	2019-01-21 16:12:17.393875+00	1195	1195oscaremilianonon	1	new through import_export	11	1
2531	2019-01-21 16:12:17.395052+00	1196	1196miguelemiliogonz	1	new through import_export	11	1
2532	2019-01-21 16:12:17.396272+00	1197	1197miguelangel carm	1	new through import_export	11	1
2533	2019-01-21 16:12:17.397646+00	1198	1198manuelenriquemen	1	new through import_export	11	1
2534	2019-01-21 16:12:17.398841+00	1199	1199luisangelespinos	1	new through import_export	11	1
2535	2019-01-21 16:12:17.400097+00	1200	1200jesussebastiango	1	new through import_export	11	1
2536	2019-01-21 16:12:17.401207+00	1201	1201ikersanquillilun	1	new through import_export	11	1
2537	2019-01-21 16:12:17.402594+00	1202	1202gerardoromeroram	1	new through import_export	11	1
2538	2019-01-21 16:12:17.40387+00	1203	1203emilianoromerohe	1	new through import_export	11	1
2539	2019-01-21 16:12:17.405109+00	1204	1204emilianohernande	1	new through import_export	11	1
2540	2019-01-21 16:12:17.406426+00	1205	1205cesaryosielmarti	1	new through import_export	11	1
2541	2019-01-21 16:12:17.407601+00	1206	1206santiagolozanowo	1	new through import_export	11	1
2542	2019-01-21 16:12:17.408793+00	1207	1207samuelmedinasanc	1	new through import_export	11	1
2543	2019-01-21 16:12:17.41005+00	1208	1208samuelmaximilian	1	new through import_export	11	1
2544	2019-01-21 16:12:17.411339+00	1209	1209joseeduardopazga	1	new through import_export	11	1
2545	2019-01-21 16:12:17.412569+00	1210	1210huberescobardieg	1	new through import_export	11	1
2546	2019-01-21 16:12:17.413843+00	1211	1211emanuelromeroher	1	new through import_export	11	1
2547	2019-01-21 16:12:17.415085+00	1212	1212cristianurielsua	1	new through import_export	11	1
2548	2019-01-21 16:12:17.416258+00	1213	1213brunosalquerorom	1	new through import_export	11	1
2549	2019-01-21 16:12:17.417495+00	1214	1214yaninayaretzibol	1	new through import_export	11	1
2550	2019-01-21 16:12:17.419257+00	1215	1215victoriachavezhe	1	new through import_export	11	1
2551	2019-01-21 16:12:17.420618+00	1216	1216sophiasaraisanqu	1	new through import_export	11	1
2552	2019-01-21 16:12:17.421932+00	1217	1217sophia salinasla	1	new through import_export	11	1
2553	2019-01-21 16:12:17.423241+00	1218	1218pamelayaleny mar	1	new through import_export	11	1
2554	2019-01-21 16:12:17.424552+00	1219	1219marthapatriciaca	1	new through import_export	11	1
2555	2019-01-21 16:12:17.425766+00	1220	1220mariajose carmon	1	new through import_export	11	1
2556	2019-01-21 16:12:17.427036+00	1221	1221mariafernanda ju	1	new through import_export	11	1
2557	2019-01-21 16:12:17.428424+00	1222	1222joshelinelopezhe	1	new through import_export	11	1
2558	2019-01-21 16:12:17.429655+00	1223	1223fatima pascualfr	1	new through import_export	11	1
2559	2019-01-21 16:12:17.430863+00	1224	1224etnisarahialvare	1	new through import_export	11	1
2560	2019-01-21 16:12:17.432245+00	1225	1225alineyuleymibola	1	new through import_export	11	1
2561	2019-01-21 16:23:10.765285+00	1226	director	1		8	1
2562	2019-01-21 18:26:35.617655+00	1227	profesordemovalle	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2563	2019-01-21 18:52:33.226987+00	1228	dtagustin	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2564	2019-01-21 18:57:04.090929+00	1229	rodrigoromano	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2565	2019-01-21 18:58:10.964925+00	1230	danielpacheco	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2566	2019-01-21 19:00:14.336054+00	1231	nuryruiz	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2567	2019-01-21 19:01:13.544457+00	1232	kevinmaldonado	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2568	2019-01-21 19:02:48.547896+00	1233	williammiguelcalde	2	Modifica escuela,cede,fecha_de_nacimiento y categorias.	10	1
2569	2019-01-21 19:03:04.454442+00	1233	williammiguelcalde	2	Modifica categorias.	10	1
2570	2019-01-21 19:05:56.412477+00	1234	carlossanchezrodri	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2571	2019-01-21 19:11:13.910437+00	1235	antoniomartinlopez	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2572	2019-01-21 19:12:45.234592+00	1236	eduardorodriguez	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2573	2019-01-21 19:25:25.048032+00	1237	yanik	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2574	2019-01-21 19:26:42.534287+00	1238	jorge	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2575	2019-01-21 19:27:01.217746+00	1238	jorge	2	Modifica categorias.	10	1
2576	2019-01-21 19:28:03.577366+00	1239	demo	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2577	2019-01-21 19:30:01.868766+00	1240	emanuel	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2578	2019-01-21 19:31:05.449888+00	1240	emanuel	2	Modifica categorias.	10	1
2579	2019-01-21 19:34:38.773513+00	1242	directorfluminense	2	Modifica escuela,cede y fecha_de_nacimiento.	8	1
2580	2019-01-21 19:38:21.768377+00	1243	directorinstitutomex	2	Modifica escuela,cede y fecha_de_nacimiento.	8	1
2581	2019-01-21 19:46:17.335732+00	1241	luis	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2582	2019-01-21 20:01:32.558835+00	1245	dibriestriaraque	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2583	2019-01-21 20:03:01.402593+00	1246	sofiasandi	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2584	2019-01-21 20:04:25.748558+00	1247	enriquedelapaz	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2585	2019-01-21 20:05:27.034353+00	1248	miltonlucio	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2586	2019-01-21 20:07:01.229676+00	1249	pablozuñiga	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2587	2019-01-21 20:08:05.828949+00	1250	gabrieladelarosa	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2588	2019-01-21 20:10:14.004046+00	1251	maxmarín	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2589	2019-01-21 20:10:33.751184+00	3	InstitutoMexico	2	Modifica nombre.	15	1
2590	2019-01-21 20:12:53.064044+00	1252	ramonvilla	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2591	2019-01-21 20:14:41.677563+00	1253	Rubenmontesdeoca	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2592	2019-01-21 20:16:07.236611+00	1254	eduardojaviercalde	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2593	2019-01-21 20:17:39.068819+00	1255	uriosteguiballezah	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2594	2019-01-21 20:19:12.89672+00	1256	ricardocariño	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2595	2019-01-21 20:24:47.579018+00	1257	luismiguelcohen	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2596	2019-01-21 20:27:14.937238+00	4	NidoAguila	2	Modifica nombre.	15	1
2597	2019-01-21 20:27:28.551274+00	1258	martinmiranda	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2598	2019-01-21 20:28:25.349362+00	1259	juanmorales	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2599	2019-01-21 20:29:38.756501+00	1260	salvadormedina	2	Modifica categorias.	10	1
2600	2019-01-21 20:29:49.667672+00	1260	salvadormedina	2	Modifica escuela,cede,fecha_de_nacimiento y diciplina.	10	1
2601	2019-01-21 20:30:46.506608+00	1261	bernardothome	2	Modifica escuela,cede,fecha_de_nacimiento,diciplina y categorias.	10	1
2602	2019-01-22 15:53:45.958933+00	1	2019-01-22 al 2019-01-29	1		21	1
2603	2019-01-22 15:54:00.829837+00	1	Velocidad - Borussia	1		23	1
2604	2019-01-22 15:55:39.201119+00	1	graham	1		10	1
2605	2019-01-22 17:01:18.331829+00	1262	laura0216	1	new through import_export	6	1
2606	2019-01-22 17:01:18.334421+00	1263	isilva0326	1	new through import_export	6	1
2607	2019-01-22 17:01:18.336469+00	1264	ggarcia0863	1	new through import_export	6	1
2608	2019-01-22 17:01:18.338257+00	1265	ebustamante0317	1	new through import_export	6	1
2609	2019-01-22 17:01:18.340086+00	1266	framirez0497	1	new through import_export	6	1
2610	2019-01-22 17:01:18.341794+00	1267	raymundo0840	1	new through import_export	6	1
2611	2019-01-22 17:01:18.343425+00	1268	mhernandez0626	1	new through import_export	6	1
2612	2019-01-22 17:01:18.345161+00	1269	jlopez0034	1	new through import_export	6	1
2613	2019-01-22 17:01:18.346856+00	1270	amejia0915	1	new through import_export	6	1
2614	2019-01-22 17:01:18.348582+00	1271	ggarcia0753	1	new through import_export	6	1
2615	2019-01-22 17:01:18.350268+00	1272	colvera0577	1	new through import_export	6	1
2616	2019-01-22 17:01:18.352279+00	1273	kgomez0918	1	new through import_export	6	1
2617	2019-01-22 17:01:18.354079+00	1274	ndavalos0141	1	new through import_export	6	1
2618	2019-01-22 17:01:18.355868+00	1275	dcastillo0987	1	new through import_export	6	1
2619	2019-01-22 17:01:18.357517+00	1276	mflores0397	1	new through import_export	6	1
2620	2019-01-22 17:01:18.35955+00	1277	cflores0309	1	new through import_export	6	1
2621	2019-01-22 17:01:18.361371+00	1278	mcisnerosa0156	1	new through import_export	6	1
2622	2019-01-22 17:01:18.362988+00	1279	acaldino0969	1	new through import_export	6	1
2623	2019-01-22 17:01:18.364484+00	1280	acosta0597	1	new through import_export	6	1
2624	2019-01-22 17:40:41.222869+00	1262	laura0216	2	update through import_export	6	1
2625	2019-01-22 17:40:41.303163+00	1263	isilva0326	2	update through import_export	6	1
2626	2019-01-22 17:40:41.380601+00	1264	ggarcia0863	2	update through import_export	6	1
2627	2019-01-22 17:40:41.433047+00	1265	ebustamante0317	2	update through import_export	6	1
2628	2019-01-22 17:40:41.43524+00	1266	framirez0497	2	update through import_export	6	1
2629	2019-01-22 17:40:41.436813+00	1267	raymundo0840	2	update through import_export	6	1
2630	2019-01-22 17:40:41.438758+00	1268	mhernandez0626	2	update through import_export	6	1
2631	2019-01-22 17:40:41.440167+00	1269	jlopez0034	2	update through import_export	6	1
2632	2019-01-22 17:40:41.44148+00	1270	amejia0915	2	update through import_export	6	1
2633	2019-01-22 17:40:41.442943+00	1271	ggarcia0753	2	update through import_export	6	1
2634	2019-01-22 17:40:41.444265+00	1272	colvera0577	2	update through import_export	6	1
2635	2019-01-22 17:40:41.445999+00	1273	kgomez0918	2	update through import_export	6	1
2636	2019-01-22 17:40:41.447463+00	1274	ndavalos0141	2	update through import_export	6	1
2637	2019-01-22 17:40:41.448829+00	1275	dcastillo0987	2	update through import_export	6	1
2638	2019-01-22 17:40:41.450156+00	1276	mflores0397	2	update through import_export	6	1
2639	2019-01-22 17:40:41.451696+00	1277	cflores0309	2	update through import_export	6	1
2640	2019-01-22 17:40:41.452916+00	1278	mcisnerosa0156	2	update through import_export	6	1
2641	2019-01-22 17:40:41.454117+00	1279	acaldino0969	2	update through import_export	6	1
2642	2019-01-22 17:40:41.455283+00	1280	acosta0597	2	update through import_export	6	1
2643	2019-01-22 19:40:49.171055+00	5	Mazenod	2	Modifica logo,color_principal y color_secundario.	15	1
2644	2019-01-22 19:42:00.375215+00	5	Mazenod	2	Modifica color_secundario.	15	1
2645	2019-01-22 19:47:56.251022+00	5	Mazenod	2	Modifica logo.	15	1
2646	2019-01-22 21:11:52.98598+00	1281	paman81	1	new through import_export	6	1
2647	2019-01-22 21:11:52.988063+00	1282	jbern82	1	new through import_export	6	1
2648	2019-01-22 21:11:52.989373+00	1283	icort83	1	new through import_export	6	1
2649	2019-01-22 21:11:52.990712+00	1284	eeste84	1	new through import_export	6	1
2650	2019-01-22 21:11:52.992132+00	1285	lhera85	1	new through import_export	6	1
2651	2019-01-22 21:11:52.993609+00	1286	lisla86	1	new through import_export	6	1
2652	2019-01-22 21:11:52.995037+00	1287	bjime87	1	new through import_export	6	1
2653	2019-01-22 21:11:52.996263+00	1288	mmarg88	1	new through import_export	6	1
2654	2019-01-22 21:11:52.997651+00	1289	mriva89	1	new through import_export	6	1
2655	2019-01-22 21:11:52.998797+00	1290	msimo90	1	new through import_export	6	1
2658	2019-01-22 21:11:53.002393+00	1293	acoro93	1	new through import_export	6	1
2659	2019-01-22 21:11:53.003543+00	1294	gezet94	1	new through import_export	6	1
2660	2019-01-22 21:11:53.004915+00	1295	rlome95	1	new through import_export	6	1
2661	2019-01-22 21:11:53.006218+00	1296	pluzu96	1	new through import_export	6	1
2662	2019-01-22 21:11:53.007618+00	1297	msave97	1	new through import_export	6	1
2663	2019-01-22 21:11:53.008819+00	1298	borti98	1	new through import_export	6	1
2664	2019-01-22 21:11:53.010163+00	1299	jbern99	1	new through import_export	6	1
2665	2019-01-22 21:11:53.011349+00	1300	pgarc00	1	new through import_export	6	1
2666	2019-01-22 21:11:53.012632+00	1301	egome01	1	new through import_export	6	1
2667	2019-01-22 21:11:53.013836+00	1302	jmaya02	1	new through import_export	6	1
2668	2019-01-22 21:11:53.015091+00	1303	mrami03	1	new through import_export	6	1
2669	2019-01-22 21:11:53.016225+00	1304	asanc04	1	new through import_export	6	1
2670	2019-01-22 21:11:53.017486+00	1305	scecc05	1	new through import_export	6	1
2671	2019-01-22 21:11:53.018666+00	1306	smald06	1	new through import_export	6	1
2672	2019-01-22 21:11:53.019703+00	1307	 diaz07	1	new through import_export	6	1
2673	2019-01-22 21:11:53.020856+00	1308	lmach08	1	new through import_export	6	1
2674	2019-01-22 21:11:53.022066+00	1309	borti09	1	new through import_export	6	1
2675	2019-01-22 21:11:53.023195+00	1310	mgonz10	1	new through import_export	6	1
2676	2019-01-22 21:11:53.024476+00	1311	jbern11	1	new through import_export	6	1
2677	2019-01-22 21:11:53.025817+00	1312	scord12	1	new through import_export	6	1
2678	2019-01-22 21:11:53.026986+00	1313	chern13	1	new through import_export	6	1
2679	2019-01-22 21:11:53.028133+00	1314	ralco14	1	new through import_export	6	1
2680	2019-01-22 21:11:53.029259+00	1315	rde l15	1	new through import_export	6	1
2681	2019-01-22 21:11:53.030442+00	1316	jcarm16	1	new through import_export	6	1
2682	2019-01-22 21:11:53.031527+00	1317	scard17	1	new through import_export	6	1
2683	2019-01-22 21:11:53.032612+00	1318	abece18	1	new through import_export	6	1
2684	2019-01-22 21:11:53.033873+00	1319	rcerv19	1	new through import_export	6	1
2685	2019-01-22 21:11:53.035265+00	1320	mcuer20	1	new through import_export	6	1
2686	2019-01-22 21:11:53.03642+00	1321	borti21	1	new through import_export	6	1
2687	2019-01-22 21:11:53.037803+00	1322	dgerm22	1	new through import_export	6	1
2688	2019-01-22 21:11:53.039209+00	1323	cisla23	1	new through import_export	6	1
2689	2019-01-22 21:11:53.040474+00	1324	garmi24	1	new through import_export	6	1
2690	2019-01-22 21:11:53.041838+00	1325	ebarr25	1	new through import_export	6	1
2691	2019-01-22 21:11:53.043107+00	1326	gde l26	1	new through import_export	6	1
2692	2019-01-22 21:11:53.044394+00	1327	jgome27	1	new through import_export	6	1
2693	2019-01-22 21:11:53.045967+00	1328	pmaya28	1	new through import_export	6	1
2694	2019-01-22 21:11:53.047304+00	1329	emaza29	1	new through import_export	6	1
2695	2019-01-22 21:11:53.048446+00	1330	rmera30	1	new through import_export	6	1
2696	2019-01-22 21:11:53.049569+00	1331	emoji31	1	new through import_export	6	1
2697	2019-01-22 21:11:53.050728+00	1332	mflor32	1	new through import_export	6	1
2698	2019-01-22 21:11:53.051843+00	1333	azela33	1	new through import_export	6	1
2699	2019-01-22 21:11:53.052993+00	1334	pmaza34	1	new through import_export	6	1
2700	2019-01-22 21:11:53.054186+00	1335	dgonz35	1	new through import_export	6	1
2701	2019-01-22 21:11:53.055402+00	1336	jbord36	1	new through import_export	6	1
2702	2019-01-22 21:11:53.056474+00	1337	bkoch37	1	new through import_export	6	1
2703	2019-01-22 21:11:53.05768+00	1338	ecanc38	1	new through import_export	6	1
2704	2019-01-22 21:11:53.058945+00	1339	agarc39	1	new through import_export	6	1
2705	2019-01-22 21:11:53.060092+00	1340	agarc40	1	new through import_export	6	1
2706	2019-01-22 21:11:53.061258+00	1341	dmalt41	1	new through import_export	6	1
2707	2019-01-22 21:11:53.062568+00	1342	frodr42	1	new through import_export	6	1
2708	2019-01-22 21:11:53.063955+00	1343	ealma43	1	new through import_export	6	1
2709	2019-01-22 21:11:53.065101+00	1344	pgerm44	1	new through import_export	6	1
2710	2019-01-22 21:11:53.066236+00	1345	ggedo45	1	new through import_export	6	1
2711	2019-01-22 21:11:53.067403+00	1346	mlope46	1	new through import_export	6	1
2712	2019-01-22 21:11:53.068703+00	1347	fzama47	1	new through import_export	6	1
2713	2019-01-22 21:11:53.069891+00	1348	aflor48	1	new through import_export	6	1
2714	2019-01-22 21:11:53.071175+00	1349	mmata49	1	new through import_export	6	1
2715	2019-01-22 21:11:53.07235+00	1350	ptorn50	1	new through import_export	6	1
2716	2019-01-22 21:11:53.073746+00	1351	mjime51	1	new through import_export	6	1
2717	2019-01-22 21:11:53.07519+00	1352	mgome52	1	new through import_export	6	1
2718	2019-01-22 21:11:53.076663+00	1353	dkell53	1	new through import_export	6	1
2719	2019-01-22 21:11:53.077814+00	1354	acorn54	1	new through import_export	6	1
2720	2019-01-22 21:11:53.079149+00	1355	cberu55	1	new through import_export	6	1
2721	2019-01-22 21:11:53.080319+00	1356	ironq56	1	new through import_export	6	1
2722	2019-01-22 21:11:53.081707+00	1357	ecuer57	1	new through import_export	6	1
2723	2019-01-22 21:11:53.08311+00	1358	egall58	1	new through import_export	6	1
2724	2019-01-22 21:11:53.084374+00	1359	dbris59	1	new through import_export	6	1
2725	2019-01-22 21:11:53.085836+00	1360	pguzm60	1	new through import_export	6	1
2726	2019-01-22 21:11:53.087258+00	1361	fvira61	1	new through import_export	6	1
2727	2019-01-22 21:11:53.088385+00	1362	dsan 62	1	new through import_export	6	1
2728	2019-01-22 21:11:53.089564+00	1363	erubi63	1	new through import_export	6	1
2729	2019-01-22 21:11:53.090751+00	1364	msalo64	1	new through import_export	6	1
2730	2019-01-22 21:11:53.091829+00	1365	avela65	1	new through import_export	6	1
2731	2019-01-22 21:11:53.093127+00	1366	ragua66	1	new through import_export	6	1
2732	2019-01-22 21:11:53.094558+00	1367	lleal67	1	new through import_export	6	1
2733	2019-01-22 21:11:53.095716+00	1368	mpere68	1	new through import_export	6	1
2734	2019-01-22 21:11:53.096912+00	1369	dayal69	1	new through import_export	6	1
2735	2019-01-22 21:11:53.098105+00	1370	dayal70	1	new through import_export	6	1
2736	2019-01-22 21:11:53.099291+00	1371	rgran71	1	new through import_export	6	1
2737	2019-01-22 21:11:53.100443+00	1372	wcora72	1	new through import_export	6	1
2738	2019-01-22 21:11:53.101578+00	1373	dgonz73	1	new through import_export	6	1
2739	2019-01-22 21:11:53.102927+00	1374	paraq74	1	new through import_export	6	1
2740	2019-01-22 21:11:53.104103+00	1375	malan75	1	new through import_export	6	1
2741	2019-01-22 21:11:53.105261+00	1376	jpere76	1	new through import_export	6	1
2742	2019-01-22 21:11:53.1064+00	1377	achav77	1	new through import_export	6	1
2743	2019-01-22 21:11:53.107578+00	1378	erent78	1	new through import_export	6	1
2744	2019-01-22 21:11:53.108688+00	1379	lsolo79	1	new through import_export	6	1
2745	2019-01-22 21:11:53.109978+00	1380	edel 80	1	new through import_export	6	1
2746	2019-01-22 21:11:53.111123+00	1381	falzu81	1	new through import_export	6	1
2747	2019-01-22 21:11:53.112405+00	1382	sfern82	1	new through import_export	6	1
2748	2019-01-22 21:11:53.113607+00	1383	eagui83	1	new through import_export	6	1
2749	2019-01-22 21:11:53.114889+00	1384	jmore84	1	new through import_export	6	1
2750	2019-01-22 21:11:53.116069+00	1385	cguti85	1	new through import_export	6	1
2751	2019-01-22 21:11:53.117495+00	1386	pjime86	1	new through import_export	6	1
2752	2019-01-22 21:11:53.118711+00	1387	rzara87	1	new through import_export	6	1
2753	2019-01-22 21:11:53.119904+00	1388	amald88	1	new through import_export	6	1
2754	2019-01-22 21:11:53.121394+00	1389	jmart89	1	new through import_export	6	1
2755	2019-01-22 21:11:53.122726+00	1390	drami90	1	new through import_export	6	1
2756	2019-01-22 21:11:53.124003+00	1391	dlope91	1	new through import_export	6	1
2757	2019-01-22 21:11:53.125215+00	1392	pmatt92	1	new through import_export	6	1
2758	2019-01-22 21:11:53.126402+00	1393	iorti93	1	new through import_export	6	1
2759	2019-01-22 21:11:53.127582+00	1394	davel94	1	new through import_export	6	1
2760	2019-01-22 21:11:53.128923+00	1395	pgonz95	1	new through import_export	6	1
2761	2019-01-22 21:11:53.130113+00	1396	arodr96	1	new through import_export	6	1
2762	2019-01-22 21:11:53.13139+00	1397	dgarc97	1	new through import_export	6	1
2763	2019-01-22 21:11:53.13283+00	1398	ahoff98	1	new through import_export	6	1
2764	2019-01-22 21:11:53.134123+00	1399	sbern99	1	new through import_export	6	1
2765	2019-01-22 21:11:53.135335+00	1400	emaga00	1	new through import_export	6	1
2766	2019-01-22 21:11:53.13655+00	1401	acort01	1	new through import_export	6	1
2767	2019-01-22 21:11:53.138058+00	1402	aeche02	1	new through import_export	6	1
2768	2019-01-22 21:11:53.139236+00	1403	mmane03	1	new through import_export	6	1
2769	2019-01-22 21:11:53.140376+00	1404	aagui04	1	new through import_export	6	1
2770	2019-01-22 21:11:53.141599+00	1405	falzu05	1	new through import_export	6	1
2771	2019-01-22 21:11:53.143002+00	1406	svale06	1	new through import_export	6	1
2772	2019-01-22 21:11:53.144142+00	1407	asolo07	1	new through import_export	6	1
2773	2019-01-22 21:11:53.145342+00	1408	sterc08	1	new through import_export	6	1
2774	2019-01-22 21:11:53.146512+00	1409	xloza09	1	new through import_export	6	1
2775	2019-01-22 21:11:53.147714+00	1410	rmuño10	1	new through import_export	6	1
2776	2019-01-22 21:11:53.149156+00	1411	rdelg11	1	new through import_export	6	1
2777	2019-01-22 21:11:53.150402+00	1412	acand12	1	new through import_export	6	1
2778	2019-01-22 21:11:53.151832+00	1413	asauv13	1	new through import_export	6	1
2779	2019-01-22 21:11:53.153292+00	1414	acorr14	1	new through import_export	6	1
2780	2019-01-22 21:11:53.154476+00	1415	fbari15	1	new through import_export	6	1
2781	2019-01-22 21:11:53.155575+00	1416	jnava16	1	new through import_export	6	1
2782	2019-01-22 21:11:53.156718+00	1417	bjime17	1	new through import_export	6	1
2783	2019-01-22 21:11:53.157876+00	1418	jbern18	1	new through import_export	6	1
2784	2019-01-22 21:11:53.15917+00	1419	ccald19	1	new through import_export	6	1
2785	2019-01-22 21:11:53.16028+00	1420	afern20	1	new through import_export	6	1
2786	2019-01-22 21:11:53.16153+00	1421	bjime21	1	new through import_export	6	1
2787	2019-01-22 21:11:53.162753+00	1422	jnava22	1	new through import_export	6	1
2788	2019-01-22 21:11:53.163973+00	1423	morte23	1	new through import_export	6	1
2789	2019-01-22 21:11:53.165205+00	1424	tpala24	1	new through import_export	6	1
2790	2019-01-22 21:11:53.166644+00	1425	asegu25	1	new through import_export	6	1
2791	2019-01-22 21:11:53.167898+00	1426	turib26	1	new through import_export	6	1
2792	2019-01-22 21:11:53.169412+00	1427	pguzm27	1	new through import_export	6	1
2793	2019-01-22 21:11:53.170646+00	1428	dhern28	1	new through import_export	6	1
2794	2019-01-22 21:11:53.171817+00	1429	lmont29	1	new through import_export	6	1
2795	2019-01-22 21:11:53.17297+00	1430	ploza30	1	new through import_export	6	1
2796	2019-01-22 21:11:53.174285+00	1431	anava31	1	new through import_export	6	1
2797	2019-01-22 21:11:53.175371+00	1432	lrey 32	1	new through import_export	6	1
2798	2019-01-22 21:11:53.176582+00	1433	jgome33	1	new through import_export	6	1
2799	2019-01-22 21:11:53.178016+00	1434	iblan34	1	new through import_export	6	1
2800	2019-01-22 21:11:53.179154+00	1435	lmach35	1	new through import_export	6	1
2801	2019-01-22 21:11:53.180364+00	1436	srodr36	1	new through import_export	6	1
2802	2019-01-22 21:11:53.181803+00	1437	rprat37	1	new through import_export	6	1
2803	2019-01-22 21:11:53.182984+00	1438	vguzm38	1	new through import_export	6	1
2804	2019-01-22 21:11:53.184312+00	1439	lhern39	1	new through import_export	6	1
2805	2019-01-22 21:11:53.185504+00	1440	lisla40	1	new through import_export	6	1
2806	2019-01-22 21:11:53.186712+00	1441	vorti41	1	new through import_export	6	1
2807	2019-01-22 21:11:53.187902+00	1442	jbern42	1	new through import_export	6	1
2808	2019-01-22 21:11:53.189141+00	1443	aespe43	1	new through import_export	6	1
2809	2019-01-22 21:11:53.19043+00	1444	mespe44	1	new through import_export	6	1
2810	2019-01-22 21:11:53.191686+00	1445	roliv45	1	new through import_export	6	1
2811	2019-01-22 21:11:53.193226+00	1446	vorte46	1	new through import_export	6	1
2812	2019-01-22 21:11:53.194739+00	1447	ebarr47	1	new through import_export	6	1
2813	2019-01-22 21:11:53.196105+00	1448	jland48	1	new through import_export	6	1
2814	2019-01-22 21:11:53.197233+00	1449	dpere49	1	new through import_export	6	1
2815	2019-01-22 21:11:53.198376+00	1450	lvere50	1	new through import_export	6	1
2816	2019-01-22 21:11:53.199596+00	1451	apiza51	1	new through import_export	6	1
2817	2019-01-22 21:11:53.200838+00	1452	apiza52	1	new through import_export	6	1
2818	2019-01-22 21:11:53.202158+00	1453	prent53	1	new through import_export	6	1
2819	2019-01-22 21:11:53.203276+00	1454	stole54	1	new through import_export	6	1
2820	2019-01-22 21:11:53.204529+00	1455	ebarr55	1	new through import_export	6	1
2821	2019-01-22 21:11:53.205933+00	1456	wfeli56	1	new through import_export	6	1
2822	2019-01-22 21:11:53.207114+00	1457	dpere57	1	new through import_export	6	1
2823	2019-01-22 21:11:53.208306+00	1458	jbaut58	1	new through import_export	6	1
2824	2019-01-22 21:11:53.209561+00	1459	dsanc59	1	new through import_export	6	1
2825	2019-01-22 21:11:53.210872+00	1460	egall60	1	new through import_export	6	1
2826	2019-01-22 21:11:53.211966+00	1461	sguzm61	1	new through import_export	6	1
2827	2019-01-22 21:11:53.213106+00	1462	mlope62	1	new through import_export	6	1
2828	2019-01-22 21:11:53.214335+00	1463	jolve63	1	new through import_export	6	1
2829	2019-01-22 21:11:53.215626+00	1464	apine64	1	new through import_export	6	1
2830	2019-01-22 21:11:53.21692+00	1465	mcerv65	1	new through import_export	6	1
2831	2019-01-22 21:11:53.218312+00	1466	nport66	1	new through import_export	6	1
2832	2019-01-22 21:11:53.219583+00	1467	ccoli67	1	new through import_export	6	1
2833	2019-01-22 21:11:53.220784+00	1468	xmuño68	1	new through import_export	6	1
2834	2019-01-22 21:11:53.221886+00	1469	acorr69	1	new through import_export	6	1
2835	2019-01-22 21:11:53.223128+00	1470	aguti70	1	new through import_export	6	1
2836	2019-01-22 21:11:53.224304+00	1471	rloza71	1	new through import_export	6	1
2837	2019-01-22 21:11:53.225469+00	1472	xloza72	1	new through import_export	6	1
2838	2019-01-22 21:11:53.226571+00	1473	fport73	1	new through import_export	6	1
2839	2019-01-22 21:11:53.227745+00	1474	sfere74	1	new through import_export	6	1
2840	2019-01-22 21:11:53.228962+00	1475	vfern75	1	new through import_export	6	1
2841	2019-01-22 21:11:53.230201+00	1476	randr76	1	new through import_export	6	1
2842	2019-01-22 21:11:53.231317+00	1477	nhern77	1	new through import_export	6	1
2843	2019-01-22 21:11:53.232727+00	1478	ccoli78	1	new through import_export	6	1
2844	2019-01-22 21:11:53.233838+00	1479	xmuño79	1	new through import_export	6	1
2845	2019-01-22 21:11:53.235046+00	1480	acorr80	1	new through import_export	6	1
2846	2019-01-22 21:11:53.236106+00	1481	aguti81	1	new through import_export	6	1
2847	2019-01-22 21:11:53.237172+00	1482	rloza82	1	new through import_export	6	1
2848	2019-01-22 21:11:53.2384+00	1483	xloza83	1	new through import_export	6	1
2849	2019-01-22 21:11:53.239535+00	1484	fport84	1	new through import_export	6	1
2850	2019-01-22 21:11:53.24068+00	1485	sfere85	1	new through import_export	6	1
2851	2019-01-22 21:11:53.241919+00	1486	vfern86	1	new through import_export	6	1
2852	2019-01-22 21:11:53.243351+00	1487	arose87	1	new through import_export	6	1
2853	2019-01-22 21:11:53.244727+00	1488	nhern88	1	new through import_export	6	1
2854	2019-01-22 21:11:53.245906+00	1489	jparr89	1	new through import_export	6	1
2855	2019-01-22 21:11:53.247249+00	1490	iruis90	1	new through import_export	6	1
2856	2019-01-22 21:11:53.248406+00	1491	jorte91	1	new through import_export	6	1
2857	2019-01-22 21:11:53.249809+00	1492	ipark92	1	new through import_export	6	1
2858	2019-01-22 21:11:53.250935+00	1493	aalan93	1	new through import_export	6	1
2859	2019-01-22 21:11:53.252457+00	1494	dcova94	1	new through import_export	6	1
2860	2019-01-22 21:11:53.253775+00	1495	arive95	1	new through import_export	6	1
2861	2019-01-22 21:11:53.255062+00	1496	rrive96	1	new through import_export	6	1
2862	2019-01-22 21:11:53.256262+00	1497	mguti97	1	new through import_export	6	1
2863	2019-01-22 21:11:53.257698+00	1498	nzuñi98	1	new through import_export	6	1
2864	2019-01-22 21:11:53.258995+00	1499	sroja99	1	new through import_export	6	1
2865	2019-01-22 21:11:53.260167+00	1500	jbern00	1	new through import_export	6	1
2866	2019-01-22 21:11:53.261428+00	1501	afern01	1	new through import_export	6	1
2867	2019-01-22 21:11:53.262642+00	1502	tpala02	1	new through import_export	6	1
2868	2019-01-22 21:11:53.263917+00	1503	eurib03	1	new through import_export	6	1
2869	2019-01-22 21:11:53.265038+00	1504	mvill04	1	new through import_export	6	1
2870	2019-01-22 21:11:53.266231+00	1505	eurib05	1	new through import_export	6	1
2871	2019-01-22 21:11:53.267501+00	1506	finfa06	1	new through import_export	6	1
2872	2019-01-22 21:11:53.268655+00	1507	cguzm07	1	new through import_export	6	1
2873	2019-01-22 21:11:53.269777+00	1508	imaza08	1	new through import_export	6	1
2874	2019-01-22 21:11:53.271045+00	1509	nherr09	1	new through import_export	6	1
2875	2019-01-22 21:11:53.27217+00	1510	lde l10	1	new through import_export	6	1
2876	2019-01-22 21:11:53.273422+00	1511	pagui11	1	new through import_export	6	1
2877	2019-01-22 21:11:53.274579+00	1512	cagui12	1	new through import_export	6	1
2878	2019-01-23 01:05:30.584382+00	1513	mirre13	1	new through import_export	6	1
2879	2019-01-23 01:05:30.58773+00	1514	cagui13	1	new through import_export	6	1
2880	2019-01-23 01:05:30.590123+00	1515	xejia15	1	new through import_export	6	1
2881	2019-01-23 01:05:30.592347+00	1516	cagui14	1	new through import_export	6	1
2882	2019-01-23 01:05:30.594476+00	1517	ryala17	1	new through import_export	6	1
2883	2019-01-23 01:05:30.596582+00	1518	cagui15	1	new through import_export	6	1
2884	2019-01-23 01:05:30.598397+00	1519	varro19	1	new through import_export	6	1
2885	2019-01-23 01:05:30.600246+00	1520	cagui16	1	new through import_export	6	1
2886	2019-01-23 01:05:30.602169+00	1521	aález21	1	new through import_export	6	1
2887	2019-01-23 01:05:30.603579+00	1522	cagui17	1	new through import_export	6	1
2888	2019-01-23 01:05:30.605002+00	1523	arcía23	1	new through import_export	6	1
2889	2019-01-23 01:05:30.606633+00	1524	cagui18	1	new through import_export	6	1
2890	2019-01-23 01:05:30.608205+00	1525	pelli25	1	new through import_export	6	1
2891	2019-01-23 01:05:30.609736+00	1526	cagui19	1	new through import_export	6	1
2892	2019-01-23 01:05:30.611163+00	1527	xzano27	1	new through import_export	6	1
2893	2019-01-23 01:05:30.61914+00	1528	cagui20	1	new through import_export	6	1
2894	2019-01-24 02:56:06.305859+00	1	Trabajo en Equipo 1 - Borussia	1		24	1
2895	2019-01-24 03:01:40.324425+00	2	2019-01-23 al 2019-01-29	1		21	1
2896	2019-01-24 03:02:30.475033+00	2	Trabajo en Equipo - Borussia	1		24	1
2897	2019-01-24 03:13:49.600703+00	2	2019-01-23 al 2019-01-29	3		21	1
2898	2019-01-24 03:14:37.887546+00	3	2019-01-23 al 2019-01-29	1		21	1
2899	2019-01-24 03:15:28.677262+00	3	Trabajo en Equipo - Borussia	1		24	1
2900	2019-01-24 03:17:34.768943+00	2	Resistencia - Borussia	1		23	1
2901	2019-01-24 06:17:06.105453+00	1529	adriana0365	1	new through import_export	6	1
2902	2019-01-24 06:17:06.107601+00	1530	david0232	1	new through import_export	6	1
2903	2019-01-24 06:17:06.109362+00	1531	gbautistac0283	1	new through import_export	6	1
2904	2019-01-24 06:17:06.111548+00	1532	gustavo0259	1	new through import_export	6	1
2905	2019-01-24 06:17:06.11304+00	1533	hhuerta0645	1	new through import_export	6	1
2906	2019-01-24 06:17:06.114398+00	1534	irvin0255	1	new through import_export	6	1
2907	2019-01-24 06:17:06.115827+00	1535	ienriquez0422	1	new through import_export	6	1
2908	2019-01-24 06:17:06.117267+00	1536	jgonzalez0519	1	new through import_export	6	1
2909	2019-01-24 06:17:06.118565+00	1537	carlos0275	1	new through import_export	6	1
2910	2019-01-24 06:17:06.119878+00	1538	luis0922	1	new through import_export	6	1
2911	2019-01-24 06:17:06.12146+00	1539	mcovarrubias0734	1	new through import_export	6	1
2912	2019-01-24 06:17:06.122798+00	1540	mperez0278	1	new through import_export	6	1
2913	2019-01-24 06:17:06.124141+00	1541	ramirez0844	1	new through import_export	6	1
2914	2019-01-24 06:17:06.125481+00	1542	rvalor0359	1	new through import_export	6	1
2915	2019-01-24 06:34:13.126903+00	1227	demovalle	2	update through import_export	6	1
2916	2019-01-24 06:34:13.129482+00	1228	agustinbvb	2	update through import_export	6	1
2917	2019-01-24 06:34:13.131128+00	1229	rodrigobvb	2	update through import_export	6	1
2918	2019-01-24 06:34:13.132666+00	1230	danielbvb	2	update through import_export	6	1
2919	2019-01-24 06:34:13.133997+00	1231	nurybvb	2	update through import_export	6	1
2920	2019-01-24 06:34:13.135278+00	1232	kevinbvb 	2	update through import_export	6	1
2921	2019-01-24 06:34:13.136674+00	1233	williambvb 	2	update through import_export	6	1
2922	2019-01-24 06:34:13.137982+00	1234	carlosbvb 	2	update through import_export	6	1
2923	2019-01-24 06:34:13.139264+00	1235	antoniobvb 	2	update through import_export	6	1
2924	2019-01-24 06:34:13.140432+00	1236	lalobvb 	2	update through import_export	6	1
2925	2019-01-24 06:34:13.141595+00	1237	yanik0022	2	update through import_export	6	1
2926	2019-01-24 06:34:13.142763+00	1238	jorge0219	2	update through import_export	6	1
2927	2019-01-24 06:34:13.143917+00	1239	demo	2	update through import_export	6	1
2928	2019-01-24 06:34:13.145185+00	1240	emanuel0697	2	update through import_export	6	1
2929	2019-01-24 08:30:40.178703+00	2	2cristiobalalvarezpr	2	update through import_export	6	1
2930	2019-01-24 08:30:40.181851+00	3	3mateobenitezvelazqu	2	update through import_export	6	1
2931	2019-01-24 08:30:40.183522+00	4	4anniajaymecabreralo	2	update through import_export	6	1
2932	2019-01-24 08:30:40.184932+00	5	5edgarsebastiancabre	2	update through import_export	6	1
2933	2019-01-24 08:30:40.186378+00	6	6luisangelgarciagarc	2	update through import_export	6	1
2934	2019-01-24 08:30:40.187752+00	7	7erickpatriciogarcia	2	update through import_export	6	1
2935	2019-01-24 08:30:40.189168+00	8	8axelgonzalezdomingu	2	update through import_export	6	1
2936	2019-01-24 08:30:40.190519+00	9	9emiliohidalgoplanti	2	update through import_export	6	1
2937	2019-01-24 08:30:40.191862+00	10	10inttihoffmannbonna	2	update through import_export	6	1
2938	2019-01-24 08:30:40.193116+00	11	11mateolebrijagarza	2	update through import_export	6	1
2939	2019-01-24 08:30:40.194529+00	12	12lucalopezpauls	2	update through import_export	6	1
2940	2019-01-24 08:30:40.195784+00	13	13naraianrattivillar	2	update through import_export	6	1
2941	2019-01-24 08:30:40.197078+00	14	14matiasrebollarcere	2	update through import_export	6	1
2942	2019-01-24 08:30:40.198621+00	15	15kairosasrosenfeld	2	update through import_export	6	1
2943	2019-01-24 08:30:40.200109+00	16	16eriksalashernandez	2	update through import_export	6	1
2944	2019-01-24 08:30:40.201775+00	17	17javiersalinasalmaz	2	update through import_export	6	1
2945	2019-01-24 08:30:40.203313+00	18	18luisezequielsotopo	2	update through import_export	6	1
2946	2019-01-24 08:30:40.204752+00	19	19ikaitreviñodorado	2	update through import_export	6	1
2947	2019-01-24 08:30:40.206102+00	20	20emilianomercadooca	2	update through import_export	6	1
2948	2019-01-24 08:30:40.207309+00	21	21erickfaguilarsuare	2	update through import_export	6	1
2949	2019-01-24 08:30:40.208646+00	22	22emilianobautistaca	2	update through import_export	6	1
2950	2019-01-24 08:30:40.209974+00	23	23josuebautistaestra	2	update through import_export	6	1
2951	2019-01-24 08:30:40.211195+00	24	24jonathancruzjarami	2	update through import_export	6	1
2952	2019-01-24 08:30:40.212526+00	25	25arielgarciagomez	2	update through import_export	6	1
2953	2019-01-24 08:30:40.213763+00	26	26darìoguadarramaja	2	update through import_export	6	1
2954	2019-01-24 08:30:40.215108+00	27	27ricardolegorretaca	2	update through import_export	6	1
2955	2019-01-24 08:30:40.216303+00	28	28diegolujanoemilian	2	update through import_export	6	1
2956	2019-01-24 08:30:40.217494+00	29	29hazielafifperedoes	2	update through import_export	6	1
2957	2019-01-24 08:30:40.21874+00	30	30josepablotolamendo	2	update through import_export	6	1
2958	2019-01-24 08:30:40.220074+00	31	31kuntreviñodorado	2	update through import_export	6	1
2959	2019-01-24 08:30:40.221501+00	32	32yohanavazquezrebol	2	update through import_export	6	1
2960	2019-01-24 08:30:40.223053+00	33	33mateovillafañareb	2	update through import_export	6	1
2961	2019-01-24 08:30:40.224532+00	34	34julianvillanuevaor	2	update through import_export	6	1
2962	2019-01-24 08:30:40.225789+00	35	35rodrigocruzjaramil	2	update through import_export	6	1
2963	2019-01-24 08:30:40.22687+00	36	36pedrodiazflores	2	update through import_export	6	1
2964	2019-01-24 08:30:40.228136+00	37	37juanmanueldiazgard	2	update through import_export	6	1
2965	2019-01-24 08:30:40.22933+00	38	38nicolaslebrijagarz	2	update through import_export	6	1
2966	2019-01-24 08:30:40.230536+00	39	39giovanisantoscolin	2	update through import_export	6	1
2967	2019-01-24 08:30:40.231738+00	40	40kevinsaidvazquezre	2	update through import_export	6	1
2968	2019-01-24 08:30:40.23285+00	41	41dyronacostasantill	2	update through import_export	6	1
2969	2019-01-24 08:30:40.233932+00	42	42rosauracarbajalreb	2	update through import_export	6	1
2970	2019-01-24 08:30:40.235087+00	43	43sebastiancastilloa	2	update through import_export	6	1
2971	2019-01-24 08:30:40.236344+00	44	44franciscodiazflore	2	update through import_export	6	1
2972	2019-01-24 08:30:40.237442+00	45	45gaelgarciabernal	2	update through import_export	6	1
2973	2019-01-24 08:30:40.238616+00	46	46lucaslebrijagarza	2	update through import_export	6	1
2974	2019-01-24 08:30:40.239669+00	47	47giovanipeñalozalo	2	update through import_export	6	1
2975	2019-01-24 08:30:40.240768+00	48	48carlosreyesjimenez	2	update through import_export	6	1
2976	2019-01-24 08:30:40.241921+00	49	49mauriciosalasherna	2	update through import_export	6	1
2977	2019-01-24 08:30:40.243026+00	50	50juancarlossantosco	2	update through import_export	6	1
4057	2019-01-30 00:56:34.295885+00	114	Iniciacion - IDTC	1		18	1
2978	2019-01-24 08:30:40.244098+00	51	51oscarvacacaballero	2	update through import_export	6	1
2979	2019-01-24 08:30:40.245293+00	52	52victorvillafañaes	2	update through import_export	6	1
2980	2019-01-24 08:30:40.246422+00	53	53joaquinvillafañar	2	update through import_export	6	1
2981	2019-01-24 08:30:40.247479+00	54	54bryanesquivellopez	2	update through import_export	6	1
2982	2019-01-24 08:30:40.248524+00	55	55brandondanielgonza	2	update through import_export	6	1
2983	2019-01-24 08:30:40.249676+00	56	56jostinbrianguadarr	2	update through import_export	6	1
2984	2019-01-24 08:30:40.250781+00	57	57taniaguadarramaram	2	update through import_export	6	1
2985	2019-01-24 08:30:40.25184+00	58	58joseenriquegutierr	2	update through import_export	6	1
2986	2019-01-24 08:30:40.252872+00	59	59jesusjuarezquinter	2	update through import_export	6	1
2987	2019-01-24 08:30:40.254022+00	60	60erickomarlopezbece	2	update through import_export	6	1
2988	2019-01-24 08:30:40.255125+00	61	61fiorenzalujanoemil	2	update through import_export	6	1
2989	2019-01-24 08:30:40.256216+00	62	62jazminmontorosotel	2	update through import_export	6	1
2990	2019-01-24 08:30:40.257308+00	63	63sebastianortizpeñ	2	update through import_export	6	1
2991	2019-01-24 08:30:40.258505+00	64	64fernandoortizreyes	2	update through import_export	6	1
2992	2019-01-24 08:30:40.259762+00	65	65omarpedrazaaguilar	2	update through import_export	6	1
2993	2019-01-24 08:30:40.260942+00	66	66rubenpedrazasaldan	2	update through import_export	6	1
2994	2019-01-24 08:30:40.262118+00	67	67luisenriquerebolla	2	update through import_export	6	1
2995	2019-01-24 08:30:40.263182+00	68	68marcoantoniosantos	2	update through import_export	6	1
2996	2019-01-24 08:30:40.264263+00	69	69luisfernandovictor	2	update through import_export	6	1
2997	2019-01-24 08:30:40.265471+00	70	70tomalexanderschmid	2	update through import_export	6	1
2998	2019-01-24 08:30:40.266604+00	71	71aquilescarrillorod	2	update through import_export	6	1
2999	2019-01-24 08:30:40.267799+00	72	72joaohernandez	2	update through import_export	6	1
3000	2019-01-24 08:30:40.268904+00	73	73juanluisbarillas	2	update through import_export	6	1
3001	2019-01-24 08:30:40.26997+00	74	74pablostoehr	2	update through import_export	6	1
3002	2019-01-24 08:30:40.271161+00	75	75efrenmontealongoma	2	update through import_export	6	1
3003	2019-01-24 08:30:40.272411+00	76	76fernandogarciameji	2	update through import_export	6	1
3004	2019-01-24 08:30:40.273494+00	77	77franciscoandrescar	2	update through import_export	6	1
3005	2019-01-24 08:30:40.274685+00	78	78axelmendozagodinez	2	update through import_export	6	1
3006	2019-01-24 08:30:40.275764+00	79	79emiliodelvallegrun	2	update through import_export	6	1
3007	2019-01-24 08:30:40.276817+00	80	80bryanreyesmartinez	2	update through import_export	6	1
3008	2019-01-24 08:30:40.277954+00	81	81gabrielhernandez	2	update through import_export	6	1
3009	2019-01-24 08:30:40.279146+00	82	82alejandrovsanchezh	2	update through import_export	6	1
3010	2019-01-24 08:30:40.280227+00	83	83diegohernandezrome	2	update through import_export	6	1
3011	2019-01-24 08:30:40.281332+00	84	84andreasweber	2	update through import_export	6	1
3012	2019-01-24 08:30:40.282509+00	85	85alvaroelizaldezamu	2	update through import_export	6	1
3013	2019-01-24 08:30:40.283569+00	86	86emiliomedinacastel	2	update through import_export	6	1
3014	2019-01-24 08:30:40.28471+00	87	87danielapontonesgru	2	update through import_export	6	1
3015	2019-01-24 08:30:40.285888+00	88	88sebastianbenitez	2	update through import_export	6	1
3016	2019-01-24 08:30:40.287035+00	89	89gerardoalonsomarti	2	update through import_export	6	1
3017	2019-01-24 08:30:40.28815+00	90	90alejandrofernandez	2	update through import_export	6	1
3018	2019-01-24 08:30:40.28925+00	91	91emilianohermosillo	2	update through import_export	6	1
3019	2019-01-24 08:30:40.290487+00	92	92javierrancañobotay	2	update through import_export	6	1
3020	2019-01-24 08:30:40.29165+00	93	93hectormauricioguzm	2	update through import_export	6	1
3021	2019-01-24 08:30:40.292892+00	94	94dariohernandezcorn	2	update through import_export	6	1
3022	2019-01-24 08:30:40.294097+00	95	95santiagobarbosazaz	2	update through import_export	6	1
3023	2019-01-24 08:30:40.295226+00	96	96andrecubillaschave	2	update through import_export	6	1
3024	2019-01-24 08:30:40.296344+00	97	97mariotorresmeneses	2	update through import_export	6	1
3025	2019-01-24 08:30:40.297462+00	98	98ikerolinvelazco	2	update through import_export	6	1
3026	2019-01-24 08:30:40.29863+00	99	99alexisgonzalesriva	2	update through import_export	6	1
3027	2019-01-24 08:30:40.2997+00	100	100jovaniuwitonzerwa	2	update through import_export	6	1
3028	2019-01-24 08:30:40.301053+00	101	101guillermodomingue	2	update through import_export	6	1
3029	2019-01-24 08:30:40.302233+00	102	102miltonochoanieves	2	update through import_export	6	1
3030	2019-01-24 08:30:40.310375+00	103	103robertogarcia	2	update through import_export	6	1
3031	2019-01-24 08:30:40.312249+00	104	104brunodanielcaball	2	update through import_export	6	1
3032	2019-01-24 08:30:40.313881+00	105	105mackenziemackenzi	2	update through import_export	6	1
3033	2019-01-24 08:30:40.315603+00	106	106tonatiuhgutierrez	2	update through import_export	6	1
3034	2019-01-24 08:30:40.317381+00	107	107hugocarlosgomez	2	update through import_export	6	1
3035	2019-01-24 08:30:40.319191+00	108	108marianofrancocace	2	update through import_export	6	1
3036	2019-01-24 08:30:40.320746+00	109	109kongphiphatmachot	2	update through import_export	6	1
3037	2019-01-24 08:30:40.322485+00	110	110omardelacruz	2	update through import_export	6	1
3038	2019-01-24 08:30:40.324001+00	111	111patriciovelazquez	2	update through import_export	6	1
3039	2019-01-24 08:30:40.325699+00	112	112ikernarvaezbedoll	2	update through import_export	6	1
3040	2019-01-24 08:30:40.327358+00	113	113josetorrescipres	2	update through import_export	6	1
3041	2019-01-24 08:30:40.328965+00	114	114davidmichellereye	2	update through import_export	6	1
3042	2019-01-24 08:30:40.330581+00	115	115luisfernandoweber	2	update through import_export	6	1
3043	2019-01-24 08:30:40.332184+00	116	116diegodelgadillolo	2	update through import_export	6	1
3044	2019-01-24 08:30:40.333707+00	117	117emilianoparedessa	2	update through import_export	6	1
3045	2019-01-24 08:30:40.335289+00	118	118santiagoramosespi	2	update through import_export	6	1
3046	2019-01-24 08:30:40.3368+00	119	119benjaminramosespi	2	update through import_export	6	1
3047	2019-01-24 08:30:40.338379+00	120	120santiagoglatzguti	2	update through import_export	6	1
3048	2019-01-24 08:30:40.33998+00	121	121pabloglatzgutierr	2	update through import_export	6	1
3049	2019-01-24 08:30:40.341196+00	122	122juancarlosulasiad	2	update through import_export	6	1
3050	2019-01-24 08:30:40.342426+00	123	123anderrobleslarruc	2	update through import_export	6	1
4869	2019-01-30 07:33:08.547447+00	6	IDTC	1		16	1
3051	2019-01-24 08:30:40.34362+00	124	124diegoalvarez	2	update through import_export	6	1
3052	2019-01-24 08:30:40.344845+00	125	125mickelmanzo	2	update through import_export	6	1
3053	2019-01-24 08:30:40.346+00	126	126alonsorosales	2	update through import_export	6	1
3054	2019-01-24 08:30:40.347219+00	127	127alonsolatorrerojo	2	update through import_export	6	1
3055	2019-01-24 08:30:40.348432+00	128	128emilioruizmackenz	2	update through import_export	6	1
3056	2019-01-24 08:30:40.34969+00	129	129santiagoospinagon	2	update through import_export	6	1
3057	2019-01-24 08:30:40.350865+00	130	130rafaelemilianonav	2	update through import_export	6	1
3058	2019-01-24 08:30:40.352017+00	131	131joellopezjimenez	2	update through import_export	6	1
3059	2019-01-24 08:30:40.353271+00	132	132rubenjesuslaracor	2	update through import_export	6	1
3060	2019-01-24 08:30:40.354619+00	133	133josearturogutierr	2	update through import_export	6	1
3061	2019-01-24 08:30:40.355776+00	134	134emilianomartinezr	2	update through import_export	6	1
3062	2019-01-24 08:30:40.35696+00	135	135jorgeignaciocasti	2	update through import_export	6	1
3063	2019-01-24 08:30:40.358139+00	136	136santiagorojaszapa	2	update through import_export	6	1
3064	2019-01-24 08:30:40.359523+00	137	137sebastianpaaschca	2	update through import_export	6	1
3065	2019-01-24 08:30:40.360986+00	138	138ricardozorreroarg	2	update through import_export	6	1
3066	2019-01-24 08:30:40.362269+00	139	139diegodelaveganuñe	2	update through import_export	6	1
3067	2019-01-24 08:30:40.363462+00	140	140jorgefreyremendoz	2	update through import_export	6	1
3068	2019-01-24 08:30:40.364659+00	141	141josemanuelvenegas	2	update through import_export	6	1
3069	2019-01-24 08:30:40.365842+00	142	142gustavoalfonsocas	2	update through import_export	6	1
3070	2019-01-24 08:30:40.367+00	143	143maximilianocervan	2	update through import_export	6	1
3071	2019-01-24 08:30:40.368127+00	144	144hectorjaspeadobec	2	update through import_export	6	1
3072	2019-01-24 08:30:40.369296+00	145	145sebastiancontroho	2	update through import_export	6	1
3073	2019-01-24 08:30:40.370493+00	146	146santiagogomezdelv	2	update through import_export	6	1
3074	2019-01-24 08:30:40.371689+00	147	147sebastianzapatalo	2	update through import_export	6	1
3075	2019-01-24 08:30:40.372877+00	148	148emilianosanchezma	2	update through import_export	6	1
3076	2019-01-24 08:30:40.374063+00	149	149adrespesqueiravog	2	update through import_export	6	1
3077	2019-01-24 08:30:40.375219+00	150	150mauriciohuertatov	2	update through import_export	6	1
3078	2019-01-24 08:30:40.37633+00	151	151alejandrobarragan	2	update through import_export	6	1
3079	2019-01-24 08:30:40.377504+00	152	152mateosanchezcisne	2	update through import_export	6	1
3080	2019-01-24 08:30:40.378872+00	153	153santiagosanchezci	2	update through import_export	6	1
3081	2019-01-24 08:30:40.380323+00	154	154andresurrutiasegu	2	update through import_export	6	1
3082	2019-01-24 08:30:40.381582+00	155	155inescorresruiz	2	update through import_export	6	1
3083	2019-01-24 08:30:40.382857+00	156	156matiasalvaradojua	2	update through import_export	6	1
3084	2019-01-24 08:30:40.384013+00	157	157emiliolaracortesl	2	update through import_export	6	1
3085	2019-01-24 08:30:40.385222+00	158	158alejandrolinarest	2	update through import_export	6	1
3086	2019-01-24 08:30:40.386605+00	159	159emilioeugeniomart	2	update through import_export	6	1
3087	2019-01-24 08:30:40.387845+00	160	160pabloquinterovill	2	update through import_export	6	1
3088	2019-01-24 08:30:40.389111+00	161	161carloshumbertooro	2	update through import_export	6	1
3089	2019-01-24 08:30:40.390543+00	162	162mariaestherespino	2	update through import_export	6	1
3090	2019-01-24 08:30:40.391733+00	163	163alejandrotreviñop	2	update through import_export	6	1
3091	2019-01-24 08:30:40.393009+00	164	164andremartinez(pru	2	update through import_export	6	1
3092	2019-01-24 08:30:40.394238+00	165	165danielcortezranir	2	update through import_export	6	1
3093	2019-01-24 08:30:40.395335+00	166	166dantecortezramire	2	update through import_export	6	1
3094	2019-01-24 08:30:40.396445+00	167	167diegodelarivaunza	2	update through import_export	6	1
3095	2019-01-24 08:30:40.397576+00	168	168erikdöringgutierr	2	update through import_export	6	1
3096	2019-01-24 08:30:40.398789+00	169	169juliangraueharo	2	update through import_export	6	1
3097	2019-01-24 08:30:40.399908+00	170	170gilbertomoedanoar	2	update through import_export	6	1
3098	2019-01-24 08:30:40.401153+00	171	171gaelgerardoreyesm	2	update through import_export	6	1
3099	2019-01-24 08:30:40.402342+00	172	172paoloramirezvazqu	2	update through import_export	6	1
3100	2019-01-24 08:30:40.403699+00	173	173juliopabloascorve	2	update through import_export	6	1
3101	2019-01-24 08:30:40.404837+00	174	174andrescardenascru	2	update through import_export	6	1
3102	2019-01-24 08:30:40.406069+00	175	175salomonairaje	2	update through import_export	6	1
3103	2019-01-24 08:30:40.407186+00	176	176luccianobarocioar	2	update through import_export	6	1
3104	2019-01-24 08:30:40.408277+00	177	177diegovaldezlopez	2	update through import_export	6	1
3105	2019-01-24 08:30:40.409407+00	178	178santiagodiazdeleo	2	update through import_export	6	1
3106	2019-01-24 08:30:40.410602+00	179	179rodrigomejiaalvar	2	update through import_export	6	1
3107	2019-01-24 08:30:40.411752+00	180	180manuelvalero	2	update through import_export	6	1
3108	2019-01-24 08:30:40.412812+00	181	181andresmiguelherna	2	update through import_export	6	1
3109	2019-01-24 08:30:40.413909+00	182	182danielkiewekgarci	2	update through import_export	6	1
3110	2019-01-24 08:30:40.415016+00	183	183danielhaziel	2	update through import_export	6	1
3111	2019-01-24 08:30:40.416064+00	184	184alonsomartinez	2	update through import_export	6	1
3112	2019-01-24 08:30:40.417169+00	185	185vinicioaguirretor	2	update through import_export	6	1
3113	2019-01-24 08:30:40.41834+00	186	186santiagoleyvagarc	2	update through import_export	6	1
3114	2019-01-24 08:30:40.419405+00	187	187danielmoradorebol	2	update through import_export	6	1
3115	2019-01-24 08:30:40.420493+00	188	188nicolascarrionlop	2	update through import_export	6	1
3116	2019-01-24 08:30:40.42203+00	189	189jorgeolinvelasco	2	update through import_export	6	1
3117	2019-01-24 08:30:40.423714+00	190	190valeriaalizeezamo	2	update through import_export	6	1
3118	2019-01-24 08:30:40.425216+00	191	191renatanavarrovill	2	update through import_export	6	1
3119	2019-01-24 08:30:40.426688+00	192	192salvadorjanmartit	2	update through import_export	6	1
3120	2019-01-24 08:30:40.428212+00	193	193iandiegomejiaorti	2	update through import_export	6	1
3121	2019-01-24 08:30:40.429778+00	194	194rosendojimenezser	2	update through import_export	6	1
3122	2019-01-24 08:30:40.431403+00	195	195cosmoblancoguerre	2	update through import_export	6	1
3123	2019-01-24 08:30:40.432806+00	196	196joshuadanielbecer	2	update through import_export	6	1
3124	2019-01-24 08:30:40.434112+00	197	197patriciopichardol	2	update through import_export	6	1
3125	2019-01-24 08:30:40.435412+00	198	198carlosdiazdeleona	2	update through import_export	6	1
3126	2019-01-24 08:30:40.43664+00	199	199salvadorpeñamonca	2	update through import_export	6	1
3127	2019-01-24 08:30:40.437813+00	200	200ianlucamaraschein	2	update through import_export	6	1
3128	2019-01-24 08:30:40.438961+00	201	201alejandrorodrigue	2	update through import_export	6	1
3129	2019-01-24 08:30:40.440084+00	202	202juanpablorodrigue	2	update through import_export	6	1
3130	2019-01-24 08:30:40.441188+00	203	203brunovazqueztapia	2	update through import_export	6	1
3131	2019-01-24 08:30:40.442342+00	204	204miguelangelgarcia	2	update through import_export	6	1
3132	2019-01-24 08:30:40.443419+00	205	205fernandoalcantaro	2	update through import_export	6	1
3133	2019-01-24 08:30:40.444523+00	206	206carlossebastianru	2	update through import_export	6	1
3134	2019-01-24 08:30:40.4456+00	207	207emiliocarlosalman	2	update through import_export	6	1
3135	2019-01-24 08:30:40.446875+00	208	208poltreserrasbogot	2	update through import_export	6	1
3136	2019-01-24 08:30:40.447929+00	209	209santiagocalvasanc	2	update through import_export	6	1
3137	2019-01-24 08:30:40.449013+00	210	210ulisesmauricioper	2	update through import_export	6	1
3138	2019-01-24 08:30:40.450158+00	211	211javierhernandez	2	update through import_export	6	1
3139	2019-01-24 08:30:40.45128+00	212	212emilianoxavieravi	2	update through import_export	6	1
3140	2019-01-24 08:30:40.452362+00	213	213javiervalero	2	update through import_export	6	1
3141	2019-01-24 08:30:40.453471+00	214	214luisenriquegrcia	2	update through import_export	6	1
3142	2019-01-24 08:30:40.454637+00	215	215mateomiguelorozco	2	update through import_export	6	1
3143	2019-01-24 08:30:40.455933+00	216	216alexgandaracastil	2	update through import_export	6	1
3144	2019-01-24 08:30:40.457023+00	217	217diegoadrianzamora	2	update through import_export	6	1
3145	2019-01-24 08:30:40.458397+00	218	218nicolascallejasqu	2	update through import_export	6	1
3146	2019-01-24 08:30:40.459558+00	219	219emiliaisabelvazqu	2	update through import_export	6	1
3147	2019-01-24 08:30:40.460706+00	220	220emilianofuentesca	2	update through import_export	6	1
3148	2019-01-24 08:30:40.461855+00	221	221matiasgarcia	2	update through import_export	6	1
3149	2019-01-24 08:30:40.462991+00	222	222matiasaragonmora	2	update through import_export	6	1
3150	2019-01-24 08:30:40.464076+00	223	223josemarianovazque	2	update through import_export	6	1
3151	2019-01-24 08:30:40.465221+00	224	224teodeleonsuarez	2	update through import_export	6	1
3152	2019-01-24 08:30:40.466566+00	225	225maximilianosiebee	2	update through import_export	6	1
3153	2019-01-24 08:30:40.467799+00	226	226patriciobañosgarc	2	update through import_export	6	1
3154	2019-01-24 08:30:40.469054+00	227	227rubennavarrovilla	2	update through import_export	6	1
3155	2019-01-24 08:30:40.470263+00	228	228rafaellopezalvare	2	update through import_export	6	1
3156	2019-01-24 08:30:40.471496+00	229	229juanguillermojuar	2	update through import_export	6	1
3157	2019-01-24 08:30:40.472721+00	230	230iñigoruizamezcua	2	update through import_export	6	1
3158	2019-01-24 08:30:40.473958+00	231	231santiagoalonsoang	2	update through import_export	6	1
3159	2019-01-24 08:30:40.475235+00	232	232josebojorgemoscon	2	update through import_export	6	1
3160	2019-01-24 08:30:40.476457+00	233	233andresdelvalleg.	2	update through import_export	6	1
3161	2019-01-24 08:30:40.477725+00	234	234cristobalperezcor	2	update through import_export	6	1
3162	2019-01-24 08:30:40.478944+00	235	235leongrediagaramir	2	update through import_export	6	1
3163	2019-01-24 08:30:40.480118+00	236	236luisandresrojasur	2	update through import_export	6	1
3164	2019-01-24 08:30:40.481293+00	237	237camilacallejosqui	2	update through import_export	6	1
3165	2019-01-24 08:30:40.482536+00	238	238valentinoreytrejo	2	update through import_export	6	1
3166	2019-01-24 08:30:40.483669+00	239	239ikersaucedaalvare	2	update through import_export	6	1
3167	2019-01-24 08:30:40.484784+00	240	240mariarominadelgad	2	update through import_export	6	1
3168	2019-01-24 08:30:40.486096+00	241	241davidmaximilianol	2	update through import_export	6	1
3169	2019-01-24 08:30:40.487363+00	242	242mateolopezvergara	2	update through import_export	6	1
3170	2019-01-24 08:30:40.488509+00	243	243patriciotorresgar	2	update through import_export	6	1
3171	2019-01-24 08:30:40.48959+00	244	244lorenzotorresgarc	2	update through import_export	6	1
3172	2019-01-24 08:30:40.490734+00	245	245eliasvital	2	update through import_export	6	1
3173	2019-01-24 08:30:40.491871+00	246	246lorenzobenitez	2	update through import_export	6	1
3174	2019-01-24 08:30:40.493047+00	247	247danielfunkeruiz	2	update through import_export	6	1
3175	2019-01-24 08:30:40.494327+00	248	248lucasescalante	2	update through import_export	6	1
3176	2019-01-24 08:30:40.495491+00	249	249alonsorodriguezor	2	update through import_export	6	1
3177	2019-01-24 08:30:40.496585+00	250	250diegoriveroborrel	2	update through import_export	6	1
3178	2019-01-24 08:30:40.497775+00	251	251mirandaguerreroma	2	update through import_export	6	1
3179	2019-01-24 08:30:40.498926+00	252	252samuelmejiarojas	2	update through import_export	6	1
3180	2019-01-24 08:30:40.500179+00	253	253sebastianlizamama	2	update through import_export	6	1
3181	2019-01-24 08:30:40.501674+00	254	254mateoislasreyes	2	update through import_export	6	1
3182	2019-01-24 08:30:40.503144+00	255	255alejandrogalvanmi	2	update through import_export	6	1
3183	2019-01-24 08:30:40.504554+00	256	256gerardofernandezg	2	update through import_export	6	1
3184	2019-01-24 08:30:40.50596+00	257	257emilianozaraterey	2	update through import_export	6	1
3185	2019-01-24 08:30:40.507373+00	258	258josemariadottivel	2	update through import_export	6	1
3186	2019-01-24 08:30:40.508799+00	259	259matiasboyherreria	2	update through import_export	6	1
3187	2019-01-24 08:30:40.510142+00	260	260juanpablobenitola	2	update through import_export	6	1
3188	2019-01-24 08:30:40.511576+00	261	261iñakiavilamoran	2	update through import_export	6	1
3189	2019-01-24 08:30:40.512958+00	262	262lotte volpert	2	update through import_export	6	1
3190	2019-01-24 08:30:40.51435+00	263	263katrynjohannatimm	2	update through import_export	6	1
3191	2019-01-24 08:30:40.515688+00	264	264valerie posch	2	update through import_export	6	1
3192	2019-01-24 08:30:40.517118+00	265	265lucianamaiteimaña	2	update through import_export	6	1
3193	2019-01-24 08:30:40.518561+00	266	266michellehadadgonz	2	update through import_export	6	1
3194	2019-01-24 08:30:40.519985+00	267	267lea diepeenbrock	2	update through import_export	6	1
3195	2019-01-24 08:30:40.52133+00	268	268alejandracantuvil	2	update through import_export	6	1
3196	2019-01-24 08:30:40.52274+00	269	269danielabonequivel	2	update through import_export	6	1
3197	2019-01-24 08:30:40.524181+00	270	270nadinetablerosana	2	update through import_export	6	1
3198	2019-01-24 08:30:40.525556+00	271	271andrearomancrabtr	2	update through import_export	6	1
3199	2019-01-24 08:30:40.527013+00	272	272mariafernandareye	2	update through import_export	6	1
3200	2019-01-24 08:30:40.528368+00	273	273julianoriegatrevi	2	update through import_export	6	1
3201	2019-01-24 08:30:40.529796+00	274	274julianahuertaszam	2	update through import_export	6	1
3202	2019-01-24 08:30:40.531187+00	275	275isabellahernandez	2	update through import_export	6	1
3203	2019-01-24 08:30:40.532586+00	276	276victoriaflorestol	2	update through import_export	6	1
3204	2019-01-24 08:30:40.533962+00	277	277sofiaespinosarosa	2	update through import_export	6	1
3205	2019-01-24 08:30:40.535308+00	278	278emiliadiazbarriga	2	update through import_export	6	1
3206	2019-01-24 08:30:40.53669+00	279	279marianabonequivel	2	update through import_export	6	1
3207	2019-01-24 08:30:40.538097+00	280	280isabelabauersanch	2	update through import_export	6	1
3208	2019-01-24 08:30:40.539512+00	281	281luciabargalloknod	2	update through import_export	6	1
3209	2019-01-24 08:30:40.54093+00	282	282elisabargalloknod	2	update through import_export	6	1
3210	2019-01-24 08:30:40.542343+00	283	283rominaalexandraba	2	update through import_export	6	1
3211	2019-01-24 08:30:40.543712+00	284	284katrynjohannatimm	2	update through import_export	6	1
3212	2019-01-24 08:30:40.545062+00	285	285nadinetablerosana	2	update through import_export	6	1
3213	2019-01-24 08:30:40.546461+00	286	286federicoscullzing	2	update through import_export	6	1
3214	2019-01-24 08:30:40.547793+00	287	287alonsorodriguezor	2	update through import_export	6	1
3215	2019-01-24 08:30:40.549165+00	288	288nicolasnavratiles	2	update through import_export	6	1
3216	2019-01-24 08:30:40.5506+00	289	289emiliomorgenstern	2	update through import_export	6	1
3217	2019-01-24 08:30:40.551967+00	290	290axelhintzesaucedo	2	update through import_export	6	1
3218	2019-01-24 08:30:40.553351+00	291	291paolocusimaldonad	2	update through import_export	6	1
3219	2019-01-24 08:30:40.554758+00	292	292rominaalexandraba	2	update through import_export	6	1
3220	2019-01-24 08:30:40.556326+00	293	293jaimediego tellez	2	update through import_export	6	1
3221	2019-01-24 08:30:40.557888+00	294	294sebastian sommerp	2	update through import_export	6	1
3222	2019-01-24 08:30:40.559271+00	295	295matias sommerpera	2	update through import_export	6	1
3223	2019-01-24 08:30:40.560661+00	296	296danieleliassibaja	2	update through import_export	6	1
3224	2019-01-24 08:30:40.562092+00	297	297patrickseguraesco	2	update through import_export	6	1
3225	2019-01-24 08:30:40.563541+00	298	298petermichael ritt	2	update through import_export	6	1
3226	2019-01-24 08:30:40.564908+00	299	299maximilian perman	2	update through import_export	6	1
3227	2019-01-24 08:30:40.566318+00	300	300felixalexander pe	2	update through import_export	6	1
3228	2019-01-24 08:30:40.567701+00	301	301luisgperezmartine	2	update through import_export	6	1
3229	2019-01-24 08:30:40.569075+00	302	302martin  pamoulis	2	update through import_export	6	1
3230	2019-01-24 08:30:40.570534+00	303	303gustavo pachecoor	2	update through import_export	6	1
3231	2019-01-24 08:30:40.571934+00	304	304patrickmaxottmull	2	update through import_export	6	1
3232	2019-01-24 08:30:40.573344+00	305	305humberto mijarest	2	update through import_export	6	1
3233	2019-01-24 08:30:40.574788+00	306	306silvamauricio mar	2	update through import_export	6	1
3234	2019-01-24 08:30:40.576187+00	307	307nicolas lacknerbr	2	update through import_export	6	1
3235	2019-01-24 08:30:40.57761+00	308	308santiago hernande	2	update through import_export	6	1
3236	2019-01-24 08:30:40.579148+00	309	309pablo hernandezro	2	update through import_export	6	1
3237	2019-01-24 08:30:40.580585+00	310	310johannesh.hauserf	2	update through import_export	6	1
3238	2019-01-24 08:30:40.582003+00	311	311sebastian gunther	2	update through import_export	6	1
3239	2019-01-24 08:30:40.583383+00	312	312axel gieseckevald	2	update through import_export	6	1
3240	2019-01-24 08:30:40.584728+00	313	313santiango garcia 	2	update through import_export	6	1
3241	2019-01-24 08:30:40.586089+00	314	314patricio garciamo	2	update through import_export	6	1
3242	2019-01-24 08:30:40.587471+00	315	315josemaria fuentes	2	update through import_export	6	1
3243	2019-01-24 08:30:40.588748+00	316	316alexandereichervi	2	update through import_export	6	1
3244	2019-01-24 08:30:40.590049+00	317	317diegoa.estefanbiu	2	update through import_export	6	1
3245	2019-01-24 08:30:40.591426+00	318	318daniel dehoyosort	2	update through import_export	6	1
3246	2019-01-24 08:30:40.592784+00	319	319santiago collante	2	update through import_export	6	1
3247	2019-01-24 08:30:40.595011+00	320	320diegocollantestam	2	update through import_export	6	1
3248	2019-01-24 08:30:40.596442+00	321	321mauricio brocados	2	update through import_export	6	1
3249	2019-01-24 08:30:40.59784+00	322	322patricio bosquero	2	update through import_export	6	1
3250	2019-01-24 08:30:40.599253+00	323	323mariano  biehler	2	update through import_export	6	1
3251	2019-01-24 08:30:40.600607+00	324	324alberto arienzoac	2	update through import_export	6	1
3252	2019-01-24 08:30:40.602019+00	325	325michelle zimmerga	2	update through import_export	6	1
3253	2019-01-24 08:30:40.603395+00	326	326sebastian woodsan	2	update through import_export	6	1
3254	2019-01-24 08:30:40.604764+00	327	327andresfelipe rest	2	update through import_export	6	1
3255	2019-01-24 08:30:40.606167+00	328	328yakimpresarueda	2	update through import_export	6	1
3256	2019-01-24 08:30:40.607596+00	329	329arturo martinesla	2	update through import_export	6	1
3257	2019-01-24 08:30:40.608994+00	330	330nicolas lizamamag	2	update through import_export	6	1
3258	2019-01-24 08:30:40.610474+00	331	331santiago lazaropo	2	update through import_export	6	1
3259	2019-01-24 08:30:40.611969+00	332	332nicolas lazaropol	2	update through import_export	6	1
3260	2019-01-24 08:30:40.613384+00	333	333frederickgutcorde	2	update through import_export	6	1
3261	2019-01-24 08:30:40.614903+00	334	334bennetfischernico	2	update through import_export	6	1
3262	2019-01-24 08:30:40.616287+00	335	335jeronimo diazbarr	2	update through import_export	6	1
3263	2019-01-24 08:30:40.617743+00	336	336joseluis castrofe	2	update through import_export	6	1
3264	2019-01-24 08:30:40.619257+00	337	337stephan beihofers	2	update through import_export	6	1
3265	2019-01-24 08:30:40.620631+00	338	338juanpablo alvarez	2	update through import_export	6	1
3266	2019-01-24 08:30:40.622199+00	339	339francisco ablaned	2	update through import_export	6	1
3267	2019-01-24 08:30:40.623586+00	340	340patricio vegagome	2	update through import_export	6	1
3268	2019-01-24 08:30:40.624921+00	341	341david tolksdorffa	2	update through import_export	6	1
3269	2019-01-24 08:30:40.626956+00	342	342juanseguraescobar	2	update through import_export	6	1
3270	2019-01-24 08:30:40.628315+00	343	343guillermo reyessc	2	update through import_export	6	1
3271	2019-01-24 08:30:40.629748+00	344	344mateo renteriague	2	update through import_export	6	1
3272	2019-01-24 08:30:40.631284+00	345	345adriano pachecoor	2	update through import_export	6	1
3273	2019-01-24 08:30:40.632739+00	346	346steffenguillenper	2	update through import_export	6	1
3274	2019-01-24 08:30:40.634095+00	347	347alonso gonzalezme	2	update through import_export	6	1
3275	2019-01-24 08:30:40.635513+00	348	348haraldfeldhausthi	2	update through import_export	6	1
3276	2019-01-24 08:30:40.636885+00	349	349emilianocortinasa	2	update through import_export	6	1
3277	2019-01-24 08:30:40.638368+00	350	350andrevaronstorsbe	2	update through import_export	6	1
3278	2019-01-24 08:30:40.639677+00	351	351santiagoromancrab	2	update through import_export	6	1
3279	2019-01-24 08:30:40.64092+00	352	352emiliomorgenstern	2	update through import_export	6	1
3280	2019-01-24 08:30:40.642141+00	353	353jeronimomejiaroja	2	update through import_export	6	1
3281	2019-01-24 08:30:40.643386+00	354	354maximilianomartin	2	update through import_export	6	1
3282	2019-01-24 08:30:40.644539+00	355	355leonardodominguez	2	update through import_export	6	1
3283	2019-01-24 08:30:40.645796+00	356	356alandiazmueller	2	update through import_export	6	1
3284	2019-01-24 08:30:40.646947+00	357	357robertodavisdelac	2	update through import_export	6	1
3285	2019-01-24 08:30:40.648145+00	358	358patriciocorzogarc	2	update through import_export	6	1
3286	2019-01-24 08:30:40.649296+00	359	359arturoavilamoran	2	update through import_export	6	1
3287	2019-01-24 08:30:40.650491+00	360	360rodrigozepedaclua	2	update through import_export	6	1
3288	2019-01-24 08:30:40.651822+00	361	361jeronimovelazquez	2	update through import_export	6	1
3289	2019-01-24 08:30:40.652972+00	362	362julenpimenteldeiz	2	update through import_export	6	1
3290	2019-01-24 08:30:40.654219+00	363	363jeronimomejiaroja	2	update through import_export	6	1
3291	2019-01-24 08:30:40.655447+00	364	364axelhintzesaucedo	2	update through import_export	6	1
3292	2019-01-24 08:30:40.656663+00	365	365olafhentschelrans	2	update through import_export	6	1
3293	2019-01-24 08:30:40.657903+00	366	366albertalexanderhe	2	update through import_export	6	1
3294	2019-01-24 08:30:40.659075+00	367	367nicolasfriedrichg	2	update through import_export	6	1
3295	2019-01-24 08:30:40.660227+00	368	368franciscocastroco	2	update through import_export	6	1
3296	2019-01-24 08:30:40.661449+00	369	369pablocarazamolina	2	update through import_export	6	1
3297	2019-01-24 08:30:40.662754+00	370	370arturoavilamoran	2	update through import_export	6	1
3298	2019-01-24 08:30:40.663964+00	371	371hugoemiliovegagom	2	update through import_export	6	1
3299	2019-01-24 08:30:40.669573+00	372	372joserenescullzing	2	update through import_export	6	1
3300	2019-01-24 08:30:40.671356+00	373	373mateoriveroborrel	2	update through import_export	6	1
3301	2019-01-24 08:30:40.672838+00	374	374teodorohernandezh	2	update through import_export	6	1
3302	2019-01-24 08:30:40.674234+00	375	375mateoguajardorebo	2	update through import_export	6	1
3303	2019-01-24 08:30:40.675631+00	376	376maximograndecarde	2	update through import_export	6	1
3304	2019-01-24 08:30:40.67702+00	377	377lukafeldhausfaria	2	update through import_export	6	1
3305	2019-01-24 08:30:40.678573+00	378	378paolocusimaldonad	2	update through import_export	6	1
3306	2019-01-24 08:30:40.680056+00	379	379julianemilianocos	2	update through import_export	6	1
3307	2019-01-24 08:30:40.681384+00	380	380matteocorreiamore	2	update through import_export	6	1
3308	2019-01-24 08:30:40.682763+00	381	381janlorenzbrandtba	2	update through import_export	6	1
3309	2019-01-24 08:30:40.684073+00	382	382ricardosepulvedag	2	update through import_export	6	1
3310	2019-01-24 08:30:40.685306+00	383	383yunlongschwabmori	2	update through import_export	6	1
3311	2019-01-24 08:30:40.686626+00	384	384juancarlosrodrigu	2	update through import_export	6	1
3312	2019-01-24 08:30:40.687911+00	385	385ricardoortegabeni	2	update through import_export	6	1
3313	2019-01-24 08:30:40.689353+00	386	386francomarinmezabu	2	update through import_export	6	1
3314	2019-01-24 08:30:40.690707+00	387	387gustavolozanohent	2	update through import_export	6	1
3315	2019-01-24 08:30:40.69196+00	388	388emilioiglesiassch	2	update through import_export	6	1
3316	2019-01-24 08:30:40.693232+00	389	389jorgegallegosopit	2	update through import_export	6	1
3317	2019-01-24 08:30:40.694543+00	390	390phillip diepenbro	2	update through import_export	6	1
3318	2019-01-24 08:30:40.695911+00	391	391jeandiazmueller	2	update through import_export	6	1
3319	2019-01-24 08:30:40.697254+00	392	392mateoacuñagimeno	2	update through import_export	6	1
3320	2019-01-24 08:30:40.698636+00	393	393lucasvilalondoño	2	update through import_export	6	1
3321	2019-01-24 08:30:40.699929+00	394	394federicoscullzing	2	update through import_export	6	1
3322	2019-01-24 08:30:40.701206+00	395	395jeronimopalmalope	2	update through import_export	6	1
3323	2019-01-24 08:30:40.702665+00	396	396nicolasnavratiles	2	update through import_export	6	1
3324	2019-01-24 08:30:40.704031+00	397	397diegoulisesmadrig	2	update through import_export	6	1
3325	2019-01-24 08:30:40.705401+00	398	398kamilooniaskrusea	2	update through import_export	6	1
3326	2019-01-24 08:30:40.706834+00	399	399matthiaskoechlins	2	update through import_export	6	1
3327	2019-01-24 08:30:40.709903+00	400	400oliverhernandezhi	2	update through import_export	6	1
3328	2019-01-24 08:30:40.711611+00	401	401juanpablofloresbr	2	update through import_export	6	1
3329	2019-01-24 08:30:40.713457+00	402	402eliasfischermendo	2	update through import_export	6	1
3330	2019-01-24 08:30:40.715009+00	403	403brunofischermendo	2	update through import_export	6	1
3331	2019-01-24 08:30:40.716457+00	404	404iñigohumbertoegid	2	update through import_export	6	1
3332	2019-01-24 08:30:40.71792+00	405	405sebastianacevedov	2	update through import_export	6	1
3333	2019-01-24 08:30:40.719277+00	406	406escobarleonardoru	2	update through import_export	6	1
3334	2019-01-24 08:30:40.720686+00	407	407rodrigoromerogome	2	update through import_export	6	1
3335	2019-01-24 08:30:40.722145+00	408	408miguelromerogomez	2	update through import_export	6	1
3336	2019-01-24 08:30:40.723567+00	409	409valentinorobledo	2	update through import_export	6	1
3337	2019-01-24 08:30:40.725022+00	410	410bastianrichterbio	2	update through import_export	6	1
3338	2019-01-24 08:30:40.726602+00	411	411arturopueblitacas	2	update through import_export	6	1
3339	2019-01-24 08:30:40.728117+00	412	412thomasharingdeyta	2	update through import_export	6	1
3340	2019-01-24 08:30:40.729472+00	413	413patriciogomezport	2	update through import_export	6	1
3341	2019-01-24 08:30:40.730825+00	414	414jeronimogallegoso	2	update through import_export	6	1
3342	2019-01-24 08:30:40.732102+00	415	415jorgetomasbraniff	2	update through import_export	6	1
3343	2019-01-24 08:30:40.733366+00	416	416gonzalomagonville	2	update through import_export	6	1
3344	2019-01-24 08:30:40.734724+00	417	417iñakivargasgarcia	2	update through import_export	6	1
3345	2019-01-24 08:30:40.735987+00	418	418antoniosalazarrey	2	update through import_export	6	1
3346	2019-01-24 08:30:40.737253+00	419	419patrick morethsan	2	update through import_export	6	1
3347	2019-01-24 08:30:40.738653+00	420	420marianomaldonadom	2	update through import_export	6	1
3348	2019-01-24 08:30:40.739925+00	421	421gerardoherreramor	2	update through import_export	6	1
3349	2019-01-24 08:30:40.741214+00	422	422andregonzalezdiaz	2	update through import_export	6	1
3350	2019-01-24 08:30:40.742789+00	423	423luccouttolencpeye	2	update through import_export	6	1
3351	2019-01-24 08:30:40.744282+00	424	424marioemiliochavez	2	update through import_export	6	1
3352	2019-01-24 08:30:40.745831+00	425	425nicolascarrerasot	2	update through import_export	6	1
3353	2019-01-24 08:30:40.747266+00	426	426viccoandreacardin	2	update through import_export	6	1
3354	2019-01-24 08:30:40.748772+00	427	427juliancalzadaspat	2	update through import_export	6	1
3355	2019-01-24 08:30:40.750224+00	428	428marcoantonioarand	2	update through import_export	6	1
3356	2019-01-24 08:30:40.751667+00	429	429carlotiburciorami	2	update through import_export	6	1
3357	2019-01-24 08:30:40.753135+00	430	430danielsotocardena	2	update through import_export	6	1
3358	2019-01-24 08:30:40.754704+00	431	431iñigopizanofernan	2	update through import_export	6	1
3359	2019-01-24 08:30:40.756177+00	432	432matiaspelayosoto	2	update through import_export	6	1
3360	2019-01-24 08:30:40.75767+00	433	433christianottoniel	2	update through import_export	6	1
3361	2019-01-24 08:30:40.75918+00	434	434ricardomateosbeta	2	update through import_export	6	1
3362	2019-01-24 08:30:40.76066+00	435	435victoralonsomarti	2	update through import_export	6	1
3363	2019-01-24 08:30:40.762115+00	436	436crespoestefaniajä	2	update through import_export	6	1
3364	2019-01-24 08:30:40.763527+00	437	437salomonjahengonza	2	update through import_export	6	1
3365	2019-01-24 08:30:40.764901+00	438	438rodrigoeliasrange	2	update through import_export	6	1
3366	2019-01-24 08:30:40.766449+00	439	439jorgeivancisneros	2	update through import_export	6	1
3367	2019-01-24 08:30:40.767883+00	440	440mikelcarretecalle	2	update through import_export	6	1
3368	2019-01-24 08:30:40.769139+00	441	441diegoviniegraruiz	2	update through import_export	6	1
3369	2019-01-24 08:30:40.770416+00	442	442emilianoveraromer	2	update through import_export	6	1
3370	2019-01-24 08:30:40.7718+00	443	443matthiasalexander	2	update through import_export	6	1
3371	2019-01-24 08:30:40.773099+00	444	444alejandrostephens	2	update through import_export	6	1
3372	2019-01-24 08:30:40.774342+00	445	445patricioramirezpo	2	update through import_export	6	1
3373	2019-01-24 08:30:40.775542+00	446	446salvadormontesdeo	2	update through import_export	6	1
3374	2019-01-24 08:30:40.77673+00	447	447patriciogonsalvez	2	update through import_export	6	1
3375	2019-01-24 08:30:40.777961+00	448	448maximilianofelixa	2	update through import_export	6	1
3376	2019-01-24 08:30:40.779142+00	449	449mateodelahuertape	2	update through import_export	6	1
3377	2019-01-24 08:30:40.780351+00	450	450gaelcorderolara	2	update through import_export	6	1
3378	2019-01-24 08:30:40.781524+00	451	451sergiocamarapalan	2	update through import_export	6	1
3379	2019-01-24 08:30:40.782793+00	452	452santiagocamarapal	2	update through import_export	6	1
3380	2019-01-24 08:30:40.783954+00	453	453maximilianoayalas	2	update through import_export	6	1
3381	2019-01-24 08:30:40.785096+00	454	454dantearaizafernan	2	update through import_export	6	1
3382	2019-01-24 08:30:40.786344+00	455	455ricardoaguilarqui	2	update through import_export	6	1
3383	2019-01-24 08:30:40.787653+00	456	456santiagoveraromer	2	update through import_export	6	1
3384	2019-01-24 08:30:40.788907+00	457	457brunovazquezbecke	2	update through import_export	6	1
3385	2019-01-24 08:30:40.790174+00	458	458luiseduardotovarg	2	update through import_export	6	1
3386	2019-01-24 08:30:40.791336+00	459	459diegoemiliotoquer	2	update through import_export	6	1
3387	2019-01-24 08:30:40.792479+00	460	460xaviersantamariag	2	update through import_export	6	1
3388	2019-01-24 08:30:40.793683+00	461	461luisjoaquinnollag	2	update through import_export	6	1
3389	2019-01-24 08:30:40.79485+00	462	462lennartlipplcarde	2	update through import_export	6	1
3390	2019-01-24 08:30:40.796176+00	463	463lucakaehlercapuzz	2	update through import_export	6	1
3391	2019-01-24 08:30:40.797403+00	464	464andresjuarezpeña	2	update through import_export	6	1
3392	2019-01-24 08:30:40.798711+00	465	465sebastianthomasha	2	update through import_export	6	1
3393	2019-01-24 08:30:40.799883+00	466	466brunogöbelaranda	2	update through import_export	6	1
3394	2019-01-24 08:30:40.801146+00	467	467matiascortesfenne	2	update through import_export	6	1
3395	2019-01-24 08:30:40.802418+00	468	468andressimonbrewer	2	update through import_export	6	1
3396	2019-01-24 08:30:40.80374+00	469	469josemariaarreolar	2	update through import_export	6	1
3397	2019-01-24 08:30:40.804894+00	470	470nicolasemiliof.al	2	update through import_export	6	1
3398	2019-01-24 08:30:40.806102+00	471	471mateosotocardenas	2	update through import_export	6	1
3399	2019-01-24 08:30:40.807333+00	472	472humbertomerino 	2	update through import_export	6	1
3400	2019-01-24 08:30:40.80863+00	473	473gustavoa.omarzuñi	2	update through import_export	6	1
3401	2019-01-24 08:30:40.809889+00	474	474andrecorderolara	2	update through import_export	6	1
3402	2019-01-24 08:30:40.811162+00	475	475paolosiessmelende	2	update through import_export	6	1
3403	2019-01-24 08:30:40.812458+00	476	476camilasahiaorozco	2	update through import_export	6	1
3404	2019-01-24 08:30:40.813732+00	477	477gabrielherreraygo	2	update through import_export	6	1
3405	2019-01-24 08:30:40.814923+00	478	478danielhampsonmedi	2	update through import_export	6	1
3406	2019-01-24 08:30:40.816079+00	479	479leahscarlettespin	2	update through import_export	6	1
3407	2019-01-24 08:30:40.817332+00	480	480pabloespinosagarc	2	update through import_export	6	1
3408	2019-01-24 08:30:40.818529+00	481	481diegoespinosagarc	2	update through import_export	6	1
3409	2019-01-24 08:30:40.819773+00	482	482francocastelazoro	2	update through import_export	6	1
3410	2019-01-24 08:30:40.821141+00	483	483martincamposcasil	2	update through import_export	6	1
3411	2019-01-24 08:30:40.822353+00	484	484matiascamberosrob	2	update through import_export	6	1
3412	2019-01-24 08:30:40.823535+00	485	485ferranbarjaucorde	2	update through import_export	6	1
3413	2019-01-24 08:30:40.824664+00	486	486lucasbalandranoto	2	update through import_export	6	1
3414	2019-01-24 08:30:40.825856+00	487	487diegomaximilianst	2	update through import_export	6	1
3415	2019-01-24 08:30:40.826961+00	488	488rafael sandovalpo	2	update through import_export	6	1
3416	2019-01-24 08:30:40.828106+00	489	489sebastianromerode	2	update through import_export	6	1
3417	2019-01-24 08:30:40.829255+00	490	490annaximenareynaib	2	update through import_export	6	1
3418	2019-01-24 08:30:40.830581+00	491	491kalebeduardopined	2	update through import_export	6	1
3419	2019-01-24 08:30:40.831791+00	492	492antoniolopezguerr	2	update through import_export	6	1
3420	2019-01-24 08:30:40.833149+00	493	493santiagogarduñogo	2	update through import_export	6	1
3421	2019-01-24 08:30:40.834373+00	494	494paulafriasestrell	2	update through import_export	6	1
3422	2019-01-24 08:30:40.835522+00	495	495santiagoescobedor	2	update through import_export	6	1
3423	2019-01-24 08:30:40.83674+00	496	496rodrigodiazneri	2	update through import_export	6	1
3424	2019-01-24 08:30:40.837888+00	497	497natansantiagodelg	2	update through import_export	6	1
3425	2019-01-24 08:30:40.838978+00	498	498diegozaldivarbust	2	update through import_export	6	1
3426	2019-01-24 08:30:40.840113+00	499	499santiagotapiadela	2	update through import_export	6	1
3427	2019-01-24 08:30:40.841231+00	500	500andrepalmacarreto	2	update through import_export	6	1
3428	2019-01-24 08:30:40.842462+00	501	501maximilianmaldona	2	update through import_export	6	1
3429	2019-01-24 08:30:40.843651+00	502	502matiasgutierrezru	2	update through import_export	6	1
3430	2019-01-24 08:30:40.84491+00	503	503sergioikergonzale	2	update through import_export	6	1
3431	2019-01-24 08:30:40.846114+00	504	504ignacioenriquebre	2	update through import_export	6	1
3432	2019-01-24 08:30:40.847237+00	505	505ashleypriscillava	2	update through import_export	6	1
3433	2019-01-24 08:30:40.848423+00	506	506andrevillalopez	2	update through import_export	6	1
3434	2019-01-24 08:30:40.849675+00	507	507nielsvanvlietferr	2	update through import_export	6	1
3435	2019-01-24 08:30:40.850926+00	508	508maximilanomarzuñi	2	update through import_export	6	1
3436	2019-01-24 08:30:40.852069+00	509	509hugoluislopezchap	2	update through import_export	6	1
3437	2019-01-24 08:30:40.853376+00	510	510luisannaclaudialo	2	update through import_export	6	1
3438	2019-01-24 08:30:40.854751+00	511	511nicolascortesfenn	2	update through import_export	6	1
3439	2019-01-24 08:30:40.856053+00	512	512patrickcastellano	2	update through import_export	6	1
3440	2019-01-24 08:30:40.857239+00	513	513jeronimocastelbla	2	update through import_export	6	1
3441	2019-01-24 08:30:40.858459+00	514	514maximilianocamber	2	update through import_export	6	1
3442	2019-01-24 08:30:40.859666+00	515	515davilarebecagutie	2	update through import_export	6	1
3443	2019-01-24 08:30:40.860826+00	516	516juanpabloramiroco	2	update through import_export	6	1
3444	2019-01-24 08:30:40.862167+00	517	517patriciovalladare	2	update through import_export	6	1
3445	2019-01-24 08:30:40.863432+00	518	518niklasandretellma	2	update through import_export	6	1
3446	2019-01-24 08:30:40.864629+00	519	519liambarukherreraa	2	update through import_export	6	1
3447	2019-01-24 08:30:40.865803+00	520	520khaledhassantrejo	2	update through import_export	6	1
3448	2019-01-24 08:30:40.866949+00	521	521joseluisrangelher	2	update through import_export	6	1
3449	2019-01-24 08:30:40.86813+00	522	522andreherreraygome	2	update through import_export	6	1
3450	2019-01-24 08:30:40.86925+00	523	523fernandosolizpazs	2	update through import_export	6	1
3451	2019-01-24 08:30:40.870488+00	524	524federicochaparrom	2	update through import_export	6	1
3452	2019-01-24 08:30:40.87165+00	525	525brunojimenezmuñoz	2	update through import_export	6	1
3453	2019-01-24 08:30:40.872793+00	526	526virgilioaltairvid	2	update through import_export	6	1
3454	2019-01-24 08:30:40.874023+00	527	527pablozaldivarbust	2	update through import_export	6	1
3455	2019-01-24 08:30:40.87518+00	528	528nicolasramirezled	2	update through import_export	6	1
3456	2019-01-24 08:30:40.876347+00	529	529maximoespinosawal	2	update through import_export	6	1
3457	2019-01-24 08:30:40.877535+00	530	530martinmosquerajac	2	update through import_export	6	1
3458	2019-01-24 08:30:40.878993+00	531	531juanpablodiazcruz	2	update through import_export	6	1
3459	2019-01-24 08:30:40.880297+00	532	532guillermoandressa	2	update through import_export	6	1
3460	2019-01-24 08:30:40.881537+00	533	533guillermoabaunzac	2	update through import_export	6	1
3461	2019-01-24 08:30:40.882851+00	534	534fabiangonzalezmai	2	update through import_export	6	1
3462	2019-01-24 08:30:40.884276+00	535	535emmafriasestrella	2	update through import_export	6	1
3463	2019-01-24 08:30:40.885713+00	536	536kimberlywoodwardc	2	update through import_export	6	1
3464	2019-01-24 08:30:40.887252+00	537	537sofiasañudocarril	2	update through import_export	6	1
3465	2019-01-24 08:30:40.888589+00	538	538camilamateosbetan	2	update through import_export	6	1
3466	2019-01-24 08:30:40.889923+00	539	539mariareginadiazro	2	update through import_export	6	1
3467	2019-01-24 08:30:40.891261+00	540	540andrealachicaysan	2	update through import_export	6	1
3468	2019-01-24 08:30:40.892668+00	541	541nicolejimenezfrey	2	update through import_export	6	1
3469	2019-01-24 08:30:40.893987+00	542	542sofiaiglesiaspina	2	update through import_export	6	1
3470	2019-01-24 08:30:40.895203+00	543	543nataliagamezarand	2	update through import_export	6	1
3471	2019-01-24 08:30:40.896406+00	544	544nikitafaisalrusse	2	update through import_export	6	1
3472	2019-01-24 08:30:40.897774+00	545	545valeriaisabelcesp	2	update through import_export	6	1
3473	2019-01-24 08:30:40.899104+00	546	546claudiajirehelice	2	update through import_export	6	1
3474	2019-01-24 08:30:40.900491+00	547	547danielabarragande	2	update through import_export	6	1
3475	2019-01-24 08:30:40.901804+00	548	548yoanaaboitizdelac	2	update through import_export	6	1
3476	2019-01-24 08:30:40.903575+00	549	549josevaldesvelazqu	2	update through import_export	6	1
3477	2019-01-24 08:30:40.905112+00	550	550pablosanchezalcal	2	update through import_export	6	1
3478	2019-01-24 08:30:40.906469+00	551	551sergioplatonofflo	2	update through import_export	6	1
3479	2019-01-24 08:30:40.90776+00	552	552jorgepilegorreta	2	update through import_export	6	1
3480	2019-01-24 08:30:40.909043+00	553	553claudiorodrigomen	2	update through import_export	6	1
3481	2019-01-24 08:30:40.910364+00	554	554jorgeemiliolandet	2	update through import_export	6	1
3482	2019-01-24 08:30:40.911556+00	555	555jorgeaugustolande	2	update through import_export	6	1
3483	2019-01-24 08:30:40.912781+00	556	556johannesschubert 	2	update through import_export	6	1
3484	2019-01-24 08:30:40.914031+00	557	557marian hofmann 	2	update through import_export	6	1
3485	2019-01-24 08:30:40.915305+00	558	558albertogonzalezhe	2	update through import_export	6	1
3486	2019-01-24 08:30:40.91672+00	559	559ianballaraiza	2	update through import_export	6	1
3487	2019-01-24 08:30:40.918242+00	560	560arantzavalladares	2	update through import_export	6	1
3488	2019-01-24 08:30:40.919974+00	561	561monserratvaldesix	2	update through import_export	6	1
3489	2019-01-24 08:30:40.921457+00	562	562dianapaolasotoqui	2	update through import_export	6	1
3490	2019-01-24 08:30:40.922866+00	563	563victoriaalexandra	2	update through import_export	6	1
3491	2019-01-24 08:30:40.924137+00	564	564reginaperezortega	2	update through import_export	6	1
3492	2019-01-24 08:30:40.925413+00	565	565danielamontesdeoc	2	update through import_export	6	1
3493	2019-01-24 08:30:40.926624+00	566	566maytelechugarodri	2	update through import_export	6	1
3494	2019-01-24 08:30:40.927769+00	567	567rominagonzalezmar	2	update through import_export	6	1
3495	2019-01-24 08:30:40.928884+00	568	568lysdeguadalupeger	2	update through import_export	6	1
3496	2019-01-24 08:30:40.930018+00	569	569valentinagalindoa	2	update through import_export	6	1
3497	2019-01-24 08:30:40.931199+00	570	570marianadavilarodr	2	update through import_export	6	1
3498	2019-01-24 08:30:40.932301+00	571	571isabellasednacova	2	update through import_export	6	1
3499	2019-01-24 08:30:40.933382+00	572	572mariareginacastro	2	update through import_export	6	1
3500	2019-01-24 08:30:40.93457+00	573	573ximenabaizadeavil	2	update through import_export	6	1
3501	2019-01-24 08:30:40.935696+00	574	574karenaizmancarden	2	update through import_export	6	1
3502	2019-01-24 08:30:40.936855+00	575	575sebastianvelamart	2	update through import_export	6	1
3503	2019-01-24 08:30:40.93801+00	576	576santiagotorrescos	2	update through import_export	6	1
3504	2019-01-24 08:30:40.939187+00	577	577mateotarragocanto	2	update through import_export	6	1
3505	2019-01-24 08:30:40.940422+00	578	578herediasantiagovi	2	update through import_export	6	1
3506	2019-01-24 08:30:40.941709+00	579	579jorgerodriguezfue	2	update through import_export	6	1
3507	2019-01-24 08:30:40.942854+00	580	580andrespizanoferna	2	update through import_export	6	1
3508	2019-01-24 08:30:40.943997+00	581	581mateoparramolina	2	update through import_export	6	1
3509	2019-01-24 08:30:40.945123+00	582	582axelmoramuths	2	update through import_export	6	1
3510	2019-01-24 08:30:40.946373+00	583	583josemarialuisesgo	2	update through import_export	6	1
3511	2019-01-24 08:30:40.947529+00	584	584adrianhernandezgu	2	update through import_export	6	1
3512	2019-01-24 08:30:40.948998+00	585	585santiagohernandez	2	update through import_export	6	1
3513	2019-01-24 08:30:40.950473+00	586	586rogeliosebastiane	2	update through import_export	6	1
3514	2019-01-24 08:30:40.952026+00	587	587pedroescalonatorr	2	update through import_export	6	1
3515	2019-01-24 08:30:40.953575+00	588	588josegabrielarreol	2	update through import_export	6	1
3516	2019-01-24 08:30:40.95507+00	589	589ukkosmith 	2	update through import_export	6	1
3517	2019-01-24 08:30:40.956527+00	590	590sofiabalboa 	2	update through import_export	6	1
3518	2019-01-24 08:30:40.957976+00	591	591santiagobernal 	2	update through import_export	6	1
3519	2019-01-24 08:30:40.959493+00	592	592robertovarela 	2	update through import_export	6	1
3520	2019-01-24 08:30:40.961005+00	593	593milajoseph 	2	update through import_export	6	1
3521	2019-01-24 08:30:40.962458+00	594	594milabeltran 	2	update through import_export	6	1
3522	2019-01-24 08:30:40.963884+00	595	595mianaguiano 	2	update through import_export	6	1
3523	2019-01-24 08:30:40.965305+00	596	596leonardofeilbogen	2	update through import_export	6	1
3524	2019-01-24 08:30:40.966637+00	597	597julianehrensber 	2	update through import_export	6	1
3525	2019-01-24 08:30:40.967876+00	598	598fatimazavala 	2	update through import_export	6	1
3526	2019-01-24 08:30:40.969273+00	599	599eduardorodriguez 	2	update through import_export	6	1
3527	2019-01-24 08:30:40.970813+00	600	600andreagutierrez	2	update through import_export	6	1
3528	2019-01-24 08:30:40.972306+00	601	601santiagoerlbaher 	2	update through import_export	6	1
3529	2019-01-24 08:30:40.973853+00	602	602robertamochelena 	2	update through import_export	6	1
3530	2019-01-24 08:30:40.975349+00	603	603nicolasjacobsen 	2	update through import_export	6	1
3531	2019-01-24 08:30:40.976615+00	604	604miacortes 	2	update through import_export	6	1
3532	2019-01-24 08:30:40.9778+00	605	605leonardograeslin 	2	update through import_export	6	1
3533	2019-01-24 08:30:40.979069+00	606	606juliancañedo 	2	update through import_export	6	1
3534	2019-01-24 08:30:40.980284+00	607	607josetorres 	2	update through import_export	6	1
3535	2019-01-24 08:30:40.981428+00	608	608joelcortes 	2	update through import_export	6	1
3536	2019-01-24 08:30:40.982708+00	609	609joaquinraab 	2	update through import_export	6	1
3537	2019-01-24 08:30:40.984009+00	610	610erichjacobsen 	2	update through import_export	6	1
3538	2019-01-24 08:30:40.985211+00	611	611emmavalencia 	2	update through import_export	6	1
3539	2019-01-24 08:30:40.986536+00	612	612emmatorres 	2	update through import_export	6	1
3540	2019-01-24 08:30:40.987769+00	613	613emmajoseph 	2	update through import_export	6	1
3541	2019-01-24 08:30:40.989026+00	614	614eduardoargûelles 	2	update through import_export	6	1
3542	2019-01-24 08:30:40.990399+00	615	615cristobalheredia 	2	update through import_export	6	1
3543	2019-01-24 08:30:40.991611+00	616	616cayetanasanchez 	2	update through import_export	6	1
3544	2019-01-24 08:30:40.992729+00	617	617bernardojoseph 	2	update through import_export	6	1
3545	2019-01-24 08:30:40.993976+00	618	618andrèsalazar 	2	update through import_export	6	1
3546	2019-01-24 08:30:40.99539+00	619	619anajimenaraab	2	update through import_export	6	1
3547	2019-01-24 08:30:40.996891+00	620	620sophiacarbajal 	2	update through import_export	6	1
3548	2019-01-24 08:30:40.998396+00	621	621sebastianponce 	2	update through import_export	6	1
3549	2019-01-24 08:30:40.999899+00	622	622sebastianamador 	2	update through import_export	6	1
3550	2019-01-24 08:30:41.001199+00	623	623santiagocalderon 	2	update through import_export	6	1
3551	2019-01-24 08:30:41.002577+00	624	624santiagobernal 	2	update through import_export	6	1
3552	2019-01-24 08:30:41.003874+00	625	625pabloluz 	2	update through import_export	6	1
3553	2019-01-24 08:30:41.005095+00	626	626milabeltran 	2	update through import_export	6	1
3554	2019-01-24 08:30:41.006346+00	627	627mateocalderon 	2	update through import_export	6	1
3555	2019-01-24 08:30:41.007516+00	628	628lorenzolinares 	2	update through import_export	6	1
3556	2019-01-24 08:30:41.009029+00	629	629linuswillmans 	2	update through import_export	6	1
3557	2019-01-24 08:30:41.01064+00	630	630leandrobrailovsky	2	update through import_export	6	1
3558	2019-01-24 08:30:41.012045+00	631	631leahcastelan 	2	update through import_export	6	1
3559	2019-01-24 08:30:41.013333+00	632	632julietalinares 	2	update through import_export	6	1
3560	2019-01-24 08:30:41.014611+00	633	633julianhernandez 	2	update through import_export	6	1
3561	2019-01-24 08:30:41.015848+00	634	634juliawillmans 	2	update through import_export	6	1
3562	2019-01-24 08:30:41.017048+00	635	635juanmiguelarce	2	update through import_export	6	1
3563	2019-01-24 08:30:41.01825+00	636	636elizabethcota 	2	update through import_export	6	1
3564	2019-01-24 08:30:41.019517+00	637	637danielnuñez 	2	update through import_export	6	1
3565	2019-01-24 08:30:41.020722+00	638	638bernardoalvarez 	2	update through import_export	6	1
3566	2019-01-24 08:30:41.021923+00	639	639andreacuevas 	2	update through import_export	6	1
3567	2019-01-24 08:30:41.023074+00	640	640anaambrosi	2	update through import_export	6	1
3568	2019-01-24 08:30:41.024333+00	641	641anagabrielavazque	2	update through import_export	6	1
3569	2019-01-24 08:30:41.025528+00	642	642taniavallejoherna	2	update through import_export	6	1
3570	2019-01-24 08:30:41.02671+00	643	643anasofiaoterorive	2	update through import_export	6	1
3571	2019-01-24 08:30:41.027858+00	644	644isoldeeleonordela	2	update through import_export	6	1
3572	2019-01-24 08:30:41.028975+00	645	645angelacosmecabrer	2	update through import_export	6	1
3573	2019-01-24 08:30:41.030232+00	646	646marthalorenawille	2	update through import_export	6	1
3574	2019-01-24 08:30:41.03135+00	647	647sofiamoraanzurez	2	update through import_export	6	1
3575	2019-01-24 08:30:41.032533+00	648	648loanabaron	2	update through import_export	6	1
3576	2019-01-24 08:30:41.03389+00	649	649abigailespinosamu	2	update through import_export	6	1
3577	2019-01-24 08:30:41.035131+00	650	650luzelenasosamarti	2	update through import_export	6	1
3578	2019-01-24 08:30:41.03635+00	651	651angelalopezparra	2	update through import_export	6	1
3579	2019-01-24 08:30:41.03758+00	652	652sofiacastañonguti	2	update through import_export	6	1
3580	2019-01-24 08:30:41.038874+00	653	653lorenzamanriquega	2	update through import_export	6	1
3581	2019-01-24 08:30:41.040109+00	654	654noramorales	2	update through import_export	6	1
3582	2019-01-24 08:30:41.041294+00	655	655mariafernandamene	2	update through import_export	6	1
3583	2019-01-24 08:30:41.042575+00	656	656helenatrujillorod	2	update through import_export	6	1
3584	2019-01-24 08:30:41.043852+00	657	657elkeliceagaadam	2	update through import_export	6	1
3585	2019-01-24 08:30:41.045026+00	658	658mariemülleremilie	2	update through import_export	6	1
3586	2019-01-24 08:30:41.046377+00	659	659danielasierrabach	2	update through import_export	6	1
3587	2019-01-24 08:30:41.047653+00	660	660fernandaabdeljale	2	update through import_export	6	1
3588	2019-01-24 08:30:41.048893+00	661	661isabellaroelstoop	2	update through import_export	6	1
3589	2019-01-24 08:30:41.050129+00	662	662brunonicolaskubli	2	update through import_export	6	1
3590	2019-01-24 08:30:41.051545+00	663	663josericardocanoga	2	update through import_export	6	1
3591	2019-01-24 08:30:41.052857+00	664	664oscarmartinezcoel	2	update through import_export	6	1
3592	2019-01-24 08:30:41.054168+00	665	665mauricioaviladela	2	update through import_export	6	1
3593	2019-01-24 08:30:41.055469+00	666	666darianmembrilloal	2	update through import_export	6	1
3594	2019-01-24 08:30:41.056794+00	667	667carlosascenciovil	2	update through import_export	6	1
3595	2019-01-24 08:30:41.058114+00	668	668darioantonio	2	update through import_export	6	1
3596	2019-01-24 08:30:41.059472+00	669	669franciscoortiz	2	update through import_export	6	1
3597	2019-01-24 08:30:41.060833+00	670	670gustavokubligolln	2	update through import_export	6	1
3598	2019-01-24 08:30:41.062108+00	671	671juanpablorobles	2	update through import_export	6	1
3599	2019-01-24 08:30:41.063558+00	672	672alvarogomez	2	update through import_export	6	1
3600	2019-01-24 08:30:41.064914+00	673	673emiliopiña	2	update through import_export	6	1
3601	2019-01-24 08:30:41.066305+00	674	674matthiaslynen	2	update through import_export	6	1
3602	2019-01-24 08:30:41.067683+00	675	675andresmagallon	2	update through import_export	6	1
3603	2019-01-24 08:30:41.068951+00	676	676santiagocastillon	2	update through import_export	6	1
3604	2019-01-24 08:30:41.070309+00	677	677alexandergladen	2	update through import_export	6	1
3605	2019-01-24 08:30:41.071622+00	678	678rodrigoloyola	2	update through import_export	6	1
3606	2019-01-24 08:30:41.072898+00	679	679federicoaguilarbl	2	update through import_export	6	1
3607	2019-01-24 08:30:41.074365+00	680	680iancastañedapache	2	update through import_export	6	1
3608	2019-01-24 08:30:41.075892+00	681	681ikercollromero	2	update through import_export	6	1
3609	2019-01-24 08:30:41.07768+00	682	682albertoesquivelfu	2	update through import_export	6	1
3610	2019-01-24 08:30:41.079382+00	683	683orlandogomezvalde	2	update through import_export	6	1
3611	2019-01-24 08:30:41.081727+00	684	684rodrigoniembromar	2	update through import_export	6	1
3612	2019-01-24 08:30:41.083183+00	685	685emilianopeñaserra	2	update through import_export	6	1
3613	2019-01-24 08:30:41.084605+00	686	686mateotoledowerner	2	update through import_export	6	1
3614	2019-01-24 08:30:41.08598+00	687	687robertoaguilarman	2	update through import_export	6	1
3615	2019-01-24 08:30:41.087236+00	688	688hugomanuelmartine	2	update through import_export	6	1
3616	2019-01-24 08:30:41.088518+00	689	689sebastianmoguello	2	update through import_export	6	1
3617	2019-01-24 08:30:41.089745+00	690	690albertotalamantes	2	update through import_export	6	1
3618	2019-01-24 08:30:41.091124+00	691	691alexandertwardytr	2	update through import_export	6	1
3619	2019-01-24 08:30:41.092431+00	692	692mattiazuincordero	2	update through import_export	6	1
3620	2019-01-24 08:30:41.093596+00	693	693aripulidoferrer	2	update through import_export	6	1
3621	2019-01-24 08:30:41.094839+00	694	694nicolashernandezf	2	update through import_export	6	1
3622	2019-01-24 08:30:41.096033+00	695	695josepabloolivasar	2	update through import_export	6	1
3623	2019-01-24 08:30:41.097233+00	696	696emiliolanda	2	update through import_export	6	1
3624	2019-01-24 08:30:41.098522+00	697	697neftalicuevas	2	update through import_export	6	1
3625	2019-01-24 08:30:41.099703+00	698	698franciscojavierag	2	update through import_export	6	1
3626	2019-01-24 08:30:41.101049+00	699	699belanoelangermann	2	update through import_export	6	1
3627	2019-01-24 08:30:41.102503+00	700	700pablocastroschmit	2	update through import_export	6	1
3628	2019-01-24 08:30:41.103799+00	701	701luismanuelcastros	2	update through import_export	6	1
3629	2019-01-24 08:30:41.105016+00	702	702federicofleischma	2	update through import_export	6	1
3630	2019-01-24 08:30:41.106231+00	703	703julianroelstoopen	2	update through import_export	6	1
3631	2019-01-24 08:30:41.107389+00	704	704kevinrohleder.	2	update through import_export	6	1
3632	2019-01-24 08:30:41.108521+00	705	705andresvelascotorr	2	update through import_export	6	1
3633	2019-01-24 08:30:41.10973+00	706	706emmanuelalcantarc	2	update through import_export	6	1
3634	2019-01-24 08:30:41.111013+00	707	707jordividalvillase	2	update through import_export	6	1
3635	2019-01-24 08:30:41.112216+00	708	708diegosanchezarrio	2	update through import_export	6	1
3636	2019-01-24 08:30:41.113565+00	709	709mateorodriguezazp	2	update through import_export	6	1
3637	2019-01-24 08:30:41.114804+00	710	710luisemiliopozopac	2	update through import_export	6	1
3638	2019-01-24 08:30:41.115964+00	711	711marcoantonioostoa	2	update through import_export	6	1
3639	2019-01-24 08:30:41.11719+00	712	712santiagomaydongon	2	update through import_export	6	1
3640	2019-01-24 08:30:41.118553+00	713	713sebastianliceagaa	2	update through import_export	6	1
3641	2019-01-24 08:30:41.119817+00	714	714axelkaramarroyo	2	update through import_export	6	1
3642	2019-01-24 08:30:41.121087+00	715	715jeronimogomezcolc	2	update through import_export	6	1
3643	2019-01-24 08:30:41.122393+00	716	716stephanmaximodiet	2	update through import_export	6	1
3644	2019-01-24 08:30:41.123664+00	717	717alonsodiazprocel	2	update through import_export	6	1
3645	2019-01-24 08:30:41.124846+00	718	718svenurbanekbarrei	2	update through import_export	6	1
3646	2019-01-24 08:30:41.126051+00	719	719paolotoledowerner	2	update through import_export	6	1
3647	2019-01-24 08:30:41.127808+00	720	720carstenserretköhl	2	update through import_export	6	1
3648	2019-01-24 08:30:41.129124+00	721	721andresmateopozosa	2	update through import_export	6	1
3649	2019-01-24 08:30:41.130414+00	722	722axelpoogonzalez	2	update through import_export	6	1
3650	2019-01-24 08:30:41.131756+00	723	723jorgesantiagomari	2	update through import_export	6	1
3651	2019-01-24 08:30:41.133017+00	724	724mateomaciashernan	2	update through import_export	6	1
3652	2019-01-24 08:30:41.134448+00	725	725isaacgarciasigala	2	update through import_export	6	1
3653	2019-01-24 08:30:41.135847+00	726	726federicogalvezalv	2	update through import_export	6	1
3654	2019-01-24 08:30:41.137228+00	727	727arturocamachooroz	2	update through import_export	6	1
3655	2019-01-24 08:30:41.138717+00	728	728stefanmikelbolaño	2	update through import_export	6	1
3656	2019-01-24 08:30:41.139999+00	729	729iñigovidalvillase	2	update through import_export	6	1
3657	2019-01-24 08:30:41.141185+00	730	730jorgeliamsoriagar	2	update through import_export	6	1
3658	2019-01-24 08:30:41.14233+00	731	731victoralonsomonro	2	update through import_export	6	1
3659	2019-01-24 08:30:41.143426+00	732	732nestormatarredona	2	update through import_export	6	1
3660	2019-01-24 08:30:41.144603+00	733	733carlosfedericomar	2	update through import_export	6	1
3661	2019-01-24 08:30:41.145887+00	734	734joaquingraufranci	2	update through import_export	6	1
3662	2019-01-24 08:30:41.147059+00	735	735demiangonzalesrub	2	update through import_export	6	1
3663	2019-01-24 08:30:41.14815+00	736	736enriquefernandogo	2	update through import_export	6	1
3664	2019-01-24 08:30:41.149264+00	737	737victorisaaccardeñ	2	update through import_export	6	1
3665	2019-01-24 08:30:41.150554+00	738	738matiasrodileskara	2	update through import_export	6	1
3666	2019-01-24 08:30:41.151682+00	739	739rodrigoantoniopra	2	update through import_export	6	1
3667	2019-01-24 08:30:41.152774+00	740	740carloseugenioporc	2	update through import_export	6	1
3668	2019-01-24 08:30:41.153964+00	741	741theoantoniomüller	2	update through import_export	6	1
3669	2019-01-24 08:30:41.155178+00	742	742mateomorenocastañ	2	update through import_export	6	1
3670	2019-01-24 08:30:41.156308+00	743	743samuelmoralesjung	2	update through import_export	6	1
3671	2019-01-24 08:30:41.157427+00	744	744juanpablomontañog	2	update through import_export	6	1
3672	2019-01-24 08:30:41.1588+00	745	745tadeolozamendoza	2	update through import_export	6	1
3673	2019-01-24 08:30:41.159921+00	746	746diegocelistessman	2	update through import_export	6	1
3674	2019-01-24 08:30:41.161039+00	747	747mateangermannkeno	2	update through import_export	6	1
3675	2019-01-24 08:30:41.162252+00	748	748ignaciozuñigagarc	2	update through import_export	6	1
3676	2019-01-24 08:30:41.16346+00	749	749matthiassantaella	2	update through import_export	6	1
3677	2019-01-24 08:30:41.164706+00	750	750matteorossoorihue	2	update through import_export	6	1
3678	2019-01-24 08:30:41.165891+00	751	751paulroenigerjaram	2	update through import_export	6	1
3679	2019-01-24 08:30:41.167006+00	752	752paulojosueolivare	2	update through import_export	6	1
3680	2019-01-24 08:30:41.168177+00	753	753andrelopezrodrigu	2	update through import_export	6	1
3681	2019-01-24 08:30:41.169381+00	754	754josemariaenriquez	2	update through import_export	6	1
3682	2019-01-24 08:30:41.170642+00	755	755emirapistellez	2	update through import_export	6	1
3683	2019-01-24 08:30:41.171779+00	756	756ximenavegatapia	2	update through import_export	6	1
3684	2019-01-24 08:30:41.172986+00	757	757anasanchezarriola	2	update through import_export	6	1
3685	2019-01-24 08:30:41.174216+00	758	758sofiarohleder	2	update through import_export	6	1
3686	2019-01-24 08:30:41.175427+00	759	759valentinarenteria	2	update through import_export	6	1
3687	2019-01-24 08:30:41.1766+00	760	760ileanacamilaoliva	2	update through import_export	6	1
3688	2019-01-24 08:30:41.177857+00	761	761arantxanellenlayo	2	update through import_export	6	1
3689	2019-01-24 08:30:41.17919+00	762	762reginamorenoflore	2	update through import_export	6	1
3690	2019-01-24 08:30:41.18044+00	763	763sofiamenendezespi	2	update through import_export	6	1
3691	2019-01-24 08:30:41.181716+00	764	764kenyaizabellamart	2	update through import_export	6	1
3692	2019-01-24 08:30:41.183092+00	765	765paulakaiserlopez	2	update through import_export	6	1
3693	2019-01-24 08:30:41.184318+00	766	766valentinagonzalez	2	update through import_export	6	1
3694	2019-01-24 08:30:41.185516+00	767	767paulinabeltranpru	2	update through import_export	6	1
3695	2019-01-24 08:30:41.18677+00	768	768marianeabdeljalek	2	update through import_export	6	1
3696	2019-01-24 08:30:41.188015+00	769	769juliazacariasalde	2	update through import_export	6	1
3697	2019-01-24 08:30:41.18991+00	770	770patriciovaldiviac	2	update through import_export	6	1
3698	2019-01-24 08:30:41.191488+00	771	771carlosestebantell	2	update through import_export	6	1
3699	2019-01-24 08:30:41.192775+00	772	772oscargaelsantanat	2	update through import_export	6	1
3700	2019-01-24 08:30:41.194018+00	773	773jesussalazarvelaz	2	update through import_export	6	1
3701	2019-01-24 08:30:41.195243+00	774	774brunomiguelromero	2	update through import_export	6	1
3702	2019-01-24 08:30:41.196344+00	775	775diegoreydavo	2	update through import_export	6	1
3703	2019-01-24 08:30:41.197477+00	776	776diegomuñozcarvaja	2	update through import_export	6	1
3704	2019-01-24 08:30:41.198587+00	777	777oscargustavomendo	2	update through import_export	6	1
3705	2019-01-24 08:30:41.199653+00	778	778jorgeantoniomende	2	update through import_export	6	1
3706	2019-01-24 08:30:41.20071+00	779	779christopherleitme	2	update through import_export	6	1
3707	2019-01-24 08:30:41.201833+00	780	780alonsoiturriagabo	2	update through import_export	6	1
3708	2019-01-24 08:30:41.20297+00	781	781thomasleonardoenr	2	update through import_export	6	1
3709	2019-01-24 08:30:41.204053+00	782	782adolfocarrillogan	2	update through import_export	6	1
3710	2019-01-24 08:30:41.20517+00	783	783ikergustavbolaños	2	update through import_export	6	1
3711	2019-01-24 08:30:41.206291+00	784	784maitevelascotorre	2	update through import_export	6	1
3712	2019-01-24 08:30:41.207469+00	785	785robertatapiazamor	2	update through import_export	6	1
3713	2019-01-24 08:30:41.208531+00	786	786luzadrianasalcedo	2	update through import_export	6	1
3714	2019-01-24 08:30:41.209587+00	787	787fernandaruedavall	2	update through import_export	6	1
3715	2019-01-24 08:30:41.210688+00	788	788manerodriguezazpi	2	update through import_export	6	1
3716	2019-01-24 08:30:41.211803+00	789	789junerodriguezazpi	2	update through import_export	6	1
3717	2019-01-24 08:30:41.212981+00	790	790emiliarechymadina	2	update through import_export	6	1
3718	2019-01-24 08:30:41.214122+00	791	791sofiamaydongonzal	2	update through import_export	6	1
3719	2019-01-24 08:30:41.215239+00	792	792laraleitmeirrosas	2	update through import_export	6	1
3720	2019-01-24 08:30:41.216491+00	793	793hannahleitmeirros	2	update through import_export	6	1
3721	2019-01-24 08:30:41.217865+00	794	794iaradiederichsenr	2	update through import_export	6	1
3722	2019-01-24 08:30:41.219079+00	795	795pamelaalemancarra	2	update through import_export	6	1
3723	2019-01-24 08:30:41.220298+00	796	796darienalejandroza	2	update through import_export	6	1
3724	2019-01-24 08:30:41.221706+00	797	797diegovegatapia	2	update through import_export	6	1
3725	2019-01-24 08:30:41.222992+00	798	798patriciovaldiviac	2	update through import_export	6	1
3726	2019-01-24 08:30:41.224191+00	799	799lukastoledowerner	2	update through import_export	6	1
3727	2019-01-24 08:30:41.22541+00	800	800carlosrojocamez	2	update through import_export	6	1
3728	2019-01-24 08:30:41.226665+00	801	801juanpabloreydavo	2	update through import_export	6	1
3729	2019-01-24 08:30:41.227865+00	802	802diegoreydavo	2	update through import_export	6	1
3730	2019-01-24 08:30:41.229124+00	803	803gustavooteroriver	2	update through import_export	6	1
3731	2019-01-24 08:30:41.230523+00	804	804leonardoosoriosau	2	update through import_export	6	1
3732	2019-01-24 08:30:41.231762+00	805	805franziscomüllerpa	2	update through import_export	6	1
3733	2019-01-24 08:30:41.23299+00	806	806ernestolopezbalta	2	update through import_export	6	1
3734	2019-01-24 08:30:41.234152+00	807	807alexanderleitmeir	2	update through import_export	6	1
3735	2019-01-24 08:30:41.23537+00	808	808diegokaiserlopez	2	update through import_export	6	1
3736	2019-01-24 08:30:41.236556+00	809	809brunofernandeztor	2	update through import_export	6	1
3737	2019-01-24 08:30:41.237891+00	810	810santiagofavelabat	2	update through import_export	6	1
3738	2019-01-24 08:30:41.239084+00	811	811thomasleonardoenr	2	update through import_export	6	1
3739	2019-01-24 08:30:41.240296+00	812	812liamdiederichsenr	2	update through import_export	6	1
3740	2019-01-24 08:30:41.241484+00	813	813andrescarrillogan	2	update through import_export	6	1
3741	2019-01-24 08:30:41.2427+00	814	814santiagocaballero	2	update through import_export	6	1
3742	2019-01-24 08:30:41.243928+00	815	815brunoarredondoeli	2	update through import_export	6	1
3743	2019-01-24 08:30:41.24524+00	816	816luisabdeljalekmil	2	update through import_export	6	1
3744	2019-01-24 08:51:02.760445+00	1543	profesordemovalle	1	new through import_export	6	1
3745	2019-01-24 08:51:02.76273+00	1544	dtagustin	1	new through import_export	6	1
3746	2019-01-24 08:51:02.764278+00	1545	rodrigoromano	1	new through import_export	6	1
3747	2019-01-24 08:51:02.765737+00	1546	danielpacheco	1	new through import_export	6	1
3748	2019-01-24 08:51:02.767312+00	1547	nuryruiz	1	new through import_export	6	1
3749	2019-01-24 08:51:02.768795+00	1548	kevinmaldonado	1	new through import_export	6	1
3750	2019-01-24 08:51:02.770238+00	1549	williammiguelcalde	1	new through import_export	6	1
3751	2019-01-24 08:51:02.771402+00	1550	carlossanchezrodri	1	new through import_export	6	1
3752	2019-01-24 08:51:02.772527+00	1551	antoniomartinlopez	1	new through import_export	6	1
3753	2019-01-24 08:51:02.773689+00	1552	eduardorodriguez	1	new through import_export	6	1
3754	2019-01-24 08:51:02.774824+00	1553	yanik	1	new through import_export	6	1
3755	2019-01-24 08:51:02.775878+00	1554	jorge	1	new through import_export	6	1
3756	2019-01-24 08:51:02.777229+00	1556	emanuel	1	new through import_export	6	1
3757	2019-01-24 09:20:32.057095+00	1056	aperezd7632 	2	update through import_export	6	1
3758	2019-01-24 09:20:32.059269+00	1071	aemanuelc2514 	2	update through import_export	6	1
3759	2019-01-24 09:20:32.060621+00	1055	araulb3863 	2	update through import_export	6	1
3760	2019-01-24 09:20:32.061916+00	1106	aalbertob9189 	2	update through import_export	6	1
3761	2019-01-24 09:20:32.06322+00	1105	abarrosor7712 	2	update through import_export	6	1
3762	2019-01-24 09:20:32.064506+00	1089	ahernandezs8531 	2	update through import_export	6	1
3763	2019-01-24 09:20:32.065897+00	994	aparram3523 	2	update through import_export	6	1
3764	2019-01-24 09:20:32.067084+00	1040	amarquezm8207 	2	update through import_export	6	1
3765	2019-01-24 09:20:32.068203+00	1104	atadeom9041 	2	update through import_export	6	1
3766	2019-01-24 09:20:32.069266+00	1088	ajesusv4435 	2	update through import_export	6	1
3767	2019-01-24 09:20:32.070456+00	993	aaraths4551 	2	update through import_export	6	1
3768	2019-01-24 09:20:32.071544+00	1103	adavidf0573 	2	update through import_export	6	1
3769	2019-01-24 09:20:32.072809+00	1054	asebastiana0810 	2	update through import_export	6	1
3770	2019-01-24 09:20:32.073941+00	1122	airiaquisr0533 	2	update through import_export	6	1
3771	2019-01-24 09:20:32.075037+00	1023	alozanol7696 	2	update through import_export	6	1
3772	2019-01-24 09:20:32.076144+00	1022	adanielp8572 	2	update through import_export	6	1
3773	2019-01-24 09:20:32.077239+00	1039	ajavierp8158 	2	update through import_export	6	1
3774	2019-01-24 09:20:32.078309+00	1087	abayardis2489 	2	update through import_export	6	1
3775	2019-01-24 09:20:32.079313+00	1021	aherediav3052 	2	update through import_export	6	1
3776	2019-01-24 09:20:32.080404+00	1038	bnicolasc3661 	2	update through import_export	6	1
3777	2019-01-24 09:20:32.081451+00	992	buribes1726 	2	update through import_export	6	1
3778	2019-01-24 09:20:32.082554+00	991	byazidb5869 	2	update through import_export	6	1
3779	2019-01-24 09:20:32.083613+00	1020	bgaelg0824 	2	update through import_export	6	1
3780	2019-01-24 09:20:32.084731+00	1121	csaids0407 	2	update through import_export	6	1
3781	2019-01-24 09:20:32.085846+00	1120	cpalomas7560 	2	update through import_export	6	1
3782	2019-01-24 09:20:32.086928+00	1006	cantoniog3243 	2	update through import_export	6	1
3783	2019-01-24 09:20:32.088148+00	990	celianb0722 	2	update through import_export	6	1
3784	2019-01-24 09:20:32.089245+00	1102	cisaacd9740 	2	update through import_export	6	1
3785	2019-01-24 09:20:32.090352+00	1101	cledezmat2121 	2	update through import_export	6	1
3786	2019-01-24 09:20:32.091429+00	989	csantanao7278 	2	update through import_export	6	1
3787	2019-01-24 09:20:32.092557+00	1086	cnaimr0917 	2	update through import_export	6	1
3788	2019-01-24 09:20:32.093716+00	1019	dfabrizioj0707 	2	update through import_export	6	1
3789	2019-01-24 09:20:32.094828+00	1070	dsaulm8658 	2	update through import_export	6	1
3790	2019-01-24 09:20:32.095968+00	1053	dandrss7353 	2	update through import_export	6	1
3791	2019-01-24 09:20:32.097076+00	1037	demiliol2321 	2	update through import_export	6	1
3792	2019-01-24 09:20:32.098215+00	1085	dgalvan3022 	2	update through import_export	6	1
3793	2019-01-24 09:20:32.099255+00	1100	dhumbertoa3420 	2	update through import_export	6	1
3794	2019-01-24 09:20:32.100327+00	988	disaact8036 	2	update through import_export	6	1
3795	2019-01-24 09:20:32.101358+00	1018	dmuros3760 	2	update through import_export	6	1
3796	2019-01-24 09:20:32.102575+00	1069	drodriguezb7768 	2	update through import_export	6	1
3797	2019-01-24 09:20:32.103691+00	987	dvalencianom0541 	2	update through import_export	6	1
3798	2019-01-24 09:20:32.104838+00	1068	ealessandror1240 	2	update through import_export	6	1
3799	2019-01-24 09:20:32.105929+00	1052	epatriciom8239 	2	update through import_export	6	1
3800	2019-01-24 09:20:32.10701+00	1084	esantiagoh2839 	2	update through import_export	6	1
3801	2019-01-24 09:20:32.108127+00	1035	edavidc2822 	2	update through import_export	6	1
3802	2019-01-24 09:20:32.109309+00	1051	ealexanderi0375 	2	update through import_export	6	1
3803	2019-01-24 09:20:32.11042+00	1034	ecaldronc1533 	2	update through import_export	6	1
3804	2019-01-24 09:20:32.111499+00	1033	egomezj1627 	2	update through import_export	6	1
3805	2019-01-24 09:20:32.112591+00	1017	evargasr5236 	2	update through import_export	6	1
3806	2019-01-24 09:20:32.113714+00	1067	evazqueza3509 	2	update through import_export	6	1
3807	2019-01-24 09:20:32.114792+00	1050	ezeledona5715 	2	update through import_export	6	1
3808	2019-01-24 09:20:32.115919+00	1016	eespinosaa0320 	2	update through import_export	6	1
3809	2019-01-24 09:20:32.117034+00	1005	eorozcot7266 	2	update through import_export	6	1
3810	2019-01-24 09:20:32.118245+00	1083	ebelmontem2843 	2	update through import_export	6	1
3811	2019-01-24 09:20:32.11933+00	1099	earanar9020 	2	update through import_export	6	1
3812	2019-01-24 09:20:32.120678+00	1004	ejesusn4706 	2	update through import_export	6	1
3813	2019-01-24 09:20:32.122132+00	1015	1015erickleonardoher	2	update through import_export	6	1
3814	2019-01-24 09:20:32.123553+00	1003	1003erickrobertogonz	2	update through import_export	6	1
3815	2019-01-24 09:20:32.124896+00	1119	1119fatimavazquezcor	2	update through import_export	6	1
3816	2019-01-24 09:20:32.12609+00	986	986fernandoharomerca	2	update through import_export	6	1
3817	2019-01-24 09:20:32.127177+00	1032	1032francovertizvill	2	update through import_export	6	1
3818	2019-01-24 09:20:32.128252+00	1118	1118fridasofiamartin	2	update through import_export	6	1
3819	2019-01-24 09:20:32.129305+00	1098	1098giancarlocamilli	2	update through import_export	6	1
3820	2019-01-24 09:20:32.130439+00	1002	1002gustavoeduardono	2	update through import_export	6	1
3821	2019-01-24 09:20:32.131433+00	985	985hectoraldereteguz	2	update through import_export	6	1
3822	2019-01-24 09:20:32.13243+00	1001	1001hectoralonsomarq	2	update through import_export	6	1
3823	2019-01-24 09:20:32.133417+00	1049	1049ikergarciaortiz	2	update through import_export	6	1
3824	2019-01-24 09:20:32.134495+00	1097	1097ikerlazcanomonzo	2	update through import_export	6	1
3825	2019-01-24 09:20:32.135558+00	1048	1048ikervazquez 	2	update through import_export	6	1
3826	2019-01-24 09:20:32.136625+00	1047	1047isaacchavezrojas	2	update through import_export	6	1
3827	2019-01-24 09:20:32.137766+00	1046	1046isaachernandezpa	2	update through import_export	6	1
3828	2019-01-24 09:20:32.138876+00	984	984ivanhernandezpadu	2	update through import_export	6	1
3829	2019-01-24 09:20:32.139924+00	1014	1014jesusandresherna	2	update through import_export	6	1
3830	2019-01-24 09:20:32.141007+00	1117	1117jimenasanchezoga	2	update through import_export	6	1
3831	2019-01-24 09:20:32.142246+00	1031	1031joaquincastellan	2	update through import_export	6	1
3832	2019-01-24 09:20:32.143498+00	1030	1030joelhernandezdur	2	update through import_export	6	1
3833	2019-01-24 09:20:32.144762+00	1082	1082jorgeemiliochape	2	update through import_export	6	1
3834	2019-01-24 09:20:32.146002+00	1012	1012joseabizaidrusz	2	update through import_export	6	1
3835	2019-01-24 09:20:32.147563+00	1096	1096joseandresherrer	2	update through import_export	6	1
3836	2019-01-24 09:20:32.149166+00	1066	1066josedavidmelonar	2	update through import_export	6	1
3837	2019-01-24 09:20:32.151888+00	1000	1000joseguillermosan	2	update through import_export	6	1
3838	2019-01-24 09:20:32.153749+00	999	999josemanuelfragoso	2	update through import_export	6	1
3839	2019-01-24 09:20:32.155874+00	1081	1081juanpabloandrade	2	update through import_export	6	1
3840	2019-01-24 09:20:32.157683+00	1045	1045juanpablodelator	2	update through import_export	6	1
3841	2019-01-24 09:20:32.159536+00	1080	1080julianrodriguezh	2	update through import_export	6	1
3842	2019-01-24 09:20:32.161152+00	1029	1029leonardocastillo	2	update through import_export	6	1
3843	2019-01-24 09:20:32.162931+00	1079	1079leonardojavierra	2	update through import_export	6	1
3844	2019-01-24 09:20:32.164647+00	1028	1028leonardolopezram	2	update through import_export	6	1
3845	2019-01-24 09:20:32.166208+00	1044	1044leonardomaximili	2	update through import_export	6	1
3846	2019-01-24 09:20:32.167794+00	1095	1095leonardovazquezm	2	update through import_export	6	1
3847	2019-01-24 09:20:32.169367+00	1116	1116lucianazanellapl	2	update through import_export	6	1
3848	2019-01-24 09:20:32.170901+00	1115	1115marianalozanolag	2	update through import_export	6	1
3849	2019-01-24 09:20:32.178501+00	1078	1078mauriciovillarre	2	update through import_export	6	1
3850	2019-01-24 09:20:32.179944+00	1043	1043maximilianomolin	2	update through import_export	6	1
3851	2019-01-24 09:20:32.181252+00	1094	1094maximilianoteran	2	update through import_export	6	1
3852	2019-01-24 09:20:32.18255+00	1011	1011miguelangelmaria	2	update through import_export	6	1
3853	2019-01-24 09:20:32.183915+00	1065	1065mikelmedinazarza	2	update through import_export	6	1
3854	2019-01-24 09:20:32.185133+00	998	998nelsonalejandrome	2	update through import_export	6	1
3855	2019-01-24 09:20:32.186477+00	1027	1027nicolasescobarce	2	update through import_export	6	1
3856	2019-01-24 09:20:32.187895+00	1093	1093nicolashernandez	2	update through import_export	6	1
3857	2019-01-24 09:20:32.189157+00	1042	1042nicolassuarezcob	2	update through import_export	6	1
3858	2019-01-24 09:20:32.190413+00	1010	1010omaremmanuelmart	2	update through import_export	6	1
3859	2019-01-24 09:20:32.19171+00	1064	1064omarzavalapeña	2	update through import_export	6	1
3860	2019-01-24 09:20:32.193092+00	997	997oscarortegaespind	2	update through import_export	6	1
3861	2019-01-24 09:20:32.194418+00	1063	1063pabloalbertoespe	2	update through import_export	6	1
3862	2019-01-24 09:20:32.195707+00	1026	1026pabloalvaradogon	2	update through import_export	6	1
3863	2019-01-24 09:20:32.196994+00	1077	1077pablobelmontemen	2	update through import_export	6	1
3864	2019-01-24 09:20:32.198276+00	1114	1114pamelagissetcort	2	update through import_export	6	1
3865	2019-01-24 09:20:32.199614+00	1062	1062patricioorozcoto	2	update through import_export	6	1
3866	2019-01-24 09:20:32.200862+00	1092	1092rafaelmisaelsoto	2	update through import_export	6	1
3867	2019-01-24 09:20:32.202086+00	983	983rafaelnavarodrigu	2	update through import_export	6	1
3868	2019-01-24 09:20:32.203465+00	1113	1113renatajuareguimu	2	update through import_export	6	1
3869	2019-01-24 09:20:32.204807+00	1061	1061renejosuebuendia	2	update through import_export	6	1
3870	2019-01-24 09:20:32.20607+00	1076	1076ricardodelrioavi	2	update through import_export	6	1
3871	2019-01-24 09:20:32.207419+00	1060	1060ricardosantiagor	2	update through import_export	6	1
3872	2019-01-24 09:20:32.208762+00	1075	1075rodrigobasiliohe	2	update through import_export	6	1
3873	2019-01-24 09:20:32.210061+00	1112	1112roxanaledezmatru	2	update through import_export	6	1
3874	2019-01-24 09:20:32.211366+00	1091	1091rubenarturomendo	2	update through import_export	6	1
3875	2019-01-24 09:20:32.21269+00	1074	1074rubenfranciscogo	2	update through import_export	6	1
3876	2019-01-24 09:20:32.214032+00	1041	1041santiagobenjamin	2	update through import_export	6	1
3877	2019-01-24 09:20:32.215542+00	996	996santiagocastellan	2	update through import_export	6	1
3878	2019-01-24 09:20:32.216936+00	1073	1073santiagofrancomo	2	update through import_export	6	1
3879	2019-01-24 09:20:32.218309+00	982	982santiagogaribaylu	2	update through import_export	6	1
3880	2019-01-24 09:20:32.219775+00	981	981santiagolopezruiz	2	update through import_export	6	1
3881	2019-01-24 09:20:32.221102+00	980	980santiagomiranda 	2	update through import_export	6	1
3882	2019-01-24 09:20:32.22236+00	1059	1059santiagonoriegav	2	update through import_export	6	1
3883	2019-01-24 09:20:32.223694+00	1072	1072santiagoreyesrom	2	update through import_export	6	1
3884	2019-01-24 09:20:32.224998+00	1058	1058santiagotorresve	2	update through import_export	6	1
3885	2019-01-24 09:20:32.226378+00	1057	1057sebastianhernand	2	update through import_export	6	1
3886	2019-01-24 09:20:32.227674+00	1025	1025sebastianlopezdu	2	update through import_export	6	1
3887	2019-01-24 09:20:32.22888+00	1090	1090selikpalaciospal	2	update through import_export	6	1
3888	2019-01-24 09:20:32.230066+00	1111	1111sofiairiaquisrod	2	update through import_export	6	1
3889	2019-01-24 09:20:32.231216+00	1009	1009sorenalbertojard	2	update through import_export	6	1
3890	2019-01-24 09:20:32.232404+00	1110	1110trianafortenells	2	update through import_export	6	1
3891	2019-01-24 09:20:32.233592+00	1109	1109valentinacamacho	2	update through import_export	6	1
3892	2019-01-24 09:20:32.234791+00	1024	1024victorjovangarci	2	update through import_export	6	1
3893	2019-01-24 09:20:32.235977+00	995	995victormanuelsando	2	update through import_export	6	1
3894	2019-01-24 09:20:32.237146+00	979	979victorrafaelsevil	2	update through import_export	6	1
3895	2019-01-24 09:20:32.238335+00	1108	1108ximenamontesinos	2	update through import_export	6	1
3896	2019-01-24 09:20:32.239583+00	1008	1008yahirramirezorti	2	update through import_export	6	1
3897	2019-01-24 09:20:32.240773+00	1007	1007zoeayelengarcia	2	update through import_export	6	1
3898	2019-01-24 09:20:32.24214+00	1107	1107zoefloresgracia	2	update through import_export	6	1
3899	2019-01-24 18:38:23.877807+00	1056	aperezd7632 	2	update through import_export	6	1
3900	2019-01-24 18:38:23.880907+00	1071	aemanuelc2514 	2	update through import_export	6	1
3901	2019-01-24 18:38:23.882659+00	1055	araulb3863 	2	update through import_export	6	1
3902	2019-01-24 18:38:23.884331+00	1106	aalbertob9189 	2	update through import_export	6	1
3903	2019-01-24 18:38:23.885985+00	1105	abarrosor7712 	2	update through import_export	6	1
3904	2019-01-24 18:38:23.888028+00	1089	ahernandezs8531 	2	update through import_export	6	1
3905	2019-01-24 18:38:23.890308+00	994	aparram3523 	2	update through import_export	6	1
3906	2019-01-24 18:38:23.892261+00	1040	amarquezm8207 	2	update through import_export	6	1
3907	2019-01-24 18:38:23.894055+00	1104	atadeom9041 	2	update through import_export	6	1
3908	2019-01-24 18:38:23.895799+00	1088	ajesusv4435 	2	update through import_export	6	1
3909	2019-01-24 18:38:23.897471+00	993	aaraths4551 	2	update through import_export	6	1
3910	2019-01-24 18:38:23.89895+00	1103	adavidf0573 	2	update through import_export	6	1
3911	2019-01-24 18:38:23.900499+00	1054	asebastiana0810 	2	update through import_export	6	1
3912	2019-01-24 18:38:23.902143+00	1122	airiaquisr0533 	2	update through import_export	6	1
3913	2019-01-24 18:38:23.903668+00	1023	alozanol7696 	2	update through import_export	6	1
3914	2019-01-24 18:38:23.905323+00	1022	adanielp8572 	2	update through import_export	6	1
3915	2019-01-24 18:38:23.906977+00	1039	ajavierp8158 	2	update through import_export	6	1
3916	2019-01-24 18:38:23.908512+00	1087	abayardis2489 	2	update through import_export	6	1
3917	2019-01-24 18:38:23.909928+00	1021	aherediav3052 	2	update through import_export	6	1
3918	2019-01-24 18:38:23.911335+00	1038	bnicolasc3661 	2	update through import_export	6	1
3919	2019-01-24 18:38:23.91268+00	992	buribes1726 	2	update through import_export	6	1
3920	2019-01-24 18:38:23.91409+00	991	byazidb5869 	2	update through import_export	6	1
3921	2019-01-24 18:38:23.915634+00	1020	bgaelg0824 	2	update through import_export	6	1
3922	2019-01-24 18:38:23.917129+00	1121	csaids0407 	2	update through import_export	6	1
3923	2019-01-24 18:38:23.918694+00	1120	cpalomas7560 	2	update through import_export	6	1
3924	2019-01-24 18:38:23.920058+00	1006	cantoniog3243 	2	update through import_export	6	1
3925	2019-01-24 18:38:23.92141+00	990	celianb0722 	2	update through import_export	6	1
3926	2019-01-24 18:38:23.922816+00	1102	cisaacd9740 	2	update through import_export	6	1
3927	2019-01-24 18:38:23.924192+00	1101	cledezmat2121 	2	update through import_export	6	1
3928	2019-01-24 18:38:23.925502+00	989	csantanao7278 	2	update through import_export	6	1
3929	2019-01-24 18:38:23.926827+00	1086	cnaimr0917 	2	update through import_export	6	1
3930	2019-01-24 18:38:23.928223+00	1019	dfabrizioj0707 	2	update through import_export	6	1
3931	2019-01-24 18:38:23.92959+00	1070	dsaulm8658 	2	update through import_export	6	1
3932	2019-01-24 18:38:23.931026+00	1053	dandrss7353 	2	update through import_export	6	1
3933	2019-01-24 18:38:23.93241+00	1037	demiliol2321 	2	update through import_export	6	1
3934	2019-01-24 18:38:23.933818+00	1085	dgalvan3022 	2	update through import_export	6	1
3935	2019-01-24 18:38:23.935189+00	1100	dhumbertoa3420 	2	update through import_export	6	1
3936	2019-01-24 18:38:23.936553+00	988	disaact8036 	2	update through import_export	6	1
3937	2019-01-24 18:38:23.937986+00	1018	dmuros3760 	2	update through import_export	6	1
3938	2019-01-24 18:38:23.939429+00	1069	drodriguezb7768 	2	update through import_export	6	1
3939	2019-01-24 18:38:23.940834+00	987	dvalencianom0541 	2	update through import_export	6	1
3940	2019-01-24 18:38:23.94221+00	1068	ealessandror1240 	2	update through import_export	6	1
3941	2019-01-24 18:38:23.943551+00	1052	epatriciom8239 	2	update through import_export	6	1
3942	2019-01-24 18:38:23.94494+00	1084	esantiagoh2839 	2	update through import_export	6	1
3943	2019-01-24 18:38:23.946532+00	1035	edavidc2822 	2	update through import_export	6	1
3944	2019-01-24 18:38:23.947883+00	1051	ealexanderi0375 	2	update through import_export	6	1
3945	2019-01-24 18:38:23.949236+00	1034	ecaldronc1533 	2	update through import_export	6	1
3946	2019-01-24 18:38:23.950692+00	1033	egomezj1627 	2	update through import_export	6	1
3947	2019-01-24 18:38:23.952059+00	1017	evargasr5236 	2	update through import_export	6	1
3948	2019-01-24 18:38:23.953414+00	1067	evazqueza3509 	2	update through import_export	6	1
3949	2019-01-24 18:38:23.954836+00	1050	ezeledona5715 	2	update through import_export	6	1
3950	2019-01-24 18:38:23.956085+00	1016	eespinosaa0320 	2	update through import_export	6	1
3951	2019-01-24 18:38:23.957365+00	1005	eorozcot7266 	2	update through import_export	6	1
3952	2019-01-24 18:38:23.958724+00	1083	ebelmontem2843 	2	update through import_export	6	1
3953	2019-01-24 18:38:23.959998+00	1099	earanar9020 	2	update through import_export	6	1
3954	2019-01-24 18:38:23.961356+00	1004	ejesusn4706 	2	update through import_export	6	1
3955	2019-01-24 18:38:23.962711+00	1015	1015erickleonardoher	2	update through import_export	6	1
3956	2019-01-24 18:38:23.96409+00	1003	erobertog2849 	2	update through import_export	6	1
3957	2019-01-24 18:38:23.96542+00	1119	fvazquezc1724 	2	update through import_export	6	1
3958	2019-01-24 18:38:23.966687+00	986	fharom4034 	2	update through import_export	6	1
3959	2019-01-24 18:38:23.968031+00	1032	fvertizv6207 	2	update through import_export	6	1
3960	2019-01-24 18:38:23.969228+00	1118	fsofiam2665 	2	update through import_export	6	1
3961	2019-01-24 18:38:23.970745+00	1098	gcamillig5128 	2	update through import_export	6	1
3962	2019-01-24 18:38:23.972254+00	1002	geduardon2420 	2	update through import_export	6	1
3963	2019-01-24 18:38:23.973768+00	985	haldreteg4119 	2	update through import_export	6	1
3964	2019-01-24 18:38:23.975239+00	1001	halonsom7386 	2	update through import_export	6	1
3965	2019-01-24 18:38:23.976878+00	1049	igarciao5474 	2	update through import_export	6	1
3966	2019-01-24 18:38:23.978498+00	1097	ilazcanom8504 	2	update through import_export	6	1
3967	2019-01-24 18:38:23.98035+00	1048	ivazquez1272 	2	update through import_export	6	1
3968	2019-01-24 18:38:23.982022+00	1047	ichavezr5918 	2	update through import_export	6	1
3969	2019-01-24 18:38:23.983626+00	1046	ihernndezp1891 	2	update through import_export	6	1
3970	2019-01-24 18:38:23.985228+00	984	ihernandezp8288 	2	update through import_export	6	1
3971	2019-01-24 18:38:23.98647+00	1014	jandrsh2811 	2	update through import_export	6	1
3972	2019-01-24 18:38:23.987617+00	1117	jsanchezo0735 	2	update through import_export	6	1
3973	2019-01-24 18:38:23.988754+00	1031	jcastellanosb1436 	2	update through import_export	6	1
3974	2019-01-24 18:38:23.989938+00	1030	jhernandezd8173 	2	update through import_export	6	1
3975	2019-01-24 18:38:23.991157+00	1082	jemilioc4481 	2	update through import_export	6	1
3976	2019-01-24 18:38:23.992418+00	1012	jabizaidr3410 	2	update through import_export	6	1
3977	2019-01-24 18:38:23.993579+00	1096	jandresh6014 	2	update through import_export	6	1
3978	2019-01-24 18:38:23.994838+00	1066	jdavidm6129 	2	update through import_export	6	1
3979	2019-01-24 18:38:23.995991+00	1000	jguillermos2541 	2	update through import_export	6	1
3980	2019-01-24 18:38:23.997219+00	999	jmanuelf6287 	2	update through import_export	6	1
3981	2019-01-24 18:38:23.998422+00	1081	jpabloa7364 	2	update through import_export	6	1
3982	2019-01-24 18:38:23.999565+00	1045	jpablod8349 	2	update through import_export	6	1
3983	2019-01-24 18:38:24.000682+00	1080	jrodriguezh5860 	2	update through import_export	6	1
3984	2019-01-24 18:38:24.002001+00	1029	lcastillob5888 	2	update through import_export	6	1
3985	2019-01-24 18:38:24.003267+00	1079	ljavierr3806 	2	update through import_export	6	1
3986	2019-01-24 18:38:24.004526+00	1028	llopezr8709 	2	update through import_export	6	1
3987	2019-01-24 18:38:24.005885+00	1044	lmaximilianon3544 	2	update through import_export	6	1
3988	2019-01-24 18:38:24.007042+00	1095	lvazquezm7006 	2	update through import_export	6	1
3989	2019-01-24 18:38:24.008218+00	1116	lzanellap1999 	2	update through import_export	6	1
3990	2019-01-24 18:38:24.009314+00	1115	mlozanol7338 	2	update through import_export	6	1
3991	2019-01-24 18:38:24.010468+00	1078	mvillarrealc5386 	2	update through import_export	6	1
3992	2019-01-24 18:38:24.011796+00	1043	mmolinar0391 	2	update through import_export	6	1
3993	2019-01-24 18:38:24.013396+00	1094	mterand2669 	2	update through import_export	6	1
3994	2019-01-24 18:38:24.014812+00	1011	mangelm0232 	2	update through import_export	6	1
3995	2019-01-24 18:38:24.016205+00	1065	mmedinaz2976 	2	update through import_export	6	1
3996	2019-01-24 18:38:24.01751+00	998	nalejandrom4618 	2	update through import_export	6	1
3997	2019-01-24 18:38:24.018899+00	1027	nescobarc9320 	2	update through import_export	6	1
3998	2019-01-24 18:38:24.020128+00	1093	nhernandez8591 	2	update through import_export	6	1
3999	2019-01-24 18:38:24.021345+00	1042	nsuarezc0001 	2	update through import_export	6	1
4000	2019-01-24 18:38:24.022802+00	1010	oemmanuelm2150 	2	update through import_export	6	1
4001	2019-01-24 18:38:24.024165+00	1064	ozavalap6502 	2	update through import_export	6	1
4002	2019-01-24 18:38:24.025525+00	997	oortegae0365 	2	update through import_export	6	1
4003	2019-01-24 18:38:24.027043+00	1063	palbertoe2245 	2	update through import_export	6	1
4004	2019-01-24 18:38:24.028376+00	1026	palvaradog2217 	2	update through import_export	6	1
4005	2019-01-24 18:38:24.029755+00	1077	pbelmontem4401 	2	update through import_export	6	1
4006	2019-01-24 18:38:24.031093+00	1114	pgissetc3519 	2	update through import_export	6	1
4007	2019-01-24 18:38:24.032417+00	1062	porozcot9443 	2	update through import_export	6	1
4008	2019-01-24 18:38:24.033709+00	1092	rmisaels9902 	2	update through import_export	6	1
4009	2019-01-24 18:38:24.035015+00	983	rnavar8636 	2	update through import_export	6	1
4010	2019-01-24 18:38:24.036142+00	1113	rjuareguim8043 	2	update through import_export	6	1
4011	2019-01-24 18:38:24.037325+00	1061	rjosueb6214 	2	update through import_export	6	1
4012	2019-01-24 18:38:24.038759+00	1076	rdelr2586 	2	update through import_export	6	1
4013	2019-01-24 18:38:24.039896+00	1060	rsantiagor8061 	2	update through import_export	6	1
4014	2019-01-24 18:38:24.041061+00	1075	rbasilioh0105 	2	update through import_export	6	1
4015	2019-01-24 18:38:24.042206+00	1112	rledezmat5060 	2	update through import_export	6	1
4016	2019-01-24 18:38:24.043386+00	1091	rarturom8148 	2	update through import_export	6	1
4017	2019-01-24 18:38:24.044625+00	1074	rfranciscog8161 	2	update through import_export	6	1
4018	2019-01-24 18:38:24.045846+00	1041	sbenjaminc3869 	2	update through import_export	6	1
4019	2019-01-24 18:38:24.047024+00	996	scastellanosb4287 	2	update through import_export	6	1
4020	2019-01-24 18:38:24.048142+00	1073	sfrancom0897 	2	update through import_export	6	1
4021	2019-01-24 18:38:24.04921+00	982	sgaribayl6327 	2	update through import_export	6	1
4022	2019-01-24 18:38:24.050313+00	981	slopezr1429 	2	update through import_export	6	1
4023	2019-01-24 18:38:24.051457+00	980	smiranda2013 	2	update through import_export	6	1
4024	2019-01-24 18:38:24.052699+00	1059	snoriegav5007 	2	update through import_export	6	1
4025	2019-01-24 18:38:24.053864+00	1072	sreyesr8018 	2	update through import_export	6	1
4026	2019-01-24 18:38:24.055+00	1058	storresv2994 	2	update through import_export	6	1
4027	2019-01-24 18:38:24.056152+00	1057	shernandez3535 	2	update through import_export	6	1
4028	2019-01-24 18:38:24.057344+00	1025	slopezd0099 	2	update through import_export	6	1
4029	2019-01-24 18:38:24.058558+00	1090	spalaciosp5883 	2	update through import_export	6	1
4030	2019-01-24 18:38:24.059715+00	1111	siriaquisr7112 	2	update through import_export	6	1
4031	2019-01-24 18:38:24.060836+00	1009	salbertoj3060 	2	update through import_export	6	1
4032	2019-01-24 18:38:24.06197+00	1110	tfortenells3587 	2	update through import_export	6	1
4033	2019-01-24 18:38:24.063079+00	1109	vcamachou1707 	2	update through import_export	6	1
4034	2019-01-24 18:38:24.06411+00	1024	vjovang9093 	2	update through import_export	6	1
4035	2019-01-24 18:38:24.065134+00	995	vmanuels9823 	2	update through import_export	6	1
4036	2019-01-24 18:38:24.066294+00	979	vrafaels0201 	2	update through import_export	6	1
4037	2019-01-24 18:38:24.067418+00	1108	xmontesinoss1520 	2	update through import_export	6	1
4038	2019-01-24 18:38:24.068631+00	1008	yramirezo7993 	2	update through import_export	6	1
4039	2019-01-24 18:38:24.069896+00	1007	zayeleng3695 	2	update through import_export	6	1
4040	2019-01-24 18:38:24.07123+00	1107	zfloresg7755 	2	update through import_export	6	1
4041	2019-01-24 19:07:02.455924+00	1251	mmarin0505	2	update through import_export	6	1
4042	2019-01-24 19:07:02.458478+00	1252	ramon0527	2	update through import_export	6	1
4043	2019-01-24 19:07:02.459924+00	1253	ruben0583	2	update through import_export	6	1
4044	2019-01-24 19:07:02.461882+00	1254	eduardo0367	2	update through import_export	6	1
4045	2019-01-24 19:07:02.463795+00	1255	heron0391	2	update through import_export	6	1
4046	2019-01-24 19:07:02.465756+00	1256	ricardo0455	2	update through import_export	6	1
4047	2019-01-25 08:15:27.52404+00	1557	leonor2019	1	new through import_export	6	1
4048	2019-01-29 18:00:52.133111+00	5	Mazenod	1		16	1
4049	2019-01-29 23:16:09.864726+00	6	IDTC	1		15	1
4050	2019-01-29 23:16:24.747999+00	6	IDTC	2	No ha modificado ningún campo.	15	1
4051	2019-01-29 23:18:42.165811+00	14	IDTC - IDTC	1		17	1
4052	2019-01-29 23:19:22.978096+00	1528	cagui20	2	No ha modificado ningún campo.	11	1
4053	2019-01-30 00:55:09.609032+00	111	Mini tenis1 - IDTC	1		18	1
4054	2019-01-30 00:55:38.202952+00	112	Mini tenis2 - IDTC	1		18	1
4055	2019-01-30 00:55:46.864458+00	111	Mini tenis1 - IDTC	2	Modifica slug.	18	1
4056	2019-01-30 00:56:19.322742+00	113	Mini tenis3 - IDTC	1		18	1
4058	2019-01-30 00:56:50.67086+00	115	Campo de formacion - IDTC	1		18	1
4059	2019-01-30 00:57:04.847302+00	116	Competicion - IDTC	1		18	1
4060	2019-01-30 00:57:41.64939+00	117	Competicion2 - IDTC	1		18	1
4061	2019-01-30 00:57:51.055687+00	116	Competicion1 - IDTC	2	Modifica nombre y slug.	18	1
4062	2019-01-30 01:02:24.319469+00	1558	amolob58	1	new through import_export	6	1
4063	2019-01-30 01:02:24.321767+00	1559	sgutie59	1	new through import_export	6	1
4064	2019-01-30 01:02:24.323363+00	1560	plemai60	1	new through import_export	6	1
4065	2019-01-30 01:02:24.324899+00	1561	ftruji61	1	new through import_export	6	1
4066	2019-01-30 01:02:24.326204+00	1562	aramir62	1	new through import_export	6	1
4067	2019-01-30 01:02:24.327595+00	1563	aguine63	1	new through import_export	6	1
4068	2019-01-30 01:02:24.329004+00	1564	egrau64	1	new through import_export	6	1
4069	2019-01-30 01:02:24.330413+00	1565	asordo65	1	new through import_export	6	1
4070	2019-01-30 01:02:24.331729+00	1566	lheran66	1	new through import_export	6	1
4071	2019-01-30 01:02:24.332933+00	1567	mcontr67	1	new through import_export	6	1
4072	2019-01-30 01:02:24.334176+00	1568	adelaf68	1	new through import_export	6	1
4073	2019-01-30 01:02:24.335346+00	1569	oesmit69	1	new through import_export	6	1
4074	2019-01-30 01:02:24.336462+00	1570	aguiha70	1	new through import_export	6	1
4075	2019-01-30 01:02:24.337728+00	1571	jmiran71	1	new through import_export	6	1
4076	2019-01-30 01:02:24.338866+00	1572	tdelar72	1	new through import_export	6	1
4077	2019-01-30 01:02:24.340018+00	1573	acarri73	1	new through import_export	6	1
4078	2019-01-30 01:02:24.341318+00	1574	mmieri74	1	new through import_export	6	1
4079	2019-01-30 01:02:24.342637+00	1575	mmieri75	1	new through import_export	6	1
4080	2019-01-30 01:02:24.343765+00	1576	hgonza76	1	new through import_export	6	1
4081	2019-01-30 01:02:24.3452+00	1577	jlamas77	1	new through import_export	6	1
4082	2019-01-30 01:02:24.346683+00	1578	rkim78	1	new through import_export	6	1
4083	2019-01-30 01:02:24.348141+00	1579	amacia79	1	new through import_export	6	1
4084	2019-01-30 01:02:24.349806+00	1580	dsariñ80	1	new through import_export	6	1
4085	2019-01-30 01:02:24.351366+00	1581	aledes81	1	new through import_export	6	1
4086	2019-01-30 01:02:24.353059+00	1582	nwuesm82	1	new through import_export	6	1
4087	2019-01-30 01:02:24.354601+00	1583	prodri83	1	new through import_export	6	1
4088	2019-01-30 01:02:24.356139+00	1584	ploarc84	1	new through import_export	6	1
4089	2019-01-30 01:02:24.357739+00	1585	lcastr85	1	new through import_export	6	1
4090	2019-01-30 01:02:24.359028+00	1586	ediaz86	1	new through import_export	6	1
4091	2019-01-30 01:02:24.360359+00	1587	scazar87	1	new through import_export	6	1
4092	2019-01-30 01:02:24.361915+00	1588	jcaice88	1	new through import_export	6	1
4093	2019-01-30 01:02:24.363295+00	1589	uvalen89	1	new through import_export	6	1
4094	2019-01-30 01:02:24.364689+00	1590	apetit90	1	new through import_export	6	1
4095	2019-01-30 01:02:24.366006+00	1591	jmarif91	1	new through import_export	6	1
4096	2019-01-30 01:02:24.367499+00	1592	mloard92	1	new through import_export	6	1
4097	2019-01-30 01:02:24.368968+00	1593	oechav93	1	new through import_export	6	1
4098	2019-01-30 01:02:24.370512+00	1594	wmolin94	1	new through import_export	6	1
4099	2019-01-30 01:02:24.371985+00	1595	aherna95	1	new through import_export	6	1
4100	2019-01-30 01:02:24.373553+00	1596	mperez96	1	new through import_export	6	1
4101	2019-01-30 01:02:24.375289+00	1597	piturr97	1	new through import_export	6	1
4102	2019-01-30 01:02:24.376884+00	1598	aarrie98	1	new through import_export	6	1
4103	2019-01-30 01:02:24.378379+00	1599	ehutte99	1	new through import_export	6	1
4104	2019-01-30 01:02:24.379917+00	1600	jhoyos00	1	new through import_export	6	1
4105	2019-01-30 01:02:24.381443+00	1601	mmaxim01	1	new through import_export	6	1
4106	2019-01-30 01:02:24.383136+00	1602	jagull02	1	new through import_export	6	1
4107	2019-01-30 01:02:24.384753+00	1603	mperez03	1	new through import_export	6	1
4108	2019-01-30 01:02:24.386224+00	1604	gmarti04	1	new through import_export	6	1
4109	2019-01-30 01:02:24.387763+00	1605	ssanch05	1	new through import_export	6	1
4110	2019-01-30 01:02:24.389238+00	1606	irodri06	1	new through import_export	6	1
4111	2019-01-30 01:02:24.39068+00	1607	idedie07	1	new through import_export	6	1
4112	2019-01-30 01:02:24.392169+00	1608	otomke08	1	new through import_export	6	1
4113	2019-01-30 01:02:24.393782+00	1609	llomel09	1	new through import_export	6	1
4114	2019-01-30 01:02:24.39532+00	1610	fweisd10	1	new through import_export	6	1
4115	2019-01-30 01:02:24.396909+00	1611	jgatic11	1	new through import_export	6	1
4116	2019-01-30 01:02:24.398405+00	1612	fmadri12	1	new through import_export	6	1
4117	2019-01-30 01:02:24.399959+00	1613	sperez13	1	new through import_export	6	1
4118	2019-01-30 01:02:24.401566+00	1614	msalga14	1	new through import_export	6	1
4119	2019-01-30 01:02:24.40293+00	1615	isuare15	1	new through import_export	6	1
4120	2019-01-30 01:02:24.404276+00	1616	sluque16	1	new through import_export	6	1
4121	2019-01-30 01:02:24.405677+00	1617	jvaron17	1	new through import_export	6	1
4122	2019-01-30 01:02:24.406773+00	1618	msagas18	1	new through import_export	6	1
4123	2019-01-30 01:02:24.407838+00	1619	aruiz19	1	new through import_export	6	1
4124	2019-01-30 01:02:24.408981+00	1620	grodri20	1	new through import_export	6	1
4125	2019-01-30 01:02:24.410337+00	1621	rriver21	1	new through import_export	6	1
4126	2019-01-30 01:02:24.411545+00	1622	lperez22	1	new through import_export	6	1
4127	2019-01-30 01:02:24.412908+00	1623	mespin23	1	new through import_export	6	1
4128	2019-01-30 01:02:24.414522+00	1624	pexus24	1	new through import_export	6	1
4129	2019-01-30 01:02:24.415867+00	1625	fkotli25	1	new through import_export	6	1
4130	2019-01-30 01:02:24.419029+00	1626	svicto26	1	new through import_export	6	1
4131	2019-01-30 01:02:24.420307+00	1627	lmaria27	1	new through import_export	6	1
4132	2019-01-30 01:02:24.421562+00	1628	jdozou28	1	new through import_export	6	1
4133	2019-01-30 01:02:24.42275+00	1629	abocli29	1	new through import_export	6	1
4134	2019-01-30 01:02:24.423896+00	1630	aescal30	1	new through import_export	6	1
4135	2019-01-30 01:02:24.425061+00	1631	mhuill31	1	new through import_export	6	1
4136	2019-01-30 01:02:24.42625+00	1632	emende32	1	new through import_export	6	1
4137	2019-01-30 01:02:24.427843+00	1633	nalegr33	1	new through import_export	6	1
4138	2019-01-30 01:02:24.42914+00	1634	rdumas34	1	new through import_export	6	1
4139	2019-01-30 01:02:24.430418+00	1635	sherna35	1	new through import_export	6	1
4140	2019-01-30 01:02:24.431715+00	1636	opanas36	1	new through import_export	6	1
4141	2019-01-30 01:02:24.433397+00	1637	csanch37	1	new through import_export	6	1
4142	2019-01-30 01:02:24.434753+00	1638	emilla38	1	new through import_export	6	1
4143	2019-01-30 01:02:24.436222+00	1639	gcarmo39	1	new through import_export	6	1
4144	2019-01-30 01:02:24.43766+00	1640	lruiz40	1	new through import_export	6	1
4145	2019-01-30 01:02:24.43894+00	1641	mbaule41	1	new through import_export	6	1
4146	2019-01-30 01:02:24.440186+00	1642	sabell42	1	new through import_export	6	1
4147	2019-01-30 01:02:24.441547+00	1643	bgomez43	1	new through import_export	6	1
4148	2019-01-30 01:02:24.442961+00	1644	rflore44	1	new through import_export	6	1
4149	2019-01-30 01:02:24.444524+00	1645	mtisso45	1	new through import_export	6	1
4150	2019-01-30 01:02:24.446291+00	1646	anoria46	1	new through import_export	6	1
4151	2019-01-30 01:02:24.448112+00	1647	clemel47	1	new through import_export	6	1
4152	2019-01-30 01:02:24.450106+00	1648	gbaeza48	1	new through import_export	6	1
4153	2019-01-30 01:02:24.451934+00	1649	cmejia49	1	new through import_export	6	1
4154	2019-01-30 01:02:24.453876+00	1650	akelle50	1	new through import_export	6	1
4155	2019-01-30 01:02:24.455422+00	1651	mmilla51	1	new through import_export	6	1
4156	2019-01-30 01:02:24.456873+00	1652	amarti52	1	new through import_export	6	1
4157	2019-01-30 01:02:24.458245+00	1653	dcayue53	1	new through import_export	6	1
4158	2019-01-30 01:02:24.459538+00	1654	drudel54	1	new through import_export	6	1
4159	2019-01-30 01:02:24.460943+00	1655	nrouxe55	1	new through import_export	6	1
4160	2019-01-30 01:02:24.46234+00	1656	pcontr56	1	new through import_export	6	1
4161	2019-01-30 01:02:24.46382+00	1657	mkoech57	1	new through import_export	6	1
4162	2019-01-30 01:02:24.465326+00	1658	slucas58	1	new through import_export	6	1
4163	2019-01-30 01:02:24.466793+00	1659	icarlo59	1	new through import_export	6	1
4164	2019-01-30 01:02:24.468141+00	1660	mmaidi60	1	new through import_export	6	1
4165	2019-01-30 01:02:24.469583+00	1661	dblanc61	1	new through import_export	6	1
4166	2019-01-30 01:02:24.471166+00	1662	srodri62	1	new through import_export	6	1
4167	2019-01-30 01:02:24.472739+00	1663	ediaz63	1	new through import_export	6	1
4168	2019-01-30 01:02:24.474278+00	1664	rlomel64	1	new through import_export	6	1
4169	2019-01-30 01:02:24.475737+00	1665	sbaler65	1	new through import_export	6	1
4170	2019-01-30 01:02:24.477129+00	1666	lgatic66	1	new through import_export	6	1
4171	2019-01-30 01:02:24.47862+00	1667	atremb67	1	new through import_export	6	1
4172	2019-01-30 01:02:24.480007+00	1668	itremb68	1	new through import_export	6	1
4173	2019-01-30 01:02:24.481435+00	1669	jaugus69	1	new through import_export	6	1
4174	2019-01-30 01:02:24.483066+00	1670	nguerr70	1	new through import_export	6	1
4175	2019-01-30 01:02:24.484542+00	1671	jdot71	1	new through import_export	6	1
4176	2019-01-30 01:02:24.486146+00	1672	egomez72	1	new through import_export	6	1
4177	2019-01-30 01:02:24.487571+00	1673	mgomez73	1	new through import_export	6	1
4178	2019-01-30 01:02:24.489185+00	1674	tbodin74	1	new through import_export	6	1
4179	2019-01-30 01:02:24.490879+00	1675	apuig75	1	new through import_export	6	1
4180	2019-01-30 01:02:24.49238+00	1676	nechev76	1	new through import_export	6	1
4181	2019-01-30 01:02:24.494052+00	1677	nalega77	1	new through import_export	6	1
4182	2019-01-30 01:02:24.495508+00	1678	jsanti78	1	new through import_export	6	1
4183	2019-01-30 01:02:24.496928+00	1679	cechev79	1	new through import_export	6	1
4184	2019-01-30 01:02:24.498609+00	1680	privas80	1	new through import_export	6	1
4185	2019-01-30 01:02:24.500134+00	1681	jcampo81	1	new through import_export	6	1
4186	2019-01-30 01:02:24.501861+00	1682	vriver82	1	new through import_export	6	1
4187	2019-01-30 01:02:24.503388+00	1683	jmorin83	1	new through import_export	6	1
4188	2019-01-30 01:02:24.505196+00	1684	jgomez84	1	new through import_export	6	1
4189	2019-01-30 01:02:24.507362+00	1685	rflore85	1	new through import_export	6	1
4190	2019-01-30 01:02:24.50939+00	1686	vmilla86	1	new through import_export	6	1
4191	2019-01-30 01:02:24.510823+00	1687	mcayue87	1	new through import_export	6	1
4192	2019-01-30 01:02:24.512337+00	1688	ldelar88	1	new through import_export	6	1
4193	2019-01-30 01:02:24.513907+00	1689	frenar89	1	new through import_export	6	1
4194	2019-01-30 01:02:24.515326+00	1690	mpetit90	1	new through import_export	6	1
4195	2019-01-30 01:02:24.516536+00	1691	rmira91	1	new through import_export	6	1
4196	2019-01-30 01:02:24.517703+00	1692	irodri92	1	new through import_export	6	1
4197	2019-01-30 01:02:24.51891+00	1693	pstein93	1	new through import_export	6	1
4198	2019-01-30 01:02:24.520069+00	1694	pespin94	1	new through import_export	6	1
4199	2019-01-30 01:02:24.521578+00	1695	ssalaz95	1	new through import_export	6	1
4200	2019-01-30 01:02:24.523134+00	1696	cbecke96	1	new through import_export	6	1
4201	2019-01-30 01:02:24.524687+00	1697	stena97	1	new through import_export	6	1
4202	2019-01-30 01:02:24.526163+00	1698	jfarfa98	1	new through import_export	6	1
4203	2019-01-30 01:02:24.527616+00	1699	fcorre99	1	new through import_export	6	1
4204	2019-01-30 01:02:24.529255+00	1700	fluna00	1	new through import_export	6	1
4205	2019-01-30 01:02:24.531172+00	1701	mruiz01	1	new through import_export	6	1
4206	2019-01-30 01:02:24.532812+00	1702	zmiche02	1	new through import_export	6	1
4207	2019-01-30 01:02:24.534448+00	1703	abehag03	1	new through import_export	6	1
4208	2019-01-30 01:02:24.536094+00	1704	cbours04	1	new through import_export	6	1
4209	2019-01-30 01:02:24.537901+00	1705	mherra05	1	new through import_export	6	1
4210	2019-01-30 01:02:24.539575+00	1706	itarac06	1	new through import_export	6	1
4211	2019-01-30 01:02:24.541176+00	1707	mdet07	1	new through import_export	6	1
4212	2019-01-30 01:02:24.542878+00	1708	tvaler08	1	new through import_export	6	1
4213	2019-01-30 01:02:24.54447+00	1709	apetit09	1	new through import_export	6	1
4214	2019-01-30 01:02:24.546395+00	1710	mrodel10	1	new through import_export	6	1
4215	2019-01-30 01:02:24.54815+00	1711	ntarac11	1	new through import_export	6	1
4216	2019-01-30 01:02:24.550109+00	1712	akim12	1	new through import_export	6	1
4217	2019-01-30 01:02:24.551695+00	1713	lsuare13	1	new through import_export	6	1
4218	2019-01-30 01:02:24.553164+00	1714	vdiaz14	1	new through import_export	6	1
4219	2019-01-30 01:02:24.554712+00	1715	mdelfi15	1	new through import_export	6	1
4220	2019-01-30 01:02:24.556125+00	1716	psuare16	1	new through import_export	6	1
4221	2019-01-30 01:02:24.557698+00	1717	lgalin17	1	new through import_export	6	1
4222	2019-01-30 01:02:24.559225+00	1718	aroble18	1	new through import_export	6	1
4223	2019-01-30 01:02:24.560766+00	1719	lancon19	1	new through import_export	6	1
4224	2019-01-30 01:02:24.562297+00	1720	aperez20	1	new through import_export	6	1
4225	2019-01-30 01:02:24.564093+00	1721	aperez21	1	new through import_export	6	1
4226	2019-01-30 01:02:24.565905+00	1722	alober22	1	new through import_export	6	1
4227	2019-01-30 01:02:24.567589+00	1723	lledes23	1	new through import_export	6	1
4228	2019-01-30 01:02:24.569268+00	1724	hvacqu24	1	new through import_export	6	1
4229	2019-01-30 01:02:24.571188+00	1725	griver25	1	new through import_export	6	1
4230	2019-01-30 01:02:24.572722+00	1726	bcummi26	1	new through import_export	6	1
4231	2019-01-30 01:02:24.574595+00	1727	nperez27	1	new through import_export	6	1
4232	2019-01-30 01:02:24.576299+00	1728	avacqu28	1	new through import_export	6	1
4233	2019-01-30 01:02:24.578134+00	1729	pvacqu29	1	new through import_export	6	1
4234	2019-01-30 01:02:24.579801+00	1730	enoble30	1	new through import_export	6	1
4235	2019-01-30 01:02:24.581559+00	1731	vcorte31	1	new through import_export	6	1
4236	2019-01-30 01:02:24.583295+00	1732	agarci32	1	new through import_export	6	1
4237	2019-01-30 01:02:24.585071+00	1733	jrios33	1	new through import_export	6	1
4238	2019-01-30 01:02:24.586766+00	1734	imenio34	1	new through import_export	6	1
4239	2019-01-30 01:02:24.588402+00	1735	pmenio35	1	new through import_export	6	1
4240	2019-01-30 01:02:24.589883+00	1736	tmenio36	1	new through import_export	6	1
4241	2019-01-30 01:02:24.591128+00	1737	aperez37	1	new through import_export	6	1
4242	2019-01-30 01:02:24.592351+00	1738	bgarci38	1	new through import_export	6	1
4243	2019-01-30 01:02:24.593596+00	1739	isuare39	1	new through import_export	6	1
4244	2019-01-30 01:02:24.594989+00	1740	smadra40	1	new through import_export	6	1
4245	2019-01-30 01:02:24.59621+00	1741	agarci41	1	new through import_export	6	1
4246	2019-01-30 01:02:24.597574+00	1742	aferna42	1	new through import_export	6	1
4247	2019-01-30 01:02:24.598861+00	1743	emolin43	1	new through import_export	6	1
4248	2019-01-30 01:02:24.600348+00	1744	jlaron44	1	new through import_export	6	1
4249	2019-01-30 01:02:24.601853+00	1745	sgarci45	1	new through import_export	6	1
4250	2019-01-30 01:02:24.603156+00	1746	srouxe46	1	new through import_export	6	1
4251	2019-01-30 01:02:24.604393+00	1747	eflore47	1	new through import_export	6	1
4252	2019-01-30 01:02:24.6056+00	1748	mamado48	1	new through import_export	6	1
4253	2019-01-30 01:02:24.606779+00	1749	rgaona49	1	new through import_export	6	1
4254	2019-01-30 01:02:24.607869+00	1750	jrosal50	1	new through import_export	6	1
4255	2019-01-30 01:02:24.609097+00	1751	amolin51	1	new through import_export	6	1
4256	2019-01-30 01:02:24.610404+00	1752	motheg52	1	new through import_export	6	1
4257	2019-01-30 01:02:24.611548+00	1753	aclark53	1	new through import_export	6	1
4258	2019-01-30 01:02:24.612761+00	1754	pmolin54	1	new through import_export	6	1
4259	2019-01-30 01:02:24.613959+00	1755	sdumas55	1	new through import_export	6	1
4260	2019-01-30 01:02:24.615254+00	1756	sgomez56	1	new through import_export	6	1
4261	2019-01-30 01:02:24.616613+00	1757	evilla57	1	new through import_export	6	1
4262	2019-01-30 01:02:24.617957+00	1758	ialegr58	1	new through import_export	6	1
4263	2019-01-30 01:02:24.619254+00	1759	nobreg59	1	new through import_export	6	1
4264	2019-01-30 01:02:24.620574+00	1760	ltisso60	1	new through import_export	6	1
4265	2019-01-30 01:02:24.622226+00	1761	egovel61	1	new through import_export	6	1
4266	2019-01-30 01:02:24.623531+00	1762	ldelfi62	1	new through import_export	6	1
4267	2019-01-30 01:02:24.624954+00	1763	lgaona63	1	new through import_export	6	1
4268	2019-01-30 01:02:24.626388+00	1764	pvarel64	1	new through import_export	6	1
4269	2019-01-30 01:02:24.627864+00	1765	pgaona65	1	new through import_export	6	1
4270	2019-01-30 01:02:24.629312+00	1766	lmarti66	1	new through import_export	6	1
4271	2019-01-30 01:02:24.630623+00	1767	jmarti67	1	new through import_export	6	1
4272	2019-01-30 01:02:24.631913+00	1768	pareni68	1	new through import_export	6	1
4273	2019-01-30 01:02:24.633164+00	1769	mronga69	1	new through import_export	6	1
4274	2019-01-30 01:02:24.634789+00	1770	cpadro70	1	new through import_export	6	1
4275	2019-01-30 01:02:24.636352+00	1771	rperez71	1	new through import_export	6	1
4276	2019-01-30 01:02:24.637971+00	1772	jjimen72	1	new through import_export	6	1
4277	2019-01-30 01:02:24.639563+00	1773	agas73	1	new through import_export	6	1
4278	2019-01-30 01:02:24.64118+00	1774	adonis74	1	new through import_export	6	1
4279	2019-01-30 01:02:24.642891+00	1775	hhelfe75	1	new through import_export	6	1
4280	2019-01-30 01:02:24.644464+00	1776	bfrade76	1	new through import_export	6	1
4281	2019-01-30 01:02:24.646192+00	1777	mcruz77	1	new through import_export	6	1
4282	2019-01-30 01:02:24.648008+00	1778	mhelfe78	1	new through import_export	6	1
4283	2019-01-30 01:02:24.649817+00	1779	bpuigl79	1	new through import_export	6	1
4284	2019-01-30 01:02:24.651549+00	1780	gchoi80	1	new through import_export	6	1
4285	2019-01-30 01:02:24.653332+00	1781	jagull81	1	new through import_export	6	1
4286	2019-01-30 01:02:24.655183+00	1782	jjimen82	1	new through import_export	6	1
4287	2019-01-30 01:02:24.656938+00	1783	erodri83	1	new through import_export	6	1
4288	2019-01-30 01:02:24.658726+00	1784	psever84	1	new through import_export	6	1
4289	2019-01-30 01:02:24.660377+00	1785	lhelfe85	1	new through import_export	6	1
4290	2019-01-30 01:02:24.662056+00	1786	jsainz86	1	new through import_export	6	1
4291	2019-01-30 01:02:24.663638+00	1787	dohea87	1	new through import_export	6	1
4292	2019-01-30 01:02:24.665243+00	1788	ggovel88	1	new through import_export	6	1
4293	2019-01-30 01:02:24.666775+00	1789	akawua89	1	new through import_export	6	1
4294	2019-01-30 01:02:24.668281+00	1790	jacost90	1	new through import_export	6	1
4295	2019-01-30 01:02:24.669892+00	1791	ssusan91	1	new through import_export	6	1
4296	2019-01-30 01:02:24.671501+00	1792	aituar92	1	new through import_export	6	1
4297	2019-01-30 01:02:24.673069+00	1793	mbravo93	1	new through import_export	6	1
4298	2019-01-30 01:02:24.674807+00	1794	ppadil94	1	new through import_export	6	1
4299	2019-01-30 01:02:24.676451+00	1795	hhozoi95	1	new through import_export	6	1
4300	2019-01-30 01:02:24.678852+00	1796	sdelos96	1	new through import_export	6	1
4301	2019-01-30 01:02:24.680233+00	1797	vdarch97	1	new through import_export	6	1
4302	2019-01-30 01:02:24.681775+00	1798	agomez98	1	new through import_export	6	1
4303	2019-01-30 01:02:24.68319+00	1799	gottal99	1	new through import_export	6	1
4304	2019-01-30 01:02:24.684728+00	1800	jituar00	1	new through import_export	6	1
4305	2019-01-30 01:02:24.68613+00	1801	mgovel01	1	new through import_export	6	1
4306	2019-01-30 01:02:24.68737+00	1802	gholde02	1	new through import_export	6	1
4307	2019-01-30 01:02:24.688535+00	1803	fconch03	1	new through import_export	6	1
4308	2019-01-30 01:02:24.689791+00	1804	mibarr04	1	new through import_export	6	1
4309	2019-01-30 01:02:24.691161+00	1805	mchoi05	1	new through import_export	6	1
4310	2019-01-30 01:02:24.69231+00	1806	cvelez06	1	new through import_export	6	1
4311	2019-01-30 01:02:24.693619+00	1807	apadil07	1	new through import_export	6	1
4312	2019-01-30 01:02:24.694814+00	1808	pvilan08	1	new through import_export	6	1
4313	2019-01-30 01:02:24.696241+00	1809	egurza09	1	new through import_export	6	1
4314	2019-01-30 01:02:24.697582+00	1810	ddemo10	1	new through import_export	6	1
4315	2019-01-30 01:02:24.698921+00	1811	acruz11	1	new through import_export	6	1
4316	2019-01-30 01:02:24.700121+00	1812	rrosas12	1	new through import_export	6	1
4317	2019-01-30 01:02:24.701372+00	1813	eugald13	1	new through import_export	6	1
4318	2019-01-30 01:02:24.70277+00	1814	ananco14	1	new through import_export	6	1
4319	2019-01-30 01:02:24.704008+00	1815	hlino15	1	new through import_export	6	1
4320	2019-01-30 01:02:24.705379+00	1816	jangel16	1	new through import_export	6	1
4321	2019-01-30 01:04:12.556281+00	1558	amolob58	2	Modifica escuela,cede,categoria y diciplina.	11	1
4322	2019-01-30 01:04:41.345963+00	1559	sgutie59	2	Modifica escuela,cede,categoria y diciplina.	11	1
4323	2019-01-30 01:06:00.18911+00	1560	plemai60	2	Modifica escuela,cede,categoria y diciplina.	11	1
4324	2019-01-30 01:06:19.531361+00	1561	ftruji61	2	Modifica escuela,cede,categoria y diciplina.	11	1
4325	2019-01-30 01:06:37.863765+00	1562	aramir62	2	Modifica escuela,cede,categoria y diciplina.	11	1
4326	2019-01-30 01:07:06.157768+00	1563	aguine63	2	Modifica escuela,cede,categoria y diciplina.	11	1
4327	2019-01-30 05:26:50.994072+00	1558	amolob58	2	update through import_export	6	1
4328	2019-01-30 05:26:50.996478+00	1559	sgutie59	2	update through import_export	6	1
4329	2019-01-30 05:26:50.997836+00	1560	plemai60	2	update through import_export	6	1
4330	2019-01-30 05:26:50.999101+00	1561	ftruji61	2	update through import_export	6	1
4331	2019-01-30 05:26:51.000339+00	1562	aramir62	2	update through import_export	6	1
4332	2019-01-30 05:26:51.001566+00	1563	aguine63	2	update through import_export	6	1
4333	2019-01-30 05:26:51.002873+00	1564	egrau64	2	update through import_export	6	1
4334	2019-01-30 05:26:51.00405+00	1565	asordo65	2	update through import_export	6	1
4335	2019-01-30 05:26:51.005312+00	1566	lheran66	2	update through import_export	6	1
4336	2019-01-30 05:26:51.006542+00	1567	mcontr67	2	update through import_export	6	1
4337	2019-01-30 05:26:51.007701+00	1568	adelaf68	2	update through import_export	6	1
4338	2019-01-30 05:26:51.008853+00	1569	oesmit69	2	update through import_export	6	1
4339	2019-01-30 05:26:51.010059+00	1570	aguiha70	2	update through import_export	6	1
4340	2019-01-30 05:26:51.011352+00	1571	jmiran71	2	update through import_export	6	1
4341	2019-01-30 05:26:51.012613+00	1572	tdelar72	2	update through import_export	6	1
4342	2019-01-30 05:26:51.013832+00	1573	acarri73	2	update through import_export	6	1
4343	2019-01-30 05:26:51.014968+00	1574	mmieri74	2	update through import_export	6	1
4344	2019-01-30 05:26:51.016186+00	1575	mmieri75	2	update through import_export	6	1
4345	2019-01-30 05:26:51.017363+00	1576	hgonza76	2	update through import_export	6	1
4346	2019-01-30 05:26:51.018554+00	1577	jlamas77	2	update through import_export	6	1
4347	2019-01-30 05:26:51.019683+00	1578	rkim78	2	update through import_export	6	1
4348	2019-01-30 05:26:51.02081+00	1579	amacia79	2	update through import_export	6	1
4349	2019-01-30 05:26:51.021992+00	1580	dsariñ80	2	update through import_export	6	1
4350	2019-01-30 05:26:51.023218+00	1581	aledes81	2	update through import_export	6	1
4351	2019-01-30 05:26:51.024464+00	1582	nwuesm82	2	update through import_export	6	1
4352	2019-01-30 05:26:51.025743+00	1583	prodri83	2	update through import_export	6	1
4353	2019-01-30 05:26:51.02698+00	1584	ploarc84	2	update through import_export	6	1
4354	2019-01-30 05:26:51.028146+00	1585	lcastr85	2	update through import_export	6	1
4355	2019-01-30 05:26:51.029339+00	1586	ediaz86	2	update through import_export	6	1
4356	2019-01-30 05:26:51.030602+00	1587	scazar87	2	update through import_export	6	1
4357	2019-01-30 05:26:51.031805+00	1588	jcaice88	2	update through import_export	6	1
4358	2019-01-30 05:26:51.033074+00	1589	uvalen89	2	update through import_export	6	1
4359	2019-01-30 05:26:51.034381+00	1590	apetit90	2	update through import_export	6	1
4360	2019-01-30 05:26:51.035562+00	1591	jmarif91	2	update through import_export	6	1
4361	2019-01-30 05:26:51.036724+00	1592	mloard92	2	update through import_export	6	1
4362	2019-01-30 05:26:51.037941+00	1593	oechav93	2	update through import_export	6	1
4363	2019-01-30 05:26:51.039131+00	1594	wmolin94	2	update through import_export	6	1
4364	2019-01-30 05:26:51.040489+00	1595	aherna95	2	update through import_export	6	1
4365	2019-01-30 05:26:51.041731+00	1596	mperez96	2	update through import_export	6	1
4366	2019-01-30 05:26:51.042948+00	1597	piturr97	2	update through import_export	6	1
4367	2019-01-30 05:26:51.044132+00	1598	aarrie98	2	update through import_export	6	1
4368	2019-01-30 05:26:51.045599+00	1599	ehutte99	2	update through import_export	6	1
4369	2019-01-30 05:26:51.046925+00	1600	jhoyos00	2	update through import_export	6	1
4370	2019-01-30 05:26:51.048089+00	1601	mmaxim01	2	update through import_export	6	1
4371	2019-01-30 05:26:51.04927+00	1602	jagull02	2	update through import_export	6	1
4372	2019-01-30 05:26:51.050544+00	1603	mperez03	2	update through import_export	6	1
4373	2019-01-30 05:26:51.051843+00	1604	gmarti04	2	update through import_export	6	1
4374	2019-01-30 05:26:51.053092+00	1605	ssanch05	2	update through import_export	6	1
4375	2019-01-30 05:26:51.055979+00	1606	irodri06	2	update through import_export	6	1
4376	2019-01-30 05:26:51.05726+00	1607	idedie07	2	update through import_export	6	1
4377	2019-01-30 05:26:51.058513+00	1608	otomke08	2	update through import_export	6	1
4378	2019-01-30 05:26:51.059709+00	1609	llomel09	2	update through import_export	6	1
4379	2019-01-30 05:26:51.060953+00	1610	fweisd10	2	update through import_export	6	1
4380	2019-01-30 05:26:51.062226+00	1611	jgatic11	2	update through import_export	6	1
4381	2019-01-30 05:26:51.063439+00	1612	fmadri12	2	update through import_export	6	1
4382	2019-01-30 05:26:51.064647+00	1613	sperez13	2	update through import_export	6	1
4383	2019-01-30 05:26:51.066046+00	1614	msalga14	2	update through import_export	6	1
4384	2019-01-30 05:26:51.06737+00	1615	isuare15	2	update through import_export	6	1
4385	2019-01-30 05:26:51.068756+00	1616	sluque16	2	update through import_export	6	1
4386	2019-01-30 05:26:51.070278+00	1617	jvaron17	2	update through import_export	6	1
4387	2019-01-30 05:26:51.071484+00	1618	msagas18	2	update through import_export	6	1
4388	2019-01-30 05:26:51.072711+00	1619	aruiz19	2	update through import_export	6	1
4389	2019-01-30 05:26:51.074081+00	1620	grodri20	2	update through import_export	6	1
4390	2019-01-30 05:26:51.07526+00	1621	rriver21	2	update through import_export	6	1
4391	2019-01-30 05:26:51.07644+00	1622	lperez22	2	update through import_export	6	1
4392	2019-01-30 05:26:51.077587+00	1623	mespin23	2	update through import_export	6	1
4393	2019-01-30 05:26:51.078726+00	1624	pexus24	2	update through import_export	6	1
4394	2019-01-30 05:26:51.079897+00	1625	fkotli25	2	update through import_export	6	1
4395	2019-01-30 05:26:51.081038+00	1626	svicto26	2	update through import_export	6	1
4396	2019-01-30 05:26:51.082217+00	1627	lmaria27	2	update through import_export	6	1
4397	2019-01-30 05:26:51.083415+00	1628	jdozou28	2	update through import_export	6	1
4398	2019-01-30 05:26:51.084559+00	1629	abocli29	2	update through import_export	6	1
4399	2019-01-30 05:26:51.085991+00	1630	aescal30	2	update through import_export	6	1
4400	2019-01-30 05:26:51.087186+00	1631	mhuill31	2	update through import_export	6	1
4401	2019-01-30 05:26:51.088335+00	1632	emende32	2	update through import_export	6	1
4402	2019-01-30 05:26:51.089648+00	1633	nalegr33	2	update through import_export	6	1
4403	2019-01-30 05:26:51.091031+00	1634	rdumas34	2	update through import_export	6	1
4404	2019-01-30 05:26:51.092325+00	1635	sherna35	2	update through import_export	6	1
4405	2019-01-30 05:26:51.093729+00	1636	opanas36	2	update through import_export	6	1
4406	2019-01-30 05:26:51.095375+00	1637	csanch37	2	update through import_export	6	1
4407	2019-01-30 05:26:51.096943+00	1638	emilla38	2	update through import_export	6	1
4408	2019-01-30 05:26:51.098631+00	1639	gcarmo39	2	update through import_export	6	1
4409	2019-01-30 05:26:51.100171+00	1640	lruiz40	2	update through import_export	6	1
4410	2019-01-30 05:26:51.101741+00	1641	mbaule41	2	update through import_export	6	1
4411	2019-01-30 05:26:51.103268+00	1642	sabell42	2	update through import_export	6	1
4412	2019-01-30 05:26:51.10477+00	1643	bgomez43	2	update through import_export	6	1
4413	2019-01-30 05:26:51.106445+00	1644	rflore44	2	update through import_export	6	1
4414	2019-01-30 05:26:51.107951+00	1645	mtisso45	2	update through import_export	6	1
4415	2019-01-30 05:26:51.109505+00	1646	anoria46	2	update through import_export	6	1
4416	2019-01-30 05:26:51.111051+00	1647	clemel47	2	update through import_export	6	1
4417	2019-01-30 05:26:51.112496+00	1648	gbaeza48	2	update through import_export	6	1
4418	2019-01-30 05:26:51.114004+00	1649	cmejia49	2	update through import_export	6	1
4419	2019-01-30 05:26:51.115444+00	1650	akelle50	2	update through import_export	6	1
4420	2019-01-30 05:26:51.116922+00	1651	mmilla51	2	update through import_export	6	1
4421	2019-01-30 05:26:51.118402+00	1652	amarti52	2	update through import_export	6	1
4422	2019-01-30 05:26:51.119864+00	1653	dcayue53	2	update through import_export	6	1
4423	2019-01-30 05:26:51.121388+00	1654	drudel54	2	update through import_export	6	1
4424	2019-01-30 05:26:51.122992+00	1655	nrouxe55	2	update through import_export	6	1
4425	2019-01-30 05:26:51.124602+00	1656	pcontr56	2	update through import_export	6	1
4426	2019-01-30 05:26:51.126201+00	1657	mkoech57	2	update through import_export	6	1
4427	2019-01-30 05:26:51.127579+00	1658	slucas58	2	update through import_export	6	1
4428	2019-01-30 05:26:51.12903+00	1659	icarlo59	2	update through import_export	6	1
4429	2019-01-30 05:26:51.130447+00	1660	mmaidi60	2	update through import_export	6	1
4430	2019-01-30 05:26:51.131838+00	1661	dblanc61	2	update through import_export	6	1
4431	2019-01-30 05:26:51.133142+00	1662	srodri62	2	update through import_export	6	1
4432	2019-01-30 05:26:51.134528+00	1663	ediaz63	2	update through import_export	6	1
4433	2019-01-30 05:26:51.135866+00	1664	rlomel64	2	update through import_export	6	1
4434	2019-01-30 05:26:51.137169+00	1665	sbaler65	2	update through import_export	6	1
4435	2019-01-30 05:26:51.138965+00	1666	lgatic66	2	update through import_export	6	1
4436	2019-01-30 05:26:51.140335+00	1667	atremb67	2	update through import_export	6	1
4437	2019-01-30 05:26:51.141737+00	1668	itremb68	2	update through import_export	6	1
4438	2019-01-30 05:26:51.143082+00	1669	jaugus69	2	update through import_export	6	1
4439	2019-01-30 05:26:51.144482+00	1670	nguerr70	2	update through import_export	6	1
4440	2019-01-30 05:26:51.145925+00	1671	jdot71	2	update through import_export	6	1
4441	2019-01-30 05:26:51.147302+00	1672	egomez72	2	update through import_export	6	1
4442	2019-01-30 05:26:51.148708+00	1673	mgomez73	2	update through import_export	6	1
4443	2019-01-30 05:26:51.150069+00	1674	tbodin74	2	update through import_export	6	1
4444	2019-01-30 05:26:51.151461+00	1675	apuig75	2	update through import_export	6	1
4445	2019-01-30 05:26:51.152786+00	1676	nechev76	2	update through import_export	6	1
4446	2019-01-30 05:26:51.154167+00	1677	nalega77	2	update through import_export	6	1
4447	2019-01-30 05:26:51.155341+00	1678	jsanti78	2	update through import_export	6	1
4448	2019-01-30 05:26:51.15656+00	1679	cechev79	2	update through import_export	6	1
4449	2019-01-30 05:26:51.157708+00	1680	privas80	2	update through import_export	6	1
4450	2019-01-30 05:26:51.158973+00	1681	jcampo81	2	update through import_export	6	1
4451	2019-01-30 05:26:51.160175+00	1682	vriver82	2	update through import_export	6	1
4452	2019-01-30 05:26:51.16138+00	1683	jmorin83	2	update through import_export	6	1
4453	2019-01-30 05:26:51.16267+00	1684	jgomez84	2	update through import_export	6	1
4454	2019-01-30 05:26:51.164087+00	1685	rflore85	2	update through import_export	6	1
4455	2019-01-30 05:26:51.16532+00	1686	vmilla86	2	update through import_export	6	1
4456	2019-01-30 05:26:51.166588+00	1687	mcayue87	2	update through import_export	6	1
4457	2019-01-30 05:26:51.167835+00	1688	ldelar88	2	update through import_export	6	1
4458	2019-01-30 05:26:51.169164+00	1689	frenar89	2	update through import_export	6	1
4459	2019-01-30 05:26:51.170442+00	1690	mpetit90	2	update through import_export	6	1
4460	2019-01-30 05:26:51.171609+00	1691	rmira91	2	update through import_export	6	1
4461	2019-01-30 05:26:51.172713+00	1692	irodri92	2	update through import_export	6	1
4462	2019-01-30 05:26:51.174038+00	1693	pstein93	2	update through import_export	6	1
4463	2019-01-30 05:26:51.175287+00	1694	pespin94	2	update through import_export	6	1
4464	2019-01-30 05:26:51.176537+00	1695	ssalaz95	2	update through import_export	6	1
4465	2019-01-30 05:26:51.177833+00	1696	cbecke96	2	update through import_export	6	1
4466	2019-01-30 05:26:51.179122+00	1697	stena97	2	update through import_export	6	1
4467	2019-01-30 05:26:51.180288+00	1698	jfarfa98	2	update through import_export	6	1
4468	2019-01-30 05:26:51.18184+00	1699	fcorre99	2	update through import_export	6	1
4469	2019-01-30 05:26:51.183126+00	1700	fluna00	2	update through import_export	6	1
4470	2019-01-30 05:26:51.184307+00	1701	mruiz01	2	update through import_export	6	1
4471	2019-01-30 05:26:51.185489+00	1702	zmiche02	2	update through import_export	6	1
4472	2019-01-30 05:26:51.186644+00	1703	abehag03	2	update through import_export	6	1
4473	2019-01-30 05:26:51.187743+00	1704	cbours04	2	update through import_export	6	1
4474	2019-01-30 05:26:51.188914+00	1705	mherra05	2	update through import_export	6	1
4475	2019-01-30 05:26:51.190029+00	1706	itarac06	2	update through import_export	6	1
4476	2019-01-30 05:26:51.191139+00	1707	mdet07	2	update through import_export	6	1
4477	2019-01-30 05:26:51.192325+00	1708	tvaler08	2	update through import_export	6	1
4478	2019-01-30 05:26:51.193515+00	1709	apetit09	2	update through import_export	6	1
4479	2019-01-30 05:26:51.194669+00	1710	mrodel10	2	update through import_export	6	1
4480	2019-01-30 05:26:51.195849+00	1711	ntarac11	2	update through import_export	6	1
4481	2019-01-30 05:26:51.196967+00	1712	akim12	2	update through import_export	6	1
4482	2019-01-30 05:26:51.198061+00	1713	lsuare13	2	update through import_export	6	1
4483	2019-01-30 05:26:51.199273+00	1714	vdiaz14	2	update through import_export	6	1
4484	2019-01-30 05:26:51.200494+00	1715	mdelfi15	2	update through import_export	6	1
4485	2019-01-30 05:26:51.201765+00	1716	psuare16	2	update through import_export	6	1
4486	2019-01-30 05:26:51.202955+00	1717	lgalin17	2	update through import_export	6	1
4487	2019-01-30 05:26:51.204272+00	1718	aroble18	2	update through import_export	6	1
4488	2019-01-30 05:26:51.205522+00	1719	lancon19	2	update through import_export	6	1
4489	2019-01-30 05:26:51.206909+00	1720	aperez20	2	update through import_export	6	1
4490	2019-01-30 05:26:51.208168+00	1721	aperez21	2	update through import_export	6	1
4491	2019-01-30 05:26:51.209477+00	1722	alober22	2	update through import_export	6	1
4492	2019-01-30 05:26:51.210873+00	1723	lledes23	2	update through import_export	6	1
4493	2019-01-30 05:26:51.212317+00	1724	hvacqu24	2	update through import_export	6	1
4494	2019-01-30 05:26:51.213688+00	1725	griver25	2	update through import_export	6	1
4495	2019-01-30 05:26:51.214814+00	1726	bcummi26	2	update through import_export	6	1
4496	2019-01-30 05:26:51.216077+00	1727	nperez27	2	update through import_export	6	1
4497	2019-01-30 05:26:51.217161+00	1728	avacqu28	2	update through import_export	6	1
4498	2019-01-30 05:26:51.218256+00	1729	pvacqu29	2	update through import_export	6	1
4499	2019-01-30 05:26:51.219295+00	1730	enoble30	2	update through import_export	6	1
4500	2019-01-30 05:26:51.220277+00	1731	vcorte31	2	update through import_export	6	1
4501	2019-01-30 05:26:51.221292+00	1732	agarci32	2	update through import_export	6	1
4502	2019-01-30 05:26:51.222315+00	1733	jrios33	2	update through import_export	6	1
4503	2019-01-30 05:26:51.223348+00	1734	imenio34	2	update through import_export	6	1
4504	2019-01-30 05:26:51.224393+00	1735	pmenio35	2	update through import_export	6	1
4505	2019-01-30 05:26:51.225547+00	1736	tmenio36	2	update through import_export	6	1
4506	2019-01-30 05:26:51.226692+00	1737	aperez37	2	update through import_export	6	1
4507	2019-01-30 05:26:51.227741+00	1738	bgarci38	2	update through import_export	6	1
4508	2019-01-30 05:26:51.228869+00	1739	isuare39	2	update through import_export	6	1
4509	2019-01-30 05:26:51.230011+00	1740	smadra40	2	update through import_export	6	1
4510	2019-01-30 05:26:51.231194+00	1741	agarci41	2	update through import_export	6	1
4511	2019-01-30 05:26:51.232284+00	1742	aferna42	2	update through import_export	6	1
4512	2019-01-30 05:26:51.2334+00	1743	emolin43	2	update through import_export	6	1
4513	2019-01-30 05:26:51.234515+00	1744	jlaron44	2	update through import_export	6	1
4514	2019-01-30 05:26:51.23553+00	1745	sgarci45	2	update through import_export	6	1
4515	2019-01-30 05:26:51.236587+00	1746	srouxe46	2	update through import_export	6	1
4516	2019-01-30 05:26:51.237673+00	1747	eflore47	2	update through import_export	6	1
4517	2019-01-30 05:26:51.238757+00	1748	mamado48	2	update through import_export	6	1
4518	2019-01-30 05:26:51.239806+00	1749	rgaona49	2	update through import_export	6	1
4519	2019-01-30 05:26:51.240964+00	1750	jrosal50	2	update through import_export	6	1
4520	2019-01-30 05:26:51.242058+00	1751	amolin51	2	update through import_export	6	1
4521	2019-01-30 05:26:51.24312+00	1752	motheg52	2	update through import_export	6	1
4522	2019-01-30 05:26:51.244235+00	1753	aclark53	2	update through import_export	6	1
4523	2019-01-30 05:26:51.245341+00	1754	pmolin54	2	update through import_export	6	1
4524	2019-01-30 05:26:51.246472+00	1755	sdumas55	2	update through import_export	6	1
4525	2019-01-30 05:26:51.247507+00	1756	sgomez56	2	update through import_export	6	1
4526	2019-01-30 05:26:51.24854+00	1757	evilla57	2	update through import_export	6	1
4527	2019-01-30 05:26:51.249722+00	1758	ialegr58	2	update through import_export	6	1
4528	2019-01-30 05:26:51.250924+00	1759	nobreg59	2	update through import_export	6	1
4529	2019-01-30 05:26:51.252026+00	1760	ltisso60	2	update through import_export	6	1
4530	2019-01-30 05:26:51.253216+00	1761	egovel61	2	update through import_export	6	1
4531	2019-01-30 05:26:51.254389+00	1762	ldelfi62	2	update through import_export	6	1
4532	2019-01-30 05:26:51.255449+00	1763	lgaona63	2	update through import_export	6	1
4533	2019-01-30 05:26:51.256494+00	1764	pvarel64	2	update through import_export	6	1
4534	2019-01-30 05:26:51.257588+00	1765	pgaona65	2	update through import_export	6	1
4535	2019-01-30 05:26:51.258758+00	1766	lmarti66	2	update through import_export	6	1
4536	2019-01-30 05:26:51.260002+00	1767	jmarti67	2	update through import_export	6	1
4537	2019-01-30 05:26:51.261214+00	1768	pareni68	2	update through import_export	6	1
4538	2019-01-30 05:26:51.262336+00	1769	mronga69	2	update through import_export	6	1
4539	2019-01-30 05:26:51.263579+00	1770	cpadro70	2	update through import_export	6	1
4540	2019-01-30 05:26:51.265035+00	1771	rperez71	2	update through import_export	6	1
4541	2019-01-30 05:26:51.266378+00	1772	jjimen72	2	update through import_export	6	1
4542	2019-01-30 05:26:51.267674+00	1773	agas73	2	update through import_export	6	1
4543	2019-01-30 05:26:51.269026+00	1774	adonis74	2	update through import_export	6	1
4544	2019-01-30 05:26:51.270485+00	1775	hhelfe75	2	update through import_export	6	1
4545	2019-01-30 05:26:51.271841+00	1776	bfrade76	2	update through import_export	6	1
4546	2019-01-30 05:26:51.273152+00	1777	mcruz77	2	update through import_export	6	1
4547	2019-01-30 05:26:51.274629+00	1778	mhelfe78	2	update through import_export	6	1
4548	2019-01-30 05:26:51.275924+00	1779	bpuigl79	2	update through import_export	6	1
4549	2019-01-30 05:26:51.277255+00	1780	gchoi80	2	update through import_export	6	1
4550	2019-01-30 05:26:51.278581+00	1781	jagull81	2	update through import_export	6	1
4551	2019-01-30 05:26:51.279936+00	1782	jjimen82	2	update through import_export	6	1
4552	2019-01-30 05:26:51.2812+00	1783	erodri83	2	update through import_export	6	1
4553	2019-01-30 05:26:51.282502+00	1784	psever84	2	update through import_export	6	1
4554	2019-01-30 05:26:51.283753+00	1785	lhelfe85	2	update through import_export	6	1
4555	2019-01-30 05:26:51.285052+00	1786	jsainz86	2	update through import_export	6	1
4556	2019-01-30 05:26:51.286465+00	1787	dohea87	2	update through import_export	6	1
4557	2019-01-30 05:26:51.287784+00	1788	ggovel88	2	update through import_export	6	1
4558	2019-01-30 05:26:51.289067+00	1789	akawua89	2	update through import_export	6	1
4559	2019-01-30 05:26:51.290454+00	1790	jacost90	2	update through import_export	6	1
4560	2019-01-30 05:26:51.291858+00	1791	ssusan91	2	update through import_export	6	1
4561	2019-01-30 05:26:51.293206+00	1792	aituar92	2	update through import_export	6	1
4562	2019-01-30 05:26:51.294668+00	1793	mbravo93	2	update through import_export	6	1
4563	2019-01-30 05:26:51.295969+00	1794	ppadil94	2	update through import_export	6	1
4564	2019-01-30 05:26:51.297611+00	1795	hhozoi95	2	update through import_export	6	1
4565	2019-01-30 05:26:51.298908+00	1796	sdelos96	2	update through import_export	6	1
4566	2019-01-30 05:26:51.300185+00	1797	vdarch97	2	update through import_export	6	1
4567	2019-01-30 05:26:51.30197+00	1798	agomez98	2	update through import_export	6	1
4568	2019-01-30 05:26:51.303278+00	1799	gottal99	2	update through import_export	6	1
4569	2019-01-30 05:26:51.30457+00	1800	jituar00	2	update through import_export	6	1
4570	2019-01-30 05:26:51.305928+00	1801	mgovel01	2	update through import_export	6	1
4571	2019-01-30 05:26:51.30723+00	1802	gholde02	2	update through import_export	6	1
4572	2019-01-30 05:26:51.308532+00	1803	fconch03	2	update through import_export	6	1
4573	2019-01-30 05:26:51.309956+00	1804	mibarr04	2	update through import_export	6	1
4574	2019-01-30 05:26:51.311251+00	1805	mchoi05	2	update through import_export	6	1
4575	2019-01-30 05:26:51.31252+00	1806	cvelez06	2	update through import_export	6	1
4576	2019-01-30 05:26:51.313763+00	1807	apadil07	2	update through import_export	6	1
4577	2019-01-30 05:26:51.315041+00	1808	pvilan08	2	update through import_export	6	1
4578	2019-01-30 05:26:51.316202+00	1809	egurza09	2	update through import_export	6	1
4579	2019-01-30 05:26:51.317298+00	1810	ddemo10	2	update through import_export	6	1
4580	2019-01-30 05:26:51.31843+00	1811	acruz11	2	update through import_export	6	1
4581	2019-01-30 05:26:51.31949+00	1812	rrosas12	2	update through import_export	6	1
4582	2019-01-30 05:26:51.320602+00	1813	eugald13	2	update through import_export	6	1
4583	2019-01-30 05:26:51.321721+00	1814	ananco14	2	update through import_export	6	1
4584	2019-01-30 05:26:51.32284+00	1815	hlino15	2	update through import_export	6	1
4585	2019-01-30 05:26:51.323913+00	1816	jangel16	2	update through import_export	6	1
4586	2019-01-30 05:57:27.549985+00	1800	jituar00	2	Modifica password.	6	1
4587	2019-01-30 06:06:14.908259+00	1558	amolob58	2	update through import_export	6	1
4588	2019-01-30 06:06:14.911121+00	1559	sgutie59	2	update through import_export	6	1
4589	2019-01-30 06:06:14.913125+00	1560	plemai60	2	update through import_export	6	1
4590	2019-01-30 06:06:14.915216+00	1561	ftruji61	2	update through import_export	6	1
4591	2019-01-30 06:06:14.916927+00	1562	aramir62	2	update through import_export	6	1
4592	2019-01-30 06:06:14.918562+00	1563	aguine63	2	update through import_export	6	1
4593	2019-01-30 06:06:14.919978+00	1564	egrau64	2	update through import_export	6	1
4594	2019-01-30 06:06:14.921286+00	1565	asordo65	2	update through import_export	6	1
4595	2019-01-30 06:06:14.922707+00	1566	lheran66	2	update through import_export	6	1
4596	2019-01-30 06:06:14.924017+00	1567	mcontr67	2	update through import_export	6	1
4597	2019-01-30 06:06:14.925306+00	1568	adelaf68	2	update through import_export	6	1
4598	2019-01-30 06:06:14.926744+00	1569	oesmit69	2	update through import_export	6	1
4599	2019-01-30 06:06:14.928066+00	1570	aguiha70	2	update through import_export	6	1
4600	2019-01-30 06:06:14.929314+00	1571	jmiran71	2	update through import_export	6	1
4601	2019-01-30 06:06:14.930717+00	1572	tdelar72	2	update through import_export	6	1
4602	2019-01-30 06:06:14.931866+00	1573	acarri73	2	update through import_export	6	1
4603	2019-01-30 06:06:14.933124+00	1574	mmieri74	2	update through import_export	6	1
4604	2019-01-30 06:06:14.934473+00	1575	mmieri75	2	update through import_export	6	1
4605	2019-01-30 06:06:14.93568+00	1576	hgonza76	2	update through import_export	6	1
4606	2019-01-30 06:06:14.937076+00	1577	jlamas77	2	update through import_export	6	1
4607	2019-01-30 06:06:14.938765+00	1578	rkim78	2	update through import_export	6	1
4608	2019-01-30 06:06:14.94033+00	1579	amacia79	2	update through import_export	6	1
4609	2019-01-30 06:06:14.942038+00	1580	dsariñ80	2	update through import_export	6	1
4610	2019-01-30 06:06:14.943631+00	1581	aledes81	2	update through import_export	6	1
4611	2019-01-30 06:06:14.945213+00	1582	nwuesm82	2	update through import_export	6	1
4612	2019-01-30 06:06:14.946904+00	1583	prodri83	2	update through import_export	6	1
4613	2019-01-30 06:06:14.948414+00	1584	ploarc84	2	update through import_export	6	1
4614	2019-01-30 06:06:14.949967+00	1585	lcastr85	2	update through import_export	6	1
4615	2019-01-30 06:06:14.952447+00	1586	ediaz86	2	update through import_export	6	1
4616	2019-01-30 06:06:14.954095+00	1587	scazar87	2	update through import_export	6	1
4617	2019-01-30 06:06:14.955732+00	1588	jcaice88	2	update through import_export	6	1
4618	2019-01-30 06:06:14.957318+00	1589	uvalen89	2	update through import_export	6	1
4619	2019-01-30 06:06:14.958793+00	1590	apetit90	2	update through import_export	6	1
4620	2019-01-30 06:06:14.960213+00	1591	jmarif91	2	update through import_export	6	1
4621	2019-01-30 06:06:14.96146+00	1592	mloard92	2	update through import_export	6	1
4622	2019-01-30 06:06:14.962967+00	1593	oechav93	2	update through import_export	6	1
4623	2019-01-30 06:06:14.96429+00	1594	wmolin94	2	update through import_export	6	1
4624	2019-01-30 06:06:14.965599+00	1595	aherna95	2	update through import_export	6	1
4625	2019-01-30 06:06:14.966916+00	1596	mperez96	2	update through import_export	6	1
4626	2019-01-30 06:06:14.968328+00	1597	piturr97	2	update through import_export	6	1
4627	2019-01-30 06:06:14.970025+00	1598	aarrie98	2	update through import_export	6	1
4628	2019-01-30 06:06:14.971501+00	1599	ehutte99	2	update through import_export	6	1
4629	2019-01-30 06:06:14.972722+00	1600	jhoyos00	2	update through import_export	6	1
4630	2019-01-30 06:06:14.97393+00	1601	mmaxim01	2	update through import_export	6	1
4631	2019-01-30 06:06:14.975097+00	1602	jagull02	2	update through import_export	6	1
4632	2019-01-30 06:06:14.976694+00	1603	mperez03	2	update through import_export	6	1
4633	2019-01-30 06:06:14.978112+00	1604	gmarti04	2	update through import_export	6	1
4634	2019-01-30 06:06:14.980177+00	1605	ssanch05	2	update through import_export	6	1
4635	2019-01-30 06:06:14.981844+00	1606	irodri06	2	update through import_export	6	1
4636	2019-01-30 06:06:14.983383+00	1607	idedie07	2	update through import_export	6	1
4637	2019-01-30 06:06:14.984876+00	1608	otomke08	2	update through import_export	6	1
4638	2019-01-30 06:06:14.986444+00	1609	llomel09	2	update through import_export	6	1
4639	2019-01-30 06:06:14.987921+00	1610	fweisd10	2	update through import_export	6	1
4640	2019-01-30 06:06:14.989319+00	1611	jgatic11	2	update through import_export	6	1
4641	2019-01-30 06:06:14.99081+00	1612	fmadri12	2	update through import_export	6	1
4642	2019-01-30 06:06:14.992043+00	1613	sperez13	2	update through import_export	6	1
4643	2019-01-30 06:06:14.993326+00	1614	msalga14	2	update through import_export	6	1
4644	2019-01-30 06:06:14.994612+00	1615	isuare15	2	update through import_export	6	1
4645	2019-01-30 06:06:14.995897+00	1616	sluque16	2	update through import_export	6	1
4646	2019-01-30 06:06:14.997144+00	1617	jvaron17	2	update through import_export	6	1
4647	2019-01-30 06:06:14.998439+00	1618	msagas18	2	update through import_export	6	1
4648	2019-01-30 06:06:14.999913+00	1619	aruiz19	2	update through import_export	6	1
4649	2019-01-30 06:06:15.001183+00	1620	grodri20	2	update through import_export	6	1
4650	2019-01-30 06:06:15.002513+00	1621	rriver21	2	update through import_export	6	1
4651	2019-01-30 06:06:15.003809+00	1622	lperez22	2	update through import_export	6	1
4652	2019-01-30 06:06:15.005219+00	1623	mespin23	2	update through import_export	6	1
4653	2019-01-30 06:06:15.006629+00	1624	pexus24	2	update through import_export	6	1
4654	2019-01-30 06:06:15.008019+00	1625	fkotli25	2	update through import_export	6	1
4655	2019-01-30 06:06:15.009362+00	1626	svicto26	2	update through import_export	6	1
4656	2019-01-30 06:06:15.010751+00	1627	lmaria27	2	update through import_export	6	1
4657	2019-01-30 06:06:15.012033+00	1628	jdozou28	2	update through import_export	6	1
4658	2019-01-30 06:06:15.013297+00	1629	abocli29	2	update through import_export	6	1
4659	2019-01-30 06:06:15.014648+00	1630	aescal30	2	update through import_export	6	1
4660	2019-01-30 06:06:15.015948+00	1631	mhuill31	2	update through import_export	6	1
4661	2019-01-30 06:06:15.017274+00	1632	emende32	2	update through import_export	6	1
4662	2019-01-30 06:06:15.018735+00	1633	nalegr33	2	update through import_export	6	1
4663	2019-01-30 06:06:15.020084+00	1634	rdumas34	2	update through import_export	6	1
4664	2019-01-30 06:06:15.021413+00	1635	sherna35	2	update through import_export	6	1
4665	2019-01-30 06:06:15.022783+00	1636	opanas36	2	update through import_export	6	1
4666	2019-01-30 06:06:15.024107+00	1637	csanch37	2	update through import_export	6	1
4667	2019-01-30 06:06:15.025451+00	1638	emilla38	2	update through import_export	6	1
4668	2019-01-30 06:06:15.026968+00	1639	gcarmo39	2	update through import_export	6	1
4669	2019-01-30 06:06:15.028345+00	1640	lruiz40	2	update through import_export	6	1
4670	2019-01-30 06:06:15.029926+00	1641	mbaule41	2	update through import_export	6	1
4671	2019-01-30 06:06:15.0314+00	1642	sabell42	2	update through import_export	6	1
4672	2019-01-30 06:06:15.032728+00	1643	bgomez43	2	update through import_export	6	1
4673	2019-01-30 06:06:15.034109+00	1644	rflore44	2	update through import_export	6	1
4674	2019-01-30 06:06:15.035406+00	1645	mtisso45	2	update through import_export	6	1
4675	2019-01-30 06:06:15.036688+00	1646	anoria46	2	update through import_export	6	1
4676	2019-01-30 06:06:15.038231+00	1647	clemel47	2	update through import_export	6	1
4677	2019-01-30 06:06:15.039974+00	1648	gbaeza48	2	update through import_export	6	1
4678	2019-01-30 06:06:15.041584+00	1649	cmejia49	2	update through import_export	6	1
4679	2019-01-30 06:06:15.043409+00	1650	akelle50	2	update through import_export	6	1
4680	2019-01-30 06:06:15.045422+00	1651	mmilla51	2	update through import_export	6	1
4681	2019-01-30 06:06:15.047136+00	1652	amarti52	2	update through import_export	6	1
4682	2019-01-30 06:06:15.048719+00	1653	dcayue53	2	update through import_export	6	1
4683	2019-01-30 06:06:15.050153+00	1654	drudel54	2	update through import_export	6	1
4684	2019-01-30 06:06:15.051486+00	1655	nrouxe55	2	update through import_export	6	1
4685	2019-01-30 06:06:15.052616+00	1656	pcontr56	2	update through import_export	6	1
4686	2019-01-30 06:06:15.053958+00	1657	mkoech57	2	update through import_export	6	1
4687	2019-01-30 06:06:15.055472+00	1658	slucas58	2	update through import_export	6	1
4688	2019-01-30 06:06:15.056787+00	1659	icarlo59	2	update through import_export	6	1
4689	2019-01-30 06:06:15.058079+00	1660	mmaidi60	2	update through import_export	6	1
4690	2019-01-30 06:06:15.059419+00	1661	dblanc61	2	update through import_export	6	1
4691	2019-01-30 06:06:15.061011+00	1662	srodri62	2	update through import_export	6	1
4692	2019-01-30 06:06:15.063061+00	1663	ediaz63	2	update through import_export	6	1
4693	2019-01-30 06:06:15.064923+00	1664	rlomel64	2	update through import_export	6	1
4694	2019-01-30 06:06:15.06691+00	1665	sbaler65	2	update through import_export	6	1
4695	2019-01-30 06:06:15.068615+00	1666	lgatic66	2	update through import_export	6	1
4696	2019-01-30 06:06:15.070682+00	1667	atremb67	2	update through import_export	6	1
4697	2019-01-30 06:06:15.07224+00	1668	itremb68	2	update through import_export	6	1
4698	2019-01-30 06:06:15.074077+00	1669	jaugus69	2	update through import_export	6	1
4699	2019-01-30 06:06:15.075765+00	1670	nguerr70	2	update through import_export	6	1
4700	2019-01-30 06:06:15.077318+00	1671	jdot71	2	update through import_export	6	1
4701	2019-01-30 06:06:15.079009+00	1672	egomez72	2	update through import_export	6	1
4702	2019-01-30 06:06:15.080521+00	1673	mgomez73	2	update through import_export	6	1
4703	2019-01-30 06:06:15.082348+00	1674	tbodin74	2	update through import_export	6	1
4704	2019-01-30 06:06:15.084049+00	1675	apuig75	2	update through import_export	6	1
4705	2019-01-30 06:06:15.085656+00	1676	nechev76	2	update through import_export	6	1
4706	2019-01-30 06:06:15.086934+00	1677	nalega77	2	update through import_export	6	1
4707	2019-01-30 06:06:15.088263+00	1678	jsanti78	2	update through import_export	6	1
4708	2019-01-30 06:06:15.089745+00	1679	cechev79	2	update through import_export	6	1
4709	2019-01-30 06:06:15.091229+00	1680	privas80	2	update through import_export	6	1
4710	2019-01-30 06:06:15.092889+00	1681	jcampo81	2	update through import_export	6	1
4711	2019-01-30 06:06:15.094267+00	1682	vriver82	2	update through import_export	6	1
4712	2019-01-30 06:06:15.095952+00	1683	jmorin83	2	update through import_export	6	1
4713	2019-01-30 06:06:15.097473+00	1684	jgomez84	2	update through import_export	6	1
4714	2019-01-30 06:06:15.098953+00	1685	rflore85	2	update through import_export	6	1
4715	2019-01-30 06:06:15.100413+00	1686	vmilla86	2	update through import_export	6	1
4716	2019-01-30 06:06:15.101916+00	1687	mcayue87	2	update through import_export	6	1
4717	2019-01-30 06:06:15.103346+00	1688	ldelar88	2	update through import_export	6	1
4718	2019-01-30 06:06:15.104778+00	1689	frenar89	2	update through import_export	6	1
4719	2019-01-30 06:06:15.106231+00	1690	mpetit90	2	update through import_export	6	1
4720	2019-01-30 06:06:15.107712+00	1691	rmira91	2	update through import_export	6	1
4721	2019-01-30 06:06:15.109162+00	1692	irodri92	2	update through import_export	6	1
4722	2019-01-30 06:06:15.110699+00	1693	pstein93	2	update through import_export	6	1
4723	2019-01-30 06:06:15.112316+00	1694	pespin94	2	update through import_export	6	1
4724	2019-01-30 06:06:15.11439+00	1695	ssalaz95	2	update through import_export	6	1
4725	2019-01-30 06:06:15.116374+00	1696	cbecke96	2	update through import_export	6	1
4726	2019-01-30 06:06:15.118091+00	1697	stena97	2	update through import_export	6	1
4727	2019-01-30 06:06:15.11971+00	1698	jfarfa98	2	update through import_export	6	1
4728	2019-01-30 06:06:15.12161+00	1699	fcorre99	2	update through import_export	6	1
4729	2019-01-30 06:06:15.12337+00	1700	fluna00	2	update through import_export	6	1
4730	2019-01-30 06:06:15.125431+00	1701	mruiz01	2	update through import_export	6	1
4731	2019-01-30 06:06:15.127484+00	1702	zmiche02	2	update through import_export	6	1
4732	2019-01-30 06:06:15.129721+00	1703	abehag03	2	update through import_export	6	1
4733	2019-01-30 06:06:15.131714+00	1704	cbours04	2	update through import_export	6	1
4734	2019-01-30 06:06:15.133796+00	1705	mherra05	2	update through import_export	6	1
4735	2019-01-30 06:06:15.13585+00	1706	itarac06	2	update through import_export	6	1
4736	2019-01-30 06:06:15.137849+00	1707	mdet07	2	update through import_export	6	1
4737	2019-01-30 06:06:15.139703+00	1708	tvaler08	2	update through import_export	6	1
4738	2019-01-30 06:06:15.14157+00	1709	apetit09	2	update through import_export	6	1
4739	2019-01-30 06:06:15.14375+00	1710	mrodel10	2	update through import_export	6	1
4740	2019-01-30 06:06:15.145258+00	1711	ntarac11	2	update through import_export	6	1
4741	2019-01-30 06:06:15.146834+00	1712	akim12	2	update through import_export	6	1
4742	2019-01-30 06:06:15.148398+00	1713	lsuare13	2	update through import_export	6	1
4743	2019-01-30 06:06:15.149976+00	1714	vdiaz14	2	update through import_export	6	1
4744	2019-01-30 06:06:15.151429+00	1715	mdelfi15	2	update through import_export	6	1
4745	2019-01-30 06:06:15.152896+00	1716	psuare16	2	update through import_export	6	1
4746	2019-01-30 06:06:15.154381+00	1717	lgalin17	2	update through import_export	6	1
4747	2019-01-30 06:06:15.155901+00	1718	aroble18	2	update through import_export	6	1
4748	2019-01-30 06:06:15.157475+00	1719	lancon19	2	update through import_export	6	1
4749	2019-01-30 06:06:15.159141+00	1720	aperez20	2	update through import_export	6	1
4750	2019-01-30 06:06:15.160412+00	1721	aperez21	2	update through import_export	6	1
4751	2019-01-30 06:06:15.161762+00	1722	alober22	2	update through import_export	6	1
4752	2019-01-30 06:06:15.162963+00	1723	lledes23	2	update through import_export	6	1
4753	2019-01-30 06:06:15.164264+00	1724	hvacqu24	2	update through import_export	6	1
4754	2019-01-30 06:06:15.165705+00	1725	griver25	2	update through import_export	6	1
4755	2019-01-30 06:06:15.167331+00	1726	bcummi26	2	update through import_export	6	1
4756	2019-01-30 06:06:15.169971+00	1727	nperez27	2	update through import_export	6	1
4757	2019-01-30 06:06:15.171723+00	1728	avacqu28	2	update through import_export	6	1
4758	2019-01-30 06:06:15.173249+00	1729	pvacqu29	2	update through import_export	6	1
4759	2019-01-30 06:06:15.175111+00	1730	enoble30	2	update through import_export	6	1
4760	2019-01-30 06:06:15.176339+00	1731	vcorte31	2	update through import_export	6	1
4761	2019-01-30 06:06:15.1778+00	1732	agarci32	2	update through import_export	6	1
4762	2019-01-30 06:06:15.179107+00	1733	jrios33	2	update through import_export	6	1
4763	2019-01-30 06:06:15.180347+00	1734	imenio34	2	update through import_export	6	1
4764	2019-01-30 06:06:15.181717+00	1735	pmenio35	2	update through import_export	6	1
4765	2019-01-30 06:06:15.183005+00	1736	tmenio36	2	update through import_export	6	1
4766	2019-01-30 06:06:15.184212+00	1737	aperez37	2	update through import_export	6	1
4767	2019-01-30 06:06:15.185541+00	1738	bgarci38	2	update through import_export	6	1
4768	2019-01-30 06:06:15.186813+00	1739	isuare39	2	update through import_export	6	1
4769	2019-01-30 06:06:15.188176+00	1740	smadra40	2	update through import_export	6	1
4770	2019-01-30 06:06:15.189457+00	1741	agarci41	2	update through import_export	6	1
4771	2019-01-30 06:06:15.190853+00	1742	aferna42	2	update through import_export	6	1
4772	2019-01-30 06:06:15.192164+00	1743	emolin43	2	update through import_export	6	1
4773	2019-01-30 06:06:15.193466+00	1744	jlaron44	2	update through import_export	6	1
4774	2019-01-30 06:06:15.195288+00	1745	sgarci45	2	update through import_export	6	1
4775	2019-01-30 06:06:15.196869+00	1746	srouxe46	2	update through import_export	6	1
4776	2019-01-30 06:06:15.198765+00	1747	eflore47	2	update through import_export	6	1
4777	2019-01-30 06:06:15.200627+00	1748	mamado48	2	update through import_export	6	1
4778	2019-01-30 06:06:15.202234+00	1749	rgaona49	2	update through import_export	6	1
4779	2019-01-30 06:06:15.203586+00	1750	jrosal50	2	update through import_export	6	1
4780	2019-01-30 06:06:15.204929+00	1751	amolin51	2	update through import_export	6	1
4781	2019-01-30 06:06:15.206394+00	1752	motheg52	2	update through import_export	6	1
4782	2019-01-30 06:06:15.2077+00	1753	aclark53	2	update through import_export	6	1
4783	2019-01-30 06:06:15.209025+00	1754	pmolin54	2	update through import_export	6	1
4784	2019-01-30 06:06:15.210293+00	1755	sdumas55	2	update through import_export	6	1
4785	2019-01-30 06:06:15.211566+00	1756	sgomez56	2	update through import_export	6	1
4786	2019-01-30 06:06:15.212839+00	1757	evilla57	2	update through import_export	6	1
4787	2019-01-30 06:06:15.21406+00	1758	ialegr58	2	update through import_export	6	1
4788	2019-01-30 06:06:15.215334+00	1759	nobreg59	2	update through import_export	6	1
4789	2019-01-30 06:06:15.21657+00	1760	ltisso60	2	update through import_export	6	1
4790	2019-01-30 06:06:15.217988+00	1761	egovel61	2	update through import_export	6	1
4791	2019-01-30 06:06:15.219544+00	1762	ldelfi62	2	update through import_export	6	1
4792	2019-01-30 06:06:15.221163+00	1763	lgaona63	2	update through import_export	6	1
4793	2019-01-30 06:06:15.223145+00	1764	pvarel64	2	update through import_export	6	1
4794	2019-01-30 06:06:15.225146+00	1765	pgaona65	2	update through import_export	6	1
4795	2019-01-30 06:06:15.227028+00	1766	lmarti66	2	update through import_export	6	1
4796	2019-01-30 06:06:15.22907+00	1767	jmarti67	2	update through import_export	6	1
4797	2019-01-30 06:06:15.231287+00	1768	pareni68	2	update through import_export	6	1
4798	2019-01-30 06:06:15.233372+00	1769	mronga69	2	update through import_export	6	1
4799	2019-01-30 06:06:15.235407+00	1770	cpadro70	2	update through import_export	6	1
4800	2019-01-30 06:06:15.237292+00	1771	rperez71	2	update through import_export	6	1
4801	2019-01-30 06:06:15.239529+00	1772	jjimen72	2	update through import_export	6	1
4802	2019-01-30 06:06:15.241576+00	1773	agas73	2	update through import_export	6	1
4803	2019-01-30 06:06:15.2435+00	1774	adonis74	2	update through import_export	6	1
4804	2019-01-30 06:06:15.245218+00	1775	hhelfe75	2	update through import_export	6	1
4805	2019-01-30 06:06:15.246809+00	1776	bfrade76	2	update through import_export	6	1
4806	2019-01-30 06:06:15.24864+00	1777	mcruz77	2	update through import_export	6	1
4807	2019-01-30 06:06:15.250331+00	1778	mhelfe78	2	update through import_export	6	1
4808	2019-01-30 06:06:15.252022+00	1779	bpuigl79	2	update through import_export	6	1
4809	2019-01-30 06:06:15.253702+00	1780	gchoi80	2	update through import_export	6	1
4810	2019-01-30 06:06:15.25545+00	1781	jagull81	2	update through import_export	6	1
4811	2019-01-30 06:06:15.25722+00	1782	jjimen82	2	update through import_export	6	1
4812	2019-01-30 06:06:15.259086+00	1783	erodri83	2	update through import_export	6	1
4813	2019-01-30 06:06:15.260871+00	1784	psever84	2	update through import_export	6	1
4814	2019-01-30 06:06:15.263001+00	1785	lhelfe85	2	update through import_export	6	1
4815	2019-01-30 06:06:15.265004+00	1786	jsainz86	2	update through import_export	6	1
4816	2019-01-30 06:06:15.267047+00	1787	dohea87	2	update through import_export	6	1
4817	2019-01-30 06:06:15.269119+00	1788	ggovel88	2	update through import_export	6	1
4818	2019-01-30 06:06:15.271277+00	1789	akawua89	2	update through import_export	6	1
4819	2019-01-30 06:06:15.27344+00	1790	jacost90	2	update through import_export	6	1
4820	2019-01-30 06:06:15.27551+00	1791	ssusan91	2	update through import_export	6	1
4821	2019-01-30 06:06:15.277529+00	1792	aituar92	2	update through import_export	6	1
4822	2019-01-30 06:06:15.279745+00	1793	mbravo93	2	update through import_export	6	1
4823	2019-01-30 06:06:15.281781+00	1794	ppadil94	2	update through import_export	6	1
4824	2019-01-30 06:06:15.283856+00	1795	hhozoi95	2	update through import_export	6	1
4825	2019-01-30 06:06:15.286011+00	1796	sdelos96	2	update through import_export	6	1
4826	2019-01-30 06:06:15.288101+00	1797	vdarch97	2	update through import_export	6	1
4827	2019-01-30 06:06:15.290227+00	1798	agomez98	2	update through import_export	6	1
4828	2019-01-30 06:06:15.292244+00	1799	gottal99	2	update through import_export	6	1
4829	2019-01-30 06:06:15.294621+00	1800	jituar00	2	update through import_export	6	1
4830	2019-01-30 06:06:15.296723+00	1801	mgovel01	2	update through import_export	6	1
4831	2019-01-30 06:06:15.299027+00	1802	gholde02	2	update through import_export	6	1
4832	2019-01-30 06:06:15.300801+00	1803	fconch03	2	update through import_export	6	1
4833	2019-01-30 06:06:15.302427+00	1804	mibarr04	2	update through import_export	6	1
4834	2019-01-30 06:06:15.304098+00	1805	mchoi05	2	update through import_export	6	1
4835	2019-01-30 06:06:15.306127+00	1806	cvelez06	2	update through import_export	6	1
4836	2019-01-30 06:06:15.308007+00	1807	apadil07	2	update through import_export	6	1
4837	2019-01-30 06:06:15.309821+00	1808	pvilan08	2	update through import_export	6	1
4838	2019-01-30 06:06:15.3117+00	1809	egurza09	2	update through import_export	6	1
4839	2019-01-30 06:06:15.313751+00	1810	ddemo10	2	update through import_export	6	1
4840	2019-01-30 06:06:15.316303+00	1811	acruz11	2	update through import_export	6	1
4841	2019-01-30 06:06:15.318322+00	1812	rrosas12	2	update through import_export	6	1
4842	2019-01-30 06:06:15.320251+00	1813	eugald13	2	update through import_export	6	1
4843	2019-01-30 06:06:15.322285+00	1814	ananco14	2	update through import_export	6	1
4844	2019-01-30 06:06:15.324315+00	1815	hlino15	2	update through import_export	6	1
4845	2019-01-30 06:06:15.326681+00	1816	jangel16	2	update through import_export	6	1
4846	2019-01-30 06:19:31.972341+00	7	La Herradura	1		15	1
4847	2019-01-30 06:26:34.421947+00	15	La Herradura - La Herradura	1		17	1
4848	2019-01-30 06:27:11.575436+00	118	Grupo A - La Herradura	1		18	1
4849	2019-01-30 06:53:17.332193+00	1817	jange17	1	new through import_export	6	1
4850	2019-01-30 06:53:17.335497+00	1818	hlino18	1	new through import_export	6	1
4851	2019-01-30 06:53:17.337557+00	1819	ananc19	1	new through import_export	6	1
4852	2019-01-30 06:53:17.339693+00	1820	eugal20	1	new through import_export	6	1
4853	2019-01-30 06:53:17.3416+00	1821	rrosa21	1	new through import_export	6	1
4854	2019-01-30 06:53:17.351257+00	1822	acruz22	1	new through import_export	6	1
4855	2019-01-30 06:53:17.353525+00	1823	ddemo23	1	new through import_export	6	1
4856	2019-01-30 06:53:17.355663+00	1824	egurz24	1	new through import_export	6	1
4857	2019-01-30 06:53:17.357768+00	1825	pvila25	1	new through import_export	6	1
4858	2019-01-30 06:53:17.359719+00	1826	apadi26	1	new through import_export	6	1
4859	2019-01-30 06:53:17.361819+00	1827	cvele27	1	new through import_export	6	1
4860	2019-01-30 06:53:17.363664+00	1828	mchoi28	1	new through import_export	6	1
4861	2019-01-30 06:53:17.365761+00	1829	mibar29	1	new through import_export	6	1
4862	2019-01-30 06:53:17.36733+00	1830	fconc30	1	new through import_export	6	1
4863	2019-01-30 06:53:17.368926+00	1831	ghold31	1	new through import_export	6	1
4864	2019-01-30 06:53:17.370533+00	1832	mgove32	1	new through import_export	6	1
4865	2019-01-30 06:53:17.372209+00	1833	jitua33	1	new through import_export	6	1
4866	2019-01-30 06:53:17.374048+00	1834	gsoto34	1	new through import_export	6	1
4867	2019-01-30 06:53:17.375966+00	1835	agome35	1	new through import_export	6	1
4868	2019-01-30 06:53:17.378126+00	1836	vdarc36	1	new through import_export	6	1
4870	2019-01-30 08:12:10.658316+00	6	IDTC	2	Modifica logo,color_principal y color_secundario.	15	1
4871	2019-01-30 08:14:20.478683+00	6	IDTC	2	Modifica logo.	15	1
4872	2019-01-30 08:15:46.006259+00	6	IDTC	2	No ha modificado ningún campo.	15	1
4873	2019-01-30 20:12:48.126251+00	2	Fluminense	2	Modifica maneja_horarios.	15	1
4874	2019-01-30 20:17:28.45663+00	1	Borussia	2	Modifica maneja_horarios.	15	1
4875	2019-01-30 20:17:47.822353+00	1	Borussia	2	Modifica maneja_horarios.	15	1
4876	2019-01-30 21:27:39.992659+00	6	IDTC	2	Modifica maneja_horarios.	15	1
4877	2019-02-05 01:23:46.40677+00	1	Borussia	2	Modifica color_principal.	15	1
4878	2019-02-05 01:24:53.831024+00	1	Borussia	2	Modifica color_principal.	15	1
4879	2019-02-05 08:33:11.459465+00	1837	mbustamante	1	new through import_export	6	1
4880	2019-02-07 00:35:54.598509+00	1257	lcohen0079	2	update through import_export	6	1
4881	2019-02-07 00:35:54.600409+00	1258	mmiranda0931	2	update through import_export	6	1
4882	2019-02-07 00:35:54.601695+00	1259	jmorales0271	2	update through import_export	6	1
4883	2019-02-07 00:35:54.60293+00	1260	smedinac0095	2	update through import_export	6	1
4884	2019-02-07 00:35:54.60413+00	1261	bernardo0358	2	update through import_export	6	1
4885	2019-02-07 00:35:54.605319+00	1838	hcaballero0668	1	new through import_export	6	1
4886	2019-02-07 08:04:15.620827+00	1839	macosta39	1	new through import_export	6	1
4887	2019-02-07 17:18:57.03549+00	1840	juanbvb	1	new through import_export	6	1
4888	2019-02-14 20:06:53.969224+00	4	2019-01-23-al-2019-01-29 - InstitutoMexico	1		24	1
4889	2019-02-14 20:07:08.308036+00	3	2019-01-23-al-2019-01-29 - Borussia	2	No ha modificado ningún campo.	24	1
4890	2019-02-15 15:52:35.998653+00	5	22febrero-29febrero - Mazenod	1		24	1
4891	2019-02-15 16:05:39.92327+00	3	Evaluacion - Mazenod	2	No ha modificado ningún campo.	23	1
4892	2019-02-19 01:51:01.492395+00	4	2019-02-01 al 2019-02-28	1		21	1
4893	2019-02-19 01:51:37.121841+00	5	2019-03-01 al 2019-03-31	1		21	1
4894	2019-02-19 01:54:37.851588+00	3	 Velocidad 100m	1		28	1
4895	2019-02-19 01:57:30.474243+00	3	Objetivos de Velocidad	1		22	1
4896	2019-02-19 01:57:50.658128+00	3	Objetivos de Velocidad	2	No ha modificado ningún campo.	22	1
4897	2019-02-19 02:01:34.147335+00	4	Evaluaciones de primer semestre - La Herradura	1		23	1
4898	2019-02-19 02:04:09.362215+00	6	22febrero-29febrero - La Herradura	1		24	1
4899	2019-02-19 02:05:17.635512+00	6	22febrero-29febrero - La Herradura	2	Modifica pregunta_1,pregunta_2,pregunta_3,pregunta_4 y pregunta_5.	24	1
4900	2019-02-19 02:17:53.322621+00	3	InstitutoMexico	2	No ha modificado ningún campo.	15	1
4901	2019-02-19 02:17:59.866835+00	1	Borussia	2	No ha modificado ningún campo.	15	1
4902	2019-02-19 02:34:41.185199+00	1733	jrios33	2	No ha modificado ningún campo.	11	1
4903	2019-02-19 02:58:02.209106+00	1841	val9999	1	new through import_export	6	1
4904	2019-02-19 03:02:59.099798+00	6	22febrero-29febrero - La Herradura	2	Modifica categoria.	24	1
4905	2019-02-19 03:03:50.600342+00	6	22febrero-29febrero - La Herradura	2	No ha modificado ningún campo.	24	1
4906	2019-02-19 03:04:08.863528+00	6	22febrero-29febrero - La Herradura	2	No ha modificado ningún campo.	24	1
4907	2019-02-19 03:04:33.129977+00	6	22febrero-29febrero - La Herradura	2	No ha modificado ningún campo.	24	1
4908	2019-02-19 03:05:18.601003+00	7	22febrero-29febrero - La Herradura	1		24	1
4909	2019-02-26 17:14:36.483408+00	6	2018-10-30 al 2019-06-30	1		21	1
4910	2019-02-26 17:19:45.546409+00	8	evaluaciones-deportivas-2018-2019 - Borussia	1		24	1
\.


--
-- TOC entry 3366 (class 0 OID 16517)
-- Dependencies: 213
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	users	user
7	users	graham
8	users	director
9	users	coordinador
10	users	profesor
11	users	padrealumno
12	users	caja
13	users	asistencia
14	schools	diciplina
15	schools	escuela
16	schools	sliderescuela
17	schools	cede
18	schools	categoria
19	schools	importarcategorias
20	payments	pago
21	evaluations	periododeevaluacion
22	evaluations	grupodeobjectivos
23	evaluations	evaluacioncuantitativa
24	evaluations	evaluacioncualitativa
25	evaluations	resultadocualitativo
26	evaluations	resultadocuantitativo
27	matches	partido
28	evaluations	objetivo
\.


--
-- TOC entry 3350 (class 0 OID 16386)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	schools	0001_initial	2019-01-19 12:06:13.373839+00
2	contenttypes	0001_initial	2019-01-19 12:06:13.396506+00
3	contenttypes	0002_remove_content_type_name	2019-01-19 12:06:13.421788+00
4	auth	0001_initial	2019-01-19 12:06:13.626407+00
5	auth	0002_alter_permission_name_max_length	2019-01-19 12:06:13.639215+00
6	auth	0003_alter_user_email_max_length	2019-01-19 12:06:13.651642+00
7	auth	0004_alter_user_username_opts	2019-01-19 12:06:13.664036+00
8	auth	0005_alter_user_last_login_null	2019-01-19 12:06:13.675948+00
9	auth	0006_require_contenttypes_0002	2019-01-19 12:06:13.678344+00
10	users	0001_initial	2019-01-19 12:06:14.094067+00
11	admin	0001_initial	2019-01-19 12:06:14.147022+00
12	evaluations	0001_initial	2019-01-19 12:06:14.228111+00
13	evaluations	0002_auto_20190119_0605	2019-01-19 12:06:15.374779+00
14	matches	0001_initial	2019-01-19 12:06:15.440745+00
15	payments	0001_initial	2019-01-19 12:06:15.510014+00
16	sessions	0001_initial	2019-01-19 12:06:15.528849+00
17	users	0002_auto_20190129_0547	2019-01-29 11:48:08.89612+00
18	schools	0002_escuela_maneja_horarios	2019-01-30 20:12:06.994996+00
19	evaluations	0003_auto_20190211_0731	2019-02-11 13:32:08.261269+00
20	users	0003_auto_20190211_0731	2019-02-11 13:32:08.798041+00
\.


--
-- TOC entry 3407 (class 0 OID 17050)
-- Dependencies: 254
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
s82ok56v1nlyxrhlucecvltq5i8hcdv9	YmIwMzI0OTNjNTAzOTVlMzVkMjc3MWMyN2U0MDA5NTgwNGU2NzAyMDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNzUiLCJfYXV0aF91c2VyX2hhc2giOiI2ZTIwYTdmZjQyN2U3YzQwNjg0ZmM4ODA1NDZhMmFhZDRlOTQzNDRiIn0=	2019-02-12 20:54:06.917076+00
mgtti88kz2i7z1j3bivjjq47mdbsdsyd	NWU5M2NhZDZlOTZjMTRkOTA1YzAzMzE2ZDAyYTczNDVlMzdmMTNmNDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiM2Q4YjEyMDUyMmM0MmI2MDY1N2VlOWIyNTM3OTMwZjA1NjI3MDg5YSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-02 12:11:37.694275+00
v4wiwmo4d0h5s9j5vh294lx21t9xmjsd	Y2MzOWZkMzJmZjAwZmIzZjNkNTQxNmRhNGQ0YWEwODJlMzQ4MjY3NTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGFhN2FlOTNhNmE0ZmM1NGMwYTg5NDFkMjVhZjY4NDEwNGU0NzA0NyIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-02 19:04:08.295872+00
hk9g4vd2s63d3ywxz5iv220qhpwij6ru	ZDBhODE1ZmM1OTQwNzgwYjE1NzNjNzhiYmU2ZTMyNzUxMzIxMGY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-05 04:08:04.056864+00
ay4npyngk0jbyaz8l7od4l8nxczjjkqn	NzIzOGY3OGRiNGUxYjBkZDAzNGYwNjZiMmUyMWY0Yjc1NTgwNjFlZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2NzZkZmRmODJjODZjZGM1MjZmMTQzMjRjYmVmNmZjZGEyZmQxMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjgwIn0=	2019-02-06 04:29:43.449309+00
rwfu81g8ypcka468xds74m3gzmu9d5h0	ZDBhODE1ZmM1OTQwNzgwYjE1NzNjNzhiYmU2ZTMyNzUxMzIxMGY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-05 04:09:22.983157+00
nv1zeqm6o9y8b2br38z0ydwkinscw3g4	MDgzZjdkZDBiZGRhYTcwYTNmNDg4Mjg1N2ZjYTllNzM5ZmI2ZDA0ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-04 03:12:05.114302+00
t3dqv3jzxa9km6ouj5vjkq3vzdryz3j1	ZDQ2ODIxMDk0YjE3NDIzMDZhODA3MzJiMmQyZDRhZTY4Y2UxNmQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE2MDljZTEyNGYyMTQwNjIyODY0NTg0MGNhYTkwMWExZjBiNzA1ZmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjY2In0=	2019-02-06 05:02:45.81015+00
tc8tg4utana1rffqyux0ya6xdmja9fyu	MDgzZjdkZDBiZGRhYTcwYTNmNDg4Mjg1N2ZjYTllNzM5ZmI2ZDA0ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-04 03:27:57.110654+00
oj7he1hh8y303lziiq064a2zearde2mt	MDgzZjdkZDBiZGRhYTcwYTNmNDg4Mjg1N2ZjYTllNzM5ZmI2ZDA0ZDp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-04 03:28:46.340857+00
xhiyw1xkuquy7uprh31lj34hgjxg8oc2	ZDQ2ODIxMDk0YjE3NDIzMDZhODA3MzJiMmQyZDRhZTY4Y2UxNmQ2NDp7Il9hdXRoX3VzZXJfaGFzaCI6IjE2MDljZTEyNGYyMTQwNjIyODY0NTg0MGNhYTkwMWExZjBiNzA1ZmMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjY2In0=	2019-02-06 05:18:45.233215+00
etbi16pfanfgwr4xafa4rdxd0x9ec1hp	ZDBhODE1ZmM1OTQwNzgwYjE1NzNjNzhiYmU2ZTMyNzUxMzIxMGY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-05 15:44:08.006061+00
2mt6i1cre43gsznkrm39itv0aejhzkgj	NGY3NjE3NGJhYjViMDZiNzdhZDA1MjQ5MTY2MWUyYWRjYjIzMGRlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhNjE1ZmUwZDE3N2ZlMGE5OWM5MGZhNzBiNTg4ZDY5NmYzZTc4NzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjYzIn0=	2019-02-06 15:55:03.328162+00
fbpnsqzbgsfp3e8jwakxppozg9gm0vmf	NzNjZTE0NGRmOWZlZjgwMDIwNWJjZjYwYjU3NTVmYWEyZTM5ODk2Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNzQiLCJfYXV0aF91c2VyX2hhc2giOiJhMDFlMjc1NzMzYWY5MmQ5ZWEwNDkyZGEyMjNkZmFkYTMzYWY1Mzk3In0=	2019-02-11 22:39:50.053228+00
hni4itqh9o1wxdr56z63nsn8qjmwvf0a	NmRlNTRjNGRlMzE0MWQ1ZDM3NDZkYjg3ZTk0MTk3OTU3MDcwZjJjNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEwMWUyNzU3MzNhZjkyZDllYTA0OTJkYTIyM2RmYWRhMzNhZjUzOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc0In0=	2019-02-06 16:56:31.70016+00
u4el9ybsuhof0bu4vm0ykaotz8padt83	YjBhNWFmZjQ0YWNlYjU1NTJjOTg4NGQ2NDJjMTRmYjExMzQ2NTRmOTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNzgiLCJfYXV0aF91c2VyX2hhc2giOiI5ZTZhN2JkMjhhYTcyZGRiNGIxODgzMmRjYWUwODY2ODU4NDg4MmFiIn0=	2019-02-12 03:18:40.730629+00
ftv42hvyxkqoas7masejlacd4pu1n1sm	MjcwZmNhZTNiZDhkNTg0NTkwOWY5YzU2NjVlMWI4ZTVmNGY0OTkyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllNmE3YmQyOGFhNzJkZGI0YjE4ODMyZGNhZTA4NjY4NTg0ODgyYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc4In0=	2019-02-06 17:30:14.814068+00
zwp3ryj5mn421k6ll0dyjc1esr9mfico	OTViMTM5YjRlMjFiMDM1NTIwYTVhMzdjNjdiYzY0ZTliZmQwOTU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNjgiLCJfYXV0aF91c2VyX2hhc2giOiI5NDc1ZjRkNDk4ZjAxMDE1YzVhMDJmOTk4ZWM0OTgxNzJmNWIyOTVmIn0=	2019-02-12 16:01:00.219985+00
edai2lgxaensbntsc6hm8buyve55tu8n	MjcwZmNhZTNiZDhkNTg0NTkwOWY5YzU2NjVlMWI4ZTVmNGY0OTkyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllNmE3YmQyOGFhNzJkZGI0YjE4ODMyZGNhZTA4NjY4NTg0ODgyYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc4In0=	2019-02-06 17:35:52.681085+00
6nlzt2diivfbzhmc5wqg7kirbiafvbvg	ZDBhODE1ZmM1OTQwNzgwYjE1NzNjNzhiYmU2ZTMyNzUxMzIxMGY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-04 20:04:20.135446+00
nyw4j070ze1t23seub6751gagj4p5bqv	ZDBhODE1ZmM1OTQwNzgwYjE1NzNjNzhiYmU2ZTMyNzUxMzIxMGY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-04 20:17:50.602507+00
jrfm8ytu07o6dvpy0cnxiy04g84yihud	ZDBhODE1ZmM1OTQwNzgwYjE1NzNjNzhiYmU2ZTMyNzUxMzIxMGY0Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDA4MzZiODU5OWYzNjQyZGJjNmY4YmZlZTJmYjk0NDA4MjBjZGE2MCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-04 20:23:30.591765+00
secwoicb90fn6yd4aft312x091g0ty4i	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-06 00:34:15.676864+00
xp5547dyxjydei3tf2ebk4bjtmpegb15	YWFkMDdjN2ViYjdiMzQwMzE3OGYyMjRiOWM1NzFiMGMwZDZjOWE5Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlYjA5YjhiNzE1ZWEwYTgyMmY3Y2ZkZDc0M2YwYzNhYTVlZjI3MTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjQ5In0=	2019-02-06 00:42:58.949123+00
89l71on4ygzuypqfkws1u512dd0bl3pt	MjcwZmNhZTNiZDhkNTg0NTkwOWY5YzU2NjVlMWI4ZTVmNGY0OTkyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllNmE3YmQyOGFhNzJkZGI0YjE4ODMyZGNhZTA4NjY4NTg0ODgyYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc4In0=	2019-02-06 18:53:33.663844+00
w6s5k0259cz3e8bjwzz0auzkgw8rzud4	OGU5ZDAwNzQ1YWUzYjNlN2E5ZDg2N2FlOWEzZTBjMmNhODM0N2Q5ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNjMiLCJfYXV0aF91c2VyX2hhc2giOiIzYTYxNWZlMGQxNzdmZTBhOTljOTBmYTcwYjU4OGQ2OTZmM2U3ODc2In0=	2019-02-12 21:14:10.026437+00
vyi40e5j693tp2mxdntb3ndkzcl7i9ar	NzZjMTFhZDlkY2U4OTViZWVkMzk5OWViNGZiN2UwYjI2ODRkYWQ2Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1NDIiLCJfYXV0aF91c2VyX2hhc2giOiJmNTFkNWNhMWU2YjVkOWZiMTk5MmVhNzY1YmM5ZDQ0MzAxMmIxMTYxIn0=	2019-02-12 22:40:09.052311+00
ajstssw5ax2doles2wn3rnun705i0lra	NWNkNzU5YTVjOGMyMGYwMjE1NTY0MGFlNjIzZmFkYzI4YTAwNjc4Yjp7Il9hdXRoX3VzZXJfaGFzaCI6ImFlODZkMjdiZTNmNzFiMGIyNzkzZTI3ZjIyZjQzNjJlMjRmMDcxZTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjUwIn0=	2019-02-22 01:56:45.804288+00
ek558chwouew60p1bd81oz3hbyywdzi2	NzZjMTFhZDlkY2U4OTViZWVkMzk5OWViNGZiN2UwYjI2ODRkYWQ2Zjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1NDIiLCJfYXV0aF91c2VyX2hhc2giOiJmNTFkNWNhMWU2YjVkOWZiMTk5MmVhNzY1YmM5ZDQ0MzAxMmIxMTYxIn0=	2019-02-12 22:41:19.860341+00
z5jnojhhvqx3tj0gw49ig8n8f75x1375	M2RiN2Q2MzY5YzZiMjY3NWVmMGI0OWQ2MTc1ZjY5ODdjNzcwODgxMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjE1MzMiLCJfYXV0aF91c2VyX2hhc2giOiJiNjI0ZTg4NDliMWM3ZTNiMDFkYWUxN2M5Y2RkNWZmZTBmOGNjZGMzIn0=	2019-02-12 22:46:02.041959+00
ux1emi12efczu7fwvwo7g9x4sxb9z903	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-25 13:32:40.514736+00
dyv3gz07plth096m27d37c4oqwb7a8ss	ZGNjNTlkMTNmMmRlNGI2MzIxYTRkMjMzYjhkZWU0MmI1OTU3Nzg1ODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNzciLCJfYXV0aF91c2VyX2hhc2giOiJjNTZhYTcwOTNlOWY2NjE1NGZkZjMwZTg3Yjk0NTFmYjk0YTJhMjAyIn0=	2019-02-12 23:30:10.572846+00
og8cwgc1r1680jcqb7ymdnvx6nj00hsj	NGNkODgyOTE1ZGFlOWY2NDI1ODk1NWU3ZjM4ZDMyOTA0NzMzYjA3Mjp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3ZTVmZjhkYWMzYzJiN2FmYWJkMjZjNTZkZjQ0MmM1OGJhNjdkODEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNTMwIn0=	2019-02-15 03:03:01.532809+00
rf3o9kylfzsu1auz766owcnntmcqkwyh	ZTdlMGZmZjA5YWI2NjM2NmZiMmVmMjZlOGZlMzczMTFmYTNjZTg1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk0NzVmNGQ0OThmMDEwMTVjNWEwMmY5OThlYzQ5ODE3MmY1YjI5NWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjY4In0=	2019-02-07 02:48:22.584067+00
syfjexvsmg5rge6adb7xgql45221l3jt	OTViMTM5YjRlMjFiMDM1NTIwYTVhMzdjNjdiYzY0ZTliZmQwOTU3Mzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNjgiLCJfYXV0aF91c2VyX2hhc2giOiI5NDc1ZjRkNDk4ZjAxMDE1YzVhMDJmOTk4ZWM0OTgxNzJmNWIyOTVmIn0=	2019-02-11 20:08:37.276019+00
6ynz4u3pwtafzaq44uwv6f82ov6mkwby	MWEwMzIwZTc3NjZmNWFiMGUxNjdiNTZiMjlhZWExZDFjYjA2YWFiMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEyNjciLCJfYXV0aF91c2VyX2hhc2giOiI1NTZiNDU1NTdjNzk5ODYxM2JlMWYzYzY5MjdmYzJhNGZhMGI0ODI4In0=	2019-02-07 04:22:53.797596+00
sp5lhn9rc6rzk9loc4hitpcppvtwru5w	ODU4ODJhNzU2NWExNDcyNDViODExYTE5OGEyZDE3MDA3Yzc5ZWM3ODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMDgzNmI4NTk5ZjM2NDJkYmM2ZjhiZmVlMmZiOTQ0MDgyMGNkYTYwIn0=	2019-02-12 11:52:42.374735+00
hqjbpm8dhcscyeih8pj4guish5a2fdko	MWJlYThjNjIwM2Y5YTUwNGFhODYwNGJjNWU2M2VhYjIxNjA0YThiMDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-13 06:03:43.165691+00
r945wa7f1os0tmd8zsianvrsu1289pw6	YTZlNGQwM2JmNThiM2RkMzAxNWRjNmVmY2M3ODhiZTk5NzYwOGMyYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjBhNjdkM2Y1N2M5MDQxMGRkMmUyODk0NmRiZjg5Y2Q3OWE0ZWYwNWQiLCJfYXV0aF91c2VyX2lkIjoiMTUzOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-13 17:33:51.997752+00
b53qmbhsxo1utubks4a9p3tl5o9dkght	ZTJmNjQwNmQyOTIxYzI5NjM5NDgxMWM2NTZiYjczOTQ2NDlhMjMyNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjlmY2NiODNmM2M1YWU2OTBlNTA3YTViMjAxMTgzZjllYmI1ZDE3YjIiLCJfYXV0aF91c2VyX2lkIjoiMTUzNyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-13 18:46:59.554533+00
d90voia4wqd3uoxllagutnxnym6zzh2h	M2QwMDE4NTgzMTlmMDM0NmRmNTk5YzA0NWMwZDkwNjlhOTMyNTkxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0MjllNzUyNGIxYWIyNjY5YmVkNGUwNWM3ZTI4M2FjY2VlOTk2MTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxODExIn0=	2019-02-13 20:33:01.853889+00
49vca0kr4cqxh2heuxm5ab5zvzep754l	M2QwMDE4NTgzMTlmMDM0NmRmNTk5YzA0NWMwZDkwNjlhOTMyNTkxMzp7Il9hdXRoX3VzZXJfaGFzaCI6IjQ0MjllNzUyNGIxYWIyNjY5YmVkNGUwNWM3ZTI4M2FjY2VlOTk2MTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxODExIn0=	2019-02-13 20:49:58.711391+00
oi213uw9qmse4i55aba1ah30p76o9wig	YTg3ZjdhYzYxZWZkZDA2MDE2Y2U4MmNkYzVjZmM3OGY5ZjY5ZTM1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjcwY2NmZWI2YWRkZGQ3ZmY5YmNjOWJiZTdlNmY3ZGFkODFmMDMwZjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNTU4In0=	2019-02-13 21:06:30.975696+00
v9osdtlhygdy266h2sdd2a63z05t2yc6	NDZiNjhjNDVhNDYyNWRmY2MxY2U3NGI1NzRjMTNjODQ3ZmJhYzYzODp7Il9hdXRoX3VzZXJfaGFzaCI6ImEwNTgzM2ExMmRmNGFiZTViN2JkZDAxNmVmMmE5Njg1NmI2ZjNiZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNTU3In0=	2019-02-20 00:47:07.676992+00
t2qakybt5vheqp261vrphyxfainzt98o	NzIzOGY3OGRiNGUxYjBkZDAzNGYwNjZiMmUyMWY0Yjc1NTgwNjFlZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2NzZkZmRmODJjODZjZGM1MjZmMTQzMjRjYmVmNmZjZGEyZmQxMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjgwIn0=	2019-02-14 05:17:47.746445+00
6qo0k0qq53nrrmz2r5pszcqrpve7i6dd	MTUxNjFiODE0NmM3MTJmMTQ1OGJkMzg1OWU3NzBmYjMyMmFlMjZhMzp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNTkxMWI5MDFhMTc4YmE1MGE0YjM3Nzc5NWI2YzEwNzhkNThkOTMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNTMxIn0=	2019-03-12 17:34:32.928911+00
t7fhp1rf4qd89qc07yqk2o2q0cerkk2r	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-22 18:34:42.211626+00
on9bmaezvu22bt4rtc5btasnv9umtrpq	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-13 21:51:50.615193+00
230j5wvpt34b3qd2jqsqfsyzp73fawt4	NmRlNTRjNGRlMzE0MWQ1ZDM3NDZkYjg3ZTk0MTk3OTU3MDcwZjJjNTp7Il9hdXRoX3VzZXJfaGFzaCI6ImEwMWUyNzU3MzNhZjkyZDllYTA0OTJkYTIyM2RmYWRhMzNhZjUzOTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc0In0=	2019-02-25 23:01:56.473901+00
brpoczqnnk54r8s9w71is7mllzqa3e2l	ZWFkZDQzODcwNjNjOGJjYjZhM2NiYzY4MDU3ZGExOGJmNmQ1MmUzNjp7Il9hdXRoX3VzZXJfaGFzaCI6IjEyMTVjNTJkNDJiOGU4NjAxOWE4NWRkMjEyMzJjNDliMDU5NzM5NDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjQ1In0=	2019-02-20 21:25:52.561298+00
8xeyzdr34acmnzqonnxkphfz63avwuwa	NTU1ZWNhMTkwZjZhOTY3ZmRhZjc4NGRiNjRhMTJlOTczZjNiMzExZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNiNTYzYTY0MWRiMmZhNGZkOTA5MmZiMmIwNGRiMjBmMjVjNGIyNWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjU5In0=	2019-03-13 04:05:01.034295+00
1w41qorf2aty4cgj5rz9wwsk4a9e9ta3	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-23 02:31:19.547752+00
b594t5htbufm28yx3vpjcsn4wwhjaevq	MjcwZmNhZTNiZDhkNTg0NTkwOWY5YzU2NjVlMWI4ZTVmNGY0OTkyOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjllNmE3YmQyOGFhNzJkZGI0YjE4ODMyZGNhZTA4NjY4NTg0ODgyYWIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc4In0=	2019-02-26 21:23:13.148872+00
4jibg8alali8oxuw2axfyq471sjpcu6h	NDZiNjhjNDVhNDYyNWRmY2MxY2U3NGI1NzRjMTNjODQ3ZmJhYzYzODp7Il9hdXRoX3VzZXJfaGFzaCI6ImEwNTgzM2ExMmRmNGFiZTViN2JkZDAxNmVmMmE5Njg1NmI2ZjNiZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNTU3In0=	2019-03-14 15:10:26.645721+00
ew4czv4vc3eoyi8xpyblq1s6rxyu6o74	NDZiNjhjNDVhNDYyNWRmY2MxY2U3NGI1NzRjMTNjODQ3ZmJhYzYzODp7Il9hdXRoX3VzZXJfaGFzaCI6ImEwNTgzM2ExMmRmNGFiZTViN2JkZDAxNmVmMmE5Njg1NmI2ZjNiZDkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNTU3In0=	2019-03-05 03:10:37.378727+00
1zqtjh3ab369aapcgr71bfcv8gfralff	YTc2ZWIwNDljM2EyYWQwZTNlNjY4NTRjZTFjNmM0ODhkMzA4YmJhOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJmODc0MjIzOWQ0NTc3ODgwNzM3ODljZmUwYmM4YzZlMjViMjEzODQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxODM3In0=	2019-03-01 17:46:23.471285+00
l0mm0bat31j73kay7sxngi2q3ym38cqh	NTU1ZWNhMTkwZjZhOTY3ZmRhZjc4NGRiNjRhMTJlOTczZjNiMzExZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImNiNTYzYTY0MWRiMmZhNGZkOTA5MmZiMmIwNGRiMjBmMjVjNGIyNWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjU5In0=	2019-03-13 04:24:19.580011+00
i607pq7xxem3xq9r9ci4o8jy7o3x47bk	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-02-23 21:52:15.640308+00
1t38xcq9i40g3zkt7h3qvsb9gp07v3tm	MzY4MTEzNTE4YWIxNmI4ZjhmNDJlMmM1ZWJlY2FhMDBhNDJjOTc5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjZlMjBhN2ZmNDI3ZTdjNDA2ODRmYzg4MDU0NmEyYWFkNGU5NDM0NGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjc1In0=	2019-02-26 22:20:45.385173+00
eay8nw1fis6sblmy18dit71yc8unj8fe	NzIzOGY3OGRiNGUxYjBkZDAzNGYwNjZiMmUyMWY0Yjc1NTgwNjFlZjp7Il9hdXRoX3VzZXJfaGFzaCI6ImM2NzZkZmRmODJjODZjZGM1MjZmMTQzMjRjYmVmNmZjZGEyZmQxMTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjgwIn0=	2019-03-05 06:11:52.418218+00
i7eapf5chdszuwpfanlojicnckr75vt6	NGY3NjE3NGJhYjViMDZiNzdhZDA1MjQ5MTY2MWUyYWRjYjIzMGRlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhNjE1ZmUwZDE3N2ZlMGE5OWM5MGZhNzBiNTg4ZDY5NmYzZTc4NzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjYzIn0=	2019-03-13 04:41:50.121658+00
x3pkw94xo5ybhxh2viybz3sfhisk313w	NGY3NjE3NGJhYjViMDZiNzdhZDA1MjQ5MTY2MWUyYWRjYjIzMGRlOTp7Il9hdXRoX3VzZXJfaGFzaCI6IjNhNjE1ZmUwZDE3N2ZlMGE5OWM5MGZhNzBiNTg4ZDY5NmYzZTc4NzYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjYzIn0=	2019-02-26 23:05:30.18111+00
adro0k74g7pneuqubkdmp5dxdfrx5rsk	YWFkMDdjN2ViYjdiMzQwMzE3OGYyMjRiOWM1NzFiMGMwZDZjOWE5Mjp7Il9hdXRoX3VzZXJfaGFzaCI6IjBlYjA5YjhiNzE1ZWEwYTgyMmY3Y2ZkZDc0M2YwYzNhYTVlZjI3MTQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjQ5In0=	2019-02-22 01:08:22.016433+00
1c3sfhjq7o038yhudmwftnaa0sp6w6q0	MDMzYzQ2ODVhNGUzMTM3NmVhOGY0NjMwZGRiYzJiOTA1ODc3NDE1NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImQwODM2Yjg1OTlmMzY0MmRiYzZmOGJmZWUyZmI5NDQwODIwY2RhNjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-14 23:24:26.643854+00
h0h40i738h6ryij5x4guuytc0wo7m3bb	NjljYWVkNzJhMTE3OWVlMWI1M2U4OWVhNTA1NDhhYTJjMzVhZjgyMjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc3ZmE4MDI2N2Q0MDJiYTVmOTJhNGI3YmNhOTk2NzQwODc0NWJmMTkiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxODE1In0=	2019-03-13 18:04:24.088087+00
pl3vu0ayzoa3j5jzt8oof1hzuol9368o	YmZmNDkzM2QyMDQ3NDVjZWM0M2E4ZjQzNzFkMWZiMTBlY2Y2ZDk0MTp7Il9hdXRoX3VzZXJfaGFzaCI6ImQ3ZTliNzdjNzEzYmE2NTk5ZWI5NDgyZDRkMWM1OTNlNjViMzRlYWQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjQ4In0=	2019-02-22 01:08:40.799024+00
7mknxyao2rqnxu35jm5vm2o08j9700ve	ZTdlMGZmZjA5YWI2NjM2NmZiMmVmMjZlOGZlMzczMTFmYTNjZTg1Mzp7Il9hdXRoX3VzZXJfaGFzaCI6Ijk0NzVmNGQ0OThmMDEwMTVjNWEwMmY5OThlYzQ5ODE3MmY1YjI5NWYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxMjY4In0=	2019-02-27 20:46:47.692041+00
\.


--
-- TOC entry 3392 (class 0 OID 16832)
-- Dependencies: 239
-- Data for Name: evaluations_evaluacioncualitativa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_evaluacioncualitativa (id, objetivo, numero_de_preguntas, habilitar_pregunta_1, pregunta_1, habilitar_pregunta_2, pregunta_2, habilitar_pregunta_3, pregunta_3, habilitar_pregunta_4, pregunta_4, habilitar_pregunta_5, pregunta_5, fecha_y_hora, diciplina_id, escuela_id, periodo_id, categoria_id) FROM stdin;
1	Trabajo en Equipo 1	3	t	Convive con sus Compañeros?	t	Respeta a sus Compañeros?	t	Muestra disposición para ayudar al equipo?	t		f		2019-01-24 02:55:59+00	1	1	1	1
4	Evaluacion	10	t		t		t		t		t		2019-02-14 20:06:51+00	1	3	3	76
3	Trabajo en Equipo	3	t	Convive con sus Compañeros?	t	Respeta a sus Compañeros?	t	Muestra disposición para ayudar al equipo?	f		f		2019-01-24 03:15:26+00	1	1	3	1
5	Evaluacion	5	t	Respeta a sus compañeros	t	Tabaja en equipo	t	Se integra en las actividades	t	Respeta a los profesores	t	Es disciplinado	2019-02-15 15:52:29+00	1	5	1	100
6	Evaluacion	10	t	a	t	4	t	45	t	wr	t	fg	2019-02-19 02:04:03+00	1	7	1	118
7	Evaluacion	5	t	a	t	a	t	s	t	d	t	d	2019-02-19 03:05:09+00	1	7	1	118
8	Evaluacion	6	t	Coordinación tren inferior 	t	Coordinación oculo manual 	t	Multilateralidad	t	Velocidad de reacción 	t	Conducción de balón 	2019-02-26 17:19:34+00	1	1	6	49
\.


--
-- TOC entry 3394 (class 0 OID 16844)
-- Dependencies: 241
-- Data for Name: evaluations_evaluacioncuantitativa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_evaluacioncuantitativa (id, objetivo, fecha_y_hora, diciplina_id, escuela_id, periodo_id, categoria_id, grupo_de_objetivos_id, numero_de_objetivos) FROM stdin;
1	Velocidad	2019-01-22 15:53:59+00	1	1	1	1	\N	\N
2	Resistencia	2019-01-24 03:17:32+00	1	1	3	1	\N	\N
3	Evaluacion	2019-02-15 15:34:32+00	1	5	1	100	2	5
4	Evaluaciones de primer semestre	2019-02-19 01:58:13+00	1	7	1	119	3	8
\.


--
-- TOC entry 3396 (class 0 OID 16853)
-- Dependencies: 243
-- Data for Name: evaluations_grupodeobjectivos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_grupodeobjectivos (id, nombre, slug, categoria_id, diciplina_id, escuela_id) FROM stdin;
1	Velocidad		100	1	5
2	Velocidad		100	1	5
3	Objetivos de Velocidad	objetivos-de-velocidad	119	1	7
\.


--
-- TOC entry 3411 (class 0 OID 25321)
-- Dependencies: 258
-- Data for Name: evaluations_grupodeobjectivos_objetivos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_grupodeobjectivos_objetivos (id, grupodeobjectivos_id, objetivo_id) FROM stdin;
1	1	1
2	1	2
3	2	1
7	3	1
8	3	2
9	3	3
\.


--
-- TOC entry 3409 (class 0 OID 25291)
-- Dependencies: 256
-- Data for Name: evaluations_objetivo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_objetivo (id, nombre, unidad_de_medicion, categoria_id, diciplina_id, escuela_id) FROM stdin;
1	Aceleración	m/s	100	1	5
2	Resistencia	hr-min	100	1	5
3	 Velocidad 100m	m/s	119	1	7
\.


--
-- TOC entry 3398 (class 0 OID 16861)
-- Dependencies: 245
-- Data for Name: evaluations_periododeevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_periododeevaluacion (id, inicio, final, slug, diciplina_id, escuela_id) FROM stdin;
1	2019-01-22	2019-01-29	22febrero-29febrero	1	1
3	2019-01-23	2019-01-29	2019-01-23-al-2019-01-29	1	1
4	2019-02-01	2019-02-28	primera	1	7
5	2019-03-01	2019-03-31	segunda	1	7
6	2018-10-30	2019-06-30	evaluaciones-deportivas-2018-2019	1	1
\.


--
-- TOC entry 3400 (class 0 OID 16869)
-- Dependencies: 247
-- Data for Name: evaluations_resultadocualitativo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_resultadocualitativo (id, objetivo, numero_de_respuestas, respuesta_1, respuesta_2, respuesta_3, respuesta_4, respuesta_5, fecha_y_hora, alumno_id, diciplina_id, escuela_id, evaluacion_id, periodo_id, profesor_id) FROM stdin;
1	Trabajo en Equipo	3	50	50	50	0	0	2019-01-24 03:16:37.318792+00	2	1	1	3	3	1
2	Evaluacion	6	25	50	50	50	25	2019-02-26 20:04:22.317363+00	591	1	1	8	6	1531
3	Evaluacion	6	50	50	50	25	50	2019-02-26 20:05:02.970761+00	593	1	1	8	6	1531
4	Evaluacion	6	25	25	25	25	25	2019-02-26 20:06:23.651056+00	594	1	1	8	6	1531
5	Evaluacion	6	50	75	50	75	50	2019-02-26 20:07:06.328571+00	596	1	1	8	6	1531
6	Evaluacion	6	25	50	25	50	50	2019-02-26 20:07:56.441663+00	595	1	1	8	6	1531
7	Evaluacion	6	50	75	50	75	75	2019-02-26 20:08:33.468294+00	597	1	1	8	6	1531
8	Evaluacion	6	50	50	50	50	50	2019-02-26 20:10:36.358534+00	601	1	1	8	6	1531
9	Evaluacion	6	50	50	50	50	50	2019-02-26 20:11:48.346467+00	605	1	1	8	6	1531
10	Evaluacion	6	50	75	50	50	50	2019-02-26 20:12:41.955134+00	606	1	1	8	6	1531
11	Evaluacion	6	50	25	50	50	50	2019-02-26 20:13:19.6821+00	607	1	1	8	6	1531
12	Evaluacion	6	50	50	50	75	50	2019-02-26 20:14:01.380091+00	608	1	1	8	6	1531
13	Evaluacion	6	25	25	25	25	25	2019-02-26 20:14:38.565703+00	609	1	1	8	6	1531
14	Evaluacion	6	50	75	75	75	75	2019-02-26 20:15:10.898197+00	610	1	1	8	6	1531
15	Evaluacion	6	50	50	50	50	50	2019-02-26 20:16:00.483252+00	613	1	1	8	6	1531
16	Evaluacion	6	50	75	50	75	50	2019-02-26 20:17:39.264492+00	615	1	1	8	6	1531
17	Evaluacion	6	50	50	50	50	50	2019-02-26 20:18:07.639998+00	616	1	1	8	6	1531
18	Evaluacion	6	50	25	25	50	50	2019-02-26 20:18:41.485307+00	617	1	1	8	6	1531
19	Evaluacion	6	25	50	50	50	25	2019-02-26 20:19:10.923943+00	618	1	1	8	6	1531
\.


--
-- TOC entry 3402 (class 0 OID 16881)
-- Dependencies: 249
-- Data for Name: evaluations_resultadocuantitativo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.evaluations_resultadocuantitativo (id, objetivo, numero_de_resultados, unidad_de_medicion, resultado_1, resultado_2, resultado_3, resultado_4, resultado_5, fecha_y_hora, alumno_id, diciplina_id, escuela_id, evaluacion_id, periodo_id, profesor_id, objetivo_1, objetivo_2, objetivo_3, objetivo_4, objetivo_5, um_1, um_2, um_3, um_4, um_5) FROM stdin;
1	Velocidad	2	m/s	5	5	0	0	0	2019-01-22 15:58:05.964183+00	34	1	1	1	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
2	Resistencia	2	minutos	30	20	0	0	0	2019-01-24 03:18:24.146644+00	2	1	1	2	3	1	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 3404 (class 0 OID 17018)
-- Dependencies: 251
-- Data for Name: matches_partido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.matches_partido (id, equipo, rival, local, visitante, lugar, fecha, hora, detalles, goles_a_favor, goles_en_contra, resultado, categoria_id) FROM stdin;
\.


--
-- TOC entry 3406 (class 0 OID 17037)
-- Dependencies: 253
-- Data for Name: payments_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payments_pago (id, "timestamp", vencimiento, metodo_de_pago, referencia, escuela_id) FROM stdin;
\.


--
-- TOC entry 3352 (class 0 OID 16397)
-- Dependencies: 199
-- Data for Name: schools_categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_categoria (id, nombre, slug, cede_id, escuela_id) FROM stdin;
1	1	1borussia	1	1
3	2	2borussia	1	1
4	3	3borussia	1	1
5	4	4borussia	1	1
6	5	5borussia	1	1
7	Alto Rendimiento 	alto-rendimientoborussia	2	1
9	Alto Rendimiento Club Alemán	alto-rendimiento-club-alemanborussia	3	1
10	Borusse	borusseborussia	3	1
11	Dortmunder Jungs	dortmunder-jungsborussia	3	1
12	EMMA	emmaborussia	3	1
13	2006	2006borussia	4	1
14	2007	2007borussia	4	1
15	2008 - 2009	2008-2009borussia	4	1
16	2010 - 2012	2010-2012borussia	4	1
17	2013 - 2015	2013-2015borussia	4	1
19	EMMA Fragata	emma-fragataborussia	4	1
20	2010	2010borussia	5	1
21	Femenil Alta	femenil-altaborussia	5	1
22	Femenil Baja	femenil-bajaborussia	5	1
23	Porteros	porterosborussia	5	1
24	Preparatoria	preparatoriaborussia	5	1
25	Secuandaria 1	secuandaria-1borussia	5	1
26	Secuandaria 2	secuandaria-2borussia	5	1
27	Varonil 2006-2005	varonil-2006-2005borussia	5	1
28	Varonil 2007	varonil-2007borussia	5	1
29	Varonil 2008	varonil-2008borussia	5	1
30	Varonil 2009	varonil-2009borussia	5	1
31	Varonil 2010-2011	varonil-2010-2011borussia	5	1
32	Varonil 2011	varonil-2011borussia	5	1
33	Varonil 2012	varonil-2012borussia	5	1
34	2006-2007	2006-2007borussia	6	1
35	2008	2008borussia	6	1
36	2009	2009borussia	6	1
38	2010 Lomas Verdes	2010-lomas-verdesborussia	1	1
39	2011	2011borussia	6	1
40	2012	2012borussia	6	1
41	2012 Vorshule	2012-vorshuleborussia	6	1
42	2013	2013borussia	6	1
43	2014	2014borussia	6	1
44	2014-1	2014-1borussia	6	1
45	Prepa Femenil	prepa-femenilborussia	6	1
46	Prepa Varonil	prepa-varonilborussia	6	1
47	Secundaria Femenil	secundaria-femenilborussia	6	1
48	Secundaria Varonil	secundaria-varonilborussia	6	1
49	Martes	martesborussia	7	1
50	Miércoles	miercolesborussia	7	1
51	Jueves	juevesborussia	7	1
52	Prepa/Femenil	prepafemenilborussia	8	1
53	Sec Femenil	sec-femenilborussia	8	1
54	Prepa Varonil Xochimilco	prepa-varonil-xochimilcoborussia	8	1
55	Sec 2° Y 3°/2004 Varonil	sec-2-y-32004-varonilborussia	8	1
56	Sec 1°/ 2005 Varonil	sec-1-2005-varonilborussia	8	1
57	2008 Xochimilco 2	2008-xochimilco-2borussia	9	1
58	2009 Xochimilco 2	2009-xochimilco-2borussia	9	1
59	2010 Xochimilco 2	2010-xochimilco-2borussia	9	1
60	2011 Xochimilco 2	2011-xochimilco-2borussia	9	1
61	DT Femenil	dt-femenilborussia	9	1
62	DT Varonil	dt-varonilborussia	9	1
63	Escuela Femenil	escuela-femenilborussia	9	1
64	Selectivo 08-09	selectivo-08-09borussia	9	1
65	4 División	4-divisionfluminense	10	2
66	Inf D	inf-dfluminense	10	2
69	Club Futbol MAT	club-futbol-matfluminense	10	2
70	Femenil	femenilfluminense	10	2
71	Inf A	inf-afluminense	10	2
72	Inf B	inf-bfluminense	10	2
68	Inf C	inf-d-fluminensefluminense	10	2
74	Juv C	juv-cfluminense	10	2
75	Porteros.	porterosfluminense	10	2
76	2007.	2007instituto-mexico	11	3
77	2008.	2008instituto-mexico	11	3
78	2009.	2009instituto-mexico	11	3
79	2010.	2010instituto-mexico	11	3
80	2011.	2011instituto-mexico	11	3
81	2012.	2012instituto-mexico	11	3
82	Escuela De Formacion P.A.	escuela-de-formacion-painstituto-mexico	11	3
83	Escuela De Formacion P.B.	escuela-de-formacion-pbinstituto-mexico	11	3
84	Femenil.	femenilinstituto-mexico	11	3
86	2003-2004	2003-2004nido-aguila	12	4
85	1999-2002	1999-2002instituto-mexico	12	4
87	2005-2006	2005-2006nido-aguila	12	4
88	2007,	2007nido-aguila	12	4
89	2008,	2008nido-aguila	12	4
90	2009,	2009nido-aguila	12	4
91	2010-2011	2010-2011nido-aguila	12	4
92	2012-2013	2012-2013nido-aguila	12	4
93	Femenil,	femenilnido-aguila	12	4
94	Ballet KI,KII.KIII y PF	ballet-ki,kii.kiii-y-pf	13	5
95	Intercolegial  Primaria Y Bachillerato 	intercolegial-primaria-y-bachillerato	13	5
96	Fútbol  Cat 2001-2 Y Fem Bachillerato	futbol-cat-2001-2-y-fem-bachillerato	13	5
97	Fútbol  Cat KI-KII-KII , PF y 2005	futbol-cat-ki-kii-kii-,-pf-y-2005	13	5
98	Fútbol  KI,KII.KIII 2010	futbol-ki,kii.kiii-2010	13	5
99	Fútbol  Cat 2007 Y CCH Varonil	futbol-cat-2007-y-cch-varonil	13	5
100	Fútbol  Cat 2009	futbol-cat-2009	13	5
101	Fútbol  2003	futbol-2003	13	5
102	Fútbol  Cat 2008	futbol-cat-2008	13	5
103	Fútbol  2004	futbol-2004	13	5
104	Capòeira Kinder-PF-Primaria	capoeira-kinder-pf-primaria	13	5
105	Volleyball Secundaria Fem	volleyball-secundaria-fem	13	5
106	Tochito Secundaria	tochito-secundaria	13	5
107	Basketball Primaria y Bachillerato Femenil	basketball-primaria-y-bachillerato-femenil	13	5
108	Tiro Con Arco Primaria y Bachillerato 	tiro-con-arco-primaria-y-bachillerato	13	5
109	Tenis Primaria Alta	tenis-primaria-alta	13	5
110	Dance Tecnique PF Primaria	dance-tecnique-pf-primaria	13	5
112	Mini tenis2	minitenis2	14	6
111	Mini tenis1	minitenis1	14	6
113	Mini tenis3	minitenis3	14	6
114	Iniciacion	iniciacion	14	6
115	Campo de formacion	campodeformacion	14	6
117	Competicion2	competicion2	14	6
116	Competicion1	competicion1	14	6
118	Grupo A	grupo-a	15	7
2	2012-2013	2012-2013	13	5
119	m	mla-herradura	\N	7
\.


--
-- TOC entry 3354 (class 0 OID 16407)
-- Dependencies: 201
-- Data for Name: schools_cede; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_cede (id, nombre, slug, direccion, escuela_id) FROM stdin;
1	Valle de Bravo	valle-de-bravoborussia	Valle de Bravo	1
2	Alto Rendimiento	alto-rendimientoborussia	Alto Rendimiento	1
3	Club Alemán	club-alemanborussia	Club Alemán	1
4	Fragata	fragataborussia	Fragata	1
5	Herradura	herraduraborussia	Herradura	1
6	Lomas Verdes	lomas-verdesborussia	Lomas Verdes	1
7	Pedregal	pedregalborussia	Pedregal	1
8	Xochimilco	xochimilcoborussia	Xochimilco	1
9	Xochimilco 2	xochimilco-2borussia	Xochimilco 2	1
10	Fluminense	fluminensefluminense	Fluminense	2
11	Instituto México Primaria	instituto-mexico-primariainstituto-mexico	Instituto México Primaria	3
12	Tlalpan Sur	tlalpan-surnido-aguila	Tlalpan Sur	4
13	Mazenod	mazenod	Mazenod	5
14	IDTC	idtc	Direccion	6
15	La Herradura	la-herradura	Direccion	7
\.


--
-- TOC entry 3356 (class 0 OID 16420)
-- Dependencies: 203
-- Data for Name: schools_diciplina; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_diciplina (id, nombre, slug) FROM stdin;
1	Soccer	soccer
\.


--
-- TOC entry 3358 (class 0 OID 16430)
-- Dependencies: 205
-- Data for Name: schools_escuela; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_escuela (id, nombre, slug, logo, direccion, afiliada, color_principal, color_secundario, facebook, twitter, youtube, instagram, tiene_caja, maneja_horarios) FROM stdin;
4	NidoAguila	nido-aguila	schools/nido-aguila/logo/file-1.jpeg/	Direccion	t	#E33830	#001D47	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	f
5	Mazenod	mazenod	schools/mazenod/logo/mazenod_sencillo.png/	Direccion	t	#22457D	#FFFFFF	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	f
7	La Herradura	la-herradura	schools/la-herradura/logo/logo_laherradura-2.png/	Direccion	t	#000000	#FFC400	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	f
2	Fluminense	fluminense	schools/fluminense/logo/file.jpeg/	Direccion	t	#0A5F28	#FFFFFF	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	t
6	IDTC	idtc	schools/idtc/logo/thumbnail_logo-01.png/	Direccion	t	#A1A095	#FF0000	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	t
3	InstitutoMexico	instituto-mexico	schools/instituto-mexico/logo/logotipo-marista-horizontal-01-copia-02f8a907.png/	Direccion	t	#0F3A5D	#FFFFFF	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	f
1	Borussia	borussia	schools/borussia/logo/LOGO BURUSSIA.png/	Direccion	t	#E6C231	#171719	http://www.facebook.com	http://www.twitter.com	http://www.youtube.com	http://www.instagram.com	f	f
\.


--
-- TOC entry 3360 (class 0 OID 16443)
-- Dependencies: 207
-- Data for Name: schools_escuela_diciplinas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_escuela_diciplinas (id, escuela_id, diciplina_id) FROM stdin;
6	4	1
9	5	1
13	2	1
16	6	1
19	3	1
20	1	1
\.


--
-- TOC entry 3362 (class 0 OID 16453)
-- Dependencies: 209
-- Data for Name: schools_importarcategorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_importarcategorias (id, nombre, archivo_cvs, escuela_id) FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 16463)
-- Dependencies: 211
-- Data for Name: schools_sliderescuela; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schools_sliderescuela (id, imagen_1, imagen_2, imagen_3, imagen_4, escuela_id) FROM stdin;
3	schools/instituto-mexico/slider/2557506437_e8ac5f3b4b_b.jpg/	schools/instituto-mexico/slider/jovenes-en-el-futbol.jpg/	schools/instituto-mexico/slider/calentamiento_reduce_lesiones_futbol_infantil.jpg/	schools/instituto-mexico/slider/Pelota-de-futbol.jpg/	3
4	schools/nido-aguila/slider/20597234_1936246619930311_421990162360842451_n.jpg/	schools/nido-aguila/slider/15822630_1842108192677488_6377430524233714455_n.jpg/	schools/nido-aguila/slider/31131241_2047924118762560_3522226268496562844_n.jpg/	schools/nido-aguila/slider/Pelota-de-futbol.jpg/	4
1	schools/borussia/slider/csm__L0R5441.jpg_8556903bdf.jpg/	schools/borussia/slider/foto borussia.jpg/	schools/borussia/slider/IMG-20180727-WA0025.jpg/	schools/borussia/slider/IMG-20180727-WA0080.jpg/	1
2	schools/fluminense/slider/a55e30084eb6bcce5fe64c11518c62bf-2.jpeg/	schools/fluminense/slider/ae436b16f220da3ca328743a4783861f-2.jpeg/	schools/fluminense/slider/f188c715b32ec970adbf1f98d275b49a.png/	schools/fluminense/slider/32555ad2e63242664c0d7b09d1fe4028-2.jpeg/	2
5	schools/mazenod/slider/file2-1.jpeg/	schools/mazenod/slider/file9-1.jpeg/	schools/mazenod/slider/file10-1.jpeg/	schools/mazenod/slider/file6-1.jpeg/	5
6	\N	\N	\N	\N	6
7	\N	\N	\N	\N	7
\.


--
-- TOC entry 3376 (class 0 OID 16587)
-- Dependencies: 223
-- Data for Name: users_asistencia; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_asistencia (id, alumno_id, asistencia, horario, categoria_id, fecha) FROM stdin;
\.


--
-- TOC entry 3377 (class 0 OID 16593)
-- Dependencies: 224
-- Data for Name: users_caja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_caja (user_id, cede_id, escuela_id) FROM stdin;
\.


--
-- TOC entry 3378 (class 0 OID 16602)
-- Dependencies: 225
-- Data for Name: users_coordinador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_coordinador (user_id, fecha_de_nacimiento, cede_id, escuela_id) FROM stdin;
1557	2000-01-01	10	2
1817	2000-01-01	14	6
1837	\N	13	5
\.


--
-- TOC entry 3379 (class 0 OID 16607)
-- Dependencies: 226
-- Data for Name: users_director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_director (user_id, fecha_de_nacimiento, cede_id, escuela_id) FROM stdin;
1226	2019-01-21	1	1
1242	2019-01-21	10	2
1243	2019-01-21	11	3
1244	\N	\N	\N
\.


--
-- TOC entry 3380 (class 0 OID 16612)
-- Dependencies: 227
-- Data for Name: users_graham; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_graham (user_id) FROM stdin;
\.


--
-- TOC entry 3381 (class 0 OID 16617)
-- Dependencies: 228
-- Data for Name: users_padrealumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_padrealumno (user_id, fecha_de_nacimiento, categoria_id, cede_id, diciplina_id, escuela_id) FROM stdin;
1	2019-01-20	1	1	1	1
1560	2019-01-29	111	14	1	6
1561	2019-01-29	111	14	1	6
131	2019-01-21	9	3	1	1
1563	2019-01-29	111	14	1	6
1564	2019-01-29	111	14	1	6
1608	2019-01-29	112	14	1	6
1609	2019-01-29	112	14	1	6
1610	2019-01-29	112	14	1	6
1611	2019-01-29	112	14	1	6
1612	2019-01-29	112	14	1	6
1613	2019-01-29	112	14	1	6
1614	2019-01-29	112	14	1	6
1615	2019-01-29	112	14	1	6
1616	2019-01-29	112	14	1	6
1617	2019-01-29	112	14	1	6
1618	2019-01-29	112	14	1	6
1619	2019-01-29	112	14	1	6
1620	2019-01-29	112	14	1	6
1621	2019-01-29	112	14	1	6
1622	2019-01-29	112	14	1	6
1623	2019-01-29	112	14	1	6
1624	2019-01-29	112	14	1	6
1625	2019-01-29	112	14	1	6
1626	2019-01-29	112	14	1	6
1627	2019-01-29	112	14	1	6
1628	2019-01-29	112	14	1	6
1629	2019-01-29	112	14	1	6
1630	2019-01-29	112	14	1	6
1631	2019-01-29	112	14	1	6
1632	2019-01-29	112	14	1	6
1633	2019-01-29	112	14	1	6
1634	2019-01-29	112	14	1	6
1635	2019-01-29	112	14	1	6
1636	2019-01-29	112	14	1	6
1637	2019-01-29	112	14	1	6
1638	2019-01-29	112	14	1	6
1639	2019-01-29	112	14	1	6
1640	2019-01-29	112	14	1	6
1641	2019-01-29	112	14	1	6
1642	2019-01-29	112	14	1	6
1643	2019-01-29	112	14	1	6
1644	2019-01-29	112	14	1	6
1645	2019-01-29	113	14	1	6
1646	2019-01-29	113	14	1	6
1647	2019-01-29	113	14	1	6
1648	2019-01-29	113	14	1	6
1649	2019-01-29	113	14	1	6
1650	2019-01-29	113	14	1	6
1651	2019-01-29	113	14	1	6
1652	2019-01-29	113	14	1	6
1653	2019-01-29	113	14	1	6
1654	2019-01-29	113	14	1	6
1655	2019-01-29	113	14	1	6
1656	2019-01-29	113	14	1	6
1657	2019-01-29	113	14	1	6
1658	2019-01-29	113	14	1	6
1659	2019-01-29	113	14	1	6
1660	2019-01-29	113	14	1	6
1661	2019-01-29	113	14	1	6
1662	2019-01-29	113	14	1	6
1663	2019-01-29	113	14	1	6
1664	2019-01-29	113	14	1	6
1665	2019-01-29	113	14	1	6
1666	2019-01-29	113	14	1	6
1667	2019-01-29	113	14	1	6
1668	2019-01-29	113	14	1	6
1669	2019-01-29	113	14	1	6
1670	2019-01-29	113	14	1	6
1671	2019-01-29	113	14	1	6
1672	2019-01-29	113	14	1	6
1673	2019-01-29	113	14	1	6
1674	2019-01-29	113	14	1	6
1675	2019-01-29	113	14	1	6
1676	2019-01-29	113	14	1	6
1677	2019-01-29	113	14	1	6
1678	2019-01-29	113	14	1	6
1679	2019-01-29	113	14	1	6
1680	2019-01-29	113	14	1	6
1681	2019-01-29	113	14	1	6
1682	2019-01-29	113	14	1	6
1683	2019-01-29	113	14	1	6
1684	2019-01-29	113	14	1	6
1685	2019-01-29	113	14	1	6
1686	2019-01-29	114	14	1	6
1687	2019-01-29	114	14	1	6
1688	2019-01-29	114	14	1	6
1689	2019-01-29	114	14	1	6
1690	2019-01-29	114	14	1	6
1691	2019-01-29	114	14	1	6
1692	2019-01-29	114	14	1	6
1693	2019-01-29	114	14	1	6
1694	2019-01-29	114	14	1	6
1695	2019-01-29	114	14	1	6
1696	2019-01-29	114	14	1	6
1697	2019-01-29	114	14	1	6
1559	2019-01-29	111	14	1	6
1507	2019-01-22	110	13	1	5
1508	2019-01-22	110	13	1	5
1509	2019-01-22	110	13	1	5
1510	2019-01-22	110	13	1	5
1511	2019-01-22	110	13	1	5
1512	2019-01-22	110	13	1	5
1820	2019-01-30	118	15	1	7
1821	2019-01-30	118	15	1	7
1822	2019-01-30	118	15	1	7
1823	2019-01-30	118	15	1	7
1824	2019-01-30	118	15	1	7
1825	2019-01-30	118	15	1	7
1826	2019-01-30	118	15	1	7
1827	2019-01-30	118	15	1	7
1828	2019-01-30	118	15	1	7
1829	2019-01-30	118	15	1	7
1830	2019-01-30	118	15	1	7
1831	2019-01-30	118	15	1	7
1832	2019-01-30	118	15	1	7
1833	2019-01-30	118	15	1	7
1834	2019-01-30	118	15	1	7
1835	2019-01-30	118	15	1	7
1836	2019-01-30	118	15	1	7
1698	2019-01-29	114	14	1	6
1699	2019-01-29	114	14	1	6
1700	2019-01-29	114	14	1	6
1701	2019-01-29	114	14	1	6
1702	2019-01-29	114	14	1	6
1703	2019-01-29	114	14	1	6
1704	2019-01-29	114	14	1	6
1705	2019-01-29	114	14	1	6
1706	2019-01-29	114	14	1	6
1707	2019-01-29	114	14	1	6
1708	2019-01-29	114	14	1	6
1709	2019-01-29	114	14	1	6
1710	2019-01-29	114	14	1	6
1711	2019-01-29	114	14	1	6
1712	2019-01-29	114	14	1	6
1713	2019-01-29	114	14	1	6
1714	2019-01-29	114	14	1	6
1715	2019-01-29	114	14	1	6
1716	2019-01-29	114	14	1	6
1717	2019-01-29	114	14	1	6
1718	2019-01-29	114	14	1	6
1719	2019-01-29	114	14	1	6
1720	2019-01-29	114	14	1	6
1721	2019-01-29	114	14	1	6
1282	2019-01-22	98	13	1	5
1283	2019-01-22	98	13	1	5
132	2019-01-21	9	3	1	1
133	2019-01-21	9	3	1	1
134	2019-01-21	9	3	1	1
135	2019-01-21	9	3	1	1
1470	2019-01-22	105	13	1	5
1471	2019-01-22	105	13	1	5
1472	2019-01-22	105	13	1	5
1473	2019-01-22	105	13	1	5
1474	2019-01-22	105	13	1	5
1475	2019-01-22	105	13	1	5
1476	2019-01-22	105	13	1	5
1477	2019-01-22	105	13	1	5
1478	2019-01-22	105	13	1	5
1479	2019-01-22	105	13	1	5
1480	2019-01-22	105	13	1	5
1481	2019-01-22	105	13	1	5
1482	2019-01-22	105	13	1	5
1483	2019-01-22	105	13	1	5
1484	2019-01-22	105	13	1	5
1485	2019-01-22	105	13	1	5
1486	2019-01-22	105	13	1	5
1487	2019-01-22	105	13	1	5
1488	2019-01-22	105	13	1	5
1489	2019-01-22	107	13	1	5
1490	2019-01-22	107	13	1	5
1491	2019-01-22	107	13	1	5
1492	2019-01-22	107	13	1	5
1493	2019-01-22	107	13	1	5
1494	2019-01-22	107	13	1	5
1495	2019-01-22	107	13	1	5
1496	2019-01-22	107	13	1	5
1497	2019-01-22	107	13	1	5
1498	2019-01-22	107	13	1	5
1499	2019-01-22	107	13	1	5
1500	2019-01-22	94	13	1	5
1501	2019-01-22	94	13	1	5
1502	2019-01-22	94	13	1	5
1503	2019-01-22	94	13	1	5
1504	2019-01-22	94	13	1	5
1505	2019-01-22	110	13	1	5
1506	2019-01-22	110	13	1	5
1783	2019-01-29	115	14	1	6
1784	2019-01-29	115	14	1	6
1785	2019-01-29	116	14	1	6
1786	2019-01-29	116	14	1	6
1787	2019-01-29	116	14	1	6
1788	2019-01-29	116	14	1	6
1789	2019-01-29	116	14	1	6
1790	2019-01-29	116	14	1	6
1791	2019-01-29	116	14	1	6
1792	2019-01-29	116	14	1	6
1793	2019-01-29	116	14	1	6
1794	2019-01-29	116	14	1	6
1795	2019-01-29	116	14	1	6
1796	2019-01-29	116	14	1	6
1797	2019-01-29	116	14	1	6
1798	2019-01-29	116	14	1	6
1799	2019-01-29	116	14	1	6
1800	2019-01-29	116	14	1	6
1801	2019-01-29	116	14	1	6
1802	2019-01-29	116	14	1	6
1803	2019-01-29	116	14	1	6
1804	2019-01-29	116	14	1	6
1805	2019-01-29	116	14	1	6
1806	2019-01-29	116	14	1	6
1284	2019-01-22	98	13	1	5
1285	2019-01-22	98	13	1	5
1286	2019-01-22	98	13	1	5
1287	2019-01-22	98	13	1	5
1288	2019-01-22	98	13	1	5
1289	2019-01-22	98	13	1	5
1290	2019-01-22	98	13	1	5
1291	2019-01-22	98	13	1	5
1292	2019-01-22	97	13	1	5
1293	2019-01-22	97	13	1	5
1294	2019-01-22	97	13	1	5
1295	2019-01-22	97	13	1	5
1296	2019-01-22	97	13	1	5
1297	2019-01-22	97	13	1	5
1298	2019-01-22	\N	13	1	5
1299	2019-01-22	\N	13	1	5
1300	2019-01-22	\N	13	1	5
1378	2019-01-22	96	13	1	5
1379	2019-01-22	96	13	1	5
1380	2019-01-22	96	13	1	5
1381	2019-01-22	96	13	1	5
1382	2019-01-22	96	13	1	5
1383	2019-01-22	96	13	1	5
1384	2019-01-22	96	13	1	5
1385	2019-01-22	96	13	1	5
1386	2019-01-22	96	13	1	5
1387	2019-01-22	96	13	1	5
1388	2019-01-22	96	13	1	5
1389	2019-01-22	96	13	1	5
1390	2019-01-22	96	13	1	5
1391	2019-01-22	\N	13	1	5
1392	2019-01-22	\N	13	1	5
1393	2019-01-22	\N	13	1	5
718	2019-01-21	58	9	1	1
719	2019-01-21	58	9	1	1
720	2019-01-21	58	9	1	1
721	2019-01-21	58	9	1	1
722	2019-01-21	58	9	1	1
723	2019-01-21	58	9	1	1
724	2019-01-21	58	9	1	1
725	2019-01-21	58	9	1	1
726	2019-01-21	58	9	1	1
727	2019-01-21	58	9	1	1
728	2019-01-21	58	9	1	1
136	2019-01-21	9	3	1	1
137	2019-01-21	9	3	1	1
138	2019-01-21	9	3	1	1
139	2019-01-21	9	3	1	1
140	2019-01-21	9	3	1	1
141	2019-01-21	9	3	1	1
142	2019-01-21	9	3	1	1
143	2019-01-21	9	3	1	1
144	2019-01-21	9	3	1	1
145	2019-01-21	9	3	1	1
146	2019-01-21	9	3	1	1
147	2019-01-21	9	3	1	1
148	2019-01-21	9	3	1	1
149	2019-01-21	9	3	1	1
150	2019-01-21	9	3	1	1
151	2019-01-21	9	3	1	1
1807	2019-01-29	117	14	1	6
1808	2019-01-29	117	14	1	6
1809	2019-01-29	117	14	1	6
2	2019-01-21	1	1	1	1
1558	2019-01-29	111	14	1	6
1565	2019-01-29	111	14	1	6
1566	2019-01-29	111	14	1	6
1567	2019-01-29	111	14	1	6
1568	2019-01-29	111	14	1	6
1569	2019-01-29	111	14	1	6
1570	2019-01-29	111	14	1	6
1571	2019-01-29	111	14	1	6
1572	2019-01-29	111	14	1	6
1394	2019-01-22	\N	13	1	5
1395	2019-01-22	\N	13	1	5
1396	2019-01-22	\N	13	1	5
1397	2019-01-22	\N	13	1	5
1398	2019-01-22	\N	13	1	5
1399	2019-01-22	\N	13	1	5
1400	2019-01-22	\N	13	1	5
1401	2019-01-22	\N	13	1	5
1402	2019-01-22	\N	13	1	5
1403	2019-01-22	\N	13	1	5
1404	2019-01-22	\N	13	1	5
1405	2019-01-22	\N	13	1	5
1406	2019-01-22	\N	13	1	5
3	2019-01-21	1	1	1	1
4	2019-01-21	1	1	1	1
5	2019-01-21	1	1	1	1
6	2019-01-21	1	1	1	1
7	2019-01-21	1	1	1	1
8	2019-01-21	1	1	1	1
9	2019-01-21	1	1	1	1
10	2019-01-21	1	1	1	1
11	2019-01-21	1	1	1	1
12	2019-01-21	1	1	1	1
13	2019-01-21	1	1	1	1
14	2019-01-21	1	1	1	1
15	2019-01-21	1	1	1	1
16	2019-01-21	1	1	1	1
17	2019-01-21	1	1	1	1
18	2019-01-21	1	1	1	1
19	2019-01-21	1	1	1	1
20	2019-01-21	1	1	1	1
21	2019-01-21	3	1	1	1
22	2019-01-21	3	1	1	1
23	2019-01-21	3	1	1	1
24	2019-01-21	3	1	1	1
25	2019-01-21	3	1	1	1
26	2019-01-21	3	1	1	1
27	2019-01-21	3	1	1	1
28	2019-01-21	3	1	1	1
29	2019-01-21	3	1	1	1
30	2019-01-21	3	1	1	1
31	2019-01-21	3	1	1	1
32	2019-01-21	3	1	1	1
33	2019-01-21	3	1	1	1
34	2019-01-21	3	1	1	1
35	2019-01-21	4	1	1	1
36	2019-01-21	4	1	1	1
37	2019-01-21	4	1	1	1
38	2019-01-21	4	1	1	1
39	2019-01-21	4	1	1	1
40	2019-01-21	4	1	1	1
41	2019-01-21	5	1	1	1
42	2019-01-21	5	1	1	1
43	2019-01-21	5	1	1	1
44	2019-01-21	5	1	1	1
45	2019-01-21	5	1	1	1
46	2019-01-21	5	1	1	1
47	2019-01-21	5	1	1	1
48	2019-01-21	5	1	1	1
49	2019-01-21	5	1	1	1
50	2019-01-21	5	1	1	1
51	2019-01-21	5	1	1	1
52	2019-01-21	5	1	1	1
53	2019-01-21	5	1	1	1
54	2019-01-21	6	1	1	1
55	2019-01-21	6	1	1	1
56	2019-01-21	6	1	1	1
57	2019-01-21	6	1	1	1
58	2019-01-21	6	1	1	1
59	2019-01-21	6	1	1	1
60	2019-01-21	6	1	1	1
61	2019-01-21	6	1	1	1
62	2019-01-21	6	1	1	1
63	2019-01-21	6	1	1	1
64	2019-01-21	6	1	1	1
65	2019-01-21	6	1	1	1
66	2019-01-21	6	1	1	1
67	2019-01-21	6	1	1	1
68	2019-01-21	6	1	1	1
69	2019-01-21	6	1	1	1
70	2019-01-21	7	2	1	1
71	2019-01-21	7	2	1	1
72	2019-01-21	7	2	1	1
73	2019-01-21	7	2	1	1
74	2019-01-21	7	2	1	1
75	2019-01-21	7	2	1	1
76	2019-01-21	7	2	1	1
77	2019-01-21	7	2	1	1
78	2019-01-21	7	2	1	1
79	2019-01-21	7	2	1	1
80	2019-01-21	7	2	1	1
81	2019-01-21	7	2	1	1
82	2019-01-21	7	2	1	1
83	2019-01-21	7	2	1	1
84	2019-01-21	7	2	1	1
85	2019-01-21	7	2	1	1
86	2019-01-21	7	2	1	1
87	2019-01-21	7	2	1	1
88	2019-01-21	7	2	1	1
89	2019-01-21	7	2	1	1
90	2019-01-21	7	2	1	1
91	2019-01-21	7	2	1	1
92	2019-01-21	7	2	1	1
93	2019-01-21	7	2	1	1
94	2019-01-21	7	2	1	1
95	2019-01-21	7	2	1	1
96	2019-01-21	7	2	1	1
97	2019-01-21	7	2	1	1
98	2019-01-21	7	2	1	1
99	2019-01-21	7	2	1	1
100	2019-01-21	7	2	1	1
101	2019-01-21	7	2	1	1
102	2019-01-21	7	2	1	1
103	2019-01-21	7	2	1	1
104	2019-01-21	7	2	1	1
105	2019-01-21	7	2	1	1
1722	2019-01-29	114	14	1	6
1723	2019-01-29	114	14	1	6
1724	2019-01-29	114	14	1	6
1725	2019-01-29	114	14	1	6
1726	2019-01-29	114	14	1	6
1727	2019-01-29	114	14	1	6
1728	2019-01-29	114	14	1	6
1729	2019-01-29	114	14	1	6
1730	2019-01-29	114	14	1	6
1573	2019-01-29	111	14	1	6
1574	2019-01-29	111	14	1	6
1575	2019-01-29	111	14	1	6
1576	2019-01-29	111	14	1	6
1577	2019-01-29	111	14	1	6
1578	2019-01-29	111	14	1	6
1579	2019-01-29	111	14	1	6
1580	2019-01-29	111	14	1	6
1581	2019-01-29	111	14	1	6
1582	2019-01-29	111	14	1	6
1583	2019-01-29	111	14	1	6
1584	2019-01-29	111	14	1	6
1585	2019-01-29	111	14	1	6
1586	2019-01-29	111	14	1	6
1587	2019-01-29	111	14	1	6
1588	2019-01-29	111	14	1	6
1589	2019-01-29	111	14	1	6
1590	2019-01-29	111	14	1	6
1591	2019-01-29	111	14	1	6
1592	2019-01-29	111	14	1	6
1593	2019-01-29	111	14	1	6
1594	2019-01-29	111	14	1	6
1595	2019-01-29	111	14	1	6
1596	2019-01-29	111	14	1	6
1597	2019-01-29	111	14	1	6
1598	2019-01-29	111	14	1	6
1599	2019-01-29	111	14	1	6
1600	2019-01-29	111	14	1	6
1601	2019-01-29	111	14	1	6
1602	2019-01-29	112	14	1	6
1603	2019-01-29	112	14	1	6
1604	2019-01-29	112	14	1	6
1605	2019-01-29	112	14	1	6
1606	2019-01-29	112	14	1	6
1607	2019-01-29	112	14	1	6
1731	2019-01-29	114	14	1	6
1732	2019-01-29	114	14	1	6
1734	2019-01-29	114	14	1	6
1735	2019-01-29	114	14	1	6
1736	2019-01-29	114	14	1	6
1737	2019-01-29	114	14	1	6
1513	2019-01-22	95	13	1	5
1514	2019-01-22	95	13	1	5
1515	2019-01-22	95	13	1	5
1516	2019-01-22	95	13	1	5
1517	2019-01-22	95	13	1	5
1518	2019-01-22	95	13	1	5
1519	2019-01-22	95	13	1	5
1520	2019-01-22	95	13	1	5
1521	2019-01-22	95	13	1	5
1522	2019-01-22	95	13	1	5
1523	2019-01-22	95	13	1	5
1524	2019-01-22	95	13	1	5
1525	2019-01-22	95	13	1	5
1526	2019-01-22	95	13	1	5
1527	2019-01-22	95	13	1	5
1528	2019-01-22	95	13	1	5
1738	2019-01-29	114	14	1	6
1739	2019-01-29	114	14	1	6
1740	2019-01-29	114	14	1	6
1741	2019-01-29	114	14	1	6
1742	2019-01-29	114	14	1	6
1743	2019-01-29	114	14	1	6
1744	2019-01-29	114	14	1	6
1745	2019-01-29	114	14	1	6
1746	2019-01-29	114	14	1	6
1747	2019-01-29	114	14	1	6
1748	2019-01-29	114	14	1	6
1749	2019-01-29	114	14	1	6
1750	2019-01-29	114	14	1	6
1751	2019-01-29	114	14	1	6
1752	2019-01-29	114	14	1	6
1753	2019-01-29	114	14	1	6
1754	2019-01-29	114	14	1	6
1755	2019-01-29	114	14	1	6
1756	2019-01-29	114	14	1	6
1757	2019-01-29	114	14	1	6
1758	2019-01-29	114	14	1	6
1759	2019-01-29	115	14	1	6
1760	2019-01-29	115	14	1	6
1761	2019-01-29	115	14	1	6
1762	2019-01-29	115	14	1	6
1763	2019-01-29	115	14	1	6
1764	2019-01-29	115	14	1	6
1765	2019-01-29	115	14	1	6
1766	2019-01-29	115	14	1	6
1767	2019-01-29	115	14	1	6
1768	2019-01-29	115	14	1	6
1769	2019-01-29	115	14	1	6
1770	2019-01-29	115	14	1	6
1771	2019-01-29	115	14	1	6
1772	2019-01-29	115	14	1	6
1773	2019-01-29	115	14	1	6
1774	2019-01-29	115	14	1	6
1775	2019-01-29	115	14	1	6
1776	2019-01-29	115	14	1	6
1777	2019-01-29	115	14	1	6
1778	2019-01-29	115	14	1	6
1779	2019-01-29	115	14	1	6
1780	2019-01-29	115	14	1	6
1781	2019-01-29	115	14	1	6
1782	2019-01-29	115	14	1	6
106	2019-01-21	7	2	1	1
107	2019-01-21	7	2	1	1
108	2019-01-21	7	2	1	1
1281	2019-01-22	98	13	1	5
109	2019-01-21	7	2	1	1
110	2019-01-21	7	2	1	1
111	2019-01-21	7	2	1	1
112	2019-01-21	7	2	1	1
113	2019-01-21	7	2	1	1
114	2019-01-21	7	2	1	1
115	2019-01-21	7	2	1	1
116	2019-01-21	7	2	1	1
117	2019-01-21	7	2	1	1
118	2019-01-21	7	2	1	1
119	2019-01-21	7	2	1	1
120	2019-01-21	7	2	1	1
121	2019-01-21	7	2	1	1
122	2019-01-21	7	2	1	1
1733	2019-01-29	114	14	1	6
1841	2019-02-18	\N	\N	\N	\N
1562	2019-01-29	111	14	1	6
123	2019-01-21	7	2	1	1
124	2019-01-21	7	2	1	1
125	2019-01-21	7	2	1	1
126	2019-01-21	7	2	1	1
127	2019-01-21	7	2	1	1
128	2019-01-21	7	2	1	1
129	2019-01-21	7	2	1	1
152	2019-01-21	10	3	1	1
153	2019-01-21	10	3	1	1
154	2019-01-21	10	3	1	1
155	2019-01-21	10	3	1	1
156	2019-01-21	11	3	1	1
157	2019-01-21	11	3	1	1
158	2019-01-21	11	3	1	1
159	2019-01-21	11	3	1	1
160	2019-01-21	11	3	1	1
161	2019-01-21	11	3	1	1
162	2019-01-21	11	3	1	1
163	2019-01-21	11	3	1	1
164	2019-01-21	11	3	1	1
165	2019-01-21	12	3	1	1
166	2019-01-21	12	3	1	1
167	2019-01-21	12	3	1	1
168	2019-01-21	12	3	1	1
169	2019-01-21	12	3	1	1
170	2019-01-21	13	4	1	1
171	2019-01-21	13	4	1	1
172	2019-01-21	13	4	1	1
173	2019-01-21	13	4	1	1
174	2019-01-21	13	4	1	1
175	2019-01-21	13	4	1	1
176	2019-01-21	13	4	1	1
177	2019-01-21	13	4	1	1
178	2019-01-21	13	4	1	1
179	2019-01-21	13	4	1	1
180	2019-01-21	13	4	1	1
181	2019-01-21	13	4	1	1
182	2019-01-21	13	4	1	1
183	2019-01-21	13	4	1	1
184	2019-01-21	13	4	1	1
185	2019-01-21	14	4	1	1
186	2019-01-21	14	4	1	1
187	2019-01-21	14	4	1	1
188	2019-01-21	14	4	1	1
189	2019-01-21	14	4	1	1
190	2019-01-21	14	4	1	1
191	2019-01-21	14	4	1	1
192	2019-01-21	14	4	1	1
193	2019-01-21	14	4	1	1
194	2019-01-21	14	4	1	1
195	2019-01-21	14	4	1	1
196	2019-01-21	14	4	1	1
197	2019-01-21	14	4	1	1
198	2019-01-21	14	4	1	1
199	2019-01-21	15	4	1	1
200	2019-01-21	15	4	1	1
201	2019-01-21	15	4	1	1
202	2019-01-21	15	4	1	1
203	2019-01-21	15	4	1	1
204	2019-01-21	15	4	1	1
205	2019-01-21	15	4	1	1
206	2019-01-21	15	4	1	1
207	2019-01-21	15	4	1	1
208	2019-01-21	15	4	1	1
209	2019-01-21	15	4	1	1
210	2019-01-21	15	4	1	1
211	2019-01-21	15	4	1	1
212	2019-01-21	15	4	1	1
213	2019-01-21	15	4	1	1
214	2019-01-21	15	4	1	1
215	2019-01-21	16	4	1	1
216	2019-01-21	16	4	1	1
217	2019-01-21	16	4	1	1
218	2019-01-21	16	4	1	1
219	2019-01-21	16	4	1	1
220	2019-01-21	16	4	1	1
221	2019-01-21	16	4	1	1
222	2019-01-21	16	4	1	1
223	2019-01-21	16	4	1	1
224	2019-01-21	16	4	1	1
225	2019-01-21	16	4	1	1
226	2019-01-21	16	4	1	1
227	2019-01-21	16	4	1	1
228	2019-01-21	16	4	1	1
229	2019-01-21	17	4	1	1
230	2019-01-21	17	4	1	1
231	2019-01-21	17	4	1	1
232	2019-01-21	17	4	1	1
233	2019-01-21	17	4	1	1
234	2019-01-21	17	4	1	1
235	2019-01-21	17	4	1	1
236	2019-01-21	17	4	1	1
237	2019-01-21	17	4	1	1
238	2019-01-21	17	4	1	1
239	2019-01-21	17	4	1	1
240	2019-01-21	12	4	1	1
241	2019-01-21	12	4	1	1
242	2019-01-21	12	4	1	1
243	2019-01-21	12	4	1	1
244	2019-01-21	12	4	1	1
245	2019-01-21	12	4	1	1
246	2019-01-21	12	4	1	1
247	2019-01-21	12	4	1	1
248	2019-01-21	12	4	1	1
249	2019-01-21	20	5	1	1
250	2019-01-21	20	5	1	1
251	2019-01-21	20	5	1	1
252	2019-01-21	20	5	1	1
253	2019-01-21	20	5	1	1
254	2019-01-21	20	5	1	1
255	2019-01-21	20	5	1	1
256	2019-01-21	20	5	1	1
257	2019-01-21	20	5	1	1
258	2019-01-21	20	5	1	1
259	2019-01-21	20	5	1	1
260	2019-01-21	20	5	1	1
261	2019-01-21	20	5	1	1
262	2019-01-21	21	5	1	1
263	2019-01-21	21	5	1	1
264	2019-01-21	21	5	1	1
265	2019-01-21	21	5	1	1
266	2019-01-21	21	5	1	1
267	2019-01-21	21	5	1	1
268	2019-01-21	21	5	1	1
269	2019-01-21	21	5	1	1
270	2019-01-21	22	5	1	1
271	2019-01-21	22	5	1	1
272	2019-01-21	22	5	1	1
273	2019-01-21	22	5	1	1
274	2019-01-21	22	5	1	1
275	2019-01-21	22	5	1	1
276	2019-01-21	22	5	1	1
277	2019-01-21	22	5	1	1
130	2019-01-21	9	3	1	1
1301	2019-01-22	\N	13	1	5
1302	2019-01-22	\N	13	1	5
1303	2019-01-22	\N	13	1	5
1304	2019-01-22	\N	13	1	5
1305	2019-01-22	\N	13	1	5
1306	2019-01-22	\N	13	1	5
1307	2019-01-22	\N	13	1	5
1308	2019-01-22	\N	13	1	5
1309	2019-01-22	\N	13	1	5
1310	2019-01-22	\N	13	1	5
1311	2019-01-22	\N	13	1	5
1312	2019-01-22	100	13	1	5
1313	2019-01-22	100	13	1	5
1314	2019-01-22	100	13	1	5
1315	2019-01-22	100	13	1	5
1316	2019-01-22	100	13	1	5
1317	2019-01-22	100	13	1	5
1318	2019-01-22	102	13	1	5
1319	2019-01-22	102	13	1	5
1320	2019-01-22	102	13	1	5
1321	2019-01-22	102	13	1	5
1322	2019-01-22	108	13	1	5
1323	2019-01-22	108	13	1	5
1324	2019-01-22	108	13	1	5
1325	2019-01-22	99	13	1	5
1326	2019-01-22	99	13	1	5
1327	2019-01-22	99	13	1	5
1328	2019-01-22	99	13	1	5
1329	2019-01-22	99	13	1	5
1330	2019-01-22	99	13	1	5
1331	2019-01-22	99	13	1	5
1332	2019-01-22	99	13	1	5
1333	2019-01-22	99	13	1	5
1334	2019-01-22	99	13	1	5
1335	2019-01-22	99	13	1	5
1336	2019-01-22	99	13	1	5
1337	2019-01-22	99	13	1	5
1338	2019-01-22	99	13	1	5
1339	2019-01-22	99	13	1	5
1340	2019-01-22	99	13	1	5
1341	2019-01-22	99	13	1	5
1342	2019-01-22	99	13	1	5
1343	2019-01-22	\N	13	1	5
1344	2019-01-22	\N	13	1	5
1345	2019-01-22	\N	13	1	5
1346	2019-01-22	\N	13	1	5
1347	2019-01-22	\N	13	1	5
1348	2019-01-22	\N	13	1	5
1349	2019-01-22	\N	13	1	5
1350	2019-01-22	\N	13	1	5
1351	2019-01-22	\N	13	1	5
1352	2019-01-22	\N	13	1	5
1353	2019-01-22	\N	13	1	5
1354	2019-01-22	\N	13	1	5
1355	2019-01-22	\N	13	1	5
1356	2019-01-22	\N	13	1	5
1357	2019-01-22	103	13	1	5
1358	2019-01-22	103	13	1	5
1359	2019-01-22	103	13	1	5
1360	2019-01-22	103	13	1	5
1361	2019-01-22	103	13	1	5
1362	2019-01-22	103	13	1	5
1363	2019-01-22	103	13	1	5
1364	2019-01-22	103	13	1	5
1365	2019-01-22	103	13	1	5
1366	2019-01-22	101	13	1	5
1367	2019-01-22	101	13	1	5
1368	2019-01-22	101	13	1	5
1369	2019-01-22	101	13	1	5
1370	2019-01-22	101	13	1	5
1371	2019-01-22	101	13	1	5
1372	2019-01-22	101	13	1	5
1373	2019-01-22	101	13	1	5
1374	2019-01-22	101	13	1	5
1375	2019-01-22	101	13	1	5
1376	2019-01-22	101	13	1	5
278	2019-01-21	22	5	1	1
279	2019-01-21	22	5	1	1
280	2019-01-21	22	5	1	1
281	2019-01-21	22	5	1	1
1377	2019-01-22	101	13	1	5
282	2019-01-21	22	5	1	1
283	2019-01-21	22	5	1	1
284	2019-01-21	23	5	1	1
285	2019-01-21	23	5	1	1
286	2019-01-21	23	5	1	1
287	2019-01-21	23	5	1	1
288	2019-01-21	23	5	1	1
289	2019-01-21	23	5	1	1
290	2019-01-21	23	5	1	1
291	2019-01-21	23	5	1	1
292	2019-01-21	23	5	1	1
293	2019-01-21	24	5	1	1
294	2019-01-21	24	5	1	1
295	2019-01-21	24	5	1	1
296	2019-01-21	24	5	1	1
297	2019-01-21	24	5	1	1
298	2019-01-21	24	5	1	1
299	2019-01-21	24	5	1	1
300	2019-01-21	24	5	1	1
301	2019-01-21	24	5	1	1
302	2019-01-21	24	5	1	1
303	2019-01-21	24	5	1	1
304	2019-01-21	24	5	1	1
305	2019-01-21	24	5	1	1
306	2019-01-21	24	5	1	1
307	2019-01-21	24	5	1	1
308	2019-01-21	24	5	1	1
309	2019-01-21	24	5	1	1
310	2019-01-21	24	5	1	1
311	2019-01-21	24	5	1	1
312	2019-01-21	24	5	1	1
313	2019-01-21	24	5	1	1
314	2019-01-21	24	5	1	1
315	2019-01-21	24	5	1	1
316	2019-01-21	24	5	1	1
317	2019-01-21	24	5	1	1
318	2019-01-21	24	5	1	1
319	2019-01-21	24	5	1	1
320	2019-01-21	24	5	1	1
321	2019-01-21	24	5	1	1
322	2019-01-21	24	5	1	1
323	2019-01-21	24	5	1	1
324	2019-01-21	24	5	1	1
325	2019-01-21	25	5	1	1
326	2019-01-21	25	5	1	1
327	2019-01-21	25	5	1	1
328	2019-01-21	25	5	1	1
329	2019-01-21	25	5	1	1
330	2019-01-21	25	5	1	1
331	2019-01-21	25	5	1	1
332	2019-01-21	25	5	1	1
333	2019-01-21	25	5	1	1
334	2019-01-21	25	5	1	1
335	2019-01-21	25	5	1	1
336	2019-01-21	25	5	1	1
337	2019-01-21	25	5	1	1
338	2019-01-21	25	5	1	1
339	2019-01-21	25	5	1	1
340	2019-01-21	26	5	1	1
341	2019-01-21	26	5	1	1
342	2019-01-21	26	5	1	1
343	2019-01-21	26	5	1	1
344	2019-01-21	26	5	1	1
345	2019-01-21	26	5	1	1
346	2019-01-21	26	5	1	1
347	2019-01-21	26	5	1	1
348	2019-01-21	26	5	1	1
349	2019-01-21	26	5	1	1
350	2019-01-21	27	5	1	1
351	2019-01-21	27	5	1	1
352	2019-01-21	27	5	1	1
353	2019-01-21	27	5	1	1
354	2019-01-21	27	5	1	1
355	2019-01-21	27	5	1	1
356	2019-01-21	27	5	1	1
357	2019-01-21	27	5	1	1
358	2019-01-21	27	5	1	1
359	2019-01-21	27	5	1	1
360	2019-01-21	28	5	1	1
361	2019-01-21	28	5	1	1
362	2019-01-21	28	5	1	1
363	2019-01-21	28	5	1	1
364	2019-01-21	28	5	1	1
365	2019-01-21	28	5	1	1
366	2019-01-21	28	5	1	1
367	2019-01-21	28	5	1	1
368	2019-01-21	28	5	1	1
369	2019-01-21	28	5	1	1
370	2019-01-21	28	5	1	1
371	2019-01-21	29	5	1	1
372	2019-01-21	29	5	1	1
373	2019-01-21	29	5	1	1
374	2019-01-21	29	5	1	1
375	2019-01-21	29	5	1	1
376	2019-01-21	29	5	1	1
377	2019-01-21	29	5	1	1
378	2019-01-21	29	5	1	1
379	2019-01-21	29	5	1	1
380	2019-01-21	29	5	1	1
381	2019-01-21	29	5	1	1
382	2019-01-21	30	5	1	1
383	2019-01-21	30	5	1	1
384	2019-01-21	30	5	1	1
385	2019-01-21	30	5	1	1
386	2019-01-21	30	5	1	1
387	2019-01-21	30	5	1	1
388	2019-01-21	30	5	1	1
389	2019-01-21	30	5	1	1
390	2019-01-21	30	5	1	1
391	2019-01-21	30	5	1	1
392	2019-01-21	30	5	1	1
393	2019-01-21	31	5	1	1
394	2019-01-21	31	5	1	1
395	2019-01-21	31	5	1	1
396	2019-01-21	31	5	1	1
397	2019-01-21	31	5	1	1
398	2019-01-21	31	5	1	1
399	2019-01-21	31	5	1	1
400	2019-01-21	31	5	1	1
401	2019-01-21	31	5	1	1
402	2019-01-21	31	5	1	1
403	2019-01-21	31	5	1	1
404	2019-01-21	31	5	1	1
405	2019-01-21	31	5	1	1
406	2019-01-21	32	5	1	1
407	2019-01-21	32	5	1	1
408	2019-01-21	32	5	1	1
409	2019-01-21	32	5	1	1
410	2019-01-21	32	5	1	1
411	2019-01-21	32	5	1	1
412	2019-01-21	32	5	1	1
413	2019-01-21	32	5	1	1
414	2019-01-21	32	5	1	1
415	2019-01-21	32	5	1	1
416	2019-01-21	33	5	1	1
417	2019-01-21	33	5	1	1
418	2019-01-21	33	5	1	1
419	2019-01-21	33	5	1	1
420	2019-01-21	33	5	1	1
421	2019-01-21	33	5	1	1
422	2019-01-21	33	5	1	1
423	2019-01-21	33	5	1	1
424	2019-01-21	33	5	1	1
425	2019-01-21	33	5	1	1
426	2019-01-21	33	5	1	1
427	2019-01-21	33	5	1	1
428	2019-01-21	33	5	1	1
429	2019-01-21	34	6	1	1
430	2019-01-21	34	6	1	1
431	2019-01-21	34	6	1	1
432	2019-01-21	34	6	1	1
433	2019-01-21	34	6	1	1
434	2019-01-21	34	6	1	1
435	2019-01-21	34	6	1	1
436	2019-01-21	34	6	1	1
437	2019-01-21	34	6	1	1
438	2019-01-21	34	6	1	1
439	2019-01-21	34	6	1	1
440	2019-01-21	34	6	1	1
441	2019-01-21	35	6	1	1
442	2019-01-21	35	6	1	1
443	2019-01-21	35	6	1	1
444	2019-01-21	35	6	1	1
445	2019-01-21	35	6	1	1
446	2019-01-21	35	6	1	1
447	2019-01-21	35	6	1	1
448	2019-01-21	35	6	1	1
449	2019-01-21	35	6	1	1
450	2019-01-21	35	6	1	1
451	2019-01-21	35	6	1	1
452	2019-01-21	35	6	1	1
453	2019-01-21	35	6	1	1
454	2019-01-21	35	6	1	1
455	2019-01-21	35	6	1	1
456	2019-01-21	36	6	1	1
457	2019-01-21	36	6	1	1
458	2019-01-21	36	6	1	1
459	2019-01-21	36	6	1	1
460	2019-01-21	36	6	1	1
461	2019-01-21	36	6	1	1
462	2019-01-21	36	6	1	1
463	2019-01-21	36	6	1	1
464	2019-01-21	36	6	1	1
465	2019-01-21	36	6	1	1
466	2019-01-21	36	6	1	1
467	2019-01-21	36	6	1	1
468	2019-01-21	36	6	1	1
469	2019-01-21	36	6	1	1
470	2019-01-21	20	6	1	1
471	2019-01-21	20	6	1	1
472	2019-01-21	20	6	1	1
473	2019-01-21	20	6	1	1
474	2019-01-21	20	6	1	1
475	2019-01-21	39	6	1	1
476	2019-01-21	39	6	1	1
477	2019-01-21	39	6	1	1
478	2019-01-21	39	6	1	1
479	2019-01-21	39	6	1	1
480	2019-01-21	39	6	1	1
481	2019-01-21	39	6	1	1
482	2019-01-21	39	6	1	1
483	2019-01-21	39	6	1	1
484	2019-01-21	39	6	1	1
485	2019-01-21	39	6	1	1
486	2019-01-21	39	6	1	1
487	2019-01-21	40	6	1	1
488	2019-01-21	40	6	1	1
489	2019-01-21	40	6	1	1
490	2019-01-21	40	6	1	1
491	2019-01-21	40	6	1	1
492	2019-01-21	40	6	1	1
493	2019-01-21	40	6	1	1
494	2019-01-21	40	6	1	1
495	2019-01-21	40	6	1	1
496	2019-01-21	40	6	1	1
497	2019-01-21	40	6	1	1
498	2019-01-21	41	6	1	1
499	2019-01-21	41	6	1	1
500	2019-01-21	41	6	1	1
501	2019-01-21	41	6	1	1
502	2019-01-21	41	6	1	1
503	2019-01-21	41	6	1	1
504	2019-01-21	41	6	1	1
505	2019-01-21	41	6	1	1
506	2019-01-21	42	6	1	1
507	2019-01-21	42	6	1	1
508	2019-01-21	42	6	1	1
509	2019-01-21	42	6	1	1
510	2019-01-21	42	6	1	1
511	2019-01-21	42	6	1	1
512	2019-01-21	42	6	1	1
513	2019-01-21	42	6	1	1
514	2019-01-21	42	6	1	1
515	2019-01-21	43	6	1	1
516	2019-01-21	43	6	1	1
517	2019-01-21	43	6	1	1
518	2019-01-21	43	6	1	1
519	2019-01-21	43	6	1	1
520	2019-01-21	43	6	1	1
521	2019-01-21	43	6	1	1
522	2019-01-21	43	6	1	1
523	2019-01-21	43	6	1	1
524	2019-01-21	43	6	1	1
525	2019-01-21	43	6	1	1
526	2019-01-21	44	6	1	1
527	2019-01-21	44	6	1	1
528	2019-01-21	44	6	1	1
529	2019-01-21	44	6	1	1
530	2019-01-21	44	6	1	1
531	2019-01-21	44	6	1	1
532	2019-01-21	44	6	1	1
533	2019-01-21	44	6	1	1
534	2019-01-21	44	6	1	1
535	2019-01-21	44	6	1	1
536	2019-01-21	45	6	1	1
537	2019-01-21	45	6	1	1
538	2019-01-21	45	6	1	1
539	2019-01-21	45	6	1	1
540	2019-01-21	45	6	1	1
541	2019-01-21	45	6	1	1
542	2019-01-21	45	6	1	1
543	2019-01-21	45	6	1	1
544	2019-01-21	45	6	1	1
545	2019-01-21	45	6	1	1
546	2019-01-21	45	6	1	1
547	2019-01-21	45	6	1	1
548	2019-01-21	45	6	1	1
549	2019-01-21	46	6	1	1
550	2019-01-21	46	6	1	1
551	2019-01-21	46	6	1	1
552	2019-01-21	46	6	1	1
553	2019-01-21	46	6	1	1
554	2019-01-21	46	6	1	1
555	2019-01-21	46	6	1	1
556	2019-01-21	46	6	1	1
557	2019-01-21	46	6	1	1
558	2019-01-21	46	6	1	1
559	2019-01-21	46	6	1	1
560	2019-01-21	47	6	1	1
561	2019-01-21	47	6	1	1
562	2019-01-21	47	6	1	1
563	2019-01-21	47	6	1	1
564	2019-01-21	47	6	1	1
565	2019-01-21	47	6	1	1
566	2019-01-21	47	6	1	1
567	2019-01-21	47	6	1	1
568	2019-01-21	47	6	1	1
569	2019-01-21	47	6	1	1
570	2019-01-21	47	6	1	1
571	2019-01-21	47	6	1	1
572	2019-01-21	47	6	1	1
573	2019-01-21	47	6	1	1
574	2019-01-21	47	6	1	1
575	2019-01-21	48	6	1	1
576	2019-01-21	48	6	1	1
577	2019-01-21	48	6	1	1
578	2019-01-21	48	6	1	1
579	2019-01-21	48	6	1	1
580	2019-01-21	48	6	1	1
581	2019-01-21	48	6	1	1
582	2019-01-21	48	6	1	1
583	2019-01-21	48	6	1	1
584	2019-01-21	48	6	1	1
585	2019-01-21	48	6	1	1
586	2019-01-21	48	6	1	1
587	2019-01-21	48	6	1	1
588	2019-01-21	48	6	1	1
589	2019-01-21	49	7	1	1
590	2019-01-21	49	7	1	1
591	2019-01-21	49	7	1	1
592	2019-01-21	49	7	1	1
593	2019-01-21	49	7	1	1
594	2019-01-21	49	7	1	1
595	2019-01-21	49	7	1	1
596	2019-01-21	49	7	1	1
597	2019-01-21	49	7	1	1
598	2019-01-21	49	7	1	1
599	2019-01-21	49	7	1	1
600	2019-01-21	49	7	1	1
601	2019-01-21	50	7	1	1
602	2019-01-21	50	7	1	1
603	2019-01-21	50	7	1	1
604	2019-01-21	50	7	1	1
605	2019-01-21	50	7	1	1
606	2019-01-21	50	7	1	1
607	2019-01-21	50	7	1	1
608	2019-01-21	50	7	1	1
609	2019-01-21	50	7	1	1
610	2019-01-21	50	7	1	1
611	2019-01-21	50	7	1	1
612	2019-01-21	50	7	1	1
613	2019-01-21	50	7	1	1
614	2019-01-21	50	7	1	1
615	2019-01-21	50	7	1	1
616	2019-01-21	50	7	1	1
617	2019-01-21	50	7	1	1
618	2019-01-21	50	7	1	1
619	2019-01-21	50	7	1	1
620	2019-01-21	51	7	1	1
621	2019-01-21	51	7	1	1
622	2019-01-21	51	7	1	1
623	2019-01-21	51	7	1	1
624	2019-01-21	51	7	1	1
625	2019-01-21	51	7	1	1
626	2019-01-21	51	7	1	1
627	2019-01-21	51	7	1	1
628	2019-01-21	51	7	1	1
629	2019-01-21	51	7	1	1
630	2019-01-21	51	7	1	1
631	2019-01-21	51	7	1	1
632	2019-01-21	51	7	1	1
633	2019-01-21	51	7	1	1
634	2019-01-21	51	7	1	1
635	2019-01-21	51	7	1	1
636	2019-01-21	51	7	1	1
637	2019-01-21	51	7	1	1
638	2019-01-21	51	7	1	1
639	2019-01-21	51	7	1	1
640	2019-01-21	51	7	1	1
641	2019-01-21	52	8	1	1
642	2019-01-21	52	8	1	1
643	2019-01-21	52	8	1	1
644	2019-01-21	52	8	1	1
645	2019-01-21	52	8	1	1
646	2019-01-21	52	8	1	1
647	2019-01-21	52	8	1	1
648	2019-01-21	52	8	1	1
649	2019-01-21	52	8	1	1
650	2019-01-21	52	8	1	1
651	2019-01-21	52	8	1	1
652	2019-01-21	52	8	1	1
653	2019-01-21	52	8	1	1
654	2019-01-21	52	8	1	1
655	2019-01-21	53	8	1	1
656	2019-01-21	53	8	1	1
657	2019-01-21	53	8	1	1
658	2019-01-21	53	8	1	1
659	2019-01-21	53	8	1	1
660	2019-01-21	53	8	1	1
661	2019-01-21	53	8	1	1
662	2019-01-21	46	8	1	1
663	2019-01-21	46	8	1	1
664	2019-01-21	46	8	1	1
665	2019-01-21	46	8	1	1
666	2019-01-21	46	8	1	1
667	2019-01-21	46	8	1	1
668	2019-01-21	46	8	1	1
669	2019-01-21	46	8	1	1
670	2019-01-21	46	8	1	1
671	2019-01-21	46	8	1	1
672	2019-01-21	46	8	1	1
673	2019-01-21	46	8	1	1
674	2019-01-21	46	8	1	1
675	2019-01-21	46	8	1	1
676	2019-01-21	46	8	1	1
677	2019-01-21	46	8	1	1
678	2019-01-21	46	8	1	1
679	2019-01-21	55	8	1	1
680	2019-01-21	55	8	1	1
681	2019-01-21	55	8	1	1
682	2019-01-21	55	8	1	1
683	2019-01-21	55	8	1	1
684	2019-01-21	55	8	1	1
685	2019-01-21	55	8	1	1
686	2019-01-21	55	8	1	1
687	2019-01-21	55	8	1	1
688	2019-01-21	55	8	1	1
689	2019-01-21	55	8	1	1
690	2019-01-21	55	8	1	1
691	2019-01-21	55	8	1	1
692	2019-01-21	55	8	1	1
693	2019-01-21	55	8	1	1
694	2019-01-21	55	8	1	1
695	2019-01-21	55	8	1	1
696	2019-01-21	55	8	1	1
697	2019-01-21	55	8	1	1
698	2019-01-21	56	8	1	1
699	2019-01-21	56	8	1	1
700	2019-01-21	56	8	1	1
701	2019-01-21	56	8	1	1
702	2019-01-21	56	8	1	1
703	2019-01-21	56	8	1	1
704	2019-01-21	56	8	1	1
705	2019-01-21	56	8	1	1
706	2019-01-21	56	8	1	1
707	2019-01-21	35	9	1	1
708	2019-01-21	35	9	1	1
709	2019-01-21	35	9	1	1
710	2019-01-21	35	9	1	1
711	2019-01-21	35	9	1	1
712	2019-01-21	35	9	1	1
713	2019-01-21	35	9	1	1
714	2019-01-21	35	9	1	1
715	2019-01-21	35	9	1	1
716	2019-01-21	35	9	1	1
717	2019-01-21	35	9	1	1
738	2019-01-21	39	9	1	1
739	2019-01-21	39	9	1	1
740	2019-01-21	39	9	1	1
741	2019-01-21	39	9	1	1
742	2019-01-21	39	9	1	1
743	2019-01-21	39	9	1	1
744	2019-01-21	39	9	1	1
745	2019-01-21	39	9	1	1
746	2019-01-21	39	9	1	1
747	2019-01-21	39	9	1	1
748	2019-01-21	2	9	1	1
749	2019-01-21	2	9	1	1
750	2019-01-21	2	9	1	1
751	2019-01-21	2	9	1	1
752	2019-01-21	2	9	1	1
753	2019-01-21	2	9	1	1
754	2019-01-21	2	9	1	1
755	2019-01-21	2	9	1	1
756	2019-01-21	61	9	1	1
757	2019-01-21	61	9	1	1
758	2019-01-21	61	9	1	1
759	2019-01-21	61	9	1	1
760	2019-01-21	61	9	1	1
761	2019-01-21	61	9	1	1
762	2019-01-21	61	9	1	1
763	2019-01-21	61	9	1	1
764	2019-01-21	61	9	1	1
765	2019-01-21	61	9	1	1
766	2019-01-21	61	9	1	1
767	2019-01-21	61	9	1	1
768	2019-01-21	61	9	1	1
769	2019-01-21	62	9	1	1
770	2019-01-21	62	9	1	1
771	2019-01-21	62	9	1	1
772	2019-01-21	62	9	1	1
773	2019-01-21	62	9	1	1
774	2019-01-21	62	9	1	1
775	2019-01-21	62	9	1	1
776	2019-01-21	62	9	1	1
777	2019-01-21	62	9	1	1
778	2019-01-21	62	9	1	1
779	2019-01-21	62	9	1	1
780	2019-01-21	62	9	1	1
781	2019-01-21	62	9	1	1
782	2019-01-21	62	9	1	1
783	2019-01-21	62	9	1	1
784	2019-01-21	63	9	1	1
785	2019-01-21	63	9	1	1
786	2019-01-21	63	9	1	1
787	2019-01-21	63	9	1	1
788	2019-01-21	63	9	1	1
789	2019-01-21	63	9	1	1
790	2019-01-21	63	9	1	1
791	2019-01-21	63	9	1	1
792	2019-01-21	63	9	1	1
793	2019-01-21	63	9	1	1
794	2019-01-21	63	9	1	1
795	2019-01-21	63	9	1	1
796	2019-01-21	64	9	1	1
797	2019-01-21	64	9	1	1
798	2019-01-21	64	9	1	1
799	2019-01-21	64	9	1	1
800	2019-01-21	64	9	1	1
801	2019-01-21	64	9	1	1
802	2019-01-21	64	9	1	1
803	2019-01-21	64	9	1	1
804	2019-01-21	64	9	1	1
805	2019-01-21	64	9	1	1
806	2019-01-21	64	9	1	1
807	2019-01-21	64	9	1	1
808	2019-01-21	64	9	1	1
809	2019-01-21	64	9	1	1
810	2019-01-21	64	9	1	1
811	2019-01-21	64	9	1	1
812	2019-01-21	64	9	1	1
813	2019-01-21	64	9	1	1
814	2019-01-21	64	9	1	1
815	2019-01-21	64	9	1	1
816	2019-01-21	64	9	1	1
817	2019-01-21	65	10	1	2
818	2019-01-21	65	10	1	2
819	2019-01-21	65	10	1	2
820	2019-01-21	65	10	1	2
821	2019-01-21	65	10	1	2
822	2019-01-21	65	10	1	2
823	2019-01-21	65	10	1	2
824	2019-01-21	65	10	1	2
825	2019-01-21	65	10	1	2
826	2019-01-21	65	10	1	2
827	2019-01-21	65	10	1	2
828	2019-01-21	65	10	1	2
829	2019-01-21	65	10	1	2
830	2019-01-21	65	10	1	2
831	2019-01-21	66	10	1	2
832	2019-01-21	66	10	1	2
833	2019-01-21	66	10	1	2
834	2019-01-21	66	10	1	2
835	2019-01-21	66	10	1	2
836	2019-01-21	66	10	1	2
837	2019-01-21	66	10	1	2
838	2019-01-21	66	10	1	2
839	2019-01-21	66	10	1	2
840	2019-01-21	66	10	1	2
841	2019-01-21	66	10	1	2
842	2019-01-21	66	10	1	2
843	2019-01-21	66	10	1	2
844	2019-01-21	69	10	1	2
845	2019-01-21	69	10	1	2
729	2019-01-21	59	9	1	1
730	2019-01-21	59	9	1	1
731	2019-01-21	59	9	1	1
732	2019-01-21	59	9	1	1
733	2019-01-21	59	9	1	1
734	2019-01-21	59	9	1	1
735	2019-01-21	59	9	1	1
736	2019-01-21	59	9	1	1
737	2019-01-21	59	9	1	1
846	2019-01-21	69	10	1	2
847	2019-01-21	69	10	1	2
848	2019-01-21	69	10	1	2
849	2019-01-21	69	10	1	2
850	2019-01-21	69	10	1	2
851	2019-01-21	69	10	1	2
852	2019-01-21	70	10	1	2
853	2019-01-21	70	10	1	2
854	2019-01-21	70	10	1	2
855	2019-01-21	70	10	1	2
856	2019-01-21	70	10	1	2
857	2019-01-21	70	10	1	2
858	2019-01-21	70	10	1	2
859	2019-01-21	70	10	1	2
860	2019-01-21	71	10	1	2
861	2019-01-21	71	10	1	2
862	2019-01-21	71	10	1	2
863	2019-01-21	71	10	1	2
864	2019-01-21	71	10	1	2
865	2019-01-21	71	10	1	2
866	2019-01-21	71	10	1	2
867	2019-01-21	71	10	1	2
868	2019-01-21	71	10	1	2
869	2019-01-21	71	10	1	2
870	2019-01-21	71	10	1	2
871	2019-01-21	71	10	1	2
872	2019-01-21	71	10	1	2
873	2019-01-21	71	10	1	2
874	2019-01-21	72	10	1	2
875	2019-01-21	72	10	1	2
876	2019-01-21	72	10	1	2
877	2019-01-21	72	10	1	2
878	2019-01-21	72	10	1	2
879	2019-01-21	72	10	1	2
880	2019-01-21	72	10	1	2
881	2019-01-21	72	10	1	2
882	2019-01-21	72	10	1	2
883	2019-01-21	72	10	1	2
884	2019-01-21	72	10	1	2
885	2019-01-21	72	10	1	2
886	2019-01-21	72	10	1	2
887	2019-01-21	72	10	1	2
888	2019-01-21	72	10	1	2
889	2019-01-21	72	10	1	2
890	2019-01-21	72	10	1	2
891	2019-01-21	72	10	1	2
892	2019-01-21	72	10	1	2
893	2019-01-21	72	10	1	2
894	2019-01-21	72	10	1	2
895	2019-01-21	68	10	1	2
896	2019-01-21	68	10	1	2
897	2019-01-21	68	10	1	2
898	2019-01-21	68	10	1	2
899	2019-01-21	68	10	1	2
900	2019-01-21	68	10	1	2
901	2019-01-21	68	10	1	2
902	2019-01-21	68	10	1	2
903	2019-01-21	68	10	1	2
904	2019-01-21	68	10	1	2
905	2019-01-21	68	10	1	2
906	2019-01-21	68	10	1	2
907	2019-01-21	68	10	1	2
908	2019-01-21	68	10	1	2
909	2019-01-21	68	10	1	2
910	2019-01-21	68	10	1	2
911	2019-01-21	68	10	1	2
912	2019-01-21	68	10	1	2
913	2019-01-21	68	10	1	2
914	2019-01-21	68	10	1	2
915	2019-01-21	68	10	1	2
916	2019-01-21	68	10	1	2
917	2019-01-21	68	10	1	2
918	2019-01-21	68	10	1	2
919	2019-01-21	68	10	1	2
920	2019-01-21	68	10	1	2
921	2019-01-21	68	10	1	2
922	2019-01-21	68	10	1	2
923	2019-01-21	68	10	1	2
924	2019-01-21	68	10	1	2
925	2019-01-21	68	10	1	2
926	2019-01-21	68	10	1	2
927	2019-01-21	74	10	1	2
928	2019-01-21	74	10	1	2
929	2019-01-21	74	10	1	2
930	2019-01-21	74	10	1	2
931	2019-01-21	74	10	1	2
932	2019-01-21	74	10	1	2
933	2019-01-21	74	10	1	2
934	2019-01-21	74	10	1	2
935	2019-01-21	74	10	1	2
936	2019-01-21	74	10	1	2
937	2019-01-21	74	10	1	2
938	2019-01-21	74	10	1	2
939	2019-01-21	74	10	1	2
940	2019-01-21	74	10	1	2
941	2019-01-21	74	10	1	2
942	2019-01-21	74	10	1	2
943	2019-01-21	74	10	1	2
944	2019-01-21	74	10	1	2
945	2019-01-21	74	10	1	2
946	2019-01-21	74	10	1	2
947	2019-01-21	74	10	1	2
948	2019-01-21	74	10	1	2
949	2019-01-21	74	10	1	2
950	2019-01-21	74	10	1	2
951	2019-01-21	74	10	1	2
952	2019-01-21	74	10	1	2
953	2019-01-21	74	10	1	2
954	2019-01-21	74	10	1	2
955	2019-01-21	74	10	1	2
956	2019-01-21	74	10	1	2
957	2019-01-21	74	10	1	2
958	2019-01-21	74	10	1	2
959	2019-01-21	75	10	1	2
960	2019-01-21	75	10	1	2
961	2019-01-21	75	10	1	2
962	2019-01-21	75	10	1	2
963	2019-01-21	75	10	1	2
964	2019-01-21	75	10	1	2
965	2019-01-21	75	10	1	2
966	2019-01-21	75	10	1	2
967	2019-01-21	75	10	1	2
968	2019-01-21	75	10	1	2
969	2019-01-21	75	10	1	2
970	2019-01-21	75	10	1	2
971	2019-01-21	75	10	1	2
972	2019-01-21	75	10	1	2
973	2019-01-21	75	10	1	2
974	2019-01-21	75	10	1	2
975	2019-01-21	75	10	1	2
976	2019-01-21	75	10	1	2
977	2019-01-21	75	10	1	2
978	2019-01-21	75	10	1	2
979	2019-01-21	69	11	1	3
980	2019-01-21	69	11	1	3
981	2019-01-21	69	11	1	3
982	2019-01-21	69	11	1	3
983	2019-01-21	69	11	1	3
984	2019-01-21	69	11	1	3
985	2019-01-21	69	11	1	3
986	2019-01-21	69	11	1	3
987	2019-01-21	69	11	1	3
988	2019-01-21	69	11	1	3
989	2019-01-21	69	11	1	3
990	2019-01-21	69	11	1	3
991	2019-01-21	69	11	1	3
992	2019-01-21	69	11	1	3
993	2019-01-21	69	11	1	3
994	2019-01-21	69	11	1	3
995	2019-01-21	70	11	1	3
996	2019-01-21	70	11	1	3
997	2019-01-21	70	11	1	3
998	2019-01-21	70	11	1	3
999	2019-01-21	70	11	1	3
1000	2019-01-21	70	11	1	3
1001	2019-01-21	70	11	1	3
1002	2019-01-21	70	11	1	3
1003	2019-01-21	70	11	1	3
1004	2019-01-21	70	11	1	3
1005	2019-01-21	70	11	1	3
1006	2019-01-21	70	11	1	3
1007	2019-01-21	71	11	1	3
1008	2019-01-21	71	11	1	3
1009	2019-01-21	71	11	1	3
1010	2019-01-21	71	11	1	3
1011	2019-01-21	71	11	1	3
1012	2019-01-21	71	11	1	3
1013	2019-01-21	71	11	1	3
1014	2019-01-21	71	11	1	3
1015	2019-01-21	71	11	1	3
1016	2019-01-21	71	11	1	3
1017	2019-01-21	71	11	1	3
1018	2019-01-21	71	11	1	3
1019	2019-01-21	71	11	1	3
1020	2019-01-21	71	11	1	3
1021	2019-01-21	71	11	1	3
1022	2019-01-21	71	11	1	3
1023	2019-01-21	71	11	1	3
1024	2019-01-21	72	11	1	3
1025	2019-01-21	72	11	1	3
1026	2019-01-21	72	11	1	3
1027	2019-01-21	72	11	1	3
1028	2019-01-21	72	11	1	3
1029	2019-01-21	72	11	1	3
1030	2019-01-21	72	11	1	3
1031	2019-01-21	72	11	1	3
1032	2019-01-21	72	11	1	3
1033	2019-01-21	72	11	1	3
1034	2019-01-21	72	11	1	3
1035	2019-01-21	72	11	1	3
1036	2019-01-21	72	11	1	3
1037	2019-01-21	72	11	1	3
1038	2019-01-21	72	11	1	3
1039	2019-01-21	72	11	1	3
1040	2019-01-21	72	11	1	3
1041	2019-01-21	74	11	1	3
1042	2019-01-21	74	11	1	3
1043	2019-01-21	74	11	1	3
1044	2019-01-21	74	11	1	3
1045	2019-01-21	74	11	1	3
1046	2019-01-21	74	11	1	3
1047	2019-01-21	74	11	1	3
1048	2019-01-21	74	11	1	3
1049	2019-01-21	74	11	1	3
1050	2019-01-21	74	11	1	3
1051	2019-01-21	74	11	1	3
1052	2019-01-21	74	11	1	3
1053	2019-01-21	74	11	1	3
1054	2019-01-21	74	11	1	3
1055	2019-01-21	74	11	1	3
1056	2019-01-21	74	11	1	3
1057	2019-01-21	74	11	1	3
1058	2019-01-21	74	11	1	3
1059	2019-01-21	74	11	1	3
1060	2019-01-21	74	11	1	3
1061	2019-01-21	74	11	1	3
1062	2019-01-21	74	11	1	3
1063	2019-01-21	74	11	1	3
1064	2019-01-21	74	11	1	3
1065	2019-01-21	74	11	1	3
1066	2019-01-21	74	11	1	3
1067	2019-01-21	74	11	1	3
1068	2019-01-21	74	11	1	3
1069	2019-01-21	74	11	1	3
1070	2019-01-21	74	11	1	3
1071	2019-01-21	74	11	1	3
1072	2019-01-21	75	11	1	3
1073	2019-01-21	75	11	1	3
1074	2019-01-21	75	11	1	3
1075	2019-01-21	75	11	1	3
1076	2019-01-21	75	11	1	3
1077	2019-01-21	75	11	1	3
1078	2019-01-21	75	11	1	3
1079	2019-01-21	75	11	1	3
1080	2019-01-21	75	11	1	3
1081	2019-01-21	75	11	1	3
1082	2019-01-21	75	11	1	3
1083	2019-01-21	75	11	1	3
1084	2019-01-21	75	11	1	3
1085	2019-01-21	75	11	1	3
1086	2019-01-21	75	11	1	3
1087	2019-01-21	75	11	1	3
1088	2019-01-21	75	11	1	3
1089	2019-01-21	75	11	1	3
1090	2019-01-21	76	11	1	3
1091	2019-01-21	76	11	1	3
1092	2019-01-21	76	11	1	3
1093	2019-01-21	76	11	1	3
1094	2019-01-21	76	11	1	3
1095	2019-01-21	76	11	1	3
1096	2019-01-21	76	11	1	3
1097	2019-01-21	76	11	1	3
1098	2019-01-21	76	11	1	3
1099	2019-01-21	76	11	1	3
1100	2019-01-21	76	11	1	3
1101	2019-01-21	76	11	1	3
1102	2019-01-21	76	11	1	3
1103	2019-01-21	76	11	1	3
1104	2019-01-21	76	11	1	3
1105	2019-01-21	76	11	1	3
1106	2019-01-21	76	11	1	3
1107	2019-01-21	77	11	1	3
1108	2019-01-21	77	11	1	3
1109	2019-01-21	77	11	1	3
1110	2019-01-21	77	11	1	3
1111	2019-01-21	77	11	1	3
1112	2019-01-21	77	11	1	3
1113	2019-01-21	77	11	1	3
1114	2019-01-21	77	11	1	3
1115	2019-01-21	77	11	1	3
1116	2019-01-21	77	11	1	3
1117	2019-01-21	77	11	1	3
1118	2019-01-21	77	11	1	3
1119	2019-01-21	77	11	1	3
1120	2019-01-21	77	11	1	3
1121	2019-01-21	77	11	1	3
1122	2019-01-21	77	11	1	3
1123	2019-01-21	78	12	1	4
1124	2019-01-21	78	12	1	4
1125	2019-01-21	78	12	1	4
1126	2019-01-21	78	12	1	4
1127	2019-01-21	78	12	1	4
1128	2019-01-21	78	12	1	4
1129	2019-01-21	78	12	1	4
1130	2019-01-21	78	12	1	4
1131	2019-01-21	78	12	1	4
1132	2019-01-21	78	12	1	4
1133	2019-01-21	78	12	1	4
1134	2019-01-21	79	12	1	4
1135	2019-01-21	79	12	1	4
1136	2019-01-21	79	12	1	4
1137	2019-01-21	79	12	1	4
1138	2019-01-21	79	12	1	4
1139	2019-01-21	79	12	1	4
1140	2019-01-21	79	12	1	4
1141	2019-01-21	79	12	1	4
1142	2019-01-21	79	12	1	4
1143	2019-01-21	79	12	1	4
1144	2019-01-21	79	12	1	4
1145	2019-01-21	79	12	1	4
1146	2019-01-21	79	12	1	4
1147	2019-01-21	80	12	1	4
1148	2019-01-21	80	12	1	4
1149	2019-01-21	80	12	1	4
1150	2019-01-21	80	12	1	4
1151	2019-01-21	80	12	1	4
1152	2019-01-21	80	12	1	4
1153	2019-01-21	80	12	1	4
1154	2019-01-21	80	12	1	4
1155	2019-01-21	80	12	1	4
1156	2019-01-21	80	12	1	4
1157	2019-01-21	80	12	1	4
1158	2019-01-21	80	12	1	4
1159	2019-01-21	81	12	1	4
1160	2019-01-21	81	12	1	4
1161	2019-01-21	81	12	1	4
1162	2019-01-21	81	12	1	4
1163	2019-01-21	81	12	1	4
1164	2019-01-21	81	12	1	4
1165	2019-01-21	81	12	1	4
1166	2019-01-21	81	12	1	4
1167	2019-01-21	81	12	1	4
1168	2019-01-21	81	12	1	4
1169	2019-01-21	82	12	1	4
1170	2019-01-21	82	12	1	4
1171	2019-01-21	82	12	1	4
1172	2019-01-21	82	12	1	4
1173	2019-01-21	82	12	1	4
1174	2019-01-21	82	12	1	4
1175	2019-01-21	82	12	1	4
1176	2019-01-21	82	12	1	4
1177	2019-01-21	82	12	1	4
1178	2019-01-21	82	12	1	4
1179	2019-01-21	82	12	1	4
1180	2019-01-21	82	12	1	4
1181	2019-01-21	82	12	1	4
1182	2019-01-21	82	12	1	4
1183	2019-01-21	82	12	1	4
1184	2019-01-21	82	12	1	4
1185	2019-01-21	82	12	1	4
1186	2019-01-21	83	12	1	4
1187	2019-01-21	83	12	1	4
1188	2019-01-21	83	12	1	4
1189	2019-01-21	83	12	1	4
1190	2019-01-21	83	12	1	4
1191	2019-01-21	84	12	1	4
1192	2019-01-21	84	12	1	4
1193	2019-01-21	84	12	1	4
1194	2019-01-21	84	12	1	4
1195	2019-01-21	84	12	1	4
1196	2019-01-21	84	12	1	4
1197	2019-01-21	84	12	1	4
1198	2019-01-21	84	12	1	4
1199	2019-01-21	84	12	1	4
1200	2019-01-21	84	12	1	4
1201	2019-01-21	84	12	1	4
1202	2019-01-21	84	12	1	4
1203	2019-01-21	84	12	1	4
1204	2019-01-21	84	12	1	4
1205	2019-01-21	84	12	1	4
1206	2019-01-21	85	12	1	4
1207	2019-01-21	85	12	1	4
1465	2019-01-22	106	13	1	5
1466	2019-01-22	106	13	1	5
1467	2019-01-22	105	13	1	5
1468	2019-01-22	105	13	1	5
1469	2019-01-22	105	13	1	5
1208	2019-01-21	85	12	1	4
1209	2019-01-21	85	12	1	4
1210	2019-01-21	85	12	1	4
1211	2019-01-21	85	12	1	4
1212	2019-01-21	85	12	1	4
1213	2019-01-21	85	12	1	4
1214	2019-01-21	87	12	1	4
1215	2019-01-21	87	12	1	4
1216	2019-01-21	87	12	1	4
1217	2019-01-21	87	12	1	4
1218	2019-01-21	87	12	1	4
1219	2019-01-21	87	12	1	4
1220	2019-01-21	87	12	1	4
1221	2019-01-21	87	12	1	4
1222	2019-01-21	87	12	1	4
1223	2019-01-21	87	12	1	4
1224	2019-01-21	87	12	1	4
1225	2019-01-21	87	12	1	4
1407	2019-01-22	\N	13	1	5
1408	2019-01-22	\N	13	1	5
1409	2019-01-22	\N	13	1	5
1410	2019-01-22	\N	13	1	5
1411	2019-01-22	\N	13	1	5
1412	2019-01-22	\N	13	1	5
1413	2019-01-22	\N	13	1	5
1414	2019-01-22	\N	13	1	5
1415	2019-01-22	\N	13	1	5
1416	2019-01-22	104	13	1	5
1417	2019-01-22	104	13	1	5
1418	2019-01-22	104	13	1	5
1419	2019-01-22	104	13	1	5
1420	2019-01-22	104	13	1	5
1421	2019-01-22	104	13	1	5
1422	2019-01-22	104	13	1	5
1423	2019-01-22	104	13	1	5
1424	2019-01-22	104	13	1	5
1425	2019-01-22	104	13	1	5
1426	2019-01-22	104	13	1	5
1427	2019-01-22	104	13	1	5
1428	2019-01-22	104	13	1	5
1429	2019-01-22	104	13	1	5
1430	2019-01-22	104	13	1	5
1431	2019-01-22	104	13	1	5
1432	2019-01-22	104	13	1	5
1433	2019-01-22	104	13	1	5
1434	2019-01-22	104	13	1	5
1435	2019-01-22	104	13	1	5
1436	2019-01-22	104	13	1	5
1437	2019-01-22	109	13	1	5
1438	2019-01-22	109	13	1	5
1439	2019-01-22	109	13	1	5
1440	2019-01-22	109	13	1	5
1441	2019-01-22	109	13	1	5
1442	2019-01-22	109	13	1	5
1443	2019-01-22	109	13	1	5
1444	2019-01-22	109	13	1	5
1445	2019-01-22	109	13	1	5
1446	2019-01-22	109	13	1	5
1447	2019-01-22	108	13	1	5
1448	2019-01-22	108	13	1	5
1449	2019-01-22	108	13	1	5
1450	2019-01-22	108	13	1	5
1451	2019-01-22	108	13	1	5
1452	2019-01-22	108	13	1	5
1453	2019-01-22	108	13	1	5
1454	2019-01-22	108	13	1	5
1455	2019-01-22	108	13	1	5
1456	2019-01-22	108	13	1	5
1457	2019-01-22	108	13	1	5
1458	2019-01-22	108	13	1	5
1459	2019-01-22	108	13	1	5
1460	2019-01-22	106	13	1	5
1461	2019-01-22	106	13	1	5
1462	2019-01-22	106	13	1	5
1463	2019-01-22	106	13	1	5
1464	2019-01-22	106	13	1	5
\.


--
-- TOC entry 3382 (class 0 OID 16622)
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
-- TOC entry 3384 (class 0 OID 16629)
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
-- TOC entry 3374 (class 0 OID 16576)
-- Dependencies: 221
-- Data for Name: users_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, user_type) FROM stdin;
1329	pbkdf2_sha256$20000$jehlK9g9AhWW$GQ3VbIUVbRvMOFggoBKRoMkRD2/Bi1VI1rHp1pNxTig=	\N	f	emaza29	Emilio	Maza Perez	demo@demo.com	f	t	2019-01-22 21:11:48.278731+00	5
915	pbkdf2_sha256$20000$upKSUJH9FoyS$ijfUsXti5m12C4GifBNvPSsKcocNNMAM6lPVjwf/lHk=	\N	f	915fernandoortiz 	Fernando	Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:52.748082+00	5
916	pbkdf2_sha256$20000$VyeP56HkYuNM$c3JMyAyPOYu1kayl51vqWjtsEpB8MuqhugHDfx/MsyU=	\N	f	916evanrobles 	Evan	Robles 	demo@demo.com	f	t	2019-01-21 03:08:52.774982+00	5
917	pbkdf2_sha256$20000$gvZ9TxD1YVep$D7KzLwW/LLf35DuiqIxllx531zMZkhkWNBjPbhEL0ZY=	\N	f	917ernestodavidmedin	Ernesto David	Medina	demo@demo.com	f	t	2019-01-21 03:08:52.798656+00	5
918	pbkdf2_sha256$20000$D0135A7HUvYQ$w4di9363zB6eM5oGW4RhcFiVvSG+e4Qz32hiLuCDh4g=	\N	f	918emilianogenarogom	Emiliano Genaro	Gomez Muñiz	demo@demo.com	f	t	2019-01-21 03:08:52.825111+00	5
919	pbkdf2_sha256$20000$uoUDJ3CpFoaX$V992OyCz4+mQGJtUvfgzA05ddomsyH/pks7temZl0qo=	\N	f	919diegoorozco 	Diego	Orozco 	demo@demo.com	f	t	2019-01-21 03:08:52.849288+00	5
920	pbkdf2_sha256$20000$QChpLJK6Pn0w$pKyLR4ZKsgExjAOHYKgEe0VamJ4DL7NNKEiIjDvF4e0=	\N	f	920danielbecerril 	Daniel	Becerril 	demo@demo.com	f	t	2019-01-21 03:08:52.8734+00	5
921	pbkdf2_sha256$20000$aCIzKNXCgxNv$v/XvT0hCCeDevcVvh00f9NO3oymQzIzOiNJ5YeqZstQ=	\N	f	921cristiangaelarmen	Cristian Gael	Armenta	demo@demo.com	f	t	2019-01-21 03:08:52.898006+00	5
914	pbkdf2_sha256$20000$jDfYQbSLpuCq$SlIZKw38f66iUkzMQin0X+LGuWS+ZYehbQ/G8bY33Rc=	\N	f	914gabrieluribe 	Gabo	Uribe 	demo@demo.com	f	t	2019-01-21 03:08:52.720784+00	5
922	pbkdf2_sha256$20000$IG54Um75pniz$mfwes+Sh4ruAoAYC1XEwjK8WjVMB/Jy66JN+XN3TzT0=	\N	f	922brunopacheco 	Bruno	Pacheco 	demo@demo.com	f	t	2019-01-21 03:08:52.921717+00	5
923	pbkdf2_sha256$20000$VhwfzrRFZQip$PINFJxrigp+iAOPpzdvziYhohVlu5ZZqRD2NrjuyKYo=	\N	f	923aryasingh 	Arya	Singh 	demo@demo.com	f	t	2019-01-21 03:08:52.946544+00	5
924	pbkdf2_sha256$20000$HH7TCa1v0DgP$DWVolyctBzHRoMbmVihz4ueT6X3FJbQ7MS0RVQvgrwA=	\N	f	924arturodueñasdueña	Arturo	Dueñas Dueñas	demo@demo.com	f	t	2019-01-21 03:08:52.970409+00	5
925	pbkdf2_sha256$20000$bRDV6Ktuo5EK$3WVhgslvH5osfmpQTxkj5yfFqnS6C0Ns8TIc5OfF1jE=	\N	f	925arturoaguillon 	Arturo	Aguillon 	demo@demo.com	f	t	2019-01-21 03:08:52.994775+00	5
926	pbkdf2_sha256$20000$wFLjG2WXkEKI$oKtYbGO51dZ7CDQVGmgYJTrKsYN2D0txeVBUGIK55zo=	\N	f	926alejandrodiaz	Alejandro	Diaz	demo@demo.com	f	t	2019-01-21 03:08:53.018638+00	5
927	pbkdf2_sha256$20000$V8LSqXWTinFF$Mcvcl/VHh13aivrZd60rAWaHfT98W6KIGkFQFIBa2Oc=	\N	f	927valeriavillamizar	Valeria	Villamizar 	demo@demo.com	f	t	2019-01-21 03:08:53.043068+00	5
928	pbkdf2_sha256$20000$XceyxNQu5DHs$KN7awGCUndeAh3dr9XHZGfJt1OB3uzIlA5BdtLF1TxU=	\N	f	928santiagozaragoza 	Santiago	Zaragoza 	demo@demo.com	f	t	2019-01-21 03:08:53.06757+00	5
929	pbkdf2_sha256$20000$DLJppbANL5jJ$lhhkEZxacoNvGvPyK2EiC5wTrpPvqUQ4PCw6MJj8Fbs=	\N	f	929santiagoolmedo 	Santiago	Olmedo 	demo@demo.com	f	t	2019-01-21 03:08:53.092139+00	5
930	pbkdf2_sha256$20000$w76wPHxYj47s$WOXZDWff7ewp1QKimwzXT0tFgN5PZXsrNUBVHvK9aN8=	\N	f	930saidcasab 	Said	Casab 	demo@demo.com	f	t	2019-01-21 03:08:53.116926+00	5
931	pbkdf2_sha256$20000$pWNznGolR7cp$UXNh0ew0cSIB8qt33+llv1Z72J6hxSVY9GYjDSNylUc=	\N	f	931rodrigobaez 	Rodrigo	Baez 	demo@demo.com	f	t	2019-01-21 03:08:53.144642+00	5
932	pbkdf2_sha256$20000$24NOE60vMkmn$AGicxNOEnIhH9ndSfWPXzYWcZo6CAAIux55Mdf+BEKc=	\N	f	932patricioramirez 	Patricio	Ramirez 	demo@demo.com	f	t	2019-01-21 03:08:53.172647+00	5
933	pbkdf2_sha256$20000$VUPNwyGfLQsF$4N5PJyx6kX4LZ/0aS8KXZZGsoggPSNEPJNrH/gX1u+I=	\N	f	933nicolasvillareal 	Nicolas	Villareal 	demo@demo.com	f	t	2019-01-21 03:08:53.209991+00	5
934	pbkdf2_sha256$20000$bXGtKcgPQJrb$urg5msJs1u4Wg+II0PiAHjMEEzWfNsV6e+B9Ys3+UW4=	\N	f	934nicolasvarela 	Nicolas	Varela 	demo@demo.com	f	t	2019-01-21 03:08:53.236772+00	5
935	pbkdf2_sha256$20000$2sM4WtmqbeZu$XO9XwnekBQvsw5mgAr3djSl2g4Xd2BdzwpeG62Krulw=	\N	f	935matiasvazquezmaya	Matias	Vazquez Maya	demo@demo.com	f	t	2019-01-21 03:08:53.263767+00	5
936	pbkdf2_sha256$20000$MMGg9Xa8TSAD$ZX0q8Q6L6O850fZSz+vwW7m/n/j1yQP3gPYszS/u3PQ=	\N	f	936martinjurado 	Martin	Jurado 	demo@demo.com	f	t	2019-01-21 03:08:53.289097+00	5
937	pbkdf2_sha256$20000$NGwXbJoO1jpQ$xAW+8XrrmMexMHXis+DHjMJXOyEWSZdcvJ7UuJCXSFI=	\N	f	937lucianoromero 	Luciano	Romero 	demo@demo.com	f	t	2019-01-21 03:08:53.315197+00	5
938	pbkdf2_sha256$20000$IYnFF8zl4JyD$73nvV0Sw+kz9hC13WuNXSSySTbWPPMjsryB/m9muswM=	\N	f	938leonsanchez 	Leon	Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:53.340922+00	5
939	pbkdf2_sha256$20000$gNzaggInc6x0$GdquKLCH6H+fuDnztwfHR1hmvbm2LMA0EkNraYb2LOQ=	\N	f	939juanpabloflores	Juan Pablo	Flores	demo@demo.com	f	t	2019-01-21 03:08:53.36669+00	5
940	pbkdf2_sha256$20000$PcqBEePGiwlw$P0/xthaYfdHi3XDpkkHFW115Yig9I8uGK7pdZxKOC94=	\N	f	940juancarlosmartine	Juan Carlos	Martinez	demo@demo.com	f	t	2019-01-21 03:08:53.39346+00	5
941	pbkdf2_sha256$20000$C0bLrVthBnKL$D66Q8sJElM0LziK8WNHsUwQO+etsxrVeVnRWlXEBxow=	\N	f	941josepabloochoa	Jose Pablo	Ochoa	demo@demo.com	f	t	2019-01-21 03:08:53.420616+00	5
942	pbkdf2_sha256$20000$KjxWEWxDObU1$R63pCwdnScSL88UUIsH4dzycu5j9+8hP7tSW82CPmwU=	\N	f	942jorgeemilianogarc	Jorge Emiliano	Garcia	demo@demo.com	f	t	2019-01-21 03:08:53.446996+00	5
943	pbkdf2_sha256$20000$QLafbTJRBtg5$YTg4MOb58v4p1w2zTNaTyClVFXyFEGjTlstihkvQfrw=	\N	f	943ikerhidalgo 	Iker	Hidalgo 	demo@demo.com	f	t	2019-01-21 03:08:53.47289+00	5
944	pbkdf2_sha256$20000$mayMZXBUzGNW$w12UVTKLVGGQfjvbdB/QBIDuNOnYWIG9fKA1LzJsTPM=	\N	f	944ikercastro 	Iker	Castro 	demo@demo.com	f	t	2019-01-21 03:08:53.498632+00	5
945	pbkdf2_sha256$20000$0wPlbcIAKh4F$zqM+zQZPXcETIvDxUybuLhLy4D55v88Oz05eB3a11hQ=	\N	f	945hectorivanrivera	Hector Ivan	Rivera	demo@demo.com	f	t	2019-01-21 03:08:53.524713+00	5
946	pbkdf2_sha256$20000$CbH2K9v6hkIq$5FyrDO+vV06aflUVo0HkTj9bxsbtevRkzkKjIfFyocA=	\N	f	946gabrieluribe 	Gabriel	Uribe 	demo@demo.com	f	t	2019-01-21 03:08:53.550086+00	5
947	pbkdf2_sha256$20000$GcLPi1cAiIay$bFD6msllrj8iWb4t6paJP6aO1PX9mD2qPfjNWjiht24=	\N	f	947fernandoortiz 	Fernando	Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:53.575644+00	5
948	pbkdf2_sha256$20000$VfbTcV7EL3Ml$FGqmahhdBh4hXZrXYICWyBeQIZcm3l2LrelEfJCdL2M=	\N	f	948evanrobles 	Evan	Robles 	demo@demo.com	f	t	2019-01-21 03:08:53.601012+00	5
949	pbkdf2_sha256$20000$f5LbqgEe5VRN$+O1qpVnKqldTW0yws5I2w9JBs6p5KwGE0QHlMPpH4sw=	\N	f	949ernestodavidmedin	Ernesto David	Medina	demo@demo.com	f	t	2019-01-21 03:08:53.627436+00	5
950	pbkdf2_sha256$20000$4RKaQrWqcN3I$r5Nj5gCW6sFwWL4LwrY7UeHHvemslHJ8nb9uUFMo2kg=	\N	f	950emilianogenarogom	Emiliano Genaro	Gomez Muñiz	demo@demo.com	f	t	2019-01-21 03:08:53.653851+00	5
951	pbkdf2_sha256$20000$I0UYPQH48GHS$8qx8y0q7qKyHKS0y813hCakrQ8tYEqHJUT/7rg6JLI0=	\N	f	951diegoorozco 	Diego	Orozco 	demo@demo.com	f	t	2019-01-21 03:08:53.679157+00	5
952	pbkdf2_sha256$20000$IC3o97il2K9d$+ftYAkvT0cgbqyT5CBNM+vRjLKfxjSata6GvSqa+Kdk=	\N	f	952danielbecerril 	Daniel	Becerril 	demo@demo.com	f	t	2019-01-21 03:08:53.704789+00	5
953	pbkdf2_sha256$20000$O1HTKKIBBEyp$FXsQ9Zhj0TENHD+UiQSUMmDW54X2gBEsBqYb4n5+WD8=	\N	f	953cristiangaelarmen	Cristian Gael	Armenta	demo@demo.com	f	t	2019-01-21 03:08:53.731546+00	5
954	pbkdf2_sha256$20000$tOXWEevAQXUZ$U4uHWJQUy3mxqFnNBmNj1ZZvfXo+dai0TUWg+/y5lYY=	\N	f	954brunopacheco 	Bruno	Pacheco 	demo@demo.com	f	t	2019-01-21 03:08:53.758041+00	5
955	pbkdf2_sha256$20000$Qr2yRpzbtxXH$KxHl1pM5X6w6i5cYkLDwHptFUPkm4fyKeIq/YaK8SaM=	\N	f	955aryasingh 	Arya	Singh 	demo@demo.com	f	t	2019-01-21 03:08:53.784395+00	5
956	pbkdf2_sha256$20000$GWi9dgVjKqEy$8shB46rxTuyPYmAzIyAbPkU2LXtE0kgshAYlsIFGQdc=	\N	f	956arturodueñasdueña	Arturo	Dueñas Dueñas	demo@demo.com	f	t	2019-01-21 03:08:53.810276+00	5
957	pbkdf2_sha256$20000$0iERj7Ccw2DW$uB2nug5IPDH3WxYFeRw5fmXhvZRrhKuSPdeTia6hBn0=	\N	f	957arturoaguillon 	Arturo	Aguillon 	demo@demo.com	f	t	2019-01-21 03:08:53.83573+00	5
958	pbkdf2_sha256$20000$G4vX98UKk5RY$dyfRlMTFwpUCqrFnbadQGghKw99K6SsPdH9AImgKn40=	\N	f	958alejandrodiaz	Alejandro	Diaz	demo@demo.com	f	t	2019-01-21 03:08:53.861999+00	5
959	pbkdf2_sha256$20000$siAhhY8LSCAC$TmFhMOrhZjBA1yshomHgEGkCO9eA0GqQyrNEgVd8VI0=	\N	f	959victoranaya 	Victor	Anaya 	demo@demo.com	f	t	2019-01-21 03:08:53.887765+00	5
960	pbkdf2_sha256$20000$eOJaiZTTQfM4$DIpccHf+/LjWDKn/iHuxDNvwwsPdmU3jaGebD0gEV2A=	\N	f	960santiagopeña 	Santiago	Peña 	demo@demo.com	f	t	2019-01-21 03:08:53.91325+00	5
961	pbkdf2_sha256$20000$kYMUimXEyLtx$aWOiN3A3sfWKZpq3gCNfVHV+Y+jkCsEcIAMTZV8WU1E=	\N	f	961santiagoparedes 	Santiago	Paredes 	demo@demo.com	f	t	2019-01-21 03:08:53.938433+00	5
962	pbkdf2_sha256$20000$Onw7tbfNcnnN$KnovZwEbgyL8/0Co/ozA0cWMvCSbRPgg67JIVrtAREw=	\N	f	962rubenlira 	Ruben	Lira 	demo@demo.com	f	t	2019-01-21 03:08:53.963831+00	5
963	pbkdf2_sha256$20000$LZel0VAavmqw$UE9KcJjtM2k6qnLKZVsBin1iPMkCwRlkc5gNSh/1a3M=	\N	f	963rafaelrivapalacio	Rafael	Rivapalacio 	demo@demo.com	f	t	2019-01-21 03:08:53.989534+00	5
964	pbkdf2_sha256$20000$CH0zYxxZGXvo$Ft2yTsl8chMzsCCcKNSsMLQXEbGgS+oOdEY7b7+IcXY=	\N	f	964patricioislas 	Patricio	Islas 	demo@demo.com	f	t	2019-01-21 03:08:54.017002+00	5
965	pbkdf2_sha256$20000$cHZxPoXqmgMt$OSO4DNMwshFrLGDqmANmDBC/lZc8AkYedHpTHz4OK0g=	\N	f	965pablomoctezuma 	Pablo	Moctezuma 	demo@demo.com	f	t	2019-01-21 03:08:54.042263+00	5
966	pbkdf2_sha256$20000$MBtcknyzYQUx$glZxdQIGtEqVo6Vf38NDo5cuvOlFboWukFGDEdSe6p4=	\N	f	966julioalfonzoalvar	Julio Alfonzo	Alvarez	demo@demo.com	f	t	2019-01-21 03:08:54.067468+00	5
967	pbkdf2_sha256$20000$KBjunIYTuNRC$AarpFw0Avgaljs6CZdlgR6BQOjjHaXptlXGQTuz1CTU=	\N	f	967josefernandopiña	Jose Fernando	Piña	demo@demo.com	f	t	2019-01-21 03:08:54.092284+00	5
968	pbkdf2_sha256$20000$3iFauO7Vftjj$LtVRgxFfD6py+I94jIhgYmr5XVMJoLms4rN2rBlP7uw=	\N	f	968ikerhidalgo 	Iker	Hidalgo 	demo@demo.com	f	t	2019-01-21 03:08:54.118004+00	5
969	pbkdf2_sha256$20000$Y7lsXrTbNqmM$hpoe4UX5CjeagCmgfNE+a/SewWL75M4xKUkN2hDsuQg=	\N	f	969ikercastro 	Iker	Castro 	demo@demo.com	f	t	2019-01-21 03:08:54.143335+00	5
970	pbkdf2_sha256$20000$C8ppclVqc28V$zSvkRPdiyRpo5yAgfy1kyOlhYUkb7nWbuKfvmezswqs=	\N	f	970gabrielruiz 	Gabriel	Ruiz 	demo@demo.com	f	t	2019-01-21 03:08:54.168762+00	5
971	pbkdf2_sha256$20000$p65YankzvNim$sBLf6rl8bW8UhsUSe01fHwnBC7nEw5/FdN8sL1CwD3s=	\N	f	971emilioisrael 	Emilio	Israel 	demo@demo.com	f	t	2019-01-21 03:08:54.194358+00	5
972	pbkdf2_sha256$20000$pEGwBGD9rFSW$wsZLbzs8/rn/i65KAa/oFGlelYSzysNpjONFiPk0ndY=	\N	f	972eduardobautista 	Eduardo	Bautista 	demo@demo.com	f	t	2019-01-21 03:08:54.220032+00	5
973	pbkdf2_sha256$20000$pEntjWW2okAp$BfpUGElm3Gbh2dGLpO1HNr1QlbUa19y1DuGYJY1b3rk=	\N	f	973danielareygadas 	Daniela	Reygadas 	demo@demo.com	f	t	2019-01-21 03:08:54.246557+00	5
974	pbkdf2_sha256$20000$5lcijGTHUTrj$DzmPcM8o/ldvnKsQvhsBhP15jTfkROWdRjnfpqxOu00=	\N	f	974danielbecerril 	Daniel	Becerril 	demo@demo.com	f	t	2019-01-21 03:08:54.271928+00	5
975	pbkdf2_sha256$20000$wzeBrF2uoBak$3U38M6ZZXEd62qkg7ISot9h06vn1fAgpkzQnDwi1wp8=	\N	f	975cesarlopez 	Cesar	Lopez 	demo@demo.com	f	t	2019-01-21 03:08:54.297384+00	5
976	pbkdf2_sha256$20000$1FrW5bWQ1xls$vSShAH11jvInpbprRHWRAP8jnLjaNgCHnjcJuRD2exA=	\N	f	976axeljafetperez	Axel	Jafet Perez	demo@demo.com	f	t	2019-01-21 03:08:54.32261+00	5
977	pbkdf2_sha256$20000$u94VHeEPuRK5$VLVEMkPNpYYuwKaHx9tKBVOb5P7nPInVCLr4H4X3qwY=	\N	f	977aryasingh 	Arya	Singh 	demo@demo.com	f	t	2019-01-21 03:08:54.347483+00	5
990	pbkdf2_sha256$20000$3eaPezBEUY0G$4BbFLL1voAy5c+QSpaypdFy/E/C22NfMhoh5tXi+av4=	2019-01-24 09:22:33.912296+00	f	celianb0722 	Carlos Elian 	Bedolla Gomez	demo@demo.com	f	t	2019-01-21 03:08:54.677007+00	5
1800	pbkdf2_sha256$20000$e2brx0fliCB2$rSzbEpVOWCBysLWD1PT/D10fLjQyHXoqlfSr9UMFkLA=	2019-01-30 05:59:24.457219+00	f	jituar00	Jimena	Ituarte	name@example.com	f	t	2019-01-30 01:02:23+00	5
1533	pbkdf2_sha256$20000$inqm3P7qDsE9$sMQMzRXnuHjFNSkJidDtjs9sAtlLXnEXZdOC+4Vpkrs=	2019-01-30 08:21:23.944867+00	f	hhuerta0645	Hector 	Huerta	name@example.com	f	t	2019-01-24 06:17:05.83488+00	4
1013	pbkdf2_sha256$20000$Vc8K7cT1rscE$8F5BAuVusSOP1uuVKg8tk2K6Hv3GOYKeBbW7GZwGPeI=	\N	f	1013joaquincastellan	Joaquin 	Castellanos Bayardo	demo@demo.com	f	t	2019-01-21 03:08:55.260701+00	5
1036	pbkdf2_sha256$20000$eqfKWOe4Oiba$mm8XMh1t7POaYI7ITLA4avp3N0TzBU4zUHoERcQp3kw=	\N	f	1036diegorosasaguila	Diego 	Rosas Aguilar 	demo@demo.com	f	t	2019-01-21 03:08:55.862513+00	5
1819	pbkdf2_sha256$20000$ctfCD99LE3GR$CqxUGw/+tuVIA01jAdHJjs0b7NEQPlg1sZhaSxH3AQ0=	\N	f	ananc19	Alfredo	Nanco	name@example.com	f	t	2019-01-30 06:53:16.712216+00	4
1820	pbkdf2_sha256$20000$TmkGVTkCyh5R$1wusjgyw0xxRBAE13gE2+f75RmfkeeiUGkC74+f8W1o=	\N	f	eugal20	Emilio	Ugalde	name@example.com	f	t	2019-01-30 06:53:16.755737+00	5
1821	pbkdf2_sha256$20000$hGzqXngbdXNl$9DrzwC0OBW73eDStChrKPLzFWWzjFFOdu1k49ANae88=	\N	f	rrosa21	Ricardo	Rosas	name@example.com	f	t	2019-01-30 06:53:16.794921+00	5
1822	pbkdf2_sha256$20000$Gkyvhk6rnCFz$UnU+2T7rufisckLVEEUEjGpO660RCRUnFgmTwtitfGY=	\N	f	acruz22	Agustin	Cruz	name@example.com	f	t	2019-01-30 06:53:16.830633+00	5
1823	pbkdf2_sha256$20000$WXsEHBpnZNy4$yd4FDzOiIGwDr2nkfKwEfxeKEOOtOt2LTFcjHbeXLF0=	\N	f	ddemo23	Demo	Demo	name@example.com	f	t	2019-01-30 06:53:16.865858+00	5
1824	pbkdf2_sha256$20000$l66Z48quOSLY$QruKE77vwVMh4BONbTcTCvbxIWyCKstGk6wemeicGc0=	\N	f	egurz24	Emilia	Gurza	name@example.com	f	t	2019-01-30 06:53:16.897089+00	5
1825	pbkdf2_sha256$20000$GVBmpj4y5LRx$4yOrkBcnYVwD2QvzVbh8Q9yNynf/K/+u764kqKWDAWI=	\N	f	pvila25	Pablo	Vilanova	name@example.com	f	t	2019-01-30 06:53:16.93253+00	5
1827	pbkdf2_sha256$20000$YyETCIv7HA1y$AzkO7pafPGnmeMESg6XJ1ciocLQnyxidSjCpCYwjz1g=	\N	f	cvele27	Constanza	Velez	name@example.com	f	t	2019-01-30 06:53:17.007214+00	5
1828	pbkdf2_sha256$20000$b3lowmXefDLG$Lrk3cy1XhhrlYAhiDcWAJbx8mTUg1rnXjPh3LZRjLy0=	\N	f	mchoi28	Mirie	Ruiz	name@example.com	f	t	2019-01-30 06:53:17.036104+00	5
1829	pbkdf2_sha256$20000$An7Zvd1DYkaz$muvonbra4wCtzoIOlKvbvcMBq8hdeQTp+s8gfj+vBYY=	\N	f	mibar29	Monica	Ibarra	name@example.com	f	t	2019-01-30 06:53:17.063312+00	5
1830	pbkdf2_sha256$20000$glTwHNLeTnL3$2HP2xYEe11G57BnrAvgbG3LbozJyWhfYIExYXs70mL8=	\N	f	fconc30	Francisco	Concha	name@example.com	f	t	2019-01-30 06:53:17.09102+00	5
1831	pbkdf2_sha256$20000$esNaGe56Hysu$Ebr1vJhh32dmsB7WWg6xvSiAgIX2TfiXWn4BvqnciCU=	\N	f	ghold31	George	Holden	name@example.com	f	t	2019-01-30 06:53:17.120147+00	5
1832	pbkdf2_sha256$20000$oIINpd3wzyIE$V47E3MNDmbZz7yI3K16Yk7LT12mzglFt+s5QvdBuK20=	\N	f	mgove32	Marcelo	Govela	name@example.com	f	t	2019-01-30 06:53:17.166793+00	5
1833	pbkdf2_sha256$20000$wNlDRE3FSpjL$wYVN6SPwcL3kVQTCp7L8Defd+omZ3LbYEv5T2ZtvENE=	\N	f	jitua33	Jimena	Ituarte	name@example.com	f	t	2019-01-30 06:53:17.214445+00	5
1834	pbkdf2_sha256$20000$Q6J59M4soXrz$ehm0dRwbHhg4OH2SzTrKq4sx42vxmRf9b0UFVezbCp8=	\N	f	gsoto34	Gabriela	Soto	name@example.com	f	t	2019-01-30 06:53:17.243225+00	5
1835	pbkdf2_sha256$20000$vG7DoalDcQPR$dqbOnkkEPucuuTAruftMXDE8gd7HywBNmR3MvEIBhlg=	\N	f	agome35	Alaia	Gomez	name@example.com	f	t	2019-01-30 06:53:17.27373+00	5
1836	pbkdf2_sha256$20000$Q0tGYFAf609r$kTMY7bAYnOhgor+DL1cy26iiUOIUvA/6wio0zhsfiu8=	\N	f	vdarc36	Victor	Darchez	name@example.com	f	t	2019-01-30 06:53:17.300648+00	5
1826	pbkdf2_sha256$20000$o43HJgR2atIu$dw6R25seF68X+5UfBs4f737VrY4AenMxcjHHzHT/how=	2019-01-30 07:53:20.745445+00	f	apadi26	Alvaro	Padilla	name@example.com	f	t	2019-01-30 06:53:16.96844+00	5
1817	pbkdf2_sha256$20000$t5UjhGyckL9E$QqyCue6q6FylZdnflI6MrIIXuhdXsOQSw3uwoGttqnk=	2019-01-30 07:00:54.473679+00	f	jange17	Julio	Angeles	name@example.com	f	t	2019-01-30 06:53:16.62494+00	3
1818	pbkdf2_sha256$20000$5Uo6PWtr1wMR$MbCA1x/eHtOUgzVDP149h+VPpFDyqnOnxluqJpCguDU=	2019-02-19 03:08:27.539756+00	f	hlino18	Hugo	Lino	name@example.com	f	t	2019-01-30 06:53:16.667906+00	4
1123	pbkdf2_sha256$20000$C0PntgbP8uF8$FZ+Sz5W4r1QsXwkn41HhyQK2hc81x4vTG6ZLeNzwudM=	\N	f	1123rodrigoriverasol	Rodrigo 	Rivera Soliz 	demo@demo.com	f	t	2019-01-21 03:08:58.040261+00	5
1124	pbkdf2_sha256$20000$WG38dbOcgOuO$bv3DdrQS5MDPNrg2Peaj98RV/fsodp4RO0fV+yYNk5U=	\N	f	1124pabloanayaalonzo	Pablo 	Anaya Alonzo 	demo@demo.com	f	t	2019-01-21 03:08:58.064048+00	5
1125	pbkdf2_sha256$20000$B7i9LOeNih2D$bYqC5me4Uyn130iEcrF4sVNYPB8hjARkKcvg6J7c9IE=	\N	f	1125marioambrociooli	Mario 	Ambrocio Oliva 	demo@demo.com	f	t	2019-01-21 03:08:58.087634+00	5
1126	pbkdf2_sha256$20000$jMNPE56FdwZc$86SD3/8ygELeHWTn+PW5xZdVT8qjs39X5W0VL+9x3xY=	\N	f	1126luisangel delacr	Luis Angel  	De La Cruz Arvea	demo@demo.com	f	t	2019-01-21 03:08:58.111176+00	5
1127	pbkdf2_sha256$20000$MPgyMPkTkUIO$U2z2GoHE+xlrEkyQHuEArn/WEfadSpU2HBTZxoS0/c0=	\N	f	1127luisalexismartin	Luis Alexis 	Martines Meneses 	demo@demo.com	f	t	2019-01-21 03:08:58.135431+00	5
1128	pbkdf2_sha256$20000$8Ji28YSOgSYa$mQ0qxY7GJ0GTU2BEsrGN2XYG9M0umq7AG54iwe1lOa0=	\N	f	1128hectorestebanrod	Hector Esteban	Rodriguez Carmona 	demo@demo.com	f	t	2019-01-21 03:08:58.158938+00	5
1129	pbkdf2_sha256$20000$SDKCk816mTHl$4VCrQ6iTTnv0TkGHRnWj97chIs+8LEtUBfmkZUVzSGg=	\N	f	1129gaelmartinezpeña	Gael 	Martinez Peña	demo@demo.com	f	t	2019-01-21 03:08:58.182443+00	5
1130	pbkdf2_sha256$20000$A5nN6SU4vnz5$i+5rcX0G4lP29qiZkZMnkmjUkUplU/u6HoMQcNStEVs=	\N	f	1130brandongiovannit	Brandon Giovanni 	Trejo Carmona 	demo@demo.com	f	t	2019-01-21 03:08:58.206047+00	5
1131	pbkdf2_sha256$20000$lYkWcs15B4wD$Zy+/8NfDQiUfB4uJTmB+pruvYSR3E/TV/qFm7QvyX88=	\N	f	1131angelzuñigaalonz	Angel 	Zuñiga Alonzo 	demo@demo.com	f	t	2019-01-21 03:08:58.230992+00	5
1132	pbkdf2_sha256$20000$gJwPCKRCVI4Z$hjBbdfAOT0vTy/b43ONQLgNkIoNt72MsAPdM6Cc252o=	\N	f	1132anayactxyvelazqu	Anayactxy 	Velazquez Rodea 	demo@demo.com	f	t	2019-01-21 03:08:58.257146+00	5
1133	pbkdf2_sha256$20000$SspZYw5a3jBH$lkBIVGXJKwE1ydTlhFibFanziYOebnJshxvCRopfTBQ=	\N	f	1133alejandrohernand	Alejandro 	Hernandez Haces	demo@demo.com	f	t	2019-01-21 03:08:58.295501+00	5
1134	pbkdf2_sha256$20000$0OJHLxCc3C0K$VPzWLTAjBk13A3jmucmDloQK06NPhFcZL80RfDAFSa0=	\N	f	1134santiagomartinez	Santiago 	Martinez Juarez	demo@demo.com	f	t	2019-01-21 03:08:58.331466+00	5
1135	pbkdf2_sha256$20000$V4WAWO9kSlot$TAlQVk6LbqiPXkFRcV9xNneOu7W3RVtBYzARQBDg0qE=	\N	f	1135saidabrahamgomez	Said Abraham 	Gomez Gama 	demo@demo.com	f	t	2019-01-21 03:08:58.356072+00	5
1136	pbkdf2_sha256$20000$b31fnNUFK1up$44mmd8DNhgDMrYqGWQdvyjOVSkNJFD9ZDs6OTCyZAAI=	\N	f	1136raulemmanuelcord	Raul Emmanuel 	Cordero Jimenez 	demo@demo.com	f	t	2019-01-21 03:08:58.380223+00	5
1137	pbkdf2_sha256$20000$aXoocTCEj4ZB$nRDzenfTFaMrCWMEgp/K7CcABVjarIQdl2eq+Bz2kYw=	\N	f	1137omarcuevasbalbue	Omar 	Cuevas Balbuena 	demo@demo.com	f	t	2019-01-21 03:08:58.404764+00	5
1138	pbkdf2_sha256$20000$Jm4tDHNQmrnB$1p6yJwBXUIJzrtEN4vme8HzOZbyld0vA13y5Vb2wi7E=	\N	f	1138luisjancanofuent	Luis Jan 	Cano Fuentes 	demo@demo.com	f	t	2019-01-21 03:08:58.42927+00	5
1139	pbkdf2_sha256$20000$nbCVtTyTllqF$jcRlC83QpTXaZQW+FR5LPDSRtDVHPr2TNOjDbn9bKw4=	\N	f	1139luisenriquesolor	Luis Enrique 	Solorzano Alanis 	demo@demo.com	f	t	2019-01-21 03:08:58.453446+00	5
1140	pbkdf2_sha256$20000$WzemBjpVS2pr$EvRTSjuCM/IatjtOWlZ8o4qOY2Yb9xoKCP6AKcw47Xo=	\N	f	1140leonardogabrielr	Leonardo Gabriel 	Rodriguez Briseñor 	demo@demo.com	f	t	2019-01-21 03:08:58.477516+00	5
1141	pbkdf2_sha256$20000$gZKPi2CwZiFO$6bfTiWCMOS635o23Gy/39aDnToMmOUdPNq4CCVAQocU=	\N	f	1141juanpablohernand	Juan Pablo 	Hernandez Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:58.505752+00	5
1142	pbkdf2_sha256$20000$JLKgxbk9W7jr$ZyTi4Hg6Ng2usIRFgJ+58Mg07Oh4gNZCCi5TkTfF3FY=	\N	f	1142joshelinelopezhe	Josheline 	Lopez Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:58.52969+00	5
1143	pbkdf2_sha256$20000$0y8LOGD6oWMB$ThsDBdF+9tM/Kjm8wUnPD9e/HhcN0g9CB7NRiiZW3O0=	\N	f	1143ferranmauricioku	Ferran Mauricio 	Kuri Gomez 	demo@demo.com	f	t	2019-01-21 03:08:58.55361+00	5
1144	pbkdf2_sha256$20000$Iwr3TcbbwPma$6IqU2QFerNdNGSvzg4ViyoFxigrfOIS5pJnnKV9WcI0=	\N	f	1144diegoalvaradomej	Diego 	Alvarado Mejia 	demo@demo.com	f	t	2019-01-21 03:08:58.578064+00	5
1145	pbkdf2_sha256$20000$V7te9ETzknz1$D+1LdwzH0vcDkhniwKE7xhw94f0/Vxo7oHEzuNK02Xk=	\N	f	1145axelyaelgomezher	Axel Yael 	Gomez Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:58.605216+00	5
1146	pbkdf2_sha256$20000$teoTDlw081eU$XyD+WUr6Z7zd6bOtQhtLFtzMHJ/+LUXrRtlOGiODjHg=	\N	f	1146aldoemilianoordu	Aldo Emiliano 	Orduña Candanedo	demo@demo.com	f	t	2019-01-21 03:08:58.629253+00	5
1147	pbkdf2_sha256$20000$JOks63GkUFL3$rlUBNNd8mLGcYf7vSEosTmZ0WxLRNrbCiJ+V7dCRHMk=	\N	f	1147pabloavilawolf	Pablo 	Avila Wolf	demo@demo.com	f	t	2019-01-21 03:08:58.653118+00	5
1148	pbkdf2_sha256$20000$dVcl7noyUvql$oICudKklMY3nu3+4taFf8tE82keifq8sTopkwKguBRI=	\N	f	1148marcoantonioflor	Marco Antonio 	Flores Monzalvo 	demo@demo.com	f	t	2019-01-21 03:08:58.676872+00	5
1149	pbkdf2_sha256$20000$2D6W9tTvJyes$65tXzh+qA3Qtwr1ffBXKojHcqMOPWS+yk/V15SM6Des=	\N	f	1149luisarturorodrig	Luis Arturo 	Rodriguez Santos 	demo@demo.com	f	t	2019-01-21 03:08:58.700618+00	5
1150	pbkdf2_sha256$20000$gOFgRYIGNIMS$fpvj+81P5fHlbwX81wVimmhEJIBsHJH8cpqXwNL6eCw=	\N	f	1150leonardosantacru	Leonardo 	Santacruz Martinez 	demo@demo.com	f	t	2019-01-21 03:08:58.725015+00	5
1151	pbkdf2_sha256$20000$qS4DGYyEhE34$SvCZCRHYhpc91JboGF08TK3vaBwE/RQzyMqtMzDFDbA=	\N	f	1151leonardomirandaa	Leonardo 	Miranda Alcala 	demo@demo.com	f	t	2019-01-21 03:08:58.751092+00	5
1152	pbkdf2_sha256$20000$TkfF3filJ5Zg$vPoGpXw5o/WGSdxA/hJd4kQjubu3UkgIvYGLfMnNNBc=	\N	f	1152jorgeemilioortiz	Jorge Emilio 	Ortiz Franco 	demo@demo.com	f	t	2019-01-21 03:08:58.788551+00	5
1153	pbkdf2_sha256$20000$vveObG8zuEz3$RjcXetJkxgg710p0gNWkUuOTtL7DMEHUsLM2xaz9jqA=	\N	f	1153emiliosantiagobo	Emilio Santiago 	Bolaños Cervantes 	demo@demo.com	f	t	2019-01-21 03:08:58.813218+00	5
1154	pbkdf2_sha256$20000$UeGIJIUgepoc$0DvxqZJqANdzM43whp5KiMxSyP8N7d+SWhlgE9B8lYM=	\N	f	1154diegomatiasborza	Diego	Matias Borza 	demo@demo.com	f	t	2019-01-21 03:08:58.837891+00	5
1155	pbkdf2_sha256$20000$MRZfy1PVRcuR$cvmtRmH8W3hfO9o12SsHrBBu14DCgeUSq89tTLlpSYQ=	\N	f	1155andreszuñigamont	Andres	Zuñiga Montañez 	demo@demo.com	f	t	2019-01-21 03:08:58.86212+00	5
1156	pbkdf2_sha256$20000$GcLGNaJ6iE0n$MiiIcJ1wjgQbi074C3G8+D5WLxjfDYyNyW/DBXnZvJU=	\N	f	1156alejandrotorrese	Alejandro 	Torres Esquivel 	demo@demo.com	f	t	2019-01-21 03:08:58.887063+00	5
1157	pbkdf2_sha256$20000$3zK02djDXs2b$VKzLVcPEr/EkHRiQlJHYCvOO+6Qb3NkmrcEdMd2qP6A=	\N	f	1157alejandrosegurac	Alejandro 	Segura Chacon 	demo@demo.com	f	t	2019-01-21 03:08:58.911495+00	5
1158	pbkdf2_sha256$20000$QcKmatS04tni$fFXkrTX7qry+1Mseokzgm70u2DRhyk8JnfWfoU24Nao=	\N	f	1158alanemilianotapi	Alan Emiliano 	Tapia Cruz	demo@demo.com	f	t	2019-01-21 03:08:58.936007+00	5
1159	pbkdf2_sha256$20000$SYZDLjp4Qpmv$HiWSKIjNcPFt4j6olGi7W54FvIJt/Fl99TMoiQXW/mY=	\N	f	1159yadielcanofuente	Yadiel 	Cano Fuentes 	demo@demo.com	f	t	2019-01-21 03:08:58.960685+00	5
1160	pbkdf2_sha256$20000$rYHWAbGEBgHa$7maOesInF6wgmjLTOhohBE/U/HzRVefDhjA+r0hzG+w=	\N	f	1160santiagohernande	Santiago 	Hernandez Diaz 	demo@demo.com	f	t	2019-01-21 03:08:58.985052+00	5
1161	pbkdf2_sha256$20000$U7kRiVhyWPkq$pDhSz8aeEAZc+4dWnyxZQHXwP+6nM4Y8S2DSX+SFiCA=	\N	f	1161ricardoefrenmaya	Ricardo Efren 	Maya Cisneros 	demo@demo.com	f	t	2019-01-21 03:08:59.009211+00	5
1162	pbkdf2_sha256$20000$yMOb5MaK4AGM$0meKB+2Kb74EuMop28cVrAGLTCHS2i29RZXXE9Pggi4=	\N	f	1162luiseduardocoron	Luis Eduardo 	Corona Vega 	demo@demo.com	f	t	2019-01-21 03:08:59.033001+00	5
1163	pbkdf2_sha256$20000$EuSaUrqqh4Ho$HkqMmH8bGthyzUP4O3NmkCDeOgNihOBSYcLAw8uRyik=	\N	f	1163julianfloresvill	Julian 	Flores Villegas 	demo@demo.com	f	t	2019-01-21 03:08:59.057154+00	5
1164	pbkdf2_sha256$20000$mIsH79Q5AZMe$w1/CP891CnjvgrK+CH0zBOOaEnlanYj2AhUHPr0Yp9E=	\N	f	1164gaeltorresesquiv	Gael 	Torres Esquivel 	demo@demo.com	f	t	2019-01-21 03:08:59.081332+00	5
1165	pbkdf2_sha256$20000$3D6HmIwUwlll$ibpQWm7jL6IdRG8RhaRRQYwZYA1ynh9Hplkqm4dlJrg=	\N	f	1165emiranuarthernan	Emir Anuart 	Hernandez Rosales 	demo@demo.com	f	t	2019-01-21 03:08:59.108599+00	5
1166	pbkdf2_sha256$20000$hMI4c5I0JszQ$exu7O6L6LnukWmmFY1dE6NVZeK4TPWcy7teriYlJJuE=	\N	f	1166emiliohernandezg	Emilio 	Hernandez Garcia 	demo@demo.com	f	t	2019-01-21 03:08:59.131959+00	5
1167	pbkdf2_sha256$20000$noMf32dsyVzH$6UOa20O4ROc//GFZTkuXt1wmk3TplLQCq3/212v5u+A=	\N	f	1167diegosaavedranar	Diego 	Saavedra Naranjo 	demo@demo.com	f	t	2019-01-21 03:08:59.155725+00	5
1168	pbkdf2_sha256$20000$qoYJy4dE5f3z$XfGRfyc83BINMtskPT1ThoJEvmEW+PxQ8OVKM8MTE6I=	\N	f	1168alexgranadosgarc	Alex 	Granados Garcia	demo@demo.com	f	t	2019-01-21 03:08:59.182154+00	5
1169	pbkdf2_sha256$20000$SGephENee3Pv$faBqm9yjpDgsD5HhlGMR1DDVRfvBxmG3I5dpIPpoxuM=	\N	f	1169rodrigomirandaal	Rodrigo 	Miranda Alcala 	demo@demo.com	f	t	2019-01-21 03:08:59.205532+00	5
1170	pbkdf2_sha256$20000$m5IB60lRHbCX$kQaYkBUcIwLs11Lum0R1SXuaWWRI2r/5HpRz9NfhUAI=	\N	f	1170reymundobaltazar	Reymundo 	Baltazar Gonzalez 	demo@demo.com	f	t	2019-01-21 03:08:59.22951+00	5
1330	pbkdf2_sha256$20000$8mDK6yZea5QZ$+XVRoF0+ouXjz+AcQiDi+mhBNQAOOHERBCR5HQ0Jc+k=	\N	f	rmera30	Roman Eduardo	Meraz Rodriguez	demo@demo.com	f	t	2019-01-22 21:11:48.303848+00	5
1172	pbkdf2_sha256$20000$1uCmHfW6voi4$Jy0NYJUBBl0fXJfo2Tf9ZzhpXUBoOJjtLUFZ7oo4ULE=	\N	f	1172joseemilioarroyo	Jose Emilio 	Arroyo Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:59.281237+00	5
1173	pbkdf2_sha256$20000$xxBa4EpbNOux$HF4dH1fQ6vVNIpx2Kx5mEwv2yhmjPGtxFnys9zmR3Nk=	\N	f	1173josecarlosgarcia	Jose Carlos 	Garcia Vazquez	demo@demo.com	f	t	2019-01-21 03:08:59.305008+00	5
1174	pbkdf2_sha256$20000$Y3YrjfriHLRP$5HFGpl5w422H6Ohi6cRcSD0Gc7kIVal4auoEIoD5S2M=	\N	f	1174jesuspaolo ramir	Jesus Paolo  	Ramirez Mendoza	demo@demo.com	f	t	2019-01-21 03:08:59.328422+00	5
1175	pbkdf2_sha256$20000$YxlQwwvAkLmN$5LWWGcIEg+E6PYf02S1+86p675ttbx+Ec8hUIEOzQ/s=	\N	f	1175giancarloamayama	Giancarlo 	Amaya Martinez 	demo@demo.com	f	t	2019-01-21 03:08:59.355018+00	5
1176	pbkdf2_sha256$20000$8a95daiz63po$UuKrziXaBW4opIVeWPHYL7j+l6IBNf4FTttTpYy4yfY=	\N	f	1176ernestofortino g	Ernesto Fortino  	Garcia Trinidad	demo@demo.com	f	t	2019-01-21 03:08:59.379267+00	5
1177	pbkdf2_sha256$20000$bqTNHpqpqpCW$HibFE9qyuO3LExMjNt4vsN6DuLqz41JjhjCvyjeuQTM=	\N	f	1177emilio medinamon	Emilio  	Medina Monreal	demo@demo.com	f	t	2019-01-21 03:08:59.402825+00	5
1178	pbkdf2_sha256$20000$yIQN0lSarZSf$XtwqzOh9F3wCTdN/E0DnrGjkWJRPsBg45zuNkBLjNQA=	\N	f	1178elianemanuelsolo	Elian Emanuel 	Solorio Rodriguez 	demo@demo.com	f	t	2019-01-21 03:08:59.426268+00	5
1179	pbkdf2_sha256$20000$NFnMOelJK5Dp$ua4UkFQzNe+RqCvwfiMnGAK43H4UFpfEqZ4hJR38zYI=	\N	f	1179diegomateo nonel	Diego Mateo  	Nonell Velazquez	demo@demo.com	f	t	2019-01-21 03:08:59.452889+00	5
1180	pbkdf2_sha256$20000$cfZz8AS5NmpE$dbFnHDUtG1VXHMQyHBL9ZReFUlk9HxlSNKl039qeW1I=	\N	f	1180diegogranadosber	Diego 	Granados Bernal 	demo@demo.com	f	t	2019-01-21 03:08:59.476798+00	5
1181	pbkdf2_sha256$20000$sRXROGtUrj7Z$xqPlbfwCQNL5GXyiEykGWRnyTHaqRDpkMoEFPTZGKuQ=	\N	f	1181diegoenriquemart	Diego Enrique 	Martinez Peralta 	demo@demo.com	f	t	2019-01-21 03:08:59.50066+00	5
1182	pbkdf2_sha256$20000$TpEN45GKN655$piXfeDmG89xTR6GlAo2m048Wjp+gUvMThuloTaFeoCI=	\N	f	1182cesarrodrigoosna	Cesar Rodrigo 	Osnaya Nava 	demo@demo.com	f	t	2019-01-21 03:08:59.538833+00	5
1183	pbkdf2_sha256$20000$U3uCTYscbxYI$PINtHho860VF0F8LeDC2duKdlrU9zVIHqgmArtHAvi8=	\N	f	1183brandonmartinezb	Brandon 	Martinez Bolaños 	demo@demo.com	f	t	2019-01-21 03:08:59.562684+00	5
1184	pbkdf2_sha256$20000$AiaffrcHsAJu$HkSkfO5R3aj4rKRNQmEROSRz++Z4mmnY2nTgmv4+od4=	\N	f	1184bilhanescobardie	Bilhan 	Escobar Diego 	demo@demo.com	f	t	2019-01-21 03:08:59.586115+00	5
1185	pbkdf2_sha256$20000$jbghGR1jQulH$4WafIIenZhyY1m1xW5xfkXkECvTnV0VXPazWnneQUXE=	\N	f	1185alanrafaelgarcia	Alan Rafael 	Garcia Pulido	demo@demo.com	f	t	2019-01-21 03:08:59.610254+00	5
1186	pbkdf2_sha256$20000$aLx6FOHpO4OC$4Hy3M+2VcRV5a4mDT1rB83NVwJZ9Vawjjok08tpFlI8=	\N	f	1186patriciojimeneza	Patricio 	Jimenez Andrade 	demo@demo.com	f	t	2019-01-21 03:08:59.633774+00	5
1187	pbkdf2_sha256$20000$w3h0sMuuvlmn$Ms5KPKDztv+cFQyJ8I2hbkww/ndrBQ2ouFLlFB4DYwo=	\N	f	1187oscargabrielsanq	Oscar Gabriel 	Sanquilli Luna 	demo@demo.com	f	t	2019-01-21 03:08:59.660124+00	5
1188	pbkdf2_sha256$20000$NzZl9d1S9SYZ$guBs71Ls6t2lueY6shs5KC7Tx4ySHbtJKFu74QLG3tc=	\N	f	1188miguel herrerahe	Miguel  	Herrera Hernandez	demo@demo.com	f	t	2019-01-21 03:08:59.683558+00	5
1189	pbkdf2_sha256$20000$D0ose3nOGN98$xWwEKU3seQ3nDbUBC3cqlLZQiJFToNbrIg13YnGJw88=	\N	f	1189joseangelfloresg	Jose Angel 	Flores Garcia 	demo@demo.com	f	t	2019-01-21 03:08:59.707686+00	5
1190	pbkdf2_sha256$20000$UVP6WLc347Yi$SioqnO7UR5KuM7VrPiF2yc8piOIBUdItlGjOPVn0xlU=	\N	f	1190hectorherreraher	Hector 	Herrera Hernandez	demo@demo.com	f	t	2019-01-21 03:08:59.732008+00	5
1191	pbkdf2_sha256$20000$ftSAmFamDqV8$NYuaye4+xaQskn/PYZ26bMbWMIkRGmOCX+Vf20dzj5g=	\N	f	1191yaelisaihidalgo 	Yael Isai 	Hidalgo 	demo@demo.com	f	t	2019-01-21 03:08:59.755902+00	5
1192	pbkdf2_sha256$20000$sTVf5O5CUaTe$KgDwS5j0CDHr9bCjtONPL6JXlzYP/FcLjX+eCJOzxMs=	\N	f	1192ulicesabundiomen	Ulices Abundio 	Mendoza Velazquez 	demo@demo.com	f	t	2019-01-21 03:08:59.779605+00	5
1193	pbkdf2_sha256$20000$Pj4EjYmeyf11$y4BqxmF3VkgwiOQH3eM7nqpvlLPe8TTle6Ne9fTrMEY=	\N	f	1193patriciosantinoc	Patricio 	Santino Castillo 	demo@demo.com	f	t	2019-01-21 03:08:59.803666+00	5
1194	pbkdf2_sha256$20000$tEpbYhOBSh8O$IKcNK4ZQva6rckuYlEJqm7aNfUl9CuCBfGzlxDlnb0o=	\N	f	1194pablogarciavalen	Pablo 	Garcia Valencia 	demo@demo.com	f	t	2019-01-21 03:08:59.827375+00	5
1195	pbkdf2_sha256$20000$wGSM8OxHHZ2Y$fqiYgdB/0cElEBbxncW/iEyue6RQUJNLKwlcgE0NOkU=	\N	f	1195oscaremilianonon	Oscar Emiliano 	Nonell Velazquez	demo@demo.com	f	t	2019-01-21 03:08:59.850885+00	5
1331	pbkdf2_sha256$20000$RMy8vyBwa8Ju$MvMy2bDhi0IdtaQ1zAZ2o21eVIOYpIbX+38KzDAq7Bw=	\N	f	emoji31	Emiliano	Mojica Gonzalez	demo@demo.com	f	t	2019-01-22 21:11:48.32881+00	5
1196	pbkdf2_sha256$20000$1eyyjg8zN4w3$oHkzU6wDF1A19r70P23KJqmQ4A4Yw56PAB5QzRPJywg=	\N	f	1196miguelemiliogonz	Miguel Emilio 	Gonzalez Franco 	demo@demo.com	f	t	2019-01-21 03:08:59.874734+00	5
1197	pbkdf2_sha256$20000$P2zPcNulAWJO$9eAoJTuLBPI3jXyKgL7V0m3+ukhpYufA1hyfqZd42Xk=	\N	f	1197miguelangel carm	Miguel Angel  	Carmona Lopez	demo@demo.com	f	t	2019-01-21 03:08:59.898641+00	5
1198	pbkdf2_sha256$20000$ibrgAkJYI15p$DQjlFY8D1kBEHmbWCjtAuEKnU4b7AISqqq2NWtttooM=	\N	f	1198manuelenriquemen	Manuel Enrique 	Mendoza Trejo 	demo@demo.com	f	t	2019-01-21 03:08:59.922107+00	5
1199	pbkdf2_sha256$20000$brsaPEFNPST1$6A8nybsZ83GhOD1xn/39nB3Yp3+GYzXETZTfFxYO4E0=	\N	f	1199luisangelespinos	Luis Angel 	Espinosa Alanis	demo@demo.com	f	t	2019-01-21 03:08:59.946237+00	5
1200	pbkdf2_sha256$20000$NktFXHTw0yxa$2Y/2lTdtwpEZ0E/NIIM4WlyuRfWJksL4QKNboAiQQck=	\N	f	1200jesussebastiango	Jesus Sebastian 	Gomez Estrella	demo@demo.com	f	t	2019-01-21 03:08:59.970423+00	5
1201	pbkdf2_sha256$20000$UOQptgTFGn7T$uDYvBCc8NgDUrPA/FIQ+Ebvpi6Ry+JfBxqJxySy1Y9o=	\N	f	1201ikersanquillilun	Iker 	Sanquilli Luna 	demo@demo.com	f	t	2019-01-21 03:08:59.994448+00	5
1202	pbkdf2_sha256$20000$ygi43UUkWWsw$0+Vt4mlW3hWnkMukn2zsF9RCEvtMDhPyXkpawp6SQbQ=	\N	f	1202gerardoromeroram	Gerardo 	Romero Ramirez 	demo@demo.com	f	t	2019-01-21 03:09:00.017946+00	5
1203	pbkdf2_sha256$20000$9Ue5kGoz9Mzz$4lo88S4vhG81xqoREPbCfxo/mUoB4tUuhCyL7Ma8dTs=	\N	f	1203emilianoromerohe	Emiliano 	Romero Hernandez 	demo@demo.com	f	t	2019-01-21 03:09:00.041265+00	5
1204	pbkdf2_sha256$20000$C4raXfPaQi5R$gAJlot1/eWHPhkui9P+uZMicvPkP98RdvFSzMNeMzoM=	\N	f	1204emilianohernande	Emiliano 	Hernandez Salazar 	demo@demo.com	f	t	2019-01-21 03:09:00.064953+00	5
1205	pbkdf2_sha256$20000$LTvo5LfoJWvP$NnLBh012VEd7DFlUNVX5S+f6n7JTa1y+Fp/LX57kWkc=	\N	f	1205cesaryosielmarti	Cesar Yosiel 	Martinez Bolaños	demo@demo.com	f	t	2019-01-21 03:09:00.088672+00	5
1206	pbkdf2_sha256$20000$DopMKw5Vzc2w$2tqt0kznLsmHCDz2jAyT8gmYWikxKZ+HBC/oM9KzAm0=	\N	f	1206santiagolozanowo	Santiago 	Lozano Woda	demo@demo.com	f	t	2019-01-21 03:09:00.112795+00	5
1207	pbkdf2_sha256$20000$TYlEEXK4HvL6$nESo7DdEZPqJ7Ttmv8QTm63qUnh6Equ5hZs/nFnvwok=	\N	f	1207samuelmedinasanc	Samuel 	Medina Sanchez 	demo@demo.com	f	t	2019-01-21 03:09:00.136841+00	5
1208	pbkdf2_sha256$20000$7hmUBLPIHOF2$Cz4sekwb5/BKGEFaAweKS93ruCqAIhaBSyDI9BFz5As=	\N	f	1208samuelmaximilian	Samuel Maximiliano 	Salinas Lagunes 	demo@demo.com	f	t	2019-01-21 03:09:00.160895+00	5
1209	pbkdf2_sha256$20000$PcA2yYmzznZQ$wGibDcLoInPIfrZj5gkGqfqT05e+LCnj0HfwBod9kg4=	\N	f	1209joseeduardopazga	Jose Eduardo 	Paz Garcia 	demo@demo.com	f	t	2019-01-21 03:09:00.184365+00	5
1210	pbkdf2_sha256$20000$oYJ8hHsn6W41$Us9o3GklOjXtdcdKvNjAsRzdVOE43uNbdb9deKOqsac=	\N	f	1210huberescobardieg	Huber 	Escobar Diego 	demo@demo.com	f	t	2019-01-21 03:09:00.20828+00	5
1211	pbkdf2_sha256$20000$v6jxA8zoWzKL$9cyglBc1ZaQgd7n/tnm0at+MiXCq1EUIS5dTnZ9M3No=	\N	f	1211emanuelromeroher	Emanuel 	Romero Hernandez 	demo@demo.com	f	t	2019-01-21 03:09:00.232325+00	5
1212	pbkdf2_sha256$20000$zLvvlSRqEIfW$3WyzkXJnMqCl15+3ojPOAWZ4EIrvHoslsqiEZev+GEg=	\N	f	1212cristianurielsua	Cristian Uriel 	Suarez 	demo@demo.com	f	t	2019-01-21 03:09:00.256291+00	5
1213	pbkdf2_sha256$20000$Nm2KquLkiqaX$g9XZzi1kIgdewoqNM6Lsa4zV1c4F7bxi/JFEjNkpKgU=	\N	f	1213brunosalquerorom	Bruno 	Salquero Romero	demo@demo.com	f	t	2019-01-21 03:09:00.279806+00	5
1214	pbkdf2_sha256$20000$7iD5KI8Q1auV$HfztL166BjfG3PKIk+6ePenTic0Gs01ixKD9U58yQF4=	\N	f	1214yaninayaretzibol	Yanina Yaretzi 	Bolaños Valdovinos 	demo@demo.com	f	t	2019-01-21 03:09:00.303722+00	5
1215	pbkdf2_sha256$20000$kLOdbOHaBXf9$s38rzUTRJmZGYjEiabMvZ3H8aYr4tnqXzFQMWNX4ImY=	\N	f	1215victoriachavezhe	Victoria 	Chavez Hernandez	demo@demo.com	f	t	2019-01-21 03:09:00.328338+00	5
1216	pbkdf2_sha256$20000$kZg00dn8rYaC$2g8npdsSLzbuS1wBvSxFHrD5ZaL5l+g/wI5/WjePIzc=	\N	f	1216sophiasaraisanqu	Sophia Sarai 	Sanquilli Luna 	demo@demo.com	f	t	2019-01-21 03:09:00.352348+00	5
1217	pbkdf2_sha256$20000$1HOXQX567r46$fBMduB9lpgS5/I3rL0bfD+2MylFKEohZD54xOUn+o1U=	\N	f	1217sophia salinasla	Sophia  	Salinas Lagunes	demo@demo.com	f	t	2019-01-21 03:09:00.376153+00	5
1218	pbkdf2_sha256$20000$5P3gIO23Hd3Y$/NcQApx0sSD1/jwd5RVoB1el9zajBT1GC9QO47+Bc6o=	\N	f	1218pamelayaleny mar	Pamela Yaleny  	Martinez Peralta	demo@demo.com	f	t	2019-01-21 03:09:00.399883+00	5
1219	pbkdf2_sha256$20000$LDLveUpKvnMO$6zg+/F1GhsYtX/nOEDIV/nvgyUX1Wa+CIFr7UDDP+jo=	\N	f	1219marthapatriciaca	Martha Patricia 	Carmona Lopez 	demo@demo.com	f	t	2019-01-21 03:09:00.423817+00	5
1220	pbkdf2_sha256$20000$9BSOhwE2obry$mryCyr9WzPvgf5JJoe1Y4gtICU48RYtg4IYNSZZ7cHk=	\N	f	1220mariajose carmon	Maria Jose  	Carmona Lopez	demo@demo.com	f	t	2019-01-21 03:09:00.4474+00	5
1221	pbkdf2_sha256$20000$n7UVQJbb8Hme$PX2dOMWUyisJbdW0j4MZnAJ4sKY0QlqOjLzEiR9i2iw=	\N	f	1221mariafernanda ju	Maria Fernanda  	Juarez Castro	demo@demo.com	f	t	2019-01-21 03:09:00.470977+00	5
1222	pbkdf2_sha256$20000$yacrI8zFXYm6$5UkPsH7tMCxNkKkB07xaTm6TEVUu/IjqwYhwIlxu6E4=	\N	f	1222joshelinelopezhe	Josheline 	Lopez Hernandez 	demo@demo.com	f	t	2019-01-21 03:09:00.494717+00	5
1223	pbkdf2_sha256$20000$RPSSFiDiKKsc$ckCAwMZ85KtY1ElICY7eL+Zj/ofZH89ngBsFcI0ujqw=	\N	f	1223fatima pascualfr	Fatima  	Pascual Franco	demo@demo.com	f	t	2019-01-21 03:09:00.518732+00	5
1224	pbkdf2_sha256$20000$pTmQUAyZVZfn$+7LlWc5nqe/5HJ2lY4sIQRQ5aIwWQHOkAqUAkd02ld8=	\N	f	1224etnisarahialvare	Etnisarahi 	Alvarez Martinez	demo@demo.com	f	t	2019-01-21 03:09:00.542591+00	5
1225	pbkdf2_sha256$20000$EGpMMFtk7lCQ$6JEoez0IF5OSLOsxFErbC7a14del1aMrMS7+Ur9lDZk=	\N	f	1225alineyuleymibola	Aline Yuleymi 	Bolaños Valdovinos	demo@demo.com	f	t	2019-01-21 03:09:00.566248+00	5
1332	pbkdf2_sha256$20000$VtpdhfN4fppj$V+Gbe+m2U9ccohT+Nwi0szuho1u7KmMLesMybXDYKhs=	\N	f	mflor32	Miguel Angel	Flores Cordoba	demo@demo.com	f	t	2019-01-22 21:11:48.353841+00	5
1333	pbkdf2_sha256$20000$JMdP19jel4Xv$BVvsEDo26MbbgetqUXRylUYsfCvTnJCfPOu+3SrU5cU=	\N	f	azela33	Alejandro	Zelayaran Mnartin	demo@demo.com	f	t	2019-01-22 21:11:48.379412+00	5
1334	pbkdf2_sha256$20000$hK0XzpbCboXY$C7jiDls1ZkETnqkHbjvMhjSsCy7fayElHV2oOnVKn0k=	\N	f	pmaza34	Patricio	Maza Perez	demo@demo.com	f	t	2019-01-22 21:11:48.406627+00	5
1335	pbkdf2_sha256$20000$2M9GPOBM83GN$KDqAhSSSKxxj52G3/CNC+WMrYA4Iwm+k9nfp9w38GG8=	\N	f	dgonz35	Diego	Gonzalez Hernadez	demo@demo.com	f	t	2019-01-22 21:11:48.450393+00	5
1336	pbkdf2_sha256$20000$8rgPwbdQOGNM$WR/JHsXz8LNJvr27xLLNIcIrJtLKcNBmDQnOOyLmDCk=	\N	f	jbord36	Juan	Bordes Ibañez	demo@demo.com	f	t	2019-01-22 21:11:48.485871+00	5
1337	pbkdf2_sha256$20000$RDCbr7ovP9l4$0QbA4/Fn0N6haofuVWRQj3IUPVlqBTonmjWlSCw/vkE=	\N	f	bkoch37	Broughton	Kochefe Alvarez	demo@demo.com	f	t	2019-01-22 21:11:48.51429+00	5
1338	pbkdf2_sha256$20000$GNiUslE6tDXd$IDeD5admt7/IKl8NWihPsWtlvcfSonV73W2iUaksho8=	\N	f	ecanc38	Eduardo	Canchola Rios	demo@demo.com	f	t	2019-01-22 21:11:48.539572+00	5
1339	pbkdf2_sha256$20000$pFN6pbnugHu0$Us0TMYm9+Zb5wa2G3CS+vz6Q9uSzpJUkhAa5Fo5Gnvo=	\N	f	agarc39	Armando	Garcia Zapico	demo@demo.com	f	t	2019-01-22 21:11:48.56518+00	5
1340	pbkdf2_sha256$20000$Tj3MO6U5kPHi$i/sawTkYV7g2NDpv4DhzZUdMtI1h1LQ6r3q43uH4D2o=	\N	f	agarc40	Andres	Garcia Zapico	demo@demo.com	f	t	2019-01-22 21:11:48.589661+00	5
1341	pbkdf2_sha256$20000$DeTtXj1diTYJ$PLuj4uuPm4BwvgrRkOvMonXVgsPR7zfgo5CTRYxeciw=	\N	f	dmalt41	Diego	Maltos Loera	demo@demo.com	f	t	2019-01-22 21:11:48.614246+00	5
1342	pbkdf2_sha256$20000$ZghMAbKoYpSS$NS9kMs7mBPC1Msi/iw9oPWxwJpOLKAp7fiRgI6/nSms=	\N	f	frodr42	Francisco	Rodriguez Fuentes	demo@demo.com	f	t	2019-01-22 21:11:48.638904+00	5
1343	pbkdf2_sha256$20000$7k2PmyVrSamD$vp6BMFP2nOy9kXhVNwvvypRESqzuPG1LZRcQDGGdocg=	\N	f	ealma43	Eugenio	Almagro Nava	demo@demo.com	f	t	2019-01-22 21:11:48.665098+00	5
1344	pbkdf2_sha256$20000$uxP6je33BVcx$szWTl+rG0vgw9bAJeWHBHbAH8HoQKHLGqrFbO6rwh5Q=	\N	f	pgerm44	Pablo	German Alvarez	demo@demo.com	f	t	2019-01-22 21:11:48.689856+00	5
1345	pbkdf2_sha256$20000$mla81qTk0dcl$OMXzwVZY57kM283w/V9Ft5Omy08rjKBtqhw3J0F1OcI=	\N	f	ggedo45	Germán	Gedovius Dallos	demo@demo.com	f	t	2019-01-22 21:11:48.714366+00	5
1346	pbkdf2_sha256$20000$OexyBXNZL4IX$CPsPIlMIKAjFVx7rMd/Itq4aYIKPXaRrVKZcSd51OF8=	\N	f	mlope46	Mauricio	Lopez Sanchez	demo@demo.com	f	t	2019-01-22 21:11:48.738919+00	5
1347	pbkdf2_sha256$20000$xS2SvZg1L3Ho$bbWwwhGQ1SNGm+dcAKz15jluQFvIS2/zH3En8XnloC4=	\N	f	fzama47	Fernando	Zamarron Vieyra	demo@demo.com	f	t	2019-01-22 21:11:48.763624+00	5
1348	pbkdf2_sha256$20000$FYtcWagVNcOF$fcFQ4T+h7/7Dfb5vcuPXN/ftf/ndA0jP9pTeVBKgrEs=	\N	f	aflor48	Alejandro	Flores Cordoba	demo@demo.com	f	t	2019-01-22 21:11:48.789152+00	5
1349	pbkdf2_sha256$20000$RCiKLtZljNtK$PBDoi4ioZYionwuBPZ9mIyvMopQeTZDEdC7KHk2mRj8=	\N	f	mmata49	Mikel	Mata Llana	demo@demo.com	f	t	2019-01-22 21:11:48.815226+00	5
1350	pbkdf2_sha256$20000$IE6vjx6m9brq$O0wwzfcvlD/SFXb9YbTnHKlO0dvpP6jxzr2LalnfUnM=	\N	f	ptorn50	Patricio	Tornel Ordaz	demo@demo.com	f	t	2019-01-22 21:11:48.855254+00	5
1351	pbkdf2_sha256$20000$ySy5rFsSF5QI$MkHMxk8HaaZhkikLS7oLfXUuMJkf46iBUo/WCvMBv+8=	\N	f	mjime51	Mariano	Jimenez Ruede	demo@demo.com	f	t	2019-01-22 21:11:48.882887+00	5
1352	pbkdf2_sha256$20000$xLhQZNC4OOhu$uOzcAOWn8z6rB/eZ4Wq4w5U+yEu0S5lFDtQx6ZTjxIM=	\N	f	mgome52	Marte	Gomez Valles Y Rios	demo@demo.com	f	t	2019-01-22 21:11:48.917351+00	5
1353	pbkdf2_sha256$20000$5sKgZKC8Ggw9$zjN4UwaZA2WbrFUjRu0zcRPo4ioCdn43PZmNLU6LTvE=	\N	f	dkell53	Diego	Keller  	demo@demo.com	f	t	2019-01-22 21:11:48.96067+00	5
1354	pbkdf2_sha256$20000$YtzR9uiDzV4L$j3M40AGiZzxQxfPVva3Rm7Ovf3msOqvBWih3AF3ZwaU=	\N	f	acorn54	Andres	Cornish  	demo@demo.com	f	t	2019-01-22 21:11:48.992206+00	5
1355	pbkdf2_sha256$20000$QwdqDcKgtl5l$CbmahfBvO+rAHOItdJ1buWWCRJNyrZgRBvqGw5TKRnc=	\N	f	cberu55	Carlo	Berumen Bercht	demo@demo.com	f	t	2019-01-22 21:11:49.023982+00	5
1356	pbkdf2_sha256$20000$vwiK2gGx9MOy$YLOjUd/KQTOQFQb/l2VhqW6roB6+RRQTl/nh0/5l/F8=	\N	f	ironq56	Isaac	Ronquillo Malanco	demo@demo.com	f	t	2019-01-22 21:11:49.066553+00	5
1357	pbkdf2_sha256$20000$DfYpmNxYAvjS$U34lR7kZOEaYw/QJoFqmoZ8eGc60uLuCArlDl47ETAU=	\N	f	ecuer57	Eduardo	Cuervo Aguilar	demo@demo.com	f	t	2019-01-22 21:11:49.098336+00	5
1358	pbkdf2_sha256$20000$ZtmeTYt1oUMe$nU0FzAmQAJ949VfPs3n1jOWaUnPereYOPYsvpKF4H68=	\N	f	egall58	Emilio	Gallegos Hidalgo	demo@demo.com	f	t	2019-01-22 21:11:49.123586+00	5
1359	pbkdf2_sha256$20000$7WWYlV9LNgbo$En8vBgyTKbYa8SH1gprrEKdW6+dcE2nDClbWCUbBYAo=	\N	f	dbris59	Diego	Briseño Andres	demo@demo.com	f	t	2019-01-22 21:11:49.148771+00	5
1360	pbkdf2_sha256$20000$Qg6FzNOHEErs$J3Gdn61knJmxiMa0yx+TGvaqtnnOvX8W3h+lvDrw93M=	\N	f	pguzm60	Patricio	Guzman Casas	demo@demo.com	f	t	2019-01-22 21:11:49.174879+00	5
1361	pbkdf2_sha256$20000$FiZZRzTIx1ka$mQBS/JFabPTlZ7QTnegqd5GSIljrT1x+/RVNfRKp7DU=	\N	f	fvira61	Friancisco	Viramontes Rios	demo@demo.com	f	t	2019-01-22 21:11:49.200058+00	5
1362	pbkdf2_sha256$20000$0TvQS0PfZp2u$jolfF3QtFvqvCgBygP62ngx8YOEkJqMrKw/tN4wq/0Q=	\N	f	dsan 62	Diego	San Ramon Alvarez	demo@demo.com	f	t	2019-01-22 21:11:49.225864+00	5
1363	pbkdf2_sha256$20000$SGB6SyTzgSbS$oeeZp820YJZvods5YxgIFbxHlU2epUO22d2FH2g8hyc=	\N	f	erubi63	Emiliano	Rubio Hernadez	demo@demo.com	f	t	2019-01-22 21:11:49.250888+00	5
1364	pbkdf2_sha256$20000$5O0qtvDxXMa1$QNZCkLXiB2YIV5cTa5DILuEl/I6R3FJPvcu6slhlBNo=	\N	f	msalo64	Mateo	Salom  	demo@demo.com	f	t	2019-01-22 21:11:49.276203+00	5
1365	pbkdf2_sha256$20000$JzVbxThnXyqg$sZe+kxzUZwiWoFfArj66r+cMLnZHda0G/LC27h/9v80=	\N	f	avela65	Amador	Velazquez  	demo@demo.com	f	t	2019-01-22 21:11:49.301528+00	5
1366	pbkdf2_sha256$20000$R90QOJ0grvtE$Pfj4ZWa0o9hk22H6Sljxppak0nVIVQaFuy2/Y0fPgQw=	\N	f	ragua66	Raul	Aguas Macias	demo@demo.com	f	t	2019-01-22 21:11:49.32647+00	5
1367	pbkdf2_sha256$20000$Ara9H4yYX0W0$HG4+mOY+nUBHm6gH616IVvO2PvZDtCk8Pyh+7rvifpE=	\N	f	lleal67	Luis Ricardo	Leal Gandará	demo@demo.com	f	t	2019-01-22 21:11:49.351699+00	5
1368	pbkdf2_sha256$20000$eaSS5rPP6UDg$0oqAFrH7UJvkAsOSd0bklsP//OUKw73X9T2nk7YXE0g=	\N	f	mpere68	Mauricio	Perez Jimenez	demo@demo.com	f	t	2019-01-22 21:11:49.377471+00	5
1369	pbkdf2_sha256$20000$hOyY2nXTUAH0$ddGECKEZgX12EO45pLSExvQjysc4BjdBZ4hABmGGaZw=	\N	f	dayal69	Diego Emiliano	Ayala Garcia	demo@demo.com	f	t	2019-01-22 21:11:49.403049+00	5
1370	pbkdf2_sha256$20000$tOus3a0jsE3h$fRwSRC7+qpWtQniyMFm5q/XB1GnTH5d6STf4HF/o7ag=	\N	f	dayal70	Diego	Ayala Represas	demo@demo.com	f	t	2019-01-22 21:11:49.428527+00	5
1371	pbkdf2_sha256$20000$iXbuZOeUBvpO$XdZK2kM0UfMoNgdSLEXf8+7ouDQCUABht+keOTtaxcs=	\N	f	rgran71	Raúl	Granadillo Quintana	demo@demo.com	f	t	2019-01-22 21:11:49.454242+00	5
1372	pbkdf2_sha256$20000$lSp7ZEIqVIVd$rNdRyTRKEf8NcyfipoACIN4rHOovg+5oWx84h2ZGQ2w=	\N	f	wcora72	Walter	Coratella Lavalle	demo@demo.com	f	t	2019-01-22 21:11:49.479852+00	5
1373	pbkdf2_sha256$20000$Eyn4hviwwtWt$apPUapPIJG9lp4lubKRPbfRytC0tmTl0QSktpUVj8H4=	\N	f	dgonz73	Diego	Gonzalez Allier	demo@demo.com	f	t	2019-01-22 21:11:49.504923+00	5
1374	pbkdf2_sha256$20000$QAEjVrdlkDIV$/fCCzt6BZZF07ZHc6By1QP/dpzUtie+ewJqRbzzUA5w=	\N	f	paraq74	Paul	Araque Fernandez	demo@demo.com	f	t	2019-01-22 21:11:49.529705+00	5
1375	pbkdf2_sha256$20000$pTsAz3helFf1$wirX2gpFMA5a3db8JS5fAoBtBlhltZtxVITAzFE/Pbw=	\N	f	malan75	Mateo	Alanis Chapa	demo@demo.com	f	t	2019-01-22 21:11:49.555607+00	5
1376	pbkdf2_sha256$20000$tmXh9vYO4QEg$Eck2bQxTku8eOakDJe/inmIw1g0aVXPndw98aiEHtbU=	\N	f	jpere76	Juan Pablo	Perez Beltran	demo@demo.com	f	t	2019-01-22 21:11:49.580199+00	5
1377	pbkdf2_sha256$20000$LvjqJZUtOcCF$vScwUdvVBUc9qWnRDMwldVFkVthYj+mvE93mfMsx0Vo=	\N	f	achav77	Alonso	Chavez Erba	demo@demo.com	f	t	2019-01-22 21:11:49.605366+00	5
1378	pbkdf2_sha256$20000$aThS3vLVNI4B$ijhPd5iUWE0rPWJfwdaqy1VBF36QGzP6FAUO9Jyatug=	\N	f	erent78	Enrique	Renteria Soriano	demo@demo.com	f	t	2019-01-22 21:11:49.629841+00	5
1379	pbkdf2_sha256$20000$bK7HP0v3bUUU$FK2du4p4kfMyt4wklUbRQ09/OcB7HpXxyP2MoBxEflo=	\N	f	lsolo79	Luis	Solorzanouribe  	demo@demo.com	f	t	2019-01-22 21:11:49.655698+00	5
1380	pbkdf2_sha256$20000$aHnZeduwhnUB$+OgPEOlNvB8LChBpVC8bzuIpd1r1f13hR04zuYmZhic=	\N	f	edel 80	Erick	Del Alizal	demo@demo.com	f	t	2019-01-22 21:11:49.680392+00	5
1381	pbkdf2_sha256$20000$rN0edFgm07Ox$IgxAaX1vBZhH/zBYWZlk7qZvIqwYFwVDSoPpbzQHak4=	\N	f	falzu81	Fernando	Alzuarte Orozco	demo@demo.com	f	t	2019-01-22 21:11:49.705472+00	5
1382	pbkdf2_sha256$20000$Bn3LQJmLHXue$Fj1eTqd28Ohiq4bBbsuANC1HgoJgZWpjc3DKBX+zJnQ=	\N	f	sfern82	Sebastian	Fernandez Cantúa	demo@demo.com	f	t	2019-01-22 21:11:49.730296+00	5
1383	pbkdf2_sha256$20000$TO30XtozdST0$m3d71QgthU2ZWggpyrRXx+y+kZ+PVsNDAYkhYixjaks=	\N	f	eagui83	Emilio	Aguilar Olivares	demo@demo.com	f	t	2019-01-22 21:11:49.754816+00	5
1384	pbkdf2_sha256$20000$2nOO4jlv9Fvo$i1+1dcvzKkplAhBtt6mlxJn5rE0xhaPyJ9PTfsDdHmY=	\N	f	jmore84	Jorge	Moreno  	demo@demo.com	f	t	2019-01-22 21:11:49.779272+00	5
1171	pbkdf2_sha256$20000$WY8yTZd7R4J0$G/HRtK/IaTY/Cbi66/dkN9kfCkldgByVBSGa35kZK9w=	2019-01-21 17:35:53.366433+00	f	1171joseluissuarez 	Jose 	Luis Suarez 	demo@demo.com	f	t	2019-01-21 03:08:59.254057+00	5
1385	pbkdf2_sha256$20000$oZBhUAUxjUE7$F8k/RrYSIBRKsITUIoEwL4mEwqp4gRTZ4dBQoH3U/Wk=	\N	f	cguti85	Claudio	Gutierrez  	demo@demo.com	f	t	2019-01-22 21:11:49.803885+00	5
1226	pbkdf2_sha256$20000$UiuJ6S8EOCSm$JOTJTAzBGB1dRCoUpMzy+IW+YAxOI+sZABbX4wPoWc0=	2019-01-21 19:16:16.096919+00	f	director	Alexis	Aceves	name@example.com	f	t	2019-01-21 16:21:14.12942+00	2
1386	pbkdf2_sha256$20000$Fd8DHJhHyd2S$31yTT6UfLTO7A+V3J3eKuqRzNw2dUiJlpKXh9lN/WXw=	\N	f	pjime86	Patricio	Jimenez Rueda	demo@demo.com	f	t	2019-01-22 21:11:49.828219+00	5
1387	pbkdf2_sha256$20000$OMP2dOZtLiD9$urhR66vXSBAsLYSAsFyScqtembnWA1jpPi7Nu96vXu4=	\N	f	rzara87	Rodrigo	Zarazua Talavera	demo@demo.com	f	t	2019-01-22 21:11:49.853669+00	5
1388	pbkdf2_sha256$20000$yLD5TIIqynuq$Xh8nu2yC0aqEZoPSGyMFzCYGxerGPVW/uPXUhiyOPro=	\N	f	amald88	Antonio	Maldonado Coba	demo@demo.com	f	t	2019-01-22 21:11:49.878644+00	5
1389	pbkdf2_sha256$20000$pBw5eV9tiXQA$uzdZ4Yvzdub6Kink56R7rj06RxrY03UHNBk4JGMuKM0=	\N	f	jmart89	Jose Emiliano	Martinez Mondragon	demo@demo.com	f	t	2019-01-22 21:11:49.903047+00	5
1390	pbkdf2_sha256$20000$oGqiaWSbGPQ0$ByMfMrBfliaDH2tSvF9URhydNx9U9OWqPqIe1lA4n+Q=	\N	f	drami90	Diego	Ramirez  	demo@demo.com	f	t	2019-01-22 21:11:49.92868+00	5
1391	pbkdf2_sha256$20000$PiP0S0Khq1k5$MpSC6wDcf1bfJCuCojtBZ1PjkZhuw7TtcX+l+bet4bo=	\N	f	dlope91	Diego	Lopez Chumacero	demo@demo.com	f	t	2019-01-22 21:11:49.953218+00	5
1392	pbkdf2_sha256$20000$4wxfnu8CqzFb$oii48fquBtgDfP4GMn9h19akpna75RIdFvBYa3FLRLY=	\N	f	pmatt92	Paolo	Mattarano Unda	demo@demo.com	f	t	2019-01-22 21:11:49.977686+00	5
1393	pbkdf2_sha256$20000$Oh7P4sJwphdN$J+hzeBIXcVg6MJZSkuXdBvbojAN/o2LcJvYZ+Uog+m8=	\N	f	iorti93	Ian	Ortiz De La Huerta	demo@demo.com	f	t	2019-01-22 21:11:50.002505+00	5
1394	pbkdf2_sha256$20000$x4qKXiapdgNC$my3YqZFWG8TDrRICGnHDhUv05FHkxyWGOGxhbXXiH0k=	\N	f	davel94	Derek	Avelar  	demo@demo.com	f	t	2019-01-22 21:11:50.026657+00	5
1395	pbkdf2_sha256$20000$bYMoUyYCxMdq$tf7YfMj2VrdE7AkEj4Wsj9cBtoEpnx4tJ6SPDP2Yvig=	\N	f	pgonz95	Pablo	Gonzalez  	demo@demo.com	f	t	2019-01-22 21:11:50.052996+00	5
1396	pbkdf2_sha256$20000$vPpxdWOQkkST$S9DzDM6vOEldi+QXzftYJqQ3DHH7cYa7boStGumw5W0=	\N	f	arodr96	Alexis	Rodriguez Cobo	demo@demo.com	f	t	2019-01-22 21:11:50.077242+00	5
1397	pbkdf2_sha256$20000$UZvQDPCosl8A$wPA9FP9q0RAhBhitqg+kDppoOCbx2CNn5C9lR8kuemY=	\N	f	dgarc97	Diego	Garcia Conde	demo@demo.com	f	t	2019-01-22 21:11:50.101833+00	5
1398	pbkdf2_sha256$20000$BjjnX263zCc9$SeLaaPxb32hVY5cZuMiZGKlEkfeZOnsnnZb4GBoOcgQ=	\N	f	ahoff98	Andres	Hofftman  	demo@demo.com	f	t	2019-01-22 21:11:50.12606+00	5
1399	pbkdf2_sha256$20000$F7TOJ7NOx4fI$T22DeC5akZcFz2mtJFILadbkCbScPYNootE+dh2FvIk=	\N	f	sbern99	Sebastian	Bernot Fournais	demo@demo.com	f	t	2019-01-22 21:11:50.15102+00	5
1400	pbkdf2_sha256$20000$fBiyPTHaoFBT$VQ1C7PQ40zuidobNYUu658vYmoJbgLShaViVPfo2hl4=	\N	f	emaga00	Ernesto	Magaña Torres	demo@demo.com	f	t	2019-01-22 21:11:50.175374+00	5
1401	pbkdf2_sha256$20000$1XIvOVxMdFLz$HIveTTVzxEMxT7R64elDsZT1RQAyTqNnprf3mRX8hsE=	\N	f	acort01	Andres	Cortina  	demo@demo.com	f	t	2019-01-22 21:11:50.199865+00	5
1402	pbkdf2_sha256$20000$QM4PzoVHXUMq$27TZxvBL5DCCL8sOIlNUmvo/ORPWutoO2pUT4GEDEa0=	\N	f	aeche02	Alejandro	Echerman  	demo@demo.com	f	t	2019-01-22 21:11:50.22402+00	5
1403	pbkdf2_sha256$20000$JPqxNQy09bHP$epgiMH6RM+5Sr6YQP2azjazQmQ9PQdZI95IvxO9Y/9E=	\N	f	mmane03	Martin	Manero Birlarin	demo@demo.com	f	t	2019-01-22 21:11:50.248699+00	5
1404	pbkdf2_sha256$20000$rxH9sGx6qo1o$nerSTJLHMX+CaiNvO750z5ZW1oeS69ozYY+op9oj6Hw=	\N	f	aagui04	Alfredo	Aguirre Garfias	demo@demo.com	f	t	2019-01-22 21:11:50.273549+00	5
1405	pbkdf2_sha256$20000$ETbOCNc7Y8MQ$QFQorVFjuynlJrKr/yg2+HACYUrn6FQphXHKqTRZCsY=	\N	f	falzu05	Fernando	Alzuarte  	demo@demo.com	f	t	2019-01-22 21:11:50.297838+00	5
1406	pbkdf2_sha256$20000$tSKJ3lYQDwmZ$vQXI4p36erbjFMrEtWgEIjdEl9VV/66oz52w9xKxD78=	\N	f	svale06	Sofia	Valera Gomez	demo@demo.com	f	t	2019-01-22 21:11:50.322497+00	5
1407	pbkdf2_sha256$20000$nPJLjK1Pwzfj$r9BF30W5YXpUAJc9P3/5p6sxUIhfnk8VJEdkRfrerY8=	\N	f	asolo07	Ana Paola	Solorzano Uribe	demo@demo.com	f	t	2019-01-22 21:11:50.347248+00	5
1408	pbkdf2_sha256$20000$02YqJ5txGur6$tghRu9Oi0E5X9Z0vKt+D1J2mO1KtKtyfq7a6XoKeJkQ=	\N	f	sterc08	Sofia	Tercero Arellano	demo@demo.com	f	t	2019-01-22 21:11:50.371917+00	5
1409	pbkdf2_sha256$20000$ViYLh6jgiEAc$SB2gn4iMdolC2oKah/KfZe5hEibCz574YyfqCCgg0BY=	\N	f	xloza09	Ximena	Lozano Williams	demo@demo.com	f	t	2019-01-22 21:11:50.396462+00	5
1410	pbkdf2_sha256$20000$r9P1LmOjd03x$DFkZRx/ZAKspi7vn/WXmU4RyPMTz8UhpKgfLiovWcE0=	\N	f	rmuño10	Regina	Muñoz Cano	demo@demo.com	f	t	2019-01-22 21:11:50.421118+00	5
1411	pbkdf2_sha256$20000$mkymowkRt5Af$n9ZOWwR8biGS79Azkp5LhKN+QI9C8a2JSxtt3114Eok=	\N	f	rdelg11	Regina	Delgado Ulibarri	demo@demo.com	f	t	2019-01-22 21:11:50.445977+00	5
1412	pbkdf2_sha256$20000$0DFt2pk9aoFA$TVdXto553IEo/sKF/OamuR4A4/GTkP0xpIoWspxCHqg=	\N	f	acand12	Alexa	Candano Andrade	demo@demo.com	f	t	2019-01-22 21:11:50.470198+00	5
1413	pbkdf2_sha256$20000$ekrR8TKjuxD1$AZJGzi9FIKaAgOKJzodJu37tybSlrJHSHhIFpC4/chQ=	\N	f	asauv13	Ameli	Sauvage Benitez	demo@demo.com	f	t	2019-01-22 21:11:50.495174+00	5
1414	pbkdf2_sha256$20000$n1MVuGOG6vSs$XeU/giUamHPNYNlp8uPwxgUvQXNKKxin9Y5C+Mn29gQ=	\N	f	acorr14	Amaya	Corral Garcia	demo@demo.com	f	t	2019-01-22 21:11:50.520087+00	5
1415	pbkdf2_sha256$20000$L1f1p3BkN8mK$aqYCeXe488/QO/zcGVtuyX11ulG4fCuc7UQuFvv5Zzc=	\N	f	fbari15	Francesca	Barin Berumen	demo@demo.com	f	t	2019-01-22 21:11:50.545747+00	5
1416	pbkdf2_sha256$20000$vfAyPu9lkRXS$Te8/ZvI+0y2Gc5l9zvsqcUYfJ2kHwEuBGJgx9kOL0wg=	\N	f	jnava16	Jasbet	Navas Lesma	demo@demo.com	f	t	2019-01-22 21:11:50.570765+00	5
1417	pbkdf2_sha256$20000$jr7uknNqpBmE$BHaHgkfgSayyUDzzuEbvRShBdMeuL6JQWbQXqC0UZmw=	\N	f	bjime17	Bruno	Jimenez Alcala	demo@demo.com	f	t	2019-01-22 21:11:50.595615+00	5
1418	pbkdf2_sha256$20000$vbSNXsOKfgjB$3WCZRFImkMPxFmbT8sir5lOolUdR0FgxmavYpYibvZ4=	\N	f	jbern18	Juan Pablo	Bernal Williams	demo@demo.com	f	t	2019-01-22 21:11:50.620569+00	5
1419	pbkdf2_sha256$20000$fACsXo9ElmRk$BSSmndcLOhkmfcQ7RojwSpTFwTDl0gTM2o8fAukgmq4=	\N	f	ccald19	Camila	Calderon Hurtado	demo@demo.com	f	t	2019-01-22 21:11:50.64523+00	5
1420	pbkdf2_sha256$20000$INRRs56QYuMm$hoCsNQBKiT2JtS/flKOab6c3bMDoCD14SdtnG97mJ5w=	\N	f	afern20	Amaia	Fernandez Ayala	demo@demo.com	f	t	2019-01-22 21:11:50.670446+00	5
1421	pbkdf2_sha256$20000$Simhz6UOd6vI$TySPH+TMANjb4P6V6KJoQnte2WEZRG9aIZzi1NLv57g=	\N	f	bjime21	Bruno	Jimenez Alcala	demo@demo.com	f	t	2019-01-22 21:11:50.695899+00	5
1422	pbkdf2_sha256$20000$svJXxDewbf6O$3pPK4usGDwfrwfZb7ublzSLum0LgLlsoF/WaifcFx58=	\N	f	jnava22	Jasbet	Navas Ledesma	demo@demo.com	f	t	2019-01-22 21:11:50.7201+00	5
1423	pbkdf2_sha256$20000$BK0sTLppaJEQ$/9QlnyAY8o/RKew58v8QRdZ5/WLde/VClzzx6LGhLwk=	\N	f	morte23	Melissa	Ortega Ascencio	demo@demo.com	f	t	2019-01-22 21:11:50.745005+00	5
1424	pbkdf2_sha256$20000$8zmdy0d30kO4$JEk6uJMZNiMq7NjEUJ46QmPFxTo6Uhm9HcAk9Oq6GoU=	\N	f	tpala24	Tifanny	Palacios Alvarez	demo@demo.com	f	t	2019-01-22 21:11:50.76957+00	5
1425	pbkdf2_sha256$20000$0BewPVkLTOwh$QspbgI8eyPwIEc4aDvOPWp1Bos2nuYK8QxOxMUrNJoU=	\N	f	asegu25	Anapaula	Segura Garcia	demo@demo.com	f	t	2019-01-22 21:11:50.794042+00	5
1426	pbkdf2_sha256$20000$BL0MzW7HXKEy$Zpdl7Z8WNvL9HTFAWvrjSq9GMu2eh7zXqz+CUtjX44s=	\N	f	turib26	Tomas	Uribe Pineda	demo@demo.com	f	t	2019-01-22 21:11:50.81901+00	5
10	pbkdf2_sha256$20000$7oB0NODOaBYp$cN3c9GFP5l+Ccyyxj6kcuI1MwNAg5qtnPnAnWYxWgJM=	\N	f	10inttihoffmannbonna	Intti	Hoffmann Bonnave	demo@demo.com	f	t	2019-01-21 03:08:29.626205+00	5
1427	pbkdf2_sha256$20000$zc8NfZRCdWyd$zoTV/UHh8Ud3Z6NEtd/hYg+rXLwnQGW+7H09o0bzz6s=	\N	f	pguzm27	Patricio	Guzman Dies	demo@demo.com	f	t	2019-01-22 21:11:50.844683+00	5
1428	pbkdf2_sha256$20000$EUH4smQopUvs$Itz/eeICUHjEnpkgnIEGTy8xQrkyRD4xesv5wT4zZ+g=	\N	f	dhern28	Daniela	Hernadez Rico	demo@demo.com	f	t	2019-01-22 21:11:50.869596+00	5
1429	pbkdf2_sha256$20000$hh2knoHoPB1g$NAGww/VVcVTL6RPOGembKIIUaympuDefSz8CZH88hlA=	\N	f	lmont29	Laos	Montenegro   	demo@demo.com	f	t	2019-01-22 21:11:50.897494+00	5
1430	pbkdf2_sha256$20000$FiCSDCYOq73x$sVHELhXeXxdMYTdbMPDTX3QqhdrrhTkmCR8CvWAPo9k=	\N	f	ploza30	Paulina	Lozano Williams	demo@demo.com	f	t	2019-01-22 21:11:50.922729+00	5
1431	pbkdf2_sha256$20000$4CpHCnW5faPf$p/1YucjFjhnY9GhGO0qFuU7MxyT5tcpv+KSQn8hYuHE=	\N	f	anava31	Alejandra	Navas Lesma	demo@demo.com	f	t	2019-01-22 21:11:50.947187+00	5
1432	pbkdf2_sha256$20000$LqQk2P69ETEJ$0RCSIAzHckoKjNRp4hlOmHSkbqoo+iUaWMuLsaC12RU=	\N	f	lrey 32	Liam	Rey Costello	demo@demo.com	f	t	2019-01-22 21:11:50.971796+00	5
1433	pbkdf2_sha256$20000$Zig8LZauJjgy$X1i2jzqmBSDo03fwTXG853FYz3g/aIn9wBU8IFFjfgc=	\N	f	jgome33	Jose Miguel	Gomez Gonzalez	demo@demo.com	f	t	2019-01-22 21:11:50.995958+00	5
1434	pbkdf2_sha256$20000$B10usx7AeIkX$aRRyd5Qx9GH3P1pEMl/3eLlM9nOD2OoZBFVGAis8EaQ=	\N	f	iblan34	Isabella	Blando Momntaño	demo@demo.com	f	t	2019-01-22 21:11:51.02015+00	5
1435	pbkdf2_sha256$20000$vInu5KL5yXQW$L+owy8DHL41D/bygvIwjbwoGOROWQ5SaDBu31uwdDnY=	\N	f	lmach35	Lorenzo	Macher Curatola	demo@demo.com	f	t	2019-01-22 21:11:51.045662+00	5
1436	pbkdf2_sha256$20000$VlsM1F2fZewd$9dm08ZKuIIMaj5bt5yTOvb4H6M1prHe0l+Ua+5Vbigs=	\N	f	srodr36	Sabrina	Rodriguez De La Lanza	demo@demo.com	f	t	2019-01-22 21:11:51.070178+00	5
1437	pbkdf2_sha256$20000$PoL1OqddfrXe$Gw5cPfnZblxRiGVKApEyzxbx8/e4s8HAfrFbFF4kC7Q=	\N	f	rprat37	Roberta	Pratelessi Lopez	demo@demo.com	f	t	2019-01-22 21:11:51.094373+00	5
1438	pbkdf2_sha256$20000$E077ekypq0uW$odiK/BASF4JP7wsXxqDCpV3fJYOq7GqLTFkbfFv1pYY=	\N	f	vguzm38	Valentina	Guzman Ruesga	demo@demo.com	f	t	2019-01-22 21:11:51.118774+00	5
1439	pbkdf2_sha256$20000$8rIT1DSzEgGr$QZ5NyMnLgB1bfoAXXDuhcpfIdxz3QCK1ie5BEEb+EE8=	\N	f	lhern39	Leonardo	Hernadez Torres	demo@demo.com	f	t	2019-01-22 21:11:51.143165+00	5
1440	pbkdf2_sha256$20000$jporg0S615HK$UNQQoPYbmwVDuQ4RDz4iCNZsG2tNxYj3SvApbk1Sr10=	\N	f	lisla40	Luis Alfonso	Islas Montes	demo@demo.com	f	t	2019-01-22 21:11:51.167645+00	5
1441	pbkdf2_sha256$20000$0h6E7oyT42O8$wh9VwS5Y5j/BgN6mKLbzUfGSgTuHFjSTe+vvxVKzlV8=	\N	f	vorti41	Valeria	Ortiz Gonzalez	demo@demo.com	f	t	2019-01-22 21:11:51.191893+00	5
1442	pbkdf2_sha256$20000$m5OgTtZnjNQA$nO4q0aRdsJuiHyUTDf7NiewqJoMNRqxyZLtOtj/5It8=	\N	f	jbern42	Juan Pablo	Bernal Williams	demo@demo.com	f	t	2019-01-22 21:11:51.215912+00	5
1443	pbkdf2_sha256$20000$yvwVCWbFZuyr$/GRXl3ts876tsZylw07FvlFQXlHTi1kITFqv/Gk20ac=	\N	f	aespe43	Aitana	Espeja Espinosa	demo@demo.com	f	t	2019-01-22 21:11:51.240408+00	5
1444	pbkdf2_sha256$20000$hrsnO24ZlR9J$q/SEr8yyzP/oL8YrjwE/tO3oPvIltepFFhRnrY09nS4=	\N	f	mespe44	Mikel	Espeja Espinosa	demo@demo.com	f	t	2019-01-22 21:11:51.265089+00	5
1445	pbkdf2_sha256$20000$N41iLSbMc6a8$v4/zh60gKugf4AvuKAmIr4jPz6olZHE733qfmonq2NA=	\N	f	roliv45	Regina	Oliva Hernadez	demo@demo.com	f	t	2019-01-22 21:11:51.289261+00	5
1446	pbkdf2_sha256$20000$VMtakG1SeoPy$iwJ/uoxBtRHxuR+UvY3nezchibJGWI1Dv6phD/YR/xE=	\N	f	vorte46	Victor Alexis	Ortega Contreras	demo@demo.com	f	t	2019-01-22 21:11:51.313434+00	5
1447	pbkdf2_sha256$20000$d21R1f5MPha7$WnsqSwGKemqFdQIVRhoMmqIhf7WEhukPueLcsHtFSik=	\N	f	ebarr47	Emilio Rufino	Barrera Almazan	demo@demo.com	f	t	2019-01-22 21:11:51.339195+00	5
1448	pbkdf2_sha256$20000$zoqTWRPDIrK4$1+L19VNS5lueHxJFtwahQAnIINgLvpT3LEHuYugW8G8=	\N	f	jland48	Jeronimo	Landa Rojas	demo@demo.com	f	t	2019-01-22 21:11:51.363869+00	5
1449	pbkdf2_sha256$20000$9cSMWMx50zV2$cBkP+Q22dsh70SwAHImUQBBKKQU+IZBTTGP0m5hRxJI=	\N	f	dpere49	Daniel	Perez Fuentes	demo@demo.com	f	t	2019-01-22 21:11:51.388047+00	5
1450	pbkdf2_sha256$20000$6ePLuQLw021o$NO3cb6T2fL5nqCq7B682+EShBmnSfTg4YTiX+vWXQfo=	\N	f	lvere50	Leonardo	Verea Lopez	demo@demo.com	f	t	2019-01-22 21:11:51.412754+00	5
1451	pbkdf2_sha256$20000$p9n5t8vTtld3$Xju45TI2y5OWvi/DzLG7yvr/rlcJg6sj7j6xS9WgCKU=	\N	f	apiza51	Armando	Pizaña Hornelas	demo@demo.com	f	t	2019-01-22 21:11:51.437043+00	5
1452	pbkdf2_sha256$20000$x58iynanVTiw$2pcxc3KJ02hEZ+DeyEzVj0g0UHFFIkYgTfFxe5pmysg=	\N	f	apiza52	Ana Patricia	Pizaña Hornelas	demo@demo.com	f	t	2019-01-22 21:11:51.461541+00	5
1453	pbkdf2_sha256$20000$aoa7R31E11QD$WZtw7HzmdfkHwpa/zbOheWnqiLjBxNtx3dz+xBqUIR0=	\N	f	prent53	Patricio	Renteria Soriano	demo@demo.com	f	t	2019-01-22 21:11:51.485673+00	5
1454	pbkdf2_sha256$20000$77Sjr4ONeLLj$ToxyJhG8th9zse9DJ0BZG5HPnXA0b59PB0YqmAKNM1A=	\N	f	stole54	Samuel Antonio	Toledo Cordoba	demo@demo.com	f	t	2019-01-22 21:11:51.51002+00	5
1455	pbkdf2_sha256$20000$cSw6Atp5IM9F$6ohQC4bRHUTJz26kn8CmaPxwP52gJnxwbQzBUbiBAbc=	\N	f	ebarr55	Emilio David	Barrera Almazan	demo@demo.com	f	t	2019-01-22 21:11:51.53467+00	5
1456	pbkdf2_sha256$20000$tmEkj80MzjMv$5vDAgY0qcv39kGXOPOQjG9BT2jK/J1f71M8zBT+XGyE=	\N	f	wfeli56	Wiliam Eduardo	Felix Crespo Huerta	demo@demo.com	f	t	2019-01-22 21:11:51.56015+00	5
1457	pbkdf2_sha256$20000$eRM8ai8PvjUX$7GiOuLoEulVo4sm3RcnXVdbnG2MA4s4dJwVt4OWlSj8=	\N	f	dpere57	David	Perez Trompolidis	demo@demo.com	f	t	2019-01-22 21:11:51.584951+00	5
1458	pbkdf2_sha256$20000$C6P6pX6rEzPO$Aym348JY5MiZVE9hUrnIdPk4VfuKDYo0vV6E/80upAw=	\N	f	jbaut58	Juan Pablo	Bautista Zepeda	demo@demo.com	f	t	2019-01-22 21:11:51.613428+00	5
1459	pbkdf2_sha256$20000$rJVFhh1JCbTH$FSmqFeuGVZz1N545BI7pEZDUovwCs24aniIqL/pDiFI=	\N	f	dsanc59	Dario	Sanchez Guerrero	demo@demo.com	f	t	2019-01-22 21:11:51.637566+00	5
1460	pbkdf2_sha256$20000$jrcu8j1RieHC$GsZGJ2ED1dyiOi40iCV7zgoiKwuphtU1/O6DHeGu3lc=	\N	f	egall60	Emilio	Gallegos Hidalgo	demo@demo.com	f	t	2019-01-22 21:11:51.662193+00	5
1461	pbkdf2_sha256$20000$0YygHlsztJiE$gen3fr+PIjk59E8K2WWq/Jja4WlSAW1dNaYQNXJi/zE=	\N	f	sguzm61	Santiago	Guzman Dies	demo@demo.com	f	t	2019-01-22 21:11:51.686781+00	5
1462	pbkdf2_sha256$20000$ojsMuvWJed9b$+hxuhaAPYrICdh6oTf19x2UIU61Ap+V6wyWg9L+FhD0=	\N	f	mlope62	Mauricio	Lopez Sanchez	demo@demo.com	f	t	2019-01-22 21:11:51.711908+00	5
1463	pbkdf2_sha256$20000$SByWm8xs46oV$BD8b64CCaYOlueU2HlUfYYw2nX5tGCwQbd0bsnROvFg=	\N	f	jolve63	Jorge	Olvera Romero	demo@demo.com	f	t	2019-01-22 21:11:51.736738+00	5
1464	pbkdf2_sha256$20000$WqhYt49TqIqA$d4R9s04+Z45AalnLpPB7bpg+gX/RIbcS0pUVyOtsuE8=	\N	f	apine64	Andrea	Pinedo Silva	demo@demo.com	f	t	2019-01-22 21:11:51.76101+00	5
1465	pbkdf2_sha256$20000$hG5ZeqXaNh5K$EuEQ6GJg/AWDqurWbUN36vJj+1yHxlHzvVprpCokZZg=	\N	f	mcerv65	Mateo	Cervantes Fernandez	demo@demo.com	f	t	2019-01-22 21:11:51.785378+00	5
11	pbkdf2_sha256$20000$NW96MSJng5X7$yUEPm8zoZLYdphlSzXw2t14bgm6Go1t0WdbP8pZyErY=	\N	f	11mateolebrijagarza	Mateo	Lebrija Garza	demo@demo.com	f	t	2019-01-21 03:08:29.666345+00	5
1274	pbkdf2_sha256$20000$XCOlw0aGOaMi$JUHIgZZBgYUf3ZA8W+MqrS//BeFpQWFef9PT1CqlkcM=	2019-02-11 23:01:56.470743+00	f	ndavalos0141	Nancy	Davalos	demo@demo.com	f	t	2019-01-22 17:01:18.053226+00	4
1270	pbkdf2_sha256$20000$OXMdE9oPIPHs$xhLIsHTa/pgn56TwmMyG+RHEgn+1JdjO+cyR4sW0tSs=	\N	f	amejia0915	Antonio	Mejia	demo@demo.com	f	t	2019-01-22 17:01:17.933745+00	4
1271	pbkdf2_sha256$20000$QW5L3mgPDyaH$SNFV0WTbgNL99i173wkk7adkj1e7Q2UeB0KeNToH5UU=	\N	f	ggarcia0753	Gilberto	Garcia	demo@demo.com	f	t	2019-01-22 17:01:17.959291+00	4
13	pbkdf2_sha256$20000$LfWMoJQKIUSI$Pfivm44tMspIL4WIlVxjmXH3attEBGXCWDrTI9dAOWs=	\N	f	13naraianrattivillar	Naraian	Ratti Villarreal	demo@demo.com	f	t	2019-01-21 03:08:29.730483+00	5
1275	pbkdf2_sha256$20000$w7eUd8dgVb73$17c2dV7M0T64yIFTpcKLmGprwKx7LJ51+++5wek1VX8=	2019-02-12 22:20:45.38237+00	f	dcastillo0987	Daniela	Castillo	demo@demo.com	f	t	2019-01-22 17:01:18.078957+00	4
1262	pbkdf2_sha256$20000$I8KaL8bV0iyQ$UXdSfuGSNkuv2AHtVGcjz8XF4DYdA8Ta2DsjEZ8LiIE=	2019-02-15 17:29:13.765599+00	f	laura0216	Laura		demo@demo.com	f	t	2019-01-22 17:01:17.729981+00	4
1466	pbkdf2_sha256$20000$pk4Ia1SHr7h0$0DJXzfQgSHgeKAUqlciOSzwN9Nv6Xoz2mIS4E8tTlCc=	\N	f	nport66	Nicolas	Portada     	demo@demo.com	f	t	2019-01-22 21:11:51.809474+00	5
1467	pbkdf2_sha256$20000$VyXwbqva5jUm$Uzew2b2qjpusoM7YX/WwIiUAmgYRQBnEM6Oqa6XVrWM=	\N	f	ccoli67	Camila	Colin Hernandez	demo@demo.com	f	t	2019-01-22 21:11:51.834189+00	5
1468	pbkdf2_sha256$20000$lpNEL9bgqDlH$R9V30dnLia348PAYmXC2HsURvqMknGZ2CaXmx66pbpY=	\N	f	xmuño68	Ximena	Muñoz Cano	demo@demo.com	f	t	2019-01-22 21:11:51.858381+00	5
1469	pbkdf2_sha256$20000$qKKBKSgwrMmp$5skrGmPueeuOulvs++8X+swA10LyKLvS6fzn8sBCPdc=	\N	f	acorr69	Amaya	Corral Garcia	demo@demo.com	f	t	2019-01-22 21:11:51.882787+00	5
1470	pbkdf2_sha256$20000$7od7o2qVcxrZ$cG2qK8py2BCUV4ArE5pJHX/pKpuB16sBDc4q827rc/M=	\N	f	aguti70	Agustina	Gutierrez Macaris	demo@demo.com	f	t	2019-01-22 21:11:51.907691+00	5
1471	pbkdf2_sha256$20000$xP2rBEqXHrT5$SaiptMNL4sU1Z9AWyRJiRGKL81j1rcxiPhf2afqMPBw=	\N	f	rloza71	Regina	Lozano Williams	demo@demo.com	f	t	2019-01-22 21:11:51.933447+00	5
1472	pbkdf2_sha256$20000$09gdbgdJRxuR$7V1SgMEfyDtXuicfETevTl5o3wo/w9liW0N345Tfwr0=	\N	f	xloza72	Ximena	Lozano Williams	demo@demo.com	f	t	2019-01-22 21:11:51.958098+00	5
1473	pbkdf2_sha256$20000$x6RIdCeoXK1b$PNzPPrp3iWYR7Zylct9nMaFd7RXIhbtVHKLmlFYvpG8=	\N	f	fport73	Florencia	Portada 	demo@demo.com	f	t	2019-01-22 21:11:51.983135+00	5
1474	pbkdf2_sha256$20000$p0L2YOh35VIh$ozL3Pp717Hkuhf6VHbXfZafFBltU7OIJFxsbBMHyu3I=	\N	f	sfere74	Sofia	Feregrino Barquin	demo@demo.com	f	t	2019-01-22 21:11:52.008035+00	5
1475	pbkdf2_sha256$20000$7iGRaF53jkje$sKOPpp7perRUGM6//TrS20SsQTfFymW3ua3n0N54DDw=	\N	f	vfern75	Valentina	Fernandez   	demo@demo.com	f	t	2019-01-22 21:11:52.033071+00	5
1476	pbkdf2_sha256$20000$l8LbtuyqyJfw$8ET4k5XmpJ5INXsQMZOZvf5+iJdNNRHiOSwGokCQdQY=	\N	f	randr76	Roser	Andrea 	demo@demo.com	f	t	2019-01-22 21:11:52.05813+00	5
1477	pbkdf2_sha256$20000$WWHyi6yAQWx5$fv6HA//j5Hkib6XqlLMxirmn3tndR4gA+GAHBCj7jZM=	\N	f	nhern77	Natalia	Hernandez Suarez	demo@demo.com	f	t	2019-01-22 21:11:52.082764+00	5
1478	pbkdf2_sha256$20000$9Xgqtoqb0Fo4$m9U3PWJwNCrTSAvgL7c81Zh16boLSpLcPwEbWRgiXUE=	\N	f	ccoli78	Camila	Colin Hernandez	demo@demo.com	f	t	2019-01-22 21:11:52.107447+00	5
1479	pbkdf2_sha256$20000$L0bfbUMWN3ns$sSKqPKvrr+UNhDfzU7aK/Dk2qPhjJDaJHWO7je8ot/w=	\N	f	xmuño79	Ximena	Muñoz Cano	demo@demo.com	f	t	2019-01-22 21:11:52.13184+00	5
1480	pbkdf2_sha256$20000$NLhQCOQt0Cti$FgohboeZTLHG0AD6Ktffzl7U+nIuqaP1XLS4V2gR1bg=	\N	f	acorr80	Amaya	Corral Garcia	demo@demo.com	f	t	2019-01-22 21:11:52.15664+00	5
1481	pbkdf2_sha256$20000$ymgPaNo2FeaM$JvTbCvWwBNeZTNHhmCWTGt9pANtSzH49qvo22kyzV1w=	\N	f	aguti81	Agustina	Gutierrez Macaris	demo@demo.com	f	t	2019-01-22 21:11:52.180928+00	5
1482	pbkdf2_sha256$20000$Wi3YvWKvHu0z$pOuMC1yhJ1bzdwcvRjEvYSBZnWGBOd0qjdhovyxuUlU=	\N	f	rloza82	Regina	Lozano Williams	demo@demo.com	f	t	2019-01-22 21:11:52.205068+00	5
1483	pbkdf2_sha256$20000$ZfgOfi6dHaU6$n3N7PDg55o9GOQbrMrGNXAT0aPnCmxZur9t8vbaq1CY=	\N	f	xloza83	Ximena	Lozano Williams	demo@demo.com	f	t	2019-01-22 21:11:52.229199+00	5
1484	pbkdf2_sha256$20000$Dyd174wLDuHm$UVkBK+BXwPC0nCi6CRhJIUVbUQq0TTaWlEig1XrVwg8=	\N	f	fport84	Florencia	Portada   	demo@demo.com	f	t	2019-01-22 21:11:52.253243+00	5
1272	pbkdf2_sha256$20000$3umMhYEVpmGq$Fwg4BLUEjFpWWtuBHjRVqYTeKoqHwYy13lgNJ+XF/QE=	\N	f	colvera0577	César	Olvera	demo@demo.com	f	t	2019-01-22 17:01:18.002012+00	4
1273	pbkdf2_sha256$20000$DrMLtnxcUsaY$MdmABa2Mb+2DHqmQOPikWwTDq1DXeKsMqJqXpXgw0+4=	\N	f	kgomez0918	Katia Yazmin	Gomez	demo@demo.com	f	t	2019-01-22 17:01:18.027088+00	4
1268	pbkdf2_sha256$20000$vw9KPVBAbNCZ$XZGCeVt3igE75+81TgeMeaktMqTntzNgAX2xFdkcOQc=	2019-02-13 20:46:47.688584+00	f	mhernandez0626	Miguel	Hernández	demo@demo.com	f	t	2019-01-22 17:01:17.883607+00	4
1277	pbkdf2_sha256$20000$mKnTkMWZdWk7$TMa/2hfQ9Ud5N78VfYYSeW7mHmcxBWw/AYEd756EC6c=	2019-01-29 23:30:10.569395+00	f	cflores0309	Carlos	Flores	demo@demo.com	f	t	2019-01-22 17:01:18.15019+00	4
1276	pbkdf2_sha256$20000$GR5guH0BjEn9$YMpZ92IHm+j/VMokbZ1ALkwniSypqLwIfYMHZkoN3vs=	\N	f	mflores0397	Marco	Flores	demo@demo.com	f	t	2019-01-22 17:01:18.106578+00	4
1263	pbkdf2_sha256$20000$FldX8IVCjSoL$a2+jh7/0MtnSv3ZAQfRGP0/lQDweEezgTDAX2E3meKQ=	2019-02-27 04:41:50.119482+00	f	isilva0326	Ingrid 	Silva	demo@demo.com	f	t	2019-01-22 17:01:17.756034+00	4
1267	pbkdf2_sha256$20000$H5DAwT1rtGEJ$ORcSDkzb/cdiJkZpv9QDsuFBiCCB5GP9hml5iMDdsdQ=	2019-01-24 04:22:53.794212+00	f	raymundo0840	Jose Juan	Gonzalez Raymundo	demo@demo.com	f	t	2019-01-22 17:01:17.858443+00	4
1279	pbkdf2_sha256$20000$Ayqvlp81nivN$x2lrvz4+V9c/FC+ra1Ru0TOozSzvZWgWmgJYkOqyTGM=	\N	f	acaldino0969	Arturo	Caldiño	demo@demo.com	f	t	2019-01-22 17:01:18.237936+00	4
1485	pbkdf2_sha256$20000$kjzd6MWJhlS2$fqrWg8K+ciMNe627O/hRG59SI8STqoy/zltfMw2fY90=	\N	f	sfere85	Sofia	Feregrino Barquin	demo@demo.com	f	t	2019-01-22 21:11:52.277514+00	5
1486	pbkdf2_sha256$20000$xJ3kYOmApeFn$tqn9HMSiB7YnyejiA6fhtSLW9bnOSz2Vb43vdOKDtE0=	\N	f	vfern86	Valentina	Fernandez   	demo@demo.com	f	t	2019-01-22 21:11:52.302145+00	5
1269	pbkdf2_sha256$20000$fsB0GEHm6y7t$B125z2eOF2RSo3gxted1f45pDgAUzsZaQqyWn62BBPw=	2019-02-05 16:34:26.514348+00	f	jlopez0034	Juan Carlos	López	demo@demo.com	f	t	2019-01-22 17:01:17.90882+00	4
1487	pbkdf2_sha256$20000$tKpLOEVR2Emh$a7PTYuYMYfz+xod86KzVkZrCjbPJ+A+8M5zYzzYKpGs=	\N	f	arose87	Andrea	Roser   	demo@demo.com	f	t	2019-01-22 21:11:52.326637+00	5
1280	pbkdf2_sha256$20000$P510aVQg1Vmb$+Z70V5dtKULdYogBkSkcXDGKcuFVInB+PwrEtoAwPr8=	2019-02-19 06:11:52.415338+00	f	acosta0597	Scarleth	Acosta	demo@demo.com	f	t	2019-01-22 17:01:18.282006+00	4
1227	pbkdf2_sha256$20000$w1Vbjo5Wqxa9$ipRBUdjMFdsJACjEWMPc+We4SkuRNSzSUEM5lZtoPAo=	2019-02-19 02:45:52.218241+00	f	demovalle	Profesor	Demo Valle	name@example.com	f	t	2019-01-21 18:24:44.777458+00	4
1264	pbkdf2_sha256$20000$I61GoQwKG66T$JKuWKkFArie8af6Gx34lPNTF0RvCYuPT1ObGybPIeV4=	\N	f	ggarcia0863	Gilberto 	Garcia	demo@demo.com	f	t	2019-01-22 17:01:17.782469+00	4
1265	pbkdf2_sha256$20000$D4KDyDWrTEWD$cgPQzio7yf2j4JoYgFfWDNEbwIxbANz4A/eg6vcZI0o=	\N	f	ebustamante0317	Eric 	Bustamante	demo@demo.com	f	t	2019-01-22 17:01:17.808419+00	4
14	pbkdf2_sha256$20000$k8i7W6pJxspG$KbewRnkA8dTFNOaXV6Vrl01hI7U0l8yUBtwX51vF2rw=	\N	f	14matiasrebollarcere	Matias	Rebollar Cerezo	demo@demo.com	f	t	2019-01-21 03:08:29.755444+00	5
1488	pbkdf2_sha256$20000$MpRhqoA0XgZg$0RqVzEuO/bvR3u411ZuP+pku/qjC1XiAOJaiR9lInFw=	\N	f	nhern88	Natalia	Hernandez Suarez	demo@demo.com	f	t	2019-01-22 21:11:52.350927+00	5
15	pbkdf2_sha256$20000$sTdtnxVhehEp$tu3A17o6u2jCr9DtVtBRf4mjCLTe5SVU17crC8IfROU=	2019-01-21 19:35:38.50072+00	f	15kairosasrosenfeld	Kai	Rosas Rosenfeld	demo@demo.com	f	t	2019-01-21 03:08:29.779367+00	5
1241	pbkdf2_sha256$20000$eg4quy2Gq3uY$mGV/wNfCcs/bXWUiNJf23o6YTnDYPQaFmdbNKyn8OwQ=	\N	f	luis	Luis	Luis	name@example.com	f	t	2019-01-21 19:31:37.992181+00	4
1489	pbkdf2_sha256$20000$xCpraAFwoHg8$ZoRrztnzsmqPDkpKh16dBgGYd6/9N2IE1hs7JjY1iVM=	\N	f	jparr89	Jorge	Parra Zepeda	demo@demo.com	f	t	2019-01-22 21:11:52.376408+00	5
1490	pbkdf2_sha256$20000$MDWaApknLj1s$nsLttS1M9mcq2fJihJdInMwVnEFRUjcJ/e/Ql0rdlq4=	\N	f	iruis90	Ian	Ruisanchéz De Los Rios	demo@demo.com	f	t	2019-01-22 21:11:52.400816+00	5
1491	pbkdf2_sha256$20000$c1GUFQ3LgOwj$w9t7cPwPukOVSCE/MiAmkOP+nQwS5ns1MsIE3kFhaBY=	\N	f	jorte91	Joaquin	Ortega Ascencio	demo@demo.com	f	t	2019-01-22 21:11:52.42506+00	5
1492	pbkdf2_sha256$20000$TjZThjV8FjVa$8jLhOZxFIXOF2SzRUPDFTifW5EMHBUgfhA5MvjB1quQ=	\N	f	ipark92	Ian	Park Lee	demo@demo.com	f	t	2019-01-22 21:11:52.449439+00	5
1493	pbkdf2_sha256$20000$pSD8n80KbAdW$UZNHrDKgfRbKzybet3XCET0r2Ls2w20liAQtQWUCVhA=	\N	f	aalan93	Axelemmannuel	Alanis Alvarado	demo@demo.com	f	t	2019-01-22 21:11:52.473696+00	5
1494	pbkdf2_sha256$20000$Q90usp1f1zTL$Y87WIYmMvrf/4lJkcIkeY6aTkYF+PASs1XhkK6+F4I0=	\N	f	dcova94	Diego	Covarrubias   	demo@demo.com	f	t	2019-01-22 21:11:52.498929+00	5
1495	pbkdf2_sha256$20000$TgLkViufgPsu$iAqCZTUeXtXSbW+enPNa1zRqU73HzuTZs8efQ2yiqVE=	\N	f	arive95	Alejandro	Rivera Ramirez	demo@demo.com	f	t	2019-01-22 21:11:52.523309+00	5
1496	pbkdf2_sha256$20000$WM7fmKnHW5yK$JY2VKaG93/dBRFgsDZ6nP+pJu6jQZCNwV1iZBmlAWM8=	\N	f	rrive96	Roberto	Rivera Ramirez	demo@demo.com	f	t	2019-01-22 21:11:52.548806+00	5
1497	pbkdf2_sha256$20000$BY1wrEWX4wWl$ZhKIiavO6MOy4nuRERMPXVz/hwzxKyy9C6ZxxbZqRy4=	\N	f	mguti97	Matias	Gutierrez Macaris	demo@demo.com	f	t	2019-01-22 21:11:52.573655+00	5
1498	pbkdf2_sha256$20000$4J8OtTwttajc$ZMYAmX2FGIWjdRacQRu5WH0agp7m0ueAlLwyNIje/Y4=	\N	f	nzuñi98	Nicolas	Zuñiga   	demo@demo.com	f	t	2019-01-22 21:11:52.600265+00	5
1499	pbkdf2_sha256$20000$57r5icRjro6L$2WsmzOmEXCJVVs6JixJBFyaevn1vTHDnOOKD77qX32U=	\N	f	sroja99	Sebastian	Rojas   	demo@demo.com	f	t	2019-01-22 21:11:52.630867+00	5
1500	pbkdf2_sha256$20000$eDhVXYUCorWK$GDe6uxA3kT0PQtCoxE21Ngppz9L9ic377Z2d+uvrsp8=	\N	f	jbern00	Julieta	Bernal Wiliams	demo@demo.com	f	t	2019-01-22 21:11:52.656428+00	5
1501	pbkdf2_sha256$20000$GBC6331iD54U$jhN6euyQNPDgvmRumv5kZEgxec3LHWi9MOK4c72BJW4=	\N	f	afern01	Amaia	Fernandez Ayala	demo@demo.com	f	t	2019-01-22 21:11:52.68113+00	5
1502	pbkdf2_sha256$20000$YgeogXJPnyKm$eHf+vGhoG9y4JxGhePPp/8KKjUSn5RpiS+hLw/Sm8gU=	\N	f	tpala02	Tifanny	Palacios Alvarez	demo@demo.com	f	t	2019-01-22 21:11:52.706349+00	5
1503	pbkdf2_sha256$20000$LsvK0HSHHVsO$hA5CqxIoNCJLaY0IvUAQqGb67NqI8ngkhbRcTbd/LuU=	\N	f	eurib03	Emilia	Uribe Pineda	demo@demo.com	f	t	2019-01-22 21:11:52.731381+00	5
1504	pbkdf2_sha256$20000$X6z5mVqDeum1$2ziioaPdySW/xweqW2/6rVE8jwi6/OdBxPaABJfeqz8=	\N	f	mvill04	Ma Pilar	Villanueva Gallardo	demo@demo.com	f	t	2019-01-22 21:11:52.75695+00	5
1505	pbkdf2_sha256$20000$2XIf10tjkSuI$3h2k0vbM+GeXVRHurPE+aip7IB8KjOZPC9u2zbb4m5k=	\N	f	eurib05	Emilia	Uribe Pineda	demo@demo.com	f	t	2019-01-22 21:11:52.781733+00	5
1506	pbkdf2_sha256$20000$gFEpTyCqSoQF$XkoXAkHxbY3GysUiTNgcLc5LjnyjtETQ+rq+RIOfV3k=	\N	f	finfa06	Fatima	Infante Blasquez	demo@demo.com	f	t	2019-01-22 21:11:52.806015+00	5
1507	pbkdf2_sha256$20000$7wPfK0VhKIYZ$gL5UdcklKAIICRIY2US8u5oqQ5HmULgk5au8HyQ3t8c=	\N	f	cguzm07	Camila	Guzman   	demo@demo.com	f	t	2019-01-22 21:11:52.830693+00	5
1508	pbkdf2_sha256$20000$hb2m8HwzWeWX$iZj+cHds8m/q3IH8Tc5d3QxFpCKzaH6Ran2DmAbxzRo=	\N	f	imaza08	Isabella	Maza Perez	demo@demo.com	f	t	2019-01-22 21:11:52.855322+00	5
1509	pbkdf2_sha256$20000$lRKWqClsc8Cu$gbiPr7yNsAn78R8iGP0SetyE5xaNPHb1vU485k+jgyM=	\N	f	nherr09	Nicole	Herrera Zavala	demo@demo.com	f	t	2019-01-22 21:11:52.880448+00	5
1510	pbkdf2_sha256$20000$ZiYHKTKYOHpH$Y/7RQoKdU7ruaoP1IuaNL9BkfN8hbCLlNCh/rLL7Yy4=	\N	f	lde l10	Lucia	De La Cueva Maria	demo@demo.com	f	t	2019-01-22 21:11:52.905811+00	5
1511	pbkdf2_sha256$20000$XBBYOwrdfxAY$GRDpA/KSlic5SJQzZZPFLFBQ92aRqc4JRIEzAi3n3LE=	\N	f	pagui11	Paulina	Aguilera Vega	demo@demo.com	f	t	2019-01-22 21:11:52.930695+00	5
1512	pbkdf2_sha256$20000$pBlLyzxVrJ4x$5fWx9F9KaDyH36Blt0d9g+/XcPwsPl775qweRjfH2+M=	\N	f	cagui12	Carolina	Aguilera Vega	demo@demo.com	f	t	2019-01-22 21:11:52.955998+00	5
16	pbkdf2_sha256$20000$GMaCo0TKko3J$f6nQ2KvikgqP4VaSCxD7+rtHIE4monxW9o7RYEGUVkM=	\N	f	16eriksalashernandez	Erik	Salas Hernandez	demo@demo.com	f	t	2019-01-21 03:08:29.804199+00	5
1228	pbkdf2_sha256$20000$ej9aPi690jV9$aQNX/M0fF0+9I3v6TWrb50C3a2K122cNreNp7hOmAnY=	2019-01-21 18:59:07.094094+00	f	agustinbvb	D.T. Agustin	D.T. Agustin	name@example.com	f	t	2019-01-21 18:51:54.108459+00	4
17	pbkdf2_sha256$20000$VGqDFUmMqm9Q$OK8te9RReXpBDRQ1KoD9xvU+0v+k808k5BgkZRWUDi4=	\N	f	17javiersalinasalmaz	Javier	Salinas Almazan	demo@demo.com	f	t	2019-01-21 03:08:29.828378+00	5
18	pbkdf2_sha256$20000$40vhQmlFr6ys$2iep17QVF7vCpkF5iYKi0mmjoDeqKMtoxPd1SDf4jYI=	\N	f	18luisezequielsotopo	Luis Ezequiel	Soto Ponce	demo@demo.com	f	t	2019-01-21 03:08:29.853033+00	5
19	pbkdf2_sha256$20000$fSX7BmOCpFrZ$WG2dt6YRn1zL4wPIui+N696LXDSYAu6sRXApKdwf/pM=	\N	f	19ikaitreviñodorado	Ikai	Treviño Dorado	demo@demo.com	f	t	2019-01-21 03:08:29.87789+00	5
20	pbkdf2_sha256$20000$v1BNJ2LXeEiX$hdfj3xFKNQhzUzmtms6TvRWINIe+XHIo/5PKpq/q/+Y=	\N	f	20emilianomercadooca	Emiliano	Mercado Ocampo	demo@demo.com	f	t	2019-01-21 03:08:29.902629+00	5
21	pbkdf2_sha256$20000$5qCGWFGb8JoJ$dhk8ruwwElH8OKnIV6/+dzQLc9+shap45wvoCbALxmk=	\N	f	21erickfaguilarsuare	Erick F	Aguilar Suarez	demo@demo.com	f	t	2019-01-21 03:08:29.927681+00	5
22	pbkdf2_sha256$20000$LlGKKjJorQl4$/VtN1oDS5/J/GcgybrrsOinUKfZbjarGEvs8MH19lC0=	\N	f	22emilianobautistaca	Emiliano	Bautista Carbajal	demo@demo.com	f	t	2019-01-21 03:08:29.954745+00	5
23	pbkdf2_sha256$20000$wMNlyFBkRY7s$rJhxT2SS2NT1rAiM7tQQB4DpzYm2GG1WxizxCdBolII=	\N	f	23josuebautistaestra	Josue	Bautista Estrada	demo@demo.com	f	t	2019-01-21 03:08:29.978927+00	5
24	pbkdf2_sha256$20000$SHpObxub5beB$pLaMuJd4+5YVsUJOfnU1TaqyXMzWuPA5Hi5+MFcJxhM=	\N	f	24jonathancruzjarami	Jonathan	Cruz Jaramillo	demo@demo.com	f	t	2019-01-21 03:08:30.003022+00	5
25	pbkdf2_sha256$20000$AlekAUSF9GZ5$Bt4OVOvlxjtCmRu5FqaM1QTn9uVDc+0kTTUVECthzsU=	\N	f	25arielgarciagomez	Ariel	Garcia Gomez	demo@demo.com	f	t	2019-01-21 03:08:30.027142+00	5
26	pbkdf2_sha256$20000$gP5Bfnvmi3v8$tWZGNpHrFB6sHV8YrIA5rrOFVg6DQyrUz+YmOMNXOb0=	\N	f	26darìoguadarramaja	Darìo	Guadarrama Jaimes	demo@demo.com	f	t	2019-01-21 03:08:30.051989+00	5
27	pbkdf2_sha256$20000$SLXqYO2s708R$O80K3k5mmX6IKBkY2GMNBNkEz0/NH5VqJsW0qMR7PC0=	\N	f	27ricardolegorretaca	Ricardo	Legorreta Caballero	demo@demo.com	f	t	2019-01-21 03:08:30.076438+00	5
28	pbkdf2_sha256$20000$8CfzkB4neQic$oX97zcrqJzwircrfLZTSpUaFSAauLrk/RKvWvZ+smds=	\N	f	28diegolujanoemilian	Diego	Lujano Emiliano	demo@demo.com	f	t	2019-01-21 03:08:30.100364+00	5
29	pbkdf2_sha256$20000$e2zYCQFo5Uqx$KZOEY+V2iewFKehnaXyq769IuRndNHbMR6A32WZV+go=	\N	f	29hazielafifperedoes	Haziel Afif	Peredo Estrada	demo@demo.com	f	t	2019-01-21 03:08:30.124942+00	5
1231	pbkdf2_sha256$20000$Ap62oA9GrkVH$H6EzcEHDb1EMZIxQaX8cGBd6KHm4q4nPt4UHE4AOvV4=	2019-02-05 08:56:05.679461+00	f	nurybvb	Nury Ruiz 	Nury Ruiz 	name@example.com	f	t	2019-01-21 18:59:31.863421+00	4
30	pbkdf2_sha256$20000$J03FtQWByYSv$iuV6P7ZLMMPH6oYze9Qr88K8MfmDOD7Zj6UNoo7dsW4=	\N	f	30josepablotolamendo	Jose Pablo	Tola Mendoza	demo@demo.com	f	t	2019-01-21 03:08:30.150717+00	5
31	pbkdf2_sha256$20000$znROiGcaRp4J$i2ixuXI4XaC9krJbhxkeoncFvqgvJIf/sVEvH3Y/a6I=	\N	f	31kuntreviñodorado	Kun	Treviño Dorado	demo@demo.com	f	t	2019-01-21 03:08:30.175212+00	5
32	pbkdf2_sha256$20000$CaxbfaRf225O$W6Zr2DVQUd2sL/LN2rvo81Dh/hwyix4FK5UtcZbiWeI=	\N	f	32yohanavazquezrebol	Yohana	Vazquez Rebollar	demo@demo.com	f	t	2019-01-21 03:08:30.199925+00	5
1242	pbkdf2_sha256$20000$tMRQP8HEmMWf$1cE+UXSke+eY6P1ohNaUqK5wqqxiaRNQAr6/d0lKnJ8=	2019-01-21 19:38:10.120693+00	f	directorfluminense	Luis	Luis	name@example.com	f	t	2019-01-21 19:34:13.952374+00	2
34	pbkdf2_sha256$20000$gq1JuSNw92zs$1LTnbP6AzfqPpr/h6JmZg0AolcDUU5O+eS266AAVE9I=	\N	f	34julianvillanuevaor	Julian 	Villanueva Ortega	demo@demo.com	f	t	2019-01-21 03:08:30.250015+00	5
35	pbkdf2_sha256$20000$xoYFato40j11$7EeG/9v/AATxV6vkxtafw3eNrbMWj/Bq0pFHbNhs5vc=	\N	f	35rodrigocruzjaramil	Rodrigo	Cruz Jaramillo	demo@demo.com	f	t	2019-01-21 03:08:30.279465+00	5
36	pbkdf2_sha256$20000$2lDso2Q8fopF$xzj4UO+gJBiX2K9oMcJkRqQ1kbZo485zwTpXEbPsATw=	2019-01-21 19:28:00.68339+00	f	36pedrodiazflores	Pedro	Diaz Flores	demo@demo.com	f	t	2019-01-21 03:08:30.303662+00	5
37	pbkdf2_sha256$20000$7DqrgWMqjOWc$hL6xNdTZKkw/pWn0yGiSIPlvJMju9+9oVch/CjQYr/k=	\N	f	37juanmanueldiazgard	Juan Manuel	Diaz Garduño	demo@demo.com	f	t	2019-01-21 03:08:30.327934+00	5
38	pbkdf2_sha256$20000$4Es1OaFQyhL8$/wXC1qh/WcshXxruYWLY1EtCaaMWtb+k7wZFxBfk/qc=	\N	f	38nicolaslebrijagarz	Nicolas	Lebrija Garza	demo@demo.com	f	t	2019-01-21 03:08:30.352586+00	5
39	pbkdf2_sha256$20000$TQmHpZE3CxGt$TZrGATyFTcc+4FljzYaTmjNPgpkYCfUAIQCxhbG98jc=	\N	f	39giovanisantoscolin	Giovani	Santos Colin	demo@demo.com	f	t	2019-01-21 03:08:30.376663+00	5
40	pbkdf2_sha256$20000$DSXLaNAU4rH3$0ug/y7ysb8GFNXvz27rFJs3zSrcu4yhHE9seg4iQ2y0=	\N	f	40kevinsaidvazquezre	Kevin Said	Vazquez Rebollar	demo@demo.com	f	t	2019-01-21 03:08:30.400875+00	5
41	pbkdf2_sha256$20000$4bM2MTAki4t6$j+Z3rS2oY4m4BuzdcEwDl827FGb/otWQGS4JrYnctQE=	\N	f	41dyronacostasantill	Dyron	Acosta Santillan	demo@demo.com	f	t	2019-01-21 03:08:30.426219+00	5
42	pbkdf2_sha256$20000$H6LoLT2jeQ4x$cUVKWIfNZp8VvCZUzCqiPlcUguL5sVx7GX27f/oRTYg=	\N	f	42rosauracarbajalreb	Rosaura	Carbajal Rebollar	demo@demo.com	f	t	2019-01-21 03:08:30.451162+00	5
43	pbkdf2_sha256$20000$Q7IF3BzMKOIL$xJbjBRmHUrphViR2KSGChgCShlVvS9gwVrt79Ie9dSE=	\N	f	43sebastiancastilloa	Sebastian	Castillo Aguilar	demo@demo.com	f	t	2019-01-21 03:08:30.4757+00	5
44	pbkdf2_sha256$20000$5mA1yefMauRe$Q30hTJKaiL7PHGhBVDHRlLPFJizqnBYLCCJ7sbh5vsU=	\N	f	44franciscodiazflore	Francisco	Diaz Flores	demo@demo.com	f	t	2019-01-21 03:08:30.510283+00	5
45	pbkdf2_sha256$20000$HVHgSQoUR1t9$whHMnH/78zcpKmVaB/uKJDh7RbXEe++3Q0iZx/W+5M0=	\N	f	45gaelgarciabernal	Gael	Garcia Bernal	demo@demo.com	f	t	2019-01-21 03:08:30.547553+00	5
46	pbkdf2_sha256$20000$js5pcNL0OkbB$Gl0AKgbPs4UUKqNt8l8RQbzDR++RHbPUDw+A3GmA1Ls=	\N	f	46lucaslebrijagarza	Lucas	Lebrija Garza	demo@demo.com	f	t	2019-01-21 03:08:30.571613+00	5
47	pbkdf2_sha256$20000$JoxLvetIfJTb$KrzWpsyK5dAS+ZJftWQNhdaIz+b0OgWSq4H40psva6U=	\N	f	47giovanipeñalozalo	Giovani	Peñaloza Lopez	demo@demo.com	f	t	2019-01-21 03:08:30.597068+00	5
48	pbkdf2_sha256$20000$tkqPcFscrG8C$94KZW2rR5YKNJMe/yY6/p/SgzMI9HYWuJlAKhMykFYg=	\N	f	48carlosreyesjimenez	Carlos	Reyes Jimenez	demo@demo.com	f	t	2019-01-21 03:08:30.623185+00	5
49	pbkdf2_sha256$20000$jsTh2AMha1PF$3OiNyP0ZMP4eOhbWv+gy4v/aTlST50A0wiEIbO9ZtE4=	\N	f	49mauriciosalasherna	Mauricio	Salas Hernandez	demo@demo.com	f	t	2019-01-21 03:08:30.648258+00	5
50	pbkdf2_sha256$20000$jA3GIyrJAxji$7boMdixZrXOTpV9BuHN9CpECuA4IkfWVMntCJaseJ7U=	\N	f	50juancarlossantosco	Juan Carlos	Santos Colin	demo@demo.com	f	t	2019-01-21 03:08:30.673916+00	5
51	pbkdf2_sha256$20000$6zU6FzJHOUgS$3qFQzxfXrcEpYorQaxNeEOvix+LG2lNK/+KMOtEgyAI=	\N	f	51oscarvacacaballero	Oscar	Vaca Caballero	demo@demo.com	f	t	2019-01-21 03:08:30.706321+00	5
52	pbkdf2_sha256$20000$YzXQ1u4HqE4F$kOfbeeG4WiAghwslPA+/5Ws/YGBrc13W7CUn0y3wzxw=	\N	f	52victorvillafañaes	Victor	Villafaña Estrada	demo@demo.com	f	t	2019-01-21 03:08:30.742657+00	5
1229	pbkdf2_sha256$20000$u6DSwvFRrxPS$LEkyMS+8jx4oycw7eW1k2akAoQx00yK1x2bd8yIGKx0=	2019-01-21 19:09:04.199925+00	f	rodrigobvb	Rodrigo Romano	Rodrigo Romano	name@example.com	f	t	2019-01-21 18:55:50.924046+00	4
53	pbkdf2_sha256$20000$j0bzYcJIpRHz$C7J1G5H0Gh+HM/ccmlruu0s0zu4KSdVrWiy7Gumh2Q8=	\N	f	53joaquinvillafañar	Joaquin	Villafaña Rebollar	demo@demo.com	f	t	2019-01-21 03:08:30.782604+00	5
54	pbkdf2_sha256$20000$vs2g404XaqbK$wXrz685pITZ/78KcC5KfHF7ubApNZEsrrPRtPrUCkNs=	\N	f	54bryanesquivellopez	Bryan	Esquivel Lopez	demo@demo.com	f	t	2019-01-21 03:08:30.825741+00	5
55	pbkdf2_sha256$20000$AhDUkkphHWcz$hxB/ruht0h+ypFMQPWL5zEm2oS8ZlTYY0sBOzfGlL+4=	\N	f	55brandondanielgonza	Brandon Daniel	Gonzalez Garduño	demo@demo.com	f	t	2019-01-21 03:08:30.868972+00	5
56	pbkdf2_sha256$20000$ugDtkyOpIs1G$w+ucEvc/QalhdJ5h9wkeR7ZOJ5VA9QeA5q7qnfgcBqM=	\N	f	56jostinbrianguadarr	Jostin Brian	Guadarrama Garcia	demo@demo.com	f	t	2019-01-21 03:08:30.908734+00	5
57	pbkdf2_sha256$20000$MY2xKLiJJdHC$336rf6Ffj7r80+vIpKTPUDxxmbooqGEgThs5LF3eQr4=	\N	f	57taniaguadarramaram	Tania	Guadarrama Ramirez	demo@demo.com	f	t	2019-01-21 03:08:30.93542+00	5
58	pbkdf2_sha256$20000$534tNh1U5xVz$LGi1O8+UtHD9PqJrN15+/QGtG0THOzSllx518gEtHlE=	\N	f	58joseenriquegutierr	Jose Enrique	Gutierrez Bernal	demo@demo.com	f	t	2019-01-21 03:08:30.962769+00	5
59	pbkdf2_sha256$20000$ocbokcdilmUO$TrtWwQnVynWim21ym3E3Ev1nsznjqzc21qbruNaU35s=	\N	f	59jesusjuarezquinter	Jesus	Juarez Quintero	demo@demo.com	f	t	2019-01-21 03:08:31.002709+00	5
60	pbkdf2_sha256$20000$CpcYc2uHi0NN$z9r9iHnj6nJniNirU5RzoaCVFTPu87XDlysQyVB/jZU=	\N	f	60erickomarlopezbece	Erick Omar	Lopez Becerril	demo@demo.com	f	t	2019-01-21 03:08:31.044222+00	5
61	pbkdf2_sha256$20000$sAKW0uoVyEg9$rYRSVfdKbO9lm6x14iSXKkjMA238XtZfd5eHu2gvxvM=	\N	f	61fiorenzalujanoemil	Fiorenza	Lujano Emiliano	demo@demo.com	f	t	2019-01-21 03:08:31.085454+00	5
62	pbkdf2_sha256$20000$3KpoHXzYrtWD$vp4L9asvp+0551SVkGLNJ8yZciCYh9PQWRPHKaEMwqM=	\N	f	62jazminmontorosotel	Jazmin	Montoro Sotelo	demo@demo.com	f	t	2019-01-21 03:08:31.112937+00	5
63	pbkdf2_sha256$20000$1ePNYo9oompr$BIeNJDUx3/nb87pE73h4h5P4hmYwSNygkwyLDHjjLnE=	\N	f	63sebastianortizpeñ	Sebastian	Ortiz Peñaloza	demo@demo.com	f	t	2019-01-21 03:08:31.15648+00	5
64	pbkdf2_sha256$20000$RD4L1WSIziXu$WmMW8cLpNen6sasTychXVtomuHjiT3P3dCjVslN/WSg=	\N	f	64fernandoortizreyes	Fernando	Ortiz Reyes	demo@demo.com	f	t	2019-01-21 03:08:31.187616+00	5
65	pbkdf2_sha256$20000$aEhax2RyYcNV$U6Brlu52v4P/AP+CjIjZNhDyDSudCjbEAxhAsyLSHPY=	\N	f	65omarpedrazaaguilar	Omar	Pedraza Aguilar	demo@demo.com	f	t	2019-01-21 03:08:31.213004+00	5
66	pbkdf2_sha256$20000$FAw7ULcQZoJB$MHy/H+UsjWKco3ETiKjrIC+mGxmkKXag8NRdiFN7cp4=	\N	f	66rubenpedrazasaldan	Ruben	Pedraza Saldaña	demo@demo.com	f	t	2019-01-21 03:08:31.238912+00	5
67	pbkdf2_sha256$20000$LTj60AZVVYEd$n15dOgcEdLJT/EQz8EpKVSYNlMwWRGFGCRT+KO2pT5E=	\N	f	67luisenriquerebolla	Luis Enrique	Rebollado Ortiz	demo@demo.com	f	t	2019-01-21 03:08:31.266178+00	5
68	pbkdf2_sha256$20000$EibhvkwW9SiX$JTzZoCu4vB6YOlZCbummwwM3ZeAfvWTunqcbnFfsYZU=	\N	f	68marcoantoniosantos	Marco Antonio	Santos Colin	demo@demo.com	f	t	2019-01-21 03:08:31.298812+00	5
69	pbkdf2_sha256$20000$1Of9OEJRGHyw$xGIRMn3t1S60ZQXEjzT3jRy7Vri84+tYyZrPNDEHxl8=	\N	f	69luisfernandovictor	Luis Fernando	Victoria De Jesus	demo@demo.com	f	t	2019-01-21 03:08:31.340273+00	5
1243	pbkdf2_sha256$20000$enXiiZfCQMe1$f8zIlJfuvwAYin6X5MuUtz7ZO7ie1qumcpjN5LJc2xw=	2019-01-21 19:38:34.905832+00	f	directorinstitutomex	Instituto México	InstitutoMexico	name@example.com	f	t	2019-01-21 19:37:58.280948+00	2
70	pbkdf2_sha256$20000$l2BFON5P3beu$kj+ZGIs+mD6sTY9YCv9ZRWgOBHHyYnxZ/N0pBm97syw=	\N	f	70tomalexanderschmid	Tom Alexander	Schmidt Stenberg	demo@demo.com	f	t	2019-01-21 03:08:31.38229+00	5
71	pbkdf2_sha256$20000$GwOhbDcHpjLi$qtxZls4aJRPtEiH2nQ0I3KIG2wuoK3ViaGQsvFsDP5U=	\N	f	71aquilescarrillorod	Aquiles	Carrillo Rodriguez	demo@demo.com	f	t	2019-01-21 03:08:31.424275+00	5
72	pbkdf2_sha256$20000$23FIZCJOH6rI$gEuMh0RrO2b3ODpA/GLJSNU+GpQQJPtaiFdS1l6Sg08=	\N	f	72joaohernandez	Joao	Hernández	demo@demo.com	f	t	2019-01-21 03:08:31.465534+00	5
74	pbkdf2_sha256$20000$GAfKFv1TLHVj$luc9baZcKXVqGyVn9Lv4i8Xdp6oX4igt5Nsr7OX/vRo=	\N	f	74pablostoehr	Pablo	Stoehr	demo@demo.com	f	t	2019-01-21 03:08:31.529393+00	5
75	pbkdf2_sha256$20000$atEOPRPVvcWI$Vx56CEFZhX6I/LYQPUzlB9KbWau+c3XxSuVwVALTKs4=	\N	f	75efrenmontealongoma	Efrén	Montealongo Marmolejo	demo@demo.com	f	t	2019-01-21 03:08:31.56701+00	5
76	pbkdf2_sha256$20000$uzIppJ4U0VcE$177VsPheRBq550reh9OuAhj3fjZrXBF8VGC2Ur8jUFI=	\N	f	76fernandogarciameji	Fernando	García Mejía	demo@demo.com	f	t	2019-01-21 03:08:31.596614+00	5
77	pbkdf2_sha256$20000$c32dQhVWaFfd$6GspVCNHqC5Iscam3N0/DGLP1H1/u3krVF0tbygSe/Q=	\N	f	77franciscoandrescar	Francisco Andrés	Cardenas Cruz	demo@demo.com	f	t	2019-01-21 03:08:31.622744+00	5
78	pbkdf2_sha256$20000$dBy3exqHJvYM$gbgoovQ3+J2sYWDZwkYMP6G8jBiV/9vM06gWLOxOW8g=	\N	f	78axelmendozagodinez	Axel	Mendoza Godinez	demo@demo.com	f	t	2019-01-21 03:08:31.647414+00	5
79	pbkdf2_sha256$20000$jGdHby2hRSKG$f+sx18FK7uV3Dr0/kz+Aga5ZWATcVMzyg+WYWzlYCno=	\N	f	79emiliodelvallegrun	Emilio	Del Valle Grunberger	demo@demo.com	f	t	2019-01-21 03:08:31.676139+00	5
80	pbkdf2_sha256$20000$9kkqn7U0S41z$JGrWROqpfTXUxNaLyk+4gV+/NPyU/Yc9N2KGks93JE0=	\N	f	80bryanreyesmartinez	Bryan	Reyes Martinez	demo@demo.com	f	t	2019-01-21 03:08:31.705299+00	5
81	pbkdf2_sha256$20000$2Y5K1NOvYASQ$Aa8+JZ+h+bg3mX82O9qKBpgBI6rJDZ/Yra+ckw64kRc=	\N	f	81gabrielhernandez	Gabriel	Hernández	demo@demo.com	f	t	2019-01-21 03:08:31.744559+00	5
82	pbkdf2_sha256$20000$9oaUSm8xlVqG$5poNcFWfZZA+wu/7Ga3+Y4fCTd4DpFFynLKTxe5R0XQ=	\N	f	82alejandrovsanchezh	Alejandro V	Sanchez Hernandez	demo@demo.com	f	t	2019-01-21 03:08:31.779938+00	5
83	pbkdf2_sha256$20000$MJKYYzFRqJmS$MTa8uj7jrl2Nvv8B/GsWrD1yPDe4GviWczFHN4clqwI=	\N	f	83diegohernandezrome	Diego	Hernandez Romero	demo@demo.com	f	t	2019-01-21 03:08:31.822286+00	5
84	pbkdf2_sha256$20000$0IwjLZmyHOsO$FyzCMDwAB5v7Mq0u5ZnryRRAnxttI0TsUypFxUYj4Es=	\N	f	84andreasweber	Andreas	Weber	demo@demo.com	f	t	2019-01-21 03:08:31.865006+00	5
85	pbkdf2_sha256$20000$RFFLgSqfanKN$I6tVcYO242pNzFtZhuRi55gIyHYSBofe3xThsOMcrNs=	\N	f	85alvaroelizaldezamu	Alvaro	Elizalde Zamudio	demo@demo.com	f	t	2019-01-21 03:08:31.892927+00	5
86	pbkdf2_sha256$20000$2XkXYIfqASOB$evTHFi28iUvoDTB8E2dYha8/jX3KOtNYXoeUxeIvcZw=	\N	f	86emiliomedinacastel	Emilio	Medina Castellanos	demo@demo.com	f	t	2019-01-21 03:08:31.920775+00	5
1230	pbkdf2_sha256$20000$1CZwToEueh1M$m6nKcIINeBk+2NpHIYzTYEOGeD2FO27+0ZU8wCPkSWc=	2019-01-21 19:09:28.170711+00	f	danielbvb	Daniel Pacheco	Daniel Pacheco	name@example.com	f	t	2019-01-21 18:57:34.978649+00	4
87	pbkdf2_sha256$20000$1mW2Gvqyw1pH$GOLyNdvteVm2yta4/druwVavED2M0L0M4IERJd7V45g=	\N	f	87danielapontonesgru	Daniela	Pontones Grunberger	demo@demo.com	f	t	2019-01-21 03:08:31.946381+00	5
88	pbkdf2_sha256$20000$cyNVnFkwaBj6$gDw/JS90b65p5uBNkLJyST3ZrXeRBbrV3LLxvm/yFbE=	\N	f	88sebastianbenitez	Sebastián	Benítez	demo@demo.com	f	t	2019-01-21 03:08:31.969601+00	5
89	pbkdf2_sha256$20000$p2074kvFK0qR$32yRPw+LxqE5jBaOSIB4hMJdagu+39N8VeCgwiJk6yQ=	\N	f	89gerardoalonsomarti	Gerardo Alonso	Martinez Rosales	demo@demo.com	f	t	2019-01-21 03:08:31.993064+00	5
90	pbkdf2_sha256$20000$wuzkVSQIEX5M$kwkE8hgwbLFNGnPcH2Cd7FwsMYZyZRhXSxElCw43mWw=	\N	f	90alejandrofernandez	Alejandro	Fernandez Cardoso	demo@demo.com	f	t	2019-01-21 03:08:32.016302+00	5
91	pbkdf2_sha256$20000$RgC0JrpkCHou$Vhapk37VxGkPjlBuMaqOpFugyJP6bXciVa9dFaqKbUk=	\N	f	91emilianohermosillo	Emiliano	Hermosillo Muñoz	demo@demo.com	f	t	2019-01-21 03:08:32.03962+00	5
92	pbkdf2_sha256$20000$cDd8yKUgb6op$prME73F0MfSqow6oVL4DOdbCu6xPuy/kVE2+xplT7yE=	\N	f	92javierrancañobotay	Javier	Rancaño Botaya	demo@demo.com	f	t	2019-01-21 03:08:32.06299+00	5
93	pbkdf2_sha256$20000$8ITrqxqmy0KS$tG2cPM2yp6RQI2yxCbxaOR0OlOMZphbxIBTap220tR4=	\N	f	93hectormauricioguzm	Hector Mauricio	Guzmán Balderas	demo@demo.com	f	t	2019-01-21 03:08:32.086509+00	5
94	pbkdf2_sha256$20000$ws57ocZQfPD4$SjoD6/MEGTRoyu8kDR5vLv3ANosgagEihlkbdmpnn5s=	\N	f	94dariohernandezcorn	Darío	Hernández Cornejo	demo@demo.com	f	t	2019-01-21 03:08:32.11002+00	5
95	pbkdf2_sha256$20000$2iiBvF50IpPZ$EDQoHFptJ6w2N9SDN5i5y8KQWV9AfBX3ci+PncjM/IA=	\N	f	95santiagobarbosazaz	Santiago	Barbosa Zazueta	demo@demo.com	f	t	2019-01-21 03:08:32.133222+00	5
96	pbkdf2_sha256$20000$pwAISeED2Lva$tK/NKZTmLhevUI0I1hDXDoK3CpOGOjIHYL+XaIjDUx0=	\N	f	96andrecubillaschave	Andre	Cubillas Chavez	demo@demo.com	f	t	2019-01-21 03:08:32.156856+00	5
97	pbkdf2_sha256$20000$ihnkuJGfV5bz$wxYoAKONdkdtuYtbKOjDxtuvoFsca2kVXb0JXShQCe0=	\N	f	97mariotorresmeneses	Mario	Torres Meneses	demo@demo.com	f	t	2019-01-21 03:08:32.180206+00	5
98	pbkdf2_sha256$20000$37hImnEg1sDJ$7b/ujlo6EgyVzJSDlGRQJIqkIs0A5ZYCob4/2r4+TWE=	\N	f	98ikerolinvelazco	Iker	Olín Velazco	demo@demo.com	f	t	2019-01-21 03:08:32.20489+00	5
99	pbkdf2_sha256$20000$eqNz5ScnoEb6$YDNmDh78F02y1w0+wfZUGyt+6emaZQT45QPAggk0ZfM=	\N	f	99alexisgonzalesriva	Alexis	Gonzales Rivas 	demo@demo.com	f	t	2019-01-21 03:08:32.228939+00	5
100	pbkdf2_sha256$20000$RRww0HvmT5kt$NgRnhJMc+Ov+CNPL2cRzqzjQg5ZLltv7Y0WOQED6Q7w=	\N	f	100jovaniuwitonzerwa	Jovani	Uwitonze Rwabahenda	demo@demo.com	f	t	2019-01-21 03:08:32.252363+00	5
101	pbkdf2_sha256$20000$a81eKFj0nx5q$6NpoJI75N6RBGuxR0L5N2LIb7E5b1NbL7AODlinY/XU=	\N	f	101guillermodomingue	Guillermo	Domínguez	demo@demo.com	f	t	2019-01-21 03:08:32.275752+00	5
102	pbkdf2_sha256$20000$Xc7ZAPhyA9rA$6niFPHJRPBLuwP1hBMlddcjVMbZfe0IuZ+/tYEvw8ak=	\N	f	102miltonochoanieves	Milton	Ochoa Nieves	demo@demo.com	f	t	2019-01-21 03:08:32.299166+00	5
103	pbkdf2_sha256$20000$Oukw8b1g5PKB$/J8N0/fhtUkS08s83TXAdtfn2b7T89tQM6Ft6YkTUgI=	\N	f	103robertogarcia	Roberto	García	demo@demo.com	f	t	2019-01-21 03:08:32.322592+00	5
104	pbkdf2_sha256$20000$YEWvPwpqgSpY$OaTjGUMoZw/GEIXRAGi2i+jWBXPU9/BzzqXJmuqUX/I=	\N	f	104brunodanielcaball	Bruno	Daniel Caballero	demo@demo.com	f	t	2019-01-21 03:08:32.346176+00	5
105	pbkdf2_sha256$20000$1cK0tOOQDV33$7xpaS+b3oB0zMlcpq9FteSiSPeGHZYSca4VzIhTCcpk=	\N	f	105mackenziemackenzi	Mackenzie	Mackenzie	demo@demo.com	f	t	2019-01-21 03:08:32.369996+00	5
106	pbkdf2_sha256$20000$q33QOkjVHE1y$dHbUJzDrJopxhJfAKBwGCzZsa7nlIsjgRVI7rpK5SVM=	\N	f	106tonatiuhgutierrez	Tonatiuh	Gutierrez Perez	demo@demo.com	f	t	2019-01-21 03:08:32.394059+00	5
107	pbkdf2_sha256$20000$s8PbBzyi7hRD$bA/OrwRZUFmuKJlZbpjVCs5gTUIQiiPBYZwizaHmRYY=	\N	f	107hugocarlosgomez	Hugo Carlos	Gomez	demo@demo.com	f	t	2019-01-21 03:08:32.417925+00	5
108	pbkdf2_sha256$20000$h1nJYCAyLkVU$joQg7b+Cmh6CRE1DSJM5dXGWZH5BIJos5AVQCJ9Y4TI=	\N	f	108marianofrancocace	Mariano	Franco Caceres	demo@demo.com	f	t	2019-01-21 03:08:32.442351+00	5
109	pbkdf2_sha256$20000$94crHinDxGSq$oPSJyV4LVqhTu13bMlmHslGOxpGBltY63HttlwakT4o=	\N	f	109kongphiphatmachot	Kong	Phiphat Machot	demo@demo.com	f	t	2019-01-21 03:08:32.468356+00	5
110	pbkdf2_sha256$20000$oliqaLEc7rKd$xeQSpC+Ob/0494kEEaLEhjdP6SMAoJbMjyvkjzfTgvo=	\N	f	110omardelacruz	Omar	de la Cruz 	demo@demo.com	f	t	2019-01-21 03:08:32.494084+00	5
1244	pbkdf2_sha256$20000$EpVwNk2woaLi$H9m4MR5fRTCWGD3a60mkNhtuasOs5fVRI15i+ChGipo=	\N	f	directornidoaguila	Nido Águila	NidoAguila	name@example.com	f	t	2019-01-21 19:43:47.017385+00	2
111	pbkdf2_sha256$20000$vncBvyQmcZg3$OfDTG6okwVRo3IBUoFW92lvR9GaNYhZtRivv1F28RjI=	\N	f	111patriciovelazquez	Patricio	Velazquez Sanchez	demo@demo.com	f	t	2019-01-21 03:08:32.519689+00	5
112	pbkdf2_sha256$20000$iSS5B9SzSw1m$1UC8TpQOSER6WQO6bdbzjZVvJAH9YKiwKmVUwyHNjqE=	\N	f	112ikernarvaezbedoll	Iker	Narvaez Bedolla	demo@demo.com	f	t	2019-01-21 03:08:32.545276+00	5
113	pbkdf2_sha256$20000$kjrbHiJNPU1o$z7b95jjzAO6P+tCG7OFgJYjIIA3SCPPmH77G79msvsk=	\N	f	113josetorrescipres	José	Torres Cipres	demo@demo.com	f	t	2019-01-21 03:08:32.57051+00	5
114	pbkdf2_sha256$20000$Khr21mpYP7I0$Xf4jpyFXJKKm/NmVGX5QfQErjkqILZalNXaPtKeiT9g=	\N	f	114davidmichellereye	David Michelle	Reyes Martinez 	demo@demo.com	f	t	2019-01-21 03:08:32.595178+00	5
115	pbkdf2_sha256$20000$7vZ9kf2uD1Ra$OTKGHYM5LsfeNPuYc4hEDYhQbPJg3NXq9Z06mD34JRU=	\N	f	115luisfernandoweber	Luis Fernando	Weber Chavez	demo@demo.com	f	t	2019-01-21 03:08:32.620568+00	5
116	pbkdf2_sha256$20000$WWG7TQjAFdaC$vAn4j5Yt3IqxG+NNAoxHCiesiBeV9FtkgY8wVrNZJLc=	\N	f	116diegodelgadillolo	Diego	Delgadillo Lopez	demo@demo.com	f	t	2019-01-21 03:08:32.645985+00	5
117	pbkdf2_sha256$20000$igIx47TaX9Fs$H2aizr9QS7+ACihbkUWiPOuT6zROhLyF7eENQVQTSAk=	\N	f	117emilianoparedessa	Emiliano	Paredes Sagastomen	demo@demo.com	f	t	2019-01-21 03:08:32.670135+00	5
118	pbkdf2_sha256$20000$mrbb16SzfhSi$WD/g+3Z/3PfRz13+4S9c3F+E3dpP5hQATT+J7lRvXXE=	\N	f	118santiagoramosespi	Santiago	Ramos Espinosa	demo@demo.com	f	t	2019-01-21 03:08:32.695072+00	5
119	pbkdf2_sha256$20000$CDPCsDnDzoVT$faVK27B2FxHDMx/tGg2aWEAO9P34ISJiMwHUiZ5jxZA=	\N	f	119benjaminramosespi	Benjamin	Ramos Espinosa	demo@demo.com	f	t	2019-01-21 03:08:32.720385+00	5
120	pbkdf2_sha256$20000$vmQFgIbiKhGI$nKAf1KiAGQA4BWHLbGlxYjm/jlvSCjxQoDxxlq6t994=	\N	f	120santiagoglatzguti	Santiago	Glatz Gutierrez	demo@demo.com	f	t	2019-01-21 03:08:32.750346+00	5
121	pbkdf2_sha256$20000$srMlHaB5F3CS$Oszz4z4tv5hirp986icBfhaJHxQgEihp27CPn9Qqsmw=	\N	f	121pabloglatzgutierr	Pablo	Glatz Gutierrez	demo@demo.com	f	t	2019-01-21 03:08:32.773982+00	5
122	pbkdf2_sha256$20000$5XtbzWwuPbLQ$BS5EVEQELhg1D9rmnvi+MjijTxoYKC3L1rt2A3l9eDs=	\N	f	122juancarlosulasiad	Juan Carlos	Ulasia de Gandiaga	demo@demo.com	f	t	2019-01-21 03:08:32.802229+00	5
123	pbkdf2_sha256$20000$Ha1NFngL6z8R$5WMnr3p4ReeYkmoaQuE/l7hjJvF4E1DBeTeh07+2P8c=	\N	f	123anderrobleslarruc	Ander	Robles Larrucea	demo@demo.com	f	t	2019-01-21 03:08:32.829553+00	5
124	pbkdf2_sha256$20000$cS56laf8w0DY$1e63o846bG8fMnX3E94Bk+mlyCxUG8YUHpLWOUODdYQ=	\N	f	124diegoalvarez	Diego	Alvarez	demo@demo.com	f	t	2019-01-21 03:08:32.855815+00	5
125	pbkdf2_sha256$20000$Aet4a7tPPEFC$jKWgf/aPowHvrFtRbw+FM+jcFbDt27WTKqECofrbdh8=	\N	f	125mickelmanzo	Mickel	Manzo	demo@demo.com	f	t	2019-01-21 03:08:32.882358+00	5
126	pbkdf2_sha256$20000$3Zs86Zmdl7RN$ajaPrffrrvLhNqheib7ERIvvKx3jC1xE1NwYPZdRWUY=	\N	f	126alonsorosales	Alonso	Rosales	demo@demo.com	f	t	2019-01-21 03:08:32.90754+00	5
127	pbkdf2_sha256$20000$d893H3dGGu4g$x3eJ875z+gI4QUGTHRzWAPR0rDQqBsDnZCAgRlsrdCc=	\N	f	127alonsolatorrerojo	Alonso	Latorre Rojo	demo@demo.com	f	t	2019-01-21 03:08:32.933648+00	5
128	pbkdf2_sha256$20000$9IZzIPvX6Z6a$rYpniIjO4YohuKUeUWO/spveJFobenEAh8N2JBvAo3o=	\N	f	128emilioruizmackenz	Emilio	Ruiz Mackenzie	demo@demo.com	f	t	2019-01-21 03:08:32.95905+00	5
129	pbkdf2_sha256$20000$hC2d9tlsz9YT$wslvB78PhH1QS7KJuL1iBicFts9XFDHSKcDWAER7UGg=	\N	f	129santiagoospinagon	Santiago	Ospina Gonzales	demo@demo.com	f	t	2019-01-21 03:08:32.984809+00	5
130	pbkdf2_sha256$20000$6dd7l8WIwjEu$7wgtmKwOWw19USA+sTNsS8hlEB/PV/1TJi8lNwvhQPI=	\N	f	130rafaelemilianonav	Rafael Emiliano	Nava Alfaro	demo@demo.com	f	t	2019-01-21 03:08:33.011006+00	5
131	pbkdf2_sha256$20000$AMIAK4ZqfiyQ$Tt3gadBzA6MryrQ6e30uZ6VZ8Z9DmnF01/vFdo+iUD8=	\N	f	131joellopezjimenez	Joel	López Jiménez	demo@demo.com	f	t	2019-01-21 03:08:33.036644+00	5
132	pbkdf2_sha256$20000$mx4846vUfVu5$G/JpcLCOfOivmr/6WHU9Gieqlbytln1L82Don9vquaY=	\N	f	132rubenjesuslaracor	Ruben Jesús	Lara Cortes	demo@demo.com	f	t	2019-01-21 03:08:33.062555+00	5
133	pbkdf2_sha256$20000$ZITc9rErLGcI$JZmRB3jP+66yH0RDM9ZOFKfN2KGxroGc9wDX8amwwoI=	\N	f	133josearturogutierr	José Arturo	Gutiérrez Robledo	demo@demo.com	f	t	2019-01-21 03:08:33.08748+00	5
134	pbkdf2_sha256$20000$NGyto9YNOht2$B9Hz69U/lTL4d/m2N1NT+UZlH2LxoMTwVXfnJhg+1vI=	\N	f	134emilianomartinezr	Emiliano	Martínez Rentería	demo@demo.com	f	t	2019-01-21 03:08:33.113509+00	5
135	pbkdf2_sha256$20000$CDRDvHZFerZM$J4UPClt2+tpsn2Hg06qz3DVk/SElysmEhFH8XHBEthM=	\N	f	135jorgeignaciocasti	Jorge Ignacio	Castillo Vázquez	demo@demo.com	f	t	2019-01-21 03:08:33.139887+00	5
136	pbkdf2_sha256$20000$UL5hp3QZhRFP$oJ3hLhjHiwYWceU+ylWOcL7Z4/rs7HQfjxz8ifmckd8=	\N	f	136santiagorojaszapa	Santiago	Rojas Zapata	demo@demo.com	f	t	2019-01-21 03:08:33.165881+00	5
137	pbkdf2_sha256$20000$mhfozfFLOXeC$RhlYp5xVb2KekipF9qiIeUn4V3YnNH14N7r6zpsBPcg=	\N	f	137sebastianpaaschca	Sebastián	Paasch Calderón	demo@demo.com	f	t	2019-01-21 03:08:33.193415+00	5
138	pbkdf2_sha256$20000$KwzA8eFFxAQm$RkqUn4KZ9eE7ot1/Wltn8HETC+Zk/yQY1hP3sQrJAVs=	\N	f	138ricardozorreroarg	Ricardo	Zorrero Argüelles	demo@demo.com	f	t	2019-01-21 03:08:33.220149+00	5
139	pbkdf2_sha256$20000$EVMIrBIejKdd$f2GXpOWrWe0pk0PBbDjUHlBmWM/3XXqzRvHPpbCSoDc=	\N	f	139diegodelaveganuñe	Diego	De La Vega Nuñez	demo@demo.com	f	t	2019-01-21 03:08:33.24603+00	5
140	pbkdf2_sha256$20000$J6LwQwwjBNwY$ncWcfeHLkY7tNYr8beQzhQ3k30/qKYWBl4oci2J8neU=	\N	f	140jorgefreyremendoz	Jorge	Freyre Mendoza	demo@demo.com	f	t	2019-01-21 03:08:33.271688+00	5
141	pbkdf2_sha256$20000$ZngR3wMuZ8Rk$84fShpaxqdO+s6uTZk95j2r5zZ1KRcxjN/53z6g95r8=	\N	f	141josemanuelvenegas	José Manuel	Venegas Plasencia	demo@demo.com	f	t	2019-01-21 03:08:33.297239+00	5
142	pbkdf2_sha256$20000$lKd50Fe8eehB$J4oYkSCNF8roykeISBWllpSdKSIeYvDHmvzwuO6AC7g=	\N	f	142gustavoalfonsocas	Gustavo Alfonso	Casillas Argüelles	demo@demo.com	f	t	2019-01-21 03:08:33.322233+00	5
143	pbkdf2_sha256$20000$anHgqyG97Ujz$DykbKSho7S8BtWqZ5Dw7FbH/2xdQ+MJhMODoSHNQA2g=	\N	f	143maximilianocervan	Maximiliano	Cervantes Englerth	demo@demo.com	f	t	2019-01-21 03:08:33.347193+00	5
144	pbkdf2_sha256$20000$egzwwunAJoNK$RWUTUTpzvpLEAtdVZ6tRgI2b/SVGpznL5I2FktmRa60=	\N	f	144hectorjaspeadobec	Héctor	Jaspeado Becerra	demo@demo.com	f	t	2019-01-21 03:08:33.372975+00	5
145	pbkdf2_sha256$20000$q7FLXSHPOL7O$F51bNLkZ0o8rXfdgOjVpBqABfc2/9B0skvxFckQ2nrI=	\N	f	145sebastiancontroho	Sebastián	Contro Honicke	demo@demo.com	f	t	2019-01-21 03:08:33.397446+00	5
146	pbkdf2_sha256$20000$x8BtGDh7gtcF$DWb0iUP+GrJZxn79pY8/npOkMu/kGpmWuymCS2XIPuc=	\N	f	146santiagogomezdelv	Santiago	Gómez Del Villar	demo@demo.com	f	t	2019-01-21 03:08:33.422387+00	5
147	pbkdf2_sha256$20000$lBh52edMKvMY$fuQK0In5B6HDhkgLKYA2uJdtWTj117Lx67VWXfvY3OY=	\N	f	147sebastianzapatalo	Sebastián	Zapata López	demo@demo.com	f	t	2019-01-21 03:08:33.447752+00	5
148	pbkdf2_sha256$20000$KR1DqNi2berp$C1nEiXMtVRCEL4grR2eY8FL5JjQxNpWct/xlCe5QPI0=	\N	f	148emilianosanchezma	Emiliano	Sánchez Martínez	demo@demo.com	f	t	2019-01-21 03:08:33.473569+00	5
149	pbkdf2_sha256$20000$StI2a0RqlFVf$AOAxHPTZCWjdbq6Q6OQJxvmYXzqrZa7xc9/MTmpNO4U=	\N	f	149adrespesqueiravog	Adres	Pesqueira Vogt	demo@demo.com	f	t	2019-01-21 03:08:33.498736+00	5
150	pbkdf2_sha256$20000$Eyl2k6iR81MI$hLgK4LplJI9Jnr6PGjZA/pcrp1k31EukGkTzVO1WNkM=	\N	f	150mauriciohuertatov	Mauricio	Huerta Tovar	demo@demo.com	f	t	2019-01-21 03:08:33.52345+00	5
151	pbkdf2_sha256$20000$FFKwzjVzQwnk$nW/eYB/+YSwVAmY2kRiQ72P+adkXFdf1KCuFEuc69jk=	\N	f	151alejandrobarragan	Alejandro	Barragán García De León	demo@demo.com	f	t	2019-01-21 03:08:33.549704+00	5
152	pbkdf2_sha256$20000$BMM7TDtmFKo7$G1LNbgVO1k2/WJjNzJAsNEUmFt7a+jyx4EfeXKK4CzY=	\N	f	152mateosanchezcisne	Mateo	Sánchez Cisneros 	demo@demo.com	f	t	2019-01-21 03:08:33.575351+00	5
153	pbkdf2_sha256$20000$1LQ0KqOM6FBK$xUUcA9reGHbnfMM4uCACf+OXkhv+2UaGjHpXO76gKeQ=	\N	f	153santiagosanchezci	Santiago	Sánchez Cisneros	demo@demo.com	f	t	2019-01-21 03:08:33.60071+00	5
154	pbkdf2_sha256$20000$DMIwkJ1CeJ0f$5owTljzTUoxQkVzv4FMZjsO7cV76IIrytLEgb25mPNQ=	\N	f	154andresurrutiasegu	Andrés	Urrutía Seguí 	demo@demo.com	f	t	2019-01-21 03:08:33.625717+00	5
155	pbkdf2_sha256$20000$5NuBqgzdzWDm$0E+AKKrjZx/NytMV1Bi4c6b3GWGHku4wzzLdbRw2whs=	\N	f	155inescorresruiz	Inés	Corres Ruiz 	demo@demo.com	f	t	2019-01-21 03:08:33.651446+00	5
156	pbkdf2_sha256$20000$DqqvvB7lMduy$+qE9pftd2ktCPU78MpzNOF7kDC1ed0HoOZApG3erFyI=	\N	f	156matiasalvaradojua	Matías 	Alvarado Juárez	demo@demo.com	f	t	2019-01-21 03:08:33.676923+00	5
157	pbkdf2_sha256$20000$xb3v4NK6M22m$IKPpYXTvtOPr61G0507GqISfkP33Vv5N2T+EjK2ZQdg=	\N	f	157emiliolaracortesl	Emilio	Lara Cortés León	demo@demo.com	f	t	2019-01-21 03:08:33.703242+00	5
158	pbkdf2_sha256$20000$8506LHFq38CA$uQGa4Vrbxfj7q9wqF8MEHA9kg9rBsaMXN8LPzI3zLQ4=	\N	f	158alejandrolinarest	Alejandro 	Linares Thielly	demo@demo.com	f	t	2019-01-21 03:08:33.729042+00	5
159	pbkdf2_sha256$20000$OHKJcVssLRAN$pOHx2l2lH9xFHWPDr2q/4C4lK7OUmOWbqmIgLox9384=	\N	f	159emilioeugeniomart	Emilio Eugenio	Martínez Juárez	demo@demo.com	f	t	2019-01-21 03:08:33.755312+00	5
160	pbkdf2_sha256$20000$jqqOdR4lhNzV$FG1oUsgw/YGPt1H7lylpqkXHSxSlgBHiWTWq6UU3hag=	\N	f	160pabloquinterovill	Pablo	Quintero Villar	demo@demo.com	f	t	2019-01-21 03:08:33.780602+00	5
161	pbkdf2_sha256$20000$javPcGjMDi7B$B47DTo1c4vLfepi6VpeT2TteK3rJAvtUkE2kRU9KTKI=	\N	f	161carloshumbertooro	Carlos Humberto	Orozco Borunda 	demo@demo.com	f	t	2019-01-21 03:08:33.805222+00	5
162	pbkdf2_sha256$20000$j7ds6REpEw3D$7aPGTRc/IFji7guNqVEFYx9XWtHhEDpZmMJck9bz9uo=	\N	f	162mariaestherespino	María Esther	Espinosa Aceves 	demo@demo.com	f	t	2019-01-21 03:08:33.830376+00	5
163	pbkdf2_sha256$20000$FE6zGBG5iQYP$ErErFMaU+X0qUqNlT4jAMw93JB1UFcV3Dw3WQRg26Iw=	\N	f	163alejandrotreviñop	Alejandro	Treviño Pescador	demo@demo.com	f	t	2019-01-21 03:08:33.856015+00	5
164	pbkdf2_sha256$20000$EMB0AwNGNeoX$hMTSi5qMKxBgL62rwkCf57EU6Tsg+v7fXp7Q8byUDFk=	\N	f	164andremartinez(pru	Andre	Martinez (Prueba )	demo@demo.com	f	t	2019-01-21 03:08:33.881376+00	5
165	pbkdf2_sha256$20000$50Ds8VaWVkhA$D/HISqlprl4UXPekQBTxTp/4VTadCHUd+U1N8rrMGvM=	\N	f	165danielcortezranir	Daniel	Cortez Ranirez 	demo@demo.com	f	t	2019-01-21 03:08:33.905466+00	5
166	pbkdf2_sha256$20000$4Ghp7sR7oLdR$Um1aOdU6OvWLkllJ5d6+MY8Sv7CltcBsU48MeolNaoE=	\N	f	166dantecortezramire	Dante	Cortez Ramírez 	demo@demo.com	f	t	2019-01-21 03:08:33.930362+00	5
167	pbkdf2_sha256$20000$MvCO3JoJWTBz$U5UDBWCos0nuhI7x2HjUrYlowJvogsrdCM/TWXadS2o=	\N	f	167diegodelarivaunza	Diego	de la Riva Unzaga  	demo@demo.com	f	t	2019-01-21 03:08:33.954852+00	5
168	pbkdf2_sha256$20000$BlbvRqX7HRVN$rmwLtqKRo3/J1RwSt2SqBS++ULxjiE0ILCfMwPZ3oqU=	\N	f	168erikdöringgutierr	Erik 	Döring Gutiérrez  	demo@demo.com	f	t	2019-01-21 03:08:33.980629+00	5
169	pbkdf2_sha256$20000$3vYUF8utQErH$K4GNn8cpbGISlQH9F7rYclAao+ZmOqkKOsC7LzouwUU=	\N	f	169juliangraueharo	Julian	Graue Haro 	demo@demo.com	f	t	2019-01-21 03:08:34.005402+00	5
170	pbkdf2_sha256$20000$rX4vmCnzNji5$+bQJy12eTQ74ng0u35//v8SUldg9NeJgd66+J/qCI0A=	\N	f	170gilbertomoedanoar	Gilberto	Moedano Arenas	demo@demo.com	f	t	2019-01-21 03:08:34.030839+00	5
171	pbkdf2_sha256$20000$clq4meF4qxVc$s2LqWWA3PKK88W2ZhiWbaJKuRq/O5sgG0kyHR5+2Z3w=	\N	f	171gaelgerardoreyesm	Gael Gerardo	Reyes Martinez	demo@demo.com	f	t	2019-01-21 03:08:34.055887+00	5
172	pbkdf2_sha256$20000$XTaOX78Nhk7q$4mcRbj2553dAVxd6HQ5ZdfQkh0ReMoPmPbwdpA0gSXQ=	\N	f	172paoloramirezvazqu	Paolo	Ramirez Vazquez	demo@demo.com	f	t	2019-01-21 03:08:34.081072+00	5
173	pbkdf2_sha256$20000$096hDnXRPpn9$bRbRX5+3hFVtQSR8OfkI5WnKhSSIFFoTBV612OBCkEM=	\N	f	173juliopabloascorve	Julio Pablo	Ascorve Balderas	demo@demo.com	f	t	2019-01-21 03:08:34.105987+00	5
174	pbkdf2_sha256$20000$gzq7rqO3BEVN$P5wf1XlzkvU9Oo2BB18diNRqharxac+eppFh8/Vz2Zs=	\N	f	174andrescardenascru	 Andres	Cardenas Cruz	demo@demo.com	f	t	2019-01-21 03:08:34.130861+00	5
175	pbkdf2_sha256$20000$PxWkSs1x1C0T$tefDOQgoNuaWCl0q2+i4ZmE68Ia9pFwEhnRxNt/bvas=	\N	f	175salomonairaje	Salomon	Airaje	demo@demo.com	f	t	2019-01-21 03:08:34.155499+00	5
176	pbkdf2_sha256$20000$KFM12CIKMZYD$h/CKOv3A8jcNWv0qH3bPJgApkSAgOKSAtiauYpgKANE=	\N	f	176luccianobarocioar	Lucciano	Barocio Arriencio	demo@demo.com	f	t	2019-01-21 03:08:34.179797+00	5
1232	pbkdf2_sha256$20000$zz89X34fB30z$NmOIhto/BmZyf0P1bEFcz41fSV3a3/2fPwjl1q9OjmM=	2019-01-21 19:10:10.878106+00	f	kevinbvb 	Kevin Maldonado	Kevin Maldonado	name@example.com	f	t	2019-01-21 19:00:49.389033+00	4
177	pbkdf2_sha256$20000$xEntXg8Y1zN9$wowaYLbcXaHb2/Dh+kxY6v20J/2DC4y/qukD+2te1EY=	\N	f	177diegovaldezlopez	Diego	Valdez Lopez	demo@demo.com	f	t	2019-01-21 03:08:34.205337+00	5
178	pbkdf2_sha256$20000$riaJsZpdbFvH$5gbNQQh4VO8X9A2c2+lVC+aOhCpubgEnHQyaGFebw8I=	\N	f	178santiagodiazdeleo	Santiago	Diaz de Leo 	demo@demo.com	f	t	2019-01-21 03:08:34.231019+00	5
179	pbkdf2_sha256$20000$DNhnn9I55mYo$aUbtVPGPyvjSvs++U1KHX5oyBFuwMd0cIKvwsFtXBtk=	\N	f	179rodrigomejiaalvar	Rodrigo	Mejia Alvarado	demo@demo.com	f	t	2019-01-21 03:08:34.256964+00	5
180	pbkdf2_sha256$20000$JOszajxOTNaj$m2/mTzWkAUtdhOu084ixGsHEWF45DpWxD0qjRLdzmew=	\N	f	180manuelvalero	Manuel	Valero	demo@demo.com	f	t	2019-01-21 03:08:34.282579+00	5
181	pbkdf2_sha256$20000$Ovd8GYljHqFk$/2LmA9qiV2cniNyWYjFLGiSE3W9FOrZHTXexhIWX5PQ=	\N	f	181andresmiguelherna	Andres  Miguel 	Hernandez Bernal	demo@demo.com	f	t	2019-01-21 03:08:34.309214+00	5
182	pbkdf2_sha256$20000$yylCeS73echu$rsNS5W5K+4AN1BvtyVXA7Z/M1E8xy3QnV4LOy6Un0uI=	\N	f	182danielkiewekgarci	Daniel	Kiewek Garcia 	demo@demo.com	f	t	2019-01-21 03:08:34.336702+00	5
183	pbkdf2_sha256$20000$SdqlEnZ4cBFI$7OFsJ3wsGw6/KRgZ5IPNv9c2tbh01pVmVddvsz0MLDc=	\N	f	183danielhaziel	Daniel	Haziel	demo@demo.com	f	t	2019-01-21 03:08:34.361335+00	5
1246	pbkdf2_sha256$20000$v5URa5j5lDFU$kawTDbih9ea08T9ZPwxww7gRkdK77KfyINfKFb1Ea5s=	\N	f	sofiasandi	Sofia Sandi	Sofia Sandi	name@example.com	f	t	2019-01-21 19:47:22.206796+00	4
1513	pbkdf2_sha256$20000$2n0yqmb44ZZP$QcP5MgF9xNkzxTb7FbMhNYdzYWAp0uiuMDgl0KkWktU=	\N	f	mirre13	María Fernanda	Aguirre	demo@demo.com	f	t	2019-01-23 01:05:30.16543+00	5
1514	pbkdf2_sha256$20000$Rm6TMFGu76lL$eMg5kG31thuC+LqYRDTMsyM3OcDO+epzqa1tioV9Ru8=	\N	f	cagui13	Dasha	Ortiz	demo@demo.com	f	t	2019-01-23 01:05:30.191671+00	5
1515	pbkdf2_sha256$20000$5sYSOLtnpcOU$Eejmu1JYM8NTGRTtWTMfBImEjPjAlA04KlfTIOMzN9U=	\N	f	xejia15	Ximena	Mejia	demo@demo.com	f	t	2019-01-23 01:05:30.216984+00	5
1516	pbkdf2_sha256$20000$sZVQ6PgIWMeV$lAJTVA1Y+hd0G8wS6eoqdc+LCxgD1gPkDsuuIu0kpwk=	\N	f	cagui14	Regina	Martínez	demo@demo.com	f	t	2019-01-23 01:05:30.242762+00	5
1517	pbkdf2_sha256$20000$zuxg4OGwZvu2$AFRCoo5mMNb/jyjOm4ZqpzuX8Lt9YN8ZRryCOGOM5jA=	\N	f	ryala17	Regina	Ayala	demo@demo.com	f	t	2019-01-23 01:05:30.268085+00	5
1518	pbkdf2_sha256$20000$vUN56LFNFkW4$hjfG21/bB0IVQ3pvMGRRj/YGpweSjsmvdll6dSMMr+o=	\N	f	cagui15	María José	Leal	demo@demo.com	f	t	2019-01-23 01:05:30.293229+00	5
1519	pbkdf2_sha256$20000$mtcB6qM8CgbR$1AAhocBC2h+E/SZj0Hpmx5O7D5T63FxgcYMNzM5lY98=	\N	f	varro19	Valentina	Navarro	demo@demo.com	f	t	2019-01-23 01:05:30.321135+00	5
1520	pbkdf2_sha256$20000$uals1ADEFKiT$qLtkA6ohoYhH4sRbPmAixWmE2goo0ignf5pfTn63qEI=	\N	f	cagui16	Ana Camila	Mata	demo@demo.com	f	t	2019-01-23 01:05:30.346853+00	5
1521	pbkdf2_sha256$20000$ypSLbJs0sFd9$ScJYRWNQGNbv5pNBOS3TuPboA1pXN9Za2x57helZl6M=	\N	f	aález21	Alexa	González	demo@demo.com	f	t	2019-01-23 01:05:30.372152+00	5
1522	pbkdf2_sha256$20000$YIMoy5MaKKDb$TrAXbKAl8BydaCitgCHZ2tUbxEWMyhSiLVRtXXCXUWQ=	\N	f	cagui17	Ana Lucía	Miranda	demo@demo.com	f	t	2019-01-23 01:05:30.398013+00	5
1523	pbkdf2_sha256$20000$3hSwGWw9DYZc$mspu89y4o70ZZFPA1QaWQ14cLEby3gSpPFfEFFfFXkU=	\N	f	arcía23	Alexa	García	demo@demo.com	f	t	2019-01-23 01:05:30.425883+00	5
1524	pbkdf2_sha256$20000$OHoTMH6Jjrir$QS9hZsfOti9brwUZgHK7Z4ynZd2JIfpuN2/t4fEorng=	\N	f	cagui18	Sofía	Ureña	demo@demo.com	f	t	2019-01-23 01:05:30.450273+00	5
1525	pbkdf2_sha256$20000$8JjbQG2k8jED$EAajUHcAARzNtD2DJfJsddUxSbK7IIOfdWfVPqkfcAc=	\N	f	pelli25	Paola	Leonelli	demo@demo.com	f	t	2019-01-23 01:05:30.475516+00	5
1526	pbkdf2_sha256$20000$njuohPZ3USsj$ouhg6ZgSWf/YadBxQeG8xJZf5DYSGAIwQU0X4uzlrWU=	\N	f	cagui19	Maya	González	demo@demo.com	f	t	2019-01-23 01:05:30.50119+00	5
1527	pbkdf2_sha256$20000$z6slDwFVXFsA$rqB48F0Ej72cV0MTL5pp4CPv2+OASEZJqUnfr51h77k=	\N	f	xzano27	Ximena	Lozano	demo@demo.com	f	t	2019-01-23 01:05:30.527362+00	5
1528	pbkdf2_sha256$20000$CjNcVBFJv5Bl$z3VWB8uPPz0AOErtQqxhLXOoML5aacz8FyjEpy6KLxM=	\N	f	cagui20	María Fernanda	Briseño	demo@demo.com	f	t	2019-01-23 01:05:30.552818+00	5
184	pbkdf2_sha256$20000$qbGuASbDq7e7$nkaj/W3XHyJyOhbUNtfYlMxbKibpJe70u074zmXECIw=	\N	f	184alonsomartinez	Alonso	Martinez	demo@demo.com	f	t	2019-01-21 03:08:34.386904+00	5
185	pbkdf2_sha256$20000$NDTm3z46EzNq$XRWNJ6W+/rJSa/Coaf/XWMR0dncyDGkQyTgjYPZdoOw=	\N	f	185vinicioaguirretor	Vinicio	Aguirre Torres	demo@demo.com	f	t	2019-01-21 03:08:34.413497+00	5
186	pbkdf2_sha256$20000$Z7QidTeiw2X1$lIpoQonS+OIu+SVFISKiG47fa5vJdKT11s3HPMZB9i0=	\N	f	186santiagoleyvagarc	Santiago	Leyva Garcia 	demo@demo.com	f	t	2019-01-21 03:08:34.444058+00	5
187	pbkdf2_sha256$20000$O9Sgg6nhBet7$tszjpjpRQeHnnmatG5imUHzsoBr7nlX325Gl0uOcKDI=	\N	f	187danielmoradorebol	Daniel	Morado Rebollar 	demo@demo.com	f	t	2019-01-21 03:08:34.468493+00	5
188	pbkdf2_sha256$20000$Ltq9kxzSP4Ui$9StZRnmMsWP2tfuQFUUKu7uR4aoft+VSWSgJ7hTOiZk=	\N	f	188nicolascarrionlop	Nicolas 	Carrion Lopez	demo@demo.com	f	t	2019-01-21 03:08:34.493489+00	5
189	pbkdf2_sha256$20000$XGp7hEr1d1IR$OFMhr4xFeK5nzxiE0QkPW4WE1ItJUFtd9jG7jAUiiH8=	\N	f	189jorgeolinvelasco	Jorge	Olin Velasco	demo@demo.com	f	t	2019-01-21 03:08:34.517826+00	5
190	pbkdf2_sha256$20000$CVRS30AcRDKH$/KeHIZtORZYnh+Q6t+oCiAC9xdeZxCMWPHHL/yu5qFc=	\N	f	190valeriaalizeezamo	Valeria Alizee	Zamora Ortoga	demo@demo.com	f	t	2019-01-21 03:08:34.543437+00	5
191	pbkdf2_sha256$20000$c75iXrtdL8ZV$tn/2bV0Du1X7lbxllFv1ZahSsEyjzU/DvMy/va7SGm8=	\N	f	191renatanavarrovill	Renata	Navarro Villarreal	demo@demo.com	f	t	2019-01-21 03:08:34.56698+00	5
192	pbkdf2_sha256$20000$ekELn8NhxONN$/IpVq/gW9+RFikNXAvLp6tMCds2ik0lHYFb9xR0lpa4=	\N	f	192salvadorjanmartit	Salvador Jan	Martitinez Dueñas	demo@demo.com	f	t	2019-01-21 03:08:34.590782+00	5
193	pbkdf2_sha256$20000$ecCiw443aOId$YpFbGOHkzJBzTKOgI3kDHu/k/iMsyNXUBJUTJ10Wa8s=	\N	f	193iandiegomejiaorti	Ian Diego	Mejia Ortiz	demo@demo.com	f	t	2019-01-21 03:08:34.614917+00	5
194	pbkdf2_sha256$20000$yZs540IyhDhm$HYP+aiY4mhKUK9GNObHAVoVeymQx52Zrlyk9ZAcWA/w=	\N	f	194rosendojimenezser	Rosendo	Jimenez Serafin 	demo@demo.com	f	t	2019-01-21 03:08:34.638734+00	5
195	pbkdf2_sha256$20000$JNethD4i1Pxv$j53e62DknbCt5llWHq2R1Xq7SaBGdCcAlZMcAhm2ISs=	\N	f	195cosmoblancoguerre	Cosmo	Blanco Guerrero 	demo@demo.com	f	t	2019-01-21 03:08:34.662433+00	5
196	pbkdf2_sha256$20000$yztxhxmJvcih$a0+lPpwqBDWyscnqhG5KNCKWLemvizuK0s/CAkeKvTQ=	\N	f	196joshuadanielbecer	Joshua  Daniel	Becerril Lopez	demo@demo.com	f	t	2019-01-21 03:08:34.687216+00	5
197	pbkdf2_sha256$20000$OpmqCdki496Z$sI2ARNNrXhuyGa5OtQw+6yKzayfn3seoae4BSfsjgvc=	\N	f	197patriciopichardol	Patricio	Pichardo Luviano 	demo@demo.com	f	t	2019-01-21 03:08:34.711275+00	5
198	pbkdf2_sha256$20000$OzNg3waKclNg$R3q0L0ck9Wj6q2Ql0fU88BEZR3X0M7fdhy1cYA2Qu/c=	\N	f	198carlosdiazdeleona	Carlos	Diaz de Leon Adamkova	demo@demo.com	f	t	2019-01-21 03:08:34.736233+00	5
1233	pbkdf2_sha256$20000$DgWPC2DQx8sI$BSuJtHCsTVF5LTznG6Ad0kENh8Txfb2Z7H5SbJKhALo=	\N	f	williambvb 	William Miguel Calde	William Miguel Calde	name@example.com	f	t	2019-01-21 19:02:11.693792+00	4
199	pbkdf2_sha256$20000$PAlMiHFULIgH$KiUuCcYdo3jleVBhHyUK3IMaBucOOG1o7L71DZNgz74=	\N	f	199salvadorpeñamonca	Salvador	Peña Moncada	demo@demo.com	f	t	2019-01-21 03:08:34.760399+00	5
200	pbkdf2_sha256$20000$VG0CGKjKk522$V8wUx7Sraw2wOkE6/CAbL4m37m8bEtD7sg89y2zq/l4=	\N	f	200ianlucamaraschein	Ian Luca	Marascheini Gil	demo@demo.com	f	t	2019-01-21 03:08:34.784485+00	5
201	pbkdf2_sha256$20000$iluXnJFip6Rb$sJEpmtKkYIUPr8Ti3xc+w2FbeiaheWt89UEuIElxVHE=	\N	f	201alejandrorodrigue	Alejandro	Rodriguez Carrillo	demo@demo.com	f	t	2019-01-21 03:08:34.809298+00	5
202	pbkdf2_sha256$20000$WmgOicNmRA6K$dsN6KXK9voGmpfZCssjcPWN6FprTUxFdDNfUNICDr6Y=	\N	f	202juanpablorodrigue	Juan Pablo	Rodriguez Flores	demo@demo.com	f	t	2019-01-21 03:08:34.833431+00	5
203	pbkdf2_sha256$20000$ZoETBn9DEdVI$8T+HhroxvS6K8jDPhVjyb2y5+tcL/kGixAlTE4SyhuE=	\N	f	203brunovazqueztapia	Bruno	Vazquez Tapia	demo@demo.com	f	t	2019-01-21 03:08:34.869684+00	5
204	pbkdf2_sha256$20000$wSWDMvBfZrr4$Ze8y9yAu1S0RC4HSE0dd9UDsDMq8wfPYs6fIsKipd1o=	\N	f	204miguelangelgarcia	Miguel Angel	Garcia Sanchez	demo@demo.com	f	t	2019-01-21 03:08:34.902764+00	5
205	pbkdf2_sha256$20000$s9ZaijSmRO4J$aWTCAaWupNKj3ePrd9fEIPE/pGc2WCkaSk0zF3oaENI=	\N	f	205fernandoalcantaro	Fernando	Alcantar Ortiz	demo@demo.com	f	t	2019-01-21 03:08:34.926742+00	5
206	pbkdf2_sha256$20000$NTTGOSsszpOB$nS95D5/+q1pCr7Zc2JtJ+YQv9XAGXqd3OFpWeqzxzRM=	\N	f	206carlossebastianru	Carlos Sebastian	Ruiz Caballero	demo@demo.com	f	t	2019-01-21 03:08:34.950932+00	5
207	pbkdf2_sha256$20000$ivBHwWVjlg4C$c8OTjnmuUjdPYUJzRQ+I9ijq/s7CUnO1GQA+LnIijLU=	\N	f	207emiliocarlosalman	Emilio	Carlos Almanza	demo@demo.com	f	t	2019-01-21 03:08:34.98193+00	5
208	pbkdf2_sha256$20000$r37hEF4hdkFx$eyvG9UroIPnUVf0dwB2SkO5iCp0HeAtnJt8BQ/ZcSyo=	\N	f	208poltreserrasbogot	Pol Tres	Erras Bogota	demo@demo.com	f	t	2019-01-21 03:08:35.025099+00	5
209	pbkdf2_sha256$20000$mKcClARIbf8k$2vbqrFec0BgNnOKeeC0/Bz0Qs0c6QaP0yOOAZBux+a0=	\N	f	209santiagocalvasanc	Santiago	Calva Sanchez	demo@demo.com	f	t	2019-01-21 03:08:35.060177+00	5
210	pbkdf2_sha256$20000$rDn5ulfT9fUk$OfyDsjYJfV8u92NWelJJ92RcRZIisYb2jdX4Yk139JY=	\N	f	210ulisesmauricioper	Ulises Mauricio	Perez Olivarez	demo@demo.com	f	t	2019-01-21 03:08:35.083314+00	5
211	pbkdf2_sha256$20000$8GnBlcsGIOik$z7H0BoGOc3+HQCuEL2xu5XYiGSHJg12Z86GN8qHF1Mc=	\N	f	211javierhernandez	Javier	Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:35.106761+00	5
212	pbkdf2_sha256$20000$YAiFzxQZhzPD$uZ6gEOct82gMW/XI5zz80RGcwbFS9azki4rDgl7JAic=	\N	f	212emilianoxavieravi	Emiliano Xavier	Aviles Marquez	demo@demo.com	f	t	2019-01-21 03:08:35.130136+00	5
213	pbkdf2_sha256$20000$hM66nq8l8Nv0$gF21Xm4Iyk84tow58L8Z50yRH+xwWt8a33mKj5+f02s=	\N	f	213javiervalero	Javier	Valero 	demo@demo.com	f	t	2019-01-21 03:08:35.153308+00	5
214	pbkdf2_sha256$20000$a4p34rUymlbO$/0owgG/tA5HEUVncHqWQNLAo8ocT+S+W9FNKB1Ovav4=	\N	f	214luisenriquegrcia	Luis Enrique	Grcia 	demo@demo.com	f	t	2019-01-21 03:08:35.176725+00	5
215	pbkdf2_sha256$20000$FYxWSnXjjErm$WO6vDSvn2nsHOU1i1OryUKvVi6E7VfxwIsiY0boqJa0=	\N	f	215mateomiguelorozco	Mateo Miguel	Orozco Raquetts	demo@demo.com	f	t	2019-01-21 03:08:35.200301+00	5
216	pbkdf2_sha256$20000$K8lzgayDjvD3$bbouuURKot1O4PvLDvA3B8HEbG942wehTMQ9ggkSbpQ=	\N	f	216alexgandaracastil	Alex	Gandara Castillo 	demo@demo.com	f	t	2019-01-21 03:08:35.223562+00	5
217	pbkdf2_sha256$20000$45i565WV1S09$eOpArSXuU04Qwifd7ulS9Un6RJ++feecYk6u3qxVtYY=	\N	f	217diegoadrianzamora	Diego Adrian	Zamora Ortega 	demo@demo.com	f	t	2019-01-21 03:08:35.246859+00	5
218	pbkdf2_sha256$20000$RZYoviRYjBgw$FbbGiLlW0wqjdz+iKZfIzO519yz3tn39KcrQ+dh+1D8=	\N	f	218nicolascallejasqu	Nicolas	Callejas Quiroz	demo@demo.com	f	t	2019-01-21 03:08:35.27018+00	5
219	pbkdf2_sha256$20000$MrpsilCxXy4t$v8Z1ZG8JtM+an6mlCdscYFH8iIe0erqvXnS1opuqcsY=	\N	f	219emiliaisabelvazqu	Emilia Isabel	Vazquez	demo@demo.com	f	t	2019-01-21 03:08:35.293506+00	5
220	pbkdf2_sha256$20000$DkqB3Ef4gXYo$BtjtNWHp0Ejtl6UACiuCUolSI/Hgfqx0m9VgN+8lLG8=	\N	f	220emilianofuentesca	Emiliano	Fuentes Castro	demo@demo.com	f	t	2019-01-21 03:08:35.31774+00	5
221	pbkdf2_sha256$20000$kGQKE92DafDL$MFAA2k3/JC2NWK3byl4q/6liKd+fWaIf1LCBdl0pKUI=	\N	f	221matiasgarcia	Matias 	Garcia	demo@demo.com	f	t	2019-01-21 03:08:35.341943+00	5
222	pbkdf2_sha256$20000$AhslvgmOcrsY$7J/J8P5yrDwvL9ZgwKfQqJ811PkjWW/4MKo33ZPmFVI=	\N	f	222matiasaragonmora	Matias	Aragon  Mora	demo@demo.com	f	t	2019-01-21 03:08:35.365287+00	5
223	pbkdf2_sha256$20000$Ma19ntzV2mjP$a/++HDp7r8WOzzZyrApi6/yW0z80hRQZhg3zP6fDqf4=	\N	f	223josemarianovazque	Jose Mariano	Vazquez	demo@demo.com	f	t	2019-01-21 03:08:35.388693+00	5
1234	pbkdf2_sha256$20000$QoOq3A5QIGNG$S69mnl6pPzUooZY0b0cZLj8xaW0wakmrAglM9qNWOAI=	\N	f	carlosbvb 	Carlos Sanchez Rodri	Carlos Sanchez Rodri	name@example.com	f	t	2019-01-21 19:05:16.85009+00	4
224	pbkdf2_sha256$20000$axsmrbtdWP4r$bteSirPsnD4WQkM43pqPJy8dubweFFUg9OmIk0bgTKk=	\N	f	224teodeleonsuarez	Teo	de Leon Suarez	demo@demo.com	f	t	2019-01-21 03:08:35.412316+00	5
225	pbkdf2_sha256$20000$0fFOYmgkyApH$XwV67HJSbf4oGU/7NwY9C+oD+JfUw7TTPVgFlXxI34I=	\N	f	225maximilianosiebee	Maximiliano	Siebee Galban 	demo@demo.com	f	t	2019-01-21 03:08:35.436666+00	5
226	pbkdf2_sha256$20000$UaIm0Ssf95SY$KHYfS+wmSkCenzklFkczwWy8I4Y5IczYGUopAu0Ctok=	\N	f	226patriciobañosgarc	Patricio	Baños Garcia	demo@demo.com	f	t	2019-01-21 03:08:35.462839+00	5
227	pbkdf2_sha256$20000$4BTsnDMcJOmH$UOnCXY3bXExZMfUqEL9du4QKiAYFpNxeF6DbjvWduY8=	\N	f	227rubennavarrovilla	Ruben	Navarro Villareal 	demo@demo.com	f	t	2019-01-21 03:08:35.487373+00	5
228	pbkdf2_sha256$20000$Mk70vr6tpxgZ$/pxFKBkvX/a9PAbEjD6sRxN/OmrdLK6oTbVclXwl/Ng=	\N	f	228rafaellopezalvare	Rafael	Lopez Alvarez 	demo@demo.com	f	t	2019-01-21 03:08:35.51136+00	5
229	pbkdf2_sha256$20000$5XiJTF54PzEa$x1vMReaO5z2opJulD0TFVldsTz5BU/yQE2pDQFbF6ds=	\N	f	229juanguillermojuar	Juan Guillermo	Juarez Tinoco	demo@demo.com	f	t	2019-01-21 03:08:35.535717+00	5
230	pbkdf2_sha256$20000$naBKjXGx0yzl$ZUDD1sN1VtVVQY3sraBJmcVy0/+KHWeIIWI1Ru1w8fY=	\N	f	230iñigoruizamezcua	Iñigo	Ruiz Amezcua 	demo@demo.com	f	t	2019-01-21 03:08:35.559786+00	5
231	pbkdf2_sha256$20000$ztVa9Lp6ONM6$lsb6ajKWxZ+3vVrVmKsb6aOueeDIyjUVOnVXzF7yq2s=	\N	f	231santiagoalonsoang	Santiago Alonso	Angeles Escobar	demo@demo.com	f	t	2019-01-21 03:08:35.584499+00	5
232	pbkdf2_sha256$20000$yAWRj6crMcXn$wUR7kX5fgUBe6miaAFdMkhbReVcSPr9+BtsTxgFGnFM=	\N	f	232josebojorgemoscon	Jose	Bojorge Mosconi	demo@demo.com	f	t	2019-01-21 03:08:35.609968+00	5
233	pbkdf2_sha256$20000$ltFrXCDRERVT$rQAocXYCu2EqyBbSGLBNhdx7ITA+oDjhxFt7EKLk9Mo=	\N	f	233andresdelvalleg.	Andres	del Valle G.	demo@demo.com	f	t	2019-01-21 03:08:35.634134+00	5
234	pbkdf2_sha256$20000$5ZkIfz3qkq2Z$NAMEobkPBKnk661QC2spBkPLc4P31YrAn9qY9WtuNPk=	\N	f	234cristobalperezcor	Cristobal Perez	Correa Mora 	demo@demo.com	f	t	2019-01-21 03:08:35.658147+00	5
235	pbkdf2_sha256$20000$P1ZHKSOo2MDo$AukEghEXwFkefWo/duWE49ul6oXc8/cXtdtkmRFfOZE=	\N	f	235leongrediagaramir	Leon	Grediaga Ramirez	demo@demo.com	f	t	2019-01-21 03:08:35.682382+00	5
236	pbkdf2_sha256$20000$NgW1wPfNXXZ0$sjbD0IO2tJnlxFQUZGYlQOSObzXdYlSjP++5s9fiSaw=	\N	f	236luisandresrojasur	Luis Andres	Rojas Urias 	demo@demo.com	f	t	2019-01-21 03:08:35.707133+00	5
237	pbkdf2_sha256$20000$niam4JN1RBys$yLs+RSQMTeHy/7GVJYqr6h/PxH+HlUxK7UZ37iqmVAg=	\N	f	237camilacallejosqui	Camila	Callejos Quiroz 	demo@demo.com	f	t	2019-01-21 03:08:35.731722+00	5
238	pbkdf2_sha256$20000$srdV1Fw2P93X$FmiEDHAxnyYgXYajLkfqW7qLIz+kUtwHHwJtmuBXqEI=	\N	f	238valentinoreytrejo	Valentino Rey	Trejo Flores	demo@demo.com	f	t	2019-01-21 03:08:35.755647+00	5
239	pbkdf2_sha256$20000$ufD9MO7Mu4Yd$vE3lu51gwDTmaLGs7Nbg+/WNOWhlaj3dIgEw89map9Y=	\N	f	239ikersaucedaalvare	Iker	Sauceda Alvarez 	demo@demo.com	f	t	2019-01-21 03:08:35.77978+00	5
240	pbkdf2_sha256$20000$mjo4Ar56b995$7tKJ/iUT2ctZ/RJE4FAiSyjY6ZcoKqoO5g/nXHEcAJU=	\N	f	240mariarominadelgad	Maria Romina	Delgado Meneses	demo@demo.com	f	t	2019-01-21 03:08:35.803171+00	5
241	pbkdf2_sha256$20000$K0ndNDaRj6Nu$49bPH9dmg8VVifFPrNZAaDNVCfP81Oj43ATFEQ8C57g=	\N	f	241davidmaximilianol	David Maximiliano	Lorence Paredes	demo@demo.com	f	t	2019-01-21 03:08:35.829301+00	5
242	pbkdf2_sha256$20000$9MCaWNLEKlHJ$/9p16HY7aGMmGvUHVkwPamrNyJcfL4hX9ZBodSV0vRU=	\N	f	242mateolopezvergara	Mateo	Lopez Vergara 	demo@demo.com	f	t	2019-01-21 03:08:35.852729+00	5
243	pbkdf2_sha256$20000$1GM1GSdD8J6w$5lbsLv7Ff1wvRghoEbhI7BZSxUZ9C15Cf2Dm7/SAXVU=	\N	f	243patriciotorresgar	Patricio	Torres Garcia	demo@demo.com	f	t	2019-01-21 03:08:35.880905+00	5
1837	pbkdf2_sha256$20000$zmKVl5NDp0qP$cfTC2bNcPgMndigX7Q6zrUnthKxwjah2rAk7UgXFvKY=	2019-02-15 17:46:23.467829+00	f	mbustamante	Eric	Bustamante	demo@demo.com	f	t	2019-02-05 08:33:11.415991+00	3
244	pbkdf2_sha256$20000$DxV6xzHoNGWu$vxXsMaWwBh5k/CRHLggEeYHqZoQlMiD8fWjcPNQBRmg=	\N	f	244lorenzotorresgarc	Lorenzo	Torres Garcia	demo@demo.com	f	t	2019-01-21 03:08:35.90449+00	5
245	pbkdf2_sha256$20000$R75vWQXOvEHx$IbMhNvfqhk6V+SosAKl4nhqWs1zH7WFGTI/5E/6HOao=	\N	f	245eliasvital	Elias	Vital	demo@demo.com	f	t	2019-01-21 03:08:35.928658+00	5
1282	pbkdf2_sha256$20000$hUXjD6aC4EBs$z5L1nbEacLFytWvbSyMwwDely6ND6nWY2MTaV6dL35w=	\N	f	jbern82	Juan Pablo	Bernal Wiliams	demo@demo.com	f	t	2019-01-22 21:11:46.98074+00	5
1283	pbkdf2_sha256$20000$pNeAWbHOEZR5$316wCK2qc30iGLuEX6ZXtdLxmxpdKmGNyUZaoJ3W3j4=	\N	f	icort83	Iñaki	Cortez Mendoza	demo@demo.com	f	t	2019-01-22 21:11:47.007241+00	5
1284	pbkdf2_sha256$20000$itCzaWgOZTDB$Peayhk7/y6CSA9312DQmTMkv5ga1yTUKGlXA+SxsHKg=	\N	f	eeste84	Emilio	Estebane Sola	demo@demo.com	f	t	2019-01-22 21:11:47.031747+00	5
1285	pbkdf2_sha256$20000$fEYqhgL7zSzn$hNBNtJcT73zMZ7xYhI91igGRnyKeeYI22lREozHmbZ4=	\N	f	lhera85	Leonardo	Herandez Torres	demo@demo.com	f	t	2019-01-22 21:11:47.057796+00	5
1286	pbkdf2_sha256$20000$Kx1suu7JiINb$5n9EEm3hhSRIMSkvXwkeAj0fjqiGR/+Twu4Qt0hXqkE=	\N	f	lisla86	Luis Alfonso	Islas Montes	demo@demo.com	f	t	2019-01-22 21:11:47.083286+00	5
1287	pbkdf2_sha256$20000$JVdgodOiSJms$vJlg5+p6vr6j5kH38EOHBtzQE4QTNNk+Wuiytpt/Ho4=	\N	f	bjime87	Bruno	Jimenez Alcala	demo@demo.com	f	t	2019-01-22 21:11:47.110236+00	5
1288	pbkdf2_sha256$20000$sYtyNpKdGpyd$Dl1rbRDhVobKfo0Ep2/ObaMfIjzJLehYX87LiabmacA=	\N	f	mmarg88	Matías	Margaleff Hanessian	demo@demo.com	f	t	2019-01-22 21:11:47.135029+00	5
1289	pbkdf2_sha256$20000$lNPbIEBr2Bv7$lc8RtUb3t7G4hb5Iydo0DwJFYIRYbbyv3vqqyg7p7Ok=	\N	f	mriva89	Mariano	Rivas Mercado Ramos	demo@demo.com	f	t	2019-01-22 21:11:47.160694+00	5
1290	pbkdf2_sha256$20000$kcVqLkJBpZN4$yjyTb4Lf1pcmKBm3kH2hR6MHFt8C9Fjx/RGMzXZOxLs=	\N	f	msimo90	Mario Francisco	Simon Roldan	demo@demo.com	f	t	2019-01-22 21:11:47.187667+00	5
1291	pbkdf2_sha256$20000$Hr5l0Rnyee8r$sdh0bbb7KapNAkW8TRBSCpbnwHQldXrxz16xmAB9ySI=	\N	f	sampu91	Santiago	Ampudia Alvarez	demo@demo.com	f	t	2019-01-22 21:11:47.212637+00	5
1292	pbkdf2_sha256$20000$BCLfjsVYf4tl$cRG/sgGoF+i3u2C4L+oR8arDPLh2O4tz5u+uAfN5ZJU=	\N	f	ccama92	Cristobal	Camacho Cortazar	demo@demo.com	f	t	2019-01-22 21:11:47.237303+00	5
1293	pbkdf2_sha256$20000$vURQL25UqB3m$eLgtC7mws9LDt2/VjZyrE+bZ/BetcV/g3e4NqNTsA/Y=	\N	f	acoro93	Alejandro	Coro Elizondo	demo@demo.com	f	t	2019-01-22 21:11:47.262196+00	5
1294	pbkdf2_sha256$20000$JIzPnOvOzEKP$GMb3/m1UzkVs9QMUOk1g1BpIIC/INblyX+VmWDlsLIg=	\N	f	gezet94	Guillermo Alonso	Ezeta Regalado	demo@demo.com	f	t	2019-01-22 21:11:47.286816+00	5
1295	pbkdf2_sha256$20000$82YvQaBDKOGT$0NoqONQd+YMW/3Y2zyzwDDRjnnM1CayiHBuVItzxtEc=	\N	f	rlome95	Rebeca	Lomeli Garcia Briones	demo@demo.com	f	t	2019-01-22 21:11:47.322678+00	5
1296	pbkdf2_sha256$20000$QzCxG868QfnY$PCx8niog7adkSIAJLNfQV+uEgIw0JInrURpvLQQOXxA=	\N	f	pluzu96	Pablo	Luzuriaga De La Torre	demo@demo.com	f	t	2019-01-22 21:11:47.36534+00	5
1297	pbkdf2_sha256$20000$AQshN8m05S7N$9TS99SGGAQPo+5vtQfVHW6ogRocRXfAaYEj9V6nwjz8=	\N	f	msave97	Miguel Angel	Saveedra Cortez	demo@demo.com	f	t	2019-01-22 21:11:47.394551+00	5
1298	pbkdf2_sha256$20000$tSeDmCmJMVwj$PYlWX9TxGmZlqoSIYsKji2m1uKnNm4j0cWxY6gqrZ8A=	\N	f	borti98	Bernardo	Ortiz Tenorio	demo@demo.com	f	t	2019-01-22 21:11:47.41955+00	5
1299	pbkdf2_sha256$20000$yUI9vWOrnPPm$2E3vCoDLjit+m8HCEkH7L3xVX+mMP8ZzCCEaI7ogW3U=	\N	f	jbern99	Jeronimo	Bernal Williams	demo@demo.com	f	t	2019-01-22 21:11:47.444973+00	5
1300	pbkdf2_sha256$20000$62JVF03NkvWD$2ZXUkmgGxRWNkDFl+GGQ6lYAbKmdIrY3PvtY17mgkyc=	\N	f	pgarc00	Patricio Andres	Garcia Ochoa	demo@demo.com	f	t	2019-01-22 21:11:47.469892+00	5
1301	pbkdf2_sha256$20000$eQaqVVcS5CkD$B5rHMu0bwQtn5fv0zjm+0yTgPFnd00idLWL+OWoVUCg=	\N	f	egome01	Emiliano	Gomez Paredes	demo@demo.com	f	t	2019-01-22 21:11:47.495064+00	5
1302	pbkdf2_sha256$20000$Uu62S8Kfozgq$0snh3PZuAPG6TeqtKx29rqb2A+8lWVrDl6SBqPGJH5o=	\N	f	jmaya02	Juan Pablo	Maya Berrondo	demo@demo.com	f	t	2019-01-22 21:11:47.536894+00	5
1303	pbkdf2_sha256$20000$kBCZ5tikzJyo$lHBYx9sInrWlAbmlgBo9Y3kswtFWCqhuvwWMPA4x/I0=	\N	f	mrami03	Mateo	Ramirez Guzman	demo@demo.com	f	t	2019-01-22 21:11:47.56707+00	5
1304	pbkdf2_sha256$20000$CBlMjDsIUHJF$eC85A8vWYuxeGcGlYj6kHLxUjVcvEkgfpHJvJsiMac0=	\N	f	asanc04	Arturo	Sanchez Tena	demo@demo.com	f	t	2019-01-22 21:11:47.592658+00	5
1305	pbkdf2_sha256$20000$i00t3yxFqaKR$sL5kZ7px21q3xjQuwVCw0A0EG816JfmuUiSMM2e8qt8=	\N	f	scecc05	Santino	Cecchi Martinez	demo@demo.com	f	t	2019-01-22 21:11:47.618705+00	5
1306	pbkdf2_sha256$20000$J5vJ4Z5YdibQ$DMAnK0fHWWelDkKVsTlfyXrEeLbX2V+e5T/dMI54yns=	\N	f	smald06	Sergio	Maldona Argoitia	demo@demo.com	f	t	2019-01-22 21:11:47.645242+00	5
1307	pbkdf2_sha256$20000$BHl50R0yxGsF$O1EuwzIp4uwSmgBOqpK11j2EuiPtH9c/CjM71y6Z2/c=	\N	f	 diaz07	 	Diaz De León Del Valle	demo@demo.com	f	t	2019-01-22 21:11:47.673199+00	5
1308	pbkdf2_sha256$20000$JeGWIjXzXgnO$QoBbTltPI+LUC6IP1rgZKG14uf5VZz3QHDaY8fo4eIQ=	\N	f	lmach08	Lorenzo	Macher Curatola	demo@demo.com	f	t	2019-01-22 21:11:47.698674+00	5
1309	pbkdf2_sha256$20000$Ei0NDP44TMaW$sE8DSgYwyxojnQmoBmzCHV/81MBDcqGNds93RvjN5ig=	\N	f	borti09	Bernardo	Ortiz Tenoria	demo@demo.com	f	t	2019-01-22 21:11:47.724336+00	5
1310	pbkdf2_sha256$20000$pExAq6KvW9JK$ftka3CGnvq5pK7qRmNZm0DU5NjivB03KOTEW7x4hNVs=	\N	f	mgonz10	Matias	Gonzalez Hernandéz	demo@demo.com	f	t	2019-01-22 21:11:47.75105+00	5
1311	pbkdf2_sha256$20000$BXJ89bxBvxJg$/ijekmSF+YxveTF7izYMlPPhtzVOwLXDHHOEzD40hgo=	\N	f	jbern11	Jeronimo	Bernal Willimas	demo@demo.com	f	t	2019-01-22 21:11:47.775783+00	5
1312	pbkdf2_sha256$20000$veqzqvEDJhJO$on9Lqt60Il+MtJB28obFUB4sHZ7beflRanzmfDF+pOo=	\N	f	scord12	Santiago	Cordero Diaz Gonzalez	demo@demo.com	f	t	2019-01-22 21:11:47.803114+00	5
1313	pbkdf2_sha256$20000$utn00y4paX2k$KAiqrSL5MFGR9cRlPMSH4TFVJHdPOQJ4NaHFnIKY7ps=	\N	f	chern13	Carlos Palemon	Hernadez Torres	demo@demo.com	f	t	2019-01-22 21:11:47.846201+00	5
1314	pbkdf2_sha256$20000$qygsKwoOH8hc$RTHoN+ToFpRdmuP31+p4b/jrPO8t9Hafez6AcI8SxsA=	\N	f	ralco14	Rodrigo	Alcobe Garcia De Quevedo	demo@demo.com	f	t	2019-01-22 21:11:47.88445+00	5
1315	pbkdf2_sha256$20000$RuWWVqC0vTf2$92u24hahX/XViQCprFeox+YGuRii8DxnW/kQ1svihrs=	\N	f	rde l15	Rodrigo	De La Cueva Medina	demo@demo.com	f	t	2019-01-22 21:11:47.910551+00	5
1316	pbkdf2_sha256$20000$2qCHhE9gjOAG$xSC6FWmOg+roc5UzSlP8PpwMC8ZOuQjYkdSAMJ4Xve4=	\N	f	jcarm16	Juan Pablo	Carmona Gomez	demo@demo.com	f	t	2019-01-22 21:11:47.939015+00	5
1317	pbkdf2_sha256$20000$9VSBwIUig3ET$c6tP8stSTbxlNcQ9ctrswa0CPkOU3LMDl9SlSEAuNv0=	\N	f	scard17	Sebastian	Cardenas Carrera	demo@demo.com	f	t	2019-01-22 21:11:47.97398+00	5
1318	pbkdf2_sha256$20000$X4ROyABOXohV$B/YlPa/SQkc8aEhCRx7ZEeoPpDudk+A867uo9fblIPY=	\N	f	abece18	Andres	Becerril Estrella	demo@demo.com	f	t	2019-01-22 21:11:47.999379+00	5
1319	pbkdf2_sha256$20000$5LbOU6ImaCdj$qCvupLvxOntE9SOiRpEfXT0QDhkyugzZBSWcXGPaxHo=	\N	f	rcerv19	Roman	Cervantes Fernandez	demo@demo.com	f	t	2019-01-22 21:11:48.026114+00	5
1281	pbkdf2_sha256$20000$xyLiE98m5POV$7VLxeC+qQAuo35c/0e7JzNgT4BqOtSbU92VNKj4T+io=	2019-01-22 21:48:49.967074+00	f	paman81	Pablo	Amancio Olivares	demo@demo.com	f	t	2019-01-22 21:11:46.955265+00	5
1235	pbkdf2_sha256$20000$TleznpdeSOkU$Wlik6Jfct0zGr/cVAb11LgYG9+2w/eJHDpiAMfzA3AM=	\N	f	antoniobvb 	Antonio Martin Lopez	Antonio Martin Lopez	name@example.com	f	t	2019-01-21 19:10:43.63152+00	4
246	pbkdf2_sha256$20000$x7HoEUkgwqHK$YmWi94zrwiX4aC3/Rp0RJXSjxT7eHqoJ9DbWas/JrrQ=	\N	f	246lorenzobenitez	Lorenzo	Benitez	demo@demo.com	f	t	2019-01-21 03:08:35.9526+00	5
1323	pbkdf2_sha256$20000$SZlevteABckm$QHUp55TrBEpXDZ8XVKEfX5jrShTkid6zmpkdno00g7o=	\N	f	cisla23	Carlos	Islas Montes	demo@demo.com	f	t	2019-01-22 21:11:48.130055+00	5
1324	pbkdf2_sha256$20000$90tiW3br4DSR$zMcreqQ4/Eh3UCgoNIAjJ3By7Vmm9EKwVV4DPUmQrQo=	\N	f	garmi24	Gerardo	Armienta Zazueta	demo@demo.com	f	t	2019-01-22 21:11:48.155076+00	5
247	pbkdf2_sha256$20000$WQ2GWboIWy3e$g6REtBmw1sJsOxNbjheez4+yqkJg97BMUOI9sMV0it0=	\N	f	247danielfunkeruiz	Daniel	Funke Ruiz 	demo@demo.com	f	t	2019-01-21 03:08:35.976395+00	5
1245	pbkdf2_sha256$20000$adph8O7yIhSO$1HdRVD6aLrRwTyAlj95yRFqHR5URsAvIUyfF3xLhfB0=	2019-02-06 21:25:52.557413+00	f	dibriestriaraque	Dibriestri Araque	Dibriestri Araque	name@example.com	f	t	2019-01-21 19:45:44.953128+00	4
248	pbkdf2_sha256$20000$HPTYWr4Myhpi$F89WHJ/EptSbGPu+C9KR1N4X//0sPQqJwNGZYW3hXEo=	\N	f	248lucasescalante	Lucas 	Escalante	demo@demo.com	f	t	2019-01-21 03:08:36.000701+00	5
1320	pbkdf2_sha256$20000$QdyWk8ZgS06N$RvU/SSICaJhZ2U48yBMICzNuCxxccXBEenFt9akglFk=	\N	f	mcuer20	Maximiliano	Cuervo Aguilar	demo@demo.com	f	t	2019-01-22 21:11:48.053672+00	5
1321	pbkdf2_sha256$20000$vSnCtfdM3lbp$wmA8/4fxiuSMeO6wZiwhC+BnTBNMTIAT+6uBHO3XzdU=	\N	f	borti21	Bernardo	Ortiz Gamboa	demo@demo.com	f	t	2019-01-22 21:11:48.078977+00	5
1322	pbkdf2_sha256$20000$UuS5BaywV5TZ$o7S2nNzVVxwHlS4tODmB20DIb5tncn0D+nazzGtqtag=	\N	f	dgerm22	Diego	German Alvarez	demo@demo.com	f	t	2019-01-22 21:11:48.105069+00	5
1325	pbkdf2_sha256$20000$JNtSHMJOPloJ$HOIAmYPh8N8bOt2M57I6u/t5roMJ5KUPZnCuUgqPc9s=	\N	f	ebarr25	Emilio David	Barrera Almazan	demo@demo.com	f	t	2019-01-22 21:11:48.179546+00	5
1326	pbkdf2_sha256$20000$zhMJ2ut6OTsy$aaQ8tIi4LgT6VPCzTNH5PCBJM31S2N+RK/D3stniSQs=	\N	f	gde l26	Gabriel	De La Torre Fernandez	demo@demo.com	f	t	2019-01-22 21:11:48.204202+00	5
1327	pbkdf2_sha256$20000$RrxpNmo0ufUB$edqxWmslUb3eLyb2VCb0uS7Jl2qvjHP7fn9hzScnN+k=	\N	f	jgome27	Juan Pablo	Gomez Gonzalez	demo@demo.com	f	t	2019-01-22 21:11:48.229231+00	5
1328	pbkdf2_sha256$20000$Q7jfxTqqOLlT$3BgOFZ11j6mlKc9ROgYGpuKpqkBLjzp52T4I6572kbc=	\N	f	pmaya28	Patricio	Maya Berrondo	demo@demo.com	f	t	2019-01-22 21:11:48.253912+00	5
249	pbkdf2_sha256$20000$V1fP3Dy2lVRm$jgfMAXK/yQq+IKlBz1K/9TCuqbO9Ju0ZoEKyXGyLyJU=	\N	f	249alonsorodriguezor	Alonso	Rodríguez Ortiz	demo@demo.com	f	t	2019-01-21 03:08:36.024547+00	5
250	pbkdf2_sha256$20000$gewMOoYRmVKQ$QO+KTT2Yfqh1nc3PEzvHwuwdno9RTmIhqpGu7AQpiMU=	\N	f	250diegoriveroborrel	Diego	Rivero Borrell Torres 	demo@demo.com	f	t	2019-01-21 03:08:36.04837+00	5
251	pbkdf2_sha256$20000$jwPiEdNvUvL7$m0D0w96df6JQzXlWURGxCICGjsdg+wazygXlMZVqcMM=	\N	f	251mirandaguerreroma	Miranda	Guerrero Matías	demo@demo.com	f	t	2019-01-21 03:08:36.07235+00	5
252	pbkdf2_sha256$20000$UBVFwNK2bxYM$G2dWa/0fwuVQEBMFKgsX4+PBpqITVZpCq11xeFluGSk=	\N	f	252samuelmejiarojas	Samuel	Mejía Rojas 	demo@demo.com	f	t	2019-01-21 03:08:36.096855+00	5
253	pbkdf2_sha256$20000$uFouQONUuUrd$PGfagww3Hl3v3jIozJ1v8uGgYU1KK2uXn5McoTJRIyM=	\N	f	253sebastianlizamama	Sebastián	Lizama Magdaleno 	demo@demo.com	f	t	2019-01-21 03:08:36.120595+00	5
254	pbkdf2_sha256$20000$GnPjS0Fy2v1k$Ah49/Kl6+0yTYHh7afmImH+uH+JUxXKlYnVI+FvsNus=	\N	f	254mateoislasreyes	Mateo	Islas Reyes	demo@demo.com	f	t	2019-01-21 03:08:36.148028+00	5
255	pbkdf2_sha256$20000$XRmUu3Ul1jGt$CSXCUFjKsI3h+yDqCG+L1W3I7zDtlqW11oBVSOa9xFQ=	\N	f	255alejandrogalvanmi	Alejandro	Galvan Millet	demo@demo.com	f	t	2019-01-21 03:08:36.171547+00	5
256	pbkdf2_sha256$20000$CzH8EdVsEgVh$4FkO/0OiMTQ+wTW6yRJ2O/HblD0MeOLdQNl6zGCYtMM=	\N	f	256gerardofernandezg	Gerardo	Fernández Gómez	demo@demo.com	f	t	2019-01-21 03:08:36.195778+00	5
257	pbkdf2_sha256$20000$1X017CB5Z8VR$O7TEabJp/Yc3AqFAJ4ziXgN9uxC19iB1Z/si9YsX534=	\N	f	257emilianozaraterey	Emiliano	Zárate Reyes Heroles 	demo@demo.com	f	t	2019-01-21 03:08:36.219715+00	5
258	pbkdf2_sha256$20000$FIRRAfOzIe4G$59ut8zpHwtTcJuDl+u3bWty/y0C0dVzMP8B9d6JWbK0=	\N	f	258josemariadottivel	José María	Dotti Velasco	demo@demo.com	f	t	2019-01-21 03:08:36.243348+00	5
259	pbkdf2_sha256$20000$dH4bcyOcm19A$UoFYGQCcAaae6A0RvuBiy+QX6W+nYJQmdiYfzcdtpbo=	\N	f	259matiasboyherreria	Matías	Boy Herrerías	demo@demo.com	f	t	2019-01-21 03:08:36.266806+00	5
1236	pbkdf2_sha256$20000$T1giW1Tza0ep$dHzzyVLM1Nryiz5Hr0H3Um8IWPuqk/otNJWQO0pmn0E=	2019-01-21 19:21:43.549175+00	f	lalobvb 	Eduardo Rodriguez	Eduardo Rodriguez	name@example.com	f	t	2019-01-21 19:12:11.011723+00	4
260	pbkdf2_sha256$20000$gCyY7XGScHmt$o0Hix1Gvy0JngqbCJmbrdC/nLcoyZfRmDe8bahtEBpg=	\N	f	260juanpablobenitola	Juan Pablo	Benito Landa	demo@demo.com	f	t	2019-01-21 03:08:36.290627+00	5
261	pbkdf2_sha256$20000$BTdYkD93AytE$0i31YsG2m5GaUq2YszRQxpr0VuosHUiY0D6/ey5YtxE=	\N	f	261iñakiavilamoran	Iñaki	Ávila Morán	demo@demo.com	f	t	2019-01-21 03:08:36.314556+00	5
262	pbkdf2_sha256$20000$9oh2sT9mPAgK$HJhSmFiDFC855HzAwuKMfQ8zB77dfZ32o7IfFUTQQIQ=	\N	f	262lotte volpert	Lotte 	Volpert	demo@demo.com	f	t	2019-01-21 03:08:36.337938+00	5
263	pbkdf2_sha256$20000$51pfXSVedSNa$D4okHXq3qffRg4pcuKGogvk6H7Zg0yoempWirTUDL0I=	\N	f	263katrynjohannatimm	Katryn Johanna	Timme Dietrich	demo@demo.com	f	t	2019-01-21 03:08:36.36148+00	5
264	pbkdf2_sha256$20000$sBns9PDPy5vG$MDkQb7XR6PtkvPl8fMmPXhCS4GmvFIsBO30/vuAerjc=	\N	f	264valerie posch	Valerie 	Posch 	demo@demo.com	f	t	2019-01-21 03:08:36.38466+00	5
265	pbkdf2_sha256$20000$mNaKhJCwcOth$spTHxTWPAXSvVey++YAMGO400yT5DuKjztcrCeOA4+s=	\N	f	265lucianamaiteimaña	Luciana Maite	Imaña Flores 	demo@demo.com	f	t	2019-01-21 03:08:36.408198+00	5
266	pbkdf2_sha256$20000$136B2q2Z4v7b$NzSGel9Mekxzgv/MvoT9CgM9H4pp0WzA29a9yjuiH0I=	\N	f	266michellehadadgonz	Michelle	Hadad González 	demo@demo.com	f	t	2019-01-21 03:08:36.431938+00	5
267	pbkdf2_sha256$20000$g4BmvMd33qZO$vnRTwcDvzBITHtck9tZ4+ocnYNGrmwNAM9jmHVKVf5w=	\N	f	267lea diepeenbrock	Lea 	Diepeenbrock	demo@demo.com	f	t	2019-01-21 03:08:36.455527+00	5
268	pbkdf2_sha256$20000$RfLAeihBHRPz$RSPRwc8DqRCnXp9Fn6KeLMjcoQNbJ9iwMg+XEQUU1nE=	\N	f	268alejandracantuvil	Alejandra	Cantú Vila	demo@demo.com	f	t	2019-01-21 03:08:36.478917+00	5
269	pbkdf2_sha256$20000$bUvVMy00fuGZ$NeuuySz2cT2G+1GNJi3UrtJUD5bqAc6SROuRdbUvm0s=	\N	f	269danielabonequivel	Daniela	Bonequi Velasco	demo@demo.com	f	t	2019-01-21 03:08:36.502689+00	5
270	pbkdf2_sha256$20000$8a4huQOA0DKH$VZmXifUd6mvwjcT2hCEAO704dmTqCZl0lwJa+rMpTOI=	\N	f	270nadinetablerosana	Nadine	Tableros Anaya	demo@demo.com	f	t	2019-01-21 03:08:36.526456+00	5
271	pbkdf2_sha256$20000$3VaVPmYWlrqw$3zn9CWGUQ6zZXE7PjFkFpImQlCHb5nmJAzK11WTNv6w=	\N	f	271andrearomancrabtr	Andrea	Román Crabtree	demo@demo.com	f	t	2019-01-21 03:08:36.550059+00	5
272	pbkdf2_sha256$20000$3TstRqQ2YSu5$usMo0PyyJHYomG8sv+QEK0AHFIVN/rjSBTyU5bZx7a0=	\N	f	272mariafernandareye	María Fernanda	Reyes Castillo 	demo@demo.com	f	t	2019-01-21 03:08:36.573952+00	5
273	pbkdf2_sha256$20000$kuo1AIrhonkx$boFDcWmhCMjq9tCe/xiDOKEwfcUAew4kTXxrqXqp8kA=	\N	f	273julianoriegatrevi	Julia	Noriega Treviño	demo@demo.com	f	t	2019-01-21 03:08:36.598037+00	5
274	pbkdf2_sha256$20000$YGSk1DpPNNZd$5eAblDvRCz4TYzgzCSyNU+tqcR5FNLzOsjguCpGV0bw=	\N	f	274julianahuertaszam	Juliana	Huertas Zambrano	demo@demo.com	f	t	2019-01-21 03:08:36.621855+00	5
275	pbkdf2_sha256$20000$o0WKCGUo7T34$H0joXZbyM2zM84bbq5YHhekBeBjY7fMw9D/lYhaFepo=	\N	f	275isabellahernandez	Isabella	Hernandez Santaella	demo@demo.com	f	t	2019-01-21 03:08:36.645506+00	5
276	pbkdf2_sha256$20000$e5qeDPyihTwX$rIUcPwc4B3Q2Xw1kDmXCXDdPS6RCtrt4vQUajjZu7pk=	\N	f	276victoriaflorestol	Victoria	Flores Toledo	demo@demo.com	f	t	2019-01-21 03:08:36.669091+00	5
277	pbkdf2_sha256$20000$9S9iK8Xhde99$Jl7KwDC2QnAx4pns9wWEd2MQFetzbZ2dYb+SIaWm1d0=	\N	f	277sofiaespinosarosa	Sofía	Espinosa Rosales	demo@demo.com	f	t	2019-01-21 03:08:36.693402+00	5
278	pbkdf2_sha256$20000$X9JFqObfyD47$l/tgeduuiRjPaFJmRfeHwNDn+TZ2k5Tjj8jFrlkhX9k=	\N	f	278emiliadiazbarriga	Emilia	Díaz Barriga Soto	demo@demo.com	f	t	2019-01-21 03:08:36.716998+00	5
279	pbkdf2_sha256$20000$3RT7G6KIHJDX$8eet8Ly7demgPKorR4l6a/6NbLIVYHVzFK32YIaV4zs=	\N	f	279marianabonequivel	Mariana	Bonequi Velasco	demo@demo.com	f	t	2019-01-21 03:08:36.740883+00	5
280	pbkdf2_sha256$20000$04chAuw1MZ2j$g2qqe27x+zMQpDI9NyAXP8RxRCERFdPBhuE9sSQJo2c=	\N	f	280isabelabauersanch	Isabela	Bauer Sánchez	demo@demo.com	f	t	2019-01-21 03:08:36.764476+00	5
281	pbkdf2_sha256$20000$iOQLAkAUTRqc$vv0BUqBO0dIEHH13W7dfFWirVqJsNn9AvHYMJ2WAjcg=	\N	f	281luciabargalloknod	Lucía	Bargalló Knoderer	demo@demo.com	f	t	2019-01-21 03:08:36.788345+00	5
282	pbkdf2_sha256$20000$ky7V66ORjPBs$X8rQbkUgl/W35dnRuxyVv8HuLKi0lDQbYmt97FcfSXI=	\N	f	282elisabargalloknod	Elisa	Bargalló Knoderer	demo@demo.com	f	t	2019-01-21 03:08:36.812553+00	5
283	pbkdf2_sha256$20000$LR33h0hPevtM$Y5Rm6MTBWvlvxil0qSW+8kZ8RFlhFUcCM8Bo3h/CcEw=	\N	f	283rominaalexandraba	Romina Alexandra	Backer Schafer	demo@demo.com	f	t	2019-01-21 03:08:36.837202+00	5
284	pbkdf2_sha256$20000$DzI7Q4zXlmBi$TDuxNRm78+qQaHqeD1tskkRSbuMzcgy9nLnYR12Jgac=	\N	f	284katrynjohannatimm	Katryn Johanna	Timme Dietrich	demo@demo.com	f	t	2019-01-21 03:08:36.861455+00	5
285	pbkdf2_sha256$20000$4uB9ybkLFjcl$3C9hyH5e7kJ9f1HgJnMxao/23/w7fOa86ogXHiRhDEc=	\N	f	285nadinetablerosana	Nadine	Tableros Anaya	demo@demo.com	f	t	2019-01-21 03:08:36.885104+00	5
286	pbkdf2_sha256$20000$r9552V1IRFj8$jQPxoJIJXZF7SLW3yHDoVzRER/7aKsTDPLe9WIccv38=	\N	f	286federicoscullzing	Federico	Scull Zingg 	demo@demo.com	f	t	2019-01-21 03:08:36.90854+00	5
287	pbkdf2_sha256$20000$iwYUPRL4v9hM$TZ+NZOWJbARSjLteEzY9X8G8wEEfI+TE+BxIY7g9fMg=	\N	f	287alonsorodriguezor	Alonso	Rodríguez Ortiz	demo@demo.com	f	t	2019-01-21 03:08:36.93219+00	5
288	pbkdf2_sha256$20000$G6j5pom1USQP$1mXQ2UP9mfcvGIluKqfOTD7VIhLfxB8wuihGpR7/qJk=	\N	f	288nicolasnavratiles	Nicolás	Navratil Esteban 	demo@demo.com	f	t	2019-01-21 03:08:36.956077+00	5
289	pbkdf2_sha256$20000$gfOKgYKsPKca$muEi+52tYFfupEsw4dnFStXybXpukOGs3W/nUa6NMQ4=	\N	f	289emiliomorgenstern	Emilio	Morgenstern Rodríguez 	demo@demo.com	f	t	2019-01-21 03:08:36.980206+00	5
290	pbkdf2_sha256$20000$pyMAR9C31hKh$/YT/lVbYIm8yACa9LqNiHwU5sikR6lTgmo64/kFi4Ec=	\N	f	290axelhintzesaucedo	Axel	Hintze Saucedo	demo@demo.com	f	t	2019-01-21 03:08:37.004013+00	5
1237	pbkdf2_sha256$20000$BcOsuY65bHPN$PKRA5xP3/AqhjyN37V7kJ9i8YenH2qcbjAJY5ePWk94=	2019-01-22 01:42:06.046923+00	f	yanik0022	Yanik	Yanik	name@example.com	f	t	2019-01-21 19:13:27.61718+00	4
291	pbkdf2_sha256$20000$R44BAj1gPIGF$G80Fkqw1CFrU5gGiqxRTk496HEMU5O9WH2vzqG3HRKQ=	\N	f	291paolocusimaldonad	Paolo	Cusi Maldonado 	demo@demo.com	f	t	2019-01-21 03:08:37.029466+00	5
292	pbkdf2_sha256$20000$YS1zSLGkKbw2$EsTGpa+DqO8g1rR3YezXkUO20M41wfgYjaJd0gVVOwI=	\N	f	292rominaalexandraba	Romina Alexandra	Backer Schafer 	demo@demo.com	f	t	2019-01-21 03:08:37.053524+00	5
293	pbkdf2_sha256$20000$zQHfxZWZWicN$Im8capnPcZDpTfzK0opGkmyjWgUUrDBEJPzpOksTsEk=	\N	f	293jaimediego tellez	Jaime Diego 	Tellez Gonzalez 	demo@demo.com	f	t	2019-01-21 03:08:37.077809+00	5
294	pbkdf2_sha256$20000$hMDdpBvrtDjb$JtimGkVKGlNGr9y5W699NT7OJ2/SAehi8pGeG8Ze5r4=	\N	f	294sebastian sommerp	Sebastian 	Sommer Peralta 	demo@demo.com	f	t	2019-01-21 03:08:37.101443+00	5
295	pbkdf2_sha256$20000$1hOsU6OWp3RY$Q+HlDV+3A/eXoXpVaVdOA/5wO2R/BEtin8V524sr5UA=	\N	f	295matias sommerpera	Matias 	Sommer Peralta 	demo@demo.com	f	t	2019-01-21 03:08:37.125261+00	5
296	pbkdf2_sha256$20000$D6VbWOy2nxpm$JIwxqOFkYXH1hpwVU6yRiILa1PWFWTAp8M7OMnfjvc8=	\N	f	296danieleliassibaja	Daniel Elias	Sibaja Medina 	demo@demo.com	f	t	2019-01-21 03:08:37.148778+00	5
297	pbkdf2_sha256$20000$Y2pjoafJy4A1$UTicQA4peUnwSMm7lmuprZiJYX9C1K3hg4ieS5kynl4=	\N	f	297patrickseguraesco	Patrick	Segura Escobar 	demo@demo.com	f	t	2019-01-21 03:08:37.172957+00	5
298	pbkdf2_sha256$20000$fE2onN4GhPcs$A/cVYoMdBrxThEEyxRDpfUIn5b/scrm99B0/PV01jHk=	\N	f	298petermichael ritt	Peter Michael 	Ritter Miles 	demo@demo.com	f	t	2019-01-21 03:08:37.197108+00	5
299	pbkdf2_sha256$20000$1bv50bcFPaGJ$ecN+eCO1jg3Dev6hNUdztIRYR219ybt7Lu/grY1uTlE=	\N	f	299maximilian perman	Maximilian 	Permanseder 	demo@demo.com	f	t	2019-01-21 03:08:37.221157+00	5
300	pbkdf2_sha256$20000$V640JcN5Ihd2$eTnlTYLvClreiVbqw6/VqljR35on7+bq9oZn95YzVbo=	\N	f	300felixalexander pe	Felix Alexander 	Permanseder 	demo@demo.com	f	t	2019-01-21 03:08:37.244821+00	5
301	pbkdf2_sha256$20000$IQXXeMa9hXsh$0sEnwcOZk4DBnM9FB509vcBP6w6EJpD7HvUDNG4m8ic=	\N	f	301luisgperezmartine	Luis G	Perez Martinez 	demo@demo.com	f	t	2019-01-21 03:08:37.268478+00	5
302	pbkdf2_sha256$20000$dgGKuE74s3vd$8Ps93nuEOLyLjHmF3mRS80vFNgidip630OswYbE9Ero=	\N	f	302martin  pamoulis	Martin  	Pamoulis	demo@demo.com	f	t	2019-01-21 03:08:37.291576+00	5
303	pbkdf2_sha256$20000$gT6nAmbIBsl1$igzfVkgog25ftdnf3XmhSSGea65t52HoNwePMqg3zEQ=	\N	f	303gustavo pachecoor	Gustavo 	Pacheco Ortiz Pinchetti 	demo@demo.com	f	t	2019-01-21 03:08:37.315159+00	5
304	pbkdf2_sha256$20000$h78Lvt0a7vsB$///HAK082Mw9uNUcR0T7deAfYxisLdDIL1UJh/DVJ18=	\N	f	304patrickmaxottmull	Patrick Max	Ottmuller Contreras 	demo@demo.com	f	t	2019-01-21 03:08:37.33883+00	5
305	pbkdf2_sha256$20000$Yi4BztCyixUE$c6CLuIqSEbTnceRChy+yhpnYLJ41SNsO424/tPbrfaw=	\N	f	305humberto mijarest	Humberto 	Mijares Tabe 	demo@demo.com	f	t	2019-01-21 03:08:37.362683+00	5
306	pbkdf2_sha256$20000$ziu7pZGKRwlr$jiKk3K0BzzoPWkTPwsLyKH4yT0/NMMkBmcnfwQ0LK8c=	\N	f	306silvamauricio mar	Silva Mauricio 	Martinez D Meza 	demo@demo.com	f	t	2019-01-21 03:08:37.386273+00	5
307	pbkdf2_sha256$20000$eSxBcuO1l6EF$8vvkCNAs9jUN8d77+AEc80pdwhik1bgHudwbOiih8BY=	\N	f	307nicolas lacknerbr	Nicolas 	Lackner Briz 	demo@demo.com	f	t	2019-01-21 03:08:37.409356+00	5
308	pbkdf2_sha256$20000$hNjx6R15UDtS$ETZrMjwubdQo4GlmtQHwArgrmr2yKVFCsr3rNyv4xOk=	\N	f	308santiago hernande	Santiago 	Hernandez Romo Merodio 	demo@demo.com	f	t	2019-01-21 03:08:37.432908+00	5
309	pbkdf2_sha256$20000$3HgYT8mtwo55$4cZkzdtYXpIwLXWFRwo0/X/lkTGbuEC5Jk3lsw4hDOE=	\N	f	309pablo hernandezro	Pablo 	Hernandez Romo Merodio 	demo@demo.com	f	t	2019-01-21 03:08:37.45639+00	5
310	pbkdf2_sha256$20000$pXwQhrqXatkS$f2AzD9AE5OWciStd9+cdjNn5TxRlHEJkjU6XaThHs4s=	\N	f	310johannesh.hauserf	Johannes H.	Hauser Fernandez 	demo@demo.com	f	t	2019-01-21 03:08:37.480194+00	5
311	pbkdf2_sha256$20000$9H285w8XQbzA$JtCod8nnPM/EF5155omf4isyB2Vrj6GUMbdONTwbnEc=	\N	f	311sebastian gunther	Sebastian 	Gunther Huacuja 	demo@demo.com	f	t	2019-01-21 03:08:37.504044+00	5
312	pbkdf2_sha256$20000$Ks8kiZEZVxUJ$C5sWYwouBhChewfEyTcWq3xC0wqqyvvEFWVpF9NtuRg=	\N	f	312axel gieseckevald	Axel 	Giesecke Valdes 	demo@demo.com	f	t	2019-01-21 03:08:37.527762+00	5
313	pbkdf2_sha256$20000$g3JgUZE6F4Yh$peqKejDCoO3Lt3vFkdvh+Rm/PaNNVh59fAb+5sbdUDc=	\N	f	313santiango garcia 	Santiango 	Garcia  Gonzalez 	demo@demo.com	f	t	2019-01-21 03:08:37.551429+00	5
314	pbkdf2_sha256$20000$zMT4p96tbOU0$yWaxgijDVc93zRt6LVvwpc9eqKskEuEkCSmrvWusYAs=	\N	f	314patricio garciamo	Patricio 	Garcia Moreno Urrutia 	demo@demo.com	f	t	2019-01-21 03:08:37.575215+00	5
315	pbkdf2_sha256$20000$HzQ09jwkOyni$df/vLJg2mFZP48iWq1/K7CNYMr4DWfQaNsEjWlN6do8=	\N	f	315josemaria fuentes	Jose Maria 	Fuentes Perez 	demo@demo.com	f	t	2019-01-21 03:08:37.598868+00	5
316	pbkdf2_sha256$20000$wvh2hP8nR5vz$bvUkgxTMHhjsY0P3SnUMCwiBVBxbANLT6LI4SH37Xik=	\N	f	316alexandereichervi	Alexander	Eicher Vite 	demo@demo.com	f	t	2019-01-21 03:08:37.622869+00	5
317	pbkdf2_sha256$20000$FcRa52wimpgY$rUDhGpKXhDblgRrx5W60uEOWLIpfGbPw1dBwkRff220=	\N	f	317diegoa.estefanbiu	Diego A. 	Estefan Biurrun	demo@demo.com	f	t	2019-01-21 03:08:37.646546+00	5
318	pbkdf2_sha256$20000$p3dV77eCsc84$69GzazgYHlX5fNnvSPXeqJrJ0Ab8mW1aj5B+KNP4GAg=	\N	f	318daniel dehoyosort	Daniel 	De Hoyos Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:37.670074+00	5
319	pbkdf2_sha256$20000$lfp3SrTtNSgl$TExpo+mrhIi0UwMGlZIKm/3zuv1fzdJAwSgfqBb6IWY=	\N	f	319santiago collante	Santiago 	Collantes Tamez	demo@demo.com	f	t	2019-01-21 03:08:37.694211+00	5
320	pbkdf2_sha256$20000$ts3RqXwOGnB8$Y6LiTwIo0Yofboxt3zLLFo3jpOCPMQto3O4WVR59UCk=	\N	f	320diegocollantestam	Diego	Collantes Tamez 	demo@demo.com	f	t	2019-01-21 03:08:37.717671+00	5
321	pbkdf2_sha256$20000$dlBmTTBznCGp$hfUyVqftytvEMA9jASeNlVmIjpACEXMtTLhL6CoW0xo=	\N	f	321mauricio brocados	Mauricio 	Brocado Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:37.742049+00	5
322	pbkdf2_sha256$20000$3PgUCaYbqa7K$sX9sh0WxMf2wbXENN7Tv3TK6eWLkgWyvVQsioQKLuSY=	\N	f	322patricio bosquero	Patricio 	Bosque Rosas 	demo@demo.com	f	t	2019-01-21 03:08:37.765964+00	5
323	pbkdf2_sha256$20000$Wbivc8zDm1kT$b6EL6irLfLWW4z8eH6CRzU3xUmiCeVjFw5DFzoFMkGE=	\N	f	323mariano  biehler	Mariano  	Biehler 	demo@demo.com	f	t	2019-01-21 03:08:37.790053+00	5
324	pbkdf2_sha256$20000$BZUPpLhNzxpu$Dye5kEfb1YjTnAEy9dhZfHBRaeMhozqSFfkYk3dNt+Q=	\N	f	324alberto arienzoac	Alberto 	Arienzo Acuña 	demo@demo.com	f	t	2019-01-21 03:08:37.814069+00	5
325	pbkdf2_sha256$20000$IErnC4OMySFi$mS3bsJIA1uVvaXBJBdqF6BlXJTn2+vZ/55/FFKxwLPs=	\N	f	325michelle zimmerga	Michelle 	Zimmer Gavito 	demo@demo.com	f	t	2019-01-21 03:08:37.837769+00	5
326	pbkdf2_sha256$20000$AonKTIXwBtby$YNPFvvyoCFjtbHVYvf7xKwKOw7ViQ0h1JbzyIuuGRfw=	\N	f	326sebastian woodsan	Sebastian 	Woods Animas 	demo@demo.com	f	t	2019-01-21 03:08:37.861506+00	5
327	pbkdf2_sha256$20000$MEvhh8aYiEAc$XkzrpvGGvhHYkD5hX78ezwEqmlMDlWVUfZhGRcYuaf4=	\N	f	327andresfelipe rest	Andres Felipe 	Restrepo Riveros 	demo@demo.com	f	t	2019-01-21 03:08:37.885511+00	5
328	pbkdf2_sha256$20000$UQPXhI1R76GN$HhBbxiMgE4j69hnQI8WHLOPeMHWP7JwyaBRqRO3iUEc=	\N	f	328yakimpresarueda	Yakim	Presa Rueda 	demo@demo.com	f	t	2019-01-21 03:08:37.909217+00	5
329	pbkdf2_sha256$20000$yII2rWPHemN8$sUMfDRk4/NlfCvnCgcHeHlH6ql6nRylg0zNo/ASGsfk=	\N	f	329arturo martinesla	Arturo 	Martines Lases 	demo@demo.com	f	t	2019-01-21 03:08:37.933032+00	5
330	pbkdf2_sha256$20000$7I3Kjjt7blN4$ISN7tNywGOp5jiaOxyjV8LUDzbrWjvSKkOvUf3rYuzQ=	\N	f	330nicolas lizamamag	Nicolas 	Lizama Magdaleno 	demo@demo.com	f	t	2019-01-21 03:08:37.956772+00	5
331	pbkdf2_sha256$20000$TLt2IFwvvvL9$K7sHQDKRDkYHZYhuKftyr3UYDWyIjm1WL/eunZW9Pyg=	\N	f	331santiago lazaropo	Santiago 	Lazaro Polidura 	demo@demo.com	f	t	2019-01-21 03:08:37.980622+00	5
332	pbkdf2_sha256$20000$rVWCBErrfTu0$r+YVQM1f1NOQu3LNYgz52udnYBhUIquZynQ7ilKpFmY=	\N	f	332nicolas lazaropol	Nicolas 	Lazaro Polidura 	demo@demo.com	f	t	2019-01-21 03:08:38.004319+00	5
333	pbkdf2_sha256$20000$de87LjbnV33V$H8z4DrSFs2mNG6DkwCHHbxpzeJhTpzrV6S4cIJsB8Tc=	\N	f	333frederickgutcorde	Frederick	Gut Cordero 	demo@demo.com	f	t	2019-01-21 03:08:38.028541+00	5
334	pbkdf2_sha256$20000$kJ0ZzctVeZ77$2ivFRjpescEvspNoRu+py19MA6s3VbsKaiL0OqYZCbc=	\N	f	334bennetfischernico	Bennet	Fischer Nicolas 	demo@demo.com	f	t	2019-01-21 03:08:38.053922+00	5
335	pbkdf2_sha256$20000$h9A9XeUxpH7E$WM9DT5R2gICRd/n8J6jsv7igQQnGf+z8d5oENFiC7OE=	\N	f	335jeronimo diazbarr	Jeronimo 	Diaz Barriga Soto 	demo@demo.com	f	t	2019-01-21 03:08:38.079409+00	5
336	pbkdf2_sha256$20000$xjYNq6WAKCVE$nVVU8X4vGeprS/rtkO9VLEYAF8kg12vX4JTdgB/ZKxo=	\N	f	336joseluis castrofe	Jose Luis 	Castro Fernandez 	demo@demo.com	f	t	2019-01-21 03:08:38.106002+00	5
337	pbkdf2_sha256$20000$OzwNOGfs10v9$Gdb6sV+k4FepHqB1PlLlHKnzZn7ba7SNaI8dcYv2Dhk=	\N	f	337stephan beihofers	Stephan 	Beihofer Santos 	demo@demo.com	f	t	2019-01-21 03:08:38.13056+00	5
338	pbkdf2_sha256$20000$lkM5zgX0N9ws$kOmMFhU8Bo7l4E/yzR60s308iEOGfPVYzRPoRqSruww=	\N	f	338juanpablo alvarez	Juan Pablo 	Alvarez Orjuela 	demo@demo.com	f	t	2019-01-21 03:08:38.155502+00	5
339	pbkdf2_sha256$20000$bLN0rsqPBeQM$u6Vbq676PHbMTFpgCdAn6Bhr11x3keoVPvKKW46GgH4=	\N	f	339francisco ablaned	Francisco 	Ablanedo Guajardo	demo@demo.com	f	t	2019-01-21 03:08:38.179422+00	5
340	pbkdf2_sha256$20000$h2XyKvFP5Hb1$zGcj+nGjkkRgpIpH/h9C8SSjvdf2p0V097IhEDg+pN0=	\N	f	340patricio vegagome	Patricio 	Vega Gomez	demo@demo.com	f	t	2019-01-21 03:08:38.203757+00	5
341	pbkdf2_sha256$20000$2CzKE5kv705Z$uqIpufFb+9bLY37/u68IosEn5LFRjGTu0RhSHCmiHQA=	\N	f	341david tolksdorffa	David 	Tolksdorff Agustin 	demo@demo.com	f	t	2019-01-21 03:08:38.227673+00	5
342	pbkdf2_sha256$20000$RcSA7JkyYb4h$NTURVsYws5PdKoDOS7Y3iwIy+VV8QfHvUCUx5gtC33o=	\N	f	342juanseguraescobar	Juan	Segura Escobar 	demo@demo.com	f	t	2019-01-21 03:08:38.252564+00	5
343	pbkdf2_sha256$20000$AoGdjONIB9BB$DTMPXgsIQQr+z4aWwwrK02a2jXExgFTmfPlzxaPWrWI=	\N	f	343guillermo reyessc	Guillermo 	Reyes Schutz 	demo@demo.com	f	t	2019-01-21 03:08:38.27636+00	5
344	pbkdf2_sha256$20000$8XquGGCfJlLx$AbXBvi4XXN5WkMZ6hOEUv6hxdrcYA3kxyYbm+L6004k=	\N	f	344mateo renteriague	Mateo 	Renteria Guerrero 	demo@demo.com	f	t	2019-01-21 03:08:38.300603+00	5
345	pbkdf2_sha256$20000$PsVIvkN42EOD$WvvT+l4J90vC4RJL59Es7p2opyQKNwB/QNPq9A3Nyc4=	\N	f	345adriano pachecoor	Adriano 	Pacheco Ortiz Pinchetti 	demo@demo.com	f	t	2019-01-21 03:08:38.324646+00	5
346	pbkdf2_sha256$20000$VQ1Aipk9iU3v$pg1p+F77GsgmdqACTD0QFMkXdnPiY0r2BPXatwpXQ7M=	\N	f	346steffenguillenper	Steffen	Guillen Perez 	demo@demo.com	f	t	2019-01-21 03:08:38.348337+00	5
347	pbkdf2_sha256$20000$vW8UN3V1Ws7u$ACgzX64qxIdnnJT1RVtLYDN2/uzRKczD0RNQw2bey3w=	\N	f	347alonso gonzalezme	Alonso 	Gonzalez Menendez 	demo@demo.com	f	t	2019-01-21 03:08:38.372042+00	5
348	pbkdf2_sha256$20000$MSmTvKCYee6L$4vKZSg3GusLmW1zejnxPULahq0VbOdJNRhHNCKyCL0Y=	\N	f	348haraldfeldhausthi	Harald	Feldhaus Thiele 	demo@demo.com	f	t	2019-01-21 03:08:38.396148+00	5
349	pbkdf2_sha256$20000$n1b86de3nRTC$aCKVx6E4mBgyvwbJwC01UKJ1IuGTBF4w2qteJ9UPCIo=	\N	f	349emilianocortinasa	Emiliano	Cortina Sabiñon 	demo@demo.com	f	t	2019-01-21 03:08:38.419964+00	5
350	pbkdf2_sha256$20000$L4ryIhFThYk3$JMAONF4wc89HdF4g7bL7ObIi7YOGH4CvYHh1vzpT2CA=	\N	f	350andrevaronstorsbe	André	Varón Storsberg 	demo@demo.com	f	t	2019-01-21 03:08:38.443895+00	5
351	pbkdf2_sha256$20000$GINoHyf9izZZ$XBBRmwJ5WaJ9wwnLaYCKfLbqdbHPAlGuDFfyliLyE0k=	\N	f	351santiagoromancrab	Santiago	Román Crabtree 	demo@demo.com	f	t	2019-01-21 03:08:38.46766+00	5
352	pbkdf2_sha256$20000$97aB7Tva1WD6$afSu9u3opy23EfjaRiEuJSrYusYsjjD0jSRjkxAGiAQ=	\N	f	352emiliomorgenstern	Emilio	Morgenstern Rodríguez 	demo@demo.com	f	t	2019-01-21 03:08:38.491361+00	5
1539	pbkdf2_sha256$20000$f1oD4xPQ0lP5$1XAgHbmCFZ85UXklaZz3Z7rewI8Mhht4yfbzAQaJNqg=	2019-02-05 08:28:31.69563+00	f	mcovarrubias0734	Mario 	Covarrubias	name@example.com	f	t	2019-01-24 06:17:06.002071+00	4
1542	pbkdf2_sha256$20000$pGgDICLf0EM4$icZz1mCKdNtiaM4b+U9RnPC5TfAg9XNOX3Br7pIwbQc=	2019-01-30 16:57:30.30312+00	f	rvalor0359	Ricardo 	Valor	name@example.com	f	t	2019-01-24 06:17:06.076396+00	4
1529	pbkdf2_sha256$20000$SfP1sK9MalhU$DpMmNWm1R/G1N7D/XKw1bdDz4tWmn633e0wDXKSrrxQ=	\N	f	adriana0365	Adriana	  	name@example.com	f	t	2019-01-24 06:17:05.711589+00	4
1532	pbkdf2_sha256$20000$wC82JZbGSECK$GIUUirNZyfreH8H0HFWYdkFNBYWu0JRbbFrYvZNvszU=	\N	f	gustavo0259	Gustavo	  	name@example.com	f	t	2019-01-24 06:17:05.807475+00	4
1537	pbkdf2_sha256$20000$hJW3tArx2Rq4$qQU+D2vxUHFROht/u4qx5u/lvQTvWMn+nxn4TiYt0BQ=	2019-02-01 02:46:52.902076+00	f	carlos0275	José Carlos	  	name@example.com	f	t	2019-01-24 06:17:05.951128+00	4
1534	pbkdf2_sha256$20000$Wht0i1KR5nPs$ydWQLeK5rfxiAhqTDiQjmgkyLhXWWAevoVaFq2ncUWE=	\N	f	irvin0255	Irvin	  	name@example.com	f	t	2019-01-24 06:17:05.874404+00	4
1535	pbkdf2_sha256$20000$PX7nRdkFNlah$IPRDS/GoJIsT2RSMISvfcsZKIJkdDyLMaIBFrA+LquI=	\N	f	ienriquez0422	Isaac 	Enríquez	name@example.com	f	t	2019-01-24 06:17:05.900085+00	4
1536	pbkdf2_sha256$20000$adYh2K8lHJsP$0UIAs+xuo1m+Qjs4tXpzho7WC4UkgBbudRGdPg+/F0s=	\N	f	jgonzalez0519	Javier Alejandro 	Gonzalez	name@example.com	f	t	2019-01-24 06:17:05.925575+00	4
1538	pbkdf2_sha256$20000$Fku4RmExKph2$5fJ4IifX224DKhbIijRZaQwEJyLzOpWa7WutofeNVIk=	\N	f	luis0922	Luis	  	name@example.com	f	t	2019-01-24 06:17:05.976197+00	4
1540	pbkdf2_sha256$20000$EcypUjTY9XRw$jO82K82i44moPZXDJDK2H1lyaQRfmfnzEVE3sNh2hks=	\N	f	mperez0278	Miguel 	Perez	name@example.com	f	t	2019-01-24 06:17:06.026855+00	4
1541	pbkdf2_sha256$20000$q1BZQs2yQgRI$qG4V13l+ONouA6GrH72iwc4cVTMrjbt5cRspN7BHix8=	\N	f	ramirez0844	Oliver 	Ramírez	name@example.com	f	t	2019-01-24 06:17:06.051798+00	4
353	pbkdf2_sha256$20000$R7WiR0jk3Umf$yZL7v6cPVOM0oZQsSuA2M3TLtah5IiSuUp90Ab805UI=	\N	f	353jeronimomejiaroja	Jerónimo	Mejía Rojas 	demo@demo.com	f	t	2019-01-21 03:08:38.515363+00	5
354	pbkdf2_sha256$20000$0rpwcQ4FlXQT$O0XXRqk9raJ9ytxyXm8P5cDMCWzJ3S8rw4mymig6eS4=	\N	f	354maximilianomartin	Maximiliano	Martínez Storsberg 	demo@demo.com	f	t	2019-01-21 03:08:38.54122+00	5
355	pbkdf2_sha256$20000$YETkOPeuwQOU$0m6OyRRZIaihknNoR5ewefq8dRaDegc/qedco2SYscg=	\N	f	355leonardodominguez	Leonardo	Domínguez Aceves 	demo@demo.com	f	t	2019-01-21 03:08:38.567164+00	5
356	pbkdf2_sha256$20000$iBdg7An75pxy$5J6eFKPs5C2gmiTv4DVPZwMsNahKbMSsnuK/VFI/O7o=	\N	f	356alandiazmueller	Alan	Díaz Mueller 	demo@demo.com	f	t	2019-01-21 03:08:38.592482+00	5
357	pbkdf2_sha256$20000$RwE9kENyr6s8$Oq1z1ZSG7VIuhGKUlrwci7x0VB5ufoEdlbi6N4LEyjk=	\N	f	357robertodavisdelac	Roberto	Davis de la Cuesta 	demo@demo.com	f	t	2019-01-21 03:08:38.617402+00	5
358	pbkdf2_sha256$20000$JdlwDyACkFyQ$9aUdvDyN47gDC3SsO4brdNF8SYYjLhf1qbIQ/OMfY8U=	\N	f	358patriciocorzogarc	Patricio	Corzo García 	demo@demo.com	f	t	2019-01-21 03:08:38.640944+00	5
359	pbkdf2_sha256$20000$GSiLASnLPSHh$IA2g9XIbjVdrthh7mziOuyUa3wuNlzIp4DOu4ZnQEkw=	\N	f	359arturoavilamoran	Arturo	Ávila Morán 	demo@demo.com	f	t	2019-01-21 03:08:38.664568+00	5
360	pbkdf2_sha256$20000$y0lkPOTaxp8t$hMh92ErilTmjJ66GMSnSfrf13nKEerPmNVtUop4oNGo=	\N	f	360rodrigozepedaclua	Rodrigo	Zepeda Clúa 	demo@demo.com	f	t	2019-01-21 03:08:38.68809+00	5
361	pbkdf2_sha256$20000$Okdy8pniJioi$v4lh2c1oupvsTP2XUarNgroUYESDJIxgSRRsWLiW+Cc=	\N	f	361jeronimovelazquez	Jerónimo	Velázquez Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:38.71211+00	5
362	pbkdf2_sha256$20000$jxrj52eb5cil$uYF5AWbihiyZ3FQ40dJVYgJ2kElGiHTvnLMyAX9iaC4=	\N	f	362julenpimenteldeiz	Julen	Pimentel de Izaurieta 	demo@demo.com	f	t	2019-01-21 03:08:38.737356+00	5
363	pbkdf2_sha256$20000$5CpYIneeEzOv$+qd0FTPCvCFV4U06597V3zuDanVvTgJoO+9xJec5EcE=	\N	f	363jeronimomejiaroja	Jerónimo	Mejía Rojas 	demo@demo.com	f	t	2019-01-21 03:08:38.761182+00	5
364	pbkdf2_sha256$20000$sfNJlhg3R57c$HdgCW/sXjRLu2c7PT+ZCWv0PVEeA4k126dCyktpUWbE=	\N	f	364axelhintzesaucedo	Axel	Hintze Saucedo 	demo@demo.com	f	t	2019-01-21 03:08:38.785227+00	5
365	pbkdf2_sha256$20000$3VrUT1CkwlXL$7gNAOyu7G1C6ZGugmBofcF/BFs59+qVimkRLiaQ/T5k=	\N	f	365olafhentschelrans	Olaf	Hentschel Ransom 	demo@demo.com	f	t	2019-01-21 03:08:38.809143+00	5
366	pbkdf2_sha256$20000$sqcPLSgF8jYY$w8mUE0klFxlGiwQeABeCl6AEYaAJNprE+MPQ8skBkTQ=	\N	f	366albertalexanderhe	Albert Alexander	Helms Maciel 	demo@demo.com	f	t	2019-01-21 03:08:38.832997+00	5
367	pbkdf2_sha256$20000$ByP8CIsfPD0Z$X8paDnjYsVGyjGmd9vcwz6EzMol4ySUDFBX3EyjKQz0=	\N	f	367nicolasfriedrichg	Nicolás	Friedrich Guzmán	demo@demo.com	f	t	2019-01-21 03:08:38.857583+00	5
368	pbkdf2_sha256$20000$IO35n9cTDM7Y$dXQNAwxVwBCqHPxjfPXTPNbXZXMO+CYfkxMWf+c8vNE=	\N	f	368franciscocastroco	Francisco	Castro Contreras 	demo@demo.com	f	t	2019-01-21 03:08:38.88165+00	5
369	pbkdf2_sha256$20000$im9brvu03Oqv$Vvi17PdoRT9LzNo5A5NIvMkkVt5XuKccO4SnTMnNKqs=	\N	f	369pablocarazamolina	Pablo	Caraza Molina 	demo@demo.com	f	t	2019-01-21 03:08:38.905647+00	5
370	pbkdf2_sha256$20000$tD6qJhIolIh3$DDC9vC5ittIkngmewHgykLgxzPvJ+v8KoPk8JzwF9RA=	\N	f	370arturoavilamoran	Arturo	Ávila Morán 	demo@demo.com	f	t	2019-01-21 03:08:38.936245+00	5
371	pbkdf2_sha256$20000$pQ4PT0RpJkEN$18bx3LQz6wCw/ieAEIhE26YguLQtYfB8bMrx4C0+taw=	\N	f	371hugoemiliovegagom	Hugo Emilio	Vega Gómez	demo@demo.com	f	t	2019-01-21 03:08:38.979698+00	5
372	pbkdf2_sha256$20000$GuUg8jhALkI3$sEkvxjR+cR8QBUTObc7Zm3rAXagjlFXZQG6A8mT9Vuo=	\N	f	372joserenescullzing	José René	Scull Zingg 	demo@demo.com	f	t	2019-01-21 03:08:39.020608+00	5
373	pbkdf2_sha256$20000$o4iXlghngqqf$kPSG+jmvCMdhgDRqPZ/zLfHxWIkE4wM2qKQyCh9l7zs=	\N	f	373mateoriveroborrel	Mateo	Rivero Borrell Torres 	demo@demo.com	f	t	2019-01-21 03:08:39.047151+00	5
374	pbkdf2_sha256$20000$a0vy48aVWYd3$Nd003acWvdIJen53JaGfSOTXCKHauGsiwW34z+Sp8gM=	\N	f	374teodorohernandezh	Teodoro	Hernández Hieber 	demo@demo.com	f	t	2019-01-21 03:08:39.072382+00	5
375	pbkdf2_sha256$20000$0VjxGvkzDV6b$F/S0KnK96yFwDa6DXf7h5zKDW/e6vN70x+p5c3j7Q4c=	\N	f	375mateoguajardorebo	Mateo	Guajardo Rebolledo 	demo@demo.com	f	t	2019-01-21 03:08:39.098024+00	5
376	pbkdf2_sha256$20000$ri3aCwxFHotg$GoFF8SZGq54IYxn2jNcIrLXYTXKVqG4wVDgjX2ns0Jc=	\N	f	376maximograndecarde	Maximo	Grande Cardenas 	demo@demo.com	f	t	2019-01-21 03:08:39.123873+00	5
377	pbkdf2_sha256$20000$Lenj5ww8eO62$Xig6PYx/mNkSkwefZ936PMDBEofwwg4gF+UWVJxn8uc=	\N	f	377lukafeldhausfaria	Luka	Feldhaus Farías 	demo@demo.com	f	t	2019-01-21 03:08:39.149081+00	5
378	pbkdf2_sha256$20000$a6v4Xo4PSC1Q$WEnuTIKyMWaahkCpXfOh+q4G3E6AJPszOTgLAMzc2fw=	\N	f	378paolocusimaldonad	Paolo	Cusi Maldonado 	demo@demo.com	f	t	2019-01-21 03:08:39.174124+00	5
1530	pbkdf2_sha256$20000$5I7UtsjlzteJ$GIKzIU07MxQFQvmD1sbcnuYCPZ2YGtOE263A2j+BlYk=	2019-02-01 03:03:01.529971+00	f	david0232	David 	Nuñez	name@example.com	f	t	2019-01-24 06:17:05.745739+00	4
1252	pbkdf2_sha256$20000$A5E7JixBQAy1$Y4ulC94xOeFiI6+sAAkW/M088AlPOBpn19a0zEo+JpU=	\N	f	ramon0527	Ramón Villa	Ramón Villa	name@example.com	f	t	2019-01-21 20:12:19.271754+00	4
379	pbkdf2_sha256$20000$aYzXpACcVdxM$rI5PEBmvDfhFSm0/nG/4yQK9x8576Xgsjn7u3fe3IJ4=	\N	f	379julianemilianocos	Julián Emiliano	Costa Salas 	demo@demo.com	f	t	2019-01-21 03:08:39.201375+00	5
380	pbkdf2_sha256$20000$qR04VZomlxpR$2Y9astgE4ZT80wRH4yyJT7R1GUqNcmg7jSNWf4sw/VA=	\N	f	380matteocorreiamore	Matteo	Correia Moresco	demo@demo.com	f	t	2019-01-21 03:08:39.226444+00	5
381	pbkdf2_sha256$20000$DffquWGn6UcL$b7/XErYheX38PlLIArhOPZWGWuczSbElVqeoBSyU8y0=	\N	f	381janlorenzbrandtba	Jan Lorenz	Brandt Bade	demo@demo.com	f	t	2019-01-21 03:08:39.25343+00	5
382	pbkdf2_sha256$20000$1Kfwy559U2kv$hCMmEaZjGLDOOl4wrgbP1VhzST7kQ/u3kZuybfxNiuc=	\N	f	382ricardosepulvedag	Ricardo	Sepúlveda García	demo@demo.com	f	t	2019-01-21 03:08:39.279+00	5
383	pbkdf2_sha256$20000$CtVhvcrUNbNR$DZxkS4ssZeqCeEcGzbHvEbUW+MV4hwz6wlWMsCOH25U=	\N	f	383yunlongschwabmori	Yunlong	Schwab Moritz 	demo@demo.com	f	t	2019-01-21 03:08:39.304264+00	5
384	pbkdf2_sha256$20000$q8gtgYzktYHv$Qhe0dC+v3THP3gvymA9ypQC6MG0fLgs3J0N4F4zRS0Y=	\N	f	384juancarlosrodrigu	Juan Carlos	Rodríguez Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:39.32922+00	5
385	pbkdf2_sha256$20000$5Mc89Jgih0q0$enI7UJxKIpOFVWHrV+HoDkymGobJQR7xTz29Dk38T0Q=	\N	f	385ricardoortegabeni	Ricardo	Ortega Benitez 	demo@demo.com	f	t	2019-01-21 03:08:39.354841+00	5
386	pbkdf2_sha256$20000$icRcYewtG7l3$iRv2gxPCpQnxdKL2RpIfvFW6kJgM5Pq11duAfn/DMio=	\N	f	386francomarinmezabu	Franco Marin	Meza Burk-Ballier 	demo@demo.com	f	t	2019-01-21 03:08:39.380462+00	5
387	pbkdf2_sha256$20000$V4QD8J7BRG9B$UnA9NkJCqElozN36Bx2ElptoJWuBC40dA6RpTL4PZJk=	\N	f	387gustavolozanohent	Gustavo	Lozano Hentschel 	demo@demo.com	f	t	2019-01-21 03:08:39.406751+00	5
388	pbkdf2_sha256$20000$fywZ0G5zkv0q$Bv4iWWciaNouc3et3e7mV9ORGbPhjuLWubahovjnXQE=	\N	f	388emilioiglesiassch	Emilio	Iglesias Schoenstedt 	demo@demo.com	f	t	2019-01-21 03:08:39.432414+00	5
389	pbkdf2_sha256$20000$QRS9fBod5WvI$h7mDDkVcjxAcaMp1pOglDbGu3i/rqIvVoTH15LbuPvE=	\N	f	389jorgegallegosopit	Jorge	Gallegos Opitz 	demo@demo.com	f	t	2019-01-21 03:08:39.457647+00	5
390	pbkdf2_sha256$20000$0YfnQiVjfmuO$+cEHodMC4/yHQYvLUUVrT4c+wpDYainKsVSjuya8sxU=	\N	f	390phillip diepenbro	Phillip 	Diepenbrock	demo@demo.com	f	t	2019-01-21 03:08:39.482998+00	5
391	pbkdf2_sha256$20000$1JAfjeImjefr$LM0BKXHYtihCno2koXnn5cyLfYGUkl7V3uX9XVepNR0=	\N	f	391jeandiazmueller	Jean	Díaz Mueller 	demo@demo.com	f	t	2019-01-21 03:08:39.509129+00	5
392	pbkdf2_sha256$20000$OQSnPnsujZJu$U2yQuB10HKJ+MHkQYsfupGhDOr+BsVzN7a5RJ7eBwRU=	\N	f	392mateoacuñagimeno	Mateo	Acuña Gimeno	demo@demo.com	f	t	2019-01-21 03:08:39.534512+00	5
393	pbkdf2_sha256$20000$YjMW7tyMPiJI$sZQVJARtTX1VvFHCKQxPMFJVX4aQN+2nJ0zN0Ds6jH0=	\N	f	393lucasvilalondoño	Lucas	Vila Londoño	demo@demo.com	f	t	2019-01-21 03:08:39.560514+00	5
394	pbkdf2_sha256$20000$HuHfC2jnpJyh$uzSnwvAArhTGtqi9xKEjdeuzdwdDtbUHIhAUxFKkio8=	\N	f	394federicoscullzing	Federico	Scull Zingg	demo@demo.com	f	t	2019-01-21 03:08:39.585599+00	5
395	pbkdf2_sha256$20000$gsgTAtILEPH3$YL5YOWU8YmBWHsGeV8F2Gz22s4C4Bk/KKyOln1jFmwg=	\N	f	395jeronimopalmalope	Jerónimo	Palma López 	demo@demo.com	f	t	2019-01-21 03:08:39.611206+00	5
396	pbkdf2_sha256$20000$0DMNjJheISzB$+7+3AuNehQVqIrM7zgdxJrMGQfTmHpR0WxMmQcQrD4M=	\N	f	396nicolasnavratiles	Nicolás	Navratil Esteban	demo@demo.com	f	t	2019-01-21 03:08:39.636755+00	5
397	pbkdf2_sha256$20000$VkQUN717g5Mm$IyKZBA5gfyFEe0Cx/a2zIQseEebqtQmnD7EdfkCZoUU=	\N	f	397diegoulisesmadrig	Diego Ulises	Madrigal Tejeda 	demo@demo.com	f	t	2019-01-21 03:08:39.662124+00	5
398	pbkdf2_sha256$20000$SU0zkm2ZTeZR$mUPsXQiG3ACtlCoIPEhG4JS1eKL0ed3dgaGZp/hhfi8=	\N	f	398kamilooniaskrusea	Kamilo Onias	Kruse Aaron 	demo@demo.com	f	t	2019-01-21 03:08:39.688113+00	5
399	pbkdf2_sha256$20000$uWVUgBy0gfT7$bgAIk5O89FajLm6mSM0uTP0haeEcamrjdNphbKckXcI=	\N	f	399matthiaskoechlins	Matthias	Koechlin Stuffer 	demo@demo.com	f	t	2019-01-21 03:08:39.714532+00	5
400	pbkdf2_sha256$20000$Q4jLl1z1vVEY$x59UzjjRjCwpeNzYVO84lC/GBCobwpRbwP6cbebn8rE=	\N	f	400oliverhernandezhi	Oliver	Hernández Hieber 	demo@demo.com	f	t	2019-01-21 03:08:39.740234+00	5
401	pbkdf2_sha256$20000$vW9MqB9k5DE0$r4Nhlk3WX+ilYNRbmr+ndPXsa7D/P1zwC7QnFWTUcFs=	\N	f	401juanpablofloresbr	Juan Pablo	Flores Bravo 	demo@demo.com	f	t	2019-01-21 03:08:39.765447+00	5
402	pbkdf2_sha256$20000$QafCCMFtScOc$Np6ZUHOziNm5fo7ZNpSMIQLg1OsoljTXdj8SPiTsWmQ=	\N	f	402eliasfischermendo	Elías	Fischer Mendoza 	demo@demo.com	f	t	2019-01-21 03:08:39.789439+00	5
403	pbkdf2_sha256$20000$jBMyPnunm5AQ$FtaHLTgI3RAfZTT8RAQ0czW8Cgf9yhqs1ANx8cyktK8=	\N	f	403brunofischermendo	Bruno	Fischer Mendoza 	demo@demo.com	f	t	2019-01-21 03:08:39.813573+00	5
404	pbkdf2_sha256$20000$1YxvqPXA9wEa$PGarAX0D/fCpOI91O25oghqqVSQK2WWZGa0Zyd0vHEY=	\N	f	404iñigohumbertoegid	Iñigo Humberto	Egido Palacios 	demo@demo.com	f	t	2019-01-21 03:08:39.838214+00	5
405	pbkdf2_sha256$20000$4LdtlRvFWQqK$THShu3Mp3SD2D2U69EZGyYlCGnHMF8ncku/hyQtOqF8=	\N	f	405sebastianacevedov	Sebastian	Acevedo Vallejo 	demo@demo.com	f	t	2019-01-21 03:08:39.863686+00	5
406	pbkdf2_sha256$20000$CnPONICEB7co$yYQBhpB/v8LO2jSlA24nQwVyTuso7x2kbyE/5ESpMbU=	\N	f	406escobarleonardoru	Escobar Leonardo	Ruiz Galindo 	demo@demo.com	f	t	2019-01-21 03:08:39.887503+00	5
407	pbkdf2_sha256$20000$X5KvsbJOO9yf$7ijgNmHHS3CGYNIqcfON46P38ofrw25nMSifMbb6SoA=	\N	f	407rodrigoromerogome	Rodrigo	Romero Gómez 	demo@demo.com	f	t	2019-01-21 03:08:39.911432+00	5
408	pbkdf2_sha256$20000$LrxSf9p248kh$eiErbPqpO00eZv/H0zo/mUESi7s8USMBfZ0bm5LJinU=	\N	f	408miguelromerogomez	Miguel	Romero Gómez	demo@demo.com	f	t	2019-01-21 03:08:39.935347+00	5
409	pbkdf2_sha256$20000$ckxgTYCA0qIS$amJ2mcbGTL2vkZZoKBF/N12Sn8T6kwtW8N8ZUpTyoEg=	\N	f	409valentinorobledo	Valentino	Robledo Espinoza	demo@demo.com	f	t	2019-01-21 03:08:39.959556+00	5
410	pbkdf2_sha256$20000$rSi9Z4ZPbtHO$t8AhcwtXnhQoYRMPQjy5cN8ofNT3uQysWSpyidkAJcs=	\N	f	410bastianrichterbio	Bastian	Richter Biondo 	demo@demo.com	f	t	2019-01-21 03:08:39.984595+00	5
411	pbkdf2_sha256$20000$brJ9CVprW9Jj$1jUtIGlV5jQG6HtngpiIB8Gv2fsKQ8EI3ebkRf2I7Z4=	\N	f	411arturopueblitacas	Arturo	Pueblita Castillón 	demo@demo.com	f	t	2019-01-21 03:08:40.008688+00	5
412	pbkdf2_sha256$20000$hQfTZv8xNpiJ$DqBhlZqMonh6HNY0VDAka7bGiqzDbqTfKg8/D2y/mtg=	\N	f	412thomasharingdeyta	Thomas	Haring de Yta 	demo@demo.com	f	t	2019-01-21 03:08:40.032351+00	5
413	pbkdf2_sha256$20000$K90HIt4Q9pmr$ASQ34Ej8764pCSzZJUEAD+Ne5hFCuRIm3turJ/wTaYI=	\N	f	413patriciogomezport	Patricio	Gómez Portugal Sáenz 	demo@demo.com	f	t	2019-01-21 03:08:40.056224+00	5
414	pbkdf2_sha256$20000$HoJO5vA2Xb61$IrvnNRyRQOcMJLYBCBZnJEU1oTBHJvtyJiKIFhL5eRI=	\N	f	414jeronimogallegoso	Jerónimo	Gallegos Opitz 	demo@demo.com	f	t	2019-01-21 03:08:40.080481+00	5
415	pbkdf2_sha256$20000$8GJgVBvpkXFI$dGQJtDtYAFRIuiBRUca/CBs5LHuVBjZt9QfJLyEYQ2U=	\N	f	415jorgetomasbraniff	Jorge Tomas	Braniff Malo 	demo@demo.com	f	t	2019-01-21 03:08:40.104517+00	5
416	pbkdf2_sha256$20000$qkSUf49DdRHk$WAivJih1/z19mEwqSf+GWhUd+/A2nRPorXiuAtiXyM4=	\N	f	416gonzalomagonville	Gonzalo Magón	Villena Alemán 	demo@demo.com	f	t	2019-01-21 03:08:40.128134+00	5
417	pbkdf2_sha256$20000$8Z53BmzAXvnr$UAIqgv6k4LWN/6wYUWAHCH44PyoQHK8Gw5p70ytLeQo=	\N	f	417iñakivargasgarcia	Iñaki	Vargas García 	demo@demo.com	f	t	2019-01-21 03:08:40.152838+00	5
1257	pbkdf2_sha256$20000$TcNzJIjbc1dj$DMUIxLlxSaCYN6dgSxv0mNZnQQ3nUv1KiPc5E1UmOQ4=	\N	f	lcohen0079	Luis Miguel 	Cohen	name@example.com	f	t	2019-01-21 20:23:35.943916+00	4
1238	pbkdf2_sha256$20000$TslHica8oLOl$eWlUC+h2sBibPDBQcJwLjdEyXCJZguAL43sHOrl4FDs=	2019-01-21 19:58:34.762145+00	f	jorge0219	Jorge	Jorge	name@example.com	f	t	2019-01-21 19:24:37.271515+00	4
1239	pbkdf2_sha256$20000$VSNlZ5neOKGk$3f4IAq87Hupf0TtBnxGv+iifycmJDMfYAQh+RtbAzAQ=	\N	f	demo	demo	demo	name@example.com	f	t	2019-01-21 19:27:29.166384+00	4
1240	pbkdf2_sha256$20000$NmaULD167uy6$IkMp0Lfm7zEWeCaXW6Wnd3Ew16kdppL5c3/NT8D2nKA=	\N	f	emanuel0697	Emanuel	Emanuel	name@example.com	f	t	2019-01-21 19:29:27.409945+00	4
418	pbkdf2_sha256$20000$P1bSsCu46WNH$nJpNQjhaQuk+b0ZtspTIU4zo2G72f8DKhHeWjW4NIAo=	\N	f	418antoniosalazarrey	Antonio	Salazar Rey 	demo@demo.com	f	t	2019-01-21 03:08:40.177525+00	5
419	pbkdf2_sha256$20000$5weuMWtIPDUU$mGSJjtrntsyCen81q76yjdUo7hFuXonisKnJ+tWZMfQ=	\N	f	419patrick morethsan	Patrick 	Moreth Santos 	demo@demo.com	f	t	2019-01-21 03:08:40.204907+00	5
420	pbkdf2_sha256$20000$8lMnOlsR6k9z$ZJZYcJp80F/qNauO6LWPT/OjUOfmbcYA4HRadZXkCr8=	\N	f	420marianomaldonadom	Mariano	Maldonado Magaldi 	demo@demo.com	f	t	2019-01-21 03:08:40.232788+00	5
421	pbkdf2_sha256$20000$G61Hndmvm0SM$1pBbvoQUhjuM6GFXvtJT0F+58EGm/t20upstnYTYLiE=	\N	f	421gerardoherreramor	Gerardo	Herrera Morgan 	demo@demo.com	f	t	2019-01-21 03:08:40.256864+00	5
422	pbkdf2_sha256$20000$hoKJcVw6R4De$beo3q/KBLwjcGPZzPnkjiZtypn0obSeFiInK4BOmbyo=	\N	f	422andregonzalezdiaz	André	González Díaz 	demo@demo.com	f	t	2019-01-21 03:08:40.28129+00	5
423	pbkdf2_sha256$20000$AJG67HEvNcT3$n5445bC7qEhGL+r4ORLXPZw6wXL4PpDD5dcyPNJwiyU=	\N	f	423luccouttolencpeye	Luc	Couttolenc Peyer 	demo@demo.com	f	t	2019-01-21 03:08:40.305691+00	5
424	pbkdf2_sha256$20000$qySZ55h23cw9$GF1xtz8x4iOcwYF5jHjSG7AyEqSY5fEiWessp3HG2M8=	\N	f	424marioemiliochavez	Mario Emilio	Chávez Ponce 	demo@demo.com	f	t	2019-01-21 03:08:40.330197+00	5
425	pbkdf2_sha256$20000$0y0ggSzBTflx$9spDGdcfci+b1qwD/Z0ctuJTku1baKcY+W3b8kJebOI=	\N	f	425nicolascarrerasot	Nicolás	Carrera Soto 	demo@demo.com	f	t	2019-01-21 03:08:40.354249+00	5
426	pbkdf2_sha256$20000$NHd03Tka3JJh$DMu7D2DGlWA2nP95U4y2Pt4QvG0FM/eYSHH2B9lg7HU=	\N	f	426viccoandreacardin	Vicco Andrea	Cardinal Sandoval 	demo@demo.com	f	t	2019-01-21 03:08:40.379589+00	5
427	pbkdf2_sha256$20000$4KG1dZoayHx1$Cn1w5rUoo9sPOduz9A/PBZHlnob3II4wtwhJpczvrIU=	\N	f	427juliancalzadaspat	Julian	Calzada Spath 	demo@demo.com	f	t	2019-01-21 03:08:40.415702+00	5
428	pbkdf2_sha256$20000$BHirJE6UPxag$tEG6IiQvS/T/0FVc8z/yx+/m8O7ldY2i1hGm+go4czw=	\N	f	428marcoantonioarand	Marco Antonio	Aranda Eguiluz 	demo@demo.com	f	t	2019-01-21 03:08:40.440585+00	5
429	pbkdf2_sha256$20000$HOzRNVpIKfCS$cH785v5m4wH6BGccHBhlM8jcKkrU/MQ5xU0si+wd65Y=	\N	f	429carlotiburciorami	Carlo	Tiburcio Ramírez 	demo@demo.com	f	t	2019-01-21 03:08:40.465326+00	5
430	pbkdf2_sha256$20000$Q3kUpAR4pSFY$Sb9f0n2rlP1ucoTKTiD1A4eHmcVulz591aB52mUxBkE=	\N	f	430danielsotocardena	Daniel	Soto Cárdenas	demo@demo.com	f	t	2019-01-21 03:08:40.490435+00	5
431	pbkdf2_sha256$20000$xaIabj6ZEyQz$QIvEjn47+Yo57oHVR2R4ikbkLw7weASvltrPmNVjqSc=	\N	f	431iñigopizanofernan	Iñigo	Pizano Fernández 	demo@demo.com	f	t	2019-01-21 03:08:40.515245+00	5
432	pbkdf2_sha256$20000$a7D2sYmE8eHW$/D2EYd9XtnJE/ArwApsmhmWEF7tqDBiY0scc5LlB6O8=	\N	f	432matiaspelayosoto	Matias	Pelayo Soto 	demo@demo.com	f	t	2019-01-21 03:08:40.539016+00	5
433	pbkdf2_sha256$20000$IPCR7zLqmaqW$waS5Ev6KzZvXHkeyuycUBStHLpbtnJ+YLhMF+Ozc+5U=	\N	f	433christianottoniel	Christian Ottoniel	Parra Romero 	demo@demo.com	f	t	2019-01-21 03:08:40.563583+00	5
434	pbkdf2_sha256$20000$hHJTfDxdswQ7$57Jwu55QDSGDtkUzhM/q4CG3FSYgCBxglR048a6F+Gw=	\N	f	434ricardomateosbeta	Ricardo	Mateos Betancourt 	demo@demo.com	f	t	2019-01-21 03:08:40.587912+00	5
435	pbkdf2_sha256$20000$AaDpZnKjRDsR$Yyv5QAqypYQTvm4MlRC3hLXwFAj0w84qAInQlR3uqF0=	\N	f	435victoralonsomarti	Victor Alonso	Martínez González 	demo@demo.com	f	t	2019-01-21 03:08:40.612804+00	5
436	pbkdf2_sha256$20000$xqxicJ2iKrgh$9CuV/ajwZYzys4b8wFjZ1PcL0uQ9V53f3iZ1WruIQBY=	\N	f	436crespoestefaniajä	Crespo Estefania	Jäkel Gomez 	demo@demo.com	f	t	2019-01-21 03:08:40.636464+00	5
437	pbkdf2_sha256$20000$ju651ERInzOh$qml8QdpkGY1KCchObpWW0XnKqh8UEMEKvDRvv4/lY2w=	\N	f	437salomonjahengonza	Salomón	Jahén González 	demo@demo.com	f	t	2019-01-21 03:08:40.660595+00	5
438	pbkdf2_sha256$20000$57R2ssc348b9$bnil6nNCWjyB5P2jjVPzin3PsM85xoFVnH3ua4pnAzQ=	\N	f	438rodrigoeliasrange	Rodrigo	Elias Rangel 	demo@demo.com	f	t	2019-01-21 03:08:40.68496+00	5
439	pbkdf2_sha256$20000$aiUqqnedAbTZ$12LWFPHWoCLwGUvC+Y8huvoB5lDByd56/NJMMdyWlkE=	\N	f	439jorgeivancisneros	Jorge Iván	Cisneros Moya	demo@demo.com	f	t	2019-01-21 03:08:40.709431+00	5
440	pbkdf2_sha256$20000$OjDEEvWQ2Ejw$/FkCTR0MarGzYy3Sxu7oOefDRBnbHRYZJg0/mbdk1mQ=	\N	f	440mikelcarretecalle	Mikel	Carrete Calles 	demo@demo.com	f	t	2019-01-21 03:08:40.734817+00	5
441	pbkdf2_sha256$20000$BP333DQpvDBO$eQ2MyCc5IKVIQxjqvyBdaDoRwyPf6sc93cc9NIhUqzo=	\N	f	441diegoviniegraruiz	Diego	Viniegra Ruiz 	demo@demo.com	f	t	2019-01-21 03:08:40.759325+00	5
442	pbkdf2_sha256$20000$aNR99sSAcv5B$Igl6c4T5h1QgNy63etsD4J+9jjlaIyNDKBItk6FOpWQ=	\N	f	442emilianoveraromer	Emiliano	Vera Romero 	demo@demo.com	f	t	2019-01-21 03:08:40.784474+00	5
443	pbkdf2_sha256$20000$Jlelm0kyQyuY$9ujzSz8i4Gwa733p0ISq9uLcxlzHQrLsOiUgLHmKEcE=	\N	f	443matthiasalexander	Matthias Alexander	Tiedemann Montes 	demo@demo.com	f	t	2019-01-21 03:08:40.809911+00	5
444	pbkdf2_sha256$20000$AVSNbHMx1g60$intRlpQNF2+bPO1ifrADlcEhuFuxGV5N37FDvZymw9A=	\N	f	444alejandrostephens	Alejandro	Stephens Quiroz 	demo@demo.com	f	t	2019-01-21 03:08:40.83385+00	5
445	pbkdf2_sha256$20000$5hFkxhgh2VQF$Sjk8bXfclAtvVw6f9uDLpvICnlxtG3frudGoikxzbpI=	\N	f	445patricioramirezpo	Patricio	Ramírez Posada 	demo@demo.com	f	t	2019-01-21 03:08:40.85863+00	5
446	pbkdf2_sha256$20000$4m63akwzGTiq$+DF7JuIj2/ihVjVWSKiTcyMSOKXF4K31oTr94B3JSRA=	\N	f	446salvadormontesdeo	Salvador	Montes De Oca Maíz 	demo@demo.com	f	t	2019-01-21 03:08:40.882737+00	5
447	pbkdf2_sha256$20000$L37wPbz098fe$kq7VRCvmFJkr11HPXL6ymNN3aoDRhNFC7uRu7/2cN0U=	\N	f	447patriciogonsalvez	Patricio	Gonsálvez Solis 	demo@demo.com	f	t	2019-01-21 03:08:40.906936+00	5
448	pbkdf2_sha256$20000$RdgDTbOWs1X2$HosfgoI83GqtLzKIOvoYs/D4uliRKQ9oTKe4WI5S1RA=	\N	f	448maximilianofelixa	Maximiliano	Félix Álvarez 	demo@demo.com	f	t	2019-01-21 03:08:40.930967+00	5
449	pbkdf2_sha256$20000$D8gqQVdPw1qD$BgvNk/aFOwnXbL4Uv6rJHYnpD1X3jDbJ0aA+AXXd2HQ=	\N	f	449mateodelahuertape	Mateo	De la Huerta Pérez 	demo@demo.com	f	t	2019-01-21 03:08:40.955121+00	5
450	pbkdf2_sha256$20000$QpveoDp4s5CN$A1x6aOd2/K4p0drT7wtBLJaMebF8ZtUl7q3Qr4rfhBA=	\N	f	450gaelcorderolara	Gael	Cordero Lara 	demo@demo.com	f	t	2019-01-21 03:08:40.985089+00	5
451	pbkdf2_sha256$20000$XtDSJLYSDvju$qIDBhLYaJka4IT0j3+uonostEM8uro9wUFmdkV5WOEA=	\N	f	451sergiocamarapalan	Sergio	Cámara Palancares 	demo@demo.com	f	t	2019-01-21 03:08:41.010199+00	5
452	pbkdf2_sha256$20000$3WS8Y9GdmD6r$/LxaxzkYO0SrYjw3cxcDZnVe/pdFUvdbRcA60mwikxk=	\N	f	452santiagocamarapal	Santiago	Cámara Palancares 	demo@demo.com	f	t	2019-01-21 03:08:41.035058+00	5
453	pbkdf2_sha256$20000$ZP0aVsbhxihb$cUgIUwztPIJ1r5YEakygsKa/uuUA5f2zW7imVpIk8IU=	\N	f	453maximilianoayalas	Maximiliano	Ayala Sánchez 	demo@demo.com	f	t	2019-01-21 03:08:41.059849+00	5
1260	pbkdf2_sha256$20000$M090MagPgOJC$OguqJ12SX/NU83WBplTwerfg0Yy49A7H/xJ0UUJc2b0=	\N	f	smedinac0095	Salvador 	Medina	name@example.com	f	t	2019-01-21 20:29:17.980153+00	4
454	pbkdf2_sha256$20000$VZvyra2nOF7G$ioL3iNT428uFzijC27E1fu5/LcElQjGmLfUwdc4qUUk=	\N	f	454dantearaizafernan	Dante	Araiza Fernández 	demo@demo.com	f	t	2019-01-21 03:08:41.084384+00	5
455	pbkdf2_sha256$20000$um1qvXSgE2t9$0zYkb7mkg8XZmKahH4cJnR7/EYvTWMzQz8nTBMGm4VQ=	\N	f	455ricardoaguilarqui	Ricardo	Aguilar Quiroz 	demo@demo.com	f	t	2019-01-21 03:08:41.110451+00	5
456	pbkdf2_sha256$20000$6NYqzHpuVMAU$Q8xug1n9vJSs8bq6Hjt7dqA3dacHRqRJWAT/TkWNwAU=	\N	f	456santiagoveraromer	Santiago	Vera Romero 	demo@demo.com	f	t	2019-01-21 03:08:41.137322+00	5
457	pbkdf2_sha256$20000$1ZKjjYeEjAIi$xtRdvpnvAqTKDiYkb/140jYK4AkxPOeE2hJgB3dSufA=	\N	f	457brunovazquezbecke	Bruno	Vázquez Becker 	demo@demo.com	f	t	2019-01-21 03:08:41.162818+00	5
458	pbkdf2_sha256$20000$zWGcpNMbE2O3$kFyIeLV70Covt+M0j2dF8hCacKZaTBtmv0C42PPEqnI=	\N	f	458luiseduardotovarg	Luis Eduardo	Tovar García 	demo@demo.com	f	t	2019-01-21 03:08:41.186593+00	5
459	pbkdf2_sha256$20000$9USQtfbHEYkn$kdKx0kl6Yfat3lQIz/tRG4mZYPdGE6Y9GbH1dINckgI=	\N	f	459diegoemiliotoquer	Diego Emilio	Toquero Zaragoza 	demo@demo.com	f	t	2019-01-21 03:08:41.210704+00	5
460	pbkdf2_sha256$20000$3AyRwBmWu7tj$Mes/fdgqcBaobTyFYeF5cXVyHGmTy3cnHuIHsvH6NL0=	\N	f	460xaviersantamariag	Xavier	Santamaría Granados 	demo@demo.com	f	t	2019-01-21 03:08:41.234977+00	5
461	pbkdf2_sha256$20000$6l42BygGBhPw$cBukz/5JRK/fgLotaYQCjEyx9oCP6fpX81Ln2aJXo4I=	\N	f	461luisjoaquinnollag	Luis Joaquin	Nolla Gonzalez 	demo@demo.com	f	t	2019-01-21 03:08:41.259492+00	5
462	pbkdf2_sha256$20000$vZAWW9RJTL4f$gx0oW/XTdUezyXYM40PAtVVmxQhPf/GEJw7lBMGLwwo=	\N	f	462lennartlipplcarde	Lennart	Lippl Cárdenas 	demo@demo.com	f	t	2019-01-21 03:08:41.283656+00	5
463	pbkdf2_sha256$20000$dpF63c54CvVZ$2pOVKbOmWXLhgfkN+iuHnkoqjMWzDrPGoKGgt/elhGM=	\N	f	463lucakaehlercapuzz	Luca	Kaehler Capuzzo 	demo@demo.com	f	t	2019-01-21 03:08:41.307883+00	5
464	pbkdf2_sha256$20000$vfKqq9m43GXn$2/A14B+FwcxlQDzxL/mpJXn7O+iiToZtzhKSOdSITJ4=	\N	f	464andresjuarezpeña	Andrés	Juárez Peña 	demo@demo.com	f	t	2019-01-21 03:08:41.33221+00	5
465	pbkdf2_sha256$20000$J5lXm2OpLgWV$naNHmC3kMbmDGIAn8/OgfoaWvFspo4RGg/FLi/Dyo6M=	\N	f	465sebastianthomasha	Sebastian Thomas	Hampson Medina 	demo@demo.com	f	t	2019-01-21 03:08:41.357868+00	5
466	pbkdf2_sha256$20000$0AWa9txZofRR$ySZt9qUQRuq/pfam9WP3IqNOE48Hr8v5Hsky1hrEexk=	\N	f	466brunogöbelaranda	Bruno	Göbel Aranda 	demo@demo.com	f	t	2019-01-21 03:08:41.381579+00	5
467	pbkdf2_sha256$20000$20yTyvoGpVnJ$IURbmDnkmSnTD105C+sNorX4lrZLteNj6Bq3JM930yo=	\N	f	467matiascortesfenne	Matías	Cortés Fenner 	demo@demo.com	f	t	2019-01-21 03:08:41.405325+00	5
468	pbkdf2_sha256$20000$xnQaLThuxBoo$BK/pr3CVrwCoY3Kd8xpkTbSjfbifjQsYHKdQ15LPSsc=	\N	f	468andressimonbrewer	Andrés Simón	Brewer Carrasquero 	demo@demo.com	f	t	2019-01-21 03:08:41.429302+00	5
469	pbkdf2_sha256$20000$5nEtoF7DnzZR$EjGHuryyH3a+AfQyVBHgMDc/hhJ4kCAfp6Z7OfgO6dk=	\N	f	469josemariaarreolar	José María	Arreola Rangel 	demo@demo.com	f	t	2019-01-21 03:08:41.45342+00	5
470	pbkdf2_sha256$20000$xFigWoomMaZF$E/1DfnIWN6fWJjAyDY323JNIxvmacayikcytx0HGlNU=	\N	f	470nicolasemiliof.al	Nicolas Emilio F. 	Alvares	demo@demo.com	f	t	2019-01-21 03:08:41.477535+00	5
471	pbkdf2_sha256$20000$3kJGsqkWvuAB$nGEr2Vp53cg2R6/wYt19TbpO9Mkd4IIzGOqa61GWtcU=	\N	f	471mateosotocardenas	Mateo	Soto Cardenas	demo@demo.com	f	t	2019-01-21 03:08:41.502143+00	5
472	pbkdf2_sha256$20000$8wNmJjkQygv0$bL/cG/tzy0LU4AhdPNtuYommGMGaQuTmA1wIVjya308=	\N	f	472humbertomerino 	Humberto 	Merino 	demo@demo.com	f	t	2019-01-21 03:08:41.525991+00	5
473	pbkdf2_sha256$20000$Ayzd5jXNOIET$UZjw1Fppj1ENC5QT2Q0Wn076p/zqVviE0hy1qfjUK/w=	\N	f	473gustavoa.omarzuñi	Gustavo A. 	Omar Zuñiga	demo@demo.com	f	t	2019-01-21 03:08:41.550123+00	5
474	pbkdf2_sha256$20000$yX8YFjgaOmbk$dY+tVpwae9+6JVWW8isD8cQ5X6JeM3eWYJWscU1LBgo=	\N	f	474andrecorderolara	Andre 	Cordero Lara	demo@demo.com	f	t	2019-01-21 03:08:41.574057+00	5
475	pbkdf2_sha256$20000$Jkh1sLItjd6F$tNY4E9Lrc1cOnmsne96ibLuSo6CXWXCl/e9/0iSiCEM=	\N	f	475paolosiessmelende	Paolo	Siess Melendez 	demo@demo.com	f	t	2019-01-21 03:08:41.598455+00	5
476	pbkdf2_sha256$20000$d9YoBiwcXhvK$aXpdR4pOxVy5I//+Gs2L4zF6jcXkmJw2J2uVBeP1KMs=	\N	f	476camilasahiaorozco	Camila Sahia	Orozco Mora 	demo@demo.com	f	t	2019-01-21 03:08:41.623211+00	5
477	pbkdf2_sha256$20000$zTeloLyubDY9$q1UlXWlV6LOguKwSSpIJlk+qW3vkOBTlrGmAsoG4fkI=	\N	f	477gabrielherreraygo	Gabriel	Herrera y Gómez 	demo@demo.com	f	t	2019-01-21 03:08:41.647502+00	5
478	pbkdf2_sha256$20000$9jEuxD5iUCn3$o/xob45F2xFUjU4oPErznlgMqfYY3mCK3s8Nbkrxhus=	\N	f	478danielhampsonmedi	Daniel	Hampson Medina 	demo@demo.com	f	t	2019-01-21 03:08:41.676067+00	5
479	pbkdf2_sha256$20000$hWUNBFzcTW1f$Ke+ePWlIxUEaohhKRqqT/mOv/matEXjKe2jr97MBqwA=	\N	f	479leahscarlettespin	Leah Scarlett	Espinosa Wenzel 	demo@demo.com	f	t	2019-01-21 03:08:41.717927+00	5
480	pbkdf2_sha256$20000$b7b82ul4C1QS$M+NjcZMJlHm6ejHFYaPTOA/MOEDHRD04Qc4Sv5qGQoA=	\N	f	480pabloespinosagarc	Pablo	Espinosa García de Letona 	demo@demo.com	f	t	2019-01-21 03:08:41.757372+00	5
481	pbkdf2_sha256$20000$IaYUa06xUOqp$HJuVU4neYlr+R3P2/eLKPnYFNJTjE9hXpsyXp7NclBs=	\N	f	481diegoespinosagarc	Diego	Espinosa García de Letona 	demo@demo.com	f	t	2019-01-21 03:08:41.783436+00	5
482	pbkdf2_sha256$20000$7Mblei7PgFOP$yVLcZbu2K6o+nT82M/oGPWEBystVA5bj6WQeSw551lg=	\N	f	482francocastelazoro	Franco	Castelazo Rozycka	demo@demo.com	f	t	2019-01-21 03:08:41.809053+00	5
483	pbkdf2_sha256$20000$IIxmSUNYYE8E$KQ1tlhV3k+3dQL2DvwQJL0rfFwoabVxpyL40/MNGkLc=	\N	f	483martincamposcasil	Martin	Campos Casillas	demo@demo.com	f	t	2019-01-21 03:08:41.834242+00	5
484	pbkdf2_sha256$20000$xhl9J8T1qkEM$3AZoLP190/6C9v0MVPR3gdGfY2ca2LZfYYXRSZDmQss=	\N	f	484matiascamberosrob	Matías	Camberos Robles 	demo@demo.com	f	t	2019-01-21 03:08:41.863872+00	5
485	pbkdf2_sha256$20000$aV9bSO3iHSD7$OSUq7rdSkEr9zGodGIhfjqjC/nQezghiNSjQqenCLV8=	\N	f	485ferranbarjaucorde	Ferrán	Barjau Cordero 	demo@demo.com	f	t	2019-01-21 03:08:41.907396+00	5
486	pbkdf2_sha256$20000$Zi3rHSNvG1qn$IYz5PwmFYXClu6wyrmcgsraA8NDvdXK5ge4p2NxQUWs=	\N	f	486lucasbalandranoto	Lucas	Balandrano Torres 	demo@demo.com	f	t	2019-01-21 03:08:41.945261+00	5
487	pbkdf2_sha256$20000$IbxU4LES2j6P$kGy9NBk1vWkuXM3CpTDLsI7i0qX8nLEbpO7flNnXX68=	\N	f	487diegomaximilianst	Diego Maximilian	Stagge Torres 	demo@demo.com	f	t	2019-01-21 03:08:41.969812+00	5
488	pbkdf2_sha256$20000$ygdblRqHF4nR$UTg0EeJZyMhHhGGePK1tXY+cq00UNejZOaUo0lQpoTo=	\N	f	488rafael sandovalpo	Rafael 	Sandoval Posada 	demo@demo.com	f	t	2019-01-21 03:08:41.994572+00	5
489	pbkdf2_sha256$20000$CoeBNxxPJOW9$5RSbRDzdZh9+ASq0OIDoGq4ALBtr8p/tZHbaST2sSmU=	\N	f	489sebastianromerode	Sebastían	Romero De la Portilla 	demo@demo.com	f	t	2019-01-21 03:08:42.024009+00	5
490	pbkdf2_sha256$20000$7Vd63PSKGfMb$H3NNJ42GhEGuYSDdqkkiJRN0aqnA7CoDRDKgpEqSzTI=	\N	f	490annaximenareynaib	Anna Ximena	Reyna Ibarra 	demo@demo.com	f	t	2019-01-21 03:08:42.048189+00	5
491	pbkdf2_sha256$20000$FmKOsiIqVmer$Rdt8so2HHLnnenabDak2mfMNgQMgS2LRsyQJuQ/wLEc=	\N	f	491kalebeduardopined	Kaleb Eduardo	Pineda Talavera 	demo@demo.com	f	t	2019-01-21 03:08:42.072474+00	5
492	pbkdf2_sha256$20000$D2aIoJ54vZXt$72tpXT+VX/fzFI5sL+iNJzM82iZjokngfpE/L478CVI=	\N	f	492antoniolopezguerr	Antonio	López Guerrero Campos	demo@demo.com	f	t	2019-01-21 03:08:42.096937+00	5
1261	pbkdf2_sha256$20000$lQwpadfZdiYd$rQDWKA7uQeD/G+wcyHsMTSR/Gb8eiHdZPmBvc5EgvGo=	\N	f	bernardo0358	Bernardo 	Thome	name@example.com	f	t	2019-01-21 20:30:20.269701+00	4
493	pbkdf2_sha256$20000$jmchvQJhNncY$W7/3sT1vBDVPCWZJrcgodeK42JiE77EM0+xd4cMno5k=	\N	f	493santiagogarduñogo	Santiago	Garduño Gómez 	demo@demo.com	f	t	2019-01-21 03:08:42.120923+00	5
494	pbkdf2_sha256$20000$8BWeZZbcISdu$BMIzp4+yW001eDJfuQ6xmOkHOXqf3SlRFKzbasgznm4=	\N	f	494paulafriasestrell	Paula	Frias Estrella 	demo@demo.com	f	t	2019-01-21 03:08:42.14472+00	5
495	pbkdf2_sha256$20000$jeUR3cRuVqKL$35Mps3oYx+KD8yzwrqFt924XF3FyAsX50moVeq5KAa8=	\N	f	495santiagoescobedor	Santiago	Escobedo Ramírez 	demo@demo.com	f	t	2019-01-21 03:08:42.168792+00	5
496	pbkdf2_sha256$20000$shkIO94DZ40r$qmf3eXz/M8FWr6UCI5L7sG9Xzysv8iKCtujdVPWSbaY=	\N	f	496rodrigodiazneri	Rodrigo	Díaz Neri 	demo@demo.com	f	t	2019-01-21 03:08:42.192554+00	5
497	pbkdf2_sha256$20000$ygi3RKU8nNp9$peDmuc8tfzJaQq66Iw8xYwqbdyNq7X3V88dLX/BTZIM=	\N	f	497natansantiagodelg	Natán Santiago	Delgado Espinosa 	demo@demo.com	f	t	2019-01-21 03:08:42.216838+00	5
498	pbkdf2_sha256$20000$gLr5d0OJm7fC$HPwtvpJ8F0z8dgO5BxDHHe48vEQ+Y7HhCQutQIBDG4Q=	\N	f	498diegozaldivarbust	Diego	Zaldivar Bustamante 	demo@demo.com	f	t	2019-01-21 03:08:42.24678+00	5
499	pbkdf2_sha256$20000$M19NdVwg4Z3W$LH3lSz2XT7vK7YtMSh22h7IdHy7EgXvdj+KflIbqvYU=	\N	f	499santiagotapiadela	Santiago	Tapia De la Torre 	demo@demo.com	f	t	2019-01-21 03:08:42.270562+00	5
500	pbkdf2_sha256$20000$UbUpWKRs0W5b$KBjIi5AZeyDDvE5KTiUath33XwWlmNzhPe60/BaWYww=	\N	f	500andrepalmacarreto	Andre	Palma Carreto 	demo@demo.com	f	t	2019-01-21 03:08:42.296079+00	5
501	pbkdf2_sha256$20000$CCY2e0QQ7z2z$ru7a+zjXQLEvFTN28OZh70nsMHMElcBNRTsqud4yDzM=	\N	f	501maximilianmaldona	Maximilian	Maldonado Maier 	demo@demo.com	f	t	2019-01-21 03:08:42.319572+00	5
502	pbkdf2_sha256$20000$ZUBd1NH1HBes$K6Fx5S5i+sCcKHKvxXfoZC7np6big9gGawvTW/rTyLU=	\N	f	502matiasgutierrezru	Matías	Gutiérrez Ruíz 	demo@demo.com	f	t	2019-01-21 03:08:42.343227+00	5
503	pbkdf2_sha256$20000$uNIVNX8NJHFU$67YxJv67d3O1TTYkybLrMfSbmKfQyBH3+OuPCEkc11c=	\N	f	503sergioikergonzale	Sergio Iker	González Arguello 	demo@demo.com	f	t	2019-01-21 03:08:42.367059+00	5
504	pbkdf2_sha256$20000$NRmTqLEiX7Dg$YV/NeKRf+AiWqYrmIDzFzZObf6hd4AKZ8y7W4iIjeqQ=	\N	f	504ignacioenriquebre	Ignacio Enrique	Brewer Carrasquero 	demo@demo.com	f	t	2019-01-21 03:08:42.390793+00	5
505	pbkdf2_sha256$20000$IHtLq9eORwOM$arGWh5MMv9bvhSemB98NZCP0Pr2C0qbeHIN327sFsqM=	\N	f	505ashleypriscillava	Ashley Priscilla 	Valenzuela Torres	demo@demo.com	f	t	2019-01-21 03:08:42.414495+00	5
506	pbkdf2_sha256$20000$imSBpWw6yfOW$mBzUGIpcFN6H7xyqXNbIQTyysBNfqKwmCMhJpat41os=	\N	f	506andrevillalopez	Andre	Villa López 	demo@demo.com	f	t	2019-01-21 03:08:42.438041+00	5
507	pbkdf2_sha256$20000$88LYGnynllxy$CQfp7ugMj0LVjeH5CneWOjGgk3Coikgso3LAh+XB8qg=	\N	f	507nielsvanvlietferr	Niels	Van Vliet Ferrer Bram 	demo@demo.com	f	t	2019-01-21 03:08:42.461745+00	5
508	pbkdf2_sha256$20000$bkOPSzdbJBe6$CguEgtFuSLfKSBvomP/2yTKpq4+ijM3KJfZoDndGPTQ=	\N	f	508maximilanomarzuñi	Maximilano	Mar Zuñiga 	demo@demo.com	f	t	2019-01-21 03:08:42.485473+00	5
509	pbkdf2_sha256$20000$jBxDqVkpF85w$D9yCOrYZ2I03bURR6hOLsDRehoLkKk4REdc+IOVwhiI=	\N	f	509hugoluislopezchap	Hugo Luis	López Chaparro 	demo@demo.com	f	t	2019-01-21 03:08:42.50927+00	5
510	pbkdf2_sha256$20000$XdYIVnqpsXgn$WZjILH1PoGN9EpnCPNDkdqih6t9tuSzY73WZlI/wMIU=	\N	f	510luisannaclaudialo	Luisanna Claudia	López Chapaparro 	demo@demo.com	f	t	2019-01-21 03:08:42.532898+00	5
511	pbkdf2_sha256$20000$0h5zjLHT294A$WdMOWvXlFttGZBiAIiC4qpPOOj9OF/bNwRfoGIws474=	\N	f	511nicolascortesfenn	Nicolás	Cortés Fenner 	demo@demo.com	f	t	2019-01-21 03:08:42.557026+00	5
512	pbkdf2_sha256$20000$PbIbIPLJLlBQ$dAzvD9WhCqvuqihH9EjonDx3Hp9A9lvpcpzKz5UddSQ=	\N	f	512patrickcastellano	Patrick	Castellanos Hess 	demo@demo.com	f	t	2019-01-21 03:08:42.58118+00	5
513	pbkdf2_sha256$20000$ezL3Qvd7pwd5$5tnFnuBbGVso9t0zLCPH+Z1H7GZipRk8UvTeq82bWzM=	\N	f	513jeronimocastelbla	Jeronimo	Castelblanco Vergara 	demo@demo.com	f	t	2019-01-21 03:08:42.604776+00	5
514	pbkdf2_sha256$20000$eiSUq5KSBEh0$ORfuMxXzTOWZ1idBC0PCnztBfs23Y3hyUxU0LoVN2Cg=	\N	f	514maximilianocamber	Maximiliano	Camberos Robles 	demo@demo.com	f	t	2019-01-21 03:08:42.628348+00	5
515	pbkdf2_sha256$20000$RQyeCtAe1df0$vVdug46TW9N9GsjLyTr2NMoyDWpZLJzmzi0nXtDtKZE=	\N	f	515davilarebecagutie	Davila	Rebeca Gutierrez 	demo@demo.com	f	t	2019-01-21 03:08:42.65188+00	5
516	pbkdf2_sha256$20000$TumzOHDSQPPx$Hbi8ryGw863RXLi2JRJF5eVvdmG9BWWuXjJ8bMcg0gw=	\N	f	516juanpabloramiroco	Juan Pablo	Ramiro Colmenares 	demo@demo.com	f	t	2019-01-21 03:08:42.67584+00	5
517	pbkdf2_sha256$20000$g7I8qpNXqtv8$xqLQ3QNlCqxfG8++jmYiNZPuWGVG5tCjAW1gVDT+kwc=	\N	f	517patriciovalladare	Patricio 	Valladares 	demo@demo.com	f	t	2019-01-21 03:08:42.699757+00	5
518	pbkdf2_sha256$20000$8VQSyjVu9aUz$shEfwmjggdqaJgr/7/jowyvd99ZLXmWfS7sUB/r0RRc=	\N	f	518niklasandretellma	Niklas Andre	Tellmann Muñoz	demo@demo.com	f	t	2019-01-21 03:08:42.723406+00	5
519	pbkdf2_sha256$20000$oaJkIJJNQl2H$PWYADnR7SuJuazGz5ySnv05nQRGa2ZpZDzbusXaY814=	\N	f	519liambarukherreraa	Liam Baruk 	Herrera Atalla	demo@demo.com	f	t	2019-01-21 03:08:42.749137+00	5
520	pbkdf2_sha256$20000$4xYnSpp57ESX$+wp84utsKtWF3h4EcIO6LQBYOKtCiKhvCyptiipzokE=	\N	f	520khaledhassantrejo	Khaled Hassan 	Trejo Gonzalez	demo@demo.com	f	t	2019-01-21 03:08:42.772605+00	5
521	pbkdf2_sha256$20000$rOn5UIgi3veo$WBH4+2/rrNcmQWPV954nSpjJaAMtWq/aKN75CYtoEds=	\N	f	521joseluisrangelher	Jose Luis 	Rangel Hernandez	demo@demo.com	f	t	2019-01-21 03:08:42.796222+00	5
522	pbkdf2_sha256$20000$nsjCfli2aFgO$LNJZaEpg+X5RO0jTBNkgB5JrYLpp0tTHBY/lAyw5wt8=	\N	f	522andreherreraygome	André	Herrera y Gómez 	demo@demo.com	f	t	2019-01-21 03:08:42.820461+00	5
523	pbkdf2_sha256$20000$96saahJAwJhk$J+lgb4OhqO1mkqjeAPo4y/YCQeYSRqty7Lto6dax9Ao=	\N	f	523fernandosolizpazs	Fernando 	Soliz Paz Soldan	demo@demo.com	f	t	2019-01-21 03:08:42.844066+00	5
524	pbkdf2_sha256$20000$YpgXGfvBs3Ie$LYRnF95MLdGPnEVCGvUK7/xlnUaxS085HQNzDSEJLSw=	\N	f	524federicochaparrom	Federico 	Chaparro Maldonado	demo@demo.com	f	t	2019-01-21 03:08:42.868048+00	5
525	pbkdf2_sha256$20000$0o3mOqBun1gO$fkxQZCeY2LEoB0mVOUH/PKOHJvbWrDkmDBS8oK2dctc=	\N	f	525brunojimenezmuñoz	Bruno 	Jimenez Muñoz	demo@demo.com	f	t	2019-01-21 03:08:42.892149+00	5
526	pbkdf2_sha256$20000$dXPA9DnJwBFp$PbvgOmKYiv1UsDK4o9xmqSu1/140ypHFXuO++A5g10Y=	\N	f	526virgilioaltairvid	Virgilio Altair 	Vidal Flores	demo@demo.com	f	t	2019-01-21 03:08:42.915782+00	5
527	pbkdf2_sha256$20000$vvTAPEkQWpWN$WG1myWq2L55EU3g+fWr7weAz3CSJ5D7BgehrnGp3Uoc=	\N	f	527pablozaldivarbust	Pablo 	Zaldivar Bustamante	demo@demo.com	f	t	2019-01-21 03:08:42.940025+00	5
528	pbkdf2_sha256$20000$xZDf8WUUTR7Z$qhx3/7ASB9pH0rIFfag5Hio6JHPG6C2Qm1oCjp+/8XY=	\N	f	528nicolasramirezled	Nicolas 	Ramirez Ledesma	demo@demo.com	f	t	2019-01-21 03:08:42.964377+00	5
529	pbkdf2_sha256$20000$LI1uJqokJaM1$Tb9sWaO2X60QSRGRu16gZjo9HejSlBndr3m2UTR/ZDc=	\N	f	529maximoespinosawal	Maximo 	Espinosa Walser	demo@demo.com	f	t	2019-01-21 03:08:42.988799+00	5
530	pbkdf2_sha256$20000$lqO6YBHWoEZ1$cCW5f9VdGzASlwOjLOFWapNFs1D8wYNxawbT7kOYkF4=	\N	f	530martinmosquerajac	Martin 	Mosquera Jacome	demo@demo.com	f	t	2019-01-21 03:08:43.013191+00	5
531	pbkdf2_sha256$20000$6GCnZPC2e5J2$NdpRoR0eTVo5H/qn9oUXf6HsdZ4+w+LIPABD6wwwI7Q=	\N	f	531juanpablodiazcruz	Juan Pablo 	Diaz Cruz	demo@demo.com	f	t	2019-01-21 03:08:43.037226+00	5
532	pbkdf2_sha256$20000$PjLn2ixy5Dwe$EE41WRaT7Ed2jx3e36APKbZyjdNhT4SZQ/NCQUrkFTw=	\N	f	532guillermoandressa	Guillermo Andres 	Sanchez Pivaral	demo@demo.com	f	t	2019-01-21 03:08:43.062557+00	5
533	pbkdf2_sha256$20000$JjVEXkl6jb08$UT0cIOOL7XzqBH7qnNJNWPEcxw6cas8Qp/tPHwkNsf8=	\N	f	533guillermoabaunzac	Guillermo 	Abaunza Chavolla	demo@demo.com	f	t	2019-01-21 03:08:43.086651+00	5
534	pbkdf2_sha256$20000$uDs35KiBGec5$1l4CPt+QL94xUUys2m8AirhWw8FMetAJiC+UJ/5uun0=	\N	f	534fabiangonzalezmai	Fabian Gonzalez 	Maiz Corral	demo@demo.com	f	t	2019-01-21 03:08:43.110272+00	5
535	pbkdf2_sha256$20000$mJra0zJ1JCM2$AjOP4MGjxn/zU6Wg9CaZ4gfUMLH2OK0sxYF6xz5DARQ=	\N	f	535emmafriasestrella	Emma 	Frias Estrella	demo@demo.com	f	t	2019-01-21 03:08:43.134255+00	5
536	pbkdf2_sha256$20000$7qAgdRIhHXeS$gOURwSrclg+iIW3hMhoW0pQDFETb2HOc0XW5/ex1MdQ=	\N	f	536kimberlywoodwardc	Kimberly	Woodward Castillo 	demo@demo.com	f	t	2019-01-21 03:08:43.157732+00	5
537	pbkdf2_sha256$20000$KKArBgdJYHXQ$+H5+OP1Kmp/0G5YUklKG15fXR1FvHEAsz5qLOSH7ShU=	\N	f	537sofiasañudocarril	Sofía	Sañudo Carrillo 	demo@demo.com	f	t	2019-01-21 03:08:43.18136+00	5
538	pbkdf2_sha256$20000$LAQURifAM0Zx$2VMLgJ+uaMLOuci5qac7Qag3ZkS0Gdqh32sVgaM49D0=	\N	f	538camilamateosbetan	Camila	Mateos Betancourt 	demo@demo.com	f	t	2019-01-21 03:08:43.205345+00	5
539	pbkdf2_sha256$20000$olJIAzm2wPMI$6YDowZ6CSK8XDbUefsbTGHxqW5T2PgVfrEoX/pGbIKA=	\N	f	539mariareginadiazro	Maria Regina 	Díaz Rojas	demo@demo.com	f	t	2019-01-21 03:08:43.22908+00	5
540	pbkdf2_sha256$20000$80qa41NqfL2f$CQrXeQj8/NFqQbab/cat1kAlNM/fe0ljIrhWMB/OHn8=	\N	f	540andrealachicaysan	Andrea	Lachica y Sánchez 	demo@demo.com	f	t	2019-01-21 03:08:43.252887+00	5
541	pbkdf2_sha256$20000$HKgEUF77mdbk$S1BqTZdrcJGfGE94uMVZNvPTjxNPS7IbTl0gRHCncYM=	\N	f	541nicolejimenezfrey	Nicole	Jiménez Freyermuth 	demo@demo.com	f	t	2019-01-21 03:08:43.276335+00	5
542	pbkdf2_sha256$20000$2qmLhHFHNGdB$pGq2GJSvayg0Ow/CHT38Qw28u7nH4Lqy1O/fC+qv43o=	\N	f	542sofiaiglesiaspina	Sofia	Iglesias Pinales 	demo@demo.com	f	t	2019-01-21 03:08:43.299857+00	5
543	pbkdf2_sha256$20000$TxpKqUEHr5DP$DUz5olB8BxvzFa+3oSdIb9wiykYKCJn7lSc8rW07UWE=	\N	f	543nataliagamezarand	Natalia	Gámez Aranda 	demo@demo.com	f	t	2019-01-21 03:08:43.323358+00	5
544	pbkdf2_sha256$20000$UE7PzL5n3dik$w7HFZfc/Vcd0LZwX4qKI2kq3vtx2+VJCC52l80l004g=	\N	f	544nikitafaisalrusse	Nikita	Faisal Russelmann 	demo@demo.com	f	t	2019-01-21 03:08:43.346888+00	5
545	pbkdf2_sha256$20000$zcWNusPjWd1s$suveDpY4fh0hxcxETpk0UMLzPKFijcTIKIT/qd57cvU=	\N	f	545valeriaisabelcesp	Valeria Isabel	Céspedes Escobar 	demo@demo.com	f	t	2019-01-21 03:08:43.37024+00	5
546	pbkdf2_sha256$20000$1rMIggcRU6qH$HHLRyOaEfqgvp8DpHT9vq5t08uelTXhG3loKIqYHK8o=	\N	f	546claudiajirehelice	Claudia Jireheli	Cedillo Figueroa 	demo@demo.com	f	t	2019-01-21 03:08:43.393681+00	5
547	pbkdf2_sha256$20000$ckIsV6x4Tilx$q69bedUeO1WjJN2Lxd61QfXQge+S5EtLYO+eJzd6xhs=	\N	f	547danielabarragande	Daniela	Barragán Del Castillo 	demo@demo.com	f	t	2019-01-21 03:08:43.417107+00	5
548	pbkdf2_sha256$20000$P4NlS8u9DqOr$D6zgCLHLR4f9B5rBYy3heWp23WazY9IVj/xt7/sAMYE=	\N	f	548yoanaaboitizdelac	Yoana	Aboitiz De la Chica	demo@demo.com	f	t	2019-01-21 03:08:43.440395+00	5
549	pbkdf2_sha256$20000$2riIAlcQjtjn$3TgoTvnk4l5esF8OtMoK9+fNx0kZfGOZjJklnaZIeG8=	\N	f	549josevaldesvelazqu	José	Valdés Velázquez 	demo@demo.com	f	t	2019-01-21 03:08:43.463966+00	5
550	pbkdf2_sha256$20000$aB6azpKmvGZv$PB0wcFlwJ2ntPUDcHsqLGJvboUyiplQjUc+DtneMEWA=	\N	f	550pablosanchezalcal	Pablo	Sánchez Alcalá 	demo@demo.com	f	t	2019-01-21 03:08:43.487213+00	5
551	pbkdf2_sha256$20000$d0m4QI6SrLFe$MbL628Dfwd6GxDl9eRPYzjtDpj3TM8etrbwEBGYlSmU=	\N	f	551sergioplatonofflo	Sergio	Platonoff López Schultz 	demo@demo.com	f	t	2019-01-21 03:08:43.510966+00	5
552	pbkdf2_sha256$20000$ycyHzOhypvAs$BrGazg4Oyhgt6B9KnFC8Dk4V3U2WkhoRd4IrG8JVUWc=	\N	f	552jorgepilegorreta	Jorge	Pi Legorreta 	demo@demo.com	f	t	2019-01-21 03:08:43.534419+00	5
553	pbkdf2_sha256$20000$Mo64rUkPxozh$UqkO0mEvOtpYowpb//JbS5SLbOL0foGAy5atbPn3kQ4=	\N	f	553claudiorodrigomen	Claudio Rodrigo	Mendizabal Ramírez 	demo@demo.com	f	t	2019-01-21 03:08:43.557975+00	5
554	pbkdf2_sha256$20000$0jecnB3rR3LA$GPmTRvrcmYaKPvJjWwRmjK5yDwSFbMH0sfFUeN87il0=	\N	f	554jorgeemiliolandet	Jorge Emilio	Landetta Platonoff 	demo@demo.com	f	t	2019-01-21 03:08:43.581777+00	5
555	pbkdf2_sha256$20000$Ttx7u12L0Mfw$HobDxh6l+ZvAq6ZIu/IecW1u1lSKyUcwYxi3I3pssvc=	\N	f	555jorgeaugustolande	Jorge Augusto	Landetta Platonoff 	demo@demo.com	f	t	2019-01-21 03:08:43.605358+00	5
556	pbkdf2_sha256$20000$pZ0T0edDvuOY$RRgFEBoFTzPUoIuv6ju4Un80cOjh0SvUzuHtDWULHn4=	\N	f	556johannesschubert 	Johannes 	Schubert 	demo@demo.com	f	t	2019-01-21 03:08:43.628968+00	5
557	pbkdf2_sha256$20000$zT4nNBF2uqvQ$lwimWIrX+cLPj1+/Mimsm2O7O3psqqFas7xC0bVFGIE=	\N	f	557marian hofmann 	Marian 	Hofmann  	demo@demo.com	f	t	2019-01-21 03:08:43.652599+00	5
558	pbkdf2_sha256$20000$Dk0lF2RUyOMM$0mPqaApM55eNI/EU24YOTzdrSSlZdFeETIvczp4JY1A=	\N	f	558albertogonzalezhe	Alberto	González Herrera 	demo@demo.com	f	t	2019-01-21 03:08:43.676111+00	5
559	pbkdf2_sha256$20000$X9g6u4GiIJAH$TN3qeRKPDLHsN3Ij9K9/VwxqEBwzC/jYW+nC3z4sdVc=	\N	f	559ianballaraiza	Ian	Ball Araiza 	demo@demo.com	f	t	2019-01-21 03:08:43.700192+00	5
560	pbkdf2_sha256$20000$RcnqeHI8jeLw$Tq128jitolmZxjlrBTM0gg/n0K3Gk803Yb00tOFZpiY=	\N	f	560arantzavalladares	Arantza	Valladares Vargas 	demo@demo.com	f	t	2019-01-21 03:08:43.725193+00	5
561	pbkdf2_sha256$20000$6MXxMqHJUHPm$VwOVJGOJKcsLXj3ja35l3bJ3B/fXOKXlADcpIhTYwCc=	\N	f	561monserratvaldesix	Monserrat	Valdés Ixta Zazil 	demo@demo.com	f	t	2019-01-21 03:08:43.750052+00	5
562	pbkdf2_sha256$20000$S6ROncuDaVxs$yVTuL0dTsEKbq6nr93uQ2KuRlgRDVR7HLxKnrx/6VMk=	\N	f	562dianapaolasotoqui	Diana Paola	Soto Quintana 	demo@demo.com	f	t	2019-01-21 03:08:43.773299+00	5
563	pbkdf2_sha256$20000$8daejAb9xTcj$YmOQLxPKCOaX0OSSnOAAw8G/Q6WBAYD+rbkyJT0iatI=	\N	f	563victoriaalexandra	Victoria Alexandra	Sánchez Godínez 	demo@demo.com	f	t	2019-01-21 03:08:43.797169+00	5
564	pbkdf2_sha256$20000$9k4R2A5otFHu$iwBgO64BxqW6V0ReFBNyYG+dVVrYwsBWquwt2JE8BPE=	\N	f	564reginaperezortega	Regina	Pérez Ortega 	demo@demo.com	f	t	2019-01-21 03:08:43.821149+00	5
565	pbkdf2_sha256$20000$xGpodDVDMimK$+ek2K36rAbBw+qu4PFx6Rjx4IEuxgyadixukuFu3gZE=	\N	f	565danielamontesdeoc	Daniela	Montes De Oca Maiz 	demo@demo.com	f	t	2019-01-21 03:08:43.845046+00	5
566	pbkdf2_sha256$20000$5d1m8qDFuw1y$cuSVHaGQ/XH04uRmNeJMewvyT5DBSp3gyKQlfwtzX3c=	\N	f	566maytelechugarodri	Mayte	Lechuga Rodríguez 	demo@demo.com	f	t	2019-01-21 03:08:43.868854+00	5
567	pbkdf2_sha256$20000$yt8leOusxKD1$MrfqP0YW6I4XCHVV8Hztygi5/6dnefv2KIR+Ozi2Qts=	\N	f	567rominagonzalezmar	Romina	González Martínez 	demo@demo.com	f	t	2019-01-21 03:08:43.89279+00	5
568	pbkdf2_sha256$20000$Ow9qyJnQHulu$vAHNSGxVaJ2ZGSYi8Us4iR2GrFRt+WC86aLtECSHqzA=	\N	f	568lysdeguadalupeger	Lys De Guadalupe	Gershberg Padilla 	demo@demo.com	f	t	2019-01-21 03:08:43.916582+00	5
569	pbkdf2_sha256$20000$6I9AACKfJ3kz$jNL3i1uhkN1jis7xP1oLj2LSeQ6DgLCut05rd2arWEg=	\N	f	569valentinagalindoa	Valentina	Galindo Arzate 	demo@demo.com	f	t	2019-01-21 03:08:43.940617+00	5
621	pbkdf2_sha256$20000$J7T2ASI3iANh$FeIFohWzxY01prPCed+9hU5AJvqEbJD2KNJToSmwcvI=	\N	f	621sebastianponce 	Sebastian	Ponce 	demo@demo.com	f	t	2019-01-21 03:08:45.251714+00	5
73	pbkdf2_sha256$20000$SP6U2eWFhwSM$vxSBf15P8gM4JPlhRjtt7v5p2ZHTzFrW/AP0Cc/g7I8=	\N	f	73juanluisbarillas	Juan Luis 	Barillas	demo@demo.com	f	t	2019-01-21 03:08:31.503919+00	5
570	pbkdf2_sha256$20000$rJ4E4AQVH3SA$Rnp+ezS+7gLCxbfCNJnqZ9VY7AItMc3LA1IBxCIZHrM=	\N	f	570marianadavilarodr	Mariana	Dávila Rodríguez 	demo@demo.com	f	t	2019-01-21 03:08:43.964036+00	5
571	pbkdf2_sha256$20000$wMSOa37iUcvf$Z79n63cfacInNdtyYWj599NWs1W+4rjmcRh/r3IlzuI=	\N	f	571isabellasednacova	Isabella Sedna	Covarrubias Montoya 	demo@demo.com	f	t	2019-01-21 03:08:43.987723+00	5
572	pbkdf2_sha256$20000$RlHpebuaIqCX$2gaDi/J+hHyvn1XTIzdqVpjcxBzYFajMSJG3btm6baA=	\N	f	572mariareginacastro	María Regina	Castro Rosaldo 	demo@demo.com	f	t	2019-01-21 03:08:44.011203+00	5
573	pbkdf2_sha256$20000$XYMyzhFaLWl7$WB1Kd2IhfWV4sl9TrlTVDVZH91arHzmofwCH94ntB3Q=	\N	f	573ximenabaizadeavil	Ximena	Baiza De Avila 	demo@demo.com	f	t	2019-01-21 03:08:44.035245+00	5
574	pbkdf2_sha256$20000$uhqadNkSjPMT$PwnhE+uZTXaxiXaQhUTVyXMQcjOH8rzzNK9g0Rx1dTU=	\N	f	574karenaizmancarden	Karen	Aizman Cárdenas 	demo@demo.com	f	t	2019-01-21 03:08:44.060687+00	5
575	pbkdf2_sha256$20000$ZNBUn2xTv7Z5$IiBYuyjgu6r6yJl0kRwv8xw1HzQk+IK12SykUvaJFVQ=	\N	f	575sebastianvelamart	Sebastian	Vela Martínez 	demo@demo.com	f	t	2019-01-21 03:08:44.104724+00	5
576	pbkdf2_sha256$20000$TY4dp8b4Zi0U$VZuEcWNOpJA5nQN9M8mY9lcF2ROaPDJmLlMBW40RD1w=	\N	f	576santiagotorrescos	Santiago	Torres Cossio 	demo@demo.com	f	t	2019-01-21 03:08:44.134544+00	5
577	pbkdf2_sha256$20000$yq9qloGm7SKs$jd6ikSxFdZm30pmOiOf9RixCuGVdXwV62DezCDvCqc8=	\N	f	577mateotarragocanto	Mateo	Tarragó Cantón 	demo@demo.com	f	t	2019-01-21 03:08:44.1586+00	5
578	pbkdf2_sha256$20000$93xwll10DRs0$KM8VhS2DMTdSnouQuI3wCxKJqgQpOIT+jaM8ThhbnGg=	\N	f	578herediasantiagovi	Heredia	Santiago Villalva 	demo@demo.com	f	t	2019-01-21 03:08:44.182553+00	5
579	pbkdf2_sha256$20000$D9HDnDhcoIxK$nxwpUbS4AeK52jE6wzxa4w70Cz5XvIlMCh5dtWXURqI=	\N	f	579jorgerodriguezfue	Jorge	Rodriguez Fuentes 	demo@demo.com	f	t	2019-01-21 03:08:44.206859+00	5
580	pbkdf2_sha256$20000$1gdGOGsy2QQ5$wCbbJFX3qlqWn0ID+j4WJHgnhKpnH4fYNhgYq7XnGqk=	\N	f	580andrespizanoferna	Andrés	Pizano Fernández 	demo@demo.com	f	t	2019-01-21 03:08:44.231159+00	5
581	pbkdf2_sha256$20000$dKvypW61ZOzm$kz3Oj6pvxqiFyJtktR0dz68sFN4jTTVKp/iPirVPwS8=	\N	f	581mateoparramolina	Mateo	Parra Molina 	demo@demo.com	f	t	2019-01-21 03:08:44.25604+00	5
582	pbkdf2_sha256$20000$ObKKDb8zDg6I$io8wNIjcK7VKAk8e0vUAgopLGSCxRDMiQX48UGbNXqo=	\N	f	582axelmoramuths	Axel	Mora Muths 	demo@demo.com	f	t	2019-01-21 03:08:44.279818+00	5
583	pbkdf2_sha256$20000$GWje8uoyku5z$LpKXR3tjhd7xJMJLKduU5a1JkyD1xt2TC/vHSgcRQ1M=	\N	f	583josemarialuisesgo	José María	Luises González 	demo@demo.com	f	t	2019-01-21 03:08:44.303624+00	5
584	pbkdf2_sha256$20000$lGEH46BE1I48$IWDVhr15b4n+tH/RsksRz5xoUnDXz1VqGzUXm+adzwA=	\N	f	584adrianhernandezgu	Adrián	Hernández Gutiérrez 	demo@demo.com	f	t	2019-01-21 03:08:44.327364+00	5
585	pbkdf2_sha256$20000$rS6VTv7H8mNB$h3+UDto0Aw0kdzoXnXrUlWZB92pS35mUfqTul0ivuQ8=	\N	f	585santiagohernandez	Santiago	Hernández Espina 	demo@demo.com	f	t	2019-01-21 03:08:44.350995+00	5
586	pbkdf2_sha256$20000$B6IOfIv4CJFq$VI4e7vszLcIL/YdygC29BpHkD/aZaQpZPXxUtWt/Xro=	\N	f	586rogeliosebastiane	Rogelio Sebastián	Espinosa Moreno 	demo@demo.com	f	t	2019-01-21 03:08:44.375033+00	5
587	pbkdf2_sha256$20000$StnhI9cyxKNF$o5enU5XQp4hdmBvXEzmOrjJ/H68lGUzknqTu3RAafUQ=	\N	f	587pedroescalonatorr	Pedro	Escalona Torres 	demo@demo.com	f	t	2019-01-21 03:08:44.399468+00	5
588	pbkdf2_sha256$20000$hw6L7cxgUnNJ$7yc/G5lCJaJ8ziEUgHb5nNNWzpMdCOVQrlGCkDH46Kw=	\N	f	588josegabrielarreol	José Gabriel	Arreola Rangel 	demo@demo.com	f	t	2019-01-21 03:08:44.423595+00	5
589	pbkdf2_sha256$20000$CA1ggidiWMGh$lDm04NVd0cqqgdgQoX8Hg7R/b+ojACanurGjwnuoCOM=	\N	f	589ukkosmith 	Ukko	Smith 	demo@demo.com	f	t	2019-01-21 03:08:44.447337+00	5
590	pbkdf2_sha256$20000$SMLuBrOPGD33$gaSVq4Hc/e82EaANKpglnU0XZIWa3Csu16bA4ONiFts=	\N	f	590sofiabalboa 	Sofia	Balboa 	demo@demo.com	f	t	2019-01-21 03:08:44.471489+00	5
591	pbkdf2_sha256$20000$j7nT4cnOS5Yz$50+yoMGsac3dQDxkVzEPoVMSvkds4R4mIx7Pi3DAz3c=	\N	f	591santiagobernal 	Santiago	Bernal 	demo@demo.com	f	t	2019-01-21 03:08:44.495447+00	5
592	pbkdf2_sha256$20000$IZUF9j6pypPL$tM+ejsE/x+4k08jRRspLSlWQwk5QhZ1He6CAexHyXKc=	\N	f	592robertovarela 	Roberto	Varela 	demo@demo.com	f	t	2019-01-21 03:08:44.519694+00	5
593	pbkdf2_sha256$20000$sB9uhtMUJJwI$ACTCu8W1YYlwqBgdEzcz/KkkBiZeHHA8/s8q9Eo/3mk=	\N	f	593milajoseph 	Mila	Joseph 	demo@demo.com	f	t	2019-01-21 03:08:44.543347+00	5
594	pbkdf2_sha256$20000$82EccCn4maXt$+6REMKd2mEDUlnQowQP/Lj+K/POd+d6XFiq+c1vVeg8=	\N	f	594milabeltran 	Mila	Beltran 	demo@demo.com	f	t	2019-01-21 03:08:44.567396+00	5
595	pbkdf2_sha256$20000$JPBbUsZ10HZh$mG9M54RHUgWT38OSKh7W3ATTOam1qD7IkWDq6CTfMc0=	\N	f	595mianaguiano 	Mia	Naguiano 	demo@demo.com	f	t	2019-01-21 03:08:44.591269+00	5
596	pbkdf2_sha256$20000$aqLp9PHvMhDB$eFzLAkc+dv9OYQhHZH+jMlA5oYoUkl8Fv15DmFKrDNo=	\N	f	596leonardofeilbogen	Leonardo	Feilbogen 	demo@demo.com	f	t	2019-01-21 03:08:44.615374+00	5
597	pbkdf2_sha256$20000$W8Reb3p2e26q$2q7UjmRrOBRy5w7Y5yP8bZtYd+bxdHacVauWtjkJlCg=	\N	f	597julianehrensber 	Julian	Ehrensber 	demo@demo.com	f	t	2019-01-21 03:08:44.639314+00	5
598	pbkdf2_sha256$20000$kSsg1wbQjFTE$rv/d6X9mXoD3ype2ndch5s2DeZETXiMgy64cRQAQMMM=	\N	f	598fatimazavala 	Fatima	Zavala 	demo@demo.com	f	t	2019-01-21 03:08:44.663345+00	5
599	pbkdf2_sha256$20000$9xTJH3ljxcsd$QI4tCEIk3jbF10cgmwQYCvmLjic/78dVzFsvLHSKJT4=	\N	f	599eduardorodriguez 	Eduardo	Rodriguez 	demo@demo.com	f	t	2019-01-21 03:08:44.687346+00	5
600	pbkdf2_sha256$20000$gI2ODRodRUMJ$PaRH47ZMR7ZlIZuZ+HatHJ+NPSdcCchPSPZBm6w+cco=	\N	f	600andreagutierrez	Andrea	Gutierrez	demo@demo.com	f	t	2019-01-21 03:08:44.726765+00	5
601	pbkdf2_sha256$20000$GMqegygsJZb9$95kINi6P2Saeu9vyu5A7REHnuacNyPO8U1C/3cxB9yA=	\N	f	601santiagoerlbaher 	Santiago	Erlbaher 	demo@demo.com	f	t	2019-01-21 03:08:44.753904+00	5
602	pbkdf2_sha256$20000$XtCTOpRmorXo$O1p7KEIumZqJKxm2Qe8ZEVPhkhq35Q3JidoHOTvGw68=	\N	f	602robertamochelena 	Roberta	Mochelena 	demo@demo.com	f	t	2019-01-21 03:08:44.778887+00	5
603	pbkdf2_sha256$20000$O0tXdn7wYCTq$p7TTrApd2ZVQCnYdwpx9HJqjwSxnNYQNp7250mHQoPM=	\N	f	603nicolasjacobsen 	Nicolas	Jacobsen 	demo@demo.com	f	t	2019-01-21 03:08:44.803746+00	5
604	pbkdf2_sha256$20000$oKtI1yDwVo6T$PXARekavoBcAEx52My8eh6l7VCuVVLi4yTx9Wxle8bQ=	\N	f	604miacortes 	Mia	Cortes 	demo@demo.com	f	t	2019-01-21 03:08:44.828989+00	5
605	pbkdf2_sha256$20000$5mFw1aKSfSEC$2HgXcP923ONu2oLLX7a5EXQ/xX13C7xDao/qeYyYtec=	\N	f	605leonardograeslin 	Leonardo	Graeslin 	demo@demo.com	f	t	2019-01-21 03:08:44.854067+00	5
606	pbkdf2_sha256$20000$DQvOvA1FMQJa$PXRlD9kbz5ev8wEh3vQeeC9KtfLHCBt7GKXGPQ94C9U=	\N	f	606juliancañedo 	Julian	Cañedo 	demo@demo.com	f	t	2019-01-21 03:08:44.878947+00	5
607	pbkdf2_sha256$20000$KSw3NSXgCZ5h$1RKt900jWxjECfSNpCnrruzGFTJNQLO5SRAORyAcwmQ=	\N	f	607josetorres 	José	Torres 	demo@demo.com	f	t	2019-01-21 03:08:44.903622+00	5
1258	pbkdf2_sha256$20000$jLi5FeOVGSvt$APS4Vgd3v8w+fWBPZai8QdijPASeGP8YQcjhh5ErK08=	\N	f	mmiranda0931	Martin 	Miranda	name@example.com	f	t	2019-01-21 20:26:57.050653+00	4
5	pbkdf2_sha256$20000$WAwXp4VbWDl3$AGyJjrKJXauCWn2BPorn5RxJfM1OCGeyMJTVzBFiN2g=	2019-02-05 01:06:59.797801+00	f	5edgarsebastiancabre	Edgar Sebastian	Cabrera Loza	demo@demo.com	f	t	2019-01-21 03:08:29.47371+00	5
2	pbkdf2_sha256$20000$EWhUyC1nS2mh$8yvjHteN4gfQ2XSXuTRjoOI45Da/uRs3yFcZtaYPYBQ=	\N	f	2cristiobalalvarezpr	Cristiobal	Alvarez Pruneda	demo@demo.com	f	t	2019-01-21 03:08:29.39224+00	5
3	pbkdf2_sha256$20000$DHd28kDUn19z$ieQZNcGwbvavRwEt/0iw1zNCveeTtc9lxMTqt0qzFtY=	\N	f	3mateobenitezvelazqu	Mateo	Benitez Velazquez	demo@demo.com	f	t	2019-01-21 03:08:29.418285+00	5
4	pbkdf2_sha256$20000$0WiDSVtBC0Sk$y4dpUe0YCWTBJQZ+WWQpSmASW60qGtgDGs7KzrNXVa4=	\N	f	4anniajaymecabreralo	Annia Jayme	Cabrera Loza	demo@demo.com	f	t	2019-01-21 03:08:29.447025+00	5
6	pbkdf2_sha256$20000$uaGpeXpDfkLK$mLbPzoVU4B+XM/UI2hZGm2T7Gt0qiMi6W2WtjAPgkRk=	\N	f	6luisangelgarciagarc	Luis Angel	Garcia Garcia	demo@demo.com	f	t	2019-01-21 03:08:29.502845+00	5
7	pbkdf2_sha256$20000$T8uHdoFxIwsD$VJYXSO4z5H7S/VmFRZZJ9SntlPhK8Y8KJl/M2ea1C+s=	\N	f	7erickpatriciogarcia	Erick Patricio	Garcia Hernandez	demo@demo.com	f	t	2019-01-21 03:08:29.532909+00	5
1838	pbkdf2_sha256$20000$zOTrwOuBXMju$T/6bHUYBcVT1be7Xg5Gcwj5PE/ng7H36RaIZG/WRFs4=	\N	f	hcaballero0668	Hector	Caballero	name@example.com	f	t	2019-02-07 00:35:54.572196+00	4
1259	pbkdf2_sha256$20000$m0Hnm8AZZZQM$nSs0nRymLh3jm82OEK8ZwAl/DGRkT4fiIO22dOcGeEI=	2019-02-27 04:24:19.57752+00	f	jmorales0271	Juan 	Morales	name@example.com	f	t	2019-01-21 20:28:06.307929+00	4
1063	pbkdf2_sha256$20000$1giL1GLZcyJi$5A8sOhs3AldoqU4styHeKmP2g1hguFbR4Z5nUu0f8UA=	\N	f	palbertoe2245 	Pablo 	Alberto Espejel	demo@demo.com	f	t	2019-01-21 03:08:56.548246+00	5
1026	pbkdf2_sha256$20000$vwFNMp3oWfqL$0Zmlij7OFEfQBoAbIjvWLBjtl86znck7G7Y9cGyOP2Y=	\N	f	palvaradog2217 	Pablo 	Alvarado Gonzalez	demo@demo.com	f	t	2019-01-21 03:08:55.60821+00	5
1077	pbkdf2_sha256$20000$1tYVdPg8UbGz$nBx2OU6sLy4YY4aQ5hirbcoc4MjSbzcKCYWgTgBQsSs=	\N	f	pbelmontem4401 	Pablo 	Belmonte Mendez	demo@demo.com	f	t	2019-01-21 03:08:56.90007+00	5
1114	pbkdf2_sha256$20000$Fn8YMDQWJC3m$Ox4ywXJAr48B/16/9NQXT4GQR1qdXS8hUrQM9v49meY=	\N	f	pgissetc3519 	Pamela Gisset 	Cortes Alfaro	demo@demo.com	f	t	2019-01-21 03:08:57.789559+00	5
1062	pbkdf2_sha256$20000$Y3QsdlzCvF6u$GX2Uq+2+boF3e/QdjGClNkgNW8WQhaV7O1AZ9FovO0A=	\N	f	porozcot9443 	Patricio 	Orozco Torres	demo@demo.com	f	t	2019-01-21 03:08:56.523325+00	5
1092	pbkdf2_sha256$20000$RWxVaHqv3gGp$+iD7L4Uu2dlXQKbRVf+57hfLpI7qUGptBCDURIdHTRA=	\N	f	rmisaels9902 	Rafael Misael 	Soto Meza	demo@demo.com	f	t	2019-01-21 03:08:57.261795+00	5
8	pbkdf2_sha256$20000$mk57oJGvPsf9$6u6A00r3BVkOErID1DtPttkIKVi3ru8R4Ak5xnhiGsA=	\N	f	8axelgonzalezdomingu	Axel	Gonzalez Dominguez	demo@demo.com	f	t	2019-01-21 03:08:29.557978+00	5
9	pbkdf2_sha256$20000$mQvrY162XyuL$2v6HIjCHGTkhgSitXCulRz9kINrX5mf90yAhIUEUc/Q=	\N	f	9emiliohidalgoplanti	Emilio	Hidalgo Plantin	demo@demo.com	f	t	2019-01-21 03:08:29.586165+00	5
12	pbkdf2_sha256$20000$cnWdo5EacosA$2kQ1LqMQz3OFjT6DPpNRDUXGPvJ1uAmxBs9JPb0S6RU=	\N	f	12lucalopezpauls	Luca	Lopez Pauls	demo@demo.com	f	t	2019-01-21 03:08:29.702791+00	5
1266	pbkdf2_sha256$20000$EV9OKdoMuluH$Zx4xm74waWWBXdzAMNVTLdVlc4gTG5tP1gJKw5PZMqY=	2019-02-11 17:14:16.716351+00	f	framirez0497	Fabian	Ramirez	demo@demo.com	f	t	2019-01-22 17:01:17.833411+00	4
33	pbkdf2_sha256$20000$IMdw2qWvzkyL$bf1SNypyGtnY4BY+qmrEWp1wKEp+0H8XE1JHvb9A/qk=	\N	f	33mateovillafañareb	Mateo	Villafaña Rebollar	demo@demo.com	f	t	2019-01-21 03:08:30.224643+00	5
1071	pbkdf2_sha256$20000$TKhUvWylTv8H$ZmV+PHrA15ZitYHAbMt0hqNgJvoQQnqmAHfOvDpxov8=	\N	f	aemanuelc2514 	Alain Emanuel 	Cortés Capilla	demo@demo.com	f	t	2019-01-21 03:08:56.749817+00	5
1055	pbkdf2_sha256$20000$3nHko3xpbl7N$Mmdqg3lnoih+rKegzqPKCt+kEZgNb9V2jm6WWPOx0GA=	\N	f	araulb3863 	Alain Raul 	Badia Hernandez	demo@demo.com	f	t	2019-01-21 03:08:56.34539+00	5
1106	pbkdf2_sha256$20000$SsotKF2zifyp$ECXYNzk6F7LnROF+UYwdCl1DzGy/QpRJWD8kVG0Eufg=	\N	f	aalbertob9189 	Alan Alberto 	Brito	demo@demo.com	f	t	2019-01-21 03:08:57.596983+00	5
1105	pbkdf2_sha256$20000$DjR891yOw3FE$JRZhOlBcLxNxg7yPTaKfsu4V6/zSLLRxcOTauosqLiY=	\N	f	abarrosor7712 	Alejandro 	Barroso Reyes	demo@demo.com	f	t	2019-01-21 03:08:57.572646+00	5
1089	pbkdf2_sha256$20000$yAuRtjEwh2DJ$xhZtCBhDHfQ1JysSOyFlguwuvBSt1xqSGVipQ192Nhg=	\N	f	ahernandezs8531 	Alejandro 	Hernandez Suarez	demo@demo.com	f	t	2019-01-21 03:08:57.189258+00	5
994	pbkdf2_sha256$20000$mlo06vmw3iuD$4qOMboeWS4u/59INuBEymdP6YJj4WLWprceD17HF5io=	\N	f	aparram3523 	Alejandro 	Parra Montes	demo@demo.com	f	t	2019-01-21 03:08:54.780694+00	5
1040	pbkdf2_sha256$20000$yk3U6eVqE15z$S7CpQgvoFMiFoeG3p0KT/wBy8d4rwr0zmPsi+AHkpZw=	\N	f	amarquezm8207 	Alfredo 	Marquez Meza	demo@demo.com	f	t	2019-01-21 03:08:55.96256+00	5
1104	pbkdf2_sha256$20000$OBumdTVzTUuN$Q9OULgLt+GVJSoDjjsL5UhCAqmn1DaJS4O8rtEDwBdQ=	\N	f	atadeom9041 	Alonso Tadeo 	Moncada Montoya	demo@demo.com	f	t	2019-01-21 03:08:57.548814+00	5
1088	pbkdf2_sha256$20000$YjEC2OnBu6Sj$gZUK1v76Ra9G+/8lQ2Jt04ht98spZVuJavFvQBF/fGI=	\N	f	ajesusv4435 	Alvaro Jesus 	Vargas Leon	demo@demo.com	f	t	2019-01-21 03:08:57.165541+00	5
993	pbkdf2_sha256$20000$1OuVaGjfwa3a$kRCqaWEUqtyGyA5JCM1oEk1W10dcM/X6B2ddOOI77zc=	\N	f	aaraths4551 	Amilcar Arath 	Sanchez Zarza	demo@demo.com	f	t	2019-01-21 03:08:54.756074+00	5
1103	pbkdf2_sha256$20000$TW2xj7SzRXRh$iKZLz3GRtDgrZ7cR5ogGRpQ2G0nTLy1DhcHCgQoIcVk=	\N	f	adavidf0573 	Andre 	David Flores	demo@demo.com	f	t	2019-01-21 03:08:57.524976+00	5
1054	pbkdf2_sha256$20000$z3SD8UU2qopO$ve6XtV9T/wp2gKh8cCO3iZ6/5GNMOGmnxJAOZxV4ApQ=	\N	f	asebastiana0810 	Andre Sebastian 	Aguirre Rodriguez	demo@demo.com	f	t	2019-01-21 03:08:56.319263+00	5
983	pbkdf2_sha256$20000$Hw92JoQ6Fo31$roba3j9YAtq5LCc78YxDifJ69uPo+uXgQtbQvW4Q1ds=	\N	f	rnavar8636 	Rafael 	Nava Rodriguez	demo@demo.com	f	t	2019-01-21 03:08:54.498485+00	5
1113	pbkdf2_sha256$20000$AzaT8qnQBtXC$xflRdv3ivQV3Afw0sYU2G5FRYZyAJ4WInJmRccwkFtQ=	\N	f	rjuareguim8043 	Renata 	Juaregui Muciño	demo@demo.com	f	t	2019-01-21 03:08:57.765818+00	5
1061	pbkdf2_sha256$20000$0h5P2VkzbQ2u$aPVFi+ZyDg/LGtzcZRp1HUUoLmQ5skBoMO3siopZB3Q=	\N	f	rjosueb6214 	Rene Josue 	Buendia	demo@demo.com	f	t	2019-01-21 03:08:56.49839+00	5
1076	pbkdf2_sha256$20000$HwxG1JDGT419$ZNX6PQndLIsgaAijB08JgHWpYBnE0NowwM4NxnHYEf4=	\N	f	rdelr2586 	Ricardo 	Del Rio Aviles	demo@demo.com	f	t	2019-01-21 03:08:56.875343+00	5
1060	pbkdf2_sha256$20000$P0jCIErJeSb6$MG2iB44UjRhpAjhO6rFB/8fyQkwqZaWRmpqgifb+SDQ=	\N	f	rsantiagor8061 	Ricardo 	Santiago Ramirez	demo@demo.com	f	t	2019-01-21 03:08:56.472538+00	5
1075	pbkdf2_sha256$20000$Ys25qAx9XE1l$fy2hnkQ5NgDqPSM62+V3W38QmlPdx9UUlypQIivkbd4=	\N	f	rbasilioh0105 	Rodrigo 	Basilio Hernández	demo@demo.com	f	t	2019-01-21 03:08:56.849847+00	5
1112	pbkdf2_sha256$20000$lvuEMCkpIwJ8$mvn0/04MY3m0SJTuWycUqzVlNvMT5KJLpXFXldOyatE=	\N	f	rledezmat5060 	Roxana 	Ledezma Trujillo	demo@demo.com	f	t	2019-01-21 03:08:57.741128+00	5
1091	pbkdf2_sha256$20000$2TOijMtFcEek$nbJMUcwuBrKeeGmRvqhgRTj68PaevZWtW4rDYrU3PtA=	\N	f	rarturom8148 	Rubén Arturo 	Mendoza López	demo@demo.com	f	t	2019-01-21 03:08:57.236779+00	5
1074	pbkdf2_sha256$20000$LijA4lLIPGys$yKk3zk/4Tg3r6bIFjSUQ48F8bw3lvhlffbFaKwIzzEU=	\N	f	rfranciscog8161 	Ruben Francisco 	Gomez Rodriguez	demo@demo.com	f	t	2019-01-21 03:08:56.824455+00	5
1041	pbkdf2_sha256$20000$j1dh6sgSsQr6$jNwwqH/68mTjj/qQhi55JA+SGUBkJyR5J6qQ6j7Lgpc=	\N	f	sbenjaminc3869 	Santiago Benjamin 	Cruz Uribe	demo@demo.com	f	t	2019-01-21 03:08:55.988013+00	5
996	pbkdf2_sha256$20000$OZUqoyca6U3N$5/vDWsSb7o+sp2V3HapmRfN+2aB7yYp+3pHltjki+qw=	\N	f	scastellanosb4287 	Santiago 	Castellanos Bayardo	demo@demo.com	f	t	2019-01-21 03:08:54.830854+00	5
1073	pbkdf2_sha256$20000$6lgkjQGqLU8b$cMpzov63TmF6m6irfHw+ARpdTTYj+2rP01GK1rSmAyk=	\N	f	sfrancom0897 	Santiago 	Franco Moreno	demo@demo.com	f	t	2019-01-21 03:08:56.799952+00	5
982	pbkdf2_sha256$20000$5UN3BbAyTpHi$RhHlsYCDPfSO1WYHbEFnQoDg0jtOoD1Xyu7sZexZiP0=	\N	f	sgaribayl6327 	Santiago 	Garibay Luzarreta	demo@demo.com	f	t	2019-01-21 03:08:54.473323+00	5
981	pbkdf2_sha256$20000$yC12LvI9jF5D$r7vAlDZXF+x59jVQ7sC4QsmXOpUd4nltnnwlwlDKYT4=	\N	f	slopezr1429 	Santiago 	Lopez Ruiz	demo@demo.com	f	t	2019-01-21 03:08:54.448293+00	5
1278	pbkdf2_sha256$20000$Qi3X9CjvRIt0$iWv6eiYDIr0Os37aTEGobpeNdr/44DMGTyxcbuwhM7A=	2019-02-12 21:23:13.145724+00	f	mcisnerosa0156	Michelle	Cisneros	demo@demo.com	f	t	2019-01-22 17:01:18.193044+00	4
1839	pbkdf2_sha256$20000$mfqDahxziC48$gw/07T2sNtst+RQQuYXuKhlfATBxtUj3Ke2y45OrvH4=	2019-02-26 17:21:13.120983+00	f	macosta39	Mauricio	Acosta	name@example.com	f	t	2019-02-07 08:04:15.590807+00	4
1122	pbkdf2_sha256$20000$F1mOH8BGIFdT$mMnD5tmxJuTyf7d8UMbbXgKVP5lRtVpZIaS1qmitFR4=	\N	f	airiaquisr0533 	Andrea	Iriaquis Rodriguez	demo@demo.com	f	t	2019-01-21 03:08:58.016347+00	5
1023	pbkdf2_sha256$20000$rQhLGF3HedVs$7a6ZPaCCfS5RHA4q6omqlhrE7k34h/+PnA24gLOIU6M=	\N	f	alozanol7696 	Andres 	Lozano Lagarde	demo@demo.com	f	t	2019-01-21 03:08:55.532163+00	5
1022	pbkdf2_sha256$20000$vwNVBdaMOw3h$fkRIzdGXeTB8qpHSFpUBqTDjQXXSld8janbtZNplScY=	\N	f	adanielp8572 	Angel Daniel 	Perez Cuadras	demo@demo.com	f	t	2019-01-21 03:08:55.506441+00	5
1039	pbkdf2_sha256$20000$5PVPw4j47C3f$eFqM7pgKaNE9TdYSCpYWan0T1cukPiw/bgPYKkdz5sQ=	\N	f	ajavierp8158 	Angel Javier 	Perez Romero	demo@demo.com	f	t	2019-01-21 03:08:55.936863+00	5
1087	pbkdf2_sha256$20000$ZgqbaIQBhCyh$pKc/fQyOu6rf91pksM1817N/GgEQKCZdETsI1Lo8tKs=	\N	f	abayardis2489 	Atzin 	Bayardi Sánchez 	demo@demo.com	f	t	2019-01-21 03:08:57.141976+00	5
980	pbkdf2_sha256$20000$5hFE0EHEwxfd$OWWzV6u4hYx5WZmqbS71Upm6Bimeae9HpAwCpzEHqCs=	\N	f	smiranda2013 	Santiago 	Miranda 	demo@demo.com	f	t	2019-01-21 03:08:54.423194+00	5
1059	pbkdf2_sha256$20000$S8N8ZVNf2BHl$pl+xJidEeg26yDT90eTgxSsMUqAZpyalGHAjnUHA0SQ=	\N	f	snoriegav5007 	Santiago 	Noriega Valdivia	demo@demo.com	f	t	2019-01-21 03:08:56.446876+00	5
1072	pbkdf2_sha256$20000$TLECwhW4dK0e$A19Ipn2CI2wcqLfSnkcqIcpfTuaYtd/FRZRRbhHtZgE=	\N	f	sreyesr8018 	Santiago 	Reyes Romero	demo@demo.com	f	t	2019-01-21 03:08:56.77524+00	5
1058	pbkdf2_sha256$20000$6gDPkaWzH4KH$rQEcyEtdQD9147YCZq1zlimqWtI9Dus29AYIpAPnWek=	\N	f	storresv2994 	Santiago 	Torres Ventran	demo@demo.com	f	t	2019-01-21 03:08:56.421714+00	5
1057	pbkdf2_sha256$20000$m4pVN5e3RMsn$Sc8vZ1lVKrPD68+CGPDNldTwNHk5mxDlwKJwxZUKQqs=	\N	f	shernandez3535 	Sebastian 	Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:56.396286+00	5
1025	pbkdf2_sha256$20000$6IyOE7L15lCv$but40yxKaFnHo7lxwB5trdmn1hokZCapSUyx+xRJRvs=	\N	f	slopezd0099 	Sebastian 	Lopez Duran	demo@demo.com	f	t	2019-01-21 03:08:55.582615+00	5
1090	pbkdf2_sha256$20000$tSsUJJRILoIA$VVoF5P/AF3sa2HmwAT+KAMYbObW1yeAiD+iUxTyZczI=	\N	f	spalaciosp5883 	Selik 	Palacios Palacios	demo@demo.com	f	t	2019-01-21 03:08:57.212974+00	5
1111	pbkdf2_sha256$20000$I3PTqEvBt6lp$yNzSbrcRIrGzkaK94msPc0p+uY9gud/fRjy2SbvqBQQ=	\N	f	siriaquisr7112 	Sofia 	Iriaquis Rodriguez	demo@demo.com	f	t	2019-01-21 03:08:57.716495+00	5
1009	pbkdf2_sha256$20000$TSMHkeyz46oR$7iNM9k9Iw/JIn1Ksi0AaVnkAQmntvy0GcKzTxHDXd9o=	\N	f	salbertoj3060 	Soren Alberto 	Jardon Lopez	demo@demo.com	f	t	2019-01-21 03:08:55.160898+00	5
1110	pbkdf2_sha256$20000$Nynpj96X1eCj$+zak1GyLNjoPpqXQTOsxALbgda5rpYJl3Ss2oGfkGb8=	\N	f	tfortenells3587 	Triana 	Fortenell Solorzano	demo@demo.com	f	t	2019-01-21 03:08:57.692463+00	5
1109	pbkdf2_sha256$20000$Zq1jfRnuRoGv$gkXJcR0TozRvDWIZOHlA0tfbAsT4HC7Ti4x8lPLy90Q=	\N	f	vcamachou1707 	Valentina 	Camacho Urbina	demo@demo.com	f	t	2019-01-21 03:08:57.668848+00	5
1024	pbkdf2_sha256$20000$ezEazFrgKpWP$RY4Ic2FNgMMzsm8npKEfggmHpNVH/iTDvxx+Tp95Ds4=	\N	f	vjovang9093 	Victor Jovan 	Garcia Ojeda	demo@demo.com	f	t	2019-01-21 03:08:55.557274+00	5
995	pbkdf2_sha256$20000$33F8zb5XrQeL$qVE7ujaQoklAtcqllo7AkkzkeTdWDD2xdEol4NAOmuM=	\N	f	vmanuels9823 	Victor Manuel 	Sandoval Sanchez	demo@demo.com	f	t	2019-01-21 03:08:54.805276+00	5
979	pbkdf2_sha256$20000$VOqGwtmGccXV$sUR7KLAJWi554qojHDRx3UaxCcxMJp3+yKSveVh/CRU=	\N	f	vrafaels0201 	Victor Rafael 	Sevilla Manzo	demo@demo.com	f	t	2019-01-21 03:08:54.397965+00	5
1108	pbkdf2_sha256$20000$DYS1gDnCfL3P$/cfQnVwzq8pfKCyBza55yE2QcJbgyh/iCyZSaV5jj7U=	\N	f	xmontesinoss1520 	Ximena 	Montesinos Salgado	demo@demo.com	f	t	2019-01-21 03:08:57.644841+00	5
1008	pbkdf2_sha256$20000$HpGfTae3DNFW$k6CjCFa6VzMXxxMnkzYC0cJ/1QRQ+oyzfLIII8sim1o=	\N	f	yramirezo7993 	Yahir 	Ramirez Ortiz	demo@demo.com	f	t	2019-01-21 03:08:55.136254+00	5
1007	pbkdf2_sha256$20000$bxknVrROyBY5$Sq4r29l3Bh5IblV0mjQMJFccQNluDPzhSInSgeFff9s=	\N	f	zayeleng3695 	Zoe 	Ayelen Garcia	demo@demo.com	f	t	2019-01-21 03:08:55.111258+00	5
1107	pbkdf2_sha256$20000$LmIkumBcr4yD$U2uOieAi/ZdftSJzY4fbESQjT1cjFa3sVr+4Oc5G6GY=	\N	f	zfloresg7755 	Zoe 	Flores Gracia	demo@demo.com	f	t	2019-01-21 03:08:57.620704+00	5
1543	pbkdf2_sha256$20000$I01PzccdHj5T$21s1wYvNjFNHjvPhyaJy6C9CnOTfxq9oyHyzHi3mNgg=	\N	f	profesordemovalle	Profesor	  	name@example.com	f	t	2019-01-24 08:51:02.343436+00	4
1545	pbkdf2_sha256$20000$OuICTM3ax3IL$LDVmkfpwk46LOb3VP3hPhB3WK3rnlO61Es1jjOuHWkM=	\N	f	rodrigoromano	Rodrigo Romano	  	name@example.com	f	t	2019-01-24 08:51:02.399498+00	4
1546	pbkdf2_sha256$20000$H1aVN2Qea4NS$Mj8PunFDxC6A+WGRBoVlKzhXhJsw6fft5rAYOtnoyqE=	\N	f	danielpacheco	Daniel Pacheco	  	name@example.com	f	t	2019-01-24 08:51:02.426622+00	4
1549	pbkdf2_sha256$20000$cHFBeZTWrmJv$vxP+yvMopMrZ1CX7ikG3dXvFqU4W7seh0KtKvCQEcMI=	\N	f	williammiguelcalde	William Miguel Calde	  	name@example.com	f	t	2019-01-24 08:51:02.524782+00	4
1550	pbkdf2_sha256$20000$ozNo86BGopuC$Yxgi3i0+M1FjQlwRHYTAwK4NStLEOEPUtrTFcLVaqLg=	\N	f	carlossanchezrodri	Carlos Sanchez Rodri	  	name@example.com	f	t	2019-01-24 08:51:02.549458+00	4
1551	pbkdf2_sha256$20000$hpKkiRjM8di9$68LtlWT2bqWUFcYYGjtnEDoKLsdClKI1UM+9/JpF9v4=	\N	f	antoniomartinlopez	Antonio Martin Lopez	  	name@example.com	f	t	2019-01-24 08:51:02.575815+00	4
1552	pbkdf2_sha256$20000$fiht8OFMmnIB$PGKURVJfAskWXwy8VderXhemt4F9frfCxlhS6vCxHOQ=	\N	f	eduardorodriguez	Eduardo Rodriguez	  	name@example.com	f	t	2019-01-24 08:51:02.601528+00	4
1553	pbkdf2_sha256$20000$AtQYy6h03JVc$xxYpkQUElbK28I4W7HYpMe2nc4X3kClu/5MCZw6xSp0=	\N	f	yanik	Yanik	  	name@example.com	f	t	2019-01-24 08:51:02.639772+00	4
1554	pbkdf2_sha256$20000$yVjN1Ngf0sc9$I9TgsDFju51hh2yhTIER2lC72PRlap9yNek45HligC4=	\N	f	jorge	Jorge	  	name@example.com	f	t	2019-01-24 08:51:02.683642+00	4
1556	pbkdf2_sha256$20000$ZVXYv2MrTX4C$cRHZrTpwWVOKNPqRyAMIpfabgZqZlD1Z6X7s76AhTEc=	\N	f	emanuel	Emanuel	  	name@example.com	f	t	2019-01-24 08:51:02.727235+00	4
1544	pbkdf2_sha256$20000$1Sl4aKobVAGN$abgJ5BotWIwWU7bDkiBj9S+VJ6yEJv+wgXYdB20aWjg=	2019-02-05 01:07:26.070616+00	f	dtagustin	D.T. Agustin	  	name@example.com	f	t	2019-01-24 08:51:02.373992+00	4
1021	pbkdf2_sha256$20000$tbVBf0kjge10$BDIhOS2tfiInGGxOETbyUPKT8MOCuFaev8dOgDYxLAo=	\N	f	aherediav3052 	Axel 	Heredia Villena	demo@demo.com	f	t	2019-01-21 03:08:55.481761+00	5
1038	pbkdf2_sha256$20000$TdtutOndPJNx$SwgzTuidJwcpjv3IMRbuiqNiLOrGmtt7Ijz3+iP0r/w=	\N	f	bnicolasc3661 	Bernardo Nicolas 	Cesar Montivero	demo@demo.com	f	t	2019-01-21 03:08:55.912212+00	5
992	pbkdf2_sha256$20000$se609kPop17N$WVe0qduk5XFi+AUWJ5PetLad3X5174mDDEXolKif9DM=	\N	f	buribes1726 	Bernardo 	Uribe Soto	demo@demo.com	f	t	2019-01-21 03:08:54.728992+00	5
991	pbkdf2_sha256$20000$SG6pWcm32eLH$woXXoHayRgz/1ErzoWrFs8hvbGc1ZD5NH/A/Jw/cLbA=	\N	f	byazidb5869 	Braulio Yazid 	Ballado Gonzalez	demo@demo.com	f	t	2019-01-21 03:08:54.702508+00	5
1020	pbkdf2_sha256$20000$cIMZiuaaKQz9$zRY80P2P3f1NmBhTJ+aX/TmiEtTZTURMCMk4pR/bgnM=	\N	f	bgaelg0824 	Bruno Gael 	Garcia Gasca	demo@demo.com	f	t	2019-01-21 03:08:55.455303+00	5
1121	pbkdf2_sha256$20000$XSNfusvYfR3W$w5Og/edalL3XNkG+g+sAj2cgDLc1kSeFDR2gA9YCSu0=	\N	f	csaids0407 	Camila 	Said Sanchez	demo@demo.com	f	t	2019-01-21 03:08:57.991202+00	5
1120	pbkdf2_sha256$20000$esikqn3bvyc6$0+M/r9vWjPPOMkys0dQOQxz3SZV4l4nWObA6S6ehyLY=	\N	f	cpalomas7560 	Carina Paloma 	Serna Murga	demo@demo.com	f	t	2019-01-21 03:08:57.955994+00	5
1006	pbkdf2_sha256$20000$2YFzafi7yTkM$7yNPoR+cfn0BLYAv6y6R+apLLJT/5dR9mThQGQsMADE=	\N	f	cantoniog3243 	Carlos Antonio 	Garces Gallardo	demo@demo.com	f	t	2019-01-21 03:08:55.085044+00	5
1102	pbkdf2_sha256$20000$AvTp5fYEWruh$KxS9W2Oum36dPkWFe1BaNA8BpK6C2VKD/83ifLq5yIw=	\N	f	cisaacd9740 	Carlos Isaac 	De La Curz 	demo@demo.com	f	t	2019-01-21 03:08:57.500257+00	5
1101	pbkdf2_sha256$20000$X0rsX3Lur7S5$psE+rVhDFGAk4XT+KtdY9VA8HMGoOmmYzhwcOhRzuu8=	\N	f	cledezmat2121 	Carlos	Ledezma Trujillo	demo@demo.com	f	t	2019-01-21 03:08:57.476098+00	5
989	pbkdf2_sha256$20000$iTogYWC3HbpO$787AfdhmIXoS3kklsQUf5yIkt0ajBU7TtX2jDuX+u14=	\N	f	csantanao7278 	Carlos 	Santana Ortiz	demo@demo.com	f	t	2019-01-21 03:08:54.651615+00	5
1086	pbkdf2_sha256$20000$7rWE3pLwfinP$5rl1aknNIDBn7k2FHvTg2uLcNOduyEfOGX+dG09eb4Y=	\N	f	cnaimr0917 	Christopher Naim 	Rivera Zamorano	demo@demo.com	f	t	2019-01-21 03:08:57.118302+00	5
1019	pbkdf2_sha256$20000$jJPVQpzQAHEy$DoH2loR5A9XRFRou6ZfgLP+6dpzkHEE5HPWfErfquIY=	\N	f	dfabrizioj0707 	Daniel Fabrizio	Jimenez Trejo	demo@demo.com	f	t	2019-01-21 03:08:55.426404+00	5
1070	pbkdf2_sha256$20000$NVnU3fWVwht8$cH+2lmB3GMIr6MRUCcF0R3wHFiGLpcYz1xAIztY+wsc=	\N	f	dsaulm8658 	David 	Saul Moreno	demo@demo.com	f	t	2019-01-21 03:08:56.72323+00	5
1053	pbkdf2_sha256$20000$rO7ziFDOB1MG$OKM2LZzOZnm0juq8JGZ1g2QmZdsse/LnqPUp/cLJ3Jc=	\N	f	dandrss7353 	Diego Andrés 	Sandoval Sánchez	demo@demo.com	f	t	2019-01-21 03:08:56.294252+00	5
1037	pbkdf2_sha256$20000$Uw0Lyul7McQI$oJMHFtWkQQyad8D+Y0HZeyBVgrtz6aOHCxPNfxPxkH8=	\N	f	demiliol2321 	Diego Emilio 	Lopez Tapia	demo@demo.com	f	t	2019-01-21 03:08:55.88755+00	5
1085	pbkdf2_sha256$20000$4JU9kgLHUWxE$mA5l31jqVKqccKXRASwXSn5LJF5VgRv+MMZziVwdgIY=	\N	f	dgalvan3022 	Diego 	Galvan 	demo@demo.com	f	t	2019-01-21 03:08:57.094499+00	5
1100	pbkdf2_sha256$20000$U2tTHgDSA3DK$cgl36oyKj9d8/Da8rNqokwjV6Zslj8emRmaqysDd3H4=	\N	f	dhumbertoa3420 	Diego Humberto 	Arrebalo	demo@demo.com	f	t	2019-01-21 03:08:57.452459+00	5
988	pbkdf2_sha256$20000$ISt2HjjdMjL8$VDcQl0C8kGdJQpNnoLtpCWfhcn3eYKvsV8DsjLnFHNs=	\N	f	disaact8036 	Diego Isaac 	Toriz Arce	demo@demo.com	f	t	2019-01-21 03:08:54.626107+00	5
1018	pbkdf2_sha256$20000$J49MX1A0drBM$bZT2HQWdNG8tDBbSxAtnoEwuQxJCyzkoYaIogWtIapU=	\N	f	dmuros3760 	Diego	 Muro Sanchez	demo@demo.com	f	t	2019-01-21 03:08:55.400927+00	5
1069	pbkdf2_sha256$20000$xVgnXo3DqhHr$lbHq9zzmete4kf2ZV0/d8icdAH0oaKfEM+5eUtXXrew=	\N	f	drodriguezb7768 	Diego 	Rodriguez Bueno	demo@demo.com	f	t	2019-01-21 03:08:56.698533+00	5
987	pbkdf2_sha256$20000$0jVK2V0MWnC4$08n/6ZF+FdKtmvaIV6MGV26VLZ47NSPjHQeS4IAcz/M=	\N	f	dvalencianom0541 	Diego 	Valenciano Muñoz	demo@demo.com	f	t	2019-01-21 03:08:54.599458+00	5
1068	pbkdf2_sha256$20000$CpJTkW1voeIU$akL7rRdi0V8s3jeUk+VTnxdSRRWHOiySFSmR/HsF/G4=	\N	f	ealessandror1240 	Eder Alessandro 	Ruiz	demo@demo.com	f	t	2019-01-21 03:08:56.674547+00	5
1052	pbkdf2_sha256$20000$3oRVKodhl3lN$Oea/8SLjwd83tmDbvATNPC4o0284UVx2p6gPmaHpbvM=	\N	f	epatriciom8239 	Edgar Patricio 	Maya Montoya	demo@demo.com	f	t	2019-01-21 03:08:56.269126+00	5
1084	pbkdf2_sha256$20000$Irq0LpVN30r5$dDxHDtnNqvnteuXOc73m8jNzFD/bTtu20xzU5DcETks=	\N	f	esantiagoh2839 	Eduardo Santiago 	Hernandez	demo@demo.com	f	t	2019-01-21 03:08:57.070563+00	5
1035	pbkdf2_sha256$20000$IhjWficc9AV6$VP2337vHXRxMw/5F9baeSwSJej4I5jRjW9u9LS7LuEc=	\N	f	edavidc2822 	Elian David 	Carrasco Parra	demo@demo.com	f	t	2019-01-21 03:08:55.837139+00	5
1051	pbkdf2_sha256$20000$IvTfWJg7QBcD$W/h/xY9wOs/EFNvwFlS2AJ/js0/alRJEi2zxu4tWgUY=	\N	f	ealexanderi0375 	Emanuel Alexander 	Islas Castro	demo@demo.com	f	t	2019-01-21 03:08:56.241548+00	5
1034	pbkdf2_sha256$20000$XcjyxzIhN2vu$U4k+B6k7e3daxAyrXVYWtIxUmnTUQ3tJxJr6hI8ezWM=	\N	f	ecaldronc1533 	Emiliano 	Caldron Castro	demo@demo.com	f	t	2019-01-21 03:08:55.811688+00	5
1033	pbkdf2_sha256$20000$rPSbuOrBq83M$wkX9LtdKQ4adcs4e3VFQVl9zRoVqp7mpG7U7Odh3zTk=	\N	f	egomezj1627 	Emiliano 	Gomez Juarez	demo@demo.com	f	t	2019-01-21 03:08:55.786087+00	5
1548	pbkdf2_sha256$20000$zaHScp4Z1Cw6$1uq0MLzW80sGyuU2DUPYcBl3PJazFt1mfJWuAsUEwqg=	2019-02-05 08:12:32.262275+00	f	kevinmaldonado	Kevin Maldonado	  	name@example.com	f	t	2019-01-24 08:51:02.500343+00	4
1840	pbkdf2_sha256$20000$m7tq9wrC1Gv6$j8t2zKraW8R8+bHK4zhAN6VsOxZCUo7I+xbLWSVWMAk=	\N	f	juanbvb	Juan	BVB	name@example.com	f	t	2019-02-07 17:18:56.989694+00	4
1017	pbkdf2_sha256$20000$y4s6aiyPMViG$wuhihYYcSdNt/FtNS8SM1CXFAH3HJ0A+0pR2zt3InZ4=	\N	f	evargasr5236 	Emiliano 	Vargas Ramon	demo@demo.com	f	t	2019-01-21 03:08:55.375753+00	5
1067	pbkdf2_sha256$20000$jbCYXLbVnucR$umr603SNkV5SOqVQjFwS4b9aA2od+b4Uu4hiWHjBlt4=	\N	f	evazqueza3509 	Emiliano 	Vazquez Arreola	demo@demo.com	f	t	2019-01-21 03:08:56.649884+00	5
1050	pbkdf2_sha256$20000$xE30UaCxEBEc$Inoz0bvOXK3QgkLNbdRP6sSNrLtN7Zopvm9dqZIAJ1Y=	\N	f	ezeledona5715 	Emiliano 	Zeledon Arellano	demo@demo.com	f	t	2019-01-21 03:08:56.215851+00	5
1016	pbkdf2_sha256$20000$2hJ2JRLqt8ya$41H55ngna23nXJa+KylTAO+uYbF8uPcK57VRdLhnd1I=	\N	f	eespinosaa0320 	Emilio 	Espinosa Alvarez	demo@demo.com	f	t	2019-01-21 03:08:55.33997+00	5
1005	pbkdf2_sha256$20000$nNrnxztPujaU$Yol6iI2BeSQaVN8Ea8+px88R4SVWm/cxFstRT7Hvsks=	\N	f	eorozcot7266 	Emilio 	Orozco Torres	demo@demo.com	f	t	2019-01-21 03:08:55.059321+00	5
1083	pbkdf2_sha256$20000$Y34w6w3hgBMq$gr3ISr8InfSMq6kBnsnsH1bHGwBYOLIrPvDhQl7CkT8=	\N	f	ebelmontem2843 	Emmanuel 	Belmonte Méndez	demo@demo.com	f	t	2019-01-21 03:08:57.046608+00	5
1099	pbkdf2_sha256$20000$5HmzG7vVNJtv$09QOGnH+ELNsALOs7W+mjiNZsB+dRYiUtNTRygpWKtE=	\N	f	earanar9020 	Enrique 	Arana Renteria	demo@demo.com	f	t	2019-01-21 03:08:57.428269+00	5
1004	pbkdf2_sha256$20000$i8fv46qf3lCO$PK3ATsr71wuczept6WnRgZoSIvXi8wrDa7cUgLGn5P4=	\N	f	ejesusn4706 	Erick Jesus 	Nagano Ramos	demo@demo.com	f	t	2019-01-21 03:08:55.033368+00	5
1015	pbkdf2_sha256$20000$0znXOaVhnwC0$uR6zHlw/zsUZ5H6BwCISicQerXVl0YW4m1cHML5DwJs=	\N	f	1015erickleonardoher	Erick Leonardo 	Hernandez	demo@demo.com	f	t	2019-01-21 03:08:55.313083+00	5
1003	pbkdf2_sha256$20000$RWwYqi7ugqLp$8hcRK+taVPA1+AsER8k5kzk4RCzm0j5X5BzUqN5tmh8=	\N	f	erobertog2849 	Erick Roberto 	Gonzalez Alcala	demo@demo.com	f	t	2019-01-21 03:08:55.008011+00	5
1119	pbkdf2_sha256$20000$0nc0gxczXpgF$QUjl03fpOciBiK7bTcTxXJ8hauwKo7JDvcptM+CcfWE=	\N	f	fvazquezc1724 	Fatima 	Vazquez Cortes	demo@demo.com	f	t	2019-01-21 03:08:57.926893+00	5
986	pbkdf2_sha256$20000$1YMe0Q7xTD3b$jCKOVSRE3syvejSwOZxkSgWJlAtOPIXL2zNpHujARZk=	\N	f	fharom4034 	Fernando 	Haro Mercado	demo@demo.com	f	t	2019-01-21 03:08:54.574204+00	5
1032	pbkdf2_sha256$20000$Sd9rgCTbIpPo$62MmbNTzJnr51PGVnf1C2IF7HVYUipIEK9DQareCuwY=	\N	f	fvertizv6207 	Franco 	Vertiz Villalon	demo@demo.com	f	t	2019-01-21 03:08:55.760321+00	5
1118	pbkdf2_sha256$20000$f8tfHfuTNLKZ$VmqfgYIh2L1xORL+9xicQIpVih7MGCambliuLBUvT6Y=	\N	f	fsofiam2665 	Frida Sofia 	Martinez Cuevas	demo@demo.com	f	t	2019-01-21 03:08:57.886713+00	5
1098	pbkdf2_sha256$20000$gbNP9ysEe9Vw$V9CLNo0mZ7GfCER/UvpHcfDrGgk+hemrHlM8nS1M3Gw=	\N	f	gcamillig5128 	Giancarlo 	Camilli Garcia	demo@demo.com	f	t	2019-01-21 03:08:57.404648+00	5
1002	pbkdf2_sha256$20000$iYhSeTvrPebf$TW4CaMMKmMvewBhVLepdlOFDYD4T51VBXt+ZCuUvQP8=	\N	f	geduardon2420 	Gustavo Eduardo 	Noguera Vasco 	demo@demo.com	f	t	2019-01-21 03:08:54.982+00	5
985	pbkdf2_sha256$20000$Lj6xg158aTBo$/rtuqLMP+28ikKaE9LJYequsY9jqncPCupetrE7vn00=	\N	f	haldreteg4119 	Hector 	Alderete Guzman	demo@demo.com	f	t	2019-01-21 03:08:54.548832+00	5
1001	pbkdf2_sha256$20000$JbWkFA2yr1ei$oBXXQMLAVl3D8yUpnRSKrrOpB0ageQMbY7v5+eRYb7o=	\N	f	halonsom7386 	Hector 	Alonso Marquez	demo@demo.com	f	t	2019-01-21 03:08:54.956907+00	5
1049	pbkdf2_sha256$20000$tdcUBRD8VCpa$kQpFk4AaaCqSN/pcZBTbVwr8DVIM45MzItCjcShwvL0=	\N	f	igarciao5474 	Iker 	Garcia Ortiz	demo@demo.com	f	t	2019-01-21 03:08:56.190731+00	5
1097	pbkdf2_sha256$20000$NzZNZqNoKzWI$ppiLHZjLDR5+Z65g/2iqaKYEpeDeu1jAf7UKFz2PkDI=	\N	f	ilazcanom8504 	Iker 	Lazcano Monzon	demo@demo.com	f	t	2019-01-21 03:08:57.38085+00	5
1048	pbkdf2_sha256$20000$nkt2NqKc9W0Y$tSNRttfWJUVo07TWARnn1KCrS3JoxHvm9i3WWrxa8L8=	\N	f	ivazquez1272 	Iker 	Vazquez 	demo@demo.com	f	t	2019-01-21 03:08:56.165672+00	5
1047	pbkdf2_sha256$20000$dQL9J8SXAMUe$02Zw9l+KVmBTAvN3HJlVgDIk1RjN6gQdzcS17msAzVk=	\N	f	ichavezr5918 	Isaac 	Chavez Rojas	demo@demo.com	f	t	2019-01-21 03:08:56.139632+00	5
1046	pbkdf2_sha256$20000$srmoZAucYHBo$ACD3AVXtvd4/2s1xMF9IZAwqfswXyobO1nrHIQsqpCQ=	\N	f	ihernndezp1891 	Isaac 	Hernandez Paduano	demo@demo.com	f	t	2019-01-21 03:08:56.114598+00	5
984	pbkdf2_sha256$20000$GPZTxu4h2K9F$DspWpnlwnXKYPeS/7bN/wHrqVtobD9zhcwieDgYCsAI=	\N	f	ihernandezp8288 	Ivan 	Hernandez Paduano	demo@demo.com	f	t	2019-01-21 03:08:54.524068+00	5
1014	pbkdf2_sha256$20000$vfQk0o77lY43$4jW7r4vhRIETzdJzDyLCwAxauhkma5wmp1Xw7tl82eQ=	\N	f	jandrsh2811 	Jesús Andrés 	Hernandez	demo@demo.com	f	t	2019-01-21 03:08:55.286434+00	5
1117	pbkdf2_sha256$20000$SE2qm7quXbQ0$e+lhcfsX8Bo3A8H3HPXybFlcz9KCl9p7yYkvktGJzQA=	\N	f	jsanchezo0735 	Jimena 	Sanchez Ogando	demo@demo.com	f	t	2019-01-21 03:08:57.860165+00	5
1031	pbkdf2_sha256$20000$FXejHuAncUkz$rmQ3bAeR28KLxFntWzLwJ0f/n3R3no6Lj4N6dfAVTcI=	\N	f	jcastellanosb1436 	Joaquin 	Castellanos Bayardo	demo@demo.com	f	t	2019-01-21 03:08:55.734701+00	5
1030	pbkdf2_sha256$20000$txOALHGqfj8j$BYU8wHSfOIHvSbqW9lUtE0DPWKPhX2G6XNDE5iunhAM=	\N	f	jhernandezd8173 	Joel 	Hernandez Duran	demo@demo.com	f	t	2019-01-21 03:08:55.709169+00	5
1082	pbkdf2_sha256$20000$kTYkKy5Vl7xG$usb68rdLwMfIBt/6/Tgut9yHq8tMkffScgJXISHeCt0=	\N	f	jemilioc4481 	Jorge Emilio 	Chapela Morales	demo@demo.com	f	t	2019-01-21 03:08:57.023061+00	5
1012	pbkdf2_sha256$20000$PrC7pls3xBgQ$CBDs3vmomNnYDGuLzFcPy7IEbYGaD31mB3yvvhX3zjc=	\N	f	jabizaidr3410 	Jose	 Abizaid Rusz	demo@demo.com	f	t	2019-01-21 03:08:55.236178+00	5
1096	pbkdf2_sha256$20000$OCFcUiXaKrRv$yRVcSmntDWWZy6+iXSHfTKhzrPO6JtZghHOtxhhNSzY=	\N	f	jandresh6014 	Jose Andres 	Herrera Lopez	demo@demo.com	f	t	2019-01-21 03:08:57.357377+00	5
1066	pbkdf2_sha256$20000$NGIIvOu8Gik2$ug4U7B2XL98e2navJmxQ5pn5Wz29kmHQNZbDlcfVrfY=	\N	f	jdavidm6129 	Jose David 	Melo Narvaez	demo@demo.com	f	t	2019-01-21 03:08:56.624066+00	5
1000	pbkdf2_sha256$20000$IsU2KG1PKWFz$52TLHrZ7JzZxEOpdd6olQ3TNvfYLW3LOfIvKn8GLUHE=	\N	f	jguillermos2541 	Jose Guillermo 	Sanchez Romeo	demo@demo.com	f	t	2019-01-21 03:08:54.9319+00	5
999	pbkdf2_sha256$20000$GdhUWeqY3xu1$s5u2bN0zUOVix5xG/igg8ULlQ22MKIuEXuJZ2ZQE12Q=	\N	f	jmanuelf6287 	Jose Manuel 	Fragoso Soto	demo@demo.com	f	t	2019-01-21 03:08:54.906381+00	5
1081	pbkdf2_sha256$20000$xJSTpyK3RAUx$gF4Ws6+eF9GaYEhgPcI3w9hy+pUNGBDrRBD6ivWCNec=	\N	f	jpabloa7364 	Juan Pablo 	Andrade Osuna	demo@demo.com	f	t	2019-01-21 03:08:56.998945+00	5
1045	pbkdf2_sha256$20000$mjgRFkglCTj0$PjvPtS/uKn0RblObofJ176GVlvdx9QfUqJXkBrUVm1M=	\N	f	jpablod8349 	Juan Pablo 	De La Torre Alcantara	demo@demo.com	f	t	2019-01-21 03:08:56.089314+00	5
1080	pbkdf2_sha256$20000$qsLo8BVquHzh$Y8vBQD+qWzrqIuHr+VLZ1EIHNsEWwkgu4nNsrFHyYAM=	\N	f	jrodriguezh5860 	Julian 	Rodriguez Hess	demo@demo.com	f	t	2019-01-21 03:08:56.974727+00	5
1029	pbkdf2_sha256$20000$ZhR9CnGcMuQp$pw2Iq/75mW5QgF+7xW00R1fx6G6RHg70GS6JyaFteHY=	\N	f	lcastillob5888 	Leonardo 	Castillo Benavides	demo@demo.com	f	t	2019-01-21 03:08:55.683988+00	5
1079	pbkdf2_sha256$20000$hyuBJ2rUP8NH$Ku9vJ7kTp5lphLAdIjn5tFwQYeCId86LiTi5s5i0goU=	\N	f	ljavierr3806 	Leonardo Javier 	Ramirez Sosa	demo@demo.com	f	t	2019-01-21 03:08:56.949583+00	5
1028	pbkdf2_sha256$20000$33Jyy2uFGiGh$+b2qh1E6P3atl/JFkvPBIMFmxDohf3uKkYNXMhNmNKk=	\N	f	llopezr8709 	Leonardo 	Lopez Ramirez	demo@demo.com	f	t	2019-01-21 03:08:55.658649+00	5
1044	pbkdf2_sha256$20000$UEPVC6G5OEcH$uXvd16e2F5PI6dFT1+O0hbR+5Kk4aeqrUlF6//pPhG4=	\N	f	lmaximilianon3544 	Leonardo Maximiliano 	Noguera Vasco	demo@demo.com	f	t	2019-01-21 03:08:56.064524+00	5
1095	pbkdf2_sha256$20000$veEvnCh7zI2b$WZzDcSuelJ4JLpxbzbjWgNBJhVe+Lh0oE3emt3Zh7nQ=	\N	f	lvazquezm7006 	Leonardo 	Vazquez Martinez	demo@demo.com	f	t	2019-01-21 03:08:57.333215+00	5
1116	pbkdf2_sha256$20000$a7VMegTR6Ph4$EpmklzImcWUdpE6YGDZ9m9iit8d3ToC1AiIPYXjyO2c=	\N	f	lzanellap1999 	Luciana 	Zanella Plata	demo@demo.com	f	t	2019-01-21 03:08:57.836582+00	5
1115	pbkdf2_sha256$20000$xPNuKAquu1Td$6Veu4qGHVr9lWGvSbZzuUnO/tKjbWAavprv/iHwo/wE=	\N	f	mlozanol7338 	Mariana 	Lozano Lagarde	demo@demo.com	f	t	2019-01-21 03:08:57.812929+00	5
1078	pbkdf2_sha256$20000$gy8FLTbxxWzK$pwlyZC8MPxy+kjIlpn6tfncm4dNqrPHvhfVnvJPpP3s=	\N	f	mvillarrealc5386 	Mauricio 	Villarreal Colunga	demo@demo.com	f	t	2019-01-21 03:08:56.924176+00	5
1043	pbkdf2_sha256$20000$6x6g2jIkdGw3$vZp54Rktgzi9iSAbTADJqbZ/OupHL3rCR0CChqzNgJc=	\N	f	mmolinar0391 	Maximiliano 	Molina Rosas	demo@demo.com	f	t	2019-01-21 03:08:56.038941+00	5
1094	pbkdf2_sha256$20000$5cT7xpm5kimd$Hkb5+yYpgbZDfeo2CHLBRKbG/lKQz4eXrBEU2Y8cJbM=	\N	f	mterand2669 	Maximiliano 	Teran Del Hoyo	demo@demo.com	f	t	2019-01-21 03:08:57.308852+00	5
1011	pbkdf2_sha256$20000$x7Lfd0w0PmXc$cUfz3eU6PM16x7ABM/m45I2I55rBT422btlrZg2wbW8=	\N	f	mangelm0232 	Miguel Angel Mariano 	Lopez Pacheco	demo@demo.com	f	t	2019-01-21 03:08:55.211062+00	5
1065	pbkdf2_sha256$20000$iZZt8WExfliF$FDbb1FsT3mYQzbk9VGDDLcNlpRoEWO915zJkre1awhM=	\N	f	mmedinaz2976 	Mikel 	Medina Zarza	demo@demo.com	f	t	2019-01-21 03:08:56.599502+00	5
998	pbkdf2_sha256$20000$rMG3qhVzREov$/CV7Gt9xNYkU0JUcBN7Dynb35Td5oLE7fl7z7Ymbk+g=	\N	f	nalejandrom4618 	Nelson Alejandro 	Mercado Platas	demo@demo.com	f	t	2019-01-21 03:08:54.881661+00	5
1027	pbkdf2_sha256$20000$ma58KG9yxV63$Zwo9eKBuYcp77L5MmuKDd9Neoz8O36eLjaBdJ1pNg74=	\N	f	nescobarc9320 	Nicolas 	Escobar Cerezo	demo@demo.com	f	t	2019-01-21 03:08:55.633173+00	5
1093	pbkdf2_sha256$20000$ypGfUY5Hdch9$Gq2re2Jm6v6sdZAcbkRPCU+wpgEVaubIEUVfhohkXDk=	\N	f	nhernandez8591 	Nicolas 	Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:57.285144+00	5
1042	pbkdf2_sha256$20000$QIdlFahsRlD1$JmhP6V1qV9vI3nW+HCQTayPXvHMpmI27DLguy2+uKMo=	\N	f	nsuarezc0001 	Nicolas 	Suarez Cobos	demo@demo.com	f	t	2019-01-21 03:08:56.014203+00	5
1010	pbkdf2_sha256$20000$55fPaRPGn1py$9jjaGwXo8p3e1pONGzkASMTj1zHxuebzP/a7NzZnB1M=	\N	f	oemmanuelm2150 	Omar Emmanuel 	Martinez Puente	demo@demo.com	f	t	2019-01-21 03:08:55.186289+00	5
1064	pbkdf2_sha256$20000$YVpghmCMeVqI$V9kePNIz1BgPPyinhJbXrA64e58uT5LZQtgNI2QbS7w=	\N	f	ozavalap6502 	Omar 	Zavala Peña	demo@demo.com	f	t	2019-01-21 03:08:56.573846+00	5
997	pbkdf2_sha256$20000$OPqYvrEmRYYQ$/p//eTXJJPYKH7vEolEJ3F/i8ltS2Bl5hzkGAOzqpB0=	\N	f	oortegae0365 	Oscar 	Ortega Espindola	demo@demo.com	f	t	2019-01-21 03:08:54.856832+00	5
1584	pbkdf2_sha256$20000$6nfw2mlhGGBq$DuJbgxfK4H/epDro1nq0JQTGSeyOq5YYIy6pKoPME3I=	\N	f	ploarc84	Pablo	Loarcia	name@example.com	f	t	2019-01-30 01:02:17.996763+00	5
1585	pbkdf2_sha256$20000$aTJ8JlkG21Fs$blkM6OfEw7c+hv8JEBP+kZLjBvkx/16sdq0/AdXjPyo=	\N	f	lcastr85	Lorenzo	Castro	name@example.com	f	t	2019-01-30 01:02:18.021693+00	5
1248	pbkdf2_sha256$20000$yAvQlriQC4v7$kh6lL+SXQhdsg1/rny/LVwQCaGSL/tjNPCz7kcsH9r8=	2019-02-08 01:08:40.79547+00	f	miltonlucio	Milton Lucio	Milton Lucio	name@example.com	f	t	2019-01-21 20:04:55.627325+00	4
1841	pbkdf2_sha256$20000$dTuTDaX88poh$mLDgQdqYbtVXs9pbiMVacuv78nQGRFCtQJ79NS0E2/8=	\N	f	val9999	Valeria	Graham	demo@demo.com	f	t	2019-02-19 02:58:02.179445+00	5
1558	pbkdf2_sha256$20000$6XEVmmawYnK5$pXXsxOH/m8yTGbrcWFTBKtdM/FbTm0c2IHPB36cFOfk=	2019-01-30 21:07:21.252615+00	f	amolob58	AlejandroL	Moloberti	name@example.com	f	t	2019-01-30 01:02:17.247482+00	5
1559	pbkdf2_sha256$20000$Ox0zGceoSCGU$xW9o0kLy8pZUNjRT49xOD1BbUrL5L5mZVVKDI1NUABA=	\N	f	sgutie59	Santiago	Gutierrez	name@example.com	f	t	2019-01-30 01:02:17.282574+00	5
1560	pbkdf2_sha256$20000$e86KN40cLOsu$MZK0lcJkLO5qvDpV/lkUFKh0NtyDQDyQ3xF7pHWz1xw=	\N	f	plemai60	Pablo	Lemaignen	name@example.com	f	t	2019-01-30 01:02:17.313946+00	5
1561	pbkdf2_sha256$20000$lHkFN1FXj6vP$PF4mEZaD7hOCtqen/24mDyo8+Jbn1sgLaMqBN7F+cRU=	\N	f	ftruji61	Fernanda	Trujillo	name@example.com	f	t	2019-01-30 01:02:17.338788+00	5
1562	pbkdf2_sha256$20000$LNKx6JwOjy1R$jYWlL65/3HulZEGP77SEXLKgLyvvtFmAyfctP5fN4C4=	\N	f	aramir62	Alonso	Ramirez	name@example.com	f	t	2019-01-30 01:02:17.387607+00	5
1563	pbkdf2_sha256$20000$JQNtm9p7bRKn$GdhBGY2gVXnyDE6+dv+svWNSmn/m0AfNqSGDSGRLPNM=	\N	f	aguine63	Arthur	Guinet	name@example.com	f	t	2019-01-30 01:02:17.42891+00	5
1564	pbkdf2_sha256$20000$vUB1LUGsuMgV$TMvbb8MW4kgb4BBpWV4GX/Ju2SsjB2YdIMnO9x13pz4=	\N	f	egrau64	Enrique	Grau	name@example.com	f	t	2019-01-30 01:02:17.458528+00	5
1565	pbkdf2_sha256$20000$6xjww4qActnY$4K4aEMf7JClkwawGIuudnRmxxW6JHx834w5RMmgu+Uc=	\N	f	asordo65	Alvaro	Sordo	name@example.com	f	t	2019-01-30 01:02:17.486994+00	5
1566	pbkdf2_sha256$20000$HEuNB8xg3JT2$oEkm7WkpR/x5Om9TohXL/dIjDU6rWB4aFILOZiz9B+U=	\N	f	lheran66	Luciana	Herana	name@example.com	f	t	2019-01-30 01:02:17.514086+00	5
1567	pbkdf2_sha256$20000$IAoqHp8blPxX$zbcZz2I72XAQNdVoFj15irLQcNU1QVisy8Xq6k4oJ7Q=	\N	f	mcontr67	Mateo	Contreras	name@example.com	f	t	2019-01-30 01:02:17.541292+00	5
1568	pbkdf2_sha256$20000$OfY2WLhTOaym$9yFN81si+f97C5nqUyF9keEvJ51bY3CSxwxh+tVyiwo=	\N	f	adelaf68	Alonso	delaFuente	name@example.com	f	t	2019-01-30 01:02:17.567207+00	5
1569	pbkdf2_sha256$20000$pWcwu9bhTFOC$9Q2o/vGVzObh3Al9F+0fw2VMU4fSyVWz5+0AMfk+4d8=	\N	f	oesmit69	Olivia	Esmit	name@example.com	f	t	2019-01-30 01:02:17.594874+00	5
1570	pbkdf2_sha256$20000$2HMoOaad7zz9$aMHR20hO0mA0dF9n8e2rTxVILsbXiuoeKrRS1COPhTc=	\N	f	aguiha70	Alias	Guihard	name@example.com	f	t	2019-01-30 01:02:17.621397+00	5
1571	pbkdf2_sha256$20000$e7dJZeauaLWY$o6nbMOOjCaF43sso0hIx6xPEpptWu0DG+oKyf6q8nEA=	\N	f	jmiran71	Jacobo	Miranda	name@example.com	f	t	2019-01-30 01:02:17.654587+00	5
1572	pbkdf2_sha256$20000$K9ja6LkzT3PV$oJlcdAasMs5zSYEL7WVz6OVz70OpokNybq+2/CHuzPY=	\N	f	tdelar72	Tomas	delaRosa	name@example.com	f	t	2019-01-30 01:02:17.68339+00	5
1573	pbkdf2_sha256$20000$7cQ0vucWooDb$P8Zab5T/PKLXpbryt3DpK/66NgVM0YI2Z7n9XW3eG1w=	\N	f	acarri73	Angel	Carrillo	name@example.com	f	t	2019-01-30 01:02:17.710485+00	5
1574	pbkdf2_sha256$20000$IEkjJljYSgaf$keAFv/ymXI3ray+2IeIs0nlmW4KJmgMJXh3fIngnljQ=	\N	f	mmieri74	Martin	Mieriteran	name@example.com	f	t	2019-01-30 01:02:17.737208+00	5
1575	pbkdf2_sha256$20000$hmoRLLXUCoIj$l8H0F6CGC5m1LlfK8qSRA5urPQjQUiShp8L3nymj5fQ=	\N	f	mmieri75	Maria	Mieriteran	name@example.com	f	t	2019-01-30 01:02:17.762186+00	5
1576	pbkdf2_sha256$20000$yFmsgYHDRGBj$E1FafE3VYbuocDaXet5LitDi3U0i4qbRJuu3kG42LaQ=	\N	f	hgonza76	Hertor	Gonzales	name@example.com	f	t	2019-01-30 01:02:17.789186+00	5
1577	pbkdf2_sha256$20000$7KbTc1dsmpma$FSLWRWJPcgo7EpHxqnM6QkZ8wmhjKwEJWIRC/2GWxXA=	\N	f	jlamas77	Jacobo	Lamas	name@example.com	f	t	2019-01-30 01:02:17.815881+00	5
1578	pbkdf2_sha256$20000$18xA7HezjI9R$Ku2gUieP/ee8d+rAW65fs2AjDWdRr04ZQUaQrT5eNr4=	\N	f	rkim78	Roy	Kim	name@example.com	f	t	2019-01-30 01:02:17.842222+00	5
1579	pbkdf2_sha256$20000$FFalflYVzU8M$PtJpaC7e2npvGneAFX6+NJBJ7vPFtAFAAcTHWvMhBoA=	\N	f	amacia79	Alejandra	Macias	name@example.com	f	t	2019-01-30 01:02:17.869688+00	5
1580	pbkdf2_sha256$20000$VojgCRikP7MF$MWjTtfnFjIhh+TGjHU2d+Q9p2PhZivyyxC4Lygir9ec=	\N	f	dsariñ80	Daniel	Sariñana	name@example.com	f	t	2019-01-30 01:02:17.895058+00	5
1581	pbkdf2_sha256$20000$qWoqNJ9EeitI$WegAykDsnHdpj/dkvG75bBf7hjQO0WC9BFyN1Ae9m34=	\N	f	aledes81	Alejandro	Ledesma	name@example.com	f	t	2019-01-30 01:02:17.920721+00	5
1582	pbkdf2_sha256$20000$NJX1EyFHNgwU$xeBDjA5BvVgWy7cmNjj++Cfc6oIeD6uWBhsbwREZzpw=	\N	f	nwuesm82	Nicolas	Wuesman	name@example.com	f	t	2019-01-30 01:02:17.946075+00	5
1583	pbkdf2_sha256$20000$9vKtMXDwT2xM$mtpvAVmnQNEMPYYCj1BVnhxznSHYS7e3V/y/x1XYXgY=	\N	f	prodri83	Pablo	Rodriguez	name@example.com	f	t	2019-01-30 01:02:17.971583+00	5
1587	pbkdf2_sha256$20000$m9Vbz534B5YD$fSeofuy0uLYSJGFjWlxF63i/1R58U5FPHG/G2Kbt7Sw=	\N	f	scazar87	Santiago	Cazares	name@example.com	f	t	2019-01-30 01:02:18.072876+00	5
1588	pbkdf2_sha256$20000$9d4rqkxVufkr$BqW36+tUlWrDbGOrJ875YHhngwdwdAr+CgrOYfus1ik=	\N	f	jcaice88	Juliana	Caicedo	name@example.com	f	t	2019-01-30 01:02:18.102831+00	5
1589	pbkdf2_sha256$20000$1aPclPj4piV0$6xSZ1ZLVKu9zGlk8UW6kHVw+J0l5tijzihOufyYeTuY=	\N	f	uvalen89	Ulises	Valenzuela	name@example.com	f	t	2019-01-30 01:02:18.13928+00	5
1590	pbkdf2_sha256$20000$fvmasaoNUccD$OzUXEoN0WeZ2y3Xy8e/9/GSCkQvj0fIIKT+4RDpxHU8=	\N	f	apetit90	Agat	Petit	name@example.com	f	t	2019-01-30 01:02:18.164986+00	5
1591	pbkdf2_sha256$20000$vqpdwYJh86RR$Y67+8CqVObQAsjv4lkExg70umHirFRVM1pgutVav/xA=	\N	f	jmarif91	Jovana	Marifaci	name@example.com	f	t	2019-01-30 01:02:18.191048+00	5
1592	pbkdf2_sha256$20000$kl2MlWbl0dVu$EbYrO3taooR+Le9w01MVjzxlKXL7NSVk1n1Le9M4fSc=	\N	f	mloard92	Matias	Loarduño	name@example.com	f	t	2019-01-30 01:02:18.217222+00	5
1593	pbkdf2_sha256$20000$osgy7CNhZuNR$5YTv2cN3UzP/0w8u+NfkV5bfWsbF+TgKj/UObuiFLSk=	\N	f	oechav93	Olivia	Echave	name@example.com	f	t	2019-01-30 01:02:18.242368+00	5
1594	pbkdf2_sha256$20000$9g3rjItOnUzY$U9aLUTMLhXt0zYyOvHaAKxJmIX11sIoAoLJmz7GzLtI=	\N	f	wmolin94	Wuilov	Molin	name@example.com	f	t	2019-01-30 01:02:18.268073+00	5
1595	pbkdf2_sha256$20000$ltQJyCyWRNMX$vibZJ/rAjHOqYTE5NliWQNM0uSULDOn0wAfJEj2P1O4=	\N	f	aherna95	Adela	Hernadez	name@example.com	f	t	2019-01-30 01:02:18.293986+00	5
1596	pbkdf2_sha256$20000$ZEAkQbxoq3IH$08CXm8vByAMjMtl1LH39p+eszCXhVbWYLCnlMN6Fxd4=	\N	f	mperez96	Mikel	Perez	name@example.com	f	t	2019-01-30 01:02:18.31936+00	5
1597	pbkdf2_sha256$20000$2w1kiBLnTnKm$lUONQ205v/BgPGDeOA8bXVCanaHXg+Gspur99Hn01wY=	\N	f	piturr97	Paula	Iturriaga	name@example.com	f	t	2019-01-30 01:02:18.344379+00	5
1598	pbkdf2_sha256$20000$KKpIaM5GVu7x$vJk4A5EpZjiOWnJznsqK0Z1hIulm/RwBHvcoEtkzSaE=	\N	f	aarrie98	Alexander	Arrier	name@example.com	f	t	2019-01-30 01:02:18.369664+00	5
1599	pbkdf2_sha256$20000$d4LFo3f0od11$sgkHo+v0xVdo3VnxEDGPm9hLwfdOWSgrI02yAD2pKE4=	\N	f	ehutte99	Emma	Hutterer	name@example.com	f	t	2019-01-30 01:02:18.39495+00	5
1600	pbkdf2_sha256$20000$tBQPkfI0cBPs$QfNU+AwZvoIet7u2gR68C1c61bzxQLXSTXkwVqX4PpQ=	\N	f	jhoyos00	Jose	hoyos	name@example.com	f	t	2019-01-30 01:02:18.419834+00	5
1531	pbkdf2_sha256$20000$9xmuBxwi5psS$9JZYVWbXGVcpeiCSOE+70pnlSVQnvteU28YXFVuFUiA=	2019-02-26 20:21:06.856472+00	f	gbautistac0283	Guadalupe 	Bautista Celestino 	name@example.com	f	t	2019-01-24 06:17:05.78268+00	4
1251	pbkdf2_sha256$20000$6NTjqcBu5K4h$EycCgfcnH44MYT9NgOARSZBrPifgjQs4pNJQ4o/sDe4=	2019-01-22 01:48:05.853861+00	f	mmarin0505	Max Marín	Max Marín	name@example.com	f	t	2019-01-21 20:09:26.961226+00	4
1253	pbkdf2_sha256$20000$YgYtw8mX5zuN$VGhEgFsOGgUCC/SWoCJFQ595Dy0zSPkHB0zr9/UJz/4=	\N	f	ruben0583	Rubén Montes de Oca	Rubén Montes de Oca	name@example.com	f	t	2019-01-21 20:14:03.04599+00	4
1254	pbkdf2_sha256$20000$ZgQUM5EdCzib$P/1PWxBq+uWMXS/nh82tlaczqyVhsT5SzyYl3GOZqYI=	\N	f	eduardo0367	Eduardo Javier Calde	Eduardo Javier Calde	name@example.com	f	t	2019-01-21 20:15:45.175831+00	4
1255	pbkdf2_sha256$20000$B5zUOuCq6jYO$L7+CaPwk9V6wU166A5zlgc/hd7M3zJm/wOQcMh8HV5E=	\N	f	heron0391	Uriostegui Balleza H	Uriostegui Balleza H	name@example.com	f	t	2019-01-21 20:17:18.817916+00	4
1256	pbkdf2_sha256$20000$I6SBZN2doVj4$vuRo/ywnTutdbFhwTz5QCU291EZltnNyQ7+ccJS5mQM=	\N	f	ricardo0455	Ricardo Cariño	Ricardo Cariño	name@example.com	f	t	2019-01-21 20:18:34.60404+00	4
1601	pbkdf2_sha256$20000$79yjS14uZC0j$SRIvXZoRZtywtOe4KZBusIHEfLsyuh596GENQ0/7t7Y=	\N	f	mmaxim01	Maximilian	Maximilian	name@example.com	f	t	2019-01-30 01:02:18.445201+00	5
1602	pbkdf2_sha256$20000$LpHyzWiBBkfr$bRvc5pCDxhZkLJQMvO+T7x0Q8zM5AKRcPxB9ZjMdYYw=	\N	f	jagull02	Juan	Agullo	name@example.com	f	t	2019-01-30 01:02:18.470917+00	5
1603	pbkdf2_sha256$20000$MExMIvBKlik6$moB9LTByF6u1pM+5cBvqU5IOjNY1HedRM/j3a1xtjrc=	\N	f	mperez03	Matias	Perez	name@example.com	f	t	2019-01-30 01:02:18.495825+00	5
1604	pbkdf2_sha256$20000$Q0aKOUS23tNT$ENOLmlshtGuV6Lhb+3TvcMPY7hvfniqRTISRtjxrJgY=	\N	f	gmarti04	Gabriela	Martinez	name@example.com	f	t	2019-01-30 01:02:18.521417+00	5
1605	pbkdf2_sha256$20000$I24tllyfasrZ$04PvQbeJmEIMNlF2GeQMkh6vyQixtLk+FE/u8OSE0OY=	\N	f	ssanch05	Sebastian	Sanchez	name@example.com	f	t	2019-01-30 01:02:18.546545+00	5
1606	pbkdf2_sha256$20000$QW0AbDL2actK$/04QB/2nEDh/65UPpNyAzBSVqaTfqMkutVipRXiFfPI=	\N	f	irodri06	Iker	Rodriguez	name@example.com	f	t	2019-01-30 01:02:18.571848+00	5
1607	pbkdf2_sha256$20000$V1FD81EhHBQC$t2ZwM0VHSXR+ri1tHy3fs/qVj9B1zHztKShpyj2yfDU=	\N	f	idedie07	Iñigo	deDiego	name@example.com	f	t	2019-01-30 01:02:18.596897+00	5
1608	pbkdf2_sha256$20000$lHspZJl2FMhS$/YrfDFHMCiNsEQx1CRUDfMZEk97lPjek2jR6pqwHvDw=	\N	f	otomke08	Otro	Tomke	name@example.com	f	t	2019-01-30 01:02:18.622117+00	5
1609	pbkdf2_sha256$20000$NJAmCbSdM3br$38jK0hHe+wUANnPUwwpr5l5cfUpi2SWtnb4gSlxUao4=	\N	f	llomel09	Leonardo	Lomelli	name@example.com	f	t	2019-01-30 01:02:18.647182+00	5
1610	pbkdf2_sha256$20000$w5EP6Q0zqtMG$sIJgpLiXtn0PRSMZ/3NIfJWazWX3wU97iWRrb8VcERM=	\N	f	fweisd10	Facundo	Weisdman	name@example.com	f	t	2019-01-30 01:02:18.672549+00	5
1611	pbkdf2_sha256$20000$IwJ9mV4xYlxo$gt0X7svyngTkIh8+yRGtF7ml0mP0IVR9KonML2/SIpU=	\N	f	jgatic11	Julion	Gatica	name@example.com	f	t	2019-01-30 01:02:18.697348+00	5
1612	pbkdf2_sha256$20000$s8NXsXSLJIhn$pW0kCAekJF7SLZzsoPnwriQ6t5aSzTgjDrP1BmMI6nE=	\N	f	fmadri12	Federico	Madrid	name@example.com	f	t	2019-01-30 01:02:18.722274+00	5
1613	pbkdf2_sha256$20000$2VI145Mws4uO$/AG97Yd7JdPzEU40mdjL7zpYJ1WCe3G3DPk6j7ickEI=	\N	f	sperez13	Sofia	Perez	name@example.com	f	t	2019-01-30 01:02:18.747091+00	5
1614	pbkdf2_sha256$20000$NygY4lc60hxS$oX15q2GyWAQcNaWRmCLCM9I+MwYZf7amFYe8KF3Vetw=	\N	f	msalga14	Mati	Salgado	name@example.com	f	t	2019-01-30 01:02:18.772039+00	5
1615	pbkdf2_sha256$20000$9Iq255owxkxM$7hrmUSjwxxxRvfMrlD7fHmIKSrGLEKzBrSXsjL2XFGs=	\N	f	isuare15	Isabela	Suarez	name@example.com	f	t	2019-01-30 01:02:18.797058+00	5
1616	pbkdf2_sha256$20000$qdVBw8BwBlPI$zfcnjsdYX++kv6scFO483lx5G0PioH/dfrFPQwxyNqc=	\N	f	sluque16	Sofia	Luque	name@example.com	f	t	2019-01-30 01:02:18.822559+00	5
1617	pbkdf2_sha256$20000$XCsE8vYGqwK2$HQoyp/FXU7xeVIigMFcmk1ION1A2H9sP+umSd0784x4=	\N	f	jvaron17	Justin	Varon	name@example.com	f	t	2019-01-30 01:02:18.848149+00	5
1618	pbkdf2_sha256$20000$SdPmwmsbH4YX$cRHgqZTWDOXRVDmmICaijVQBeDDMV+3k+zUk5s879Sg=	\N	f	msagas18	Martin	Sagasti	name@example.com	f	t	2019-01-30 01:02:18.875181+00	5
1619	pbkdf2_sha256$20000$1jkmAs9xTj8z$/ECVtQWCZNKNUTZvtnwOSB5fcbjMWjOk0nNLm3NeJj0=	\N	f	aruiz19	AnaPaula	Ruiz	name@example.com	f	t	2019-01-30 01:02:18.900418+00	5
1620	pbkdf2_sha256$20000$3FUkqDcSOvKn$+cSwNssBH25rtjDq1s2J5MFywaOepBJH5pBLHlxm79Y=	\N	f	grodri20	Gaspard	Rodriguez	name@example.com	f	t	2019-01-30 01:02:18.92576+00	5
1621	pbkdf2_sha256$20000$GXTPJzSnYkQu$weCWavx0Xjp+i8aW8hkfJSVJYa7Dhvxq5jH82qsOSSU=	\N	f	rriver21	Rafael	Rivera	name@example.com	f	t	2019-01-30 01:02:18.950513+00	5
1622	pbkdf2_sha256$20000$x6iWxFxQziv9$0m0bDeJuk7YnBjAIPjFAvymhlP6iTN2CxYrY1maqzq4=	\N	f	lperez22	Lucia	perez	name@example.com	f	t	2019-01-30 01:02:18.97632+00	5
1623	pbkdf2_sha256$20000$fCZIBDxERVFl$5e+/tlPQ5F5wE5BouTrWBws4tOBN7H4lrJhghxI/BjA=	\N	f	mespin23	Manuel	Espinosa	name@example.com	f	t	2019-01-30 01:02:19.002644+00	5
1624	pbkdf2_sha256$20000$xNOL98uinkG5$PdQFXQHC9Ew3v8wFjvxGvuUdo+He/QPs8lX3jvA4mCg=	\N	f	pexus24	Paula	Exus	name@example.com	f	t	2019-01-30 01:02:19.028624+00	5
1625	pbkdf2_sha256$20000$udfBpQTSGu8v$VXRPHMowX5rS23QZVR3V3SHktcyJ9aOPhZrMLc3qyaI=	\N	f	fkotli25	Fatima	Kotlin	name@example.com	f	t	2019-01-30 01:02:19.053869+00	5
1626	pbkdf2_sha256$20000$SPK7ZEP5IpCr$gTBbZiP1sXCLgkTD4eYzsu2Yo/nlebtzGyfHu1cjxYo=	\N	f	svicto26	Sofia	Victoria	name@example.com	f	t	2019-01-30 01:02:19.080848+00	5
1627	pbkdf2_sha256$20000$fXTRvrt6mjeq$RnSjmlvax+zlhBBSZFdO8+xn9MvfDND2IG39KY/y7a4=	\N	f	lmaria27	Lucia	Marias	name@example.com	f	t	2019-01-30 01:02:19.106126+00	5
1629	pbkdf2_sha256$20000$REWlgb8qzVWU$BDWgDtlb5j46FATZlOAUtyjH4WqPhPYJfJT5+cLwuMM=	\N	f	abocli29	Agustin	Boclin	name@example.com	f	t	2019-01-30 01:02:19.157413+00	5
1630	pbkdf2_sha256$20000$fS71S8jblxZB$BDgf657UMLIeD61xRW+Yn36rdDWJqEpA8gAZ+mhT3Og=	\N	f	aescal30	Arturo	Escalante	name@example.com	f	t	2019-01-30 01:02:19.183973+00	5
1631	pbkdf2_sha256$20000$pSkuHu5nStOO$tMKlxn686hjo34iidhXLalEOzBwFylyQl8bSq6aBUVg=	\N	f	mhuill31	Maximiliano	Huillermelle	name@example.com	f	t	2019-01-30 01:02:19.20906+00	5
1632	pbkdf2_sha256$20000$PEdWo2xFeIDr$ghLI/y+LJZAvydz5Nz9x2dHozAuWxdhI7CcBkElzvN0=	\N	f	emende32	Emilia	Mendez	name@example.com	f	t	2019-01-30 01:02:19.235055+00	5
1633	pbkdf2_sha256$20000$ng6HgJlRlqtT$XvQfS+QZYwi7yup4+ZJGiTY1dbmxP1N1maf7id+76mY=	\N	f	nalegr33	Nefeli	Alegre	name@example.com	f	t	2019-01-30 01:02:19.26078+00	5
1634	pbkdf2_sha256$20000$7SEvdCGDDE3C$C/VpYi/BZqCGlFQHc2Dz1DxVZP6qR+nAdOr4mkj48cs=	\N	f	rdumas34	Rafael	Dumas	name@example.com	f	t	2019-01-30 01:02:19.288296+00	5
1635	pbkdf2_sha256$20000$5SQ7DbarZ3dG$OSraYRmQ1f4BxiWJ4OBb631iIilQBCqlFtTYyvKZ52g=	\N	f	sherna35	Saran	Hernandez	name@example.com	f	t	2019-01-30 01:02:19.313247+00	5
1636	pbkdf2_sha256$20000$aCPQSuofOtEb$oFQJdSYyEglokB4kaL2d3UV6XhQ5iwUrSbYq29xhbWA=	\N	f	opanas36	Oliver	Panas	name@example.com	f	t	2019-01-30 01:02:19.338774+00	5
1637	pbkdf2_sha256$20000$UAyOpaIl8DOk$kdMDRdOPI0RnYjAmXAT9HCQ1guXGxrbPzvu11WhE4II=	\N	f	csanch37	Clemente	Sanchez	name@example.com	f	t	2019-01-30 01:02:19.364201+00	5
1638	pbkdf2_sha256$20000$xt8Bi4iqAgWi$dTIEPXjkkAPNoGnanCEnMpecGR7FbYSTDTWyc5bkyBw=	\N	f	emilla38	Emilio	Millan	name@example.com	f	t	2019-01-30 01:02:19.389311+00	5
1639	pbkdf2_sha256$20000$iE2p0eBixjSx$68+N/kAx/6vAg+10pvVimDmUhL1dv9ZljG6GyXOFNGw=	\N	f	gcarmo39	Gael	Carmona	name@example.com	f	t	2019-01-30 01:02:19.414469+00	5
1640	pbkdf2_sha256$20000$EY7jvyRtfnIj$j4INX0uG6iPKjL+ZzXMvSbdI6PxJyUzU2s1bVZFAt6U=	\N	f	lruiz40	Lucia	Ruiz	name@example.com	f	t	2019-01-30 01:02:19.439805+00	5
1641	pbkdf2_sha256$20000$TCiqcfmWShks$y5b9s9j2g3AFbP/z3cUDXmfWhAwQSm7juIcKWa9E7pQ=	\N	f	mbaule41	Manuel	Bauletle	name@example.com	f	t	2019-01-30 01:02:19.464918+00	5
1642	pbkdf2_sha256$20000$tgPQuzzZZxtv$oYWYD4ciVd1F97pcpRozLiXs2ZBqo6bj9f6Txl8nI00=	\N	f	sabell42	Sofia	Abella	name@example.com	f	t	2019-01-30 01:02:19.490058+00	5
1643	pbkdf2_sha256$20000$iLKWLM7snbhM$8H7oSx6CJUroJ/Crct8uxqijhYl5OG6lVFnQt7/WP+A=	\N	f	bgomez43	Begonia	Gomez	name@example.com	f	t	2019-01-30 01:02:19.51484+00	5
1644	pbkdf2_sha256$20000$CC31yQf3nX3J$Jym2ZugTFAq5nar0FkFDGBkox6ZLmPv4MwFRQNqWnA8=	\N	f	rflore44	Ricardo	Flores	name@example.com	f	t	2019-01-30 01:02:19.540237+00	5
1645	pbkdf2_sha256$20000$SKDYC9YB9QLB$BelXLJ0cNjnagCscC/eQ2tXw2xBX069RYwLAvQkqv8U=	\N	f	mtisso45	Mael	Tissot	name@example.com	f	t	2019-01-30 01:02:19.565492+00	5
1646	pbkdf2_sha256$20000$4teO82zpxwZd$+Rt7IIcPdv4rnyfcWs9Nixn74ieInaND7I4K0wpIaHM=	\N	f	anoria46	Ana	Noria	name@example.com	f	t	2019-01-30 01:02:19.591379+00	5
1647	pbkdf2_sha256$20000$XrgKhJh4EZyM$lghy3ZGcoNtr+cYEx+EQVeMBKdbpEsysZajTS6LCdjQ=	\N	f	clemel47	Cesar	Lemelian	name@example.com	f	t	2019-01-30 01:02:19.619857+00	5
1648	pbkdf2_sha256$20000$g7u7AONS0BLK$lweCUZIqQIPo07bbV8ukghM6Ez5um1FPGds6Jkg3HHw=	\N	f	gbaeza48	Giulia	baezapoeto	name@example.com	f	t	2019-01-30 01:02:19.657689+00	5
1649	pbkdf2_sha256$20000$dIwPxpPCLbOY$D+Zjwr3CYpc3581nnMeyGZx/TkSX3IsfxF7n/i/4/lI=	\N	f	cmejia49	Camila	Mejia	name@example.com	f	t	2019-01-30 01:02:19.688872+00	5
1650	pbkdf2_sha256$20000$eYkeO47SNm2v$pLWskAu6J0dM+yj7n+9g1n+iudwUJYHbl/Q8vVJ1bbk=	\N	f	akelle50	Alegea	Keller	name@example.com	f	t	2019-01-30 01:02:19.715261+00	5
1651	pbkdf2_sha256$20000$myd6iAY4k74R$PzfdkgNF+egLrAwF04pdhY8Xl6AIjn5J13/tV72dEeM=	\N	f	mmilla51	Matias	Millan	name@example.com	f	t	2019-01-30 01:02:19.742157+00	5
1652	pbkdf2_sha256$20000$m0iSZt2KI45N$Y4jAOCt30sKCngGyoqt9kYnlsj+MUIHj1O7IogB+w7U=	\N	f	amarti52	Andres	Martine	name@example.com	f	t	2019-01-30 01:02:19.768218+00	5
1653	pbkdf2_sha256$20000$v0Qt9HZJoTul$Il+M3IRl8N4dpQqiqYEJltfnprPAX90OYP3R5yRCfpY=	\N	f	dcayue53	Diego	Cayuela	name@example.com	f	t	2019-01-30 01:02:19.794025+00	5
1654	pbkdf2_sha256$20000$2wELA7SlfDvR$YlG4YyNR0t5gVX1bz6APnTKUg8XBHwXCciCffc99fAw=	\N	f	drudel54	Dorio	Rudel	name@example.com	f	t	2019-01-30 01:02:19.820216+00	5
1655	pbkdf2_sha256$20000$bejkeAoNSSi8$jGCgP+mzbLfkvp9IFWv4+qMIr53h4Wivd1mDgNGrq4Y=	\N	f	nrouxe55	Nathoniel	Rouxel	name@example.com	f	t	2019-01-30 01:02:19.846146+00	5
1656	pbkdf2_sha256$20000$zp3LM7xHlrRN$mg7hpip5HYmqX10gEkS9xuTWYYyW208k4sHg47Y/c14=	\N	f	pcontr56	Patrick	Contreras	name@example.com	f	t	2019-01-30 01:02:19.873673+00	5
1657	pbkdf2_sha256$20000$N4GIRelZ5BCI$6c/7NXlM1fzR6zzCyGb12TgPOKAvnaIIzKJgXrnp4/I=	\N	f	mkoech57	Matias	Koechlin	name@example.com	f	t	2019-01-30 01:02:19.900085+00	5
1658	pbkdf2_sha256$20000$KYFXyUMSdZfO$XL4DRdh8Hl/Ym801+kQsUCvyT/p1AAAE/qAXlvRZ7VQ=	\N	f	slucas58	Samuel	Lucas	name@example.com	f	t	2019-01-30 01:02:19.926749+00	5
1659	pbkdf2_sha256$20000$e8eRoZ6jcB4D$ybTyYNchKQEzXCT7n1VzVRJLvew4bk4JjOTbhU73IXo=	\N	f	icarlo59	Isabel	Carlota	name@example.com	f	t	2019-01-30 01:02:19.952248+00	5
1660	pbkdf2_sha256$20000$j88Z7mFOgo0L$cE7WLoztQ1C5+gNuplMlMjjHwEViO5f0xcfsu2DIdqU=	\N	f	mmaidi60	Marcelo	Maidifassi	name@example.com	f	t	2019-01-30 01:02:19.977227+00	5
1661	pbkdf2_sha256$20000$vL1jMkeGZ7Rd$SWjOgrZlxnSDd6W0spcu9hHGpaY4Q9eIcSQFim7X5Fo=	\N	f	dblanc61	Diego	Blanco	name@example.com	f	t	2019-01-30 01:02:20.002533+00	5
1662	pbkdf2_sha256$20000$Dto8bAzOsvsY$RrmL7O3PkwiaB9f5bd5mPVFvAP5L/R1NXzPO1cTBX0s=	\N	f	srodri62	Sofia	Rodrigues	name@example.com	f	t	2019-01-30 01:02:20.033911+00	5
1663	pbkdf2_sha256$20000$9vjkO7JM2kvK$kOmEbvwYhAflYk2nKuIM449HtgAn6c7ohVc1kpC5b+A=	\N	f	ediaz63	Emilio	Diaz	name@example.com	f	t	2019-01-30 01:02:20.062565+00	5
1664	pbkdf2_sha256$20000$GJkD1nokSVne$hL4SjoGHVmqxqm3SffV19cqOhSwCgPoBSWryXGekGbU=	\N	f	rlomel64	Regina	Lomelin	name@example.com	f	t	2019-01-30 01:02:20.087332+00	5
1665	pbkdf2_sha256$20000$cBm8k89VLjTO$mXYXkO6mjdVOxTWd8hnVVCgDDdoqdU73vVc2dgQAaK0=	\N	f	sbaler65	Sebastian	Balero	name@example.com	f	t	2019-01-30 01:02:20.111938+00	5
1666	pbkdf2_sha256$20000$zsYVTbeLCX4H$JVJ6q/24IsNjzLo2tSwh69m8WdyE7F1lZx3AhOVUT+Q=	\N	f	lgatic66	Leonardo	Gatica	name@example.com	f	t	2019-01-30 01:02:20.13657+00	5
1667	pbkdf2_sha256$20000$N9QT1TmULydX$KJRYD45GdWjOwVJ42bpDbw2N8Ueef3OfwKTFipeRsC0=	\N	f	atremb67	Anae	trembley	name@example.com	f	t	2019-01-30 01:02:20.160957+00	5
1678	pbkdf2_sha256$20000$zPHBV8SkWaYY$Y6s3PTUhYFz3bf0X+l6byz71EaXHS5mVpX5KHwriY7M=	\N	f	jsanti78	Javier	Santino	name@example.com	f	t	2019-01-30 01:02:20.486085+00	5
1679	pbkdf2_sha256$20000$PfhTv5ZxVYKg$x2WCUqqxknS0h3XAT2WgsMG6j4Kw1dHDztm5x/Ct5FA=	\N	f	cechev79	Catalina	Echeve	name@example.com	f	t	2019-01-30 01:02:20.510457+00	5
1680	pbkdf2_sha256$20000$DwJNVThFCgvC$x3jEbxHkSoZcWT0mdkJM6+lxFE12TuN0hXSSs/xSC+M=	\N	f	privas80	Paula	Rivas	name@example.com	f	t	2019-01-30 01:02:20.535315+00	5
1681	pbkdf2_sha256$20000$0BWd5iVo0Ra6$GbfENo+utquSCqRRsuGnY3X/N+PGGc0RffjF47qnB2E=	\N	f	jcampo81	Julia	Campos	name@example.com	f	t	2019-01-30 01:02:20.559734+00	5
1682	pbkdf2_sha256$20000$pZjZctMlgrqk$P09VNK70ImFtxO0ZkDHNKAGwil6priqk2Ptlipi4YC4=	\N	f	vriver82	Victoria	Rivera	name@example.com	f	t	2019-01-30 01:02:20.584548+00	5
1683	pbkdf2_sha256$20000$U7YfAl1NOsjo$lXfHmyNs2p77Tj6ERF4wzranqFFZEHgssZX+1EOBAjs=	\N	f	jmorin83	Jacinto	Morina	name@example.com	f	t	2019-01-30 01:02:20.609488+00	5
1684	pbkdf2_sha256$20000$SNE8srB1PHOl$3Y09z4XhuS3XrmaIROnGBHMZK1HjUk6VvZ3D5M8uF2o=	\N	f	jgomez84	Jose	Gomez	name@example.com	f	t	2019-01-30 01:02:20.63429+00	5
1685	pbkdf2_sha256$20000$W0kL1MZT2KrD$wVZEpPrZEV+3zsrkikFm7LDC5beUbjLdBWR+0tzX/cw=	\N	f	rflore85	Rodrigo	Flores	name@example.com	f	t	2019-01-30 01:02:20.658612+00	5
1686	pbkdf2_sha256$20000$cZ7XNIsOfGkw$14ViAjljEXXyZH2Q5BH+Xe54oZkrOAjiZg+eiF/RsQg=	\N	f	vmilla86	Valentina	Millan	name@example.com	f	t	2019-01-30 01:02:20.683264+00	5
1687	pbkdf2_sha256$20000$Ph0VEMd2y7BE$FjMqOW/B4/+gb/ZcrQbLvNWyQBP6GXnAxLQvYoGIHfI=	\N	f	mcayue87	Maria	Cayuela	name@example.com	f	t	2019-01-30 01:02:20.708671+00	5
1688	pbkdf2_sha256$20000$OF4MhWGoTLbB$5c923joW3MUQXGPiIZPHSjnIYNJKfn7vqOLf0kvInpE=	\N	f	ldelar88	Luciana	delaRosa	name@example.com	f	t	2019-01-30 01:02:20.733731+00	5
1689	pbkdf2_sha256$20000$p09HfblMRwub$EKXp1OcTQjcYXWZE8ZQxZdMXW7nNGSNW8w9+TrlIeV8=	\N	f	frenar89	Faustino	Renard	name@example.com	f	t	2019-01-30 01:02:20.758777+00	5
1690	pbkdf2_sha256$20000$jJUDocJiUEd4$IxTtTbRCggOKoielHgQk/nHlSyM/FiLHurzitK5gDBA=	\N	f	mpetit90	Martin	Petit	name@example.com	f	t	2019-01-30 01:02:20.784177+00	5
1691	pbkdf2_sha256$20000$eD78tNLiwl2u$iceqmDx1t7e6rF2tZOuZrDUBPSIEIqOw/k5b50TFUlk=	\N	f	rmira91	Rodrigo	Mira	name@example.com	f	t	2019-01-30 01:02:20.809192+00	5
1692	pbkdf2_sha256$20000$VynDwWF9bNAx$XDRE4bOJlBxUx+Njpjruea4E6/40YiVzbxZ9CCYwZJs=	\N	f	irodri92	Irati	Rodriguez	name@example.com	f	t	2019-01-30 01:02:20.834612+00	5
1693	pbkdf2_sha256$20000$35OjsK9DLLdp$auaV/TUKRosZLSjkfl3BbQOl9dkE8MZT1G5Yqpo8lgc=	\N	f	pstein93	Pasha	Stein	name@example.com	f	t	2019-01-30 01:02:20.859003+00	5
1694	pbkdf2_sha256$20000$Qw9a24O1JfnH$2cNYe3LOjKT1wxndn+0k8MM43YrlFvcALEfH9C41VZE=	\N	f	pespin94	Pedro	Espinosa	name@example.com	f	t	2019-01-30 01:02:20.883595+00	5
1695	pbkdf2_sha256$20000$cXzhfln4OqOr$O5EuOUo+juuDhedKM2NegGtW0tn85ux2aTxsmISHlNA=	\N	f	ssalaz95	Santiago	Salazar	name@example.com	f	t	2019-01-30 01:02:20.908625+00	5
1696	pbkdf2_sha256$20000$Z22s2TeUK6aQ$5lMI2fAZpC+cvdrcGJEpoQNJgmu8BW9EEYf9G0oLU28=	\N	f	cbecke96	Camila	Becker	name@example.com	f	t	2019-01-30 01:02:20.933539+00	5
1697	pbkdf2_sha256$20000$vVa8wPevNVNm$7ZPe2UKc3DV/zsaqMBmqP9OqKZFX0vrZSgCqueBY30Q=	\N	f	stena97	SofiaCatalina	Tena	name@example.com	f	t	2019-01-30 01:02:20.95964+00	5
1698	pbkdf2_sha256$20000$MbTV6nILmjrj$gJk36zJGw9vSUAI8QdNMpJwtN+g33k9gNdkhbnhGN2o=	\N	f	jfarfa98	Jorge	Farfan	name@example.com	f	t	2019-01-30 01:02:20.992397+00	5
1699	pbkdf2_sha256$20000$PUGYn21xZuTP$EwS4/Fq3FQJVEwyyE695saR1g6GRm+jNM/B/N4aydfk=	\N	f	fcorre99	Felix	Correau	name@example.com	f	t	2019-01-30 01:02:21.018246+00	5
1700	pbkdf2_sha256$20000$0kUZSrKzSuYi$ge+wF4Pb5nyWn4Mi5ywi2OWjncjRYYCmMElitxQT+Nc=	\N	f	fluna00	Fernando	Luna	name@example.com	f	t	2019-01-30 01:02:21.04371+00	5
1701	pbkdf2_sha256$20000$BJHKkjxgN6nv$ZFlvclK40KvqC5Ts5vS84com6cjH1uwYPlxkVsx2JdU=	\N	f	mruiz01	MariaJose	Ruiz	name@example.com	f	t	2019-01-30 01:02:21.069698+00	5
1702	pbkdf2_sha256$20000$uOxfdPKB8AFU$nCuUCE0a6mFtZng5ADnguQe5sQbdM+BjGYae0HpG5bU=	\N	f	zmiche02	Zoe	Michel	name@example.com	f	t	2019-01-30 01:02:21.094558+00	5
1703	pbkdf2_sha256$20000$uL6HbnwZKGGY$2ldFaFcsZzd16bYjX7qwBX8HBknAWXeKF+ewTysb0v4=	\N	f	abehag03	Alicia	Behaghel	name@example.com	f	t	2019-01-30 01:02:21.119653+00	5
1704	pbkdf2_sha256$20000$X2lA1XG6ZsVj$Igas/vmQCKYLOklOeUXIdqKJb+S32SmscaME6z7/VyQ=	\N	f	cbours04	Cloe	Bourse	name@example.com	f	t	2019-01-30 01:02:21.145075+00	5
1705	pbkdf2_sha256$20000$WYDigGAUvKUM$n5FUZ9heY8wU0ytMK5fTHO6vfvyJf11Y0Tr0cIdJ/Ao=	\N	f	mherra05	MariaEmilia	Herrada	name@example.com	f	t	2019-01-30 01:02:21.170415+00	5
1706	pbkdf2_sha256$20000$jeVCRSsEPAmA$ViPuS2XMbLvIsbL81HahlPDDDAcl5Lnxw6V9bPA9eiE=	\N	f	itarac06	Isabel	Taracena	name@example.com	f	t	2019-01-30 01:02:21.195669+00	5
1707	pbkdf2_sha256$20000$uzohaOIag30d$4kytHsHDvx9uV4/Ww2W2rpBXoznIty0rwBY/sWIAYVU=	\N	f	mdet07	Maria	Det	name@example.com	f	t	2019-01-30 01:02:21.220244+00	5
1708	pbkdf2_sha256$20000$8eHJtMCGYIx6$dVR2fM/CC0RRNvsa7xjYVPhVnPAg1wnk5UbfIl2XKM0=	\N	f	tvaler08	Tomas	Valero	name@example.com	f	t	2019-01-30 01:02:21.245544+00	5
1709	pbkdf2_sha256$20000$t6a0lNFKNEjk$kpks4Pdtu8w5LYDOd2xFcJT0P1gvbMJVkfz/54X1pTI=	\N	f	apetit09	Alban	Petit	name@example.com	f	t	2019-01-30 01:02:21.270946+00	5
1710	pbkdf2_sha256$20000$8WyOQk2ULNK4$eDZ5ybuOF3cU35dq3e9oVBQsQ9McVernKMa3fqoEvQw=	\N	f	mrodel10	Martin	Rodel	name@example.com	f	t	2019-01-30 01:02:21.296108+00	5
1711	pbkdf2_sha256$20000$0IO2wK8KY2oc$vZuKMm7mZkNf+FGNNUPS6SaRfCiBSi0oimmGY826c1k=	\N	f	ntarac11	Nicolas	Taracena	name@example.com	f	t	2019-01-30 01:02:21.320652+00	5
1712	pbkdf2_sha256$20000$fe1WehPpxxKq$0F1IRvAsBLsurc981YzgJBTMD67gL6lMpTGgS64TBvI=	\N	f	akim12	Anthony	Kim	name@example.com	f	t	2019-01-30 01:02:21.34599+00	5
1713	pbkdf2_sha256$20000$p3lqgDpd3pOF$tXtIlmg841ahfg2H5mcfIREcyQc12jGcSlykqNwT6o0=	\N	f	lsuare13	Leonardo	Suarez	name@example.com	f	t	2019-01-30 01:02:21.371355+00	5
1714	pbkdf2_sha256$20000$PXfECkxiAv8x$r6oWE7Qdr5cqvy6Nk1N2iP75QFOcSEnfGTxToiuZDU8=	\N	f	vdiaz14	Violeta	Diaz	name@example.com	f	t	2019-01-30 01:02:21.396451+00	5
1715	pbkdf2_sha256$20000$DRiDayMyFHUP$FCD/i0QZ0jjfqRFNrNxsmH6+VB4yNeRQSmCWWzdvyIY=	\N	f	mdelfi15	Martina	Delfino	name@example.com	f	t	2019-01-30 01:02:21.421729+00	5
1716	pbkdf2_sha256$20000$xJLVpDFdPenw$cYB8N8mTL+LNQFtIJkSumi7OJxJYZISGbzrvkNRxMPA=	\N	f	psuare16	Patricio	Suarez	name@example.com	f	t	2019-01-30 01:02:21.446932+00	5
1717	pbkdf2_sha256$20000$fR63tiX5qtoi$PmjF8fRCACwLz5MR3rItOkkRo8soG+iDWb7x+F1+/xY=	\N	f	lgalin17	LuisAdrian	Galindo	name@example.com	f	t	2019-01-30 01:02:21.472174+00	5
1718	pbkdf2_sha256$20000$mzvc5wY8jRWZ$tz/kmzCB/de85iAurESEDe91YkANRJ5RfrNb0uCvX5U=	\N	f	aroble18	Alfonso	Robles	name@example.com	f	t	2019-01-30 01:02:21.497444+00	5
1719	pbkdf2_sha256$20000$QTdPwtrSukpM$LoTHcRfaSKEkmAP2K60zv2Kz/vqjJDqXkzuN/CT5Lsc=	\N	f	lancon19	Luciano	Ancona	name@example.com	f	t	2019-01-30 01:02:21.522469+00	5
1720	pbkdf2_sha256$20000$N2vRynCwxDOI$Axr3Xh+z8cAJ9PP8lBRMigjfz/dOjEWxgtEhRctYTvg=	\N	f	aperez20	Alejandro	Perez	name@example.com	f	t	2019-01-30 01:02:21.556073+00	5
1721	pbkdf2_sha256$20000$pg84b67Ot7na$+s8oPLUpJmFC59QY2Jh05gocTj0GdxKZCZ624yctzxE=	\N	f	aperez21	Andrea	Perez	name@example.com	f	t	2019-01-30 01:02:21.589433+00	5
1722	pbkdf2_sha256$20000$bSPkobdlZQGS$g/crGw2S9Og5KEVnQepmGWJ4BpFoNMpGer36zSJhn/Q=	\N	f	alober22	Andrea	Lobera	name@example.com	f	t	2019-01-30 01:02:21.622991+00	5
1723	pbkdf2_sha256$20000$X1JvIj7dCWYQ$nTy4M1+4wiSAE5ujNIzebTijCkc4g+r3eVApmnVgShw=	\N	f	lledes23	Luciana	Ledesma	name@example.com	f	t	2019-01-30 01:02:21.655656+00	5
1724	pbkdf2_sha256$20000$PC2bSycERSDP$ZDQsikrnETp+7QePn27E5zN1Lhmd8gLs6oXW6bWEbQw=	\N	f	hvacqu24	Helene	Vacque	name@example.com	f	t	2019-01-30 01:02:21.689709+00	5
1725	pbkdf2_sha256$20000$o7RZRDAVNBl7$pHaQfW1hTJ+JGmLGzD41L1zXxn9gDXrFpOjrWUQO7no=	\N	f	griver25	Gabriel	Rivera	name@example.com	f	t	2019-01-30 01:02:21.720678+00	5
1726	pbkdf2_sha256$20000$sPtv0AO0Sr1Y$4lcSJ3scXOaMQnj41u8DvXYSKrhqPniYAsZBn6ZziG4=	\N	f	bcummi26	Bruno	Cummings	name@example.com	f	t	2019-01-30 01:02:21.747639+00	5
1727	pbkdf2_sha256$20000$my18DveP3xnu$VwvzYEH7FCqFvgSSmLY8UjjTyJjXJyb/pPN0vc7iLPE=	\N	f	nperez27	Nicolas	Perez	name@example.com	f	t	2019-01-30 01:02:21.774253+00	5
1728	pbkdf2_sha256$20000$WaSpvi76kkHC$55IO5g6ySBHABfD0/qo99mn7UsxOwAQQdXGCR6f9snM=	\N	f	avacqu28	Aude	vacque	name@example.com	f	t	2019-01-30 01:02:21.800669+00	5
1729	pbkdf2_sha256$20000$qgGbmlTpKHhF$3Y4A5orRRb/0i8BuUU33rdYzk5sRDvboLDRC2Kx+hhI=	\N	f	pvacqu29	Paulina	Vacque	name@example.com	f	t	2019-01-30 01:02:21.826869+00	5
1730	pbkdf2_sha256$20000$mbK7fDJASYDH$5zKEMtO1LuGKql+/oZuBo+G/7n8lz9dtq/E+Js30x5Y=	\N	f	enoble30	Emilio	Noble	name@example.com	f	t	2019-01-30 01:02:21.852561+00	5
1731	pbkdf2_sha256$20000$nrzDZt6nAMVe$kH9gNl/UqJK3iu36LGvspCA5CWa9ioe0JPiiC28h0EA=	\N	f	vcorte31	Victor	Cortes	name@example.com	f	t	2019-01-30 01:02:21.878869+00	5
1732	pbkdf2_sha256$20000$GiUf326rl0Se$MByWw62cvKIw2Ev8oQTc3WO4e28buhCjrM9oYDSkUmI=	\N	f	agarci32	Alejo	Garcia	name@example.com	f	t	2019-01-30 01:02:21.905563+00	5
1733	pbkdf2_sha256$20000$TNkru5VGFhfC$6pptk7ww8ckdoBTYoOVtt8C1r+Y0JV0AJ94nguO2JXg=	\N	f	jrios33	JosePablo	Rios	name@example.com	f	t	2019-01-30 01:02:21.931836+00	5
1734	pbkdf2_sha256$20000$gJ9YB3tXuKCh$XrnIU35e7hF7V92DlrThUSQElFhdotBEBCo5NwhzXM4=	\N	f	imenio34	Isaure	Meniolle	name@example.com	f	t	2019-01-30 01:02:21.957754+00	5
1735	pbkdf2_sha256$20000$0zujerjKmO3M$HwGVsT0m+PtGdSf+dcYu6ajk7q1GwVCdOHdz6U2SOhs=	\N	f	pmenio35	Penelope	Meniolle	name@example.com	f	t	2019-01-30 01:02:21.984193+00	5
1736	pbkdf2_sha256$20000$vPFxQpNjLC2T$w0Dfz5uzvLeVXjQa1p3s4WlxzxNy8poyGXv0uvLJsug=	\N	f	tmenio36	Theodoro	Meniolle	name@example.com	f	t	2019-01-30 01:02:22.010461+00	5
1737	pbkdf2_sha256$20000$XoAZCyXI8A7m$OH7szZDyGqAav/OyRmdIVeonNkbX7kE+n3B6IJlRHGs=	\N	f	aperez37	Alberto	Perez	name@example.com	f	t	2019-01-30 01:02:22.036661+00	5
1738	pbkdf2_sha256$20000$zwJyhwjM4hGz$ffXelbZH4dqtGLj8/tEupVqPSsFvuFs49myFjmSAte8=	\N	f	bgarci38	Braulio	Garcia	name@example.com	f	t	2019-01-30 01:02:22.063249+00	5
1739	pbkdf2_sha256$20000$KNaXrYDfm8ta$a2IOXrxsoijnxeuBEjEIBVKeAdYiXQAG1HxvojsSm20=	\N	f	isuare39	Iñigo	Suarez	name@example.com	f	t	2019-01-30 01:02:22.090505+00	5
1740	pbkdf2_sha256$20000$s2efUSwCIzDp$5glxaxaDCQKOnb2UoOi80ZTH5fxhZ/B0DPvsrPA6q5Y=	\N	f	smadra40	Santiago	Madrazo	name@example.com	f	t	2019-01-30 01:02:22.117955+00	5
1741	pbkdf2_sha256$20000$D1KBVL6AEC6e$oqudk5+Pg5FvnNVDpt0LjjoYdlHpXJv7uKcSTyFOsbk=	\N	f	agarci41	alvaro	Garcia	name@example.com	f	t	2019-01-30 01:02:22.144693+00	5
1742	pbkdf2_sha256$20000$sMyeMuyZrX7M$JJL9tao9SZLVCiifVVQ+HOku1Phsf/GrglMBcwvcc6k=	\N	f	aferna42	Andres	Fernandez	name@example.com	f	t	2019-01-30 01:02:22.172548+00	5
1743	pbkdf2_sha256$20000$p5roLrmsBjxs$RpX7NFHbG4/8cW4ydyF5ThiM+vMwPM5nDw1gZbAYLqQ=	\N	f	emolin43	Eliott	Molin	name@example.com	f	t	2019-01-30 01:02:22.199752+00	5
1744	pbkdf2_sha256$20000$KDGohBnXTksT$f0GxSux6XWofGjujOUBByaOHjPYfIhDl+suBPYfCYtM=	\N	f	jlaron44	Julio	LaRondo	name@example.com	f	t	2019-01-30 01:02:22.226582+00	5
1745	pbkdf2_sha256$20000$Y6rSOiBIQUWz$HW39OCwpssZSFJKCjCh304i+1H394JEVmVaACaC2Dk0=	\N	f	sgarci45	Sebastian	Garcia	name@example.com	f	t	2019-01-30 01:02:22.25244+00	5
1746	pbkdf2_sha256$20000$9tDhD2wgz1jd$l2qHvnXbJRjYFKm+DmxWpguh2BatormorOPtwNOmbgo=	\N	f	srouxe46	Stan	Rouxel	name@example.com	f	t	2019-01-30 01:02:22.280238+00	5
1747	pbkdf2_sha256$20000$czrVqe7oJgkj$y8Q135hqVjQgyfzBWxFdFRNpQO2CMGkWgmcRvuWHwGk=	\N	f	eflore47	Emma	Flores	name@example.com	f	t	2019-01-30 01:02:22.305989+00	5
1748	pbkdf2_sha256$20000$YxNICXlGqVvu$DxqeMB0VIXar9y/Oi7zNW2jQYbP8NPNnvjmRCb6fqic=	\N	f	mamado48	Mateo	Amador	name@example.com	f	t	2019-01-30 01:02:22.332909+00	5
1749	pbkdf2_sha256$20000$ECAoT0boRHdu$6dgAxMSa2/wtFRHLZj8Rf5lX5oJJqC+zN80PSiqzrhc=	\N	f	rgaona49	Rodolfo	Gaona	name@example.com	f	t	2019-01-30 01:02:22.358511+00	5
1750	pbkdf2_sha256$20000$Leqci6kwDxjT$9QB3NjG1rLiLI4jzSQ/cB+a+DUevS6tT9kyG3d3YPZ8=	\N	f	jrosal50	JuanPablo	Rosales	name@example.com	f	t	2019-01-30 01:02:22.385352+00	5
1751	pbkdf2_sha256$20000$Rg8KbjAoxnKp$ET2Tm4/XKaCYbZeg2syPU/FuS0i/hKCts8PcF4Z9JdQ=	\N	f	amolin51	Antonio	Molina	name@example.com	f	t	2019-01-30 01:02:22.411691+00	5
1752	pbkdf2_sha256$20000$5axP4OXRSJfD$NE+y5m/r7WDOnuYjYcJPJV8vpi82E1eUrsj/y7g7EI0=	\N	f	motheg52	Matias	Othegui	name@example.com	f	t	2019-01-30 01:02:22.438382+00	5
1753	pbkdf2_sha256$20000$ckjpZ8c82Ljq$pu3ixJuQ8dsCw+MfHwSzhI8MlG+UaXVM7dPfV82oyJ8=	\N	f	aclark53	Alex	ClarkPerez	name@example.com	f	t	2019-01-30 01:02:22.464761+00	5
1754	pbkdf2_sha256$20000$wTxwp01kcAJ6$qJ5DQmK/biO3LBU+R8PL7nrh9ZfFukP3o78SmiwvjDY=	\N	f	pmolin54	Prune	Molin	name@example.com	f	t	2019-01-30 01:02:22.49269+00	5
1755	pbkdf2_sha256$20000$aechk6asWgsp$DnfdLK+smxOF8k1be5Janzpw0mHdRUmgcy7ZCxHXD88=	\N	f	sdumas55	Samuel	Dumas	name@example.com	f	t	2019-01-30 01:02:22.527603+00	5
1756	pbkdf2_sha256$20000$vQsl96829vgt$zJOyJfCcbDomjn5hTpw5qloP3w5tu00F+ohKuuhsTOM=	\N	f	sgomez56	Samara	Gomez	name@example.com	f	t	2019-01-30 01:02:22.568697+00	5
1757	pbkdf2_sha256$20000$0BykIGxBSr0P$Es4Njx3DhoRPxP8mwQWkMuBoClNLncfmPXE7DMoIm+Y=	\N	f	evilla57	Elena	Villagomez	name@example.com	f	t	2019-01-30 01:02:22.598032+00	5
1758	pbkdf2_sha256$20000$bURfA0ImfP6p$CzROzlHrnfIKWoz3oVmB08f+VSagnkmk7A0310FLn7o=	\N	f	ialegr58	Ioli	Alegre	name@example.com	f	t	2019-01-30 01:02:22.625316+00	5
1759	pbkdf2_sha256$20000$S90SwLPWqhTz$iP217HQz9v+zEhlx3jsEHGJW6nGaAZ7V7pQV8bWBjJ4=	\N	f	nobreg59	Nicolas	Obregon	name@example.com	f	t	2019-01-30 01:02:22.6536+00	5
1760	pbkdf2_sha256$20000$AFnAyAeeywHC$kvQHvHlLUQQ9hB2fitOHsrhEdCBCdpSUWo51XteX9Jg=	\N	f	ltisso60	Louis	Tissot	name@example.com	f	t	2019-01-30 01:02:22.680437+00	5
1761	pbkdf2_sha256$20000$uSMl0HOZ8Hbh$2fz7RqNLRjxbG196q6YTeXQFf7BcarOhgUIBg9lEBwg=	\N	f	egovel61	Eugenio	Govela	name@example.com	f	t	2019-01-30 01:02:22.707294+00	5
1762	pbkdf2_sha256$20000$pZber4MraeoW$aC8grpnpxw9+ZEI/rQb+YGRVWjU/XbfvGknUh1Lbsck=	\N	f	ldelfi62	Lucas	Delfino	name@example.com	f	t	2019-01-30 01:02:22.735149+00	5
1763	pbkdf2_sha256$20000$sm1DIUUCtVrh$+5zL587JpgmHqDBfMCt+29l8lzZfUF7Nb3MlkihNhLU=	\N	f	lgaona63	Lucia	Gaona	name@example.com	f	t	2019-01-30 01:02:22.768046+00	5
1764	pbkdf2_sha256$20000$GciCMCJCcfMt$FT7NnyY+kKxB2G6OevKcpG8+t5YahIom4E6t/MBAZbM=	\N	f	pvarel64	Pablo	Varela	name@example.com	f	t	2019-01-30 01:02:22.795877+00	5
1765	pbkdf2_sha256$20000$p1nDstmDFCGk$oDdwI0eUGorsd+Ex6YzZDogYBGYPvITLg5e4boc2S2c=	\N	f	pgaona65	Pia	Gaona	name@example.com	f	t	2019-01-30 01:02:22.82354+00	5
1766	pbkdf2_sha256$20000$zsjvJlqZCEhQ$NHyAMxdMRvLoCygcM3fXzz03cRHCuSPCMdvTqAvn/7U=	\N	f	lmarti66	LuisMario	Martinez	name@example.com	f	t	2019-01-30 01:02:22.850787+00	5
1767	pbkdf2_sha256$20000$FFxwZb5QoZtx$Jw1bZDl0hw243Fo62P7GF6R8XLwD2N3GOKedcj3g9EQ=	\N	f	jmarti67	Juan	Martinez	name@example.com	f	t	2019-01-30 01:02:22.878295+00	5
1769	pbkdf2_sha256$20000$qZy7FX71Fhpe$mSiracEO3tsoDfk1b1ia2iuv7GFSZ2soy990v8Itt1A=	\N	f	mronga69	Max	Ronga	name@example.com	f	t	2019-01-30 01:02:22.932068+00	5
1770	pbkdf2_sha256$20000$63NTEeT3d0pp$EzUdKg/dkLY97EVNfGoPf1e+inFunPEKECRcwhnfgXs=	\N	f	cpadro70	Cloe	Padron	name@example.com	f	t	2019-01-30 01:02:22.958896+00	5
1771	pbkdf2_sha256$20000$BX145FnfooaE$GfR/EmGIio9cbyqBjUWxm7LZS+8p3C0Ag6e7MbhUtlA=	\N	f	rperez71	Regina	Perez	name@example.com	f	t	2019-01-30 01:02:22.994566+00	5
1772	pbkdf2_sha256$20000$66nT2HSZDR6a$X9gzR5wp06CVp1i8upBB4w7J2BCqRU5hkThUKPiX71c=	\N	f	jjimen72	JoseIgnacio	Jimenez	name@example.com	f	t	2019-01-30 01:02:23.028171+00	5
1773	pbkdf2_sha256$20000$j1B6etCLL38U$mPmaEPKT4AS3ZXf+VsDB9WrwD0CVU1kJpYez/3VFdhk=	\N	f	agas73	Ameli	Gas	name@example.com	f	t	2019-01-30 01:02:23.054919+00	5
1774	pbkdf2_sha256$20000$iMkO1QSe0JBA$/jkJWYkolVssg0ocoJj8v79Wq3TqfPXO9aBtiZtuc5I=	\N	f	adonis74	Andrea	Donis	name@example.com	f	t	2019-01-30 01:02:23.082012+00	5
1775	pbkdf2_sha256$20000$sQ7RKeaKv5tK$D7xk3xFz3sSF9CH2tS+B57n+6zE/AwXmZ1NYfGNBgzI=	\N	f	hhelfe75	Hugo	Helfer	name@example.com	f	t	2019-01-30 01:02:23.108734+00	5
1776	pbkdf2_sha256$20000$HTG210CqQmFB$ughVvkzBtogEKGFBKDRhnPV9nnTdxuB7jYDz5FbELGw=	\N	f	bfrade76	Benet	Fradera	name@example.com	f	t	2019-01-30 01:02:23.134911+00	5
1777	pbkdf2_sha256$20000$Zp31VAqq7GuQ$+x5eOwdsBf41fhjXyoLfdF9cd8cXiNc9RHGFwV2/NKA=	\N	f	mcruz77	Monserrat	Cruz	name@example.com	f	t	2019-01-30 01:02:23.162687+00	5
1778	pbkdf2_sha256$20000$nYRQRPkAHqVy$1H3IinUaDW5BDaWRZji9Fs63FIvGuPX9X+vhu/B1NnY=	\N	f	mhelfe78	Mathis	Helfer	name@example.com	f	t	2019-01-30 01:02:23.188464+00	5
1779	pbkdf2_sha256$20000$6BI5nLaiB3vt$KMcvfDpML85Tfp3ApHfjcAL2nVDefxT9QXDPK7En+P0=	\N	f	bpuigl79	Bibiana	PuiglaCalle	name@example.com	f	t	2019-01-30 01:02:23.217929+00	5
1780	pbkdf2_sha256$20000$yCkospmdTIUP$qedrVydWrhW7hlu/RSEFyHlRq55FJr25Q0trLWG2qgY=	\N	f	gchoi80	Gaone	Choi	name@example.com	f	t	2019-01-30 01:02:23.245434+00	5
1781	pbkdf2_sha256$20000$RARQPo6nBkXP$HKQby1yxFoFnRak6hD+klDd24zZRCJZZTk+tdNnTMb0=	\N	f	jagull81	Jorge	Agullo	name@example.com	f	t	2019-01-30 01:02:23.271933+00	5
1782	pbkdf2_sha256$20000$tKNhJLerDXji$ROFSncOCGAYUtoTUfdlILiWsE7PokQRbGsq112HUtDc=	\N	f	jjimen82	Jose	JimenezTrujillo	name@example.com	f	t	2019-01-30 01:02:23.299169+00	5
1783	pbkdf2_sha256$20000$mYQD3HYj7Co4$8p5NYZr9m335oZXZzuX02q9CbXjvfD06HREQPHnak3I=	\N	f	erodri83	Eliseo	RodriguezGarcia	name@example.com	f	t	2019-01-30 01:02:23.325715+00	5
1784	pbkdf2_sha256$20000$jY2aFDeKUKrP$lvet1gm0r8bV05GzFbbvh4OO9Zq4Vcr4t5ZnQaYWXH8=	\N	f	psever84	Penelope	Severine	name@example.com	f	t	2019-01-30 01:02:23.351736+00	5
1785	pbkdf2_sha256$20000$lJvHb4baiFRo$tex4j2S91W/q7BSJ/Rxn4Hqt0LrnT/Og4JGRkWmVdjw=	\N	f	lhelfe85	Leane	Helfer	name@example.com	f	t	2019-01-30 01:02:23.378167+00	5
1786	pbkdf2_sha256$20000$kEjnvEdMwBcp$3otGvjQvfG727Ldll7rkjJI3CUJAJJQEI+hofbTT6wY=	\N	f	jsainz86	Joaquin	Sainz	name@example.com	f	t	2019-01-30 01:02:23.404792+00	5
1787	pbkdf2_sha256$20000$j6dG1PElB50A$gCEy2bgza7P6I+YgG72syUAXYdyLPpJVn0lCI4IZEQ8=	\N	f	dohea87	Daniel	Ohea	name@example.com	f	t	2019-01-30 01:02:23.43131+00	5
1788	pbkdf2_sha256$20000$34nQ6GA2OGoZ$UpIIo7bBHUiou/EJn5+sRohHU7BXvPKRkdQJsv4VRHM=	\N	f	ggovel88	Gonzalo	govela	name@example.com	f	t	2019-01-30 01:02:23.458843+00	5
1789	pbkdf2_sha256$20000$BxYAfIbKGafy$RtDhiL3Pcu7ZMfAXDL+FXpFLS3O/qU2KxxG4gg9j2gw=	\N	f	akawua89	Angie	Kawuasaki	name@example.com	f	t	2019-01-30 01:02:23.485157+00	5
1790	pbkdf2_sha256$20000$ZFRt70IVwDK4$606efmEgoQZPF3QTvudTdKOV8TdCW3JmOrc2p2dXpfY=	\N	f	jacost90	Jimena	Acosta	name@example.com	f	t	2019-01-30 01:02:23.512162+00	5
1791	pbkdf2_sha256$20000$DbkpEsE7Eg39$yUw5rqXywATX2g37850+fu5kZdoN/V0+GJrkW6f7KB8=	\N	f	ssusan91	Sabrina	Susan	name@example.com	f	t	2019-01-30 01:02:23.537929+00	5
1792	pbkdf2_sha256$20000$t6mddxpJEo8i$wQhxORY3xRiIEw1czg3c+jjgCp1M3YX2nQzqXQ7DM/I=	\N	f	aituar92	Aitana	Ituarte	name@example.com	f	t	2019-01-30 01:02:23.563899+00	5
1793	pbkdf2_sha256$20000$r9uYfsE45xBX$2xG04sEm9k7xA9XKMRCH5awBPZUU0cDUlQB2KSLi18I=	\N	f	mbravo93	Mariano	Bravo	name@example.com	f	t	2019-01-30 01:02:23.589128+00	5
1794	pbkdf2_sha256$20000$g1sosUDlYZHl$0jzyIvIokkV+NKj06L01PAMeEgOSdEsGh5Oz7b5lKFI=	\N	f	ppadil94	Pablo	Padilla	name@example.com	f	t	2019-01-30 01:02:23.616106+00	5
1795	pbkdf2_sha256$20000$Ou3LGRsDpKBW$FnvP/vciTbTfSV11FK3yOM04EOowl5MGeJGGPN1Nj/c=	\N	f	hhozoi95	Hayato	Hozoi	name@example.com	f	t	2019-01-30 01:02:23.641476+00	5
1796	pbkdf2_sha256$20000$hHvna9eZV74g$eMYti7mGKbEIcFS9v337hXl6VmXfkxhKiH11tU/x2jk=	\N	f	sdelos96	Sophia	delosangeles	name@example.com	f	t	2019-01-30 01:02:23.666938+00	5
1797	pbkdf2_sha256$20000$loQ7xeC2h0Am$x0qw5AIaWo1zBTWsEXJpO1uE0EhfILkGQd0v8tvTr8Q=	\N	f	vdarch97	Victor	Darchez	name@example.com	f	t	2019-01-30 01:02:23.693263+00	5
1798	pbkdf2_sha256$20000$WGOV9Fh986gh$9Vmt3SOFllW+zPv0y+puEjKSfC8UmegGiw3G68AZZBY=	\N	f	agomez98	Alaia	Gomez	name@example.com	f	t	2019-01-30 01:02:23.719933+00	5
1799	pbkdf2_sha256$20000$KSnvJYUdUzxA$pI9txyXLZhsHgIGvIAwkZigUHS895bm4nEE5cHZB8+k=	\N	f	gottal99	Gabriela	Ottalengo	name@example.com	f	t	2019-01-30 01:02:23.745513+00	5
1801	pbkdf2_sha256$20000$rfkqJ5SJ0pCz$HHB42YpURaEqRO3htw55bFMf7Q+9Ca0PY4t9KrKCMAc=	\N	f	mgovel01	Marcelo	Govela	name@example.com	f	t	2019-01-30 01:02:23.820493+00	5
1802	pbkdf2_sha256$20000$Q7KoiGxtbCjJ$o74W/VceM3OMk6Ed2h9rAkHDYVEKu52kew17VP2UG80=	\N	f	gholde02	George	Holden	name@example.com	f	t	2019-01-30 01:02:23.851934+00	5
1803	pbkdf2_sha256$20000$622cLmmPVrtr$WyTIJ3U43wHNFBRZWw8AQ1faqr3XipzLzw6CZD7Gm5I=	\N	f	fconch03	Francisco	Concha	name@example.com	f	t	2019-01-30 01:02:23.896371+00	5
1804	pbkdf2_sha256$20000$vvzIgxiKVe1C$8oDvw0uSMxZ05ept93e64PnxnGT7/mU+vjwTFN6gM2Q=	\N	f	mibarr04	Monica	Ibarra	name@example.com	f	t	2019-01-30 01:02:23.937849+00	5
1805	pbkdf2_sha256$20000$vZFZwAjmLRx3$jLQcyYfqufnVgFrmVvzq6SBhhEOCEmLBU7I3TqxTsXY=	\N	f	mchoi05	Mirie	Choi	name@example.com	f	t	2019-01-30 01:02:23.965055+00	5
1806	pbkdf2_sha256$20000$jl515g3upaoQ$P/dss0oTW/4oZ5yl1zLqEVBhhdXgxXmpMJX3kM/E0JU=	\N	f	cvelez06	Constanza	Velez	name@example.com	f	t	2019-01-30 01:02:24.003136+00	5
1807	pbkdf2_sha256$20000$heX7VzsIpxnb$GU05QrYUGDrVplsl1/Apkiu8ZD1f7eqyuYuwXReb790=	\N	f	apadil07	Alvaro	Padilla	name@example.com	f	t	2019-01-30 01:02:24.041537+00	5
1808	pbkdf2_sha256$20000$N9aVgsvJS9NG$aA++GSZF2enhrbi5HDUgImV4ADPS9Cub9uQSmjGibd4=	\N	f	pvilan08	Pablo	Vilanova	name@example.com	f	t	2019-01-30 01:02:24.078764+00	5
1809	pbkdf2_sha256$20000$QwG8FU8HCb2T$jTbkAa7oXYRwFIcFg/1hE2478JF1OH6E4Jyq48bw4Kg=	\N	f	egurza09	Emilia	Gurza	name@example.com	f	t	2019-01-30 01:02:24.103593+00	5
1810	pbkdf2_sha256$20000$pOT7O41qlxeR$glp6HocrqCdFZjg+xKDyE02/A7DujU11yU+0mzQXtZw=	\N	f	ddemo10	Demo	Demo	name@example.com	f	t	2019-01-30 01:02:24.129913+00	4
1812	pbkdf2_sha256$20000$Kd30U1O2LGxw$SU8Ai/D575qL5X0fkBEYLA0i3Mh46xW+XJC/isuH9Qw=	2019-01-30 06:12:40.727835+00	f	rrosas12	Ricardo	Rosas	name@example.com	f	t	2019-01-30 01:02:24.182756+00	4
1557	pbkdf2_sha256$20000$dagffR6GRuaP$1lCTox2tqm7P0NbycNYBQvrkez/MSQfgu9NldE8Jcts=	2019-02-28 15:52:34.222232+00	f	leonor2019	Leonor	Quiroz	name@example.com	f	t	2019-01-25 08:15:27.49643+00	3
1811	pbkdf2_sha256$20000$UIrtBJ06tgHO$zzvaxUSzbTWfujXQfe6A+cDr/nYhKgF1ccbsF52dxbs=	2019-02-13 18:15:55.133152+00	f	acruz11	Agustin	Cruz	name@example.com	f	t	2019-01-30 01:02:24.157288+00	4
1586	pbkdf2_sha256$20000$6PZOFeo7miaJ$J+WMWzWJk6uJ25JS7lbUEN3UrjXo6RXy5LcU7zQNcYs=	\N	f	ediaz86	Elena	Diaz	name@example.com	f	t	2019-01-30 01:02:18.047388+00	5
1	pbkdf2_sha256$20000$3bherqWjhbXt$AEV+D4Kdw7eNN0Hrq0eIA7Vn1WCP1DS39LwBpFHqwr0=	2019-02-28 23:24:26.64164+00	t	graham	Rene			t	t	2019-01-19 12:08:04.829606+00	1
1249	pbkdf2_sha256$20000$E8aRbS1HCoSl$UL9bPwWEtgVZfU2Ead9OGPhtDuoNU8ovXewXSUTyIXE=	2019-02-08 01:08:22.006826+00	f	pablozuñiga	Pablo Zuñiga	Pablo Zuñiga	name@example.com	f	t	2019-01-21 20:06:22.769305+00	4
978	pbkdf2_sha256$20000$TfimRuZxqkwM$4grL9mBmyZ2pIKHkl2csVWR0YAsdcG76VqQY3EDPe0s=	\N	f	978alonsoortiz	Alonso	Ortiz	demo@demo.com	f	t	2019-01-21 03:08:54.372274+00	5
1247	pbkdf2_sha256$20000$612Vc18rBppx$pPsuBx1sBtmBMiSbBmMcLewVSzgJXy/bvLSOFfqSfpw=	2019-02-06 18:11:19.976314+00	f	enriquedelapaz	Enrique de la Paz	Enrique de la Paz	name@example.com	f	t	2019-01-21 20:03:52.509376+00	4
1547	pbkdf2_sha256$20000$BwStr7jnT0YN$vI/U2s7Lzd7W+uBgoNaZY0v/dfE4+P+z58fX5MKbv7Y=	2019-02-14 20:44:43.1257+00	f	nuryruiz	Nury Ruiz 	  	name@example.com	f	t	2019-01-24 08:51:02.459555+00	4
1628	pbkdf2_sha256$20000$59hn6lsSXwOL$ozWv4AbVis/piHLpAivvfSaSrdaBKFnZUwZCfDSf/xM=	\N	f	jdozou28	Juan	Dozoul	name@example.com	f	t	2019-01-30 01:02:19.131962+00	5
1250	pbkdf2_sha256$20000$qEEnGZsJoMrK$W0SwF6VEiKhaz+fPFr7WdokesjQE11a9fYtNM+WhPlY=	2019-02-08 01:56:45.796325+00	f	gabrieladelarosa	Gabriela de la Rosa	Gabriela de la Rosa	name@example.com	f	t	2019-01-21 20:07:33.071265+00	4
1056	pbkdf2_sha256$20000$0ri4uoirvASn$w6Vk2dbaMmLiaxT03y3OWCZGjgIUKl4r3E8lV3SnCvw=	\N	f	aperezd7632 	Adrian 	Perez Diaz	demo@demo.com	f	t	2019-01-21 03:08:56.371087+00	5
1668	pbkdf2_sha256$20000$aTX7I4BLnhqT$tk56bx+WQXSjfaJKdTzzviaQxBuGNVeKJAZnPmEO72o=	\N	f	itremb68	Ines	Trembley	name@example.com	f	t	2019-01-30 01:02:20.186293+00	5
1669	pbkdf2_sha256$20000$nFVV2jBXDj0H$uEOlEcTzvfP6QC+B4IXZZMjTJC8ZkTC/FWzaJj3/GuQ=	\N	f	jaugus69	Jose	Augusto	name@example.com	f	t	2019-01-30 01:02:20.227764+00	5
1670	pbkdf2_sha256$20000$6qZGeVO5J9cS$voueeMuFzUp86pr20sG1q92K3A1nCNvYnw3h5NsKl5I=	\N	f	nguerr70	Nicolas	Guerrero	name@example.com	f	t	2019-01-30 01:02:20.255676+00	5
1671	pbkdf2_sha256$20000$v5haMPCy1ied$FO1jpRo1AciBtA3SOprePfFijMXaiwupF02qKK6/jj4=	\N	f	jdot71	Jocelin	Dot	name@example.com	f	t	2019-01-30 01:02:20.281261+00	5
1672	pbkdf2_sha256$20000$IOCMUV8GZcf3$ACn7yWjtc+5VWcY/GcniMo+JMIvOBQX0Hs1vCnqzyzw=	\N	f	egomez72	Emilio	Gomez	name@example.com	f	t	2019-01-30 01:02:20.307786+00	5
1673	pbkdf2_sha256$20000$WJ7ZSxWwSq4h$bEG1mZXwCFt9FWfyDNnU00yxJygRBY5nVUWUhNNGst4=	\N	f	mgomez73	Miguel	Gomez	name@example.com	f	t	2019-01-30 01:02:20.332124+00	5
1674	pbkdf2_sha256$20000$YaGqHzhjVc5V$5cEc+ofwwdRfEXWMxUCE9ElflE51EL5ACDxKbc/iOTI=	\N	f	tbodin74	Tomas	Bodin	name@example.com	f	t	2019-01-30 01:02:20.357237+00	5
1675	pbkdf2_sha256$20000$k3wzwjVCJl6x$fNWV80o1NLDkXJmu2Ja4aTKQTQjmrssz4i8YBw9B72Q=	\N	f	apuig75	Antonio	Puig	name@example.com	f	t	2019-01-30 01:02:20.382431+00	5
1676	pbkdf2_sha256$20000$55r1CgJud2aG$Vh7ubvWROLN8MfYQkUxWS9afs3vhnTDmefytuk7RTbA=	\N	f	nechev76	Natias	Echeve	name@example.com	f	t	2019-01-30 01:02:20.419308+00	5
1677	pbkdf2_sha256$20000$JfXTcpzLvlnv$BjPw6XqLv6qPOiFW1BxrrvgUeGSH0cwqveuHorLzABc=	\N	f	nalega77	Nicolas	Alegart	name@example.com	f	t	2019-01-30 01:02:20.460855+00	5
817	pbkdf2_sha256$20000$bw5V2OzcIOon$AEG6Q3StCDbawy5wrRovoPZ58WgLFugBzdXzKTVtyAY=	\N	f	817williamcordoba 	William 	Cordoba 	demo@demo.com	f	t	2019-01-21 03:08:50.254411+00	5
818	pbkdf2_sha256$20000$wlkbzvjcm1UY$M0fZTsgQe3ggE8JLcA37POmxhHEVLtEqs+CWQGq3J1I=	\N	f	818santiagosalgado	Santiago 	Salgado	demo@demo.com	f	t	2019-01-21 03:08:50.278532+00	5
819	pbkdf2_sha256$20000$q22kDWJ0RHq4$0C2atok4son4kBnAasUoCutFEgRU2kyT1kC++8Tzkyc=	\N	f	819rubenduarte 	Ruben	Duarte 	demo@demo.com	f	t	2019-01-21 03:08:50.308262+00	5
820	pbkdf2_sha256$20000$CRuHmQxDzzj7$7VlIs7XeJCpYw3eCHdzKLbuWDTuTIcnFQaqRjqKQMT4=	\N	f	820reneponce 	Rene	Ponce 	demo@demo.com	f	t	2019-01-21 03:08:50.331522+00	5
821	pbkdf2_sha256$20000$ZeNpEjxAf9P3$JrmH5JxKeod0sluKjWUVpJPGjoLwwTvXDWhFWPJ8MMY=	\N	f	821pablobarba 	Pablo	Barba 	demo@demo.com	f	t	2019-01-21 03:08:50.35978+00	5
822	pbkdf2_sha256$20000$DOCyhCXn4Y5y$XhrsjqlhNmVSHd56ctYh0Md1J+hJj+zpdVVKQ6GQ8P8=	\N	f	822luisjavier	Luis	Javier	demo@demo.com	f	t	2019-01-21 03:08:50.38365+00	5
823	pbkdf2_sha256$20000$SRM0DnKPDX7I$6SO+28l8mE+xyWz00tAFUOGW5R+R/6dBG05M/7Z2mt4=	\N	f	823fernandovazquez 	Fernando	Vazquez 	demo@demo.com	f	t	2019-01-21 03:08:50.407803+00	5
824	pbkdf2_sha256$20000$Zh0Rq1rDHj5Y$AEGkH2IB3YoBieLCmY7U3hbQNrWuatwWD31LerPcoMM=	\N	f	824fernandohernandez	Fernando	Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:50.432049+00	5
825	pbkdf2_sha256$20000$Ncym6bi2K1ic$9AivFgD55s5Mx4PmxJ1NEDs041qgTux110pJBDtPjMI=	\N	f	825eduardobautista 	Eduardo	Bautista 	demo@demo.com	f	t	2019-01-21 03:08:50.455886+00	5
826	pbkdf2_sha256$20000$hUu4XCqMgxS8$If55BPFAdVfP9g5i2mg6z3LOCYze9jAYnDzNJnxXh4U=	\N	f	826diegonava 	Diego	Nava 	demo@demo.com	f	t	2019-01-21 03:08:50.491499+00	5
827	pbkdf2_sha256$20000$y3oEz4z0YQxq$DBiR7zfddd9fyirM+5tU2qWeBckSBb/hP0cMlnUkCwY=	\N	f	827danielpineda 	Daniel	Pineda 	demo@demo.com	f	t	2019-01-21 03:08:50.515749+00	5
828	pbkdf2_sha256$20000$c4n81JoPhudU$4HoJ7CASnb9MmFMKI1fLjMLE57GEuiVXk70FOl2HK48=	\N	f	828axeljafet	Axel	Jafet	demo@demo.com	f	t	2019-01-21 03:08:50.539784+00	5
829	pbkdf2_sha256$20000$eMksPpFPvvd3$B2BqI+hYky4Zk82tC98aTZB62mv91l9WIniPur3cfKQ=	\N	f	829angelbecerril 	Angel	Becerril 	demo@demo.com	f	t	2019-01-21 03:08:50.563871+00	5
830	pbkdf2_sha256$20000$GcYutRNEaVNU$ebe/PlrkElSqqhV2crk4spCR26W6WS3dWAfUsIUhphY=	\N	f	830adriangonzalez 	Adrian	Gonzalez 	demo@demo.com	f	t	2019-01-21 03:08:50.592172+00	5
831	pbkdf2_sha256$20000$z2uNKytyPEbS$MEZa5ucgATXAwGgpr9LsFsvr3TmOsvZPS2aDSLAMpJw=	\N	f	831sebastianzaragoza	Sebastian	Zaragoza 	demo@demo.com	f	t	2019-01-21 03:08:50.61669+00	5
832	pbkdf2_sha256$20000$N19KHbH50rXz$v5/k/5T7DnLa+KpRYfvbAk+7F4Zw0Sxq1e0hNihUtnw=	\N	f	832santiagobastida 	Santiago	Bastida 	demo@demo.com	f	t	2019-01-21 03:08:50.640469+00	5
833	pbkdf2_sha256$20000$ICIeZ8FRuiyR$O6KjQqTUzrBs39buQGw9Eh74z7p5bVBbZh5yE1p4YvA=	\N	f	833rifkavillamizar 	Rifka	Villamizar 	demo@demo.com	f	t	2019-01-21 03:08:50.665805+00	5
834	pbkdf2_sha256$20000$8duxcfHEwHSJ$N1g52RRKjnppOSPUGAc4OYDvahFC5AQhD6oFxRnkWa8=	\N	f	834mateorodriguez 	Mateo	Rodriguez 	demo@demo.com	f	t	2019-01-21 03:08:50.69058+00	5
835	pbkdf2_sha256$20000$2oBa8WHyaKDE$j457aydPCX9kEwb6gVQvF40HZPWKmRBKwrwLXZ0Vdnw=	\N	f	835lukacervera 	Luka	Cervera 	demo@demo.com	f	t	2019-01-21 03:08:50.714738+00	5
836	pbkdf2_sha256$20000$HMjx6YWfVi0L$r8fFd1FVpVgpha51oLMOthjPVcRCLRygHxDLyekr1YU=	\N	f	836leonsanchez 	Leon	Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:50.740452+00	5
837	pbkdf2_sha256$20000$mIuvZ5o2b7pB$icWWxj4CjIcLqIyCUz08Ms4IPYLO9wAY7rRTZ1PpSxE=	\N	f	837juanduartesmith	Juan	Duarte Smith	demo@demo.com	f	t	2019-01-21 03:08:50.771445+00	5
838	pbkdf2_sha256$20000$Lr73YUNzvvS9$iq/5XxU2sHllcfFWqj0maIZ0IusG9kOALENni75NtpM=	\N	f	838jeronimorettig 	Jeronimo	Rettig 	demo@demo.com	f	t	2019-01-21 03:08:50.794964+00	5
839	pbkdf2_sha256$20000$LGEAT8WNRpBN$mUUmI8ZQe0vAQoGCu7lkjNYW2suUdLcebmKPVCE1Ago=	\N	f	839emavazquezmaya	Ema	Vazquez Maya	demo@demo.com	f	t	2019-01-21 03:08:50.818799+00	5
840	pbkdf2_sha256$20000$uIna1AarMV7X$KwdMORkZylm98yXu1V/SffNMtQRZCxpZiSBMNOJ21zE=	\N	f	840dominickfernandez	Dominick	Fernandez 	demo@demo.com	f	t	2019-01-21 03:08:50.844415+00	5
841	pbkdf2_sha256$20000$FFkgsJk6hVr8$ud4BkajHtXK2X5PQ6qifIiU7fh/7/Mei0MCX4WOZ5R8=	\N	f	841diegofabricebotto	Diego	Fabrice Bottois	demo@demo.com	f	t	2019-01-21 03:08:50.887256+00	5
842	pbkdf2_sha256$20000$3G7iIYciTuRw$sI6cQOC+U/ZEqWQP7/yGw9icKkH3/1tTV/aZIpE+Rtw=	\N	f	842arturoemilianorub	Arturo	Emiliano Rubi	demo@demo.com	f	t	2019-01-21 03:08:50.918599+00	5
843	pbkdf2_sha256$20000$j0xBdXaU2DVA$kHvrJRNYkuM3Iztteyvq5rHVXUcnalile7/EVfV2BmI=	\N	f	843alejandrouribe	Alejandro	Uribe	demo@demo.com	f	t	2019-01-21 03:08:50.94367+00	5
844	pbkdf2_sha256$20000$FQyT46BKMN2B$z9Y2K6/JmZELgBR2SxR8hi039QOxpX9FlvnOVMjUJSg=	\N	f	844rodrigofranciscom	Rodrigo	Francisco Merino 	demo@demo.com	f	t	2019-01-21 03:08:50.967447+00	5
845	pbkdf2_sha256$20000$xTokzCuIbkEy$0ENZkR/3NYew9tt6KPLoG7t1W/VnoX4F5KBTEdufI1M=	\N	f	845orlandosuarez 	Orlando	Suarez 	demo@demo.com	f	t	2019-01-21 03:08:50.993+00	5
846	pbkdf2_sha256$20000$bQ5VvjqTrd22$yBSeyVCbkK9e/aMRXX18dvGmWBsRkWQX7OLPvX9D/N0=	\N	f	846fernandovazquez 	Fernando	Vazquez 	demo@demo.com	f	t	2019-01-21 03:08:51.017073+00	5
847	pbkdf2_sha256$20000$Xk2aPmHZmyTk$JXmiKttYxegWdfszLBV9cfGoSL2DzLaru/BbQbyhWgU=	\N	f	847fernandohernandez	Fernando	Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:51.041356+00	5
848	pbkdf2_sha256$20000$aFclGbKCS81z$OY6bRcHQfj9+K1axDbkdhC5bOVWglBZC114kdoIklXE=	\N	f	848eduardobautista 	Eduardo	Bautista 	demo@demo.com	f	t	2019-01-21 03:08:51.066661+00	5
849	pbkdf2_sha256$20000$M9GoEt62jjwl$cnK+YWcS4Pdvi0ykfnenqqQDkOfmAmAjNbfb1BIXCFI=	\N	f	849diegonava 	Diego	Nava 	demo@demo.com	f	t	2019-01-21 03:08:51.091702+00	5
850	pbkdf2_sha256$20000$yE17gwhf2q0x$jPMbJc/npDezwjgSDQuc4BJSpoJBdNztsObJ0LscI5Q=	\N	f	850axeljafetperez	Axel	Jafet Perez	demo@demo.com	f	t	2019-01-21 03:08:51.115984+00	5
851	pbkdf2_sha256$20000$cUGITwwkQcmA$+gX3MfezeH26GMnYcFxtYI092o8qZYH/mPpm+6bjnN4=	\N	f	851axelcarrasco	Axel	Carrasco	demo@demo.com	f	t	2019-01-21 03:08:51.140209+00	5
852	pbkdf2_sha256$20000$XnXMnhhsDNYV$xe0zzK+YIrATLpuzAHFiLktZN4Lklo+GyD0OnwXxhRY=	\N	f	852valeriavillamizar	Valeria	Villamizar 	demo@demo.com	f	t	2019-01-21 03:08:51.164839+00	5
853	pbkdf2_sha256$20000$FplU4TfEe5lk$BS1s/aab2Y6V3Y0kTo21+6qKdBV7BnT4Ur8RaoPUa7k=	\N	f	853valeriagalan 	Valeria	Galan 	demo@demo.com	f	t	2019-01-21 03:08:51.189809+00	5
854	pbkdf2_sha256$20000$Bt9K50726AKO$TYQ61Bt/HBNqi+Ti5G09xF60rPBw5EwZgP1dzyxJOG0=	\N	f	854paolaperez 	Paola	Perez 	demo@demo.com	f	t	2019-01-21 03:08:51.214322+00	5
855	pbkdf2_sha256$20000$vKumxWSlL0kk$ZBP8xGysMQTUn4/GHMm1dvrcSvRoa6KXe+X+aoO9WP0=	\N	f	855nataliaperez 	Natalia	Perez 	demo@demo.com	f	t	2019-01-21 03:08:51.23877+00	5
856	pbkdf2_sha256$20000$qcGREpfDSSQW$NIwP6OaiAgMHqlZHjWoA5o5aXqtwUcwDVCb7dw9YsOM=	\N	f	856jeniferlopez 	Jenifer	Lopez 	demo@demo.com	f	t	2019-01-21 03:08:51.264216+00	5
857	pbkdf2_sha256$20000$c0LVOCWHk2zB$7TwmIIzfeD1ojUGCoAeBJWi+ncvQSo4DT6+zgA0ndo0=	\N	f	857ethelrubilopez	Ethel	Rubi Lopez	demo@demo.com	f	t	2019-01-21 03:08:51.292698+00	5
858	pbkdf2_sha256$20000$Ha71pXGzWsLj$BqFUNbn9K1JpfjCqOFBbLE6jgfrVJLJGyCkfeSXRko0=	\N	f	858danielareygadas 	Daniela	Reygadas 	demo@demo.com	f	t	2019-01-21 03:08:51.316512+00	5
859	pbkdf2_sha256$20000$iqZnC93sEfe9$DJ4N1vcN5TRh4kIXHzoUy1k1uTwov/OFBSgsT3gH6Bg=	\N	f	859arantzagalan	Arantza	Galan	demo@demo.com	f	t	2019-01-21 03:08:51.340364+00	5
860	pbkdf2_sha256$20000$MFHnguFulcus$nSg+DfJndD9DSwWIMrTRosHF6thuNyQDJZgKctaM2ZY=	\N	f	860victoranaya 	Victor	Anaya 	demo@demo.com	f	t	2019-01-21 03:08:51.364124+00	5
861	pbkdf2_sha256$20000$wCi3nAiFReJw$e43rvRRB1gWHrrReAcRS1tJIq8qImC8V7RKsyKd3bDM=	\N	f	861leonardorios 	Leonardo	Rios 	demo@demo.com	f	t	2019-01-21 03:08:51.387736+00	5
862	pbkdf2_sha256$20000$3nWGpE6MKJtD$X8b1aicbbSoNVG2FkR49VzekwxpXW+MzxUE91xxXyB4=	\N	f	862josemiguelmendoza	Jose Miguel	Mendoza	demo@demo.com	f	t	2019-01-21 03:08:51.4118+00	5
863	pbkdf2_sha256$20000$WPEhDaYODUfP$h01Yk85Dp4JIx9NFE/bUpjXvEwf+Z5WOIRGlwoEPr8c=	\N	f	863josefernandopiña	Jose Fernando	Piña	demo@demo.com	f	t	2019-01-21 03:08:51.435512+00	5
864	pbkdf2_sha256$20000$MXmxAiF8gQFr$OGQhvWmCVRUDp12FU82wtq865QmkCr7vvH4ooynHNXI=	\N	f	864javieremiliopetoz	Javier Emilio	Peto Zamora	demo@demo.com	f	t	2019-01-21 03:08:51.458992+00	5
865	pbkdf2_sha256$20000$hpSTuAQw1uLx$ENkrSXCqu5p0kCyjQmY0vPz8VQfkQja0wJFxsiKk3nk=	\N	f	865javierdiaz 	Javier	Diaz 	demo@demo.com	f	t	2019-01-21 03:08:51.482468+00	5
866	pbkdf2_sha256$20000$9hKa7F8ebNWx$2jlEOAvQTRKYcdloltST7LKThD2DTaq36v8Iuf6iAcI=	\N	f	866gabrielruiz 	Gabriel	Ruiz 	demo@demo.com	f	t	2019-01-21 03:08:51.506384+00	5
867	pbkdf2_sha256$20000$mxul73aesNzr$2ZjTFgRv3EaLF1Rcf7G1wBQwK4xuY2NzYYzPw/BDv2s=	\N	f	867elliotferruzca 	Elliot	Ferruzca 	demo@demo.com	f	t	2019-01-21 03:08:51.530299+00	5
868	pbkdf2_sha256$20000$0J8YPStg5W1N$eJVTgWnzgD3Uyo1OlAhvCWicX1SeediQsZiQrsTyW3c=	\N	f	868diegoperez 	Diego	Perez 	demo@demo.com	f	t	2019-01-21 03:08:51.553802+00	5
869	pbkdf2_sha256$20000$IZeefzDpVstd$sUdYMhMndbFEcFOXvnxhZ/p6/aGbZdmmknTqHFxfCOI=	\N	f	869diegomartinez 	Diego	Martinez 	demo@demo.com	f	t	2019-01-21 03:08:51.577407+00	5
870	pbkdf2_sha256$20000$jAEaZHOzXUe0$GUjI5IodFIr8uL8ZiCi5gRp3r4KhaYybU8k+ehDp4WA=	\N	f	870carlosortiz 	Carlos	Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:51.604095+00	5
871	pbkdf2_sha256$20000$u4D5aqq46oLf$qnm0l0tqWGeKFVpMdQeStZ6BAaWFSpcVZboEb0YTi08=	\N	f	871calebperez 	Caleb	Perez 	demo@demo.com	f	t	2019-01-21 03:08:51.634917+00	5
872	pbkdf2_sha256$20000$MOALELfmfiwB$p8YkWEhQ2wtQwDJ3Egt3jftgZrHYM0YTfGseWEbY7wk=	\N	f	872brunocastro 	Bruno	Castro 	demo@demo.com	f	t	2019-01-21 03:08:51.66503+00	5
873	pbkdf2_sha256$20000$kQEtAMpB3DcO$9VTKNFbZlTA1LIR6yPpluW9G1YKzVAg2c839YxjLqKw=	\N	f	873bernardoquiroz	Bernardo	Quiroz	demo@demo.com	f	t	2019-01-21 03:08:51.690357+00	5
874	pbkdf2_sha256$20000$5VFSWzrSqpp1$iF30dQb5O9G2ka8zTU9bbpc50ygDMCSV8HSGov/qqVM=	\N	f	874yoavalexeiperez	Yoav	Alexei Perez	demo@demo.com	f	t	2019-01-21 03:08:51.714644+00	5
875	pbkdf2_sha256$20000$TVCSlnVrp97n$g6PEAd6NuhZDq6CqfIjCP+FdqRMP11seGPAkT61rC5o=	\N	f	875santiagozaragoza 	Santiago	Zaragoza 	demo@demo.com	f	t	2019-01-21 03:08:51.740852+00	5
876	pbkdf2_sha256$20000$QZBmIIYWzY1Z$tFdgHQFslpAPvSKdvBhvezAO2gAYkzM3otelWxrdtto=	\N	f	876santiagoolmedo 	Santiago	Olmedo 	demo@demo.com	f	t	2019-01-21 03:08:51.765776+00	5
877	pbkdf2_sha256$20000$PStVAbwDl8Rb$ROCf2ZlEAvrDFtzSnXkxajFsxs+BOPaiDOlQhTZnOmM=	\N	f	877santiagogomez 	Santiago	Gomez 	demo@demo.com	f	t	2019-01-21 03:08:51.789704+00	5
878	pbkdf2_sha256$20000$j6WdmkG28vMX$eSgsrzVn+i2bARRueBcnJSRXOxyn9mPEX3EsKcR84i8=	\N	f	878robertosanchez 	Roberto	Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:51.81385+00	5
879	pbkdf2_sha256$20000$DbmnS6p6hxMN$cmu5eWFZaDFNBK3ZbIiJKHhShMeJQKTN9mWwhHCdB3U=	\N	f	879rafaelrivapalacio	Rafael	Rivapalacio 	demo@demo.com	f	t	2019-01-21 03:08:51.849867+00	5
880	pbkdf2_sha256$20000$7gX1teXzKaia$bLTw0HdaQlH0Owu7pqKii35LSVs8t11aIDkn5sQZ0dw=	\N	f	880patricioislas 	Patricio	Islas 	demo@demo.com	f	t	2019-01-21 03:08:51.873982+00	5
881	pbkdf2_sha256$20000$NEHigl3lVTAd$8ypjHVLCGDJ7THke4Szm5iDdSTjYxdq0NU/5mk7VQeM=	\N	f	881pablobastida 	Pablo	Bastida 	demo@demo.com	f	t	2019-01-21 03:08:51.897398+00	5
882	pbkdf2_sha256$20000$DfSNmgXfYX1K$2kC1y4wlDgMdVENVal/WLFXDwcUpAJcvki7kfbcOfTw=	\N	f	882mateotrias 	Mateo	Trias 	demo@demo.com	f	t	2019-01-21 03:08:51.921057+00	5
883	pbkdf2_sha256$20000$nMrdAYCNLGyR$KHqAAnJ2Pu5zeRbvLm2Qaj5LC73D4iXmJZV/+FS0je0=	\N	f	883martinjurado 	Martin	Jurado 	demo@demo.com	f	t	2019-01-21 03:08:51.944935+00	5
884	pbkdf2_sha256$20000$YeFxQMH8AzaH$5L0CVueX2xzkd+lAH9uImOwIPfYmt//uL/kxzPXM8SA=	\N	f	884lucianoromero 	Luciano	Romero 	demo@demo.com	f	t	2019-01-21 03:08:51.969599+00	5
885	pbkdf2_sha256$20000$TU8dkDflSn6e$tLB7W8+sXGJpbVV3Q0Uz7BsbclapEEsuPfyemJcP2FU=	\N	f	885julioalfonzoalvar	Julio Alfonzo	Alvarez	demo@demo.com	f	t	2019-01-21 03:08:51.993558+00	5
886	pbkdf2_sha256$20000$LLrIlzs04gNv$u11Rdl3TcuWFq+eropOLDK4sSqa2ZPEJ4G8oVShULcA=	\N	f	886josemariasalgado	Jose Maria	Salgado	demo@demo.com	f	t	2019-01-21 03:08:52.017199+00	5
887	pbkdf2_sha256$20000$ZQNC3433QlBx$hyT2HLfCK1CEhOex4ICYBR7toOX0k5NM5FPcbyEd0Jg=	\N	f	887joseemilianomuñoz	Jose Emiliano	Muñoz	demo@demo.com	f	t	2019-01-21 03:08:52.040725+00	5
888	pbkdf2_sha256$20000$Q4nRWEdqyUHj$+xf2PFIIbchs9c/xkOa9x9jFXHJoVozzZwvtDxcIJ0g=	\N	f	888gabrielruiz 	Gabriel	Ruiz 	demo@demo.com	f	t	2019-01-21 03:08:52.064475+00	5
889	pbkdf2_sha256$20000$eTEPGatB4AaX$aF/aCu06ksb0gduykT1Wx2DZNH7LjoLrEzCxoOd08Yc=	\N	f	889emilioisrael 	Emilio	Israel 	demo@demo.com	f	t	2019-01-21 03:08:52.088409+00	5
890	pbkdf2_sha256$20000$rX0R9V35BiJU$/crblWg1uUetqvx6FGSOdxsPLIlzbnzHGLHUlkMLgZc=	\N	f	890eduardopeña 	Eduardo	Peña 	demo@demo.com	f	t	2019-01-21 03:08:52.11205+00	5
891	pbkdf2_sha256$20000$BosYE3Z1aPax$d5Gu3oNkowqG05wBO8EDajJCpJ/6znxoTDyjyKLSKXs=	\N	f	891brunouribe 	Bruno	Uribe 	demo@demo.com	f	t	2019-01-21 03:08:52.135832+00	5
892	pbkdf2_sha256$20000$JYw3dsanBqg8$se9vdPOHEBcT/rnwQ8Ap5rcybNOOQT0LaGq8dMtua10=	\N	f	892brunomartinez 	Bruno	Martinez 	demo@demo.com	f	t	2019-01-21 03:08:52.159585+00	5
893	pbkdf2_sha256$20000$k2CWVTurMMxS$znqtI++hWD7Rx2cVIiUXjgK9CYF4uaVodHHnY7k4ftM=	\N	f	893angelgabrielsanch	Angel Gabriel	Sanchez	demo@demo.com	f	t	2019-01-21 03:08:52.185146+00	5
894	pbkdf2_sha256$20000$EuPLuTJwHBZr$AZq1RwVFx5gFdXY81nbMdHvW+abU2AyKxKcEJaeBjDo=	\N	f	894alonsoortiz	Alonso	Ortiz	demo@demo.com	f	t	2019-01-21 03:08:52.209353+00	5
895	pbkdf2_sha256$20000$1gLoesC6GWdD$Zxu1g4791vK4kTGHZNwuHi1CmiT+B9+6H1kDdzI2RQI=	\N	f	895valeriavillamizar	Valeria	Villamizar 	demo@demo.com	f	t	2019-01-21 03:08:52.233361+00	5
896	pbkdf2_sha256$20000$Q4idNCItlK1B$Wn1GObW6jpP2qKJmwD8skkeW3UxL3t/ckom35yhEvao=	\N	f	896santiagozaragoza 	Santiago	Zaragoza 	demo@demo.com	f	t	2019-01-21 03:08:52.257695+00	5
897	pbkdf2_sha256$20000$ipkAUvEfZj2W$e3hoxGik5pTY/rI4pj4DMV61OiggctmAdxYXqYuy6Q8=	\N	f	897santiagoolmedo 	Santiago	Olmedo 	demo@demo.com	f	t	2019-01-21 03:08:52.284815+00	5
898	pbkdf2_sha256$20000$CkRWTyUNMuy3$Z5qqpFyxIKc3wxT/0/e7AVI7DQy7WGuYnaLsAt3/WjU=	\N	f	898saidcasab 	Said	Casab 	demo@demo.com	f	t	2019-01-21 03:08:52.314505+00	5
899	pbkdf2_sha256$20000$UhnoKbSRPAjZ$tD2WD30N4HKWG7Z1QIUTBFwoM5yDarGouV/eYGF1w+8=	\N	f	899rodrigobaez 	Rodrigo	Baez 	demo@demo.com	f	t	2019-01-21 03:08:52.350077+00	5
900	pbkdf2_sha256$20000$APc2g4EoShJM$bKhIKZbwlF61StOB8nwlIrDOBIKfhkLbCk36Jg/Ug68=	\N	f	900patricioramirez 	Patricio	Ramirez 	demo@demo.com	f	t	2019-01-21 03:08:52.373794+00	5
901	pbkdf2_sha256$20000$5x254AadNjzT$VzTaGXaVQrhr+5VPORxr9a888Zc2mqJet6kuAf16BF8=	\N	f	901nicolasvillareal 	Nicolas	Villareal 	demo@demo.com	f	t	2019-01-21 03:08:52.39806+00	5
902	pbkdf2_sha256$20000$Wa7fProTi0Hk$2yR99susjEb6ZwV0kkmftoL19716FJDmh9Sjk/Gsvh4=	\N	f	902nicolasvarela 	Nicolas	Varela 	demo@demo.com	f	t	2019-01-21 03:08:52.421509+00	5
903	pbkdf2_sha256$20000$xx6BocQCpHqC$7CsklXIebQMtp4ng684VY280W1M/ekgh1wp9j07G8mo=	\N	f	903matiasvazquezmaya	Matias	Vazquez Maya	demo@demo.com	f	t	2019-01-21 03:08:52.44505+00	5
904	pbkdf2_sha256$20000$JwkMI7ws4wiZ$hZ55jbhmcm963SnWqFP8JoQ1aFgvKzfceHlqnGzem8o=	\N	f	904martinjurado 	Martin	Jurado 	demo@demo.com	f	t	2019-01-21 03:08:52.471032+00	5
905	pbkdf2_sha256$20000$Vtlc065QI6im$Yo/ziIWn8fkLtcDKv/A1maIQgSem6dHoGPJ7g6NJojc=	\N	f	905lucianoromero 	Luciano	Romero 	demo@demo.com	f	t	2019-01-21 03:08:52.49856+00	5
906	pbkdf2_sha256$20000$hVG4upvgJ8bp$P5Ych+fHJVBQTK8fzCwJydqOL2arz3xlwkz8OIBQEYA=	\N	f	906leonsanchez 	Leon	Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:52.523836+00	5
907	pbkdf2_sha256$20000$bBURhE1PZBV5$G8mCJHFs6U1JAwIijsWW0K/guoi1tuDajxcNIdT2GZ4=	\N	f	907juanpabloflores	Juan Pablo	Flores	demo@demo.com	f	t	2019-01-21 03:08:52.548647+00	5
908	pbkdf2_sha256$20000$hvMwuFQrW83V$HWPruPYbzK8I3I5We/gpxIXVvIBi1CM6jGlnEbjuS+w=	\N	f	908juancarlosmartine	Juan Carlos	Martinez	demo@demo.com	f	t	2019-01-21 03:08:52.572795+00	5
909	pbkdf2_sha256$20000$WFOEKCdd4ZNN$nji62sFEENI1iO0NgJTHOgozRvaDqPvmWWieo0+vRfQ=	\N	f	909josepabloochoa	Jose Pablo	Ochoa	demo@demo.com	f	t	2019-01-21 03:08:52.598083+00	5
910	pbkdf2_sha256$20000$sk0KRD879KTZ$ef8mMALkV9Fw+zE//Y5m6m/dJxdbD5PBFoqz3bHgcH0=	\N	f	910jorgeemilianogarc	Jorge Emiliano	Garcia	demo@demo.com	f	t	2019-01-21 03:08:52.622547+00	5
911	pbkdf2_sha256$20000$IaJjQ22qkSMj$yqGsBmTRnC8Te6wHL2DxS2HofuX70/G35r49V80BPnc=	\N	f	911ikerhidalgo 	Iker	Hidalgo 	demo@demo.com	f	t	2019-01-21 03:08:52.64699+00	5
912	pbkdf2_sha256$20000$z6k2cYb1Crls$Uv/ntY78rMvWwdc0SFjxpYgz1rFgyvpoYo0w9Z2wB6E=	\N	f	912ikercastro 	Iker	Castro 	demo@demo.com	f	t	2019-01-21 03:08:52.671495+00	5
913	pbkdf2_sha256$20000$jRdsoTNfBP4b$VS1aMxVbO/dPHVW/w1YFs+fIzeSD0Mb0h3MU4sTzt8o=	\N	f	913hectorivanrivera	Hector Ivan	Rivera	demo@demo.com	f	t	2019-01-21 03:08:52.695762+00	5
608	pbkdf2_sha256$20000$0IPfYoN4t9jA$WgvkPIHicB+l/Tgzd8Kw3heVOxpqiubXF95/4wh5QVM=	\N	f	608joelcortes 	Joel	Cortes 	demo@demo.com	f	t	2019-01-21 03:08:44.927618+00	5
609	pbkdf2_sha256$20000$DuvPt5hvN0uX$4MJUaMDMHSQsOHfNJONYnD+h/laxTwOvLVyZKRsVUzY=	\N	f	609joaquinraab 	Joaquin	Raab 	demo@demo.com	f	t	2019-01-21 03:08:44.952647+00	5
610	pbkdf2_sha256$20000$n5gKNukcrURf$MXOADHS6Qmhd0hloPKeRGj7LqVQK7xsp2IosSNvCDsU=	\N	f	610erichjacobsen 	Erich	Jacobsen 	demo@demo.com	f	t	2019-01-21 03:08:44.976927+00	5
611	pbkdf2_sha256$20000$XsXKxu7X1BME$mazIzeAGLvn0gvcHw2kiz9cT4PV5IVimVYyIbL8YcYU=	\N	f	611emmavalencia 	Emma	Valencia 	demo@demo.com	f	t	2019-01-21 03:08:45.002015+00	5
612	pbkdf2_sha256$20000$WQ7gEwotaORr$nzQrdgWzWZx/Jff1E+r+7jtEMSXfScyWBbT6rUCrDyU=	\N	f	612emmatorres 	Emma	Torres 	demo@demo.com	f	t	2019-01-21 03:08:45.02676+00	5
613	pbkdf2_sha256$20000$AuEQ36DOvRnU$K6mMxIT4vBXbUnNwk1+ryeHF5q114A1bYIiZcRyDDlk=	\N	f	613emmajoseph 	Emma	Joseph 	demo@demo.com	f	t	2019-01-21 03:08:45.051569+00	5
614	pbkdf2_sha256$20000$rFsEkxJVltgj$xpruSr+jN9+sctIKyNyIx+A4LAZHAPQB+37bBwZ7ijA=	\N	f	614eduardoargûelles 	Eduardo	Argûelles 	demo@demo.com	f	t	2019-01-21 03:08:45.076084+00	5
615	pbkdf2_sha256$20000$U4uKCZhe3Hqd$CSdgMSySukEfmpYRgOHJurDK1MHhmrN3sNfZguNIO0M=	\N	f	615cristobalheredia 	Cristobal	Heredia 	demo@demo.com	f	t	2019-01-21 03:08:45.101185+00	5
616	pbkdf2_sha256$20000$kpRMIhap3wdl$wKXZ8Oe7sb7zQpWohsNQaVYYPBl0FkC+cnK8+3eFYww=	\N	f	616cayetanasanchez 	Cayetana	Sanchez 	demo@demo.com	f	t	2019-01-21 03:08:45.126688+00	5
617	pbkdf2_sha256$20000$VWH2SIe1JaOa$UQZ2TvIqRbm2rh3uHaWsp3cePA78EcpIqexqjbdPLoY=	\N	f	617bernardojoseph 	Bernardo	Joseph 	demo@demo.com	f	t	2019-01-21 03:08:45.152228+00	5
618	pbkdf2_sha256$20000$PX5w4JTJ6dzS$Ozk2oilwNjaODcT+y+J5bzLszKLcf2GiUhxxksFOdGI=	\N	f	618andrèsalazar 	Andrè	Salazar 	demo@demo.com	f	t	2019-01-21 03:08:45.177093+00	5
619	pbkdf2_sha256$20000$Gg1E6X7JPQqg$AtoaFUPvB/v0OLWIlbj2WQNB0bAKZDf5va5uzcMVET8=	\N	f	619anajimenaraab	Ana Jimena	Raab	demo@demo.com	f	t	2019-01-21 03:08:45.203284+00	5
620	pbkdf2_sha256$20000$4lEQHGm4ecmS$or3yTzm2gvDjrnDP1deYe1lD2ocGrIk3ZbtDxEPHSbg=	\N	f	620sophiacarbajal 	Sophia	Carbajal 	demo@demo.com	f	t	2019-01-21 03:08:45.227634+00	5
622	pbkdf2_sha256$20000$iNr05CY97ffv$rVTIyrEJgU7aI3DAzPhck2LCWjntIBCJLNxkWx768kQ=	\N	f	622sebastianamador 	Sebastian	Amador 	demo@demo.com	f	t	2019-01-21 03:08:45.276399+00	5
623	pbkdf2_sha256$20000$z5107aMxmYO1$lx5vZvXAOZPtK6QHlXVzaPXSHk3MDwCwHAAnnjNS+l0=	\N	f	623santiagocalderon 	Santiago	Calderon 	demo@demo.com	f	t	2019-01-21 03:08:45.30091+00	5
624	pbkdf2_sha256$20000$uYpovDeaX81p$IXzRNUH71SO64H5Azkyyy8GiCLFIbPILdbOdjR4BRtA=	\N	f	624santiagobernal 	Santiago	Bernal 	demo@demo.com	f	t	2019-01-21 03:08:45.325523+00	5
625	pbkdf2_sha256$20000$LvTTGZDHjq7F$oaB/Q5HFLktFCvneWwvlPhjm1quIc0sj6Slzj6E/Yj0=	\N	f	625pabloluz 	Pablo	Luz 	demo@demo.com	f	t	2019-01-21 03:08:45.349933+00	5
626	pbkdf2_sha256$20000$KtAWThMHaaEY$N5VJwcIyKoRVq3kpnb4z/gYahhKSZONPOvSAKFiEKQU=	\N	f	626milabeltran 	Mila	Beltran 	demo@demo.com	f	t	2019-01-21 03:08:45.397793+00	5
627	pbkdf2_sha256$20000$3QDPjNpuf9V6$ccYBAlhGFvUSi9DErZn2WagNpUceeMTpF1NUnhIqQuM=	\N	f	627mateocalderon 	Mateo	Calderon 	demo@demo.com	f	t	2019-01-21 03:08:45.421749+00	5
628	pbkdf2_sha256$20000$qdWb3cFZxiNL$GhmrbtNQ+4i7Wz07fFY5pCFwEzjUPDjgYRCjFFI0HQI=	\N	f	628lorenzolinares 	Lorenzo	Linares 	demo@demo.com	f	t	2019-01-21 03:08:45.445801+00	5
629	pbkdf2_sha256$20000$2V5mx58sOwl4$YFtqWCAwtRXI4D2BLcn+pqeA0987E/MR+Ov9yxCWoeU=	\N	f	629linuswillmans 	Linus	Willmans 	demo@demo.com	f	t	2019-01-21 03:08:45.470292+00	5
630	pbkdf2_sha256$20000$swBHx1mKXQz1$G8DMYyNU5NkAC+V1s5pN3dCnBgdJFapkpjfpkLXdbA0=	\N	f	630leandrobrailovsky	Leandro	Brailovsky 	demo@demo.com	f	t	2019-01-21 03:08:45.50057+00	5
631	pbkdf2_sha256$20000$MAbk8dh1h93i$fWCDWhhacScZ+isl132kx7HDpdzKPC7W08/TlqpQQZA=	\N	f	631leahcastelan 	Leah	Castelan 	demo@demo.com	f	t	2019-01-21 03:08:45.525025+00	5
632	pbkdf2_sha256$20000$NUOshDMHff7P$54inoOe76RFzY06AWwvVHEcVDg0yqqDF34z76xSk0N0=	\N	f	632julietalinares 	Julieta	Linares 	demo@demo.com	f	t	2019-01-21 03:08:45.54923+00	5
633	pbkdf2_sha256$20000$SrNu039qkwd3$wMLwuszHCD2maETWWMfJjBAAIJ67eCQO230cSD8y2UI=	\N	f	633julianhernandez 	Julian	Hernandez 	demo@demo.com	f	t	2019-01-21 03:08:45.573447+00	5
634	pbkdf2_sha256$20000$YmzS9EUFwRJw$IfZz4+Tg9pL1OfyzmC9xxDaf9XRX/fwgdJjudqjv1qs=	\N	f	634juliawillmans 	Julia	Willmans 	demo@demo.com	f	t	2019-01-21 03:08:45.598544+00	5
635	pbkdf2_sha256$20000$HVEAKzSZ7EB6$pW4hcSt6N9SF/uOuImrSuI7yBJfNNWYmVGLmua1uxfY=	\N	f	635juanmiguelarce	Juan Miguel	Arce	demo@demo.com	f	t	2019-01-21 03:08:45.625341+00	5
636	pbkdf2_sha256$20000$5Pqzh1YKLSbk$yXXXFaqfdI+AN8El1Tvsjhw/WxG7Y4Fh23gVVwxSIJQ=	\N	f	636elizabethcota 	Elizabeth	Cota 	demo@demo.com	f	t	2019-01-21 03:08:45.649818+00	5
637	pbkdf2_sha256$20000$JdPbXP98foRK$QKXaPsHtqSDhCzKj8mTB8P1YjiJJ1axp6YHg+kmB99w=	\N	f	637danielnuñez 	Daniel	Nuñez 	demo@demo.com	f	t	2019-01-21 03:08:45.674142+00	5
638	pbkdf2_sha256$20000$6VneBfpLc9lg$Cv6TR2eT7VTghJsZM5asP+uHTafPcmzaBjDmiJDc8CY=	\N	f	638bernardoalvarez 	Bernardo	Alvarez 	demo@demo.com	f	t	2019-01-21 03:08:45.69821+00	5
639	pbkdf2_sha256$20000$IVCGcmZwnryU$QcsyQ4ed3bgZJ9k//cQnXK3VxqOsszFQzqUwpgL3MTE=	\N	f	639andreacuevas 	Andrea	Cuevas 	demo@demo.com	f	t	2019-01-21 03:08:45.722948+00	5
640	pbkdf2_sha256$20000$RmlvSvJgEh4D$XKED2ADSZORN/6eI5SGOJU43tQLMU2lRzrE4Bt53FGE=	\N	f	640anaambrosi	Ana	Ambrosi	demo@demo.com	f	t	2019-01-21 03:08:45.752042+00	5
641	pbkdf2_sha256$20000$1uVBe68uZOk7$9Ay3qNBal5W4+GxKrRRkRzEdugY6NNqKd1ockmyl7wA=	\N	f	641anagabrielavazque	 Ana Gabriela	Vázquez Esponda	demo@demo.com	f	t	2019-01-21 03:08:45.776944+00	5
642	pbkdf2_sha256$20000$acvbyl5QTcBw$dpYCw3+Gjc4ijziJFZ1H/BG7Yj9MZLmKqGYCSdDu2WY=	\N	f	642taniavallejoherna	 Tania	Vallejo Hernández	demo@demo.com	f	t	2019-01-21 03:08:45.802256+00	5
643	pbkdf2_sha256$20000$homhZj6MmvVX$D7ddIPU5HKXxX7ya1Q3w6lyQdfaYsb94uNwDP5s1HLU=	\N	f	643anasofiaoterorive	 Ana Sofía	Otero Rivera	demo@demo.com	f	t	2019-01-21 03:08:45.826802+00	5
644	pbkdf2_sha256$20000$hlsvDbDqF6Vw$qjEHZJ9gBakYp1oAzEMPR+p85z4rRg/iOrlQo8jH9YA=	\N	f	644isoldeeleonordela	 Isolde Eleonor	de la Parra Villanueva	demo@demo.com	f	t	2019-01-21 03:08:45.851294+00	5
645	pbkdf2_sha256$20000$pSz450B3DSe9$U06BNLvBLoEngrVKph1rQ2SLx+hxpQz6M/+U/gsGKy8=	\N	f	645angelacosmecabrer	Angela	Cosme Cabrera 	demo@demo.com	f	t	2019-01-21 03:08:45.877226+00	5
646	pbkdf2_sha256$20000$zQpDHGKFrTjX$+dQUEWm5fFh6zWn5raBRlFbYCnmrvkeIEDEYF1loDL8=	\N	f	646marthalorenawille	 Martha Lorena	Willerer Richter	demo@demo.com	f	t	2019-01-21 03:08:45.901681+00	5
647	pbkdf2_sha256$20000$tuVcgU2zJYdN$GifmWlbj8Yf42Ev+u5FpJX6hyBkHqX7Yee+iZVEWiFQ=	\N	f	647sofiamoraanzurez	Sofia	Mora Anzurez 	demo@demo.com	f	t	2019-01-21 03:08:45.925436+00	5
648	pbkdf2_sha256$20000$pxkb0LUYxaHv$kV8j3+WcS4Pfze1aWkJ/KVtGELNfwiwGRFTSWS4Fd7s=	\N	f	648loanabaron	Loana	Baron 	demo@demo.com	f	t	2019-01-21 03:08:45.95014+00	5
649	pbkdf2_sha256$20000$aFLOj6GRRTUI$p+CbjHbGhVqK6f8qbzyHu7FqJvw6joynbGtnZwBeVcA=	\N	f	649abigailespinosamu	Abigail	Espinosa Munguia 	demo@demo.com	f	t	2019-01-21 03:08:45.974677+00	5
650	pbkdf2_sha256$20000$k0olrresJRpV$LraAFv448H0+RxYEXoav80A1Z4fS3tf6jQgcuLS0N2o=	\N	f	650luzelenasosamarti	Luz Elena	Sosa Martínez 	demo@demo.com	f	t	2019-01-21 03:08:45.99996+00	5
651	pbkdf2_sha256$20000$eLmjh6I6Ol8v$Za5l0Fsbjk1qqLsxoLFo0JNGy32NbQt96tE1ywDNumk=	\N	f	651angelalopezparra	Angela	Lopéz Parra 	demo@demo.com	f	t	2019-01-21 03:08:46.025678+00	5
652	pbkdf2_sha256$20000$NxWbXE8yUFQ1$4/NGLp7OVFnJnDpQZV5YdH8NiCNpUWOCZnJT+y0TozM=	\N	f	652sofiacastañonguti	Sofía	Castañon Gutierrez 	demo@demo.com	f	t	2019-01-21 03:08:46.051461+00	5
653	pbkdf2_sha256$20000$ABvuZ4OEvmuo$IB6uNW++AGQH2W/EH9KFJNhrPKtM9ZFdG/2u3RSeCd4=	\N	f	653lorenzamanriquega	Lorenza	Manrique Garcia 	demo@demo.com	f	t	2019-01-21 03:08:46.082135+00	5
654	pbkdf2_sha256$20000$UFxgdrECUQom$WoQJ4OHxYxc+TPC3A0KkfHlCrT9mjgCTEnYxbp5pg7U=	\N	f	654noramorales	Nora	Morales 	demo@demo.com	f	t	2019-01-21 03:08:46.107289+00	5
655	pbkdf2_sha256$20000$ziFbDgkO23r1$NWxU0ITVTK/HWm6ihp+MuAbrxWIBzurOhNngDBpkdVg=	\N	f	655mariafernandamene	Maria Fernanda 	Menendez Espinosa 	demo@demo.com	f	t	2019-01-21 03:08:46.132424+00	5
656	pbkdf2_sha256$20000$Ou5lKSMunoSz$n1ImwOsL7shfv/FHiYJ1MtbCrmDodXEC0Q8KVJQp9rc=	\N	f	656helenatrujillorod	 Helena	Trujillo Rodríguez	demo@demo.com	f	t	2019-01-21 03:08:46.156778+00	5
657	pbkdf2_sha256$20000$JXxopQvLLvE8$Sw5Aaa5dM11NiZoj4Mg536ukp/FdCrrzLiEFRljMNH0=	\N	f	657elkeliceagaadam	 Elke	Liceaga Adam	demo@demo.com	f	t	2019-01-21 03:08:46.181713+00	5
658	pbkdf2_sha256$20000$ywAxv38hNeM0$4fS4LC6LN2IdRiyDrTRMKpvF2ep0e0wfnr1CJ+cJlSA=	\N	f	658mariemülleremilie	Marie	Müller Emilie 	demo@demo.com	f	t	2019-01-21 03:08:46.206792+00	5
659	pbkdf2_sha256$20000$JFqYz88qpX6w$9ZxrKq+khc+njUU0InslIo39z6lqapklV8qqClepXvY=	\N	f	659danielasierrabach	 Daniela	Sierra Bachmann	demo@demo.com	f	t	2019-01-21 03:08:46.231276+00	5
660	pbkdf2_sha256$20000$qH6EVyQkYu3g$wYisQPBnaH+998C6RdoEafs8luaEkBy6BDBP8WEVJDs=	\N	f	660fernandaabdeljale	 Fernanda	Abdeljalek Miller	demo@demo.com	f	t	2019-01-21 03:08:46.255654+00	5
661	pbkdf2_sha256$20000$Kg6dv8llufnO$fRhem/QlShtWODAmrzeSmaSdFwRykSrrhMw9VNs0Qjc=	\N	f	661isabellaroelstoop	 Isabella	Roel Stoopen	demo@demo.com	f	t	2019-01-21 03:08:46.280164+00	5
662	pbkdf2_sha256$20000$vHHM1QSullr2$R7d2d2U6jH/6W293AtaJxLyV8EqYZTv5FJLafGcpU9A=	\N	f	662brunonicolaskubli	 Bruno Nicolás	Kubli Gollner	demo@demo.com	f	t	2019-01-21 03:08:46.304787+00	5
663	pbkdf2_sha256$20000$egPCYfrI8MXF$ePMFb7thUtOeKg/Ep/VMCifi8PAb6+McSbQXVHugoX8=	\N	f	663josericardocanoga	 José Ricardo	Cano García	demo@demo.com	f	t	2019-01-21 03:08:46.329057+00	5
664	pbkdf2_sha256$20000$FoiCeCnlKtgW$1w1wg24lIZDv/E0vc4x7sp/qgYB1V+Vbz8UyYCxhQrw=	\N	f	664oscarmartinezcoel	 Oscar	Martínez Coello	demo@demo.com	f	t	2019-01-21 03:08:46.353341+00	5
665	pbkdf2_sha256$20000$ee7NH4GEMVRO$5QkwjuuEeXu1NmeU0JnGap4rC+iYqX6D8x8wKtlA5vA=	\N	f	665mauricioaviladela	 Mauricio	Avila de la Vega	demo@demo.com	f	t	2019-01-21 03:08:46.377788+00	5
666	pbkdf2_sha256$20000$aOuq3KkCE0rm$+ojrnMxi6AhySuiYpsQIYHbPkqh742C6V1hnICuosoU=	\N	f	666darianmembrilloal	Darian	Membrillo Altamirano 	demo@demo.com	f	t	2019-01-21 03:08:46.402225+00	5
667	pbkdf2_sha256$20000$nbuurh4wtqrG$wfN5PUACrfSUHhUdo0gzSVfojG/RbDXrY9Jp86nHKrg=	\N	f	667carlosascenciovil	Carlos	Ascencio Villaniueva  	demo@demo.com	f	t	2019-01-21 03:08:46.426699+00	5
668	pbkdf2_sha256$20000$FvfXKQVFEBsk$b/lMJf6aRE5U9BIaugpFvAoS9CHygFSQPbAhITz2QbI=	\N	f	668darioantonio	Dario	Antonio 	demo@demo.com	f	t	2019-01-21 03:08:46.451489+00	5
669	pbkdf2_sha256$20000$vVKZ9s0FgWjM$Hzq9EHXg0ZfXuPdP8T2PabI4Oyewiez82tlevvEPJkE=	\N	f	669franciscoortiz	Francisco	Ortiz 	demo@demo.com	f	t	2019-01-21 03:08:46.476853+00	5
670	pbkdf2_sha256$20000$N4vPG1XirIVr$/2iBTvzzA1t+LPwRu5/Z2pEbsUoF7SoGWtSzWPtfHA0=	\N	f	670gustavokubligolln	Gustavo	Kubli Gollner 	demo@demo.com	f	t	2019-01-21 03:08:46.501534+00	5
671	pbkdf2_sha256$20000$emuggK1UIrHh$RFqF3lMvIHv5c0XRHBoV2GQKuzNmfMlFNJaBOYwcsAk=	\N	f	671juanpablorobles	Juan Pablo 	Robles	demo@demo.com	f	t	2019-01-21 03:08:46.525654+00	5
672	pbkdf2_sha256$20000$t4bOCeHuC4WW$SNYSjFvnoRAIqsuVAv5oJ7iEBKSZgxEGpfEfBSf1jMA=	\N	f	672alvarogomez	Alvaro	Gomez 	demo@demo.com	f	t	2019-01-21 03:08:46.549858+00	5
673	pbkdf2_sha256$20000$zsR3jyVwBvDE$YW5YZjeile9Tu9cDZRv1y6Kb7oMvQScBEe05IMXsHM0=	\N	f	673emiliopiña	Emilio	Piña  	demo@demo.com	f	t	2019-01-21 03:08:46.574009+00	5
674	pbkdf2_sha256$20000$eMGhxjQX6uyQ$d7IEyN/TvxCIOsaxYCLHtgw9LVTx5DOVbSkOtXFaDAk=	\N	f	674matthiaslynen	Matthias	Lynen 	demo@demo.com	f	t	2019-01-21 03:08:46.598319+00	5
675	pbkdf2_sha256$20000$tJhuGUJ2BJdJ$uudgiIGOk/iXaTy6EnSs4SYy+7zGY9vg//shn17RKpU=	\N	f	675andresmagallon	Andres	Magallon 	demo@demo.com	f	t	2019-01-21 03:08:46.62226+00	5
676	pbkdf2_sha256$20000$kUPPieI1dzbg$NiRG+p0/WVMKS5l1OJiPLsSORCql+xcb+bqw3DK+vU4=	\N	f	676santiagocastillon	Santiago	Castillón Barragán	demo@demo.com	f	t	2019-01-21 03:08:46.646362+00	5
677	pbkdf2_sha256$20000$9Q7BMeWPMCG2$cBX1p7ZQ9O2wvHq+lI0gETDavdQcZHeQkPhy59a+ULU=	\N	f	677alexandergladen	Alexander	Gladen 	demo@demo.com	f	t	2019-01-21 03:08:46.671138+00	5
678	pbkdf2_sha256$20000$CLDo0BoohouU$uSjc2M3XQxTbPP+g6IOvW31nwtYkxHFmuGPBZtAyubg=	\N	f	678rodrigoloyola	Rodrigo	Loyola 	demo@demo.com	f	t	2019-01-21 03:08:46.695187+00	5
679	pbkdf2_sha256$20000$4lL9iAbroH01$MunhmPpvZqzJj81VUVv8DMg0mfubw7ox5CBi6DB6PGQ=	\N	f	679federicoaguilarbl	 Federico	Aguilar Blank	demo@demo.com	f	t	2019-01-21 03:08:46.719532+00	5
680	pbkdf2_sha256$20000$1bhbmNAWJvTc$imvMHtcZPLUJxWUStk7c8zBdA/YT8F/yAnnliyUe6bY=	\N	f	680iancastañedapache	 Ian	Castañeda Pacheco	demo@demo.com	f	t	2019-01-21 03:08:46.744807+00	5
681	pbkdf2_sha256$20000$JiTcyatGAyx8$kNv/VAWN/IpcW7dYv5UTKyykwuUYDp9c5E6nSnMj+Qg=	\N	f	681ikercollromero	 Iker	Coll Romero	demo@demo.com	f	t	2019-01-21 03:08:46.769324+00	5
682	pbkdf2_sha256$20000$F8psjENUDSfH$TgfAe8jvGvjLG4ZUPjn2+7BcmvrMCGjs+LCfLgRmQSE=	\N	f	682albertoesquivelfu	 Alberto	Esquivel Fuente	demo@demo.com	f	t	2019-01-21 03:08:46.800776+00	5
683	pbkdf2_sha256$20000$rAyqhzNQk22r$wpl7w2OPPvqoWijypMWx95nvQJS+o3mQcDNCyD2V1BM=	\N	f	683orlandogomezvalde	 Orlando	Gómez Valdés	demo@demo.com	f	t	2019-01-21 03:08:46.82602+00	5
684	pbkdf2_sha256$20000$cmXsri7c3uh4$mUWTdddOcwPs9gzt9eRKDxZL5jaXRULnOBlhyAWh/m4=	\N	f	684rodrigoniembromar	 Rodrigo	Niembro Martínez	demo@demo.com	f	t	2019-01-21 03:08:46.850044+00	5
685	pbkdf2_sha256$20000$gLgfNWpxlfUR$9ZIbOHsLU5o2FiSswOEvJM7RNPGXQKB+VCNM7zIZN14=	\N	f	685emilianopeñaserra	 Emiliano	Peña Serralde	demo@demo.com	f	t	2019-01-21 03:08:46.873832+00	5
686	pbkdf2_sha256$20000$fvMhIDPY06LD$08ASGmg5y+qHLphX+JqeFYx1QfvOZTjSQPwwkpTvSOk=	\N	f	686mateotoledowerner	 Mateo	Toledo Werner	demo@demo.com	f	t	2019-01-21 03:08:46.897337+00	5
687	pbkdf2_sha256$20000$LG2EACep8VUk$Lpp8TsRqJvYyj1Tp8nFn7wjZlqLacHzT44d5r1vfET8=	\N	f	687robertoaguilarman	 Roberto	Aguilar Mancera	demo@demo.com	f	t	2019-01-21 03:08:46.921161+00	5
688	pbkdf2_sha256$20000$KxJhDs4dyh6p$ykfyxEvSRW5GL7lgujUeirwdCClEQ/4gv2dgKMMVdJM=	\N	f	688hugomanuelmartine	 Hugo Manuel	Martínez Nuques	demo@demo.com	f	t	2019-01-21 03:08:46.944852+00	5
689	pbkdf2_sha256$20000$v2tyPnslhdCu$QLnTfzGeMtILLS645Ji9X2IRtJmIgiSK1a5MYbG2Q4E=	\N	f	689sebastianmoguello	 Sebastián	Moguel Loffler	demo@demo.com	f	t	2019-01-21 03:08:46.968588+00	5
690	pbkdf2_sha256$20000$Jp81Y1r18LAu$QRJsAqr1zAnAhBV3Gr0eegsqMIaWZkcE+PhUEIs2h3o=	\N	f	690albertotalamantes	 Alberto	Talamantes Ontiveros	demo@demo.com	f	t	2019-01-21 03:08:46.992485+00	5
691	pbkdf2_sha256$20000$56Rlba6JfKjs$iV5fzVztGLIxOeNu04LVRnSJGa18Nlkdc3EraiKqNho=	\N	f	691alexandertwardytr	 Alexander	Twardy Trullenque	demo@demo.com	f	t	2019-01-21 03:08:47.017582+00	5
692	pbkdf2_sha256$20000$ap4FWtaeJtZI$iJn5WmiKc793tJlPlBqZsZWfGsibpVj77IhL2lKk0hw=	\N	f	692mattiazuincordero	 Mattia	Zuin Cordero	demo@demo.com	f	t	2019-01-21 03:08:47.061784+00	5
693	pbkdf2_sha256$20000$b8mzvX0EY6gf$ydwR5kwYyIqHg7qgFfOsbGKwwGmg7TNWQJPIrnTNHxI=	\N	f	693aripulidoferrer	Ari	Pulido Ferrer 	demo@demo.com	f	t	2019-01-21 03:08:47.088312+00	5
694	pbkdf2_sha256$20000$KcCOGdgmhDgw$E17V5zVwx3EnUFEN/JEWi7CaVwwO0KxB2h2xeXXCr+I=	\N	f	694nicolashernandezf	Nicolas	Hernandez Franco 	demo@demo.com	f	t	2019-01-21 03:08:47.11225+00	5
695	pbkdf2_sha256$20000$hZL32EovOSYu$KEMbpzvU9lg1CTfj5X+Uq5DhqrxyGo21ujzNUOXCbz4=	\N	f	695josepabloolivasar	Jose Pablo	Olivas Arreola 	demo@demo.com	f	t	2019-01-21 03:08:47.136883+00	5
696	pbkdf2_sha256$20000$vBBaxJWmqEh7$MHw8DGgD7cgOhpzmC/lmJtZ0f51kmk+EvTk81wZX7w4=	\N	f	696emiliolanda	Emilio	Landa 	demo@demo.com	f	t	2019-01-21 03:08:47.161689+00	5
697	pbkdf2_sha256$20000$sTq7T8s02Tkm$YN8Xm4S5NOgLKSmBMpuudZ/O4Kx1vhAJgN+YGSSK3Dg=	\N	f	697neftalicuevas	Neftali	Cuevas 	demo@demo.com	f	t	2019-01-21 03:08:47.188707+00	5
698	pbkdf2_sha256$20000$uwTEmGDC85S3$c4/3zeuBJXABUfP9zejRqjvPZP29wz+Yzezd13oRQUM=	\N	f	698franciscojavierag	 Francisco Javier	Aguerrebere Guevara	demo@demo.com	f	t	2019-01-21 03:08:47.221764+00	5
699	pbkdf2_sha256$20000$FJu1UTdtk41m$MkGAkAaqO9xWDEBmOBf/7p0Dek37ithqbuxTt044rps=	\N	f	699belanoelangermann	 Belá Noel	Angermann .	demo@demo.com	f	t	2019-01-21 03:08:47.245894+00	5
700	pbkdf2_sha256$20000$OAvTOYa4rtST$R/casEcVYukp14s7rhe9WDAPFrNighRA4R+Vls6TxOM=	\N	f	700pablocastroschmit	 Pablo	Castro Schmitz	demo@demo.com	f	t	2019-01-21 03:08:47.270327+00	5
701	pbkdf2_sha256$20000$1tmNTRChH5II$6XnOAWZp3OvbCMI9IohN7r8hvI0xZQpxv/N2LFq8an0=	\N	f	701luismanuelcastros	 Luis Manuel	Castro Schmitz	demo@demo.com	f	t	2019-01-21 03:08:47.297205+00	5
702	pbkdf2_sha256$20000$uXyisY9yHSDY$e0MdQCypdh4Vc/ADTaah4b2Lnywq8whljGxb5MKymU8=	\N	f	702federicofleischma	 Federico	Fleischmann Olguín	demo@demo.com	f	t	2019-01-21 03:08:47.321186+00	5
703	pbkdf2_sha256$20000$unNGdf3A6ATg$kjMlJTlBSlU4gXi+gsDwiaulTYzVpDqWKnkd22G4+mQ=	\N	f	703julianroelstoopen	 Julian	Roel Stoopen	demo@demo.com	f	t	2019-01-21 03:08:47.34827+00	5
704	pbkdf2_sha256$20000$lAsPdGIdNx6O$Kt+GdTXRSEw/CkbE5UAVXmMeGoCGViT14gPfe622hw8=	\N	f	704kevinrohleder.	 Kevin	Rohleder .	demo@demo.com	f	t	2019-01-21 03:08:47.372627+00	5
705	pbkdf2_sha256$20000$uLC7jtJM5qac$Y/FO51VsC+Tw599XPG2f46/2VbnCUcQOglXAIxDKn7I=	\N	f	705andresvelascotorr	 Andrés	Velasco Torres	demo@demo.com	f	t	2019-01-21 03:08:47.398488+00	5
706	pbkdf2_sha256$20000$hJZlcSciaV8i$iVauLy0cdYDdZ9AoET8rTrAB/Mgw19uh9zTedtUCnAw=	\N	f	706emmanuelalcantarc	 Emmanuel	Alcantar Centeno	demo@demo.com	f	t	2019-01-21 03:08:47.42332+00	5
707	pbkdf2_sha256$20000$muiuoMcdVI9V$7Kyr4fvWuLzOS34ye62ccor2SS6o6W+q1dBSz9o01xQ=	\N	f	707jordividalvillase	Jordi	Vidal Villaseñor 	demo@demo.com	f	t	2019-01-21 03:08:47.447967+00	5
708	pbkdf2_sha256$20000$7IEIhtRKPxID$YJ4XmjowsuR56K8rSMtPEDZHh3TIIrV5Uvdv8GXsjiE=	\N	f	708diegosanchezarrio	Diego	Sánchez Arriola Cieslik 	demo@demo.com	f	t	2019-01-21 03:08:47.472669+00	5
709	pbkdf2_sha256$20000$CXjHdp7RcuSh$PUSWcA4V4sWMrWHD8R21qTR7fCwNQI1Aj6oC5XTaCrI=	\N	f	709mateorodriguezazp	Mateo	Rodriguez Azpiazu 	demo@demo.com	f	t	2019-01-21 03:08:47.497286+00	5
710	pbkdf2_sha256$20000$7IGwtbxCJaAd$LnPA1iwTNoE66mRKSe26QaTk1BaYKOpV122oUm3e7Bk=	\N	f	710luisemiliopozopac	Luis Emilio	Pozo Pacheco 	demo@demo.com	f	t	2019-01-21 03:08:47.522324+00	5
711	pbkdf2_sha256$20000$P1LGP9k3SWid$pJVEHwGKn6gr/uT291a7l76QvSh4Huv3EZ2hguwTpnE=	\N	f	711marcoantonioostoa	Marco Antonio	Ostoa Estrada 	demo@demo.com	f	t	2019-01-21 03:08:47.546669+00	5
712	pbkdf2_sha256$20000$8aOwKyJGml3Q$HQ707/v9HAmgRVa3aCzGUHCAk15VVONBEiqwJXvbNEY=	\N	f	712santiagomaydongon	Santiago	Maydón González 	demo@demo.com	f	t	2019-01-21 03:08:47.571353+00	5
713	pbkdf2_sha256$20000$mYWXlYJCiH6j$4OJh6VR1fR2i1ltDuhLxBxqFafjsSM94o942Da+SCYs=	\N	f	713sebastianliceagaa	Sebastián	Liceaga Adam 	demo@demo.com	f	t	2019-01-21 03:08:47.597216+00	5
714	pbkdf2_sha256$20000$xTMIXUdcTXLz$i14VYhvtIKu2fqX354vX45ZRIlwkhKWCdVOvDf0+fjk=	\N	f	714axelkaramarroyo	Axel	Karam Arroyo 	demo@demo.com	f	t	2019-01-21 03:08:47.621203+00	5
715	pbkdf2_sha256$20000$qzfyi2zL1Huz$B7PIglhvgU6pmtJTS6wgAB7b9MjmEc3pQHNybwqUcKw=	\N	f	715jeronimogomezcolc	Jerónimo	Gómez Colchado 	demo@demo.com	f	t	2019-01-21 03:08:47.652175+00	5
716	pbkdf2_sha256$20000$ohADBK2b1a0C$UhbKI+tqgH/gbd0SrqcpOs63LsYTF6lMHftHN/uCfbM=	\N	f	716stephanmaximodiet	Stephan Maximo	Dietze Tommasi 	demo@demo.com	f	t	2019-01-21 03:08:47.695112+00	5
717	pbkdf2_sha256$20000$KNYBRM9ueS0E$5zM2ICtPzw+LkoSZ9l0aLXo3oL4srN4GI3WJsI6Plwg=	\N	f	717alonsodiazprocel	Alonso	Díaz Procel 	demo@demo.com	f	t	2019-01-21 03:08:47.738644+00	5
718	pbkdf2_sha256$20000$ukDMfS4LrB5i$zU8uWTf7djWH6E4nJ6jFXxYf1fHchhoO/WKqLk0Pxac=	\N	f	718svenurbanekbarrei	Sven	Urbanek Barreiros 	demo@demo.com	f	t	2019-01-21 03:08:47.775329+00	5
719	pbkdf2_sha256$20000$TVO3KrizhGue$jfit3lOLoc5Zoxg4DSUozNtPl/VcB3qKh1WxvlNqrx8=	\N	f	719paolotoledowerner	Paolo	Toledo Werner 	demo@demo.com	f	t	2019-01-21 03:08:47.799292+00	5
720	pbkdf2_sha256$20000$OMfd0EafO58K$Ffw2gFDC3JC5A9P//bi2QjjFSF1ebKBcuRe2YPQylBo=	\N	f	720carstenserretköhl	Carsten	Serret Köhler 	demo@demo.com	f	t	2019-01-21 03:08:47.822951+00	5
721	pbkdf2_sha256$20000$kaGXglyKKC29$fzXtnPbOi3SZrQkeWJGF0XNraprpzXnS0ja9XBmv52M=	\N	f	721andresmateopozosa	Andrés Mateo	Pozos Acosta 	demo@demo.com	f	t	2019-01-21 03:08:47.850108+00	5
722	pbkdf2_sha256$20000$XUOBFXduz2LA$UD/dmJcW67ZedVYRrwpC/TAQ/B2FyBwVZy0e9Ng0sZc=	\N	f	722axelpoogonzalez	Axel	Poo González 	demo@demo.com	f	t	2019-01-21 03:08:47.874171+00	5
723	pbkdf2_sha256$20000$Ox5EGhlsd4OB$y6qzM1FV7xL+mvgw+1wGAIyxD+O2FoWjxwr9DUhH3NI=	\N	f	723jorgesantiagomari	Jorge Santiago	Marín Portilla 	demo@demo.com	f	t	2019-01-21 03:08:47.898516+00	5
724	pbkdf2_sha256$20000$XqyS5n7q3GG0$WwdjdYA8SQWq+ekl7Zm8XWKlkGV8kFiI90w/uDVr5Uk=	\N	f	724mateomaciashernan	Mateo	Macías Hernández 	demo@demo.com	f	t	2019-01-21 03:08:47.927797+00	5
725	pbkdf2_sha256$20000$83SSc4Qh3Gl8$qO6oFR/nNVMdZmduUTjZM+BllWF/0ae77uH8LhE0kJM=	\N	f	725isaacgarciasigala	Isaac	García Sigala 	demo@demo.com	f	t	2019-01-21 03:08:47.951751+00	5
726	pbkdf2_sha256$20000$u1h83HHRrB7b$6rY41FkzqAL89viD3jmuMCnBtWkwG81Dagg7g2tlGz4=	\N	f	726federicogalvezalv	Federico	Gálvez Alvarado 	demo@demo.com	f	t	2019-01-21 03:08:47.977979+00	5
727	pbkdf2_sha256$20000$3AsfLoWqyqHn$PGWFLysqfZd0cDEU4d1LzeZZdbTa141/WE+brrMeFBU=	\N	f	727arturocamachooroz	Arturo	Camacho Orozco 	demo@demo.com	f	t	2019-01-21 03:08:48.002493+00	5
728	pbkdf2_sha256$20000$qNU48A1QNOUn$a51SQP6uf8s3aZX5NM4Hz3jcjAXCIco8LHPaAEhH0QM=	\N	f	728stefanmikelbolaño	Stefan Mikel	Bolaños Rodrigues	demo@demo.com	f	t	2019-01-21 03:08:48.026599+00	5
729	pbkdf2_sha256$20000$H79OuLInevuc$Iya1RkhqUX6jzQYfaBAau0cmILf89Aw6y4ktRcVe5Lk=	\N	f	729iñigovidalvillase	Iñigo	Vidal Villaseñor	demo@demo.com	f	t	2019-01-21 03:08:48.05039+00	5
730	pbkdf2_sha256$20000$K8dvB2uxGqUq$aqRledRiZXlvFLbEujg+6OhcKjCZ/rSSJN54sLy0AhQ=	\N	f	730jorgeliamsoriagar	Jorge Liam	Soria Garcia 	demo@demo.com	f	t	2019-01-21 03:08:48.07472+00	5
731	pbkdf2_sha256$20000$KB56OMMRLvuY$GxeKkWuCSb/P/gI9yQeqp1gm838iYBe9SHY2oGwmcro=	\N	f	731victoralonsomonro	Victor Alonso	Monroy Campins 	demo@demo.com	f	t	2019-01-21 03:08:48.098545+00	5
732	pbkdf2_sha256$20000$eElagIYjJbed$+LFJL4sYtNFOk4F+7XH63Btvt+4lyKe93PK0vn+Hk1o=	\N	f	732nestormatarredona	Néstor	Matarredona Terrazas 	demo@demo.com	f	t	2019-01-21 03:08:48.129259+00	5
733	pbkdf2_sha256$20000$a1wLCssTqavr$S8MpS+XJ4cxBmRYKHhtKB8nD6RaxTYRLMnKt7zgaEOc=	\N	f	733carlosfedericomar	Carlos Federico	Martínez Valero 	demo@demo.com	f	t	2019-01-21 03:08:48.15321+00	5
734	pbkdf2_sha256$20000$8ZbWnmZgHz3n$HOD+4RW6PoyRG/vlX43XQZqFallHBTAYM8tr25TpjP8=	\N	f	734joaquingraufranci	Joaquín	Grau Francisco-Revilla 	demo@demo.com	f	t	2019-01-21 03:08:48.176758+00	5
735	pbkdf2_sha256$20000$bb5KUjHwPvbq$sRAXeArSqZTNEjidfur+j9PHsjtSdBNZ+5/cmZok778=	\N	f	735demiangonzalesrub	Demian	Gonzales Rubio 	demo@demo.com	f	t	2019-01-21 03:08:48.200717+00	5
736	pbkdf2_sha256$20000$gprGtMajwlAL$s0nuKJIGwXl9jZusD5bFkjaXu53MaaskD0RS66b2heI=	\N	f	736enriquefernandogo	Enrique Fernando	Gómez Serrano Rothweiler 	demo@demo.com	f	t	2019-01-21 03:08:48.225595+00	5
737	pbkdf2_sha256$20000$B1qn6oM9z4mo$X+sSKyWu8TdwG7GKkeqIOEXEEGbF5XyfcyvzomFSCLY=	\N	f	737victorisaaccardeñ	Víctor Isaac	Cardeña Romero 	demo@demo.com	f	t	2019-01-21 03:08:48.250739+00	5
738	pbkdf2_sha256$20000$FS1liH3XAXDh$KhgbzLKOncnrb6XIIZQobPdjqEKHDofDhbhQfsHZ9mc=	\N	f	738matiasrodileskara	Matías	Rodiles Karam 	demo@demo.com	f	t	2019-01-21 03:08:48.28437+00	5
739	pbkdf2_sha256$20000$0u4IBEuTBQHv$dkHeyNSuMVoDx1TJKtTiRP6yv/uMzS4sbLsJdHhzaSw=	\N	f	739rodrigoantoniopra	Rodrigo Antonio	Prats Ayala 	demo@demo.com	f	t	2019-01-21 03:08:48.309316+00	5
740	pbkdf2_sha256$20000$VSgSDCiQXw04$y+DChUg4rq/oC4XvXLh/JVOCL0ZrC6BLTPUKpcJFLkU=	\N	f	740carloseugenioporc	Carlos Eugenio	Porcayo González 	demo@demo.com	f	t	2019-01-21 03:08:48.333436+00	5
741	pbkdf2_sha256$20000$ScLUOFKSSQcg$cTeN2cmLcGoSSnuRv1MjhILNDFn5JHTPd9EIcH4em5E=	\N	f	741theoantoniomüller	Theo Antonio	Müller 	demo@demo.com	f	t	2019-01-21 03:08:48.362189+00	5
742	pbkdf2_sha256$20000$X7AnFH0WZb11$GMAqoqVtLcyyr0yI8yDOA36EUmk9YqgF1Cfn2jI70Vk=	\N	f	742mateomorenocastañ	Mateo	Moreno Castañeda 	demo@demo.com	f	t	2019-01-21 03:08:48.386377+00	5
743	pbkdf2_sha256$20000$z4EjIKgKC1jB$oZU48ZHuimBsAgAofK9RX6K1KJrWJ6hMikAhBE29lV0=	\N	f	743samuelmoralesjung	Samuel	Morales Jung 	demo@demo.com	f	t	2019-01-21 03:08:48.410414+00	5
744	pbkdf2_sha256$20000$udWA1TMuyCN7$7ahArvS7vIc74rGBhN0K3+SZLnTYW6i2CNlOY6FRrRA=	\N	f	744juanpablomontañog	Juan Pablo	Montaño Granados 	demo@demo.com	f	t	2019-01-21 03:08:48.435626+00	5
745	pbkdf2_sha256$20000$HgMbTZXhXSR4$MRKjQfoCRVsGlAufJ6SVvyUgbvKQ/Gb2dtwe4GUAyoo=	\N	f	745tadeolozamendoza	Tadeo	Loza Mendoza 	demo@demo.com	f	t	2019-01-21 03:08:48.459633+00	5
746	pbkdf2_sha256$20000$w86AKVjEfLBi$DojdBIqGVBDKVmZAjoSzuRWetvs+PVMNB5mM8GFAOH0=	\N	f	746diegocelistessman	Diego	Celis Tessmann 	demo@demo.com	f	t	2019-01-21 03:08:48.484479+00	5
747	pbkdf2_sha256$20000$23dC5ndBvYUY$7AuJsHMdYA2dlcews4ZWkle7glt9mWxvWfqW7BAdnFI=	\N	f	747mateangermannkeno	Maté	Angermann Keno 	demo@demo.com	f	t	2019-01-21 03:08:48.508291+00	5
748	pbkdf2_sha256$20000$sdx1XykzEZIa$lS79+LVN037ETNG17mGK8V+FhPawX/mbXLuYHyBANqU=	\N	f	748ignaciozuñigagarc	Ignacio	Zúñiga García 	demo@demo.com	f	t	2019-01-21 03:08:48.532388+00	5
749	pbkdf2_sha256$20000$RxOjTr1DsPxm$TgzBtJ9Jd2yOq2f48Hw7RPSBnaTLSUA/af7rEvGHw8E=	\N	f	749matthiassantaella	Matthias	Santaella Pérez 	demo@demo.com	f	t	2019-01-21 03:08:48.555734+00	5
750	pbkdf2_sha256$20000$xc0eGm2Uk5lI$09pACKRxa7d87l7eZ0Hvk4OaSm0aQjJ353Phd4wLPhs=	\N	f	750matteorossoorihue	Matteo	Rosso Orihuela 	demo@demo.com	f	t	2019-01-21 03:08:48.579817+00	5
751	pbkdf2_sha256$20000$Gz3PG5oDUWQ1$AKe4oEw1+AfbcShQzkx1osSfCD/CYm2F+W0vXUBrquI=	\N	f	751paulroenigerjaram	Paul	Roeniger Jaramillo 	demo@demo.com	f	t	2019-01-21 03:08:48.603078+00	5
752	pbkdf2_sha256$20000$Bu0Z71q4ehGJ$GOKX/++HPHpeqWV3C/d76CpEidFQMDcpPEYg0fmpbDE=	\N	f	752paulojosueolivare	Paulo Josue	Olivares Correa 	demo@demo.com	f	t	2019-01-21 03:08:48.626651+00	5
753	pbkdf2_sha256$20000$lFn4e34Z1bZ3$InEX1W02+HDT/sLSXphb7ciw2Ny6+rhRrSLZBDsCe3Y=	\N	f	753andrelopezrodrigu	André	López Rodríguez 	demo@demo.com	f	t	2019-01-21 03:08:48.649834+00	5
754	pbkdf2_sha256$20000$nHTOTQa6DejL$4jGUfgJpdWVPLQYUdLODi3J0ZprSCNrrE50lIlDa9dg=	\N	f	754josemariaenriquez	José María	Enríquez Tejeda 	demo@demo.com	f	t	2019-01-21 03:08:48.673337+00	5
755	pbkdf2_sha256$20000$WjLuvRLptBLH$514MXx1BsPjSmg5R5g0MWHplFI79zZwbxv1HGY6xmOM=	\N	f	755emirapistellez	Emir	Apis Tellez 	demo@demo.com	f	t	2019-01-21 03:08:48.697336+00	5
756	pbkdf2_sha256$20000$w0zJo7TNZJQq$tWLRosAH+y9fchCH8yPoVzvb/25a+6CrQ4vDuVE/EjQ=	\N	f	756ximenavegatapia	Ximena	Vega Tapia 	demo@demo.com	f	t	2019-01-21 03:08:48.722106+00	5
757	pbkdf2_sha256$20000$zWSIzVGuNfC1$ZO9KGHCujlA+1StJiRifriItOkNOH7gumwspA3+2FzI=	\N	f	757anasanchezarriola	Ana	Sánchez Arriola Cieslik 	demo@demo.com	f	t	2019-01-21 03:08:48.7483+00	5
758	pbkdf2_sha256$20000$rhfemRx9ZUvi$QSJVO4bx4xrduayAuJrPmVEg9cEgrk9oW62wKcRFPxU=	\N	f	758sofiarohleder	Sofia	Rohleder 	demo@demo.com	f	t	2019-01-21 03:08:48.772559+00	5
759	pbkdf2_sha256$20000$BZX17xxGudnI$EM2eppdVogCJAcNWqeJhZVGCccuG4EpeK7tJkn5tn2A=	\N	f	759valentinarenteria	Valentina	Rentería Campos 	demo@demo.com	f	t	2019-01-21 03:08:48.796961+00	5
760	pbkdf2_sha256$20000$1pSUfeJ022Ct$7AQYeduVAa+UBVQ0jcI4yAzG2Z5bJLsd9V+43d55E7k=	\N	f	760ileanacamilaoliva	Ileana Camila	Olivares Correa 	demo@demo.com	f	t	2019-01-21 03:08:48.822481+00	5
761	pbkdf2_sha256$20000$skHTWtqaqf6M$rYEST0I7CpRwyh3ls9ACJbw54gUyDVdnSxRUXk69ytY=	\N	f	761arantxanellenlayo	Arantxa	Nellen Layón	demo@demo.com	f	t	2019-01-21 03:08:48.847004+00	5
762	pbkdf2_sha256$20000$Ud9sAP2NdRpy$mRpu8B6WDQDhn4Ye9mUE13AT6gdi5uakPk1i2Kqem88=	\N	f	762reginamorenoflore	Regina	Moreno Flores 	demo@demo.com	f	t	2019-01-21 03:08:48.870926+00	5
763	pbkdf2_sha256$20000$vpeIOZJzXcXc$pUxOXSX6GSFQ7v+GKORvvWu4M9+1xNB4VyiAOQaprgo=	\N	f	763sofiamenendezespi	Sofia	Menéndez Espinosa 	demo@demo.com	f	t	2019-01-21 03:08:48.89506+00	5
764	pbkdf2_sha256$20000$9ir3LJdWmdxK$/dW87Bq0zpKMxmAI1b53hwJg4fl/gwp4Hzh3J+jv7CA=	\N	f	764kenyaizabellamart	Kenya Izabella	Martínez Sandoval 	demo@demo.com	f	t	2019-01-21 03:08:48.918839+00	5
765	pbkdf2_sha256$20000$coYPOwBXcfqI$Y4EWz9eqQV7wts9IsmFLmuOSGqWBYKuWhnK6qw57fno=	\N	f	765paulakaiserlopez	Paula	Kaiser López	demo@demo.com	f	t	2019-01-21 03:08:48.942669+00	5
766	pbkdf2_sha256$20000$TKFMIXNvDnql$ab+P8RO52lru4Ejab6y++2OCmsRFTZS9y0OcgggPWYg=	\N	f	766valentinagonzalez	Valentina	González Cisneros 	demo@demo.com	f	t	2019-01-21 03:08:48.966359+00	5
767	pbkdf2_sha256$20000$kV8kOdmGB4W6$Kq18CxyrB7zZkzEqjaXve9fxNM11msFE5OOvC7+QECg=	\N	f	767paulinabeltranpru	Paulina	Beltrán Pruneda 	demo@demo.com	f	t	2019-01-21 03:08:48.990565+00	5
768	pbkdf2_sha256$20000$wIpQi8j4LdHn$XXzfsU3EQy79fG10Zbllix8rnuQv9X/Q29k+QmHN6as=	\N	f	768marianeabdeljalek	Mariane	Abdeljalek Miller 	demo@demo.com	f	t	2019-01-21 03:08:49.015391+00	5
769	pbkdf2_sha256$20000$KBDe25MAhZQJ$ajVlX7C7uaUuHo+aMvNul/OUungWINdbkuxnx5AGlbM=	\N	f	769juliazacariasalde	Julia	Zacarías Alderete 	demo@demo.com	f	t	2019-01-21 03:08:49.039851+00	5
770	pbkdf2_sha256$20000$chQkQ6r2Apw8$0HR/qQFMKXVwz4Kgs6AXRuREHwcAac6hHgcckD71ktY=	\N	f	770patriciovaldiviac	Patricio	Valdivia Comett	demo@demo.com	f	t	2019-01-21 03:08:49.064256+00	5
771	pbkdf2_sha256$20000$e10FeVBtOin0$jpsUy02bqPK4eIkHfGL+O8InNGAj3A3qljdTKi6keqY=	\N	f	771carlosestebantell	Carlos Esteban	Tella Solís 	demo@demo.com	f	t	2019-01-21 03:08:49.088511+00	5
772	pbkdf2_sha256$20000$VE9dGw05NifH$Qx26LL+VTlYT43czVRfzgMZjbRede7a7kCzR9+S+Wqs=	\N	f	772oscargaelsantanat	Oscar Gael	Santana Toledo 	demo@demo.com	f	t	2019-01-21 03:08:49.112668+00	5
773	pbkdf2_sha256$20000$3Bml4bSxNVtK$PIPHXzjKAKXNeygQK8kvVv0V/cqhOmDr5ubHfM8Vopc=	\N	f	773jesussalazarvelaz	Jesús	Salazar Velázquez 	demo@demo.com	f	t	2019-01-21 03:08:49.137189+00	5
774	pbkdf2_sha256$20000$OnYmhpM3X0Ou$hW/9g6dJbwh/JgoFIIBJQfnfWG9mfksXsBkSBt1cB6o=	\N	f	774brunomiguelromero	Bruno Miguel	Romero Gebauer 	demo@demo.com	f	t	2019-01-21 03:08:49.160767+00	5
775	pbkdf2_sha256$20000$w0eHoJq7rfRY$+YnqdxAlkpyx2nutn2RNSOWdIhShX3ypoMKGxNug7ec=	\N	f	775diegoreydavo	Diego	Rey Davó 	demo@demo.com	f	t	2019-01-21 03:08:49.184694+00	5
776	pbkdf2_sha256$20000$ds6Xj9IpY8KN$9lyruvv/09RgecOX56gsq2lPBEwaOOydvXY/ZyW0JJw=	\N	f	776diegomuñozcarvaja	Diego	Muñoz Carvajal 	demo@demo.com	f	t	2019-01-21 03:08:49.216289+00	5
777	pbkdf2_sha256$20000$bBnITb2gH7yB$gecwxkJ+IBQLrb1CU2Qv/P0ho244a9rHjb5OFj69cck=	\N	f	777oscargustavomendo	Oscar Gustavo	Mendoza García 	demo@demo.com	f	t	2019-01-21 03:08:49.243435+00	5
778	pbkdf2_sha256$20000$N9UnWuSpwFY8$ZsVTAw9HiI7TOJB85qzFQfESlpDxoScgGb8OVD/Sg+0=	\N	f	778jorgeantoniomende	Jorge Antonio	Méndez Herrera 	demo@demo.com	f	t	2019-01-21 03:08:49.267022+00	5
779	pbkdf2_sha256$20000$Faz1Ir8FpnYf$rS2VHfSK9RNF1E1Y5Sqm5pBxbZF2lQ3eEmlrCXkKEr8=	\N	f	779christopherleitme	Christopher	Leitmeir Rosas 	demo@demo.com	f	t	2019-01-21 03:08:49.291109+00	5
780	pbkdf2_sha256$20000$q7bWDf9ghoXC$OMzuao/wBmUbiOlmfShACLoVDZNz0M9HgP28n4ZMYeg=	\N	f	780alonsoiturriagabo	Alonso	Iturriaga Bolbrugge	demo@demo.com	f	t	2019-01-21 03:08:49.314551+00	5
781	pbkdf2_sha256$20000$AYThQexNjinX$fryu3S/DiZ1Ycpp6ZVQs8vOjWvnunbGk/cQTwyr8bts=	\N	f	781thomasleonardoenr	Thomas Leonardo	Enriquez Jímenez 	demo@demo.com	f	t	2019-01-21 03:08:49.342474+00	5
782	pbkdf2_sha256$20000$5yjpu1Y3qYmp$DJO3jwc75gORt6ACsnSxoJLs81PNFK3zWRkYmeYiJ6A=	\N	f	782adolfocarrillogan	Adolfo	Carrillo Gándara 	demo@demo.com	f	t	2019-01-21 03:08:49.370324+00	5
783	pbkdf2_sha256$20000$CYNM0zFqtTxL$/5ZS78+eEkk+9+KwCWupxXJ6kmp3rItJdZ/FlfC25T0=	\N	f	783ikergustavbolaños	Iker Gustav	Bolaños Rodríguez	demo@demo.com	f	t	2019-01-21 03:08:49.399085+00	5
784	pbkdf2_sha256$20000$uf735Fe3olYf$VsKhiB6WbK8DvLez2T14uARdgNu5hR70SKEXnhE9YnM=	\N	f	784maitevelascotorre	Maite	Velasco Torres 	demo@demo.com	f	t	2019-01-21 03:08:49.427522+00	5
785	pbkdf2_sha256$20000$A8grYEKmGsVl$I77kl6nsrdc2DxZtIrIPzc2ujVYy/rWxduTsyl2gmls=	\N	f	785robertatapiazamor	Roberta	Tapia Zamora 	demo@demo.com	f	t	2019-01-21 03:08:49.451192+00	5
786	pbkdf2_sha256$20000$mvGIeYLRVdOn$Je5WKpnJ6wzlUZIrbNUXnJeI0JWDoRyxuvoeKq9eZiE=	\N	f	786luzadrianasalcedo	Luz Adriana	Salcedo Álvarez 	demo@demo.com	f	t	2019-01-21 03:08:49.474677+00	5
787	pbkdf2_sha256$20000$38uxHhZoLKtS$nMiSj4nPgf+Vm4FZzTBVcWw7CuujgDI0oKYNNTZ56bE=	\N	f	787fernandaruedavall	Fernanda	Rueda Valle 	demo@demo.com	f	t	2019-01-21 03:08:49.498086+00	5
788	pbkdf2_sha256$20000$Nlc9nd2CUuN7$Nz/EsmQGlHYpef/a2T7+B0KEt16vLPx0kbmlw0pDXgw=	\N	f	788manerodriguezazpi	Mané	Rodríguez Azpiazu	demo@demo.com	f	t	2019-01-21 03:08:49.522703+00	5
789	pbkdf2_sha256$20000$AbqIJaDzYRvo$14yzs7PD3GO+ds9F4e39Y2k/zRtHjTNBLz4DyH8z5aE=	\N	f	789junerodriguezazpi	June	Rodríguez Azpiazu 	demo@demo.com	f	t	2019-01-21 03:08:49.546057+00	5
790	pbkdf2_sha256$20000$Skx79vy5gL16$w4oVgLZDrELxHolgNVLnrK8tpvGuz+qj2EGLVufLIl4=	\N	f	790emiliarechymadina	Emilia	Rechy Madinaveitia 	demo@demo.com	f	t	2019-01-21 03:08:49.569486+00	5
791	pbkdf2_sha256$20000$eQl2RMnHtpYV$XXqEpuLoKwOqOVPcktE8j231ZZv2TSguaZSlE9+Qf90=	\N	f	791sofiamaydongonzal	Sofia	Maydon gonzalez 	demo@demo.com	f	t	2019-01-21 03:08:49.592985+00	5
792	pbkdf2_sha256$20000$I3KGDh50NDwW$SRXdej6LL74ygWtdJK4Udm671IKEOM86TUheB3LCyPU=	\N	f	792laraleitmeirrosas	Lara	Leitmeir Rosas 	demo@demo.com	f	t	2019-01-21 03:08:49.616215+00	5
793	pbkdf2_sha256$20000$uaqtAZ87jlFr$tgNwm9S72zKFZ0hFX8TV9z36zp6ke63G5IcXV3y4mQ0=	\N	f	793hannahleitmeirros	Hannah	Leitmeir Rosas 	demo@demo.com	f	t	2019-01-21 03:08:49.640818+00	5
794	pbkdf2_sha256$20000$JOrjCXPJN6F4$4dI3tM1V8+3Wgvf5PniZnLTeNOLYw5gPZF2ppqBH8Ns=	\N	f	794iaradiederichsenr	Iara	Diederichsen Rodriguez 	demo@demo.com	f	t	2019-01-21 03:08:49.664838+00	5
795	pbkdf2_sha256$20000$F3cixLzGtHRF$CBCe1osOXrDaWd9wzsW5exZC5WJmS0mGVYUS5fWAsT0=	\N	f	795pamelaalemancarra	Pamela	Aleman Carrasco 	demo@demo.com	f	t	2019-01-21 03:08:49.688049+00	5
796	pbkdf2_sha256$20000$yqYuEY9LO3Jr$PFWggOMfjOlVcMEcuSOi/8Z28CFNl+5Kd8j8Csg6u5A=	\N	f	796darienalejandroza	Darien Alejandro	Zapata García 	demo@demo.com	f	t	2019-01-21 03:08:49.711416+00	5
797	pbkdf2_sha256$20000$QarMmNtNIFVJ$7OaGoeDaw2PZ0lM3Bdi1UZlQvzXo10iuMQEonYreq7I=	\N	f	797diegovegatapia	Diego	Vega Tapia 	demo@demo.com	f	t	2019-01-21 03:08:49.735111+00	5
798	pbkdf2_sha256$20000$mb3id3CuqfYp$4BCvg6zXtev6Sawh+DaohiutwQ9axBUYas1scEZULEg=	\N	f	798patriciovaldiviac	Patricio	Valdivia Comett 	demo@demo.com	f	t	2019-01-21 03:08:49.75879+00	5
799	pbkdf2_sha256$20000$J6TAYkZaUnsa$+lYviLBO1q48N8O9MA9HTgVM5/IHgqeqvbgfrDVySnA=	\N	f	799lukastoledowerner	Lukas	Toledo Werner 	demo@demo.com	f	t	2019-01-21 03:08:49.782602+00	5
800	pbkdf2_sha256$20000$dbO1jqJBGGCK$FpUkCz1ORstf2nKA2qdiJZqQocmKWIs4kr+C/twSSBE=	\N	f	800carlosrojocamez	Carlos	Rojo Cámez 	demo@demo.com	f	t	2019-01-21 03:08:49.806668+00	5
801	pbkdf2_sha256$20000$kgAXiZdsW2gW$+U/ong0kBMQpBRS1qW89hvZQXzO4O6puNS2neHk0FeQ=	\N	f	801juanpabloreydavo	Juan Pablo	Rey Davó 	demo@demo.com	f	t	2019-01-21 03:08:49.831112+00	5
802	pbkdf2_sha256$20000$NFazrOMjM4ZK$x3ZT24JoJZVil3mF4Sj+teHUnaFtpTv321FpcF18GC8=	\N	f	802diegoreydavo	Diego	Rey Davó 	demo@demo.com	f	t	2019-01-21 03:08:49.854781+00	5
803	pbkdf2_sha256$20000$twRyRIUpqUO1$Vzpk21l5K6Q3MEBpmfKOPJXpTWEamheTuFjjhXvRibE=	\N	f	803gustavooteroriver	Gustavo	Otero Rivera 	demo@demo.com	f	t	2019-01-21 03:08:49.879146+00	5
804	pbkdf2_sha256$20000$Wd2Z27nOGDWw$aTx2ZWtSaAVfs1sSWOu7Pv13YbLl1wIuLakRM0s1RV8=	\N	f	804leonardoosoriosau	Leonardo	Osorio Sauza 	demo@demo.com	f	t	2019-01-21 03:08:49.903079+00	5
805	pbkdf2_sha256$20000$XYhs6pzhXHJl$9xpsVHHTFIJ3nt+w3HgmPAaw0mJdTjP1xBNPs9QlACA=	\N	f	805franziscomüllerpa	Franzisco	Müller Paul 	demo@demo.com	f	t	2019-01-21 03:08:49.936514+00	5
806	pbkdf2_sha256$20000$r2TqxytEQFvr$RkH1ofAXDcZvaKW8yQlHWWEubI/Fgmt7OzkQl+V04Ro=	\N	f	806ernestolopezbalta	Ernesto	López Baltazar 	demo@demo.com	f	t	2019-01-21 03:08:49.962289+00	5
807	pbkdf2_sha256$20000$W1PTn5HFXMql$vXkCStwE5CcSPQMRkySzUPt9jupxK21dsxrZylFwoCk=	\N	f	807alexanderleitmeir	Alexander	Leitmeir Rosas 	demo@demo.com	f	t	2019-01-21 03:08:49.986084+00	5
808	pbkdf2_sha256$20000$5fGnkaKNy4uE$OmZSim9eVQcwE2HoA6dyja2TqAJRY06gzGF8O5JWcxY=	\N	f	808diegokaiserlopez	Diego	Kaiser López	demo@demo.com	f	t	2019-01-21 03:08:50.009845+00	5
809	pbkdf2_sha256$20000$sttmrBhnerD6$8AMtoGg+mZXV+3gm9ObyoBaUOxSU63KT+QI7oB3uwmQ=	\N	f	809brunofernandeztor	Bruno	Fernández Torres 	demo@demo.com	f	t	2019-01-21 03:08:50.033569+00	5
810	pbkdf2_sha256$20000$4QhMe0IIrFC7$WjuT7EnFLu0KQBdYuFJ1fc16Ydw9atsg3o7Cv8FJvFA=	\N	f	810santiagofavelabat	Santiago	Favela Batista 	demo@demo.com	f	t	2019-01-21 03:08:50.057289+00	5
811	pbkdf2_sha256$20000$WTWgrfnny1qj$s3y4R/LJTI+xQeTMgrR+aU09/VZThnU48tLWDFpQcyk=	\N	f	811thomasleonardoenr	Thomas Leonardo	Enriquez Jímenez	demo@demo.com	f	t	2019-01-21 03:08:50.081131+00	5
812	pbkdf2_sha256$20000$CjRhlRN6PkIp$pwz/w2DbyX49BdvxWXBb9tKX+sWYKpNfeE1+NWb7AdM=	\N	f	812liamdiederichsenr	Liam	Diederichsen Rodríguez 	demo@demo.com	f	t	2019-01-21 03:08:50.105903+00	5
813	pbkdf2_sha256$20000$6uEUDBmT3Jo0$6HuqVHhQVm9sT8Uw2PqxSuUE4vINnRiT4KB+rsLiS9s=	\N	f	813andrescarrillogan	Andrés	Carrillo Gándara 	demo@demo.com	f	t	2019-01-21 03:08:50.142932+00	5
814	pbkdf2_sha256$20000$W2bPweja5Soc$CA3iI5a76nk+wua1B/v/B1j+e0j5A88KrFb1jwxBZ84=	\N	f	814santiagocaballero	Santiago	Caballero López 	demo@demo.com	f	t	2019-01-21 03:08:50.167262+00	5
815	pbkdf2_sha256$20000$vTlHsVQkvJwN$zyMqb85fl3zgiFqNiyznvox3z1xkxSTJI3SGm0MCFP8=	\N	f	815brunoarredondoeli	Bruno	Arredondo Elizalde 	demo@demo.com	f	t	2019-01-21 03:08:50.195291+00	5
816	pbkdf2_sha256$20000$OaqOdhFpfiG8$kfIlaY1xcO8th0LEkJRjZF3nJy+7izaoIvPrfA8y/Bk=	\N	f	816luisabdeljalekmil	Luis	Abdeljalek Miller 	demo@demo.com	f	t	2019-01-21 03:08:50.229319+00	5
1768	pbkdf2_sha256$20000$Ylnhr2qr1tnE$vBeNblY4SOfh0dSwTVFqa4+qrFARZzCCOhNzaPGKkeg=	\N	f	pareni68	Pablo	arenillas	name@example.com	f	t	2019-01-30 01:02:22.904971+00	5
1813	pbkdf2_sha256$20000$W6yic105SBGo$RfSGdBJ2q1U/DOL2mvsFVvJi8BEzUsAm1w8bAPhPZMQ=	\N	f	eugald13	Emilio	Ugalde	name@example.com	f	t	2019-01-30 01:02:24.208426+00	4
1814	pbkdf2_sha256$20000$ejEL8LJk1s5S$2VGVieH+xtRksTfUT5e5A5wT15LLOMIhK6XNk61MSxo=	\N	f	ananco14	Alfredo	Nanco	name@example.com	f	t	2019-01-30 01:02:24.23356+00	4
1816	pbkdf2_sha256$20000$GzDrQ3yaJK1y$LbMWRnyrz2zLNBLWr/VvmX1Q549ds+XnKjcqkT/FaQY=	2019-01-30 21:25:04.612853+00	f	jangel16	Julio	Angeles	name@example.com	f	t	2019-01-30 01:02:24.285063+00	4
1815	pbkdf2_sha256$20000$Ho4vu1crh2k0$65t0/63N5VAaGxxsie4SNpHyQsayQi2dxuEBjrItPWU=	2019-02-27 18:04:24.404287+00	f	hlino15	Hugo	Lino	name@example.com	f	t	2019-01-30 01:02:24.259132+00	4
\.


--
-- TOC entry 3386 (class 0 OID 16639)
-- Dependencies: 233
-- Data for Name: users_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 3388 (class 0 OID 16649)
-- Dependencies: 235
-- Data for Name: users_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3445 (class 0 OID 0)
-- Dependencies: 216
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3446 (class 0 OID 0)
-- Dependencies: 218
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3447 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- TOC entry 3448 (class 0 OID 0)
-- Dependencies: 236
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4910, true);


--
-- TOC entry 3449 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 28, true);


--
-- TOC entry 3450 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);


--
-- TOC entry 3451 (class 0 OID 0)
-- Dependencies: 238
-- Name: evaluations_evaluacioncualitativa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_evaluacioncualitativa_id_seq', 8, true);


--
-- TOC entry 3452 (class 0 OID 0)
-- Dependencies: 240
-- Name: evaluations_evaluacioncuantitativa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_evaluacioncuantitativa_id_seq', 4, true);


--
-- TOC entry 3453 (class 0 OID 0)
-- Dependencies: 242
-- Name: evaluations_grupodeobjectivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_grupodeobjectivos_id_seq', 3, true);


--
-- TOC entry 3454 (class 0 OID 0)
-- Dependencies: 257
-- Name: evaluations_grupodeobjectivos_objetivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_grupodeobjectivos_objetivos_id_seq', 9, true);


--
-- TOC entry 3455 (class 0 OID 0)
-- Dependencies: 255
-- Name: evaluations_objetivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_objetivo_id_seq', 3, true);


--
-- TOC entry 3456 (class 0 OID 0)
-- Dependencies: 244
-- Name: evaluations_periododeevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_periododeevaluacion_id_seq', 6, true);


--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 246
-- Name: evaluations_resultadocualitativo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_resultadocualitativo_id_seq', 19, true);


--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 248
-- Name: evaluations_resultadocuantitativo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.evaluations_resultadocuantitativo_id_seq', 2, true);


--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 250
-- Name: matches_partido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.matches_partido_id_seq', 1, false);


--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 252
-- Name: payments_pago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payments_pago_id_seq', 1, false);


--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 198
-- Name: schools_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_categoria_id_seq', 119, true);


--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 200
-- Name: schools_cede_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_cede_id_seq', 15, true);


--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 202
-- Name: schools_diciplina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_diciplina_id_seq', 1, true);


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 206
-- Name: schools_escuela_diciplinas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_escuela_diciplinas_id_seq', 20, true);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 204
-- Name: schools_escuela_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_escuela_id_seq', 7, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 208
-- Name: schools_importarcategorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_importarcategorias_id_seq', 1, false);


--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 210
-- Name: schools_sliderescuela_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.schools_sliderescuela_id_seq', 6, true);


--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 222
-- Name: users_asistencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_asistencia_id_seq', 1, false);


--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 230
-- Name: users_profesor_categorias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_profesor_categorias_id_seq', 140, true);


--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 232
-- Name: users_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_groups_id_seq', 1, false);


--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 220
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 1841, true);


--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 234
-- Name: users_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3025 (class 2606 OID 16544)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3031 (class 2606 OID 16554)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 3033 (class 2606 OID 16552)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3027 (class 2606 OID 16542)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3020 (class 2606 OID 16534)
-- Name: auth_permission auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 3022 (class 2606 OID 16532)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3091 (class 2606 OID 16817)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3015 (class 2606 OID 16524)
-- Name: django_content_type django_content_type_app_label_67abfa5f0f03bd04_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_67abfa5f0f03bd04_uniq UNIQUE (app_label, model);


--
-- TOC entry 3017 (class 2606 OID 16522)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2976 (class 2606 OID 16394)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3143 (class 2606 OID 17057)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3097 (class 2606 OID 16841)
-- Name: evaluations_evaluacioncualitativa evaluations_evaluacioncualitativa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncualitativa
    ADD CONSTRAINT evaluations_evaluacioncualitativa_pkey PRIMARY KEY (id);


--
-- TOC entry 3104 (class 2606 OID 16850)
-- Name: evaluations_evaluacioncuantitativa evaluations_evaluacioncuantitativa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa
    ADD CONSTRAINT evaluations_evaluacioncuantitativa_pkey PRIMARY KEY (id);


--
-- TOC entry 3151 (class 2606 OID 25328)
-- Name: evaluations_grupodeobjectivos_objetivos evaluations_grupodeobjectivos_grupodeobjectivos_id_objetivo_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos_objetivos
    ADD CONSTRAINT evaluations_grupodeobjectivos_grupodeobjectivos_id_objetivo_key UNIQUE (grupodeobjectivos_id, objetivo_id);


--
-- TOC entry 3155 (class 2606 OID 25326)
-- Name: evaluations_grupodeobjectivos_objetivos evaluations_grupodeobjectivos_objetivos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos_objetivos
    ADD CONSTRAINT evaluations_grupodeobjectivos_objetivos_pkey PRIMARY KEY (id);


--
-- TOC entry 3110 (class 2606 OID 16858)
-- Name: evaluations_grupodeobjectivos evaluations_grupodeobjectivos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos
    ADD CONSTRAINT evaluations_grupodeobjectivos_pkey PRIMARY KEY (id);


--
-- TOC entry 3149 (class 2606 OID 25296)
-- Name: evaluations_objetivo evaluations_objetivo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_objetivo
    ADD CONSTRAINT evaluations_objetivo_pkey PRIMARY KEY (id);


--
-- TOC entry 3116 (class 2606 OID 16866)
-- Name: evaluations_periododeevaluacion evaluations_periododeevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_periododeevaluacion
    ADD CONSTRAINT evaluations_periododeevaluacion_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 16878)
-- Name: evaluations_resultadocualitativo evaluations_resultadocualitativo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT evaluations_resultadocualitativo_pkey PRIMARY KEY (id);


--
-- TOC entry 3133 (class 2606 OID 16891)
-- Name: evaluations_resultadocuantitativo evaluations_resultadocuantitativo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT evaluations_resultadocuantitativo_pkey PRIMARY KEY (id);


--
-- TOC entry 3136 (class 2606 OID 17028)
-- Name: matches_partido matches_partido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matches_partido
    ADD CONSTRAINT matches_partido_pkey PRIMARY KEY (id);


--
-- TOC entry 3138 (class 2606 OID 17044)
-- Name: payments_pago payments_pago_escuela_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_pago
    ADD CONSTRAINT payments_pago_escuela_id_key UNIQUE (escuela_id);


--
-- TOC entry 3140 (class 2606 OID 17042)
-- Name: payments_pago payments_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_pago
    ADD CONSTRAINT payments_pago_pkey PRIMARY KEY (id);


--
-- TOC entry 2980 (class 2606 OID 16402)
-- Name: schools_categoria schools_categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_categoria
    ADD CONSTRAINT schools_categoria_pkey PRIMARY KEY (id);


--
-- TOC entry 2983 (class 2606 OID 16404)
-- Name: schools_categoria schools_categoria_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_categoria
    ADD CONSTRAINT schools_categoria_slug_key UNIQUE (slug);


--
-- TOC entry 2986 (class 2606 OID 16415)
-- Name: schools_cede schools_cede_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_cede
    ADD CONSTRAINT schools_cede_pkey PRIMARY KEY (id);


--
-- TOC entry 2989 (class 2606 OID 16417)
-- Name: schools_cede schools_cede_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_cede
    ADD CONSTRAINT schools_cede_slug_key UNIQUE (slug);


--
-- TOC entry 2991 (class 2606 OID 16425)
-- Name: schools_diciplina schools_diciplina_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_diciplina
    ADD CONSTRAINT schools_diciplina_pkey PRIMARY KEY (id);


--
-- TOC entry 2994 (class 2606 OID 16427)
-- Name: schools_diciplina schools_diciplina_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_diciplina
    ADD CONSTRAINT schools_diciplina_slug_key UNIQUE (slug);


--
-- TOC entry 3003 (class 2606 OID 16450)
-- Name: schools_escuela_diciplinas schools_escuela_diciplinas_escuela_id_diciplina_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela_diciplinas
    ADD CONSTRAINT schools_escuela_diciplinas_escuela_id_diciplina_id_key UNIQUE (escuela_id, diciplina_id);


--
-- TOC entry 3005 (class 2606 OID 16448)
-- Name: schools_escuela_diciplinas schools_escuela_diciplinas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela_diciplinas
    ADD CONSTRAINT schools_escuela_diciplinas_pkey PRIMARY KEY (id);


--
-- TOC entry 2996 (class 2606 OID 16438)
-- Name: schools_escuela schools_escuela_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela
    ADD CONSTRAINT schools_escuela_pkey PRIMARY KEY (id);


--
-- TOC entry 2999 (class 2606 OID 16440)
-- Name: schools_escuela schools_escuela_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela
    ADD CONSTRAINT schools_escuela_slug_key UNIQUE (slug);


--
-- TOC entry 3007 (class 2606 OID 16460)
-- Name: schools_importarcategorias schools_importarcategorias_escuela_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_importarcategorias
    ADD CONSTRAINT schools_importarcategorias_escuela_id_key UNIQUE (escuela_id);


--
-- TOC entry 3009 (class 2606 OID 16458)
-- Name: schools_importarcategorias schools_importarcategorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_importarcategorias
    ADD CONSTRAINT schools_importarcategorias_pkey PRIMARY KEY (id);


--
-- TOC entry 3011 (class 2606 OID 16470)
-- Name: schools_sliderescuela schools_sliderescuela_escuela_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_sliderescuela
    ADD CONSTRAINT schools_sliderescuela_escuela_id_key UNIQUE (escuela_id);


--
-- TOC entry 3013 (class 2606 OID 16468)
-- Name: schools_sliderescuela schools_sliderescuela_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_sliderescuela
    ADD CONSTRAINT schools_sliderescuela_pkey PRIMARY KEY (id);


--
-- TOC entry 3042 (class 2606 OID 16592)
-- Name: users_asistencia users_asistencia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_asistencia
    ADD CONSTRAINT users_asistencia_pkey PRIMARY KEY (id);


--
-- TOC entry 3044 (class 2606 OID 16599)
-- Name: users_caja users_caja_cede_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_caja
    ADD CONSTRAINT users_caja_cede_id_key UNIQUE (cede_id);


--
-- TOC entry 3046 (class 2606 OID 16601)
-- Name: users_caja users_caja_escuela_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_caja
    ADD CONSTRAINT users_caja_escuela_id_key UNIQUE (escuela_id);


--
-- TOC entry 3048 (class 2606 OID 16597)
-- Name: users_caja users_caja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_caja
    ADD CONSTRAINT users_caja_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3052 (class 2606 OID 16606)
-- Name: users_coordinador users_coordinador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_coordinador
    ADD CONSTRAINT users_coordinador_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3056 (class 2606 OID 16611)
-- Name: users_director users_director_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_director
    ADD CONSTRAINT users_director_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3058 (class 2606 OID 16616)
-- Name: users_graham users_graham_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_graham
    ADD CONSTRAINT users_graham_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3064 (class 2606 OID 16621)
-- Name: users_padrealumno users_padrealumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_padrealumno
    ADD CONSTRAINT users_padrealumno_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3073 (class 2606 OID 16634)
-- Name: users_profesor_categorias users_profesor_categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_profesor_categorias_pkey PRIMARY KEY (id);


--
-- TOC entry 3075 (class 2606 OID 16636)
-- Name: users_profesor_categorias users_profesor_categorias_profesor_id_categoria_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_profesor_categorias_profesor_id_categoria_id_key UNIQUE (profesor_id, categoria_id);


--
-- TOC entry 3069 (class 2606 OID 16626)
-- Name: users_profesor users_profesor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3079 (class 2606 OID 16644)
-- Name: users_user_groups users_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3081 (class 2606 OID 16646)
-- Name: users_user_groups users_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 3035 (class 2606 OID 16582)
-- Name: users_user users_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3085 (class 2606 OID 16654)
-- Name: users_user_user_permissions users_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3087 (class 2606 OID 16656)
-- Name: users_user_user_permissions users_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 3038 (class 2606 OID 16584)
-- Name: users_user users_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user
    ADD CONSTRAINT users_user_username_key UNIQUE (username);


--
-- TOC entry 3023 (class 1259 OID 16561)
-- Name: auth_group_name_132f63024d5665ab_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_132f63024d5665ab_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3028 (class 1259 OID 16572)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_0e939a4f ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3029 (class 1259 OID 16573)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_8373b171 ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3018 (class 1259 OID 16560)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_417f1b1c ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3088 (class 1259 OID 16828)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_417f1b1c ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3089 (class 1259 OID 16829)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_e8701ad4 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3141 (class 1259 OID 17058)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_de54fa62 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3144 (class 1259 OID 17059)
-- Name: django_session_session_key_63d4f32cca2f7626_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_63d4f32cca2f7626_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3092 (class 1259 OID 16998)
-- Name: evaluations_evaluacioncualitativa_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncualitativa_334a5176 ON public.evaluations_evaluacioncualitativa USING btree (diciplina_id);


--
-- TOC entry 3093 (class 1259 OID 17004)
-- Name: evaluations_evaluacioncualitativa_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncualitativa_8a08820e ON public.evaluations_evaluacioncualitativa USING btree (escuela_id);


--
-- TOC entry 3094 (class 1259 OID 17010)
-- Name: evaluations_evaluacioncualitativa_d8fba268; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncualitativa_d8fba268 ON public.evaluations_evaluacioncualitativa USING btree (periodo_id);


--
-- TOC entry 3095 (class 1259 OID 25347)
-- Name: evaluations_evaluacioncualitativa_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncualitativa_daf3833b ON public.evaluations_evaluacioncualitativa USING btree (categoria_id);


--
-- TOC entry 3098 (class 1259 OID 25359)
-- Name: evaluations_evaluacioncuantitativa_19cbe86c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncuantitativa_19cbe86c ON public.evaluations_evaluacioncuantitativa USING btree (grupo_de_objetivos_id);


--
-- TOC entry 3099 (class 1259 OID 16980)
-- Name: evaluations_evaluacioncuantitativa_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncuantitativa_334a5176 ON public.evaluations_evaluacioncuantitativa USING btree (diciplina_id);


--
-- TOC entry 3100 (class 1259 OID 16986)
-- Name: evaluations_evaluacioncuantitativa_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncuantitativa_8a08820e ON public.evaluations_evaluacioncuantitativa USING btree (escuela_id);


--
-- TOC entry 3101 (class 1259 OID 16992)
-- Name: evaluations_evaluacioncuantitativa_d8fba268; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncuantitativa_d8fba268 ON public.evaluations_evaluacioncuantitativa USING btree (periodo_id);


--
-- TOC entry 3102 (class 1259 OID 25353)
-- Name: evaluations_evaluacioncuantitativa_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_evaluacioncuantitativa_daf3833b ON public.evaluations_evaluacioncuantitativa USING btree (categoria_id);


--
-- TOC entry 3105 (class 1259 OID 16892)
-- Name: evaluations_grupodeobjectivos_2dbcba41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_2dbcba41 ON public.evaluations_grupodeobjectivos USING btree (slug);


--
-- TOC entry 3106 (class 1259 OID 25371)
-- Name: evaluations_grupodeobjectivos_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_334a5176 ON public.evaluations_grupodeobjectivos USING btree (diciplina_id);


--
-- TOC entry 3107 (class 1259 OID 25377)
-- Name: evaluations_grupodeobjectivos_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_8a08820e ON public.evaluations_grupodeobjectivos USING btree (escuela_id);


--
-- TOC entry 3108 (class 1259 OID 25365)
-- Name: evaluations_grupodeobjectivos_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_daf3833b ON public.evaluations_grupodeobjectivos USING btree (categoria_id);


--
-- TOC entry 3152 (class 1259 OID 25394)
-- Name: evaluations_grupodeobjectivos_objetivos_3740e996; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_objetivos_3740e996 ON public.evaluations_grupodeobjectivos_objetivos USING btree (objetivo_id);


--
-- TOC entry 3153 (class 1259 OID 25393)
-- Name: evaluations_grupodeobjectivos_objetivos_757bce2a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_objetivos_757bce2a ON public.evaluations_grupodeobjectivos_objetivos USING btree (grupodeobjectivos_id);


--
-- TOC entry 3111 (class 1259 OID 16893)
-- Name: evaluations_grupodeobjectivos_slug_55d1cc9a0370fb1b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_grupodeobjectivos_slug_55d1cc9a0370fb1b_like ON public.evaluations_grupodeobjectivos USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3145 (class 1259 OID 25345)
-- Name: evaluations_objetivo_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_objetivo_334a5176 ON public.evaluations_objetivo USING btree (diciplina_id);


--
-- TOC entry 3146 (class 1259 OID 25346)
-- Name: evaluations_objetivo_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_objetivo_8a08820e ON public.evaluations_objetivo USING btree (escuela_id);


--
-- TOC entry 3147 (class 1259 OID 25344)
-- Name: evaluations_objetivo_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_objetivo_daf3833b ON public.evaluations_objetivo USING btree (categoria_id);


--
-- TOC entry 3112 (class 1259 OID 16894)
-- Name: evaluations_periododeevaluacion_2dbcba41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_periododeevaluacion_2dbcba41 ON public.evaluations_periododeevaluacion USING btree (slug);


--
-- TOC entry 3113 (class 1259 OID 16968)
-- Name: evaluations_periododeevaluacion_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_periododeevaluacion_334a5176 ON public.evaluations_periododeevaluacion USING btree (diciplina_id);


--
-- TOC entry 3114 (class 1259 OID 16974)
-- Name: evaluations_periododeevaluacion_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_periododeevaluacion_8a08820e ON public.evaluations_periododeevaluacion USING btree (escuela_id);


--
-- TOC entry 3117 (class 1259 OID 16895)
-- Name: evaluations_periododeevaluacion_slug_4ffdf8904a1b7b28_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_periododeevaluacion_slug_4ffdf8904a1b7b28_like ON public.evaluations_periododeevaluacion USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3118 (class 1259 OID 16962)
-- Name: evaluations_resultadocualitativo_21c9ccfc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocualitativo_21c9ccfc ON public.evaluations_resultadocualitativo USING btree (profesor_id);


--
-- TOC entry 3119 (class 1259 OID 16938)
-- Name: evaluations_resultadocualitativo_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocualitativo_334a5176 ON public.evaluations_resultadocualitativo USING btree (diciplina_id);


--
-- TOC entry 3120 (class 1259 OID 16950)
-- Name: evaluations_resultadocualitativo_674780a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocualitativo_674780a4 ON public.evaluations_resultadocualitativo USING btree (evaluacion_id);


--
-- TOC entry 3121 (class 1259 OID 16932)
-- Name: evaluations_resultadocualitativo_684f96c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocualitativo_684f96c4 ON public.evaluations_resultadocualitativo USING btree (alumno_id);


--
-- TOC entry 3122 (class 1259 OID 16944)
-- Name: evaluations_resultadocualitativo_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocualitativo_8a08820e ON public.evaluations_resultadocualitativo USING btree (escuela_id);


--
-- TOC entry 3123 (class 1259 OID 16956)
-- Name: evaluations_resultadocualitativo_d8fba268; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocualitativo_d8fba268 ON public.evaluations_resultadocualitativo USING btree (periodo_id);


--
-- TOC entry 3126 (class 1259 OID 16926)
-- Name: evaluations_resultadocuantitativo_21c9ccfc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocuantitativo_21c9ccfc ON public.evaluations_resultadocuantitativo USING btree (profesor_id);


--
-- TOC entry 3127 (class 1259 OID 16902)
-- Name: evaluations_resultadocuantitativo_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocuantitativo_334a5176 ON public.evaluations_resultadocuantitativo USING btree (diciplina_id);


--
-- TOC entry 3128 (class 1259 OID 16914)
-- Name: evaluations_resultadocuantitativo_674780a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocuantitativo_674780a4 ON public.evaluations_resultadocuantitativo USING btree (evaluacion_id);


--
-- TOC entry 3129 (class 1259 OID 16896)
-- Name: evaluations_resultadocuantitativo_684f96c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocuantitativo_684f96c4 ON public.evaluations_resultadocuantitativo USING btree (alumno_id);


--
-- TOC entry 3130 (class 1259 OID 16908)
-- Name: evaluations_resultadocuantitativo_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocuantitativo_8a08820e ON public.evaluations_resultadocuantitativo USING btree (escuela_id);


--
-- TOC entry 3131 (class 1259 OID 16920)
-- Name: evaluations_resultadocuantitativo_d8fba268; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX evaluations_resultadocuantitativo_d8fba268 ON public.evaluations_resultadocuantitativo USING btree (periodo_id);


--
-- TOC entry 3134 (class 1259 OID 17034)
-- Name: matches_partido_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX matches_partido_daf3833b ON public.matches_partido USING btree (categoria_id);


--
-- TOC entry 2977 (class 1259 OID 16503)
-- Name: schools_categoria_2275ee47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_categoria_2275ee47 ON public.schools_categoria USING btree (cede_id);


--
-- TOC entry 2978 (class 1259 OID 16509)
-- Name: schools_categoria_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_categoria_8a08820e ON public.schools_categoria USING btree (escuela_id);


--
-- TOC entry 2981 (class 1259 OID 16471)
-- Name: schools_categoria_slug_575c6898f4ff805a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_categoria_slug_575c6898f4ff805a_like ON public.schools_categoria USING btree (slug varchar_pattern_ops);


--
-- TOC entry 2984 (class 1259 OID 16497)
-- Name: schools_cede_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_cede_8a08820e ON public.schools_cede USING btree (escuela_id);


--
-- TOC entry 2987 (class 1259 OID 16472)
-- Name: schools_cede_slug_3696b5e102dc860d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_cede_slug_3696b5e102dc860d_like ON public.schools_cede USING btree (slug varchar_pattern_ops);


--
-- TOC entry 2992 (class 1259 OID 16473)
-- Name: schools_diciplina_slug_74e3ccac1356ef6f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_diciplina_slug_74e3ccac1356ef6f_like ON public.schools_diciplina USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3000 (class 1259 OID 16486)
-- Name: schools_escuela_diciplinas_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_escuela_diciplinas_334a5176 ON public.schools_escuela_diciplinas USING btree (diciplina_id);


--
-- TOC entry 3001 (class 1259 OID 16485)
-- Name: schools_escuela_diciplinas_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_escuela_diciplinas_8a08820e ON public.schools_escuela_diciplinas USING btree (escuela_id);


--
-- TOC entry 2997 (class 1259 OID 16474)
-- Name: schools_escuela_slug_2fff14135f274328_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX schools_escuela_slug_2fff14135f274328_like ON public.schools_escuela USING btree (slug varchar_pattern_ops);


--
-- TOC entry 3039 (class 1259 OID 16800)
-- Name: users_asistencia_684f96c4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_asistencia_684f96c4 ON public.users_asistencia USING btree (alumno_id);


--
-- TOC entry 3040 (class 1259 OID 25408)
-- Name: users_asistencia_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_asistencia_daf3833b ON public.users_asistencia USING btree (categoria_id);


--
-- TOC entry 3049 (class 1259 OID 16688)
-- Name: users_coordinador_2275ee47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_coordinador_2275ee47 ON public.users_coordinador USING btree (cede_id);


--
-- TOC entry 3050 (class 1259 OID 16689)
-- Name: users_coordinador_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_coordinador_8a08820e ON public.users_coordinador USING btree (escuela_id);


--
-- TOC entry 3053 (class 1259 OID 16705)
-- Name: users_director_2275ee47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_director_2275ee47 ON public.users_director USING btree (cede_id);


--
-- TOC entry 3054 (class 1259 OID 16706)
-- Name: users_director_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_director_8a08820e ON public.users_director USING btree (escuela_id);


--
-- TOC entry 3059 (class 1259 OID 16738)
-- Name: users_padrealumno_2275ee47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_padrealumno_2275ee47 ON public.users_padrealumno USING btree (cede_id);


--
-- TOC entry 3060 (class 1259 OID 16739)
-- Name: users_padrealumno_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_padrealumno_334a5176 ON public.users_padrealumno USING btree (diciplina_id);


--
-- TOC entry 3061 (class 1259 OID 16740)
-- Name: users_padrealumno_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_padrealumno_8a08820e ON public.users_padrealumno USING btree (escuela_id);


--
-- TOC entry 3062 (class 1259 OID 16737)
-- Name: users_padrealumno_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_padrealumno_daf3833b ON public.users_padrealumno USING btree (categoria_id);


--
-- TOC entry 3065 (class 1259 OID 16761)
-- Name: users_profesor_2275ee47; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_2275ee47 ON public.users_profesor USING btree (cede_id);


--
-- TOC entry 3066 (class 1259 OID 16762)
-- Name: users_profesor_334a5176; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_334a5176 ON public.users_profesor USING btree (diciplina_id);


--
-- TOC entry 3067 (class 1259 OID 16763)
-- Name: users_profesor_8a08820e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_8a08820e ON public.users_profesor USING btree (escuela_id);


--
-- TOC entry 3070 (class 1259 OID 16774)
-- Name: users_profesor_categorias_21c9ccfc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_categorias_21c9ccfc ON public.users_profesor_categorias USING btree (profesor_id);


--
-- TOC entry 3071 (class 1259 OID 16775)
-- Name: users_profesor_categorias_daf3833b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_profesor_categorias_daf3833b ON public.users_profesor_categorias USING btree (categoria_id);


--
-- TOC entry 3076 (class 1259 OID 16787)
-- Name: users_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_0e939a4f ON public.users_user_groups USING btree (group_id);


--
-- TOC entry 3077 (class 1259 OID 16786)
-- Name: users_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_groups_e8701ad4 ON public.users_user_groups USING btree (user_id);


--
-- TOC entry 3082 (class 1259 OID 16799)
-- Name: users_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_8373b171 ON public.users_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3083 (class 1259 OID 16798)
-- Name: users_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_user_permissions_e8701ad4 ON public.users_user_user_permissions USING btree (user_id);


--
-- TOC entry 3036 (class 1259 OID 16657)
-- Name: users_user_username_4b7fd2a8e6c0c5aa_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX users_user_username_4b7fd2a8e6c0c5aa_like ON public.users_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3226 (class 2606 OID 25383)
-- Name: evaluations_grupodeobjectivos_objetivos D4f778bed03cbe931b1618e5a7933866; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos_objetivos
    ADD CONSTRAINT "D4f778bed03cbe931b1618e5a7933866" FOREIGN KEY (grupodeobjectivos_id) REFERENCES public.evaluations_grupodeobjectivos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3212 (class 2606 OID 16951)
-- Name: evaluations_resultadocualitativo D73e71986142ef5fcde73c13b47ebd45; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT "D73e71986142ef5fcde73c13b47ebd45" FOREIGN KEY (evaluacion_id) REFERENCES public.evaluations_evaluacioncualitativa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3196 (class 2606 OID 17011)
-- Name: evaluations_evaluacioncualitativa D925d780ece72c197b0c0b012fef983a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncualitativa
    ADD CONSTRAINT "D925d780ece72c197b0c0b012fef983a" FOREIGN KEY (periodo_id) REFERENCES public.evaluations_periododeevaluacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3200 (class 2606 OID 16993)
-- Name: evaluations_evaluacioncuantitativa a5de1a8aee4ada7c7a1ca40bf22a4880; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa
    ADD CONSTRAINT a5de1a8aee4ada7c7a1ca40bf22a4880 FOREIGN KEY (periodo_id) REFERENCES public.evaluations_periododeevaluacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3163 (class 2606 OID 16555)
-- Name: auth_permission auth_content_type_id_451dbb33ed31eed2_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_content_type_id_451dbb33ed31eed2_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3165 (class 2606 OID 16567)
-- Name: auth_group_permissions auth_group__permission_id_9a31ba73353fe25_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group__permission_id_9a31ba73353fe25_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3164 (class 2606 OID 16562)
-- Name: auth_group_permissions auth_group_permissio_group_id_3c455d6f31ad2df0_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_3c455d6f31ad2df0_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3213 (class 2606 OID 16957)
-- Name: evaluations_resultadocualitativo cdf8011804a79ee86c3c4483efbf80bc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT cdf8011804a79ee86c3c4483efbf80bc FOREIGN KEY (periodo_id) REFERENCES public.evaluations_periododeevaluacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3203 (class 2606 OID 25360)
-- Name: evaluations_evaluacioncuantitativa d6fbad8e74baf439bfffcd21ef50fcb2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa
    ADD CONSTRAINT d6fbad8e74baf439bfffcd21ef50fcb2 FOREIGN KEY (grupo_de_objetivos_id) REFERENCES public.evaluations_grupodeobjectivos(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3219 (class 2606 OID 16921)
-- Name: evaluations_resultadocuantitativo db27932e314f8776bf3b1986a2f5e4be; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT db27932e314f8776bf3b1986a2f5e4be FOREIGN KEY (periodo_id) REFERENCES public.evaluations_periododeevaluacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3193 (class 2606 OID 16818)
-- Name: django_admin_log djan_content_type_id_2f4217673047b7fa_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT djan_content_type_id_2f4217673047b7fa_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3194 (class 2606 OID 16823)
-- Name: django_admin_log django_admin_log_user_id_64ccfb67c4196054_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_64ccfb67c4196054_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3218 (class 2606 OID 16915)
-- Name: evaluations_resultadocuantitativo eee970ceb6e6d3310fe54a3dfc522fdb; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT eee970ceb6e6d3310fe54a3dfc522fdb FOREIGN KEY (evaluacion_id) REFERENCES public.evaluations_evaluacioncuantitativa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3209 (class 2606 OID 16933)
-- Name: evaluations_resultadocualitativo evaluat_alumno_id_3e219eb5d2068d0f_fk_users_padrealumno_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT evaluat_alumno_id_3e219eb5d2068d0f_fk_users_padrealumno_user_id FOREIGN KEY (alumno_id) REFERENCES public.users_padrealumno(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3215 (class 2606 OID 16897)
-- Name: evaluations_resultadocuantitativo evaluat_alumno_id_5fba7bc4daeda51c_fk_users_padrealumno_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT evaluat_alumno_id_5fba7bc4daeda51c_fk_users_padrealumno_user_id FOREIGN KEY (alumno_id) REFERENCES public.users_padrealumno(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3227 (class 2606 OID 25388)
-- Name: evaluations_grupodeobjectivos_objetivos evaluat_objetivo_id_7398abcf8b762d9f_fk_evaluations_objetivo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos_objetivos
    ADD CONSTRAINT evaluat_objetivo_id_7398abcf8b762d9f_fk_evaluations_objetivo_id FOREIGN KEY (objetivo_id) REFERENCES public.evaluations_objetivo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3220 (class 2606 OID 16927)
-- Name: evaluations_resultadocuantitativo evaluati_profesor_id_24f6beede61fff5b_fk_users_profesor_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT evaluati_profesor_id_24f6beede61fff5b_fk_users_profesor_user_id FOREIGN KEY (profesor_id) REFERENCES public.users_profesor(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3214 (class 2606 OID 16963)
-- Name: evaluations_resultadocualitativo evaluati_profesor_id_445b7bcb3b495ce8_fk_users_profesor_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT evaluati_profesor_id_445b7bcb3b495ce8_fk_users_profesor_user_id FOREIGN KEY (profesor_id) REFERENCES public.users_profesor(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3198 (class 2606 OID 25348)
-- Name: evaluations_evaluacioncualitativa evaluatio_categoria_id_4a28fe83de18165b_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncualitativa
    ADD CONSTRAINT evaluatio_categoria_id_4a28fe83de18165b_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3223 (class 2606 OID 25329)
-- Name: evaluations_objetivo evaluatio_categoria_id_4d7d11ee67a2703b_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_objetivo
    ADD CONSTRAINT evaluatio_categoria_id_4d7d11ee67a2703b_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3204 (class 2606 OID 25366)
-- Name: evaluations_grupodeobjectivos evaluatio_categoria_id_551d22038604ba0e_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos
    ADD CONSTRAINT evaluatio_categoria_id_551d22038604ba0e_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3201 (class 2606 OID 25311)
-- Name: evaluations_evaluacioncuantitativa evaluatio_diciplina_id_1d97ffaf54568f47_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa
    ADD CONSTRAINT evaluatio_diciplina_id_1d97ffaf54568f47_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3207 (class 2606 OID 16969)
-- Name: evaluations_periododeevaluacion evaluatio_diciplina_id_248e0ad3343cd166_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_periododeevaluacion
    ADD CONSTRAINT evaluatio_diciplina_id_248e0ad3343cd166_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3210 (class 2606 OID 16939)
-- Name: evaluations_resultadocualitativo evaluatio_diciplina_id_2b1df7ebc0bf4710_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT evaluatio_diciplina_id_2b1df7ebc0bf4710_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3197 (class 2606 OID 25304)
-- Name: evaluations_evaluacioncualitativa evaluatio_diciplina_id_32209156a95751bc_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncualitativa
    ADD CONSTRAINT evaluatio_diciplina_id_32209156a95751bc_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3216 (class 2606 OID 16903)
-- Name: evaluations_resultadocuantitativo evaluatio_diciplina_id_41c876843af757dd_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT evaluatio_diciplina_id_41c876843af757dd_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3224 (class 2606 OID 25334)
-- Name: evaluations_objetivo evaluatio_diciplina_id_7c84fec494e12f64_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_objetivo
    ADD CONSTRAINT evaluatio_diciplina_id_7c84fec494e12f64_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3202 (class 2606 OID 25354)
-- Name: evaluations_evaluacioncuantitativa evaluation_categoria_id_4009d7aa414c6a8_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa
    ADD CONSTRAINT evaluation_categoria_id_4009d7aa414c6a8_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3205 (class 2606 OID 25372)
-- Name: evaluations_grupodeobjectivos evaluation_diciplina_id_4380f6360124005_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos
    ADD CONSTRAINT evaluation_diciplina_id_4380f6360124005_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3199 (class 2606 OID 16987)
-- Name: evaluations_evaluacioncuantitativa evaluations_e_escuela_id_1f5b58ff5c299f85_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncuantitativa
    ADD CONSTRAINT evaluations_e_escuela_id_1f5b58ff5c299f85_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3195 (class 2606 OID 17005)
-- Name: evaluations_evaluacioncualitativa evaluations_e_escuela_id_5ad937e4405cb0b2_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_evaluacioncualitativa
    ADD CONSTRAINT evaluations_e_escuela_id_5ad937e4405cb0b2_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3206 (class 2606 OID 25378)
-- Name: evaluations_grupodeobjectivos evaluations_g_escuela_id_3eb97021cb2c6c93_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_grupodeobjectivos
    ADD CONSTRAINT evaluations_g_escuela_id_3eb97021cb2c6c93_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3225 (class 2606 OID 25339)
-- Name: evaluations_objetivo evaluations_o_escuela_id_42e32e275082c704_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_objetivo
    ADD CONSTRAINT evaluations_o_escuela_id_42e32e275082c704_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3208 (class 2606 OID 16975)
-- Name: evaluations_periododeevaluacion evaluations_p_escuela_id_57e13c7f5d588998_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_periododeevaluacion
    ADD CONSTRAINT evaluations_p_escuela_id_57e13c7f5d588998_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3217 (class 2606 OID 16909)
-- Name: evaluations_resultadocuantitativo evaluations_r_escuela_id_16bdc551b5b6513f_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocuantitativo
    ADD CONSTRAINT evaluations_r_escuela_id_16bdc551b5b6513f_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3211 (class 2606 OID 16945)
-- Name: evaluations_resultadocualitativo evaluations_re_escuela_id_6bb509271fc64ae_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.evaluations_resultadocualitativo
    ADD CONSTRAINT evaluations_re_escuela_id_6bb509271fc64ae_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3221 (class 2606 OID 17029)
-- Name: matches_partido matches_p_categoria_id_53296366b4691f90_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.matches_partido
    ADD CONSTRAINT matches_p_categoria_id_53296366b4691f90_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3222 (class 2606 OID 17045)
-- Name: payments_pago payments_pago_escuela_id_6c0f261468018642_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payments_pago
    ADD CONSTRAINT payments_pago_escuela_id_6c0f261468018642_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3157 (class 2606 OID 16510)
-- Name: schools_categoria schools_categ_escuela_id_194d72498e2b88ca_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_categoria
    ADD CONSTRAINT schools_categ_escuela_id_194d72498e2b88ca_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3156 (class 2606 OID 16504)
-- Name: schools_categoria schools_categoria_cede_id_16f3a69cc4a6ac0_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_categoria
    ADD CONSTRAINT schools_categoria_cede_id_16f3a69cc4a6ac0_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3158 (class 2606 OID 16498)
-- Name: schools_cede schools_cede_escuela_id_3d32efc274ea861d_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_cede
    ADD CONSTRAINT schools_cede_escuela_id_3d32efc274ea861d_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3160 (class 2606 OID 16480)
-- Name: schools_escuela_diciplinas schools_e_diciplina_id_2fb2eb452b51ef8c_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela_diciplinas
    ADD CONSTRAINT schools_e_diciplina_id_2fb2eb452b51ef8c_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3159 (class 2606 OID 16475)
-- Name: schools_escuela_diciplinas schools_escue_escuela_id_7c75b357fa2dcd2a_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_escuela_diciplinas
    ADD CONSTRAINT schools_escue_escuela_id_7c75b357fa2dcd2a_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3161 (class 2606 OID 16487)
-- Name: schools_importarcategorias schools_impor_escuela_id_4d8a8c96e9740bf9_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_importarcategorias
    ADD CONSTRAINT schools_impor_escuela_id_4d8a8c96e9740bf9_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3162 (class 2606 OID 16492)
-- Name: schools_sliderescuela schools_slide_escuela_id_450dfe9beccac509_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schools_sliderescuela
    ADD CONSTRAINT schools_slide_escuela_id_450dfe9beccac509_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3166 (class 2606 OID 25397)
-- Name: users_asistencia users_a_alumno_id_6f2186764cfb4e9f_fk_users_padrealumno_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_asistencia
    ADD CONSTRAINT users_a_alumno_id_6f2186764cfb4e9f_fk_users_padrealumno_user_id FOREIGN KEY (alumno_id) REFERENCES public.users_padrealumno(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3167 (class 2606 OID 25409)
-- Name: users_asistencia users_asi_categoria_id_22e78a0ce5e6fe99_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_asistencia
    ADD CONSTRAINT users_asi_categoria_id_22e78a0ce5e6fe99_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3169 (class 2606 OID 16663)
-- Name: users_caja users_caja_cede_id_258ceeddc551b6e6_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_caja
    ADD CONSTRAINT users_caja_cede_id_258ceeddc551b6e6_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3170 (class 2606 OID 16668)
-- Name: users_caja users_caja_escuela_id_4f88454660569890_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_caja
    ADD CONSTRAINT users_caja_escuela_id_4f88454660569890_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3168 (class 2606 OID 16658)
-- Name: users_caja users_caja_user_id_45754badb5cf030b_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_caja
    ADD CONSTRAINT users_caja_user_id_45754badb5cf030b_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3173 (class 2606 OID 16683)
-- Name: users_coordinador users_coordin_escuela_id_30543fd4600c709c_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_coordinador
    ADD CONSTRAINT users_coordin_escuela_id_30543fd4600c709c_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3172 (class 2606 OID 16678)
-- Name: users_coordinador users_coordinador_cede_id_31b76006f37e1fee_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_coordinador
    ADD CONSTRAINT users_coordinador_cede_id_31b76006f37e1fee_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3171 (class 2606 OID 16673)
-- Name: users_coordinador users_coordinador_user_id_311b5f072925f3c9_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_coordinador
    ADD CONSTRAINT users_coordinador_user_id_311b5f072925f3c9_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3176 (class 2606 OID 16700)
-- Name: users_director users_directo_escuela_id_743d8812c359917c_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_director
    ADD CONSTRAINT users_directo_escuela_id_743d8812c359917c_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3175 (class 2606 OID 16695)
-- Name: users_director users_director_cede_id_12e46034f9335df2_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_director
    ADD CONSTRAINT users_director_cede_id_12e46034f9335df2_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3174 (class 2606 OID 16690)
-- Name: users_director users_director_user_id_7c88c8eb222435e9_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_director
    ADD CONSTRAINT users_director_user_id_7c88c8eb222435e9_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3177 (class 2606 OID 16707)
-- Name: users_graham users_graham_user_id_27e897d82254084c_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_graham
    ADD CONSTRAINT users_graham_user_id_27e897d82254084c_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3179 (class 2606 OID 16717)
-- Name: users_padrealumno users_pad_categoria_id_58e86bf70e87318b_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_padrealumno
    ADD CONSTRAINT users_pad_categoria_id_58e86bf70e87318b_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3181 (class 2606 OID 16727)
-- Name: users_padrealumno users_pad_diciplina_id_359471ff5a3b4bd2_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_padrealumno
    ADD CONSTRAINT users_pad_diciplina_id_359471ff5a3b4bd2_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3182 (class 2606 OID 16732)
-- Name: users_padrealumno users_padreal_escuela_id_69f5072d8a151d70_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_padrealumno
    ADD CONSTRAINT users_padreal_escuela_id_69f5072d8a151d70_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3180 (class 2606 OID 16722)
-- Name: users_padrealumno users_padrealumno_cede_id_ff252073de110fa_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_padrealumno
    ADD CONSTRAINT users_padrealumno_cede_id_ff252073de110fa_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3178 (class 2606 OID 16712)
-- Name: users_padrealumno users_padrealumno_user_id_7c2c8c3a2782e4d5_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_padrealumno
    ADD CONSTRAINT users_padrealumno_user_id_7c2c8c3a2782e4d5_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3187 (class 2606 OID 16764)
-- Name: users_profesor_categorias users_pr_profesor_id_61e161d6dd7e1228_fk_users_profesor_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_pr_profesor_id_61e161d6dd7e1228_fk_users_profesor_user_id FOREIGN KEY (profesor_id) REFERENCES public.users_profesor(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3185 (class 2606 OID 16751)
-- Name: users_profesor users_pro_diciplina_id_1938182d51224245_fk_schools_diciplina_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_pro_diciplina_id_1938182d51224245_fk_schools_diciplina_id FOREIGN KEY (diciplina_id) REFERENCES public.schools_diciplina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3188 (class 2606 OID 16769)
-- Name: users_profesor_categorias users_profe_categoria_id_bb52437d046e71_fk_schools_categoria_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor_categorias
    ADD CONSTRAINT users_profe_categoria_id_bb52437d046e71_fk_schools_categoria_id FOREIGN KEY (categoria_id) REFERENCES public.schools_categoria(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3186 (class 2606 OID 16756)
-- Name: users_profesor users_profeso_escuela_id_2bcf3526d7558acf_fk_schools_escuela_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profeso_escuela_id_2bcf3526d7558acf_fk_schools_escuela_id FOREIGN KEY (escuela_id) REFERENCES public.schools_escuela(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3184 (class 2606 OID 16746)
-- Name: users_profesor users_profesor_cede_id_3b36bf5c6925cf93_fk_schools_cede_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_cede_id_3b36bf5c6925cf93_fk_schools_cede_id FOREIGN KEY (cede_id) REFERENCES public.schools_cede(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3183 (class 2606 OID 16741)
-- Name: users_profesor users_profesor_user_id_2da484271d5538de_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_profesor
    ADD CONSTRAINT users_profesor_user_id_2da484271d5538de_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3190 (class 2606 OID 16781)
-- Name: users_user_groups users_user_groups_group_id_3866858623612f81_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_group_id_3866858623612f81_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3189 (class 2606 OID 16776)
-- Name: users_user_groups users_user_groups_user_id_40a2716e5d9d477a_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_groups
    ADD CONSTRAINT users_user_groups_user_id_40a2716e5d9d477a_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3192 (class 2606 OID 16793)
-- Name: users_user_user_permissions users_user_permission_id_4c1cb47a6cc6c674_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_permission_id_4c1cb47a6cc6c674_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3191 (class 2606 OID 16788)
-- Name: users_user_user_permissions users_user_user_permi_user_id_7ec20c212b70d7c4_fk_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users_user_user_permissions
    ADD CONSTRAINT users_user_user_permi_user_id_7ec20c212b70d7c4_fk_users_user_id FOREIGN KEY (user_id) REFERENCES public.users_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2019-03-01 16:53:42 CST

--
-- PostgreSQL database dump complete
--

