--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: residuospeligrosos; Type: SCHEMA; Schema: -; Owner: taller
--

CREATE SCHEMA residuospeligrosos;


ALTER SCHEMA residuospeligrosos OWNER TO taller;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = residuospeligrosos, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: BancoPreguntas; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "BancoPreguntas" (
    "idBancoPregunta" integer NOT NULL,
    "Pregunta" character(400) NOT NULL
);


ALTER TABLE "BancoPreguntas" OWNER TO taller;

--
-- Name: Cantones; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "Cantones" (
    "idCantones" integer NOT NULL,
    "Canton" character(45) NOT NULL,
    "Codigo" character(10) NOT NULL,
    "idProvincia" integer NOT NULL
);


ALTER TABLE "Cantones" OWNER TO taller;

--
-- Name: ClasesEstablecimiento; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "ClasesEstablecimiento" (
    "idClases" integer NOT NULL,
    "Clase" character(60) NOT NULL
);


ALTER TABLE "ClasesEstablecimiento" OWNER TO taller;

--
-- Name: ClasesTiposEs; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "ClasesTiposEs" (
    "idClaseTipo" integer NOT NULL,
    "idClase" integer NOT NULL,
    "idTipo" integer NOT NULL
);


ALTER TABLE "ClasesTiposEs" OWNER TO taller;

--
-- Name: Cuestionario; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "Cuestionario" (
    "idEncuesta" integer NOT NULL,
    "Encuesta" character(10) NOT NULL,
    "Anio" integer NOT NULL
);


ALTER TABLE "Cuestionario" OWNER TO taller;

--
-- Name: EntidadEstablecimiento; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "EntidadEstablecimiento" (
    "idEntidad" integer NOT NULL,
    "Entidad" character(50) NOT NULL
);


ALTER TABLE "EntidadEstablecimiento" OWNER TO taller;

--
-- Name: EntidadSectorEs; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "EntidadSectorEs" (
    "idEntidadSector" integer NOT NULL,
    "idEntidad" integer NOT NULL,
    "idSector" integer NOT NULL
);


ALTER TABLE "EntidadSectorEs" OWNER TO taller;

--
-- Name: ParroquiaSalud; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "ParroquiaSalud" (
    "idParroquiaSalud" integer NOT NULL,
    "idParroquia" integer NOT NULL,
    "idSalud" integer NOT NULL
);


ALTER TABLE "ParroquiaSalud" OWNER TO taller;

--
-- Name: Parroquias; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "Parroquias" (
    "idParroquias" integer NOT NULL,
    "Parroquia" character(70) NOT NULL,
    "idCanton" integer NOT NULL
);


ALTER TABLE "Parroquias" OWNER TO taller;

--
-- Name: PreguntaCuestionario; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "PreguntaCuestionario" (
    "idPreguntaCuestionario" integer NOT NULL,
    "idBancoPregunta" integer NOT NULL,
    "idCuestionario" integer NOT NULL
);


ALTER TABLE "PreguntaCuestionario" OWNER TO taller;

--
-- Name: Provincias; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "Provincias" (
    "idProvincias" integer NOT NULL,
    "Provincia" character(45),
    "CodigoProvincia" character(9),
    "LongitudProvincia" character(15) NOT NULL,
    "LatitudProvincia" character(15) NOT NULL,
    "idRegion" integer,
    code character varying(8),
    "Codes" character varying(8) NOT NULL
);


ALTER TABLE "Provincias" OWNER TO taller;

--
-- Name: Regiones; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "Regiones" (
    "idRegiones" integer NOT NULL,
    "Region" character(30)
);


ALTER TABLE "Regiones" OWNER TO taller;

--
-- Name: RespuestaPregunta; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "RespuestaPregunta" (
    "idRespuesta" integer NOT NULL,
    "idPreguntaEncuesta" integer,
    "idSalud" integer NOT NULL,
    "Respuesta" integer NOT NULL
);


ALTER TABLE "RespuestaPregunta" OWNER TO taller;

--
-- Name: Salud; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "Salud" (
    "idSalud" integer NOT NULL,
    "idClasesTipos" integer NOT NULL,
    "idEntidadSector" integer NOT NULL
);


ALTER TABLE "Salud" OWNER TO taller;

--
-- Name: SectorEstablecimiento; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "SectorEstablecimiento" (
    "idSector" integer NOT NULL,
    "Sector" character(40) NOT NULL
);


ALTER TABLE "SectorEstablecimiento" OWNER TO taller;

--
-- Name: TipoEstablecimiento; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE "TipoEstablecimiento" (
    "idTipo" integer NOT NULL,
    "Tipo" character(40) NOT NULL
);


ALTER TABLE "TipoEstablecimiento" OWNER TO taller;

--
-- Name: auth_group; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO taller;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO taller;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO taller;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO taller;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO taller;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO taller;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE auth_user (
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
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO taller;

--
-- Name: auth_user_groups; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO taller;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO taller;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO taller;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO taller;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO taller;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE django_admin_log (
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


ALTER TABLE django_admin_log OWNER TO taller;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO taller;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO taller;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO taller;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO taller;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: residuospeligrosos; Owner: taller
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO taller;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: residuospeligrosos; Owner: taller
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: residuospeligrosos; Owner: taller
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO taller;

--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: BancoPreguntas; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "BancoPreguntas" ("idBancoPregunta", "Pregunta") FROM stdin;
1	Los residuos peligrosos de su establecimiento de salud son entregados al municipio para su disposición final.                                                                                                                                                                                                                                                                                                  
2	Cantidad de los residuos peligrosos retirados de su establecimiento de salud que son entregados al municipio para su disposición final.                                                                                                                                                                                                                                                                        
3	Los residuos peligrosos de su establecimiento de salud son entregados a una entidad diferente al municipio para su disposición final.                                                                                                                                                                                                                                                                          
4	Cantidad de los residuos peligrosos de su establecimiento de salud que son entregados a una entidad diferente al municipio para su disposición final.                                                                                                                                                                                                                                                          
5	Los residuos peligrosos de su establecimiento de salud son entregados de uso INEC                                                                                                                                                                                                                                                                                                                               
6	Cantidad de los residuos peligrosos de su establecimiento de salud son entregados de uso INEC                                                                                                                                                                                                                                                                                                                   
7	Residuos infecciosos recolectados                                                                                                                                                                                                                                                                                                                                                                               
8	Residuos corto punzantes Recolectados                                                                                                                                                                                                                                                                                                                                                                           
9	Residuos especiales Recolectados                                                                                                                                                                                                                                                                                                                                                                                
10	Residuos Peligrosos Recolectados Uso INEC                                                                                                                                                                                                                                                                                                                                                                       
11	El municipio o entidad diferente al municipio, tiene una tarifa diferenciada de acuerdo al tipo de gestión de los residuos peligrosos de su establecimiento de salud.                                                                                                                                                                                                                                          
12	El municipio o entidad diferente al municipio, informa sobre la gestión dada a los residuos peligrosos del establecimiento de salud                                                                                                                                                                                                                                                                            
13	El municipio o entidad diferente al municipio, realiza análisis para verificar que la gestión de residuos peligrosos entregados por su establecimiento de acuerdo a la normativa sanitaria y ambiental.                                                                                                                                                                                                       
14	Residuos peligrosos recolectados para el uso del INEC                                                                                                                                                                                                                                                                                                                                                           
15	Reporte de si los residuos peligrosos fueron dispuestos en celdas                                                                                                                                                                                                                                                                                                                                               
16	Detalle de la cantidad de residuos peligrosos dispuestos en celdas                                                                                                                                                                                                                                                                                                                                              
17	Reporte de si los residuos peligrosos fueron incinerados                                                                                                                                                                                                                                                                                                                                                        
18	Detalle de la cantidad de residuos peligrosos incinerados                                                                                                                                                                                                                                                                                                                                                       
19	Detalle de otras disposiciones dadas a los residuos peligrosos                                                                                                                                                                                                                                                                                                                                                  
20	Capo de la disposición final de residuos peligrosos para uso del INEC                                                                                                                                                                                                                                                                                                                                          
\.


--
-- Data for Name: Cantones; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") FROM stdin;
1	Cuenca                                       	101       	1
2	Girón                                       	102       	1
3	Gualaceo                                     	103       	1
4	Santa Isabel                                 	108       	1
5	Sigsig                                       	109       	1
6	Paute                                        	105       	1
7	Nabón                                       	104       	1
8	Oña                                         	110       	1
9	San Fernando                                 	107       	1
10	Chordeleg                                    	111       	1
11	Guachapala                                   	114       	1
12	El Pan                                       	112       	1
13	Sevilla De Oro                               	113       	1
14	Camilo Ponce Enríquez                       	115       	1
15	Pucará                                      	106       	1
16	Guaranda                                     	201       	2
17	San Miguel                                   	205       	2
18	Chillanes                                    	202       	2
19	Echeandía                                   	204       	2
20	Las Naves                                    	207       	2
21	Chimbo                                       	203       	2
22	Caluma                                       	206       	2
23	Azogues                                      	301       	3
24	Cañar                                       	303       	3
25	Déleg                                       	306       	3
26	Biblián                                     	302       	3
27	El Tambo                                     	305       	3
28	La Troncal                                   	304       	3
29	Suscal                                       	307       	3
30	Tulcán                                      	401       	4
31	Espejo                                       	403       	4
32	Montúfar                                    	405       	4
33	San Pedro De Huaca                           	406       	4
34	Mira                                         	404       	4
35	Bolívar                                     	402       	4
36	Latacunga                                    	501       	5
37	Pangua                                       	503       	5
38	Pujilí                                      	504       	5
39	Salcedo                                      	505       	5
40	Sigchos                                      	507       	5
41	La Maná                                     	502       	5
42	Saquisilí                                   	506       	5
43	Riobamba                                     	601       	6
44	Alausi                                       	602       	6
45	Colta                                        	603       	6
46	Chunchi                                      	605       	6
47	Guamote                                      	606       	6
48	Chambo                                       	604       	6
49	Cumandá                                     	610       	6
50	Guano                                        	607       	6
51	Penipe                                       	609       	6
52	Pallatanga                                   	608       	6
53	Machala                                      	701       	7
54	Pasaje                                       	709       	7
55	Arenillas                                    	702       	7
56	Piñas                                       	710       	7
57	Santa Rosa                                   	712       	7
58	Zaruma                                       	713       	7
59	El Guabo                                     	706       	7
60	Chilla                                       	705       	7
61	Marcabelí                                   	708       	7
62	Balsas                                       	704       	7
63	Atahualpa                                    	703       	7
64	Portovelo                                    	711       	7
65	Las Lajas                                    	714       	7
66	Huaquillas                                   	707       	7
67	Esmeraldas                                   	801       	8
68	Eloy Alfaro                                  	802       	8
69	San Lorenzo                                  	805       	8
70	Muisne                                       	803       	8
71	Quinindé                                    	804       	8
72	Atacames                                     	806       	8
73	Rioverde                                     	807       	8
74	Guayaquil                                    	901       	9
75	Milagro                                      	902       	9
76	El Empalme                                   	903       	9
77	San Jacinto De Yaguachi                      	904       	9
78	Durán                                       	905       	9
79	Playas                                       	906       	9
80	Balzar                                       	907       	9
81	Daule                                        	908       	9
82	Naranjal                                     	909       	9
83	Coronel Marcelino Maridueña                 	910       	9
84	El Triunfo                                   	911       	9
85	Salitre (urbina Jado)                        	912       	9
86	Naranjito                                    	913       	9
87	Balao                                        	914       	9
88	Colimes                                      	915       	9
89	Isidro Ayora                                 	916       	9
90	Nobol                                        	917       	9
91	Lomas De Sargentillo                         	918       	9
92	Palestina                                    	919       	9
93	Pedro Carbo                                  	920       	9
94	Santa Lucía                                 	921       	9
95	General Antonio Elizalde (bucay)             	922       	9
96	Samborondón                                 	923       	9
97	Alfredo Baquerizo Moreno (jujin)             	924       	9
98	Simón Bolívar                              	925       	9
99	Ibarra                                       	1001      	10
100	Antonio Ante                                 	1002      	10
101	Cotacachi                                    	1003      	10
102	Otavalo                                      	1004      	10
103	San Miguel De Urcuquí                       	1005      	10
104	Pimampiro                                    	1006      	10
105	Loja                                         	1101      	11
106	Calvas                                       	1102      	11
107	Macará                                      	1103      	11
108	Paltas                                       	1104      	11
109	Puyango                                      	1105      	11
110	Saraguro                                     	1106      	11
111	Espíndola                                   	1107      	11
112	Catamayo                                     	1108      	11
113	Celica                                       	1109      	11
114	Zapotillo                                    	1110      	11
115	Pindal                                       	1111      	11
116	Quilanga                                     	1112      	11
117	Gonzanamá                                   	1113      	11
118	Chaguarpamba                                 	1114      	11
119	Olmedo                                       	1115      	11
120	Sozoranga                                    	1116      	11
121	Babahoyo                                     	1201      	12
122	Quevedo                                      	1202      	12
123	Urdaneta                                     	1203      	12
124	Vinces                                       	1204      	12
125	Ventanas                                     	1205      	12
126	Baba                                         	1206      	12
127	Montalvo                                     	1207      	12
128	Puebloviejo                                  	1208      	12
129	Mocache                                      	1209      	12
130	Buena Fé                                    	1210      	12
131	Valencia                                     	1211      	12
132	Quinsaloma                                   	1212      	12
133	Palenque                                     	1213      	12
134	Portoviejo                                   	1301      	13
135	Bolívar                                     	1302      	13
136	Chone                                        	1303      	13
137	Jipijapa                                     	1304      	13
138	Manta                                        	1305      	13
139	Sucre                                        	1306      	13
140	El Carmen                                    	1307      	13
141	Paján                                       	1308      	13
142	Rocafuerte                                   	1309      	13
143	Pichincha                                    	1310      	13
144	Flavio Alfaro                                	1311      	13
145	Puerto López                                	1312      	13
146	Junín                                       	1313      	13
147	Montecristi                                  	1314      	13
148	Jaramijó                                    	1315      	13
149	Tosagua                                      	1316      	13
150	Santa Ana                                    	1317      	13
151	Olmedo                                       	1318      	13
152	San Vicente                                  	1319      	13
153	Pedernales                                   	1320      	13
154	Jama                                         	1321      	13
155	24 De Mayo                                   	1322      	13
156	Morona                                       	1401      	14
157	Gualaquiza                                   	1402      	14
158	Limón Indanza                               	1403      	14
159	Santiago                                     	1404      	14
160	Sucúa                                       	1405      	14
161	Taisha                                       	1406      	14
162	Huamboya                                     	1407      	14
163	Pablo Sexto                                  	1408      	14
164	Palora                                       	1409      	14
165	Tiwintza                                     	1410      	14
166	Logroño                                     	1411      	14
167	San Juan Bosco                               	1412      	14
168	Tena                                         	1501      	15
169	Archidona                                    	1502      	15
170	El Chaco                                     	1503      	15
171	Quijos                                       	1504      	15
172	Carlos Julio Arosemena Tola                  	1505      	15
173	Pastaza                                      	1601      	16
174	Mera                                         	1602      	16
175	Arajuno                                      	1603      	16
176	Santa Clara                                  	1604      	16
177	Quito                                        	1701      	17
178	Cayambe                                      	1702      	17
179	Mejía                                       	1703      	17
180	Rumiñahui                                   	1704      	17
181	San Miguel De Los Bancos                     	1705      	17
182	Pedro Vicente Maldonado                      	1706      	17
183	Puerto Quito                                 	1707      	17
184	Pedro Moncayo                                	1708      	17
185	Ambato                                       	1801      	18
186	San Pedro De Pelileo                         	1802      	18
187	Santiago De Píllaro                         	1803      	18
188	Cevallos                                     	1804      	18
189	Mocha                                        	1805      	18
190	Tisaleo                                      	1806      	18
191	Baños De Agua Santa                         	1807      	18
192	Patate                                       	1808      	18
193	Quero                                        	1809      	18
194	Zamora                                       	1901      	19
195	Yantzaza (yanzatza)                          	1902      	19
196	Chinchipe                                    	1903      	19
197	Centinela Del Cóndor                        	1904      	19
198	Nangaritza                                   	1905      	19
199	El Pangui                                    	1906      	19
200	Paquisha                                     	1907      	19
201	Palanda                                      	1908      	19
202	Yacuambí                                    	1909      	19
203	San Cristóbal                               	2001      	20
204	Santa Cruz                                   	2002      	20
205	Isabela                                      	2003      	20
206	Lago Agrio                                   	2101      	21
207	Shushufindi                                  	2102      	21
208	Cascales                                     	2103      	21
209	Gonzalo Pizarro                              	2104      	21
210	Sucumbíos                                   	2105      	21
211	Cuyabeno                                     	2106      	21
212	Putumayo                                     	2107      	21
213	Aguarico                                     	2201      	22
214	Orellana                                     	2202      	22
215	La Joya De Los Sachas                        	2203      	22
216	Loreto                                       	2204      	22
217	La Concordia                                 	2301      	23
218	Santo Domingo                                	3202      	23
219	Salinas                                      	2401      	24
220	La Libertad                                  	2402      	24
221	Santa Elena                                  	2403      	24
\.


--
-- Data for Name: ClasesEstablecimiento; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "ClasesEstablecimiento" ("idClases", "Clase") FROM stdin;
1	Centro Clinico-quirurgico Ambulatorio (hospital Del Dia)    
2	Centro De Especialidades                                    
3	Centro De Salud A                                           
4	Centro De Salud B                                           
5	Centro De Salud C                                           
6	Centros Especializados                                      
7	Clínica General                                            
8	Clínica Privada Especializada En Gineco-obstetricia        
9	Clínica Privada Especializada En Pediátrica               
10	Clínica Privada Especializada En Psiquiatría              
11	Clínica Privada Especializada En Traumatología            
12	Consultorio General                                         
13	Dispensario Médico (policlínico)                          
14	Hospital Básico                                            
15	Hospital De Especialidades                                  
16	Hospital De Infectologia                                    
17	Hospital Dermatológico (leprocomios)                       
18	Hospital General                                            
19	Hospital Geriátrico                                        
20	Hospital Gineco-obstetrico                                  
21	Hospital Neumológico (antituberculoso)                     
22	Hospital Oncológico                                        
23	Hospital Pediátrico                                        
24	Hospital Psiquiátrico Y Sanatorio De Alcóholicos          
25	Otras Clínicas Especializadas                              
26	Otros Establecimientos Sin Internación                     
27	Puesto De Salud                                             
28	Subcentro De Salud                                          
\.


--
-- Data for Name: ClasesTiposEs; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "ClasesTiposEs" ("idClaseTipo", "idClase", "idTipo") FROM stdin;
1	1	4
2	2	4
3	3	4
4	4	4
5	5	4
6	6	4
7	7	2
8	8	1
9	9	1
10	10	3
11	11	1
12	12	4
13	13	4
14	14	5
15	15	1
16	16	1
17	17	3
18	18	1
19	19	3
20	20	1
21	21	1
22	22	1
23	23	1
24	24	3
25	25	1
26	25	2
27	26	1
28	27	4
29	28	4
\.


--
-- Data for Name: Cuestionario; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "Cuestionario" ("idEncuesta", "Encuesta", "Anio") FROM stdin;
1	ERS       	2013
\.


--
-- Data for Name: EntidadEstablecimiento; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "EntidadEstablecimiento" ("idEntidad", "Entidad") FROM stdin;
1	Privados Con Fines De Lucro                       
2	Ministerio De Salud Pública                      
3	Instituto Ecuatoriano De Seguridad Social         
4	Ministerio De Defensa Nacional                    
5	Privados Sin Fines De Lucro                       
6	Anexos Al Seguro Social                           
7	Ministerio De Justicia Y De Gobierno Y Policía   
8	Universidades Y Politécnicas                     
9	Consejos Provinciales                             
10	Municipios                                        
11	Ministerio De Educación                          
12	Junta De Beneficiencia De Guayaquil               
13	Otros Públicos                                   
14	Sociedad De Lucha Contra El Cáncer               
15	Otros Ministerios                                 
16	Cruz Roja Ecuatoriana                             
17	Fisco Misionales                                  
18	Seguro Social Campesino                           
\.


--
-- Data for Name: EntidadSectorEs; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "EntidadSectorEs" ("idEntidadSector", "idEntidad", "idSector") FROM stdin;
1	1	1
2	2	2
3	3	2
4	4	2
5	5	3
6	5	1
7	6	2
8	7	2
9	8	1
10	8	2
11	8	3
12	9	2
13	10	2
14	11	2
15	12	2
16	13	2
17	14	2
18	15	2
19	16	2
20	17	2
21	18	2
\.


--
-- Data for Name: ParroquiaSalud; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "ParroquiaSalud" ("idParroquiaSalud", "idParroquia", "idSalud") FROM stdin;
1	1	75
2	1	57
3	1	70
4	1	72
5	1	62
6	1	9
7	1	44
8	1	63
9	1	17
10	1	63
11	1	34
12	1	70
13	1	45
14	1	74
15	1	75
16	1	84
17	1	72
18	1	69
19	1	46
20	1	27
21	1	109
22	1	92
23	1	103
24	1	85
25	1	53
26	1	104
27	1	13
28	1	72
29	1	48
30	1	57
31	1	69
32	1	100
33	1	105
34	1	60
35	1	89
36	2	55
37	2	112
38	3	1
39	3	66
40	3	118
41	3	114
42	4	79
43	4	81
44	4	46
45	4	2
46	4	15
47	4	102
48	5	76
49	5	73
50	5	82
51	5	7
52	5	108
53	6	7
54	6	79
55	6	102
56	6	86
57	7	72
58	7	25
59	7	101
60	8	87
61	9	63
62	9	57
63	10	89
64	10	82
65	10	41
66	11	78
67	12	92
68	12	71
69	13	17
70	14	5
71	14	119
72	14	73
73	14	16
74	15	60
75	15	10
76	16	69
77	17	15
78	17	67
79	17	12
80	18	81
81	18	114
82	18	101
83	19	105
84	20	39
85	20	54
86	21	47
87	21	31
88	22	2
89	22	3
90	22	6
91	22	89
92	23	100
93	23	12
94	24	36
95	25	107
96	26	109
97	27	69
98	28	61
99	29	105
100	30	27
101	30	76
102	31	89
103	31	44
104	31	92
105	32	15
106	32	26
107	33	90
108	33	51
109	34	79
110	35	38
111	36	26
112	37	49
113	37	93
114	38	49
115	39	44
116	39	98
117	39	24
118	40	119
119	41	101
120	42	2
121	43	38
122	44	42
123	45	83
124	45	9
125	45	21
126	46	28
127	46	90
128	47	85
129	47	102
130	47	44
131	48	74
132	49	18
133	51	115
134	51	43
135	53	75
136	53	34
137	55	89
138	56	9
139	57	65
140	58	103
141	58	95
142	58	42
143	58	113
144	58	97
145	58	79
146	58	85
147	58	71
148	58	31
149	58	37
150	58	29
151	58	49
152	58	52
153	58	84
154	59	77
155	59	28
156	59	120
157	59	48
158	59	48
159	59	120
160	59	108
161	59	105
162	59	63
163	59	45
164	59	99
165	59	105
166	59	45
167	62	80
168	63	87
169	63	9
170	63	90
171	64	66
172	64	9
173	64	104
174	64	81
175	67	10
176	67	43
177	70	17
178	70	64
179	70	55
180	70	25
181	71	9
182	71	98
183	72	7
184	73	60
185	74	72
186	74	15
187	75	77
188	75	100
189	75	96
190	75	47
191	75	120
192	77	26
193	77	43
194	77	87
195	78	15
196	78	10
197	80	69
198	82	25
199	82	28
200	82	102
201	82	17
202	82	79
203	82	21
204	82	46
205	82	120
206	82	8
207	82	56
208	82	34
209	85	46
210	85	63
211	86	68
212	87	30
213	87	31
214	89	104
215	89	84
216	89	36
217	89	74
218	91	39
219	91	120
220	93	115
221	93	45
222	93	71
223	93	5
224	125	68
225	125	4
226	125	8
227	125	78
228	125	100
229	132	6
230	136	77
231	140	89
232	140	18
233	140	89
234	140	2
235	143	20
236	143	111
237	143	56
238	143	95
239	144	61
240	144	96
241	147	31
242	147	47
243	147	87
244	147	88
245	147	28
246	147	31
247	147	102
248	147	4
249	147	7
250	147	44
251	147	111
252	147	44
253	148	15
254	148	112
255	148	38
256	148	105
257	149	19
258	149	72
259	155	36
260	156	114
261	156	48
262	159	43
263	159	111
264	159	74
265	160	7
266	162	63
267	162	41
268	170	52
269	178	112
270	178	16
271	184	91
272	184	22
273	184	111
274	184	93
275	188	115
276	188	110
277	188	81
278	188	66
279	188	89
280	188	20
281	188	2
282	188	13
283	188	71
284	199	60
285	199	50
286	201	69
287	201	99
288	227	24
289	227	118
290	227	36
291	227	92
292	229	17
293	229	25
294	229	99
295	229	75
296	229	40
297	229	109
298	229	11
299	229	97
300	229	48
301	229	39
302	229	81
303	229	18
304	229	64
305	233	10
306	242	6
307	242	88
308	247	43
309	250	93
310	250	74
311	258	24
312	259	42
313	259	118
314	259	75
315	259	31
316	259	27
317	260	20
318	260	9
319	260	13
320	263	55
321	263	7
322	263	43
323	264	116
324	276	21
325	276	83
326	277	29
327	277	20
328	277	94
329	294	7
330	294	29
331	296	107
332	307	48
333	307	70
334	316	50
335	316	115
336	325	11
337	325	67
338	325	104
339	325	27
340	325	80
341	325	64
342	325	61
343	325	31
344	325	100
345	325	76
346	325	14
347	325	111
348	325	107
349	325	66
350	325	96
351	325	81
352	325	30
353	325	98
354	325	96
355	325	32
356	325	28
357	325	61
358	325	80
359	325	78
360	325	63
361	325	71
362	325	32
363	325	72
364	325	34
365	325	114
366	325	114
367	325	36
368	325	24
369	325	54
370	325	63
371	325	112
372	325	63
373	325	60
374	325	97
375	325	16
376	325	75
377	325	108
378	325	18
379	325	97
380	325	67
381	325	46
382	325	94
383	325	2
384	325	91
385	325	112
386	325	19
387	325	12
388	325	34
389	325	40
390	325	61
391	325	65
392	329	7
393	329	76
394	329	5
395	333	68
396	333	63
397	333	68
398	333	58
399	336	19
400	336	82
401	336	14
402	336	108
403	336	108
404	336	75
405	336	19
406	336	87
407	336	115
408	342	17
409	342	49
410	342	87
411	342	66
412	342	82
413	342	66
414	347	89
415	351	3
416	356	13
417	356	105
418	364	119
419	369	19
420	369	51
421	369	74
422	373	23
423	385	13
424	385	100
425	385	56
426	385	70
427	385	57
428	388	78
429	388	66
430	388	39
431	400	26
432	409	33
433	410	43
434	410	53
435	426	33
436	426	64
437	426	67
438	426	59
439	426	29
440	426	5
441	426	109
442	426	57
443	426	85
444	426	27
445	426	4
446	426	99
447	426	41
448	426	43
449	426	18
450	426	42
451	426	62
452	426	50
453	426	8
454	426	68
455	426	36
456	426	43
457	430	23
458	430	60
459	430	34
460	433	10
461	433	57
462	433	11
463	442	6
464	446	82
465	451	68
466	468	10
467	468	92
468	468	118
469	468	27
470	483	3
471	483	97
472	493	89
473	493	111
474	493	102
475	497	83
476	497	46
477	497	8
478	497	15
479	497	113
480	497	52
481	497	74
482	497	32
483	497	47
484	497	113
485	497	18
486	497	7
487	497	50
488	497	51
489	497	40
490	497	22
491	500	25
492	500	75
493	500	113
494	500	50
495	500	56
496	500	87
497	500	107
498	503	25
499	503	79
500	503	45
501	510	8
502	510	10
503	510	93
504	511	107
505	512	27
506	512	48
507	513	23
508	513	31
509	513	92
510	513	3
511	514	51
512	514	105
513	515	77
514	515	115
515	515	75
516	515	29
517	517	34
518	517	82
519	519	106
520	519	70
521	522	29
522	522	114
523	526	19
524	526	47
525	526	93
526	526	108
527	526	41
528	526	113
529	526	94
530	528	23
531	528	76
532	528	58
533	528	120
534	528	82
535	528	107
536	528	52
537	528	89
538	528	8
539	528	77
540	528	50
541	528	51
542	528	48
543	528	114
544	529	7
545	529	85
546	529	114
547	529	41
548	529	25
549	529	27
550	533	30
551	533	31
552	534	12
553	534	104
554	535	3
555	537	13
556	537	34
557	538	56
558	538	89
559	541	47
560	542	9
561	542	61
562	543	23
563	543	7
564	545	103
565	545	64
566	545	88
567	546	108
568	546	26
569	546	72
570	546	5
571	546	52
572	546	48
573	548	118
574	548	88
575	554	86
576	554	3
577	554	54
578	554	32
579	555	74
580	555	7
581	555	75
582	562	28
583	563	43
584	565	17
585	565	75
586	565	16
587	566	105
588	566	30
589	567	76
590	567	62
591	568	120
592	568	9
593	569	16
594	569	68
595	572	84
596	577	34
597	577	4
598	577	35
599	577	66
600	577	25
601	577	76
602	580	48
603	580	107
604	582	109
605	582	99
606	582	89
607	582	61
608	582	46
609	582	99
610	582	53
611	582	84
612	582	73
613	583	116
614	585	92
615	585	51
616	589	88
617	589	71
618	589	14
619	589	87
620	589	35
621	589	19
622	589	100
623	589	100
624	593	103
625	593	33
626	593	16
627	593	73
628	593	56
629	593	105
630	593	110
631	596	1
632	596	92
633	598	116
634	600	82
635	608	56
636	608	84
637	608	70
638	609	88
639	609	101
640	611	106
641	611	5
642	611	83
643	612	5
644	612	65
645	618	50
646	618	102
647	621	109
648	621	103
649	624	32
650	624	71
651	624	75
652	624	56
653	625	118
654	625	55
655	627	50
656	627	106
657	628	56
658	628	5
659	631	52
660	631	17
661	632	30
662	632	27
663	632	7
664	632	6
665	636	24
666	636	57
667	639	19
668	639	75
669	641	5
670	641	82
671	645	62
672	646	78
673	646	88
674	646	92
675	647	45
676	647	19
677	647	35
678	647	97
679	647	87
680	647	7
681	647	9
682	647	118
683	647	8
684	647	51
685	647	118
686	647	102
687	647	92
688	652	26
689	652	65
690	653	117
691	658	25
692	658	112
693	659	81
694	662	96
695	662	55
696	665	89
697	665	91
698	665	75
699	665	95
700	665	52
701	665	105
702	665	49
703	665	108
704	665	93
705	665	50
706	665	110
707	665	71
708	665	114
709	665	75
710	665	98
711	665	80
712	665	14
713	665	45
714	665	58
715	665	114
716	665	39
717	665	6
718	665	52
719	665	31
720	665	82
721	665	87
722	665	61
723	665	81
724	665	106
725	665	22
726	665	58
727	665	56
728	665	5
729	665	113
730	665	38
731	665	32
732	665	78
733	665	28
734	665	25
735	665	120
736	665	70
737	665	108
738	665	101
739	665	22
740	665	8
741	666	53
742	666	103
743	666	66
744	667	11
745	667	44
746	667	52
747	667	83
748	667	5
749	667	80
750	668	16
751	668	7
752	669	93
753	669	69
754	669	60
755	669	55
756	669	4
757	669	60
758	669	36
759	669	61
760	669	105
761	669	116
762	673	12
763	673	120
764	674	84
765	674	103
766	674	56
767	674	68
768	674	27
769	675	43
770	676	114
771	676	8
772	676	109
773	676	48
774	676	107
775	676	52
776	676	68
777	677	59
778	678	80
779	678	40
780	678	51
781	678	37
782	678	16
783	679	13
784	680	48
785	684	70
786	685	115
787	685	2
788	687	112
789	687	61
790	687	112
791	687	91
792	688	105
793	689	84
794	689	33
795	689	94
796	689	73
797	690	95
798	690	84
799	692	62
800	692	76
801	694	35
802	694	83
803	696	81
804	696	4
805	696	111
806	696	29
807	696	51
808	698	59
809	698	101
810	700	41
811	700	22
812	703	23
813	704	50
814	704	11
815	708	48
816	708	58
817	713	37
818	713	87
819	714	44
820	714	94
821	714	31
822	715	14
823	715	30
824	716	12
825	716	9
826	716	110
827	721	85
828	722	5
829	722	38
830	724	32
831	724	51
832	725	17
833	725	103
834	725	12
835	725	17
836	725	88
837	725	8
838	725	117
839	726	91
840	726	50
841	727	68
842	727	10
843	730	67
844	730	19
845	730	29
846	730	25
847	732	51
848	732	94
849	732	110
850	738	18
851	738	66
852	744	33
853	746	116
854	746	33
855	746	54
856	749	15
857	749	70
858	751	34
859	754	75
860	761	73
861	763	37
862	778	80
863	779	8
864	781	92
865	781	16
866	784	11
867	784	50
868	784	40
869	784	92
870	784	11
871	784	49
872	785	117
873	785	87
874	785	105
875	785	83
876	785	51
877	789	49
878	789	67
879	789	44
880	790	74
881	790	30
882	790	33
883	793	62
884	794	26
885	795	56
886	798	51
887	800	108
888	800	97
889	801	35
890	802	52
891	804	76
892	804	115
893	804	43
894	808	89
895	812	97
896	812	3
897	813	42
898	813	100
899	813	110
900	813	24
901	813	56
902	813	57
903	813	118
904	813	56
905	813	93
906	813	15
907	816	10
908	819	5
909	819	40
910	819	67
911	824	63
912	824	68
913	826	28
914	826	63
915	826	104
916	830	100
917	830	35
918	833	85
919	833	27
920	834	53
921	834	23
922	835	117
923	835	95
924	838	84
925	838	18
926	838	85
927	839	21
928	839	6
929	855	78
930	855	100
931	856	92
932	858	61
933	858	76
934	858	6
935	858	18
936	858	11
937	858	87
938	860	57
939	860	3
940	863	94
941	863	47
942	864	55
943	864	30
944	864	120
945	865	32
946	865	63
947	866	98
948	866	8
949	875	58
950	876	47
951	877	31
952	878	22
953	878	67
954	881	31
955	881	92
956	882	64
957	885	109
958	889	58
959	890	117
960	891	106
961	892	87
962	892	73
963	893	102
964	893	60
965	894	79
966	894	84
967	894	52
968	894	102
969	894	59
970	894	47
971	896	56
972	898	96
973	899	118
974	900	78
975	905	3
976	906	72
977	908	27
978	909	93
979	911	103
980	927	56
981	928	2
982	929	56
983	929	47
984	933	68
985	938	53
986	943	109
987	945	26
988	945	102
989	946	12
990	950	72
991	952	89
992	953	85
993	955	92
994	958	51
995	963	79
996	970	7
997	971	27
\.


--
-- Data for Name: Parroquias; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "Parroquias" ("idParroquias", "Parroquia", "idCanton") FROM stdin;
1	Cuenca                                                                	1
2	Girón                                                                	2
3	Gualaceo                                                              	3
4	Santa Isabel (Chaguarurco)                                            	4
5	Sigsig                                                                	5
6	Paute                                                                 	6
7	Molleturo                                                             	1
8	Checa (Jidcay)                                                        	1
9	Quingeo                                                               	1
10	Sidcay                                                                	1
11	Nulti                                                                 	1
12	Cumbe                                                                 	1
13	Chaucha                                                               	1
14	Ricaurte                                                              	1
15	Sinincay                                                              	1
16	Tarqui                                                                	1
17	Nabón                                                                	7
18	San Felipe de Oña                                                    	8
19	San Fernando                                                          	9
20	Asunción                                                             	2
21	Cochapata                                                             	7
22	San Juan                                                              	3
23	Jadán                                                                	3
24	Mariano Moreno                                                        	3
25	Chordeleg                                                             	10
26	Principal                                                             	10
27	Guachapala                                                            	11
28	Guarainag                                                             	6
29	El Pan                                                                	12
30	Palmas                                                                	13
31	San Vicente                                                           	12
32	Camilo Ponce Enríquez                                                	14
33	Pucará                                                               	15
34	Zhaglli (Shaglli)                                                     	4
35	Gima                                                                  	5
36	San Bartolomé                                                        	5
37	Ludo                                                                  	5
38	Sayausi                                                               	1
39	Valle                                                                 	1
40	San Joaquín                                                          	1
41	Chiquintad                                                            	1
42	Octavio Cordero Palacios (Santa Rosa)                                 	1
43	Santa Ana                                                             	1
44	Paccha                                                                	1
45	El Carmen de Pijilí                                                  	14
46	El Progreso (Cab. en Zhota)                                           	7
47	Las Nieves (Chaya)                                                    	7
48	Abdón Calderón  (La Unión)                                         	4
49	Susudel                                                               	8
50	San Rafael de Shurug                                                  	15
51	Sevilla de Oro                                                        	13
52	San Cristóbal (Carlos Ordóñez Lazo)                                	6
53	Amaluza                                                               	13
54	Victoria del Portete (Irquis)                                         	1
55	Guel                                                                  	5
56	Cuchil (Cutchil)                                                      	5
57	Chumblín                                                             	9
58	Guaranda                                                              	16
59	San Miguel                                                            	17
60	Chillanes                                                             	18
61	Echeandía                                                            	19
62	Facundo Vela                                                          	16
63	Las Naves                                                             	20
64	San Lorenzo                                                           	16
65	Simiátug                                                             	16
66	Salinas                                                               	16
67	San Simón (Yacoto)                                                   	16
68	San José del Tambo (Tambopamba)                                      	18
69	San José de Chimbo                                                   	21
70	Caluma                                                                	22
71	Magdalena (Chapacoto)                                                 	21
72	Asunción (Asancoto)                                                  	21
73	Telimbela                                                             	21
74	Balsapamba                                                            	17
75	Santiago                                                              	17
76	San Pablo  (San Pablo de Atenas)                                      	17
77	San Vicente                                                           	17
78	Bilován                                                              	17
79	Santa Fé (Santa Fé)                                                 	16
80	San Luis de Pambil                                                    	16
81	Julio E. Moreno (Catanahuán Grande)                                  	16
82	Azogues                                                               	23
83	Cañar                                                                	24
84	Déleg                                                                	25
85	Pindilig                                                              	23
86	Solano                                                                	25
87	Rivera                                                                	23
88	Javier Loyola (Chuquipata)                                            	23
89	Guapán                                                               	23
90	Cojitambo                                                             	23
91	Luis Cordero                                                          	23
92	San Miguel                                                            	23
93	Biblián                                                              	26
94	Nazón (Cab. en Pampa de Domínguez)                                  	26
95	El Tambo                                                              	27
96	General Morales (Socarte)                                             	24
97	Gualleturo                                                            	24
98	Manuel J. Calle                                                       	28
99	Suscal                                                                	29
100	Ingapirca                                                             	24
101	Chontamarca                                                           	24
102	Pancho Negro                                                          	28
103	Honorato Vásquez (Tambo Viejo)                                       	24
104	Ducur                                                                 	24
105	San Antonio                                                           	24
106	Ventura                                                               	24
107	Chorocopte                                                            	24
108	Juncal                                                                	24
109	La Troncal                                                            	28
110	Taday                                                                 	23
111	Zhud                                                                  	24
112	San Francisco de Sageo                                                	26
113	Tulcán                                                               	30
114	El Ángel                                                             	31
115	San Gabriel                                                           	32
116	El Carmelo (El Pun)                                                   	30
117	Julio Andrade (Orejuela)                                              	30
118	Maldonado                                                             	30
119	Tufiño                                                               	30
120	Urbina (Taya)                                                         	30
121	Huaca                                                                 	33
122	El Goaltal                                                            	31
123	Jijón y Caamaño (Cab. en Río Blanco)                               	34
124	Juan Montalvo (San Ignacio de Quil)                                   	34
125	Concepción                                                           	34
126	La Libertad (Alizo)                                                   	31
127	Mira (Chontahuasi)                                                    	34
128	San Isidro                                                            	31
129	San Vicente de Pusir                                                  	35
130	Cristóbal Colón                                                     	32
131	Monte Olivo                                                           	35
132	Bolívar                                                              	35
133	La Paz                                                                	32
134	García Moreno                                                        	35
135	San Rafael                                                            	35
136	El Chical                                                             	30
137	Santa Martha de Cuba                                                  	30
138	Pioter                                                                	30
139	Los Andes                                                             	35
140	Chitán de Navarrete                                                  	32
141	Fernández Salvador                                                   	32
142	Piartal                                                               	32
143	La Matriz                                                             	36
144	El Corazón                                                           	37
145	Pujilí                                                               	38
146	San Miguel                                                            	39
147	Latacunga                                                             	36
148	Guaitacama (Guaytacama)                                               	36
149	Mulaló                                                               	36
150	Las Pampas                                                            	40
151	Joseguango Bajo                                                       	36
152	Pucayacu                                                              	41
153	San Juan de Pastocalle                                                	36
154	Sigchos                                                               	40
155	Toacaso                                                               	36
156	Belisario Quevedo (Guanailín)                                        	36
157	Tanicuchí                                                            	36
158	Poaló                                                                	36
159	Alaques (Alaquez)                                                     	36
160	11 de Noviembre (Ilinchisi)                                           	36
161	Moraspungo                                                            	37
162	Angamarca                                                             	38
163	La Maná                                                              	41
164	Pilaló                                                               	38
165	Tingo                                                                 	38
166	Zumbahua                                                              	38
167	La Victoria                                                           	38
168	Guasaganda (Cab. en Guasaganda)                                       	41
169	Mulalillo                                                             	39
170	Antonio José Holguén  (Santa Lucía)                                	39
171	Cusubamba                                                             	39
172	Mulliquindil (Santa Ana)                                              	39
173	Pansaleo                                                              	39
174	Saquisilí                                                            	42
175	Chugchillán                                                          	40
176	Isinliví (Isinliví)                                                 	40
177	Ramón Campaña                                                       	37
178	Pinllopata                                                            	37
179	Guangaje                                                              	38
180	Canchagua                                                             	42
181	Lizarzaburu                                                           	43
182	Veloz                                                                 	43
183	Velasco                                                               	43
184	Alausí                                                               	44
185	Villa La Unión (Cajabamba)                                           	45
186	Chunchi                                                               	46
187	Guamote                                                               	47
188	Riobamba                                                              	43
189	Chambo                                                                	48
190	Licto                                                                 	43
191	Flores                                                                	43
192	Punín                                                                	43
193	San Luis                                                              	43
194	Quimiag                                                               	43
195	San Juan                                                              	43
196	Calpi                                                                 	43
197	Pungalá                                                              	43
198	Cubijíes                                                             	43
199	Tixán                                                                	44
200	Sibambe                                                               	44
201	Achupallas                                                            	44
202	Huigra                                                                	44
203	Cumandá                                                              	49
204	Guasuntos                                                             	44
205	Guano                                                                 	50
206	Penipe                                                                	51
207	San Andrés                                                           	50
208	San Isidro de Patulú                                                 	50
209	Matus                                                                 	51
210	Columbe                                                               	45
211	Juan de Velasco (Pangor)                                              	45
212	Pallatanga                                                            	52
213	Palmira                                                               	47
214	Cebadas                                                               	47
215	Capzol                                                                	46
216	Gonzol                                                                	46
217	Ilapo                                                                 	50
218	San Gerardo de Pacaicaguán                                           	50
219	Cacha (Cab. en Machángara)                                           	43
220	Multitud                                                              	44
221	Compud                                                                	46
222	Llagos                                                                	46
223	Santiago de Quito (Cab. en San Antonio de Quito)                      	45
224	Sevilla                                                               	44
225	Machala                                                               	53
226	Pasaje                                                                	54
227	Arenillas                                                             	55
228	Piñas                                                                	56
229	Santa Rosa                                                            	57
230	Zaruma                                                                	58
231	El Guabo                                                              	59
232	Tendales (Cab. en Puerto Tendales)                                    	59
233	Barbones (Sucre)                                                      	59
234	Chilla                                                                	60
235	Uzhcurrumi                                                            	54
236	Buenavista                                                            	54
237	La Peaña                                                             	54
238	Progreso                                                              	54
239	Casacay                                                               	54
240	Marcabelí                                                            	61
241	Moromoro (Cab. en El Vado)                                            	56
242	Balsas                                                                	62
243	Capiro (Cab. en La Capilla de Capiro)                                 	56
244	La Bocana                                                             	56
245	San Roque (Ambrosio Maldonado)                                        	56
246	Saracay                                                               	56
247	Victoria                                                              	57
248	Chacras                                                               	55
249	Palmales                                                              	55
250	Ayapamba                                                              	63
251	Guizhaguiña                                                          	58
252	Paccha                                                                	63
253	Huertas                                                               	58
254	Malvas                                                                	58
255	Portovelo                                                             	64
256	Salatí                                                               	64
257	Curtincapa                                                            	64
258	Bellavista                                                            	57
259	San Antonio                                                           	57
260	La Avanzada                                                           	57
261	Cañaquemada                                                          	54
262	Guanazán                                                             	58
263	Jambelí                                                              	57
264	Bellamaría                                                           	57
265	San Isidro                                                            	65
266	Huaquillas                                                            	66
267	Piedras                                                               	56
268	Salvias                                                               	58
269	La Iberia                                                             	59
270	La Victoria                                                           	65
271	Esmeraldas                                                            	67
272	Valdez (Limones)                                                      	68
273	San Lorenzo                                                           	69
274	Muisne                                                                	70
275	Rosa Zárate (Quinindé)                                              	71
276	Borbon                                                                	68
277	Atacames                                                              	72
278	Rocafuerte                                                            	73
279	Chinca                                                                	67
280	La Unión                                                             	72
281	Majua                                                                 	67
282	Rioverde                                                              	73
283	San Mateo                                                             	67
284	Tabiazo                                                               	67
285	Tachina                                                               	67
286	Tonchigue                                                             	72
287	Vuelta Larga                                                          	67
288	Chontaduro                                                            	73
289	Camarones (Cab. en San Vicente)                                       	67
290	Montalvo (Cab. en Horqueta)                                           	73
291	Mataje (Cab. en Santander)                                            	69
292	Súa  (Cab. en La Bocana)                                             	72
293	Colón Eloy del María                                                	68
294	Ancón (Pichangal) (Cab. en Palma Real)                               	69
295	Calderón                                                             	69
296	5 de Junio (Cab. en Uimbi)                                            	69
297	Concepción                                                           	69
298	La Tola                                                               	68
299	Luis Vargas Torres (Cab. en Playa de Oro)                             	68
300	Maldonado                                                             	68
301	San Francisco de Onzole                                               	68
302	Chumundé                                                             	73
303	San Javier de Cachaví (Cab. en San Javier)                           	69
304	Santa Rita                                                            	69
305	Urbina                                                                	69
306	San Gregorio                                                          	70
307	Bolívar                                                              	70
308	Daule                                                                 	70
309	Galera                                                                	70
310	San Francisco                                                         	70
311	San José de Chamanga (Cab. en Chamanga)                              	70
312	Cube                                                                  	71
313	Malimpia                                                              	71
314	Viche                                                                 	71
315	La Unión                                                             	71
316	Atahualpa (Cab. en Camarones)                                         	68
317	Selva Alegre                                                          	68
318	Santo Domingo de Onzole                                               	68
319	Crnel. Carlos Concha Torres (Cab. en Huele)                           	67
320	Tululbí (Cab. en Ricaurte)                                           	69
321	Lagarto                                                               	73
322	Telembi                                                               	68
323	Chura (Chancama) (Cab. en El Yerbero)                                 	71
324	Tambillo                                                              	69
325	Guayaquil                                                             	74
326	Milagro                                                               	75
327	Velasco Ibarra (El Empalme)                                           	76
328	San Jacinto de Yaguachi                                               	77
329	José Luis Tamayo (Muey)                                              	219
330	Eloy Alfaro (Durán)                                                  	78
331	General Villamil (Playas)                                             	79
332	Tenguel                                                               	74
333	Balzar                                                                	80
334	Daule                                                                 	81
335	Naranjal                                                              	82
336	La Libertad                                                           	220
337	San José de Ancón                                                   	221
338	Manglaralto                                                           	221
339	Coronel Marcelino Maridueña (San Carlos)                             	83
340	El Triunfo                                                            	84
341	El Salitre (Las Ramas)                                                	85
342	Salinas                                                               	219
343	Naranjito                                                             	86
344	Juan Gómez Rendón (Progreso)                                        	74
345	Posorja                                                               	74
346	Puná                                                                 	74
347	Balao                                                                 	87
348	Colimes                                                               	88
349	Isidro Ayora                                                          	89
350	Narcisa de Jesús (Nobol)                                             	90
351	Los Lojas (Enrique Baquerizo Moreno)                                  	81
352	Lomas de Sargentillo                                                  	91
353	Palestina                                                             	92
354	Pedro Carbo                                                           	93
355	Santa Lucía                                                          	94
356	Guayas (Pueblo Nuevo)                                                 	76
357	General Antonio Elizalde (Bucay)                                      	95
358	Mariscal Sucre (Huaques)                                              	75
359	Taura                                                                 	82
360	Samborondón                                                          	96
361	Tarifa                                                                	96
362	Santa Elena                                                           	221
363	Chanduy                                                               	221
364	Atahualpa                                                             	221
365	Colonche                                                              	221
366	Junquillal                                                            	85
367	Gral. Vernaza (Dos Esteros)                                           	85
368	La Victoria (Ñauza)                                                  	85
369	Alfredo Baquerizo Moreno (Jujín)                                     	97
370	Simón Bolívar                                                       	98
371	Gral. Pedro J. Montero (Boliche)                                      	77
372	Yaguachi Viejo (Cone)                                                 	77
373	Anconcito                                                             	219
374	Limonal                                                               	81
375	Valle de la Virgen                                                    	93
376	Laurel                                                                	81
377	Sabanilla                                                             	93
378	Crnel.Lorenzo de Garaicoa (Pedregal)                                  	98
379	Morro                                                                 	74
380	Roberto Astudillo (Cab. en Cruce de Venecia)                          	75
381	Santa Rosa de Flandes                                                 	82
382	Jesús María                                                         	82
383	Virgen de Fátima                                                     	77
384	San Miguel de Ibarra, Cabecera Cantonal y Capital Provincial          	99
385	Atuntaqui                                                             	100
386	Cotacachi                                                             	101
387	Otavalo                                                               	102
388	Ambuquí                                                              	99
389	Cahuasquí                                                            	103
390	Carolina                                                              	99
391	La Esperanza                                                          	99
392	Lita                                                                  	99
393	Mariano Acosta                                                        	104
394	Pablo Arenas                                                          	103
395	Pimampiro                                                             	104
396	San Antonio                                                           	99
397	Tumbabiro                                                             	103
398	Urcuquí                                                              	103
399	La Merced de Buenos Aires                                             	103
400	Angochagua                                                            	99
401	San Francisco de Sigsipamba                                           	104
402	Chugá                                                                	104
403	San Blas                                                              	103
404	Salinas                                                               	99
405	San José de Chaltura                                                 	100
406	San Roque                                                             	100
407	San Francisco de Natabuela                                            	100
408	Imbaya (San Luis de Cobuendo)                                         	100
409	6 de Julio de Cuellaje (Cab. en Cuellaje)                             	101
410	Apuela                                                                	101
411	García Moreno (Llurimagua)                                           	101
412	Imantag                                                               	101
413	Peñaherrera                                                          	101
414	Vacas Galindo (El Churo) (Cab.en San Miguel Alto)                     	101
415	Quiroga                                                               	101
416	San Pablo                                                             	102
417	San Rafael                                                            	102
418	Selva Alegre (Cab. en San Miguel de Pamplona)                         	102
419	San Juan de Ilumán                                                   	102
420	Eugenio Espejo (Calpaquí)                                            	102
421	San José de Quichinche                                               	102
422	Dr. Miguel Egas Cabezas (Peguche)                                     	102
423	González Suárez                                                     	102
424	Plaza Gutiérrez (Calvario)                                           	101
425	Pataquí                                                              	102
426	Loja                                                                  	105
427	Cariamanga                                                            	106
428	Macará                                                               	107
429	Catacocha                                                             	108
430	Alamor                                                                	109
431	Vilcabamba  (Victoria)                                                	105
432	Saraguro                                                              	110
433	Amaluza                                                               	111
434	Catamayo (La Toma)                                                    	112
435	Malacatos (Valladolid)                                                	105
436	San Lucas                                                             	105
437	Yangana (Arsenio Castillo)                                            	105
438	Chuquiribamba                                                         	105
439	El Cisne                                                              	105
440	El Tambo                                                              	112
441	San Pedro de la Bendita                                               	112
442	Zambi                                                                 	112
443	Santiago                                                              	105
444	Taquil (Miguel Riofrío)                                              	105
445	Gualel                                                                	105
446	Guayquichuma                                                          	112
447	Jimbilla                                                              	105
448	El Lucero                                                             	106
449	Celica                                                                	113
450	Zapotillo                                                             	114
451	12 de Diciembre (Cab. en Achiotes)                                    	115
452	Pindal                                                                	115
453	Cruzpamba (Cab. en Carlos Bustamante)                                 	113
454	Pozul (San Juan de Pozul)                                             	113
455	Sabanilla                                                             	113
456	Jimbura                                                               	111
457	Quilanga                                                              	116
458	Gonzanamá                                                            	117
459	Changaimina (La Libertad)                                             	117
460	Purunuma (Eguiguren)                                                  	117
461	Sacapalca                                                             	117
462	Nambacola                                                             	117
463	San Antonio de Las Aradas (Cab. en Las Aradas)                        	116
464	Sabiango (La Capilla)                                                 	107
465	Larama                                                                	107
466	La Victoria                                                           	107
467	Chaguarpamba                                                          	118
468	Olmedo                                                                	151
469	Cangonamá                                                            	108
470	Orianga                                                               	108
471	Buenavista                                                            	118
472	El Rosario                                                            	118
473	Lauro Guerrero                                                        	108
474	Casanga                                                               	108
475	Selva Alegre                                                          	110
476	La Tingue                                                             	119
477	Santa Rufina                                                          	118
478	Guachanamá                                                           	108
479	Mangahurco                                                            	114
480	El Limo (Mariana de Jesús)                                           	109
481	Vicentino                                                             	109
482	Paletillas                                                            	114
483	Ciano                                                                 	109
484	Manú                                                                 	110
485	San Antonio de Qumbe (Cumbe)                                          	110
486	Urdaneta (Paquishapa)                                                 	110
487	El Paraíso de Celén                                                 	110
488	San Sebastián de Yúluc                                              	110
489	Tacamoros                                                             	120
490	San Pablo de Tenta                                                    	110
491	Nueva Fátima                                                         	120
492	Santa Teresita                                                        	111
493	Sozoranga                                                             	120
494	San Antonio                                                           	108
495	Mercadillo                                                            	109
496	Chaquinal                                                             	115
497	Babahoyo                                                              	121
498	Quevedo                                                               	122
499	Ricaurte                                                              	123
500	Vinces                                                                	124
501	La Unión                                                             	121
502	Ventanas                                                              	125
503	Baba                                                                  	126
504	Febres Cordero (Las Juntas) (Cab. en Mata de Cacao)                   	121
505	Pimocha                                                               	121
506	Montalvo                                                              	127
507	Caracol                                                               	121
508	Guare                                                                 	126
509	Isla de Bejuca                                                        	126
510	San Juan                                                              	128
511	Puerto Pechiche                                                       	128
512	Puebloviejo                                                           	128
513	Mocache                                                               	129
514	San Carlos                                                            	122
515	San Jacinto de Buena Fé                                              	130
516	Valencia                                                              	131
517	Quinsaloma                                                            	132
518	Palenque                                                              	133
519	Antonio Sotomayor (Cab. en Playas de Vinces)                          	124
520	Catarama                                                              	123
521	Zapotal                                                               	125
522	Patricia Pilar                                                        	130
523	Los Ángeles                                                          	125
524	Portoviejo                                                            	134
525	Calceta                                                               	135
526	Chone                                                                 	136
527	Jipijapa                                                              	137
528	Manta                                                                 	138
529	Bahía de Caraquez                                                    	139
530	El Carmen                                                             	140
531	Paján                                                                	141
532	Rocafuerte                                                            	142
533	Abdón Calderón (San Francisco)                                      	134
534	Alhajuela (Bajo Grande)                                               	134
535	Pueblo Nuevo                                                          	134
536	Riochico (Río Chico)                                                 	134
537	San Plácido                                                          	134
538	Crucita                                                               	134
539	Pichincha                                                             	143
540	Quiroga                                                               	135
541	Boyacá                                                               	136
542	Canuto                                                                	136
543	Convento                                                              	136
544	Eloy Alfaro                                                           	136
545	Flavio Alfaro                                                         	144
546	Ricaurte                                                              	136
547	San Antonio                                                           	136
548	América                                                              	137
549	El Anegado (Cab. en Eloy Alfaro)                                      	137
550	Julcuy                                                                	137
551	Machalilla                                                            	145
552	Pedro Pablo Gómez                                                    	137
553	Puerto López                                                         	145
554	Junín                                                                	146
555	San Lorenzo                                                           	138
556	Montecristi                                                           	147
557	Jaramijó                                                             	148
558	Campozano (La Palma de Paján)                                        	141
559	Cascol                                                                	141
560	Guale                                                                 	141
561	Lascano                                                               	141
562	Bachillero                                                            	149
563	Ángel Pedro Giler (La Estancilla)                                    	149
564	Tosagua                                                               	149
565	Santa Ana de Vuelta Larga, Cabecera Cantonal                          	150
566	Ayacucho                                                              	150
567	Honorato Vásquez (Cab. en Vásquez)                                  	150
568	San Pablo (Cab. en Pueblo Nuevo)                                      	150
569	Canoa                                                                 	152
570	Cojimíes                                                             	153
571	Charapotó                                                            	139
572	10 de Agosto                                                          	153
573	Jama                                                                  	154
574	Pedernales                                                            	153
575	San Isidro                                                            	139
576	San Vicente                                                           	152
577	Bellavista                                                            	155
578	Noboa                                                                 	155
579	Sucre                                                                 	155
580	Chirijos                                                              	134
581	Membrillo                                                             	135
582	La Unión                                                             	150
583	Atahualpa                                                             	153
584	Membrillal                                                            	137
585	Barraganete                                                           	143
586	San Sebastián                                                        	143
587	Wilfrido Loor Moreira (Maicito)                                       	140
588	La Unión                                                             	137
589	Macas                                                                 	156
590	Gualaquiza                                                            	157
591	General Leonidas Plaza Gutiérrez (Limón)                            	158
592	Santiago de Méndez                                                   	159
593	Sucúa                                                                	160
594	Taisha                                                                	161
595	Sevilla Don Bosco                                                     	156
596	Chiguaza                                                              	162
597	Cuchaentza                                                            	156
598	Alshi (Cab. en 9 de Octubre)                                          	156
599	Macuma                                                                	161
600	Sinaí                                                                	156
601	Pablo Sexto                                                           	163
602	Chiguinda                                                             	157
603	Palora (Metzera)                                                      	164
604	Santiago                                                              	165
605	Patuca                                                                	159
606	Shimpis                                                               	166
607	Yaupi                                                                 	166
608	Bomboiza                                                              	157
609	San Juan Bosco                                                        	167
610	Logroño                                                              	166
611	Huambi                                                                	160
612	Santa Susana de Chiviaza (Cab. en Chiviaza)                           	158
613	Tuutinentza                                                           	161
614	Yunganza (Cab. en El Rosario)                                         	158
615	Copal                                                                 	159
616	Tayuza                                                                	159
617	San José de Morona                                                   	165
618	Indanza                                                               	158
619	Nueva Tarqui                                                          	157
620	San Luis de El Acho (Cab. en El Acho)                                 	159
621	Huamboya                                                              	162
622	Huasaga (Cab. en Wampuik)                                             	161
623	Tena                                                                  	168
624	Archidona                                                             	169
625	Nuevo Rocafuerte                                                      	213
626	Puerto Francisco de Orellana (El Coca)                                	214
627	El Chaco                                                              	170
628	Baeza                                                                 	171
629	Puerto Misahualli                                                     	168
630	Cuyuja                                                                	171
631	Ahuano                                                                	168
632	La Joya de los Sachas                                                 	215
633	Chontapunta                                                           	168
634	Carlos Julio Arosemena Tola                                           	172
635	Cotundo                                                               	169
636	Loreto                                                                	216
637	Cosanga                                                               	171
638	San Francisco de Borja (Virgilio Dávila)                             	171
639	Puerto Murialdo                                                       	216
640	Tálag                                                                	168
641	San Carlos                                                            	215
642	Puerto Napo                                                           	168
643	San Sebastián del Coca                                               	215
644	Santa Rosa                                                            	170
645	Sardinas                                                              	170
646	Dayuma                                                                	214
647	Puyo                                                                  	173
648	Mera                                                                  	174
649	Madre Tierra                                                          	174
650	Shell                                                                 	174
651	Curaray                                                               	175
652	Diez de Agosto                                                        	173
653	Fátima                                                               	173
654	Veracruz  (Cab. en Indillama)                                         	173
655	Montalvo (Andoas)                                                     	173
656	Tarqui                                                                	173
657	Teniente Hugo Ortiz                                                   	173
658	Arajuno                                                               	175
659	Pomona                                                                	173
660	Canelos                                                               	173
661	Simón Bolívar  (Cab. en Mushullacta)                                	173
662	Sarayacu                                                              	173
663	Santa Clara                                                           	176
664	El Triunfo                                                            	173
665	Quito Distrito Metropolitano                                          	177
666	Alangasí                                                             	177
667	Conocoto                                                              	177
668	Nanegalito                                                            	177
669	Cayambe                                                               	178
670	Machachi                                                              	179
671	Sangolquí                                                            	180
672	Santo Domingo de los Colorados                                        	218
673	Yaruquí                                                              	177
674	Amaguaña                                                             	177
675	Atahualpa                                                             	177
676	Calderón                                                             	177
677	Calacalí                                                             	177
678	Cumbayá                                                              	177
679	Checa (Chilpa)                                                        	177
680	Guayllabamba                                                          	177
681	Gualea                                                                	177
682	Mindo                                                                 	181
683	Nanegal                                                               	177
684	Nono                                                                  	177
685	Pacto                                                                 	177
686	Pedro Vicente Maldonado                                               	182
687	Pifo                                                                  	177
688	Píntag                                                               	177
689	Pomasqui                                                              	177
690	Puéllaro                                                             	177
691	Puembo                                                                	177
692	El Quinche                                                            	177
693	San Antonio                                                           	177
694	San José de Minas                                                    	177
695	San Miguel de los Bancos                                              	181
696	Tumbaco                                                               	177
697	Zámbiza                                                              	177
698	Nayón                                                                	177
699	Puerto Quito                                                          	183
700	Cangahua                                                              	178
701	Olmedo (Pesillo)                                                      	178
702	Otón                                                                 	178
703	Ascázubi                                                             	178
704	Alóag                                                                	179
705	Manuel Cornejo Astorga (Tandapi)                                      	179
706	Tambillo                                                              	179
707	Uyumbicho                                                             	179
708	Aloasí                                                               	179
709	Tabacundo                                                             	184
710	La Esperanza                                                          	184
711	Malchinguí                                                           	184
712	Tocachi                                                               	184
713	Cotogchoa                                                             	180
714	La Concordia                                                          	217
715	Alluriquín                                                           	218
716	San Jacinto del Bua                                                   	218
717	Tupigachi                                                             	184
718	El Chaupi                                                             	179
719	Santa Rosa de Cuzubamba                                               	178
720	Lloa                                                                  	177
721	Llano Chico                                                           	177
722	Tababela                                                              	177
723	Perucho                                                               	177
724	Chavezpamba                                                           	177
725	La Merced                                                             	177
726	Santa María del Toachi                                               	218
727	Luz de América                                                       	218
728	Guangopolo                                                            	177
729	Cutuglahua                                                            	179
730	Valle Hermoso                                                         	218
731	Matriz                                                                	185
732	Atocha - Ficoa                                                        	185
733	La Merced                                                             	185
734	Pelileo                                                               	186
735	Píllaro                                                              	187
736	San Francisco                                                         	185
737	Huachi Loreto                                                         	185
738	Augusto N. Martínez (Mundugleo)                                      	185
739	Cevallos                                                              	188
740	Mocha                                                                 	189
741	Pasa                                                                  	185
742	Pilaguín (Pilahuín)                                                 	185
743	Quisapincha (Quizapincha)                                             	185
744	Atahualpa (Chisalata)                                                 	185
745	Constantino Fernández (Cab. en Cullitahua)                           	185
746	Izamba                                                                	185
747	Picaigua                                                              	185
748	Santa Rosa                                                            	185
749	Tisaleo                                                               	190
750	Juan Benigno Vela                                                     	185
751	Ambatillo                                                             	185
752	Huachi Grande                                                         	185
753	Totoras                                                               	185
754	Quinchicoto                                                           	190
755	Río Negro                                                            	191
756	Río Verde                                                            	191
757	Patate                                                                	192
758	Cotaló                                                               	186
759	Guambaló (Huambaló)                                                 	186
760	Salasaca                                                              	186
761	Benítez (Pachanlica)                                                 	186
762	San José de Poalo                                                    	187
763	San Miguelito                                                         	187
764	San Andrés                                                           	187
765	Quero                                                                 	193
766	Yanayacu - Mochapata (Cab. en Yanayacu)                               	193
767	Cunchibamba                                                           	185
768	Unamuncho                                                             	185
769	Montalvo                                                              	185
770	Huachi Chico                                                          	185
771	Celiano Monge                                                         	185
772	Chiquicha (Cab. en Chiquicha Grande)                                  	186
773	Sucre (Cab. en Sucre-Patate Urcu)                                     	192
774	El Triunfo                                                            	192
775	San Fernando (Pasa San Fernando)                                      	185
776	García Moreno (Chumaqui)                                             	186
777	El Rosario (Rumichaca)                                                	186
778	Bolívar                                                              	186
779	Emilio María Terán (Rumipamba)                                      	187
780	Pishilata                                                             	185
781	Baños de Agua Santa                                                  	191
782	La Península                                                         	185
783	Zamora                                                                	194
784	Yantzaza (Yanzatza)                                                   	195
785	 Zumba                                                                	196
786	Cumbaratza                                                            	194
787	Los Encuentros                                                        	195
788	Zumbi                                                                 	197
789	Guadalupe                                                             	194
790	Guayzimi                                                              	198
791	Imbana (La Victoria de Imbana)                                        	194
792	El Pangui                                                             	199
793	Paquisha                                                              	200
794	Chito                                                                 	196
795	El Chorro                                                             	196
796	Palanda                                                               	201
797	Valladolid                                                            	201
798	La Chonta                                                             	196
799	El Porvenir del Carmen                                                	201
800	28 de Mayo (San José de Yacuambi)                                    	202
801	Tutupali                                                              	202
802	San Carlos de las Minas                                               	194
803	San Francisco del Vergel                                              	201
804	La Paz                                                                	202
805	Chicaña                                                              	195
806	El Guisme                                                             	199
807	Puerto Baquerizo Moreno                                               	203
808	Puerto Ayora                                                          	204
809	Isla Santa María (Floreana) (Cab. en  Pto. Velasco Ibarra)           	203
810	Puerto Villamil                                                       	205
811	El Progreso                                                           	203
812	Bellavista                                                            	204
813	Nueva Loja                                                            	206
814	Shushufindi                                                           	207
815	El Dorado de Cascales                                                 	208
816	Lumbaquí                                                             	209
817	El Playón de San Francisco                                           	210
818	Limoncocha                                                            	207
819	Tarapoa                                                               	211
820	La Bonita                                                             	210
821	Sevilla                                                               	208
822	Santa Bárbara                                                        	210
823	Puerto El Carmen del Putumayo                                         	212
824	Palma Roja                                                            	212
825	Jambelí                                                              	206
826	Pacayacu                                                              	206
827	General Farfán                                                       	206
828	San Roque (Cab. en San Vicente)                                       	207
829	El Reventador                                                         	209
830	Santa Cecilia                                                         	206
831	Llacao                                                                	1
832	Turi                                                                  	1
833	San Gerardo                                                           	2
834	Daniel Córdova Toral (El Oriente)                                    	3
835	Zhidmad                                                               	3
836	Bulán(José Víctor Izquierdo)                                       	6
837	Chicán (Guillermo Ortega)                                            	6
838	El Cabo                                                               	6
839	Tomebamba                                                             	6
840	San José de Raranga                                                  	5
841	Palo Quemado                                                          	40
842	Guanando                                                              	50
843	Puela                                                                 	51
844	Quingue (Olmedo Perdomo Franco)                                       	70
845	Carondelet                                                            	69
846	Tonsupa                                                               	72
847	Chantaco                                                              	105
848	San Pedro de Vilcabamba                                               	105
849	Quinara                                                               	105
850	Utuana                                                                	106
851	El Tablón                                                            	110
852	Garzareal                                                             	114
853	Limones                                                               	114
854	Fundochamba                                                           	116
855	Chibunga                                                              	136
856	San Francisco de Novillo (Cab. en Novillo)                            	144
857	Puerto de Cayo                                                        	137
858	San Isidro                                                            	156
859	Sangay (Cab. en Nayamanaca)                                           	164
860	16 de Agosto                                                          	164
861	Pano                                                                  	168
862	Pachicutza                                                            	199
863	Dureno                                                                	206
864	Enokanqui                                                             	215
865	La Belleza                                                            	214
866	San José de Guayusa                                                  	214
867	Puerto Limón                                                         	218
868	El Paraíso                                                           	65
869	El Rosario                                                            	157
870	Lluzhapa                                                              	110
871	Colaisaca                                                             	106
872	San Francisco de Chinimbimi                                           	159
873	Papallacta                                                            	171
874	Gonzalo Díaz de Pineda (El Bombón)                                  	170
875	Timbara                                                               	194
876	San Pedro de Suma                                                     	140
877	Dug Dug                                                               	6
878	Jerusalén                                                            	26
879	Sanguillín                                                           	106
880	El Ingenio                                                            	111
881	Bellavista                                                            	111
882	27 de Abril (Cab. en La Naranja)                                      	111
883	San José de Payamino                                                 	216
884	San José de Dahuano                                                  	216
885	San Pablo de Ushpayacu                                                	169
886	San Pedro de Los Cofanes                                              	207
887	Simón Bolívar (Julio Moreno)                                        	221
888	Salango                                                               	145
889	Anchayacu                                                             	68
890	El Esfuerzo                                                           	218
891	Puerto Libre                                                          	209
892	Baños                                                                	1
893	Bellavista                                                            	200
894	San Andrés                                                           	196
895	Río Bonito                                                           	59
896	Santa Rosa (Incluye La Isla Baltra)                                   	204
897	El Rosario                                                            	76
898	El Eno                                                                	206
899	Río Blanco                                                           	156
900	Arapicos                                                              	164
901	San Antonio (Cab. en San Antonio Centro)                              	158
902	San Carlos                                                            	82
903	Inés Arango (Cab. en Western)                                        	214
904	Taracoa (Nueva Esperanza: Yuca)                                       	214
905	San Vicente de Huaticocha                                             	216
906	San Miguel de Conchay                                                 	158
907	Santa Marianita (Boca de Pacoche)                                     	138
908	Oyacachi                                                              	170
909	Remigio Crespo Toral (Gulag)                                          	3
910	Siete de Julio                                                        	207
911	Ambato                                                                	185
912	San Juan de Muyuna                                                    	168
913	San Francisco                                                         	101
914	El Airo                                                               	111
915	Pumpuentsa                                                            	161
916	San Sebastión                                                        	1
917	Yanuncay                                                              	1
918	Pinguilí                                                             	189
919	Presidente Urbina (Chagrapamba -Patzucul)                             	187
920	Rumipamba                                                             	193
921	Chantilín                                                            	42
922	Maldonado                                                             	43
923	Unión Milagreña                                                     	215
924	Eloy Alfaro (San Felipe)                                              	36
925	San Bartolomé de Pinllog                                             	185
926	Mariscal Sucre                                                        	33
927	El Edén                                                              	214
928	Tiputini                                                              	213
929	Pompeya                                                               	215
930	San Antonio de Bayushig                                               	51
931	La Candelaria                                                         	51
932	Sinsao                                                                	58
933	Abañin                                                               	58
934	Licán                                                                	43
935	El Arenal                                                             	109
936	Régulo de Mora                                                       	17
937	Tarqui                                                                	74
938	Avila (Cab. en Huiruno)                                               	216
939	Carcabón                                                             	55
940	Tomás de Berlanga (Santo Tomás)                                     	205
941	San Carlos de Limón                                                  	167
942	El Ideal                                                              	157
943	Santiago de Pananza                                                   	167
944	El Retiro                                                             	53
945	Arq. Sixto Durán Ballén                                             	155
946	San Luis de Armenia                                                   	214
947	Nuevo Paraíso (Cab. en Unión Chimborazo)                            	214
948	García Moreno                                                        	214
949	Tres de Noviembre                                                     	215
950	Lago San Pedro                                                        	215
951	Sumaypamba                                                            	110
952	Zurmi                                                                 	198
953	Nuevo Paraíso                                                        	198
954	Tundayme                                                              	199
955	Nuevo Quito                                                           	200
956	Cochapamba                                                            	42
957	Morales                                                               	64
958	Arcapamba                                                             	58
959	La Libertad                                                           	65
960	Juan Montalvo (San Sebastián)                                        	36
961	San José                                                             	63
962	Timbire                                                               	68
963	Alto Tambo (Cab. en Guadual)                                          	69
964	Cumandá (Cab. en Colonia Agrícola Sevilla del Oro)                  	164
965	Ulba                                                                  	191
966	Juan Bautista Aguirre (Los Tintos)                                    	81
967	Pañacocha                                                            	207
968	Santa Rosa de Sucumbíos                                              	208
969	La Canela                                                             	201
970	Alejandro Labaka                                                      	214
971	Luis Cordero Vega                                                     	3
\.


--
-- Data for Name: PreguntaCuestionario; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "PreguntaCuestionario" ("idPreguntaCuestionario", "idBancoPregunta", "idCuestionario") FROM stdin;
1	1	1
2	2	1
3	3	1
4	4	1
5	5	1
6	6	1
7	7	1
8	8	1
9	9	1
10	10	1
11	11	1
12	12	1
13	13	1
14	14	1
15	15	1
16	16	1
17	17	1
18	18	1
19	19	1
20	20	1
\.


--
-- Data for Name: Provincias; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion", code, "Codes") FROM stdin;
1	Azuay                                        	1        	-2.883333      	-79            	2	\N	
2	Bolivar                                      	2        	-1.6           	-79            	2	\N	
3	Cañar                                       	3        	-2.733333      	-78.833333     	2	\N	
4	Carchi                                       	4        	0.75           	-78.083333     	2	\N	
5	Cotopaxi                                     	5        	-0.680556      	-78.437778     	2	\N	
6	Chimborazo                                   	6        	-1.469167      	-78.8175       	2	\N	
7	El Oro                                       	7        	-3.266669      	-79.9667       	1	\N	
8	Esmeraldas                                   	8        	0.95           	-79.666667     	1	\N	
9	Guayas                                       	9        	-2.2           	-79.9667       	1	\N	
10	Imbabura                                     	10       	0.35           	-78.133333     	2	\N	
11	Loja                                         	11       	-3.990556      	-79.205        	2	\N	
12	Los Rios                                     	12       	-1.766669      	-79.45         	1	\N	
13	Manabi                                       	13       	-1.052219      	-80.4506       	1	\N	
14	Morona Santiago                              	14       	-2.366667      	-78.133333     	3	\N	
15	Napo                                         	15       	0.989          	-77.8159       	3	\N	
16	Pastaza                                      	16       	-1.066667      	-78.001111     	3	\N	
17	Pichincha                                    	17       	-0.25          	-78.583333     	2	\N	
18	Tungurahua                                   	18       	-1.233333      	-78.616667     	2	\N	
19	Zamora Chinchipe                             	19       	-2.883333      	-79            	3	\N	
20	Galapagos                                    	20       	1.39           	-92            	4	\N	
21	Sucumbios                                    	21       	-0.083333      	-76.883333     	3	\N	
22	Orellana                                     	22       	-0.933333      	-75.666667     	3	\N	
23	Santo Domingo De Los Tsachilas               	23       	-0.333333      	-79.25         	2	\N	
24	Santa Elena                                  	24       	-2.2267        	-80.8583       	1	\N	
\.


--
-- Data for Name: Regiones; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "Regiones" ("idRegiones", "Region") FROM stdin;
1	Costa                         
2	Sierra                        
3	Amazonia                      
4	Insular                       
\.


--
-- Data for Name: RespuestaPregunta; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "RespuestaPregunta" ("idRespuesta", "idPreguntaEncuesta", "idSalud", "Respuesta") FROM stdin;
1	1	1	1
2	2	1	6249
3	3	1	1
4	4	1	2472
5	5	1	1
6	6	1	7983
7	7	1	1511
8	8	1	6876
9	9	1	1283
10	10	1	7977
11	11	1	1
12	12	1	1
13	13	1	1
14	14	1	1
15	15	1	1
16	16	1	5134
17	17	1	1
18	18	1	2247
19	19	1	1
20	20	1	4625
21	1	2	1
22	2	2	8328
23	3	2	1
24	4	2	4463
25	5	2	1
26	6	2	3661
27	7	2	5638
28	8	2	6712
29	9	2	5950
30	10	2	3730
31	11	2	1
32	12	2	1
33	13	2	1
34	14	2	1
35	15	2	1
36	16	2	4920
37	17	2	1
38	18	2	3972
39	19	2	1
40	20	2	4627
41	1	3	1
42	2	3	5843
43	3	3	1
44	4	3	6103
45	5	3	1
46	6	3	6546
47	7	3	6937
48	8	3	6228
49	9	3	2250
50	10	3	3115
51	11	3	1
52	12	3	1
53	13	3	1
54	14	3	1
55	15	3	1
56	16	3	4736
57	17	3	1
58	18	3	4352
59	19	3	1
60	20	3	3619
61	1	4	1
62	2	4	3799
63	3	4	1
64	4	4	5495
65	5	4	1
66	6	4	1264
67	7	4	2583
68	8	4	3377
69	9	4	5274
70	10	4	4943
71	11	4	1
72	12	4	1
73	13	4	1
74	14	4	1
75	15	4	1
76	16	4	6673
77	17	4	1
78	18	4	4825
79	19	4	1
80	20	4	1296
81	1	5	1
82	2	5	1400
83	3	5	1
84	4	5	2109
85	5	5	1
86	6	5	1067
87	7	5	6431
88	8	5	7304
89	9	5	5419
90	10	5	2640
91	11	5	1
92	12	5	1
93	13	5	1
94	14	5	1
95	15	5	1
96	16	5	2379
97	17	5	1
98	18	5	8591
99	19	5	1
100	20	5	1049
101	1	6	1
102	2	6	7313
103	3	6	1
104	4	6	8665
105	5	6	1
106	6	6	7950
107	7	6	1842
108	8	6	3099
109	9	6	1080
110	10	6	4786
111	11	6	1
112	12	6	1
113	13	6	1
114	14	6	1
115	15	6	1
116	16	6	3808
117	17	6	1
118	18	6	1769
119	19	6	1
120	20	6	4721
121	1	7	1
122	2	7	3717
123	3	7	1
124	4	7	6593
125	5	7	1
126	6	7	1583
127	7	7	2187
128	8	7	3512
129	9	7	7589
130	10	7	7026
131	11	7	1
132	12	7	1
133	13	7	1
134	14	7	1
135	15	7	1
136	16	7	6650
137	17	7	1
138	18	7	3208
139	19	7	1
140	20	7	7729
141	1	8	1
142	2	8	8704
143	3	8	1
144	4	8	5784
145	5	8	1
146	6	8	1173
147	7	8	1089
148	8	8	2557
149	9	8	5971
150	10	8	7719
151	11	8	1
152	12	8	1
153	13	8	1
154	14	8	1
155	15	8	1
156	16	8	1202
157	17	8	1
158	18	8	3315
159	19	8	1
160	20	8	7764
161	1	9	1
162	2	9	3868
163	3	9	1
164	4	9	5290
165	5	9	1
166	6	9	4720
167	7	9	3393
168	8	9	5168
169	9	9	3861
170	10	9	2645
171	11	9	1
172	12	9	1
173	13	9	1
174	14	9	1
175	15	9	1
176	16	9	1298
177	17	9	1
178	18	9	4080
179	19	9	1
180	20	9	8751
181	1	10	1
182	2	10	5710
183	3	10	1
184	4	10	4680
185	5	10	1
186	6	10	8762
187	7	10	3864
188	8	10	3410
189	9	10	8312
190	10	10	3964
191	11	10	1
192	12	10	1
193	13	10	1
194	14	10	1
195	15	10	1
196	16	10	5872
197	17	10	1
198	18	10	4156
199	19	10	1
200	20	10	3676
201	1	11	1
202	2	11	6967
203	3	11	1
204	4	11	5368
205	5	11	1
206	6	11	7960
207	7	11	5180
208	8	11	4693
209	9	11	2169
210	10	11	4998
211	11	11	1
212	12	11	1
213	13	11	1
214	14	11	1
215	15	11	1
216	16	11	7957
217	17	11	1
218	18	11	2839
219	19	11	1
220	20	11	2440
221	1	12	1
222	2	12	7562
223	3	12	1
224	4	12	7635
225	5	12	1
226	6	12	2274
227	7	12	2715
228	8	12	1560
229	9	12	8396
230	10	12	2432
231	11	12	1
232	12	12	1
233	13	12	1
234	14	12	1
235	15	12	1
236	16	12	4576
237	17	12	1
238	18	12	7802
239	19	12	1
240	20	12	5490
241	1	13	1
242	2	13	6550
243	3	13	1
244	4	13	5135
245	5	13	1
246	6	13	3554
247	7	13	1056
248	8	13	1389
249	9	13	8357
250	10	13	7863
251	11	13	1
252	12	13	1
253	13	13	1
254	14	13	1
255	15	13	1
256	16	13	3381
257	17	13	1
258	18	13	2027
259	19	13	1
260	20	13	4579
261	1	14	1
262	2	14	3121
263	3	14	1
264	4	14	8005
265	5	14	1
266	6	14	3682
267	7	14	6365
268	8	14	2296
269	9	14	5565
270	10	14	6046
271	11	14	1
272	12	14	1
273	13	14	1
274	14	14	1
275	15	14	1
276	16	14	3380
277	17	14	1
278	18	14	2987
279	19	14	1
280	20	14	2310
281	1	15	1
282	2	15	1564
283	3	15	1
284	4	15	6219
285	5	15	1
286	6	15	6998
287	7	15	8047
288	8	15	5579
289	9	15	2296
290	10	15	2450
291	11	15	1
292	12	15	1
293	13	15	1
294	14	15	1
295	15	15	1
296	16	15	7391
297	17	15	1
298	18	15	7061
299	19	15	1
300	20	15	2568
301	1	16	1
302	2	16	2131
303	3	16	1
304	4	16	6167
305	5	16	1
306	6	16	5676
307	7	16	3257
308	8	16	3848
309	9	16	7093
310	10	16	4667
311	11	16	1
312	12	16	1
313	13	16	1
314	14	16	1
315	15	16	1
316	16	16	6211
317	17	16	1
318	18	16	3835
319	19	16	1
320	20	16	6674
321	1	17	1
322	2	17	3390
323	3	17	1
324	4	17	3583
325	5	17	1
326	6	17	3370
327	7	17	1056
328	8	17	7126
329	9	17	4832
330	10	17	987
331	11	17	1
332	12	17	1
333	13	17	1
334	14	17	1
335	15	17	1
336	16	17	2629
337	17	17	1
338	18	17	2778
339	19	17	1
340	20	17	2649
341	1	18	1
342	2	18	7205
343	3	18	1
344	4	18	4295
345	5	18	1
346	6	18	2475
347	7	18	5079
348	8	18	5353
349	9	18	5929
350	10	18	7047
351	11	18	1
352	12	18	1
353	13	18	1
354	14	18	1
355	15	18	1
356	16	18	4595
357	17	18	1
358	18	18	8323
359	19	18	1
360	20	18	8481
\.


--
-- Data for Name: Salud; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "Salud" ("idSalud", "idClasesTipos", "idEntidadSector") FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	4
5	3	5
6	3	6
7	3	7
8	3	2
9	3	3
10	3	8
11	3	4
12	3	9
13	3	10
14	4	5
15	4	6
16	4	11
17	4	12
18	4	13
19	4	7
20	4	2
21	4	3
22	4	14
23	4	1
24	4	8
25	4	4
26	4	9
27	4	10
28	5	15
29	5	7
30	5	2
31	5	3
32	5	14
33	5	8
34	5	4
35	5	10
36	6	2
37	6	8
38	7	8
39	7	4
40	8	8
41	8	4
42	9	8
43	10	4
44	11	8
45	12	16
46	12	13
47	12	1
48	12	10
49	13	16
50	13	5
51	13	6
52	13	12
53	13	13
54	13	7
55	13	2
56	13	3
57	13	14
58	13	1
59	13	8
60	13	17
61	13	9
62	13	10
63	14	18
64	14	6
65	14	12
66	14	2
67	14	3
68	14	4
69	15	6
70	15	12
71	15	2
72	15	8
73	16	2
74	17	2
75	18	6
76	18	11
77	18	12
78	18	13
79	18	2
80	18	3
81	18	14
82	18	1
83	18	8
84	18	19
85	18	9
86	18	20
87	18	21
88	19	2
89	20	11
90	20	2
91	20	3
92	20	4
93	21	2
94	22	9
95	23	11
96	23	2
97	24	11
98	24	2
99	24	8
100	24	4
101	25	8
102	26	8
103	27	15
104	27	2
105	27	3
106	27	14
107	27	1
108	27	8
109	27	4
110	28	2
111	29	6
112	29	7
113	29	2
114	13	4
115	26	15
116	26	2
117	26	3
118	26	14
119	26	1
120	26	4
\.


--
-- Data for Name: SectorEstablecimiento; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "SectorEstablecimiento" ("idSector", "Sector") FROM stdin;
1	Sector Privado Con Fines De Lucro       
2	Sector Público                         
3	Sector Privado Sin Fines De Lucro       
\.


--
-- Data for Name: TipoEstablecimiento; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY "TipoEstablecimiento" ("idTipo", "Tipo") FROM stdin;
1	Agudo                                   
2	Clínicas Generales Sin Especialidad    
3	Crónico                                
4	Establecimientos Sin Internación       
5	Sin Tipo (hospitales Básicos)          
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
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
19	Can add bancopreguntas	7	add_bancopreguntas
20	Can change bancopreguntas	7	change_bancopreguntas
21	Can delete bancopreguntas	7	delete_bancopreguntas
22	Can add cantones	8	add_cantones
23	Can change cantones	8	change_cantones
24	Can delete cantones	8	delete_cantones
25	Can add clasesestablecimiento	9	add_clasesestablecimiento
26	Can change clasesestablecimiento	9	change_clasesestablecimiento
27	Can delete clasesestablecimiento	9	delete_clasesestablecimiento
28	Can add clasestiposes	10	add_clasestiposes
29	Can change clasestiposes	10	change_clasestiposes
30	Can delete clasestiposes	10	delete_clasestiposes
31	Can add cuestionario	11	add_cuestionario
32	Can change cuestionario	11	change_cuestionario
33	Can delete cuestionario	11	delete_cuestionario
34	Can add entidadestablecimiento	12	add_entidadestablecimiento
35	Can change entidadestablecimiento	12	change_entidadestablecimiento
36	Can delete entidadestablecimiento	12	delete_entidadestablecimiento
37	Can add entidadsectores	13	add_entidadsectores
38	Can change entidadsectores	13	change_entidadsectores
39	Can delete entidadsectores	13	delete_entidadsectores
40	Can add parroquiasalud	14	add_parroquiasalud
41	Can change parroquiasalud	14	change_parroquiasalud
42	Can delete parroquiasalud	14	delete_parroquiasalud
43	Can add parroquias	15	add_parroquias
44	Can change parroquias	15	change_parroquias
45	Can delete parroquias	15	delete_parroquias
46	Can add preguntacuestionario	16	add_preguntacuestionario
47	Can change preguntacuestionario	16	change_preguntacuestionario
48	Can delete preguntacuestionario	16	delete_preguntacuestionario
49	Can add provincias	17	add_provincias
50	Can change provincias	17	change_provincias
51	Can delete provincias	17	delete_provincias
52	Can add regiones	18	add_regiones
53	Can change regiones	18	change_regiones
54	Can delete regiones	18	delete_regiones
55	Can add respuestapregunta	19	add_respuestapregunta
56	Can change respuestapregunta	19	change_respuestapregunta
57	Can delete respuestapregunta	19	delete_respuestapregunta
58	Can add salud	20	add_salud
59	Can change salud	20	change_salud
60	Can delete salud	20	delete_salud
61	Can add sectorestablecimiento	21	add_sectorestablecimiento
62	Can change sectorestablecimiento	21	change_sectorestablecimiento
63	Can delete sectorestablecimiento	21	delete_sectorestablecimiento
64	Can add tipoestablecimiento	22	add_tipoestablecimiento
65	Can change tipoestablecimiento	22	change_tipoestablecimiento
66	Can delete tipoestablecimiento	22	delete_tipoestablecimiento
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('auth_permission_id_seq', 66, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$20000$auzhZZxxu9WE$Wr1+aoMzbks17m+5TtLxYsbSs5q7QTQ8b3bAFlTHpHU=	2016-12-17 23:27:21.228412+00	t	academias			academias@gmail.com	t	t	2016-12-17 23:11:36.083936+00
2	pbkdf2_sha256$20000$GEVoWn0QsGuI$Qwl8PAPLHc1XoYeY97Gyr26dXn6AZ07OqnePiWcqLq8=	2017-01-07 04:59:07.144884+00	t	admin			admin@hotmail.com	t	t	2017-01-07 04:58:59.359202+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('auth_user_id_seq', 2, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	gpResiduos	bancopreguntas
8	gpResiduos	cantones
9	gpResiduos	clasesestablecimiento
10	gpResiduos	clasestiposes
11	gpResiduos	cuestionario
12	gpResiduos	entidadestablecimiento
13	gpResiduos	entidadsectores
14	gpResiduos	parroquiasalud
15	gpResiduos	parroquias
16	gpResiduos	preguntacuestionario
17	gpResiduos	provincias
18	gpResiduos	regiones
19	gpResiduos	respuestapregunta
20	gpResiduos	salud
21	gpResiduos	sectorestablecimiento
22	gpResiduos	tipoestablecimiento
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('django_content_type_id_seq', 22, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2016-12-17 23:06:23.121701+00
2	auth	0001_initial	2016-12-17 23:06:23.959194+00
3	admin	0001_initial	2016-12-17 23:06:24.181794+00
4	contenttypes	0002_remove_content_type_name	2016-12-17 23:06:24.225944+00
5	auth	0002_alter_permission_name_max_length	2016-12-17 23:06:24.259332+00
6	auth	0003_alter_user_email_max_length	2016-12-17 23:06:24.292748+00
7	auth	0004_alter_user_username_opts	2016-12-17 23:06:24.314247+00
8	auth	0005_alter_user_last_login_null	2016-12-17 23:06:24.348478+00
9	auth	0006_require_contenttypes_0002	2016-12-17 23:06:24.359465+00
10	sessions	0001_initial	2016-12-17 23:06:24.548674+00
11	gpResiduos	0001_initial	2017-01-07 05:16:45.694227+00
14	gpResiduos	0002_auto_20170107_0610	2017-01-07 06:12:01.280961+00
15	gpResiduos	0003_auto_20170107_0611	2017-01-07 06:12:54.771686+00
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: residuospeligrosos; Owner: taller
--

SELECT pg_catalog.setval('django_migrations_id_seq', 15, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: residuospeligrosos; Owner: taller
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
v3gf2a1tjk85ncgrv1scd78ebwjievtq	ODdlMjYyZjFkZDE5ODEwYzMyZWMwYjUwNjI2ZWNmNmJlMDI4NTljYjp7Il9hdXRoX3VzZXJfaGFzaCI6IjczYmI0MDdjZDMwMWU1NGNkZjJjYWQwNGJiZmRlMjQ1ZDAzOGIxNTciLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2016-12-31 23:27:21.306641+00
3re6mm36m8yo02d1ulmswt8efvkr5i65	OWU1ZTVmZDIwMDM3ZTMwN2YxZjNkOWVjYTdhZWRkMzIxYTM1ZjQ5Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjMzODdiNWQwOTA3MjdkMDI5YmY4YmI2ZjBhYWVjY2MwZjUzYzY5MDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2017-01-21 04:59:07.201882+00
\.


--
-- Name: BancoPreguntas_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "BancoPreguntas"
    ADD CONSTRAINT "BancoPreguntas_pkey" PRIMARY KEY ("idBancoPregunta");


--
-- Name: Cantones_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "Cantones_pkey" PRIMARY KEY ("idCantones");


--
-- Name: ClasesEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ClasesEstablecimiento"
    ADD CONSTRAINT "ClasesEstablecimiento_pkey" PRIMARY KEY ("idClases");


--
-- Name: ClasesTiposEs_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ClasesTiposEs"
    ADD CONSTRAINT "ClasesTiposEs_pkey" PRIMARY KEY ("idClaseTipo");


--
-- Name: Cuestionario_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Cuestionario"
    ADD CONSTRAINT "Cuestionario_pkey" PRIMARY KEY ("idEncuesta");


--
-- Name: EntidadEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "EntidadEstablecimiento"
    ADD CONSTRAINT "EntidadEstablecimiento_pkey" PRIMARY KEY ("idEntidad");


--
-- Name: EntodadSectorEs_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "EntidadSectorEs"
    ADD CONSTRAINT "EntodadSectorEs_pkey" PRIMARY KEY ("idEntidadSector");


--
-- Name: ParroquiaSalud_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ParroquiaSalud"
    ADD CONSTRAINT "ParroquiaSalud_pkey" PRIMARY KEY ("idParroquiaSalud");


--
-- Name: Parroquias_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "Parroquias_pkey" PRIMARY KEY ("idParroquias");


--
-- Name: PreguntaCuestionario_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "PreguntaCuestionario"
    ADD CONSTRAINT "PreguntaCuestionario_pkey" PRIMARY KEY ("idPreguntaCuestionario");


--
-- Name: Provincias_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "Provincias_pkey" PRIMARY KEY ("idProvincias");


--
-- Name: Regiones_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Regiones"
    ADD CONSTRAINT "Regiones_pkey" PRIMARY KEY ("idRegiones");


--
-- Name: Respuesta_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "RespuestaPregunta"
    ADD CONSTRAINT "Respuesta_pkey" PRIMARY KEY ("idRespuesta");


--
-- Name: Salud_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Salud"
    ADD CONSTRAINT "Salud_pkey" PRIMARY KEY ("idSalud");


--
-- Name: SectorEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "SectorEstablecimiento"
    ADD CONSTRAINT "SectorEstablecimiento_pkey" PRIMARY KEY ("idSector");


--
-- Name: TipoEstablecimiento_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "TipoEstablecimiento"
    ADD CONSTRAINT "TipoEstablecimiento_pkey" PRIMARY KEY ("idTipo");


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: residuospeligrosos; Owner: taller
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: Cantones_idProvincia_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "Cantones_idProvincia_fkey" FOREIGN KEY ("idProvincia") REFERENCES "Provincias"("idProvincias");


--
-- Name: ClasesTiposEs_idClase_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ClasesTiposEs"
    ADD CONSTRAINT "ClasesTiposEs_idClase_fkey" FOREIGN KEY ("idClase") REFERENCES "ClasesEstablecimiento"("idClases");


--
-- Name: ClasesTiposEs_idTipo_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ClasesTiposEs"
    ADD CONSTRAINT "ClasesTiposEs_idTipo_fkey" FOREIGN KEY ("idTipo") REFERENCES "TipoEstablecimiento"("idTipo");


--
-- Name: EntidadSectorEs_idEntidad_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "EntidadSectorEs"
    ADD CONSTRAINT "EntidadSectorEs_idEntidad_fkey" FOREIGN KEY ("idEntidad") REFERENCES "EntidadEstablecimiento"("idEntidad");


--
-- Name: EntidadSectorEs_idSector_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "EntidadSectorEs"
    ADD CONSTRAINT "EntidadSectorEs_idSector_fkey" FOREIGN KEY ("idSector") REFERENCES "SectorEstablecimiento"("idSector");


--
-- Name: ParroquiaSalud_idParroquia_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ParroquiaSalud"
    ADD CONSTRAINT "ParroquiaSalud_idParroquia_fkey" FOREIGN KEY ("idParroquia") REFERENCES "Parroquias"("idParroquias");


--
-- Name: ParroquiaSalud_idSalud_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "ParroquiaSalud"
    ADD CONSTRAINT "ParroquiaSalud_idSalud_fkey" FOREIGN KEY ("idSalud") REFERENCES "Salud"("idSalud");


--
-- Name: Parroquias_idCanton_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "Parroquias_idCanton_fkey" FOREIGN KEY ("idCanton") REFERENCES "Cantones"("idCantones");


--
-- Name: PreguntaCuestionario_idBancoPregunta_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "PreguntaCuestionario"
    ADD CONSTRAINT "PreguntaCuestionario_idBancoPregunta_fkey" FOREIGN KEY ("idBancoPregunta") REFERENCES "BancoPreguntas"("idBancoPregunta");


--
-- Name: PreguntaCuestionario_idCuestionario_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "PreguntaCuestionario"
    ADD CONSTRAINT "PreguntaCuestionario_idCuestionario_fkey" FOREIGN KEY ("idCuestionario") REFERENCES "Cuestionario"("idEncuesta");


--
-- Name: Provincias_idRegion_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "Provincias_idRegion_fkey" FOREIGN KEY ("idRegion") REFERENCES "Regiones"("idRegiones");


--
-- Name: Respuesta_idPreguntaEncuesta_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "RespuestaPregunta"
    ADD CONSTRAINT "Respuesta_idPreguntaEncuesta_fkey" FOREIGN KEY ("idPreguntaEncuesta") REFERENCES "PreguntaCuestionario"("idPreguntaCuestionario");


--
-- Name: Respuesta_idSalud_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "RespuestaPregunta"
    ADD CONSTRAINT "Respuesta_idSalud_fkey" FOREIGN KEY ("idSalud") REFERENCES "EntidadEstablecimiento"("idEntidad");


--
-- Name: Salud_idClasesTipos_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Salud"
    ADD CONSTRAINT "Salud_idClasesTipos_fkey" FOREIGN KEY ("idClasesTipos") REFERENCES "ClasesTiposEs"("idClaseTipo");


--
-- Name: Salud_idEntidadSector_fkey; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY "Salud"
    ADD CONSTRAINT "Salud_idEntidadSector_fkey" FOREIGN KEY ("idEntidadSector") REFERENCES "EntidadSectorEs"("idEntidadSector");


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: residuospeligrosos; Owner: taller
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

