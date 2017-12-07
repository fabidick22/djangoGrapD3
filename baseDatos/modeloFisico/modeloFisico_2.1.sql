
SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;
SET row_security = off;

CREATE SCHEMA "residuospeligrosos" AUTHORIZATION taller;

ALTER SCHEMA "residuospeligrosos" OWNER TO taller;

--SET search_path = "residuospeligrosos", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

CREATE TABLE "BancoPreguntas" (
    "idBancoPregunta" integer NOT NULL,
    "Pregunta" character(400) NOT NULL
);

ALTER TABLE "BancoPreguntas" OWNER TO taller;

CREATE TABLE "Cantones" (
    "idCanton" integer NOT NULL,
    "Canton" character(45) NOT NULL,
    "Codigo" character(10) NOT NULL,
    "idProvincia" integer NOT NULL
);

ALTER TABLE "Cantones" OWNER TO taller;


CREATE TABLE "Cuestionarios" (
    "idEncuesta" integer NOT NULL,
    "Encuesta" character(10) NOT NULL,
    "Anio" integer NOT NULL,
    "idEstable" integer
);

ALTER TABLE "Cuestionarios" OWNER TO taller;


CREATE TABLE "Entidades" (
    "idEntidad" integer NOT NULL,
    "Entidad" character(50) NOT NULL
);

ALTER TABLE "Entidades" OWNER TO taller;

CREATE TABLE "Establecimientos" (
    "idEstablecimiento" integer NOT NULL,
    "Establecimiento" character(80) NOT NULL,
    "idTipo" integer,
    "idSector" integer,
    "idEntidad" integer,
    "idParroquias" integer,
    "Codigo" character(9)
);

ALTER TABLE "Establecimientos" OWNER TO taller;

CREATE TABLE "Parroquias" (
    "idParroquias" integer NOT NULL,
    "Parroquia" character(70) NOT NULL,
    "idCanton" integer NOT NULL
);


ALTER TABLE "Parroquias" OWNER TO taller;

CREATE TABLE "Provincias" (
    "idProvincia" integer NOT NULL,
    "Provincia" character(45),
    "CodigoProvincia" character(9),
    "LongitudProvincia" character(15) NOT NULL,
    "LatitudProvincia" character(15) NOT NULL,
    "idRegion" integer,
    "CodProvincia" character(9)
);

ALTER TABLE "Provincias" OWNER TO taller;

CREATE TABLE "Regiones" (
    "idRegion" integer NOT NULL,
    "Region" character(30)
);

ALTER TABLE "Regiones" OWNER TO taller;

CREATE TABLE "Respuesta" (
    "idRespuesta" integer NOT NULL,
    "Respuesta" integer,
    "idPregunta" integer
);

ALTER TABLE "Respuesta" OWNER TO taller;

CREATE TABLE "Sectores" (
    "idSector" integer NOT NULL,
    "Sector" character(40) NOT NULL
);

ALTER TABLE "Sectores" OWNER TO taller;

CREATE TABLE "Tipos" (
    "idTipo" integer NOT NULL,
    "Tipo" character(40) NOT NULL
);

ALTER TABLE "Tipos" OWNER TO taller;

CREATE TABLE "cuestPregunta" (
    "idcuestPregunta" integer NOT NULL,
    "idCuestionario" integer,
    "idPregunta" integer
);

ALTER TABLE "cuestPregunta" OWNER TO taller;

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

COPY "Cantones" ("idCanton", "Canton", "Codigo", "idProvincia") FROM stdin;
1	Cuenca                                       	101       	1
2	Girón                                        	102       	1
3	Gualaceo                                     	103       	1
4	Santa Isabel                                 	108       	1
5	Sigsig                                       	109       	1
6	Paute                                        	105       	1
7	Nabón                                        	104       	1
8	Oña                                          	110       	1
9	San Fernando                                 	107       	1
10	Chordeleg                                    	111       	1
11	Guachapala                                   	114       	1
12	El Pan                                       	112       	1
13	Sevilla De Oro                               	113       	1
14	Camilo Ponce Enríquez                        	115       	1
15	Pucará                                       	106       	1
16	Guaranda                                     	201       	2
17	San Miguel                                   	205       	2
18	Chillanes                                    	202       	2
19	Echeandía                                    	204       	2
20	Las Naves                                    	207       	2
21	Chimbo                                       	203       	2
22	Caluma                                       	206       	2
23	Azogues                                      	301       	3
24	Cañar                                        	303       	3
25	Déleg                                        	306       	3
26	Biblián                                      	302       	3
27	El Tambo                                     	305       	3
28	La Troncal                                   	304       	3
29	Suscal                                       	307       	3
30	Tulcán                                       	401       	4
31	Espejo                                       	403       	4
32	Montúfar                                     	405       	4
33	San Pedro De Huaca                           	406       	4
34	Mira                                         	404       	4
35	Bolívar                                      	402       	4
36	Latacunga                                    	501       	5
37	Pangua                                       	503       	5
38	Pujilí                                       	504       	5
39	Salcedo                                      	505       	5
40	Sigchos                                      	507       	5
41	La Maná                                      	502       	5
42	Saquisilí                                    	506       	5
43	Riobamba                                     	601       	6
44	Alausi                                       	602       	6
45	Colta                                        	603       	6
46	Chunchi                                      	605       	6
47	Guamote                                      	606       	6
48	Chambo                                       	604       	6
49	Cumandá                                      	610       	6
50	Guano                                        	607       	6
51	Penipe                                       	609       	6
52	Pallatanga                                   	608       	6
53	Machala                                      	701       	7
54	Pasaje                                       	709       	7
55	Arenillas                                    	702       	7
56	Piñas                                        	710       	7
57	Santa Rosa                                   	712       	7
58	Zaruma                                       	713       	7
59	El Guabo                                     	706       	7
60	Chilla                                       	705       	7
61	Marcabelí                                    	708       	7
62	Balsas                                       	704       	7
63	Atahualpa                                    	703       	7
64	Portovelo                                    	711       	7
65	Las Lajas                                    	714       	7
66	Huaquillas                                   	707       	7
67	Esmeraldas                                   	801       	8
68	Eloy Alfaro                                  	802       	8
69	San Lorenzo                                  	805       	8
70	Muisne                                       	803       	8
71	Quinindé                                     	804       	8
72	Atacames                                     	806       	8
73	Rioverde                                     	807       	8
74	Guayaquil                                    	901       	9
75	Milagro                                      	902       	9
76	El Empalme                                   	903       	9
77	San Jacinto De Yaguachi                      	904       	9
78	Durán                                        	905       	9
79	Playas                                       	906       	9
80	Balzar                                       	907       	9
81	Daule                                        	908       	9
82	Naranjal                                     	909       	9
83	Coronel Marcelino Maridueña                  	910       	9
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
94	Santa Lucía                                  	921       	9
95	General Antonio Elizalde (bucay)             	922       	9
96	Samborondón                                  	923       	9
97	Alfredo Baquerizo Moreno (jujin)             	924       	9
98	Simón Bolívar                                	925       	9
99	Ibarra                                       	1001      	10
100	Antonio Ante                                 	1002      	10
101	Cotacachi                                    	1003      	10
102	Otavalo                                      	1004      	10
103	San Miguel De Urcuquí                        	1005      	10
104	Pimampiro                                    	1006      	10
105	Loja                                         	1101      	11
106	Calvas                                       	1102      	11
107	Macará                                       	1103      	11
108	Paltas                                       	1104      	11
109	Puyango                                      	1105      	11
110	Saraguro                                     	1106      	11
111	Espíndola                                    	1107      	11
112	Catamayo                                     	1108      	11
113	Celica                                       	1109      	11
114	Zapotillo                                    	1110      	11
115	Pindal                                       	1111      	11
116	Quilanga                                     	1112      	11
117	Gonzanamá                                    	1113      	11
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
130	Buena Fé                                     	1210      	12
131	Valencia                                     	1211      	12
132	Quinsaloma                                   	1212      	12
133	Palenque                                     	1213      	12
134	Portoviejo                                   	1301      	13
135	Bolívar                                      	1302      	13
136	Chone                                        	1303      	13
137	Jipijapa                                     	1304      	13
138	Manta                                        	1305      	13
139	Sucre                                        	1306      	13
140	El Carmen                                    	1307      	13
141	Paján                                        	1308      	13
142	Rocafuerte                                   	1309      	13
143	Pichincha                                    	1310      	13
144	Flavio Alfaro                                	1311      	13
145	Puerto López                                 	1312      	13
146	Junín                                        	1313      	13
147	Montecristi                                  	1314      	13
148	Jaramijó                                     	1315      	13
149	Tosagua                                      	1316      	13
150	Santa Ana                                    	1317      	13
151	Olmedo                                       	1318      	13
152	San Vicente                                  	1319      	13
153	Pedernales                                   	1320      	13
154	Jama                                         	1321      	13
155	24 De Mayo                                   	1322      	13
156	Morona                                       	1401      	14
157	Gualaquiza                                   	1402      	14
158	Limón Indanza                                	1403      	14
159	Santiago                                     	1404      	14
160	Sucúa                                        	1405      	14
161	Taisha                                       	1406      	14
162	Huamboya                                     	1407      	14
163	Pablo Sexto                                  	1408      	14
164	Palora                                       	1409      	14
165	Tiwintza                                     	1410      	14
166	Logroño                                      	1411      	14
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
179	Mejía                                        	1703      	17
180	Rumiñahui                                    	1704      	17
181	San Miguel De Los Bancos                     	1705      	17
182	Pedro Vicente Maldonado                      	1706      	17
183	Puerto Quito                                 	1707      	17
184	Pedro Moncayo                                	1708      	17
185	Ambato                                       	1801      	18
186	San Pedro De Pelileo                         	1802      	18
187	Santiago De Píllaro                          	1803      	18
188	Cevallos                                     	1804      	18
189	Mocha                                        	1805      	18
190	Tisaleo                                      	1806      	18
191	Baños De Agua Santa                          	1807      	18
192	Patate                                       	1808      	18
193	Quero                                        	1809      	18
194	Zamora                                       	1901      	19
195	Yantzaza (yanzatza)                          	1902      	19
196	Chinchipe                                    	1903      	19
197	Centinela Del Cóndor                         	1904      	19
198	Nangaritza                                   	1905      	19
199	El Pangui                                    	1906      	19
200	Paquisha                                     	1907      	19
201	Palanda                                      	1908      	19
202	Yacuambí                                     	1909      	19
203	San Cristóbal                                	2001      	20
204	Santa Cruz                                   	2002      	20
205	Isabela                                      	2003      	20
206	Lago Agrio                                   	2101      	21
207	Shushufindi                                  	2102      	21
208	Cascales                                     	2103      	21
209	Gonzalo Pizarro                              	2104      	21
210	Sucumbíos                                    	2105      	21
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

COPY "Cuestionarios" ("idEncuesta", "Encuesta", "Anio", "idEstable") FROM stdin;
1	ERS       	2013	1
2	ERS       	2013	2
3	ERS       	2013	3
4	ERS       	2013	4
5	ERS       	2013	5
6	ERS       	2013	6
7	ERS       	2013	7
8	ERS       	2013	8
9	ERS       	2013	9
10	ERS       	2013	10
11	ERS       	2013	11
12	ERS       	2013	12
13	ERS       	2013	13
14	ERS       	2013	14
15	ERS       	2013	15
16	ERS       	2013	16
17	ERS       	2013	17
18	ERS       	2013	18
19	ERS       	2013	19
20	ERS       	2013	20
21	ERS       	2013	21
22	ERS       	2013	22
23	ERS       	2013	23
24	ERS       	2013	24
25	ERS       	2013	25
26	ERS       	2013	26
27	ERS       	2013	27
28	ERS       	2013	28
29	ERS       	2013	29
30	ERS       	2013	30
31	ERS       	2013	31
32	ERS       	2013	32
33	ERS       	2013	33
34	ERS       	2013	34
35	ERS       	2013	35
36	ERS       	2013	36
37	ERS       	2013	37
38	ERS       	2013	38
39	ERS       	2013	39
40	ERS       	2013	40
41	ERS       	2013	41
42	ERS       	2013	42
43	ERS       	2013	43
44	ERS       	2013	44
45	ERS       	2013	45
46	ERS       	2013	46
47	ERS       	2013	47
48	ERS       	2013	48
49	ERS       	2013	49
50	ERS       	2013	50
51	ERS       	2013	51
52	ERS       	2013	52
53	ERS       	2013	53
54	ERS       	2013	54
55	ERS       	2013	55
56	ERS       	2013	56
57	ERS       	2013	57
58	ERS       	2013	58
59	ERS       	2013	59
60	ERS       	2013	60
61	ERS       	2013	61
62	ERS       	2013	62
63	ERS       	2013	63
64	ERS       	2013	64
65	ERS       	2013	65
66	ERS       	2013	66
67	ERS       	2013	67
68	ERS       	2013	68
69	ERS       	2013	69
70	ERS       	2013	70
71	ERS       	2013	71
72	ERS       	2013	72
73	ERS       	2013	73
74	ERS       	2013	74
75	ERS       	2013	75
76	ERS       	2013	76
77	ERS       	2013	77
78	ERS       	2013	78
79	ERS       	2013	79
80	ERS       	2013	80
81	ERS       	2013	81
82	ERS       	2013	82
83	ERS       	2013	83
84	ERS       	2013	84
85	ERS       	2013	85
86	ERS       	2013	86
87	ERS       	2013	87
88	ERS       	2013	88
89	ERS       	2013	89
90	ERS       	2013	90
91	ERS       	2013	91
92	ERS       	2013	92
93	ERS       	2013	93
94	ERS       	2013	94
95	ERS       	2013	95
96	ERS       	2013	96
97	ERS       	2013	97
98	ERS       	2013	98
99	ERS       	2013	99
100	ERS       	2013	100
101	ERS       	2013	101
102	ERS       	2013	102
103	ERS       	2013	103
104	ERS       	2013	104
105	ERS       	2013	105
106	ERS       	2013	106
107	ERS       	2013	107
108	ERS       	2013	108
109	ERS       	2013	109
110	ERS       	2013	110
111	ERS       	2013	111
112	ERS       	2013	112
113	ERS       	2013	113
114	ERS       	2013	114
115	ERS       	2013	115
116	ERS       	2013	116
117	ERS       	2013	117
118	ERS       	2013	118
119	ERS       	2013	119
120	ERS       	2013	120
121	ERS       	2013	121
122	ERS       	2013	122
123	ERS       	2013	123
124	ERS       	2013	124
125	ERS       	2013	125
126	ERS       	2013	126
127	ERS       	2013	127
128	ERS       	2013	128
129	ERS       	2013	129
130	ERS       	2013	130
131	ERS       	2013	131
132	ERS       	2013	132
133	ERS       	2013	133
134	ERS       	2013	134
135	ERS       	2013	135
136	ERS       	2013	136
137	ERS       	2013	137
138	ERS       	2013	138
139	ERS       	2013	139
140	ERS       	2013	140
141	ERS       	2013	141
142	ERS       	2013	142
143	ERS       	2013	143
144	ERS       	2013	144
145	ERS       	2013	145
146	ERS       	2013	146
147	ERS       	2013	147
148	ERS       	2013	148
149	ERS       	2013	149
150	ERS       	2013	150
151	ERS       	2013	151
152	ERS       	2013	152
153	ERS       	2013	153
154	ERS       	2013	154
155	ERS       	2013	155
156	ERS       	2013	156
157	ERS       	2013	157
158	ERS       	2013	158
159	ERS       	2013	159
160	ERS       	2013	160
161	ERS       	2013	161
162	ERS       	2013	162
163	ERS       	2013	163
164	ERS       	2013	164
165	ERS       	2013	165
166	ERS       	2013	166
167	ERS       	2013	167
168	ERS       	2013	168
169	ERS       	2013	169
170	ERS       	2013	170
171	ERS       	2013	171
172	ERS       	2013	172
173	ERS       	2013	173
174	ERS       	2013	174
175	ERS       	2013	175
176	ERS       	2013	176
177	ERS       	2013	177
178	ERS       	2013	178
179	ERS       	2013	179
180	ERS       	2013	180
181	ERS       	2013	181
182	ERS       	2013	182
183	ERS       	2013	183
184	ERS       	2013	184
185	ERS       	2013	185
186	ERS       	2013	186
187	ERS       	2013	187
188	ERS       	2013	188
189	ERS       	2013	189
190	ERS       	2013	190
191	ERS       	2013	191
192	ERS       	2013	192
193	ERS       	2013	193
194	ERS       	2013	194
195	ERS       	2013	195
196	ERS       	2013	196
197	ERS       	2013	197
198	ERS       	2013	198
199	ERS       	2013	199
200	ERS       	2013	200
201	ERS       	2013	201
202	ERS       	2013	202
203	ERS       	2013	203
204	ERS       	2013	204
205	ERS       	2013	205
206	ERS       	2013	206
207	ERS       	2013	207
208	ERS       	2013	208
209	ERS       	2013	209
210	ERS       	2013	210
211	ERS       	2013	211
212	ERS       	2013	212
213	ERS       	2013	213
214	ERS       	2013	214
215	ERS       	2013	215
216	ERS       	2013	216
217	ERS       	2013	217
218	ERS       	2013	218
219	ERS       	2013	219
220	ERS       	2013	220
221	ERS       	2013	221
222	ERS       	2013	222
223	ERS       	2013	223
224	ERS       	2013	224
225	ERS       	2013	225
226	ERS       	2013	226
227	ERS       	2013	227
228	ERS       	2013	228
229	ERS       	2013	229
230	ERS       	2013	230
231	ERS       	2013	231
232	ERS       	2013	232
233	ERS       	2013	233
234	ERS       	2013	234
235	ERS       	2013	235
236	ERS       	2013	236
237	ERS       	2013	237
238	ERS       	2013	238
239	ERS       	2013	239
240	ERS       	2013	240
241	ERS       	2013	241
242	ERS       	2013	242
243	ERS       	2013	243
244	ERS       	2013	244
245	ERS       	2013	245
246	ERS       	2013	246
247	ERS       	2013	247
248	ERS       	2013	248
249	ERS       	2013	249
250	ERS       	2013	250
251	ERS       	2013	251
252	ERS       	2013	252
253	ERS       	2013	253
254	ERS       	2013	254
255	ERS       	2013	255
256	ERS       	2013	256
257	ERS       	2013	257
258	ERS       	2013	258
259	ERS       	2013	259
260	ERS       	2013	260
261	ERS       	2013	261
262	ERS       	2013	262
263	ERS       	2013	263
264	ERS       	2013	264
265	ERS       	2013	265
266	ERS       	2013	266
267	ERS       	2013	267
268	ERS       	2013	268
269	ERS       	2013	269
270	ERS       	2013	270
271	ERS       	2013	271
272	ERS       	2013	272
273	ERS       	2013	273
274	ERS       	2013	274
275	ERS       	2013	275
276	ERS       	2013	276
277	ERS       	2013	277
278	ERS       	2013	278
279	ERS       	2013	279
280	ERS       	2013	280
281	ERS       	2013	281
282	ERS       	2013	282
283	ERS       	2013	283
284	ERS       	2013	284
285	ERS       	2013	285
286	ERS       	2013	286
287	ERS       	2013	287
288	ERS       	2013	288
289	ERS       	2013	289
290	ERS       	2013	290
291	ERS       	2013	291
292	ERS       	2013	292
293	ERS       	2013	293
294	ERS       	2013	294
295	ERS       	2013	295
296	ERS       	2013	296
297	ERS       	2013	297
298	ERS       	2013	298
299	ERS       	2013	299
300	ERS       	2013	300
301	ERS       	2013	301
302	ERS       	2013	302
303	ERS       	2013	303
304	ERS       	2013	304
305	ERS       	2013	305
306	ERS       	2013	306
307	ERS       	2013	307
308	ERS       	2013	308
309	ERS       	2013	309
310	ERS       	2013	310
311	ERS       	2013	311
312	ERS       	2013	312
313	ERS       	2013	313
314	ERS       	2013	314
315	ERS       	2013	315
316	ERS       	2013	316
317	ERS       	2013	317
318	ERS       	2013	318
319	ERS       	2013	319
320	ERS       	2013	320
321	ERS       	2013	321
322	ERS       	2013	322
323	ERS       	2013	323
324	ERS       	2013	324
325	ERS       	2013	325
326	ERS       	2013	326
327	ERS       	2013	327
328	ERS       	2013	328
329	ERS       	2013	329
330	ERS       	2013	330
331	ERS       	2013	331
332	ERS       	2013	332
333	ERS       	2013	333
334	ERS       	2013	334
335	ERS       	2013	335
336	ERS       	2013	336
337	ERS       	2013	337
338	ERS       	2013	338
339	ERS       	2013	339
340	ERS       	2013	340
341	ERS       	2013	341
342	ERS       	2013	342
343	ERS       	2013	343
344	ERS       	2013	344
345	ERS       	2013	345
346	ERS       	2013	346
347	ERS       	2013	347
348	ERS       	2013	348
349	ERS       	2013	349
350	ERS       	2013	350
351	ERS       	2013	351
352	ERS       	2013	352
353	ERS       	2013	353
354	ERS       	2013	354
355	ERS       	2013	355
356	ERS       	2013	356
357	ERS       	2013	357
358	ERS       	2013	358
359	ERS       	2013	359
360	ERS       	2013	360
361	ERS       	2013	361
362	ERS       	2013	362
363	ERS       	2013	363
364	ERS       	2013	364
365	ERS       	2013	365
366	ERS       	2013	366
367	ERS       	2013	367
368	ERS       	2013	368
369	ERS       	2013	369
370	ERS       	2013	370
371	ERS       	2013	371
372	ERS       	2013	372
373	ERS       	2013	373
374	ERS       	2013	374
375	ERS       	2013	375
376	ERS       	2013	376
377	ERS       	2013	377
378	ERS       	2013	378
379	ERS       	2013	379
380	ERS       	2013	380
381	ERS       	2013	381
382	ERS       	2013	382
383	ERS       	2013	383
384	ERS       	2013	384
385	ERS       	2013	385
386	ERS       	2013	386
387	ERS       	2013	387
388	ERS       	2013	388
389	ERS       	2013	389
390	ERS       	2013	390
391	ERS       	2013	391
392	ERS       	2013	392
393	ERS       	2013	393
394	ERS       	2013	394
395	ERS       	2013	395
396	ERS       	2013	396
397	ERS       	2013	397
398	ERS       	2013	398
399	ERS       	2013	399
400	ERS       	2013	400
401	ERS       	2013	401
402	ERS       	2013	402
403	ERS       	2013	403
404	ERS       	2013	404
405	ERS       	2013	405
406	ERS       	2013	406
407	ERS       	2013	407
408	ERS       	2013	408
409	ERS       	2013	409
410	ERS       	2013	410
411	ERS       	2013	411
412	ERS       	2013	412
413	ERS       	2013	413
414	ERS       	2013	414
415	ERS       	2013	415
416	ERS       	2013	416
417	ERS       	2013	417
418	ERS       	2013	418
419	ERS       	2013	419
420	ERS       	2013	420
421	ERS       	2013	421
422	ERS       	2013	422
423	ERS       	2013	423
424	ERS       	2013	424
425	ERS       	2013	425
426	ERS       	2013	426
427	ERS       	2013	427
428	ERS       	2013	428
429	ERS       	2013	429
430	ERS       	2013	430
431	ERS       	2013	431
432	ERS       	2013	432
433	ERS       	2013	433
434	ERS       	2013	434
435	ERS       	2013	435
436	ERS       	2013	436
437	ERS       	2013	437
438	ERS       	2013	438
439	ERS       	2013	439
440	ERS       	2013	440
441	ERS       	2013	441
442	ERS       	2013	442
443	ERS       	2013	443
444	ERS       	2013	444
445	ERS       	2013	445
446	ERS       	2013	446
447	ERS       	2013	447
448	ERS       	2013	448
449	ERS       	2013	449
450	ERS       	2013	450
451	ERS       	2013	451
452	ERS       	2013	452
453	ERS       	2013	453
454	ERS       	2013	454
455	ERS       	2013	455
456	ERS       	2013	456
457	ERS       	2013	457
458	ERS       	2013	458
459	ERS       	2013	459
460	ERS       	2013	460
461	ERS       	2013	461
462	ERS       	2013	462
463	ERS       	2013	463
464	ERS       	2013	464
465	ERS       	2013	465
466	ERS       	2013	466
467	ERS       	2013	467
468	ERS       	2013	468
469	ERS       	2013	469
470	ERS       	2013	470
471	ERS       	2013	471
472	ERS       	2013	472
473	ERS       	2013	473
474	ERS       	2013	474
475	ERS       	2013	475
476	ERS       	2013	476
477	ERS       	2013	477
478	ERS       	2013	478
479	ERS       	2013	479
480	ERS       	2013	480
481	ERS       	2013	481
482	ERS       	2013	482
483	ERS       	2013	483
484	ERS       	2013	484
485	ERS       	2013	485
486	ERS       	2013	486
487	ERS       	2013	487
488	ERS       	2013	488
489	ERS       	2013	489
490	ERS       	2013	490
491	ERS       	2013	491
492	ERS       	2013	492
493	ERS       	2013	493
494	ERS       	2013	494
495	ERS       	2013	495
496	ERS       	2013	496
497	ERS       	2013	497
498	ERS       	2013	498
499	ERS       	2013	499
500	ERS       	2013	500
501	ERS       	2013	501
502	ERS       	2013	502
503	ERS       	2013	503
504	ERS       	2013	504
505	ERS       	2013	505
506	ERS       	2013	506
507	ERS       	2013	507
508	ERS       	2013	508
509	ERS       	2013	509
510	ERS       	2013	510
511	ERS       	2013	511
512	ERS       	2013	512
513	ERS       	2013	513
514	ERS       	2013	514
515	ERS       	2013	515
516	ERS       	2013	516
517	ERS       	2013	517
518	ERS       	2013	518
519	ERS       	2013	519
520	ERS       	2013	520
521	ERS       	2013	521
522	ERS       	2013	522
523	ERS       	2013	523
524	ERS       	2013	524
525	ERS       	2013	525
526	ERS       	2013	526
527	ERS       	2013	527
528	ERS       	2013	528
529	ERS       	2013	529
530	ERS       	2013	530
531	ERS       	2013	531
532	ERS       	2013	532
533	ERS       	2013	533
534	ERS       	2013	534
535	ERS       	2013	535
536	ERS       	2013	536
537	ERS       	2013	537
538	ERS       	2013	538
539	ERS       	2013	539
540	ERS       	2013	540
541	ERS       	2013	541
542	ERS       	2013	542
543	ERS       	2013	543
544	ERS       	2013	544
545	ERS       	2013	545
546	ERS       	2013	546
547	ERS       	2013	547
548	ERS       	2013	548
549	ERS       	2013	549
550	ERS       	2013	550
551	ERS       	2013	551
552	ERS       	2013	552
553	ERS       	2013	553
554	ERS       	2013	554
555	ERS       	2013	555
556	ERS       	2013	556
557	ERS       	2013	557
558	ERS       	2013	558
559	ERS       	2013	559
560	ERS       	2013	560
561	ERS       	2013	561
562	ERS       	2013	562
563	ERS       	2013	563
564	ERS       	2013	564
565	ERS       	2013	565
566	ERS       	2013	566
567	ERS       	2013	567
568	ERS       	2013	568
569	ERS       	2013	569
570	ERS       	2013	570
571	ERS       	2013	571
572	ERS       	2013	572
573	ERS       	2013	573
574	ERS       	2013	574
575	ERS       	2013	575
576	ERS       	2013	576
577	ERS       	2013	577
578	ERS       	2013	578
579	ERS       	2013	579
580	ERS       	2013	580
581	ERS       	2013	581
582	ERS       	2013	582
583	ERS       	2013	583
584	ERS       	2013	584
585	ERS       	2013	585
586	ERS       	2013	586
587	ERS       	2013	587
588	ERS       	2013	588
589	ERS       	2013	589
590	ERS       	2013	590
591	ERS       	2013	591
592	ERS       	2013	592
593	ERS       	2013	593
594	ERS       	2013	594
595	ERS       	2013	595
596	ERS       	2013	596
597	ERS       	2013	597
598	ERS       	2013	598
599	ERS       	2013	599
600	ERS       	2013	600
601	ERS       	2013	601
602	ERS       	2013	602
603	ERS       	2013	603
604	ERS       	2013	604
605	ERS       	2013	605
606	ERS       	2013	606
607	ERS       	2013	607
608	ERS       	2013	608
609	ERS       	2013	609
610	ERS       	2013	610
611	ERS       	2013	611
612	ERS       	2013	612
613	ERS       	2013	613
614	ERS       	2013	614
615	ERS       	2013	615
616	ERS       	2013	616
617	ERS       	2013	617
618	ERS       	2013	618
619	ERS       	2013	619
620	ERS       	2013	620
621	ERS       	2013	621
622	ERS       	2013	622
623	ERS       	2013	623
624	ERS       	2013	624
625	ERS       	2013	625
626	ERS       	2013	626
627	ERS       	2013	627
628	ERS       	2013	628
629	ERS       	2013	629
630	ERS       	2013	630
631	ERS       	2013	631
632	ERS       	2013	632
633	ERS       	2013	633
634	ERS       	2013	634
635	ERS       	2013	635
636	ERS       	2013	636
637	ERS       	2013	637
638	ERS       	2013	638
639	ERS       	2013	639
640	ERS       	2013	640
641	ERS       	2013	641
642	ERS       	2013	642
643	ERS       	2013	643
644	ERS       	2013	644
645	ERS       	2013	645
646	ERS       	2013	646
647	ERS       	2013	647
648	ERS       	2013	648
649	ERS       	2013	649
650	ERS       	2013	650
651	ERS       	2013	651
652	ERS       	2013	652
653	ERS       	2013	653
654	ERS       	2013	654
655	ERS       	2013	655
656	ERS       	2013	656
657	ERS       	2013	657
658	ERS       	2013	658
659	ERS       	2013	659
660	ERS       	2013	660
661	ERS       	2013	661
662	ERS       	2013	662
663	ERS       	2013	663
664	ERS       	2013	664
665	ERS       	2013	665
666	ERS       	2013	666
667	ERS       	2013	667
668	ERS       	2013	668
669	ERS       	2013	669
670	ERS       	2013	670
671	ERS       	2013	671
672	ERS       	2013	672
673	ERS       	2013	673
674	ERS       	2013	674
675	ERS       	2013	675
676	ERS       	2013	676
677	ERS       	2013	677
678	ERS       	2013	678
679	ERS       	2013	679
680	ERS       	2013	680
681	ERS       	2013	681
682	ERS       	2013	682
683	ERS       	2013	683
684	ERS       	2013	684
685	ERS       	2013	685
686	ERS       	2013	686
687	ERS       	2013	687
688	ERS       	2013	688
689	ERS       	2013	689
690	ERS       	2013	690
691	ERS       	2013	691
692	ERS       	2013	692
693	ERS       	2013	693
694	ERS       	2013	694
695	ERS       	2013	695
696	ERS       	2013	696
697	ERS       	2013	697
698	ERS       	2013	698
699	ERS       	2013	699
700	ERS       	2013	700
701	ERS       	2013	701
702	ERS       	2013	702
703	ERS       	2013	703
704	ERS       	2013	704
705	ERS       	2013	705
706	ERS       	2013	706
707	ERS       	2013	707
708	ERS       	2013	708
709	ERS       	2013	709
710	ERS       	2013	710
711	ERS       	2013	711
712	ERS       	2013	712
713	ERS       	2013	713
714	ERS       	2013	714
715	ERS       	2013	715
716	ERS       	2013	716
717	ERS       	2013	717
718	ERS       	2013	718
719	ERS       	2013	719
720	ERS       	2013	720
721	ERS       	2013	721
722	ERS       	2013	722
723	ERS       	2013	723
724	ERS       	2013	724
725	ERS       	2013	725
726	ERS       	2013	726
727	ERS       	2013	727
728	ERS       	2013	728
729	ERS       	2013	729
730	ERS       	2013	730
731	ERS       	2013	731
732	ERS       	2013	732
733	ERS       	2013	733
734	ERS       	2013	734
735	ERS       	2013	735
736	ERS       	2013	736
737	ERS       	2013	737
738	ERS       	2013	738
739	ERS       	2013	739
740	ERS       	2013	740
741	ERS       	2013	741
742	ERS       	2013	742
743	ERS       	2013	743
744	ERS       	2013	744
745	ERS       	2013	745
746	ERS       	2013	746
747	ERS       	2013	747
748	ERS       	2013	748
749	ERS       	2013	749
750	ERS       	2013	750
751	ERS       	2013	751
752	ERS       	2013	752
753	ERS       	2013	753
754	ERS       	2013	754
755	ERS       	2013	755
756	ERS       	2013	756
757	ERS       	2013	757
758	ERS       	2013	758
759	ERS       	2013	759
760	ERS       	2013	760
761	ERS       	2013	761
762	ERS       	2013	762
763	ERS       	2013	763
764	ERS       	2013	764
765	ERS       	2013	765
766	ERS       	2013	766
767	ERS       	2013	767
768	ERS       	2013	768
769	ERS       	2013	769
770	ERS       	2013	770
771	ERS       	2013	771
772	ERS       	2013	772
773	ERS       	2013	773
\.


--
-- TOC entry 1857 (class 0 OID 16403)
-- Dependencies: 145
-- Data for Name: Entidades; Type: TABLE DATA; Schema: residuospeligrosos; Owner: postgres
--

COPY "Entidades" ("idEntidad", "Entidad") FROM stdin;
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

COPY "Establecimientos" ("idEstablecimiento", "Establecimiento", "idTipo", "idSector", "idEntidad", "idParroquias", "Codigo") FROM stdin;
1	Clínica General                                                                 	2	1	1	1	ES-PAR1  
2	Hospital General                                                                	1	2	2	1	ES-PAR2  
3	Hospital De Especialidades                                                      	1	2	3	1	ES-PAR3  
4	Hospital General                                                                	1	2	4	1	ES-PAR4  
5	Hospital Básico                                                                 	5	2	2	1	ES-PAR5  
6	Hospital Psiquiátrico Y Sanatorio De Alcóholicos                                	3	3	5	1	ES-PAR6  
7	Clínica General                                                                 	2	3	5	1	ES-PAR7  
8	Centro De Salud B                                                               	4	2	2	1	ES-PAR8  
9	Centro De Salud A                                                               	4	2	2	1	ES-PAR9  
10	Subcentro De Salud                                                              	4	2	2	1	ES-PAR10 
11	Dispensario Médico (policlínico)                                                	4	2	6	1	ES-PAR11 
12	Centro De Salud C                                                               	4	2	7	1	ES-PAR12 
13	Dispensario Médico (policlínico)                                                	4	2	7	1	ES-PAR13 
14	Centro De Salud A                                                               	4	3	5	1	ES-PAR14 
15	Hospital General                                                                	1	3	8	1	ES-PAR15 
16	Consultorio General                                                             	4	2	6	1	ES-PAR16 
17	Dispensario Médico (policlínico)                                                	4	3	5	1	ES-PAR17 
18	Otros Establecimientos Sin Internación                                          	4	1	1	1	ES-PAR18 
19	Centro De Salud A                                                               	4	2	3	1	ES-PAR19 
20	Centro De Salud C                                                               	4	2	2	1	ES-PAR20 
21	Dispensario Médico (policlínico)                                                	4	1	1	1	ES-PAR21 
22	Dispensario Médico (policlínico)                                                	4	2	11	1	ES-PAR22 
23	Otros Establecimientos Sin Internación                                          	4	2	13	1	ES-PAR23 
24	Consultorio General                                                             	4	2	8	1	ES-PAR24 
25	Hospital Oncológico                                                             	3	2	14	1	ES-PAR25 
26	Hospital De Especialidades                                                      	1	1	1	1	ES-PAR26 
27	Otros Establecimientos Sin Internación                                          	4	3	5	1	ES-PAR27 
28	Otras Clínicas Especializadas                                                   	1	1	1	1	ES-PAR28 
29	Hospital General                                                                	1	2	10	1	ES-PAR29 
30	Otros Establecimientos Sin Internación                                          	4	2	2	1	ES-PAR30 
31	Centro De Salud A                                                               	4	2	10	1	ES-PAR31 
32	Clínica Privada Especializada En Traumatología                                  	1	1	1	1	ES-PAR32 
33	Centro De Salud B                                                               	4	2	10	1	ES-PAR33 
34	Dispensario Médico (policlínico)                                                	4	2	2	1	ES-PAR34 
35	Centros Especializados                                                          	4	2	2	1	ES-PAR35 
36	Hospital Básico                                                                 	5	2	2	2	ES-PAR36 
37	Subcentro De Salud                                                              	4	2	2	2	ES-PAR37 
38	Hospital Básico                                                                 	5	2	2	3	ES-PAR38 
39	Clínica General                                                                 	2	1	1	3	ES-PAR39 
40	Dispensario Médico (policlínico)                                                	4	2	11	3	ES-PAR40 
41	Otros Establecimientos Sin Internación                                          	4	2	2	3	ES-PAR41 
42	Hospital Básico                                                                 	5	2	2	4	ES-PAR42 
43	Dispensario Médico (policlínico)                                                	4	2	18	4	ES-PAR43 
44	Dispensario Médico (policlínico)                                                	4	2	11	4	ES-PAR44 
45	Clínica General                                                                 	2	1	1	4	ES-PAR45 
46	Otros Establecimientos Sin Internación                                          	4	2	2	4	ES-PAR46 
47	Subcentro De Salud                                                              	4	2	2	4	ES-PAR47 
48	Hospital Básico                                                                 	5	2	2	5	ES-PAR48 
49	Dispensario Médico (policlínico)                                                	4	2	18	5	ES-PAR49 
50	Subcentro De Salud                                                              	4	2	2	5	ES-PAR50 
51	Dispensario Médico (policlínico)                                                	4	2	11	5	ES-PAR51 
52	Centro De Salud A                                                               	4	2	2	5	ES-PAR52 
53	Hospital Básico                                                                 	5	2	2	6	ES-PAR53 
54	Dispensario Médico (policlínico)                                                	4	2	11	6	ES-PAR54 
55	Dispensario Médico (policlínico)                                                	4	2	6	6	ES-PAR55 
56	Subcentro De Salud                                                              	4	2	2	6	ES-PAR56 
57	Subcentro De Salud                                                              	4	2	2	7	ES-PAR57 
58	Puesto De Salud                                                                 	4	2	2	7	ES-PAR58 
59	Dispensario Médico (policlínico)                                                	4	2	18	7	ES-PAR59 
60	Subcentro De Salud                                                              	4	2	2	8	ES-PAR60 
61	Subcentro De Salud                                                              	4	2	2	9	ES-PAR61 
62	Dispensario Médico (policlínico)                                                	4	2	18	9	ES-PAR62 
63	Subcentro De Salud                                                              	4	2	2	10	ES-PAR63 
64	Dispensario Médico (policlínico)                                                	4	2	18	10	ES-PAR64 
65	Dispensario Médico (policlínico)                                                	4	2	4	10	ES-PAR65 
66	Subcentro De Salud                                                              	4	2	2	11	ES-PAR66 
67	Subcentro De Salud                                                              	4	2	2	12	ES-PAR67 
68	Dispensario Médico (policlínico)                                                	4	2	18	12	ES-PAR68 
69	Subcentro De Salud                                                              	4	2	2	13	ES-PAR69 
70	Subcentro De Salud                                                              	4	2	2	14	ES-PAR70 
71	Dispensario Médico (policlínico)                                                	4	2	4	14	ES-PAR71 
72	Hospital Básico                                                                 	5	2	2	14	ES-PAR72 
73	Dispensario Médico (policlínico)                                                	4	2	18	14	ES-PAR73 
74	Dispensario Médico (policlínico)                                                	4	2	11	14	ES-PAR74 
75	Clínica General                                                                 	2	1	1	14	ES-PAR75 
76	Otros Establecimientos Sin Internación                                          	4	3	5	14	ES-PAR76 
77	Subcentro De Salud                                                              	4	2	2	15	ES-PAR77 
78	Dispensario Médico (policlínico)                                                	4	2	18	15	ES-PAR78 
79	Subcentro De Salud                                                              	4	2	2	16	ES-PAR79 
80	Dispensario Médico (policlínico)                                                	4	2	18	16	ES-PAR80 
81	Puesto De Salud                                                                 	4	2	2	16	ES-PAR81 
82	Clínica General                                                                 	2	3	5	16	ES-PAR82 
83	Centro De Salud A                                                               	4	2	2	17	ES-PAR83 
84	Subcentro De Salud                                                              	4	2	2	17	ES-PAR84 
85	Dispensario Médico (policlínico)                                                	4	2	18	17	ES-PAR85 
86	Centro De Salud A                                                               	4	2	2	18	ES-PAR86 
87	Dispensario Médico (policlínico)                                                	4	2	18	18	ES-PAR87 
88	Centro De Salud A                                                               	4	2	2	19	ES-PAR88 
89	Centro De Salud A                                                               	4	2	2	20	ES-PAR89 
90	Dispensario Médico (policlínico)                                                	4	2	18	20	ES-PAR90 
91	Subcentro De Salud                                                              	4	2	2	21	ES-PAR91 
92	Dispensario Médico (policlínico)                                                	4	2	18	21	ES-PAR92 
93	Subcentro De Salud                                                              	4	2	2	22	ES-PAR93 
94	Dispensario Médico (policlínico)                                                	4	2	18	22	ES-PAR94 
95	Clínica General                                                                 	2	1	1	22	ES-PAR95 
96	Dispensario Médico (policlínico)                                                	4	1	1	22	ES-PAR96 
97	Subcentro De Salud                                                              	4	2	2	23	ES-PAR97 
98	Dispensario Médico (policlínico)                                                	4	2	18	23	ES-PAR98 
99	Subcentro De Salud                                                              	4	2	2	24	ES-PAR99 
100	Subcentro De Salud                                                              	4	2	2	25	ES-PAR100
101	Dispensario Médico (policlínico)                                                	4	2	18	25	ES-PAR101
102	Subcentro De Salud                                                              	4	2	2	26	ES-PAR102
103	Subcentro De Salud                                                              	4	2	2	27	ES-PAR103
104	Dispensario Médico (policlínico)                                                	4	2	18	27	ES-PAR104
105	Subcentro De Salud                                                              	4	2	2	28	ES-PAR105
106	Dispensario Médico (policlínico)                                                	4	2	18	28	ES-PAR106
107	Subcentro De Salud                                                              	4	2	2	29	ES-PAR107
108	Dispensario Médico (policlínico)                                                	4	2	18	29	ES-PAR108
109	Subcentro De Salud                                                              	4	2	2	30	ES-PAR109
110	Dispensario Médico (policlínico)                                                	4	2	18	30	ES-PAR110
111	Subcentro De Salud                                                              	4	2	2	31	ES-PAR111
112	Centro De Salud A                                                               	4	2	2	31	ES-PAR112
113	Dispensario Médico (policlínico)                                                	4	2	18	31	ES-PAR113
114	Centro De Salud C                                                               	4	2	2	32	ES-PAR114
115	Centro De Salud A                                                               	4	2	2	32	ES-PAR115
116	Dispensario Médico (policlínico)                                                	4	2	18	32	ES-PAR116
117	Puesto De Salud                                                                 	4	2	2	32	ES-PAR117
118	Centro De Salud A                                                               	4	2	2	33	ES-PAR118
119	Subcentro De Salud                                                              	4	2	2	33	ES-PAR119
120	Dispensario Médico (policlínico)                                                	4	2	18	33	ES-PAR120
121	Puesto De Salud                                                                 	4	2	2	33	ES-PAR121
122	Centro De Salud A                                                               	4	2	2	34	ES-PAR122
123	Subcentro De Salud                                                              	4	2	2	35	ES-PAR123
124	Dispensario Médico (policlínico)                                                	4	2	18	35	ES-PAR124
125	Subcentro De Salud                                                              	4	2	2	36	ES-PAR125
126	Dispensario Médico (policlínico)                                                	4	2	18	36	ES-PAR126
127	Subcentro De Salud                                                              	4	2	2	37	ES-PAR127
128	Dispensario Médico (policlínico)                                                	4	2	18	37	ES-PAR128
129	Subcentro De Salud                                                              	4	2	2	38	ES-PAR129
130	Dispensario Médico (policlínico)                                                	4	2	18	38	ES-PAR130
131	Subcentro De Salud                                                              	4	2	2	39	ES-PAR131
132	Dispensario Médico (policlínico)                                                	4	2	18	39	ES-PAR132
133	Dispensario Médico (policlínico)                                                	4	2	11	39	ES-PAR133
134	Subcentro De Salud                                                              	4	2	2	40	ES-PAR134
135	Dispensario Médico (policlínico)                                                	4	2	18	40	ES-PAR135
136	Dispensario Médico (policlínico)                                                	4	2	11	40	ES-PAR136
137	Subcentro De Salud                                                              	4	2	2	41	ES-PAR137
138	Puesto De Salud                                                                 	4	2	2	41	ES-PAR138
139	Subcentro De Salud                                                              	4	2	2	42	ES-PAR139
140	Dispensario Médico (policlínico)                                                	4	2	18	42	ES-PAR140
141	Subcentro De Salud                                                              	4	2	2	43	ES-PAR141
142	Subcentro De Salud                                                              	4	2	2	44	ES-PAR142
143	Centro De Salud B                                                               	4	2	2	44	ES-PAR143
144	Dispensario Médico (policlínico)                                                	4	2	18	44	ES-PAR144
145	Puesto De Salud                                                                 	4	2	2	44	ES-PAR145
146	Puesto De Salud                                                                 	4	2	2	45	ES-PAR146
147	Centro De Salud A                                                               	4	2	2	45	ES-PAR147
148	Subcentro De Salud                                                              	4	2	2	45	ES-PAR148
149	Subcentro De Salud                                                              	4	2	2	46	ES-PAR149
150	Dispensario Médico (policlínico)                                                	4	2	18	46	ES-PAR150
151	Subcentro De Salud                                                              	4	2	2	47	ES-PAR151
152	Dispensario Médico (policlínico)                                                	4	2	18	47	ES-PAR152
153	Puesto De Salud                                                                 	4	2	2	47	ES-PAR153
154	Centro De Salud A                                                               	4	2	2	48	ES-PAR154
155	Puesto De Salud                                                                 	4	2	2	49	ES-PAR155
156	Centro De Salud A                                                               	4	2	2	50	ES-PAR156
157	Subcentro De Salud                                                              	4	2	2	51	ES-PAR157
158	Clínica General                                                                 	2	1	1	51	ES-PAR158
159	Subcentro De Salud                                                              	4	2	2	52	ES-PAR159
160	Subcentro De Salud                                                              	4	2	2	53	ES-PAR160
161	Dispensario Médico (policlínico)                                                	4	2	6	53	ES-PAR161
162	Hospital Básico                                                                 	5	2	2	53	ES-PAR162
163	Dispensario Médico (policlínico)                                                	4	2	18	53	ES-PAR163
164	Subcentro De Salud                                                              	4	2	2	54	ES-PAR164
165	Subcentro De Salud                                                              	4	2	2	55	ES-PAR165
166	Hospital General                                                                	1	2	2	58	ES-PAR166
167	Clínica General                                                                 	2	1	1	58	ES-PAR167
168	Centro De Salud A                                                               	4	2	2	58	ES-PAR168
169	Subcentro De Salud                                                              	4	2	2	58	ES-PAR169
170	Hospital General                                                                	1	2	3	58	ES-PAR170
171	Centro De Salud A                                                               	4	2	7	58	ES-PAR171
172	Dispensario Médico (policlínico)                                                	4	2	9	58	ES-PAR172
173	Dispensario Médico (policlínico)                                                	4	2	18	58	ES-PAR173
174	Puesto De Salud                                                                 	4	2	2	58	ES-PAR174
175	Centro De Salud B                                                               	4	2	8	58	ES-PAR175
176	Dispensario Médico (policlínico)                                                	4	2	6	58	ES-PAR176
177	Centro De Salud B                                                               	4	2	10	58	ES-PAR177
178	Centro De Salud B                                                               	4	2	14	58	ES-PAR178
179	Otros Establecimientos Sin Internación                                          	4	3	5	58	ES-PAR179
180	Hospital Básico                                                                 	5	2	2	59	ES-PAR180
181	Subcentro De Salud                                                              	4	2	2	59	ES-PAR181
182	Centro De Salud B                                                               	4	2	3	59	ES-PAR182
183	Puesto De Salud                                                                 	4	2	2	59	ES-PAR183
184	Dispensario Médico (policlínico)                                                	4	2	18	59	ES-PAR184
185	Centro De Salud C                                                               	4	3	5	59	ES-PAR185
186	Clínica General                                                                 	2	1	1	59	ES-PAR186
187	Centro De Salud A                                                               	4	2	2	61	ES-PAR187
188	Subcentro De Salud                                                              	4	2	2	61	ES-PAR188
189	Dispensario Médico (policlínico)                                                	4	2	18	61	ES-PAR189
190	Subcentro De Salud                                                              	4	2	2	64	ES-PAR190
191	Hospital Básico                                                                 	5	2	2	64	ES-PAR191
192	Centro De Salud B                                                               	4	2	4	64	ES-PAR192
193	Centro De Salud A                                                               	4	2	3	64	ES-PAR193
194	Centro De Salud A                                                               	4	2	2	64	ES-PAR194
195	Dispensario Médico (policlínico)                                                	4	2	18	64	ES-PAR195
196	Subcentro De Salud                                                              	4	2	2	66	ES-PAR196
197	Hospital Básico                                                                 	5	2	2	66	ES-PAR197
198	Dispensario Médico (policlínico)                                                	4	2	18	66	ES-PAR198
199	Clínica General                                                                 	2	1	1	66	ES-PAR199
200	Subcentro De Salud                                                              	4	2	2	68	ES-PAR200
201	Puesto De Salud                                                                 	4	2	2	68	ES-PAR201
202	Centro De Salud A                                                               	4	2	2	70	ES-PAR202
203	Dispensario Médico (policlínico)                                                	4	2	18	70	ES-PAR203
204	Subcentro De Salud                                                              	4	2	2	70	ES-PAR204
205	Puesto De Salud                                                                 	4	2	2	70	ES-PAR205
206	Subcentro De Salud                                                              	4	2	2	72	ES-PAR206
207	Subcentro De Salud                                                              	4	2	2	75	ES-PAR207
208	Dispensario Médico (policlínico)                                                	4	2	18	75	ES-PAR208
209	Dispensario Médico (policlínico)                                                	4	2	4	75	ES-PAR209
210	Hospital General                                                                	1	2	2	82	ES-PAR210
211	Centro De Salud C                                                               	4	2	2	82	ES-PAR211
212	Subcentro De Salud                                                              	4	2	2	82	ES-PAR212
213	Puesto De Salud                                                                 	4	2	2	82	ES-PAR213
214	Hospital Básico                                                                 	5	2	3	82	ES-PAR214
215	Centro De Salud A                                                               	4	2	7	82	ES-PAR215
216	Dispensario Médico (policlínico)                                                	4	2	7	82	ES-PAR216
217	Dispensario Médico (policlínico)                                                	4	2	11	82	ES-PAR217
218	Clínica General                                                                 	2	1	1	82	ES-PAR218
219	Centro De Salud A                                                               	4	2	2	82	ES-PAR219
220	Otros Establecimientos Sin Internación                                          	4	2	2	82	ES-PAR220
221	Hospital Básico                                                                 	5	2	2	83	ES-PAR221
222	Centro De Salud A                                                               	4	2	2	83	ES-PAR222
223	Puesto De Salud                                                                 	4	2	2	83	ES-PAR223
224	Centro De Salud A                                                               	4	2	3	83	ES-PAR224
225	Dispensario Médico (policlínico)                                                	4	2	7	83	ES-PAR225
226	Dispensario Médico (policlínico)                                                	4	2	18	83	ES-PAR226
227	Dispensario Médico (policlínico)                                                	4	2	11	83	ES-PAR227
228	Centro De Salud C                                                               	4	2	2	83	ES-PAR228
229	Centro De Salud A                                                               	4	2	2	93	ES-PAR229
230	Puesto De Salud                                                                 	4	2	2	93	ES-PAR230
231	Dispensario Médico (policlínico)                                                	4	2	18	93	ES-PAR231
232	Subcentro De Salud                                                              	4	2	2	93	ES-PAR232
233	Centro De Salud A                                                               	4	2	2	95	ES-PAR233
234	Puesto De Salud                                                                 	4	2	2	95	ES-PAR234
235	Dispensario Médico (policlínico)                                                	4	2	18	95	ES-PAR235
236	Centro De Salud A                                                               	4	2	2	100	ES-PAR236
237	Puesto De Salud                                                                 	4	2	2	100	ES-PAR237
238	Subcentro De Salud                                                              	4	2	2	100	ES-PAR238
239	Dispensario Médico (policlínico)                                                	4	2	18	100	ES-PAR239
240	Puesto De Salud                                                                 	4	2	2	109	ES-PAR240
241	Subcentro De Salud                                                              	4	2	2	109	ES-PAR241
242	Centro De Salud A                                                               	4	2	2	109	ES-PAR242
243	Centro De Salud A                                                               	4	2	3	109	ES-PAR243
244	Dispensario Médico (policlínico)                                                	4	2	18	109	ES-PAR244
245	Clínica General                                                                 	2	1	1	109	ES-PAR245
246	Hospital Básico                                                                 	5	2	2	109	ES-PAR246
247	Hospital General                                                                	1	2	2	113	ES-PAR247
248	Centro De Salud A                                                               	4	2	2	113	ES-PAR248
249	Centro De Salud A                                                               	4	2	3	113	ES-PAR249
250	Centro De Salud B                                                               	4	2	7	113	ES-PAR250
251	Centro De Salud B                                                               	4	2	4	113	ES-PAR251
252	Centro De Salud B                                                               	4	3	5	113	ES-PAR252
253	Centro De Salud C                                                               	4	3	5	113	ES-PAR253
254	Subcentro De Salud                                                              	4	2	2	113	ES-PAR254
255	Centro De Salud B                                                               	4	2	11	113	ES-PAR255
256	Clínica General                                                                 	2	1	1	113	ES-PAR256
257	Otros Establecimientos Sin Internación                                          	4	2	2	113	ES-PAR257
258	Hospital Básico                                                                 	5	2	2	115	ES-PAR258
259	Subcentro De Salud                                                              	4	2	3	115	ES-PAR259
260	Dispensario Médico (policlínico)                                                	4	2	18	115	ES-PAR260
261	Puesto De Salud                                                                 	4	2	2	115	ES-PAR261
262	Subcentro De Salud                                                              	4	2	2	115	ES-PAR262
263	Centro De Salud B                                                               	4	2	11	115	ES-PAR263
264	Centro De Salud B                                                               	4	2	2	115	ES-PAR264
265	Dispensario Médico (policlínico)                                                	4	1	1	115	ES-PAR265
266	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	115	ES-PAR266
267	Subcentro De Salud                                                              	4	2	2	131	ES-PAR267
268	Dispensario Médico (policlínico)                                                	4	2	18	131	ES-PAR268
269	Puesto De Salud                                                                 	4	2	2	131	ES-PAR269
270	Subcentro De Salud                                                              	4	2	2	139	ES-PAR270
271	Dispensario Médico (policlínico)                                                	4	2	18	139	ES-PAR271
272	Hospital Básico                                                                 	5	2	2	145	ES-PAR272
273	Subcentro De Salud                                                              	4	2	2	145	ES-PAR273
274	Dispensario Médico (policlínico)                                                	4	2	18	145	ES-PAR274
275	Puesto De Salud                                                                 	4	2	2	145	ES-PAR275
276	Centro De Salud A                                                               	4	2	2	147	ES-PAR276
277	Subcentro De Salud                                                              	4	2	2	147	ES-PAR277
278	Dispensario Médico (policlínico)                                                	4	2	10	147	ES-PAR278
279	Dispensario Médico (policlínico)                                                	4	2	7	147	ES-PAR279
280	Dispensario Médico (policlínico)                                                	4	2	4	147	ES-PAR280
281	Dispensario Médico (policlínico)                                                	4	3	5	147	ES-PAR281
282	Dispensario Médico (policlínico)                                                	4	2	6	147	ES-PAR282
283	Dispensario Médico (policlínico)                                                	4	2	18	147	ES-PAR283
284	Otros Establecimientos Sin Internación                                          	4	2	2	147	ES-PAR284
285	Dispensario Médico (policlínico)                                                	4	2	11	147	ES-PAR285
286	Dispensario Médico (policlínico)                                                	4	2	15	147	ES-PAR286
287	Puesto De Salud                                                                 	4	2	2	147	ES-PAR287
288	Subcentro De Salud                                                              	4	2	2	154	ES-PAR288
289	Dispensario Médico (policlínico)                                                	4	2	18	154	ES-PAR289
290	Subcentro De Salud                                                              	4	2	2	162	ES-PAR290
291	Dispensario Médico (policlínico)                                                	4	2	18	162	ES-PAR291
292	Centro De Salud A                                                               	4	2	2	163	ES-PAR292
293	Subcentro De Salud                                                              	4	2	2	163	ES-PAR293
294	Dispensario Médico (policlínico)                                                	4	2	18	163	ES-PAR294
295	Clínica General                                                                 	2	1	1	163	ES-PAR295
296	Clínica Privada Especializada En Pediátrica                                     	1	1	1	163	ES-PAR296
297	Hospital Básico                                                                 	5	3	5	166	ES-PAR297
298	Puesto De Salud                                                                 	4	2	2	166	ES-PAR298
299	Subcentro De Salud                                                              	4	2	2	173	ES-PAR299
300	Centro De Salud A                                                               	4	2	2	174	ES-PAR300
301	Dispensario Médico (policlínico)                                                	4	2	18	174	ES-PAR301
302	Puesto De Salud                                                                 	4	2	2	174	ES-PAR302
303	Hospital General                                                                	1	2	2	182	ES-PAR303
304	Dispensario Médico (policlínico)                                                	4	2	2	182	ES-PAR304
305	Otros Establecimientos Sin Internación                                          	4	2	2	182	ES-PAR305
306	Clínica General                                                                 	2	1	1	182	ES-PAR306
307	Hospital Básico                                                                 	5	2	2	184	ES-PAR307
308	Dispensario Médico (policlínico)                                                	4	2	3	184	ES-PAR308
309	Subcentro De Salud                                                              	4	2	2	184	ES-PAR309
310	Puesto De Salud                                                                 	4	2	2	184	ES-PAR310
311	Hospital Básico                                                                 	5	2	2	187	ES-PAR311
312	Puesto De Salud                                                                 	4	2	2	187	ES-PAR312
313	Dispensario Médico (policlínico)                                                	4	2	18	187	ES-PAR313
314	Subcentro De Salud                                                              	4	2	2	187	ES-PAR314
315	Centro De Salud A                                                               	4	2	2	188	ES-PAR315
316	Subcentro De Salud                                                              	4	2	2	188	ES-PAR316
317	Dispensario Médico (policlínico)                                                	4	2	6	188	ES-PAR317
318	Dispensario Médico (policlínico)                                                	4	2	11	188	ES-PAR318
319	Dispensario Médico (policlínico)                                                	4	3	5	188	ES-PAR319
320	Puesto De Salud                                                                 	4	2	2	188	ES-PAR320
321	Dispensario Médico (policlínico)                                                	4	2	8	188	ES-PAR321
322	Centro De Salud C                                                               	4	2	16	188	ES-PAR322
323	Clínica General                                                                 	2	1	1	188	ES-PAR323
324	Subcentro De Salud                                                              	4	2	2	192	ES-PAR324
325	Puesto De Salud                                                                 	4	2	2	192	ES-PAR325
326	Dispensario Médico (policlínico)                                                	4	2	18	192	ES-PAR326
327	Subcentro De Salud                                                              	4	2	2	203	ES-PAR327
328	Dispensario Médico (policlínico)                                                	4	2	18	203	ES-PAR328
329	Puesto De Salud                                                                 	4	2	2	203	ES-PAR329
330	Subcentro De Salud                                                              	4	2	2	212	ES-PAR330
331	Dispensario Médico (policlínico)                                                	4	2	18	212	ES-PAR331
332	Hospital General                                                                	1	2	3	225	ES-PAR332
333	Hospital General                                                                	1	2	2	225	ES-PAR333
334	Clínica General                                                                 	2	1	1	225	ES-PAR334
335	Otras Clínicas Especializadas                                                   	1	1	1	225	ES-PAR335
336	Subcentro De Salud                                                              	4	2	2	225	ES-PAR336
337	Centro De Salud A                                                               	4	2	2	225	ES-PAR337
338	Centro De Salud B                                                               	4	2	2	225	ES-PAR338
339	Dispensario Médico (policlínico)                                                	4	2	7	225	ES-PAR339
340	Dispensario Médico (policlínico)                                                	4	2	4	225	ES-PAR340
341	Centro De Salud B                                                               	4	2	8	225	ES-PAR341
342	Otros Establecimientos Sin Internación                                          	4	3	5	225	ES-PAR342
343	Centro De Salud B                                                               	4	2	4	225	ES-PAR343
344	Clínica General                                                                 	2	3	5	225	ES-PAR344
345	Hospital General                                                                	1	2	10	225	ES-PAR345
346	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	225	ES-PAR346
347	Centro De Salud A                                                               	4	2	10	225	ES-PAR347
348	Dispensario Médico (policlínico)                                                	4	2	2	225	ES-PAR348
349	Hospital Oncológico                                                             	3	2	14	225	ES-PAR349
350	Otros Establecimientos Sin Internación                                          	4	2	2	225	ES-PAR350
351	Centros Especializados                                                          	4	1	1	225	ES-PAR351
352	Hospital General                                                                	1	2	4	226	ES-PAR352
353	Hospital Básico                                                                 	5	2	2	226	ES-PAR353
354	Subcentro De Salud                                                              	4	2	2	226	ES-PAR354
355	Puesto De Salud                                                                 	4	2	2	226	ES-PAR355
356	Subcentro De Salud                                                              	4	2	3	226	ES-PAR356
357	Centro De Salud B                                                               	4	2	4	226	ES-PAR357
358	Clínica General                                                                 	2	1	1	226	ES-PAR358
359	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	226	ES-PAR359
360	Hospital Básico                                                                 	5	2	2	228	ES-PAR360
361	Centro De Salud A                                                               	4	2	3	228	ES-PAR361
362	Puesto De Salud                                                                 	4	2	2	228	ES-PAR362
363	Clínica General                                                                 	2	1	1	228	ES-PAR363
364	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	228	ES-PAR364
365	Centro De Salud B                                                               	4	2	2	228	ES-PAR365
366	Subcentro De Salud                                                              	4	2	2	263	ES-PAR366
367	Puesto De Salud                                                                 	4	2	2	263	ES-PAR367
368	Subcentro De Salud                                                              	4	2	2	266	ES-PAR368
369	Hospital Básico                                                                 	5	2	2	266	ES-PAR369
370	Clínica General                                                                 	2	1	1	266	ES-PAR370
371	Hospital General                                                                	1	2	3	271	ES-PAR371
372	Hospital General                                                                	1	2	2	271	ES-PAR372
373	Clínica General                                                                 	2	1	1	271	ES-PAR373
374	Centro De Salud A                                                               	4	2	2	271	ES-PAR374
375	Subcentro De Salud                                                              	4	2	2	271	ES-PAR375
376	Dispensario Médico (policlínico)                                                	4	2	6	271	ES-PAR376
377	Centro De Salud B                                                               	4	2	8	271	ES-PAR377
378	Centro De Salud B                                                               	4	2	7	271	ES-PAR378
379	Centro De Salud C                                                               	4	3	5	271	ES-PAR379
380	Centro De Salud B                                                               	4	3	5	271	ES-PAR380
381	Centro De Salud B                                                               	4	2	9	271	ES-PAR381
382	Dispensario Médico (policlínico)                                                	4	2	18	271	ES-PAR382
383	Hospital General                                                                	1	2	4	271	ES-PAR383
384	Centro De Salud B                                                               	4	2	4	271	ES-PAR384
385	Centro De Salud B                                                               	4	2	2	271	ES-PAR385
386	Hospital Gineco-obstetrico                                                      	1	2	2	271	ES-PAR386
387	Centro De Salud A                                                               	4	2	2	277	ES-PAR387
388	Hospital General                                                                	1	3	5	277	ES-PAR388
389	Clínica General                                                                 	2	1	1	277	ES-PAR389
390	Centro De Salud A                                                               	4	1	1	277	ES-PAR390
391	Subcentro De Salud                                                              	4	2	2	287	ES-PAR391
392	Centro De Salud B                                                               	4	2	7	287	ES-PAR392
393	Dispensario Médico (policlínico)                                                	4	2	6	287	ES-PAR393
394	Centro De Salud B                                                               	4	2	14	287	ES-PAR394
395	Centro De Salud B                                                               	4	2	4	287	ES-PAR395
396	Clínica General                                                                 	2	1	1	325	ES-PAR396
397	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	325	ES-PAR397
398	Hospital General                                                                	1	2	4	325	ES-PAR398
399	Hospital Neumológico (antituberculoso)                                          	3	2	2	325	ES-PAR399
400	Hospital De Infectologia                                                        	1	2	2	325	ES-PAR400
401	Hospital Pediátrico                                                             	1	2	12	325	ES-PAR401
402	Hospital General                                                                	1	2	13	325	ES-PAR402
403	Hospital General                                                                	1	2	2	325	ES-PAR403
404	Hospital General                                                                	1	2	12	325	ES-PAR404
405	Hospital Oncológico                                                             	3	2	14	325	ES-PAR405
406	Hospital Psiquiátrico Y Sanatorio De Alcóholicos                                	3	2	12	325	ES-PAR406
407	Hospital De Especialidades                                                      	1	2	3	325	ES-PAR407
408	Hospital Gineco-obstetrico                                                      	1	2	12	325	ES-PAR408
409	Hospital Gineco-obstetrico                                                      	1	2	2	325	ES-PAR409
410	Otras Clínicas Especializadas                                                   	1	1	1	325	ES-PAR410
411	Hospital General                                                                	1	2	7	325	ES-PAR411
412	Centro De Salud C                                                               	4	1	1	325	ES-PAR412
413	Hospital Pediátrico                                                             	1	2	2	325	ES-PAR413
414	Dispensario Médico (policlínico)                                                	4	3	5	325	ES-PAR414
415	Centro De Salud A                                                               	4	2	2	325	ES-PAR415
416	Subcentro De Salud                                                              	4	2	2	325	ES-PAR416
417	Centro De Salud C                                                               	4	2	2	325	ES-PAR417
418	Otros Establecimientos Sin Internación                                          	4	3	5	325	ES-PAR418
419	Dispensario Médico (policlínico)                                                	4	2	4	325	ES-PAR419
420	Dispensario Médico (policlínico)                                                	4	2	6	325	ES-PAR420
421	Dispensario Médico (policlínico)                                                	4	2	13	325	ES-PAR421
422	Centro De Salud B                                                               	4	3	5	325	ES-PAR422
423	Dispensario Médico (policlínico)                                                	4	2	15	325	ES-PAR423
424	Dispensario Médico (policlínico)                                                	4	2	11	325	ES-PAR424
425	Centro De Salud B                                                               	4	2	11	325	ES-PAR425
426	Dispensario Médico (policlínico)                                                	4	2	8	325	ES-PAR426
427	Dispensario Médico (policlínico)                                                	4	1	1	325	ES-PAR427
428	Centro De Salud B                                                               	4	2	12	325	ES-PAR428
429	Centro De Salud B                                                               	4	2	15	325	ES-PAR429
430	Dispensario Médico (policlínico)                                                	4	2	7	325	ES-PAR430
431	Centro De Salud A                                                               	4	2	3	325	ES-PAR431
432	Centro Clinico-quirurgico Ambulatorio (hospital Del Dia)                        	4	2	13	325	ES-PAR432
433	Centro De Salud B                                                               	4	2	4	325	ES-PAR433
434	Centro De Salud B                                                               	4	1	1	325	ES-PAR434
435	Centro De Salud B                                                               	4	2	9	325	ES-PAR435
436	Centro De Salud B                                                               	4	1	8	325	ES-PAR436
437	Dispensario Médico (policlínico)                                                	4	2	2	325	ES-PAR437
438	Centro De Salud B                                                               	4	2	2	325	ES-PAR438
439	Centro De Salud B                                                               	4	2	3	325	ES-PAR439
440	Clínica General                                                                 	2	3	5	325	ES-PAR440
441	Otros Establecimientos Sin Internación                                          	4	2	15	325	ES-PAR441
442	Puesto De Salud                                                                 	4	2	2	325	ES-PAR442
443	Centro De Salud B                                                               	4	2	10	325	ES-PAR443
444	Otros Establecimientos Sin Internación                                          	4	2	10	325	ES-PAR444
445	Centro Clinico-quirurgico Ambulatorio (hospital Del Dia)                        	4	2	10	325	ES-PAR445
446	Centro De Salud A                                                               	4	2	10	325	ES-PAR446
447	Dispensario Médico (policlínico)                                                	4	2	10	325	ES-PAR447
448	Centro De Salud C                                                               	4	2	10	325	ES-PAR448
449	Centro De Salud A                                                               	4	3	5	325	ES-PAR449
450	Centro De Salud C                                                               	4	3	5	325	ES-PAR450
451	Dispensario Médico (policlínico)                                                	4	2	9	325	ES-PAR451
452	Hospital Básico                                                                 	5	2	2	335	ES-PAR452
453	Dispensario Médico (policlínico)                                                	4	3	5	335	ES-PAR453
454	Dispensario Médico (policlínico)                                                	4	2	18	335	ES-PAR454
455	Clínica General                                                                 	2	1	1	335	ES-PAR455
456	Centro De Salud A                                                               	4	2	2	335	ES-PAR456
457	Subcentro De Salud                                                              	4	2	3	385	ES-PAR457
458	Hospital Básico                                                                 	5	2	2	385	ES-PAR458
459	Subcentro De Salud                                                              	4	2	2	385	ES-PAR459
460	Centro De Salud A                                                               	4	2	2	385	ES-PAR460
461	Clínica General                                                                 	2	1	1	385	ES-PAR461
462	Hospital Básico                                                                 	5	2	2	387	ES-PAR462
463	Subcentro De Salud                                                              	4	2	2	387	ES-PAR463
464	Centro De Salud A                                                               	4	2	3	387	ES-PAR464
465	Centro De Salud C                                                               	4	3	5	387	ES-PAR465
466	Dispensario Médico (policlínico)                                                	4	2	18	387	ES-PAR466
467	Centro De Salud B                                                               	4	2	11	387	ES-PAR467
468	Clínica General                                                                 	2	1	1	387	ES-PAR468
469	Puesto De Salud                                                                 	4	2	2	387	ES-PAR469
470	Clínica General                                                                 	2	1	1	426	ES-PAR470
471	Hospital General                                                                	1	2	3	426	ES-PAR471
472	Hospital General                                                                	1	2	2	426	ES-PAR472
473	Centro De Salud A                                                               	4	2	2	426	ES-PAR473
474	Centro De Salud C                                                               	4	2	2	426	ES-PAR474
475	Subcentro De Salud                                                              	4	2	2	426	ES-PAR475
476	Hospital Básico                                                                 	5	2	10	426	ES-PAR476
477	Dispensario Médico (policlínico)                                                	4	2	8	426	ES-PAR477
478	Hospital Oncológico                                                             	3	2	14	426	ES-PAR478
479	Dispensario Médico (policlínico)                                                	4	2	7	426	ES-PAR479
480	Dispensario Médico (policlínico)                                                	4	2	4	426	ES-PAR480
481	Dispensario Médico (policlínico)                                                	4	3	5	426	ES-PAR481
482	Dispensario Médico (policlínico)                                                	4	2	6	426	ES-PAR482
483	Centro De Salud C                                                               	4	3	5	426	ES-PAR483
484	Dispensario Médico (policlínico)                                                	4	2	15	426	ES-PAR484
485	Centro De Salud A                                                               	4	2	3	426	ES-PAR485
486	Dispensario Médico (policlínico)                                                	4	2	11	426	ES-PAR486
487	Dispensario Médico (policlínico)                                                	4	2	9	426	ES-PAR487
488	Hospital General                                                                	1	1	8	426	ES-PAR488
489	Otros Establecimientos Sin Internación                                          	4	2	2	426	ES-PAR489
490	Puesto De Salud                                                                 	4	2	2	426	ES-PAR490
491	Consultorio General                                                             	4	2	11	426	ES-PAR491
492	Hospital Básico                                                                 	5	2	2	427	ES-PAR492
493	Dispensario Médico (policlínico)                                                	4	2	4	427	ES-PAR493
494	Subcentro De Salud                                                              	4	2	3	427	ES-PAR494
495	Dispensario Médico (policlínico)                                                	4	2	18	427	ES-PAR495
496	Clínica General                                                                 	2	1	1	427	ES-PAR496
497	Hospital Básico                                                                 	5	2	2	431	ES-PAR497
498	Subcentro De Salud                                                              	4	2	2	431	ES-PAR498
499	Hospital Básico                                                                 	5	2	2	432	ES-PAR499
500	Puesto De Salud                                                                 	4	2	2	432	ES-PAR500
501	Subcentro De Salud                                                              	4	2	2	432	ES-PAR501
502	Dispensario Médico (policlínico)                                                	4	2	18	432	ES-PAR502
503	Dispensario Médico (policlínico)                                                	4	2	11	432	ES-PAR503
504	Clínica General                                                                 	2	1	1	432	ES-PAR504
505	Subcentro De Salud                                                              	4	2	2	439	ES-PAR505
506	Hospital General                                                                	1	2	3	497	ES-PAR506
507	Clínica General                                                                 	2	1	1	497	ES-PAR507
508	Hospital General                                                                	1	2	2	497	ES-PAR508
509	Subcentro De Salud                                                              	4	2	2	497	ES-PAR509
510	Centro De Salud A                                                               	4	2	2	497	ES-PAR510
511	Dispensario Médico (policlínico)                                                	4	2	7	497	ES-PAR511
512	Dispensario Médico (policlínico)                                                	4	2	8	497	ES-PAR512
513	Dispensario Médico (policlínico)                                                	4	3	5	497	ES-PAR513
514	Otros Establecimientos Sin Internación                                          	4	3	5	497	ES-PAR514
515	Centro De Salud B                                                               	4	2	2	497	ES-PAR515
516	Dispensario Médico (policlínico)                                                	4	2	6	497	ES-PAR516
517	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	497	ES-PAR517
518	Centro De Salud B                                                               	4	3	5	497	ES-PAR518
519	Puesto De Salud                                                                 	4	2	2	497	ES-PAR519
520	Hospital Gineco-obstetrico                                                      	1	3	5	497	ES-PAR520
521	Centro De Salud C                                                               	4	2	2	497	ES-PAR521
522	Clínica General                                                                 	2	1	1	498	ES-PAR522
523	Hospital Básico                                                                 	5	2	2	498	ES-PAR523
524	Subcentro De Salud                                                              	4	2	2	498	ES-PAR524
525	Otros Establecimientos Sin Internación                                          	4	1	1	498	ES-PAR525
526	Centro De Salud B                                                               	4	2	4	498	ES-PAR526
527	Otros Establecimientos Sin Internación                                          	4	2	16	498	ES-PAR527
528	Dispensario Médico (policlínico)                                                	4	2	8	498	ES-PAR528
529	Dispensario Médico (policlínico)                                                	4	2	6	498	ES-PAR529
530	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	498	ES-PAR530
531	Otros Establecimientos Sin Internación                                          	4	2	2	498	ES-PAR531
532	Clínica Privada Especializada En Traumatología                                  	1	1	1	498	ES-PAR532
533	Hospital Básico                                                                 	5	2	2	500	ES-PAR533
534	Subcentro De Salud                                                              	4	2	2	500	ES-PAR534
535	Dispensario Médico (policlínico)                                                	4	3	5	500	ES-PAR535
536	Dispensario Médico (policlínico)                                                	4	2	3	500	ES-PAR536
537	Dispensario Médico (policlínico)                                                	4	2	18	500	ES-PAR537
538	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	500	ES-PAR538
539	Clínica General                                                                 	2	1	1	500	ES-PAR539
540	Hospital Básico                                                                 	5	2	2	502	ES-PAR540
541	Subcentro De Salud                                                              	4	2	2	502	ES-PAR541
542	Dispensario Médico (policlínico)                                                	4	2	3	502	ES-PAR542
543	Clínica General                                                                 	2	1	1	502	ES-PAR543
544	Subcentro De Salud                                                              	4	2	2	516	ES-PAR544
545	Dispensario Médico (policlínico)                                                	4	2	18	516	ES-PAR545
546	Dispensario Médico (policlínico)                                                	4	3	5	516	ES-PAR546
547	Centro De Salud B                                                               	4	1	1	516	ES-PAR547
548	Clínica General                                                                 	2	1	1	516	ES-PAR548
549	Dispensario Médico (policlínico)                                                	4	1	1	516	ES-PAR549
550	Hospital General                                                                	1	2	2	524	ES-PAR550
551	Clínica General                                                                 	2	1	1	524	ES-PAR551
552	Subcentro De Salud                                                              	4	2	2	524	ES-PAR552
553	Centro De Salud A                                                               	4	2	2	524	ES-PAR553
554	Dispensario Médico (policlínico)                                                	4	2	3	524	ES-PAR554
555	Dispensario Médico (policlínico)                                                	4	2	7	524	ES-PAR555
556	Consultorio General                                                             	4	2	13	524	ES-PAR556
557	Dispensario Médico (policlínico)                                                	4	2	8	524	ES-PAR557
558	Dispensario Médico (policlínico)                                                	4	2	6	524	ES-PAR558
559	Otros Establecimientos Sin Internación                                          	4	3	5	524	ES-PAR559
560	Dispensario Médico (policlínico)                                                	4	2	18	524	ES-PAR560
561	Hospital General                                                                	1	2	3	524	ES-PAR561
562	Centro De Salud A                                                               	4	3	5	524	ES-PAR562
563	Centro Clinico-quirurgico Ambulatorio (hospital Del Dia)                        	4	2	2	524	ES-PAR563
564	Puesto De Salud                                                                 	4	2	2	524	ES-PAR564
565	Hospital Oncológico                                                             	3	2	14	524	ES-PAR565
566	Dispensario Médico (policlínico)                                                	4	3	5	524	ES-PAR566
567	Dispensario Médico (policlínico)                                                	4	2	2	524	ES-PAR567
568	Centro De Salud A                                                               	4	2	8	524	ES-PAR568
569	Clínica General                                                                 	2	1	1	526	ES-PAR569
570	Hospital General                                                                	1	2	2	526	ES-PAR570
571	Hospital Básico                                                                 	5	2	3	526	ES-PAR571
572	Centro De Salud A                                                               	4	2	2	526	ES-PAR572
573	Subcentro De Salud                                                              	4	2	2	526	ES-PAR573
574	Dispensario Médico (policlínico)                                                	4	2	18	526	ES-PAR574
575	Dispensario Médico (policlínico)                                                	4	2	14	526	ES-PAR575
576	Clínica General                                                                 	2	1	1	528	ES-PAR576
577	Hospital General                                                                	1	2	3	528	ES-PAR577
578	Hospital General                                                                	1	2	2	528	ES-PAR578
579	Hospital General                                                                	1	2	4	528	ES-PAR579
580	Centro De Salud A                                                               	4	3	5	528	ES-PAR580
581	Centro De Salud A                                                               	4	2	2	528	ES-PAR581
582	Subcentro De Salud                                                              	4	2	2	528	ES-PAR582
583	Otros Establecimientos Sin Internación                                          	4	2	10	528	ES-PAR583
584	Otros Establecimientos Sin Internación                                          	4	1	1	528	ES-PAR584
585	Dispensario Médico (policlínico)                                                	4	2	3	528	ES-PAR585
586	Dispensario Médico (policlínico)                                                	4	2	18	528	ES-PAR586
587	Centro De Salud A                                                               	4	2	14	528	ES-PAR587
588	Dispensario Médico (policlínico)                                                	4	3	5	528	ES-PAR588
589	Dispensario Médico (policlínico)                                                	4	2	8	528	ES-PAR589
590	Centro De Salud C                                                               	4	2	2	564	ES-PAR590
591	Dispensario Médico (policlínico)                                                	4	2	18	564	ES-PAR591
592	Subcentro De Salud                                                              	4	2	2	564	ES-PAR592
593	Centro De Salud A                                                               	4	2	2	574	ES-PAR593
594	Dispensario Médico (policlínico)                                                	4	2	18	574	ES-PAR594
595	Puesto De Salud                                                                 	4	2	2	574	ES-PAR595
596	Clínica General                                                                 	2	1	1	574	ES-PAR596
597	Subcentro De Salud                                                              	4	2	2	578	ES-PAR597
598	Dispensario Médico (policlínico)                                                	4	2	18	578	ES-PAR598
599	Hospital Básico                                                                 	5	2	2	593	ES-PAR599
600	Centro De Salud A                                                               	4	2	2	593	ES-PAR600
601	Puesto De Salud                                                                 	4	2	2	593	ES-PAR601
602	Centro De Salud A                                                               	4	2	3	593	ES-PAR602
603	Subcentro De Salud                                                              	4	2	2	593	ES-PAR603
604	Dispensario Médico (policlínico)                                                	4	2	18	593	ES-PAR604
605	Clínica General                                                                 	2	1	1	593	ES-PAR605
606	Hospital General                                                                	1	2	2	623	ES-PAR606
607	Hospital De Especialidades                                                      	1	2	3	623	ES-PAR607
608	Dispensario Médico (policlínico)                                                	4	2	6	623	ES-PAR608
609	Dispensario Médico (policlínico)                                                	4	2	18	623	ES-PAR609
610	Centro De Salud A                                                               	4	2	2	623	ES-PAR610
611	Subcentro De Salud                                                              	4	2	2	623	ES-PAR611
612	Puesto De Salud                                                                 	4	2	2	623	ES-PAR612
613	Centro De Salud C                                                               	4	2	2	623	ES-PAR613
614	Otros Establecimientos Sin Internación                                          	4	2	2	623	ES-PAR614
615	Clínica General                                                                 	2	1	1	623	ES-PAR615
616	Hospital General                                                                	1	2	4	647	ES-PAR616
617	Hospital Básico                                                                 	5	2	3	647	ES-PAR617
618	Subcentro De Salud                                                              	4	2	2	647	ES-PAR618
619	Puesto De Salud                                                                 	4	2	2	647	ES-PAR619
620	Dispensario Médico (policlínico)                                                	4	3	5	647	ES-PAR620
621	Dispensario Médico (policlínico)                                                	4	2	15	647	ES-PAR621
622	Subcentro De Salud                                                              	4	2	7	647	ES-PAR622
623	Dispensario Médico (policlínico)                                                	4	2	10	647	ES-PAR623
624	Dispensario Médico (policlínico)                                                	4	2	6	647	ES-PAR624
625	Dispensario Médico (policlínico)                                                	4	2	9	647	ES-PAR625
626	Centro De Salud A                                                               	4	2	2	647	ES-PAR626
627	Clínica General                                                                 	2	1	1	647	ES-PAR627
628	Subcentro De Salud                                                              	4	2	2	650	ES-PAR628
629	Puesto De Salud                                                                 	4	2	2	650	ES-PAR629
630	Subcentro De Salud                                                              	4	2	2	651	ES-PAR630
631	Subcentro De Salud                                                              	4	2	2	653	ES-PAR631
632	Puesto De Salud                                                                 	4	2	2	659	ES-PAR632
633	Clínica General                                                                 	2	1	1	665	ES-PAR633
634	Hospital General                                                                	1	2	10	665	ES-PAR634
635	Hospital De Especialidades                                                      	1	2	3	665	ES-PAR635
636	Hospital Pediátrico                                                             	1	2	2	665	ES-PAR636
637	Hospital De Especialidades                                                      	1	2	2	665	ES-PAR637
638	Hospital Geriátrico                                                             	3	2	2	665	ES-PAR638
639	Hospital General                                                                	1	2	2	665	ES-PAR639
640	Hospital General                                                                	1	2	7	665	ES-PAR640
641	Hospital Psiquiátrico Y Sanatorio De Alcóholicos                                	3	1	1	665	ES-PAR641
642	Hospital Oncológico                                                             	3	2	14	665	ES-PAR642
643	Hospital De Especialidades                                                      	1	2	4	665	ES-PAR643
644	Hospital General                                                                	1	1	1	665	ES-PAR644
645	Hospital Psiquiátrico Y Sanatorio De Alcóholicos                                	3	2	2	665	ES-PAR645
646	Hospital Gineco-obstetrico                                                      	1	2	2	665	ES-PAR646
647	Hospital Dermatológico (leprocomios)                                            	3	2	2	665	ES-PAR647
648	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	665	ES-PAR648
649	Hospital De Especialidades                                                      	1	1	1	665	ES-PAR649
650	Centro De Salud A                                                               	4	2	2	665	ES-PAR650
651	Subcentro De Salud                                                              	4	2	2	665	ES-PAR651
652	Centro De Salud B                                                               	4	2	8	665	ES-PAR652
653	Centro De Salud A                                                               	4	3	5	665	ES-PAR653
654	Centro De Salud A                                                               	4	2	3	665	ES-PAR654
655	Centro De Salud A                                                               	4	2	10	665	ES-PAR655
656	Dispensario Médico (policlínico)                                                	4	2	6	665	ES-PAR656
657	Centro De Salud B                                                               	4	2	11	665	ES-PAR657
658	Centro De Salud B                                                               	4	1	1	665	ES-PAR658
659	Centro De Salud C                                                               	4	3	5	665	ES-PAR659
660	Centro De Salud B                                                               	4	2	10	665	ES-PAR660
661	Centro De Salud B                                                               	4	2	15	665	ES-PAR661
662	Centro De Salud B                                                               	4	2	7	665	ES-PAR662
663	Centro De Salud B                                                               	4	2	4	665	ES-PAR663
664	Centro De Salud B                                                               	4	2	13	665	ES-PAR664
665	Centro De Salud B                                                               	4	2	2	665	ES-PAR665
666	Centro De Salud C                                                               	4	2	8	665	ES-PAR666
667	Centro De Salud B                                                               	4	3	5	665	ES-PAR667
668	Centro De Salud B                                                               	4	2	3	665	ES-PAR668
669	Clínica General                                                                 	2	3	5	665	ES-PAR669
670	Dispensario Médico (policlínico)                                                	4	1	1	665	ES-PAR670
671	Centro De Salud B                                                               	4	2	9	665	ES-PAR671
672	Dispensario Médico (policlínico)                                                	4	2	11	665	ES-PAR672
673	Centro De Salud A                                                               	4	2	9	665	ES-PAR673
674	Otros Establecimientos Sin Internación                                          	4	2	2	665	ES-PAR674
675	Hospital General                                                                	1	3	5	665	ES-PAR675
676	Centro De Salud C                                                               	4	2	2	665	ES-PAR676
677	Clínica Privada Especializada En Traumatología                                  	1	1	1	665	ES-PAR677
678	Hospital Psiquiátrico Y Sanatorio De Alcóholicos                                	3	2	2	667	ES-PAR678
679	Centro De Salud A                                                               	4	2	2	667	ES-PAR679
680	Dispensario Médico (policlínico)                                                	4	2	6	667	ES-PAR680
681	Centro De Salud C                                                               	4	2	2	667	ES-PAR681
682	Centro De Salud B                                                               	4	1	1	667	ES-PAR682
683	Clínica General                                                                 	2	1	1	667	ES-PAR683
684	Hospital Básico                                                                 	5	2	2	670	ES-PAR684
685	Clínica General                                                                 	2	1	1	670	ES-PAR685
686	Centro De Salud B                                                               	4	2	4	670	ES-PAR686
687	Dispensario Médico (policlínico)                                                	4	2	6	670	ES-PAR687
688	Puesto De Salud                                                                 	4	2	2	670	ES-PAR688
689	Dispensario Médico (policlínico)                                                	4	1	1	670	ES-PAR689
690	Centro De Salud B                                                               	4	2	9	670	ES-PAR690
691	Centro De Salud A                                                               	4	2	2	670	ES-PAR691
692	Hospital Básico                                                                 	5	2	2	671	ES-PAR692
693	Clínica General                                                                 	2	1	1	671	ES-PAR693
694	Subcentro De Salud                                                              	4	2	2	671	ES-PAR694
695	Centro De Salud A                                                               	4	2	3	671	ES-PAR695
696	Dispensario Médico (policlínico)                                                	4	2	6	671	ES-PAR696
697	Centro De Salud B                                                               	4	2	4	671	ES-PAR697
698	Centro De Salud B                                                               	4	2	9	671	ES-PAR698
699	Centro De Salud B                                                               	4	1	1	671	ES-PAR699
700	Centro De Salud A                                                               	4	2	2	671	ES-PAR700
701	Clínica General                                                                 	2	1	1	672	ES-PAR701
702	Hospital General                                                                	1	2	2	672	ES-PAR702
703	Subcentro De Salud                                                              	4	2	2	672	ES-PAR703
704	Centro De Salud A                                                               	4	2	2	672	ES-PAR704
705	Centro De Salud C                                                               	4	3	5	672	ES-PAR705
706	Centro De Salud A                                                               	4	2	3	672	ES-PAR706
707	Dispensario Médico (policlínico)                                                	4	2	6	672	ES-PAR707
708	Dispensario Médico (policlínico)                                                	4	2	18	672	ES-PAR708
709	Clínica General                                                                 	2	3	5	672	ES-PAR709
710	Dispensario Médico (policlínico)                                                	4	2	11	672	ES-PAR710
711	Clínica Privada Especializada En Gineco-obstetricia                             	1	1	1	672	ES-PAR711
712	Puesto De Salud                                                                 	4	2	2	672	ES-PAR712
713	Otras Clínicas Especializadas                                                   	3	1	1	672	ES-PAR713
714	Centro De Especialidades                                                        	4	3	5	672	ES-PAR714
715	Subcentro De Salud                                                              	4	2	2	696	ES-PAR715
716	Dispensario Médico (policlínico)                                                	4	2	6	696	ES-PAR716
717	Dispensario Médico (policlínico)                                                	4	2	18	696	ES-PAR717
718	Centro De Salud B                                                               	4	2	9	696	ES-PAR718
719	Clínica General                                                                 	2	1	1	696	ES-PAR719
720	Dispensario Médico (policlínico)                                                	4	2	7	780	ES-PAR720
721	Otros Establecimientos Sin Internación                                          	4	2	2	780	ES-PAR721
722	Dispensario Médico (policlínico)                                                	4	2	6	780	ES-PAR722
723	Subcentro De Salud                                                              	4	2	3	781	ES-PAR723
724	Clínica General                                                                 	2	1	1	781	ES-PAR724
725	Hospital General                                                                	1	2	2	783	ES-PAR725
726	Subcentro De Salud                                                              	4	2	2	783	ES-PAR726
727	Hospital Básico                                                                 	5	2	3	783	ES-PAR727
728	Dispensario Médico (policlínico)                                                	4	2	4	783	ES-PAR728
729	Dispensario Médico (policlínico)                                                	4	2	11	783	ES-PAR729
730	Otros Establecimientos Sin Internación                                          	4	2	2	783	ES-PAR730
731	Hospital General                                                                	1	2	2	813	ES-PAR731
732	Centro De Salud B                                                               	4	2	13	813	ES-PAR732
733	Centro De Salud B                                                               	4	2	4	813	ES-PAR733
734	Dispensario Médico (policlínico)                                                	4	2	18	813	ES-PAR734
735	Subcentro De Salud                                                              	4	2	2	813	ES-PAR735
736	Centro De Salud A                                                               	4	2	2	813	ES-PAR736
737	Clínica General                                                                 	2	1	1	813	ES-PAR737
738	Centro De Salud C                                                               	4	3	5	813	ES-PAR738
739	Centro De Salud B                                                               	4	2	2	813	ES-PAR739
740	Centro De Salud C                                                               	4	2	2	813	ES-PAR740
741	Hospital Básico                                                                 	5	2	2	814	ES-PAR741
742	Subcentro De Salud                                                              	4	2	2	814	ES-PAR742
743	Centro De Salud B                                                               	4	2	13	814	ES-PAR743
744	Dispensario Médico (policlínico)                                                	4	2	18	814	ES-PAR744
745	Centro De Salud A                                                               	4	2	2	814	ES-PAR745
746	Puesto De Salud                                                                 	4	2	2	814	ES-PAR746
747	Subcentro De Salud                                                              	4	2	2	816	ES-PAR747
748	Subcentro De Salud                                                              	4	2	2	948	ES-PAR748
749	Puesto De Salud                                                                 	4	2	2	948	ES-PAR749
750	Puesto De Salud                                                                 	4	2	2	950	ES-PAR750
751	Puesto De Salud                                                                 	4	2	2	952	ES-PAR751
752	Puesto De Salud                                                                 	4	2	2	953	ES-PAR752
753	Puesto De Salud                                                                 	4	2	2	956	ES-PAR753
754	Puesto De Salud                                                                 	4	2	2	957	ES-PAR754
755	Puesto De Salud                                                                 	4	2	2	958	ES-PAR755
756	Hospital Básico                                                                 	5	2	2	959	ES-PAR756
757	Clínica General                                                                 	2	1	1	959	ES-PAR757
758	Dispensario Médico (policlínico)                                                	4	2	15	959	ES-PAR758
759	Otros Establecimientos Sin Internación                                          	4	3	5	959	ES-PAR759
760	Subcentro De Salud                                                              	4	2	2	959	ES-PAR760
761	Dispensario Médico (policlínico)                                                	4	2	6	959	ES-PAR761
762	Puesto De Salud                                                                 	4	2	2	959	ES-PAR762
763	Hospital Gineco-obstetrico                                                      	1	2	2	959	ES-PAR763
764	Puesto De Salud                                                                 	4	2	2	961	ES-PAR764
765	Puesto De Salud                                                                 	4	2	2	963	ES-PAR765
766	Puesto De Salud                                                                 	4	2	2	964	ES-PAR766
767	Puesto De Salud                                                                 	4	2	2	965	ES-PAR767
768	Subcentro De Salud                                                              	4	2	2	966	ES-PAR768
769	Subcentro De Salud                                                              	4	2	2	967	ES-PAR769
770	Puesto De Salud                                                                 	4	2	2	968	ES-PAR770
771	Puesto De Salud                                                                 	4	2	2	969	ES-PAR771
772	Subcentro De Salud                                                              	4	2	2	970	ES-PAR772
773	Subcentro De Salud                                                              	4	2	2	971	ES-PAR773
\.

COPY "Parroquias" ("idParroquias", "Parroquia", "idCanton") FROM stdin;
1	Cuenca                                                                	1
2	Girón                                                                 	2
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
17	Nabón                                                                 	7
18	San Felipe de Oña                                                     	8
19	San Fernando                                                          	9
20	Asunción                                                              	2
21	Cochapata                                                             	7
22	San Juan                                                              	3
23	Jadán                                                                 	3
24	Mariano Moreno                                                        	3
25	Chordeleg                                                             	10
26	Principal                                                             	10
27	Guachapala                                                            	11
28	Guarainag                                                             	6
29	El Pan                                                                	12
30	Palmas                                                                	13
31	San Vicente                                                           	12
32	Camilo Ponce Enríquez                                                 	14
33	Pucará                                                                	15
34	Zhaglli (Shaglli)                                                     	4
35	Gima                                                                  	5
36	San Bartolomé                                                         	5
37	Ludo                                                                  	5
38	Sayausi                                                               	1
39	Valle                                                                 	1
40	San Joaquín                                                           	1
41	Chiquintad                                                            	1
42	Octavio Cordero Palacios (Santa Rosa)                                 	1
43	Santa Ana                                                             	1
44	Paccha                                                                	1
45	El Carmen de Pijilí                                                   	14
46	El Progreso (Cab. en Zhota)                                           	7
47	Las Nieves (Chaya)                                                    	7
48	Abdón Calderón  (La Unión)                                            	4
49	Susudel                                                               	8
50	San Rafael de Shurug                                                  	15
51	Sevilla de Oro                                                        	13
52	San Cristóbal (Carlos Ordóñez Lazo)                                   	6
53	Amaluza                                                               	13
54	Victoria del Portete (Irquis)                                         	1
55	Guel                                                                  	5
56	Cuchil (Cutchil)                                                      	5
57	Chumblín                                                              	9
58	Guaranda                                                              	16
59	San Miguel                                                            	17
60	Chillanes                                                             	18
61	Echeandía                                                             	19
62	Facundo Vela                                                          	16
63	Las Naves                                                             	20
64	San Lorenzo                                                           	16
65	Simiátug                                                              	16
66	Salinas                                                               	16
67	San Simón (Yacoto)                                                    	16
68	San José del Tambo (Tambopamba)                                       	18
69	San José de Chimbo                                                    	21
70	Caluma                                                                	22
71	Magdalena (Chapacoto)                                                 	21
72	Asunción (Asancoto)                                                   	21
73	Telimbela                                                             	21
74	Balsapamba                                                            	17
75	Santiago                                                              	17
76	San Pablo  (San Pablo de Atenas)                                      	17
77	San Vicente                                                           	17
78	Bilován                                                               	17
79	Santa Fé (Santa Fé)                                                   	16
80	San Luis de Pambil                                                    	16
81	Julio E. Moreno (Catanahuán Grande)                                   	16
82	Azogues                                                               	23
83	Cañar                                                                 	24
84	Déleg                                                                 	25
85	Pindilig                                                              	23
86	Solano                                                                	25
87	Rivera                                                                	23
88	Javier Loyola (Chuquipata)                                            	23
89	Guapán                                                                	23
90	Cojitambo                                                             	23
91	Luis Cordero                                                          	23
92	San Miguel                                                            	23
93	Biblián                                                               	26
94	Nazón (Cab. en Pampa de Domínguez)                                    	26
95	El Tambo                                                              	27
96	General Morales (Socarte)                                             	24
97	Gualleturo                                                            	24
98	Manuel J. Calle                                                       	28
99	Suscal                                                                	29
100	Ingapirca                                                             	24
101	Chontamarca                                                           	24
102	Pancho Negro                                                          	28
103	Honorato Vásquez (Tambo Viejo)                                        	24
104	Ducur                                                                 	24
105	San Antonio                                                           	24
106	Ventura                                                               	24
107	Chorocopte                                                            	24
108	Juncal                                                                	24
109	La Troncal                                                            	28
110	Taday                                                                 	23
111	Zhud                                                                  	24
112	San Francisco de Sageo                                                	26
113	Tulcán                                                                	30
114	El Ángel                                                              	31
115	San Gabriel                                                           	32
116	El Carmelo (El Pun)                                                   	30
117	Julio Andrade (Orejuela)                                              	30
118	Maldonado                                                             	30
119	Tufiño                                                                	30
120	Urbina (Taya)                                                         	30
121	Huaca                                                                 	33
122	El Goaltal                                                            	31
123	Jijón y Caamaño (Cab. en Río Blanco)                                  	34
124	Juan Montalvo (San Ignacio de Quil)                                   	34
125	Concepción                                                            	34
126	La Libertad (Alizo)                                                   	31
127	Mira (Chontahuasi)                                                    	34
128	San Isidro                                                            	31
129	San Vicente de Pusir                                                  	35
130	Cristóbal Colón                                                       	32
131	Monte Olivo                                                           	35
132	Bolívar                                                               	35
133	La Paz                                                                	32
134	García Moreno                                                         	35
135	San Rafael                                                            	35
136	El Chical                                                             	30
137	Santa Martha de Cuba                                                  	30
138	Pioter                                                                	30
139	Los Andes                                                             	35
140	Chitán de Navarrete                                                   	32
141	Fernández Salvador                                                    	32
142	Piartal                                                               	32
143	La Matriz                                                             	36
144	El Corazón                                                            	37
145	Pujilí                                                                	38
146	San Miguel                                                            	39
147	Latacunga                                                             	36
148	Guaitacama (Guaytacama)                                               	36
149	Mulaló                                                                	36
150	Las Pampas                                                            	40
151	Joseguango Bajo                                                       	36
152	Pucayacu                                                              	41
153	San Juan de Pastocalle                                                	36
154	Sigchos                                                               	40
155	Toacaso                                                               	36
156	Belisario Quevedo (Guanailín)                                         	36
157	Tanicuchí                                                             	36
158	Poaló                                                                 	36
159	Alaques (Alaquez)                                                     	36
160	11 de Noviembre (Ilinchisi)                                           	36
161	Moraspungo                                                            	37
162	Angamarca                                                             	38
163	La Maná                                                               	41
164	Pilaló                                                                	38
165	Tingo                                                                 	38
166	Zumbahua                                                              	38
167	La Victoria                                                           	38
168	Guasaganda (Cab. en Guasaganda)                                       	41
169	Mulalillo                                                             	39
170	Antonio José Holguén  (Santa Lucía)                                   	39
171	Cusubamba                                                             	39
172	Mulliquindil (Santa Ana)                                              	39
173	Pansaleo                                                              	39
174	Saquisilí                                                             	42
175	Chugchillán                                                           	40
176	Isinliví (Isinliví)                                                   	40
177	Ramón Campaña                                                         	37
178	Pinllopata                                                            	37
179	Guangaje                                                              	38
180	Canchagua                                                             	42
181	Lizarzaburu                                                           	43
182	Veloz                                                                 	43
183	Velasco                                                               	43
184	Alausí                                                                	44
185	Villa La Unión (Cajabamba)                                            	45
186	Chunchi                                                               	46
187	Guamote                                                               	47
188	Riobamba                                                              	43
189	Chambo                                                                	48
190	Licto                                                                 	43
191	Flores                                                                	43
192	Punín                                                                 	43
193	San Luis                                                              	43
194	Quimiag                                                               	43
195	San Juan                                                              	43
196	Calpi                                                                 	43
197	Pungalá                                                               	43
198	Cubijíes                                                              	43
199	Tixán                                                                 	44
200	Sibambe                                                               	44
201	Achupallas                                                            	44
202	Huigra                                                                	44
203	Cumandá                                                               	49
204	Guasuntos                                                             	44
205	Guano                                                                 	50
206	Penipe                                                                	51
207	San Andrés                                                            	50
208	San Isidro de Patulú                                                  	50
209	Matus                                                                 	51
210	Columbe                                                               	45
211	Juan de Velasco (Pangor)                                              	45
212	Pallatanga                                                            	52
213	Palmira                                                               	47
214	Cebadas                                                               	47
215	Capzol                                                                	46
216	Gonzol                                                                	46
217	Ilapo                                                                 	50
218	San Gerardo de Pacaicaguán                                            	50
219	Cacha (Cab. en Machángara)                                            	43
220	Multitud                                                              	44
221	Compud                                                                	46
222	Llagos                                                                	46
223	Santiago de Quito (Cab. en San Antonio de Quito)                      	45
224	Sevilla                                                               	44
225	Machala                                                               	53
226	Pasaje                                                                	54
227	Arenillas                                                             	55
228	Piñas                                                                 	56
229	Santa Rosa                                                            	57
230	Zaruma                                                                	58
231	El Guabo                                                              	59
232	Tendales (Cab. en Puerto Tendales)                                    	59
233	Barbones (Sucre)                                                      	59
234	Chilla                                                                	60
235	Uzhcurrumi                                                            	54
236	Buenavista                                                            	54
237	La Peaña                                                              	54
238	Progreso                                                              	54
239	Casacay                                                               	54
240	Marcabelí                                                             	61
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
251	Guizhaguiña                                                           	58
252	Paccha                                                                	63
253	Huertas                                                               	58
254	Malvas                                                                	58
255	Portovelo                                                             	64
256	Salatí                                                                	64
257	Curtincapa                                                            	64
258	Bellavista                                                            	57
259	San Antonio                                                           	57
260	La Avanzada                                                           	57
261	Cañaquemada                                                           	54
262	Guanazán                                                              	58
263	Jambelí                                                               	57
264	Bellamaría                                                            	57
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
275	Rosa Zárate (Quinindé)                                                	71
276	Borbon                                                                	68
277	Atacames                                                              	72
278	Rocafuerte                                                            	73
279	Chinca                                                                	67
280	La Unión                                                              	72
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
292	Súa  (Cab. en La Bocana)                                              	72
293	Colón Eloy del María                                                  	68
294	Ancón (Pichangal) (Cab. en Palma Real)                                	69
295	Calderón                                                              	69
296	5 de Junio (Cab. en Uimbi)                                            	69
297	Concepción                                                            	69
298	La Tola                                                               	68
299	Luis Vargas Torres (Cab. en Playa de Oro)                             	68
300	Maldonado                                                             	68
301	San Francisco de Onzole                                               	68
302	Chumundé                                                              	73
303	San Javier de Cachaví (Cab. en San Javier)                            	69
304	Santa Rita                                                            	69
305	Urbina                                                                	69
306	San Gregorio                                                          	70
307	Bolívar                                                               	70
308	Daule                                                                 	70
309	Galera                                                                	70
310	San Francisco                                                         	70
311	San José de Chamanga (Cab. en Chamanga)                               	70
312	Cube                                                                  	71
313	Malimpia                                                              	71
314	Viche                                                                 	71
315	La Unión                                                              	71
316	Atahualpa (Cab. en Camarones)                                         	68
317	Selva Alegre                                                          	68
318	Santo Domingo de Onzole                                               	68
319	Crnel. Carlos Concha Torres (Cab. en Huele)                           	67
320	Tululbí (Cab. en Ricaurte)                                            	69
321	Lagarto                                                               	73
322	Telembi                                                               	68
323	Chura (Chancama) (Cab. en El Yerbero)                                 	71
324	Tambillo                                                              	69
325	Guayaquil                                                             	74
326	Milagro                                                               	75
327	Velasco Ibarra (El Empalme)                                           	76
328	San Jacinto de Yaguachi                                               	77
329	José Luis Tamayo (Muey)                                               	219
330	Eloy Alfaro (Durán)                                                   	78
331	General Villamil (Playas)                                             	79
332	Tenguel                                                               	74
333	Balzar                                                                	80
334	Daule                                                                 	81
335	Naranjal                                                              	82
336	La Libertad                                                           	220
337	San José de Ancón                                                     	221
338	Manglaralto                                                           	221
339	Coronel Marcelino Maridueña (San Carlos)                              	83
340	El Triunfo                                                            	84
341	El Salitre (Las Ramas)                                                	85
342	Salinas                                                               	219
343	Naranjito                                                             	86
344	Juan Gómez Rendón (Progreso)                                          	74
345	Posorja                                                               	74
346	Puná                                                                  	74
347	Balao                                                                 	87
348	Colimes                                                               	88
349	Isidro Ayora                                                          	89
350	Narcisa de Jesús (Nobol)                                              	90
351	Los Lojas (Enrique Baquerizo Moreno)                                  	81
352	Lomas de Sargentillo                                                  	91
353	Palestina                                                             	92
354	Pedro Carbo                                                           	93
355	Santa Lucía                                                           	94
356	Guayas (Pueblo Nuevo)                                                 	76
357	General Antonio Elizalde (Bucay)                                      	95
358	Mariscal Sucre (Huaques)                                              	75
359	Taura                                                                 	82
360	Samborondón                                                           	96
361	Tarifa                                                                	96
362	Santa Elena                                                           	221
363	Chanduy                                                               	221
364	Atahualpa                                                             	221
365	Colonche                                                              	221
366	Junquillal                                                            	85
367	Gral. Vernaza (Dos Esteros)                                           	85
368	La Victoria (Ñauza)                                                   	85
369	Alfredo Baquerizo Moreno (Jujín)                                      	97
370	Simón Bolívar                                                         	98
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
382	Jesús María                                                           	82
383	Virgen de Fátima                                                      	77
384	San Miguel de Ibarra, Cabecera Cantonal y Capital Provincial          	99
385	Atuntaqui                                                             	100
386	Cotacachi                                                             	101
387	Otavalo                                                               	102
388	Ambuquí                                                               	99
389	Cahuasquí                                                             	103
390	Carolina                                                              	99
391	La Esperanza                                                          	99
392	Lita                                                                  	99
393	Mariano Acosta                                                        	104
394	Pablo Arenas                                                          	103
395	Pimampiro                                                             	104
396	San Antonio                                                           	99
397	Tumbabiro                                                             	103
398	Urcuquí                                                               	103
399	La Merced de Buenos Aires                                             	103
400	Angochagua                                                            	99
401	San Francisco de Sigsipamba                                           	104
402	Chugá                                                                 	104
403	San Blas                                                              	103
404	Salinas                                                               	99
405	San José de Chaltura                                                  	100
406	San Roque                                                             	100
407	San Francisco de Natabuela                                            	100
408	Imbaya (San Luis de Cobuendo)                                         	100
409	6 de Julio de Cuellaje (Cab. en Cuellaje)                             	101
410	Apuela                                                                	101
411	García Moreno (Llurimagua)                                            	101
412	Imantag                                                               	101
413	Peñaherrera                                                           	101
414	Vacas Galindo (El Churo) (Cab.en San Miguel Alto)                     	101
415	Quiroga                                                               	101
416	San Pablo                                                             	102
417	San Rafael                                                            	102
418	Selva Alegre (Cab. en San Miguel de Pamplona)                         	102
419	San Juan de Ilumán                                                    	102
420	Eugenio Espejo (Calpaquí)                                             	102
421	San José de Quichinche                                                	102
422	Dr. Miguel Egas Cabezas (Peguche)                                     	102
423	González Suárez                                                       	102
424	Plaza Gutiérrez (Calvario)                                            	101
425	Pataquí                                                               	102
426	Loja                                                                  	105
427	Cariamanga                                                            	106
428	Macará                                                                	107
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
444	Taquil (Miguel Riofrío)                                               	105
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
458	Gonzanamá                                                             	117
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
469	Cangonamá                                                             	108
470	Orianga                                                               	108
471	Buenavista                                                            	118
472	El Rosario                                                            	118
473	Lauro Guerrero                                                        	108
474	Casanga                                                               	108
475	Selva Alegre                                                          	110
476	La Tingue                                                             	119
477	Santa Rufina                                                          	118
478	Guachanamá                                                            	108
479	Mangahurco                                                            	114
480	El Limo (Mariana de Jesús)                                            	109
481	Vicentino                                                             	109
482	Paletillas                                                            	114
483	Ciano                                                                 	109
484	Manú                                                                  	110
485	San Antonio de Qumbe (Cumbe)                                          	110
486	Urdaneta (Paquishapa)                                                 	110
487	El Paraíso de Celén                                                   	110
488	San Sebastián de Yúluc                                                	110
489	Tacamoros                                                             	120
490	San Pablo de Tenta                                                    	110
491	Nueva Fátima                                                          	120
492	Santa Teresita                                                        	111
493	Sozoranga                                                             	120
494	San Antonio                                                           	108
495	Mercadillo                                                            	109
496	Chaquinal                                                             	115
497	Babahoyo                                                              	121
498	Quevedo                                                               	122
499	Ricaurte                                                              	123
500	Vinces                                                                	124
501	La Unión                                                              	121
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
515	San Jacinto de Buena Fé                                               	130
516	Valencia                                                              	131
517	Quinsaloma                                                            	132
518	Palenque                                                              	133
519	Antonio Sotomayor (Cab. en Playas de Vinces)                          	124
520	Catarama                                                              	123
521	Zapotal                                                               	125
522	Patricia Pilar                                                        	130
523	Los Ángeles                                                           	125
524	Portoviejo                                                            	134
525	Calceta                                                               	135
526	Chone                                                                 	136
527	Jipijapa                                                              	137
528	Manta                                                                 	138
529	Bahía de Caraquez                                                     	139
530	El Carmen                                                             	140
531	Paján                                                                 	141
532	Rocafuerte                                                            	142
533	Abdón Calderón (San Francisco)                                        	134
534	Alhajuela (Bajo Grande)                                               	134
535	Pueblo Nuevo                                                          	134
536	Riochico (Río Chico)                                                  	134
537	San Plácido                                                           	134
538	Crucita                                                               	134
539	Pichincha                                                             	143
540	Quiroga                                                               	135
541	Boyacá                                                                	136
542	Canuto                                                                	136
543	Convento                                                              	136
544	Eloy Alfaro                                                           	136
545	Flavio Alfaro                                                         	144
546	Ricaurte                                                              	136
547	San Antonio                                                           	136
548	América                                                               	137
549	El Anegado (Cab. en Eloy Alfaro)                                      	137
550	Julcuy                                                                	137
551	Machalilla                                                            	145
552	Pedro Pablo Gómez                                                     	137
553	Puerto López                                                          	145
554	Junín                                                                 	146
555	San Lorenzo                                                           	138
556	Montecristi                                                           	147
557	Jaramijó                                                              	148
558	Campozano (La Palma de Paján)                                         	141
559	Cascol                                                                	141
560	Guale                                                                 	141
561	Lascano                                                               	141
562	Bachillero                                                            	149
563	Ángel Pedro Giler (La Estancilla)                                     	149
564	Tosagua                                                               	149
565	Santa Ana de Vuelta Larga, Cabecera Cantonal                          	150
566	Ayacucho                                                              	150
567	Honorato Vásquez (Cab. en Vásquez)                                    	150
568	San Pablo (Cab. en Pueblo Nuevo)                                      	150
569	Canoa                                                                 	152
570	Cojimíes                                                              	153
571	Charapotó                                                             	139
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
582	La Unión                                                              	150
583	Atahualpa                                                             	153
584	Membrillal                                                            	137
585	Barraganete                                                           	143
586	San Sebastián                                                         	143
587	Wilfrido Loor Moreira (Maicito)                                       	140
588	La Unión                                                              	137
589	Macas                                                                 	156
590	Gualaquiza                                                            	157
591	General Leonidas Plaza Gutiérrez (Limón)                              	158
592	Santiago de Méndez                                                    	159
593	Sucúa                                                                 	160
594	Taisha                                                                	161
595	Sevilla Don Bosco                                                     	156
596	Chiguaza                                                              	162
597	Cuchaentza                                                            	156
598	Alshi (Cab. en 9 de Octubre)                                          	156
599	Macuma                                                                	161
600	Sinaí                                                                 	156
601	Pablo Sexto                                                           	163
602	Chiguinda                                                             	157
603	Palora (Metzera)                                                      	164
604	Santiago                                                              	165
605	Patuca                                                                	159
606	Shimpis                                                               	166
607	Yaupi                                                                 	166
608	Bomboiza                                                              	157
609	San Juan Bosco                                                        	167
610	Logroño                                                               	166
611	Huambi                                                                	160
612	Santa Susana de Chiviaza (Cab. en Chiviaza)                           	158
613	Tuutinentza                                                           	161
614	Yunganza (Cab. en El Rosario)                                         	158
615	Copal                                                                 	159
616	Tayuza                                                                	159
617	San José de Morona                                                    	165
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
638	San Francisco de Borja (Virgilio Dávila)                              	171
639	Puerto Murialdo                                                       	216
640	Tálag                                                                 	168
641	San Carlos                                                            	215
642	Puerto Napo                                                           	168
643	San Sebastián del Coca                                                	215
644	Santa Rosa                                                            	170
645	Sardinas                                                              	170
646	Dayuma                                                                	214
647	Puyo                                                                  	173
648	Mera                                                                  	174
649	Madre Tierra                                                          	174
650	Shell                                                                 	174
651	Curaray                                                               	175
652	Diez de Agosto                                                        	173
653	Fátima                                                                	173
654	Veracruz  (Cab. en Indillama)                                         	173
655	Montalvo (Andoas)                                                     	173
656	Tarqui                                                                	173
657	Teniente Hugo Ortiz                                                   	173
658	Arajuno                                                               	175
659	Pomona                                                                	173
660	Canelos                                                               	173
661	Simón Bolívar  (Cab. en Mushullacta)                                  	173
662	Sarayacu                                                              	173
663	Santa Clara                                                           	176
664	El Triunfo                                                            	173
665	Quito Distrito Metropolitano                                          	177
666	Alangasí                                                              	177
667	Conocoto                                                              	177
668	Nanegalito                                                            	177
669	Cayambe                                                               	178
670	Machachi                                                              	179
671	Sangolquí                                                             	180
672	Santo Domingo de los Colorados                                        	218
673	Yaruquí                                                               	177
674	Amaguaña                                                              	177
675	Atahualpa                                                             	177
676	Calderón                                                              	177
677	Calacalí                                                              	177
678	Cumbayá                                                               	177
679	Checa (Chilpa)                                                        	177
680	Guayllabamba                                                          	177
681	Gualea                                                                	177
682	Mindo                                                                 	181
683	Nanegal                                                               	177
684	Nono                                                                  	177
685	Pacto                                                                 	177
686	Pedro Vicente Maldonado                                               	182
687	Pifo                                                                  	177
688	Píntag                                                                	177
689	Pomasqui                                                              	177
690	Puéllaro                                                              	177
691	Puembo                                                                	177
692	El Quinche                                                            	177
693	San Antonio                                                           	177
694	San José de Minas                                                     	177
695	San Miguel de los Bancos                                              	181
696	Tumbaco                                                               	177
697	Zámbiza                                                               	177
698	Nayón                                                                 	177
699	Puerto Quito                                                          	183
700	Cangahua                                                              	178
701	Olmedo (Pesillo)                                                      	178
702	Otón                                                                  	178
703	Ascázubi                                                              	178
704	Alóag                                                                 	179
705	Manuel Cornejo Astorga (Tandapi)                                      	179
706	Tambillo                                                              	179
707	Uyumbicho                                                             	179
708	Aloasí                                                                	179
709	Tabacundo                                                             	184
710	La Esperanza                                                          	184
711	Malchinguí                                                            	184
712	Tocachi                                                               	184
713	Cotogchoa                                                             	180
714	La Concordia                                                          	217
715	Alluriquín                                                            	218
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
726	Santa María del Toachi                                                	218
727	Luz de América                                                        	218
728	Guangopolo                                                            	177
729	Cutuglahua                                                            	179
730	Valle Hermoso                                                         	218
731	Matriz                                                                	185
732	Atocha - Ficoa                                                        	185
733	La Merced                                                             	185
734	Pelileo                                                               	186
735	Píllaro                                                               	187
736	San Francisco                                                         	185
737	Huachi Loreto                                                         	185
738	Augusto N. Martínez (Mundugleo)                                       	185
739	Cevallos                                                              	188
740	Mocha                                                                 	189
741	Pasa                                                                  	185
742	Pilaguín (Pilahuín)                                                   	185
743	Quisapincha (Quizapincha)                                             	185
744	Atahualpa (Chisalata)                                                 	185
745	Constantino Fernández (Cab. en Cullitahua)                            	185
746	Izamba                                                                	185
747	Picaigua                                                              	185
748	Santa Rosa                                                            	185
749	Tisaleo                                                               	190
750	Juan Benigno Vela                                                     	185
751	Ambatillo                                                             	185
752	Huachi Grande                                                         	185
753	Totoras                                                               	185
754	Quinchicoto                                                           	190
755	Río Negro                                                             	191
756	Río Verde                                                             	191
757	Patate                                                                	192
758	Cotaló                                                                	186
759	Guambaló (Huambaló)                                                   	186
760	Salasaca                                                              	186
761	Benítez (Pachanlica)                                                  	186
762	San José de Poalo                                                     	187
763	San Miguelito                                                         	187
764	San Andrés                                                            	187
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
776	García Moreno (Chumaqui)                                              	186
777	El Rosario (Rumichaca)                                                	186
778	Bolívar                                                               	186
779	Emilio María Terán (Rumipamba)                                        	187
780	Pishilata                                                             	185
781	Baños de Agua Santa                                                   	191
782	La Península                                                          	185
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
800	28 de Mayo (San José de Yacuambi)                                     	202
801	Tutupali                                                              	202
802	San Carlos de las Minas                                               	194
803	San Francisco del Vergel                                              	201
804	La Paz                                                                	202
805	Chicaña                                                               	195
806	El Guisme                                                             	199
807	Puerto Baquerizo Moreno                                               	203
808	Puerto Ayora                                                          	204
809	Isla Santa María (Floreana) (Cab. en  Pto. Velasco Ibarra)            	203
810	Puerto Villamil                                                       	205
811	El Progreso                                                           	203
812	Bellavista                                                            	204
813	Nueva Loja                                                            	206
814	Shushufindi                                                           	207
815	El Dorado de Cascales                                                 	208
816	Lumbaquí                                                              	209
817	El Playón de San Francisco                                            	210
818	Limoncocha                                                            	207
819	Tarapoa                                                               	211
820	La Bonita                                                             	210
821	Sevilla                                                               	208
822	Santa Bárbara                                                         	210
823	Puerto El Carmen del Putumayo                                         	212
824	Palma Roja                                                            	212
825	Jambelí                                                               	206
826	Pacayacu                                                              	206
827	General Farfán                                                        	206
828	San Roque (Cab. en San Vicente)                                       	207
829	El Reventador                                                         	209
830	Santa Cecilia                                                         	206
831	Llacao                                                                	1
832	Turi                                                                  	1
833	San Gerardo                                                           	2
834	Daniel Córdova Toral (El Oriente)                                     	3
835	Zhidmad                                                               	3
836	Bulán(José Víctor Izquierdo)                                          	6
837	Chicán (Guillermo Ortega)                                             	6
838	El Cabo                                                               	6
839	Tomebamba                                                             	6
840	San José de Raranga                                                   	5
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
851	El Tablón                                                             	110
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
866	San José de Guayusa                                                   	214
867	Puerto Limón                                                          	218
868	El Paraíso                                                            	65
869	El Rosario                                                            	157
870	Lluzhapa                                                              	110
871	Colaisaca                                                             	106
872	San Francisco de Chinimbimi                                           	159
873	Papallacta                                                            	171
874	Gonzalo Díaz de Pineda (El Bombón)                                    	170
875	Timbara                                                               	194
876	San Pedro de Suma                                                     	140
877	Dug Dug                                                               	6
878	Jerusalén                                                             	26
879	Sanguillín                                                            	106
880	El Ingenio                                                            	111
881	Bellavista                                                            	111
882	27 de Abril (Cab. en La Naranja)                                      	111
883	San José de Payamino                                                  	216
884	San José de Dahuano                                                   	216
885	San Pablo de Ushpayacu                                                	169
886	San Pedro de Los Cofanes                                              	207
887	Simón Bolívar (Julio Moreno)                                          	221
888	Salango                                                               	145
889	Anchayacu                                                             	68
890	El Esfuerzo                                                           	218
891	Puerto Libre                                                          	209
892	Baños                                                                 	1
893	Bellavista                                                            	200
894	San Andrés                                                            	196
895	Río Bonito                                                            	59
896	Santa Rosa (Incluye La Isla Baltra)                                   	204
897	El Rosario                                                            	76
898	El Eno                                                                	206
899	Río Blanco                                                            	156
900	Arapicos                                                              	164
901	San Antonio (Cab. en San Antonio Centro)                              	158
902	San Carlos                                                            	82
903	Inés Arango (Cab. en Western)                                         	214
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
916	San Sebastión                                                         	1
917	Yanuncay                                                              	1
918	Pinguilí                                                              	189
919	Presidente Urbina (Chagrapamba -Patzucul)                             	187
920	Rumipamba                                                             	193
921	Chantilín                                                             	42
922	Maldonado                                                             	43
923	Unión Milagreña                                                       	215
924	Eloy Alfaro (San Felipe)                                              	36
925	San Bartolomé de Pinllog                                              	185
926	Mariscal Sucre                                                        	33
927	El Edén                                                               	214
928	Tiputini                                                              	213
929	Pompeya                                                               	215
930	San Antonio de Bayushig                                               	51
931	La Candelaria                                                         	51
932	Sinsao                                                                	58
933	Abañin                                                                	58
934	Licán                                                                 	43
935	El Arenal                                                             	109
936	Régulo de Mora                                                        	17
937	Tarqui                                                                	74
938	Avila (Cab. en Huiruno)                                               	216
939	Carcabón                                                              	55
940	Tomás de Berlanga (Santo Tomás)                                       	205
941	San Carlos de Limón                                                   	167
942	El Ideal                                                              	157
943	Santiago de Pananza                                                   	167
944	El Retiro                                                             	53
945	Arq. Sixto Durán Ballén                                               	155
946	San Luis de Armenia                                                   	214
947	Nuevo Paraíso (Cab. en Unión Chimborazo)                              	214
948	García Moreno                                                         	214
949	Tres de Noviembre                                                     	215
950	Lago San Pedro                                                        	215
951	Sumaypamba                                                            	110
952	Zurmi                                                                 	198
953	Nuevo Paraíso                                                         	198
954	Tundayme                                                              	199
955	Nuevo Quito                                                           	200
956	Cochapamba                                                            	42
957	Morales                                                               	64
958	Arcapamba                                                             	58
959	La Libertad                                                           	65
960	Juan Montalvo (San Sebastián)                                         	36
961	San José                                                              	63
962	Timbire                                                               	68
963	Alto Tambo (Cab. en Guadual)                                          	69
964	Cumandá (Cab. en Colonia Agrícola Sevilla del Oro)                    	164
965	Ulba                                                                  	191
966	Juan Bautista Aguirre (Los Tintos)                                    	81
967	Pañacocha                                                             	207
968	Santa Rosa de Sucumbíos                                               	208
969	La Canela                                                             	201
970	Alejandro Labaka                                                      	214
971	Luis Cordero Vega                                                     	3
\.

COPY "Provincias" ("idProvincia", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion", "CodProvincia") FROM stdin;
1   Azuay                                           1           -79             -2.883333       2   EC-A
2   Bolivar                                         2           -79             -1.6            2   EC-B
3   Caniar                                          3           -78.833333      -2.733333       2   EC-F
4   Carchi                                          4           -78.083333      0.75            2   EC-C
5   Cotopaxi                                        5           -78.437778      -0.680556       2   EC-X
6   Chimborazo                                      6           -78.8175        -1.469167       2   EC-H
7   El Oro                                          7           -79.9667        -3.266669       1   EC-O
8   Esmeraldas                                      8           -79.666667      0.95            1   EC-E
9   Guayas                                          9           -79.9667        -2.2            1   EC-G
10  Imbabura                                        10          -78.133333      0.35            2   EC-I
11  Loja                                            11          -79.205         -3.990556       2   EC-L
12  Los Rios                                        12          -79.45          -1.766669       1   EC-R
13  Manabi                                          13          -80.4506        -1.052219       1   EC-M
14  Morona Santiago                                 14          -78.133333      -2.366667       3   EC-S
15  Napo                                            15          -77.8159        0.989           3   EC-N
16  Pastaza                                         16          -78.001111      -1.066667       3   EC-Y
17  Pichincha                                       17          -78.583333      -0.25           2   EC-P
18  Tungurahua                                      18          -78.616667      -1.233333       2   EC-T
19  Zamora Chinchipe                                19          -79             -2.883333       3   EC-Z
20  Galapagos                                       20          -92             1.39            4   EC-W
21  Sucumbios                                       21          -76.883333      -0.083333       3   EC-U
22  Orellana                                        22          -79.666667      -0.933333       3   EC-D
23  Santo Domingo De Los Tsachilas                  23          -79.25          -0.333333       2   EC-SD
24  Santa Elena                                     24          -80.8583        -2.2267         1   EC-SE
\.

COPY "Regiones" ("idRegion", "Region") FROM stdin;
1	Costa                         
2	Sierra                        
3	Amazonia                      
4	Insular                       
\.

COPY "Respuesta" ("idRespuesta", "Respuesta", "idPregunta") FROM stdin;
1	17129816	2
2	3844096	4
3	6862942	6
4	5095765	7
5	1262048	8
6	1680256	9
7	1880256	10
8	17129816	11
9	15502890	18
\.

COPY "Sectores" ("idSector", "Sector") FROM stdin;
1	Sector Privado Con Fines De Lucro       
2	Sector Público                          
3	Sector Privado Sin Fines De Lucro       
\.

COPY "Tipos" ("idTipo", "Tipo") FROM stdin;
1	Agudo                                   
2	Clínicas Generales Sin Especialidad     
3	Crónico                                 
4	Establecimientos Sin Internación        
5	Sin Tipo (hospitales Básicos)           
\.

COPY "cuestPregunta" ("idcuestPregunta", "idCuestionario", "idPregunta") FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	2	1
17	2	2
18	2	3
19	2	4
20	2	5
21	2	6
22	2	7
23	2	8
24	2	9
25	2	10
26	2	11
27	2	12
28	2	13
29	2	14
30	2	15
31	3	1
32	3	2
33	3	3
34	3	4
35	3	5
36	3	6
37	3	7
38	3	8
39	3	9
40	3	10
41	3	11
42	3	12
43	3	13
44	3	14
45	3	15
46	4	1
47	4	2
48	4	3
49	4	4
50	4	5
51	4	6
52	4	7
53	4	8
54	4	9
55	4	10
56	4	11
57	4	12
58	4	13
59	4	14
60	4	15
61	5	1
62	5	2
63	5	3
64	5	4
65	5	5
66	5	6
67	5	7
68	5	8
69	5	9
70	5	10
71	5	11
72	5	12
73	5	13
74	5	14
75	5	15
76	6	1
77	6	2
78	6	3
79	6	4
80	6	5
81	6	6
82	6	7
83	6	8
84	6	9
85	6	10
86	6	11
87	6	12
88	6	13
89	6	14
90	6	15
91	7	1
92	7	2
93	7	3
94	7	4
95	7	5
96	7	6
97	7	7
98	7	8
99	7	9
100	7	10
101	7	11
102	7	12
103	7	13
104	7	14
105	7	15
106	8	1
107	8	2
108	8	3
109	8	4
110	8	5
111	8	6
112	8	7
113	8	8
114	8	9
115	8	10
116	8	11
117	8	12
118	8	13
119	8	14
120	8	15
121	9	1
122	9	2
123	9	3
124	9	4
125	9	5
126	9	6
127	9	7
128	9	8
129	9	9
130	9	10
131	9	11
132	9	12
133	9	13
134	9	14
135	9	15
136	10	1
137	10	2
138	10	3
139	10	4
140	10	5
141	10	6
142	10	7
143	10	8
144	10	9
145	10	10
146	10	11
147	10	12
148	10	13
149	10	14
150	10	15
151	11	1
152	11	2
153	11	3
154	11	4
155	11	5
156	11	6
157	11	7
158	11	8
159	11	9
160	11	10
161	11	11
162	11	12
163	11	13
164	11	14
165	11	15
166	12	1
167	12	2
168	12	3
169	12	4
170	12	5
171	12	6
172	12	7
173	12	8
174	12	9
175	12	10
176	12	11
177	12	12
178	12	13
179	12	14
180	12	15
181	13	1
182	13	2
183	13	3
184	13	4
185	13	5
186	13	6
187	13	7
188	13	8
189	13	9
190	13	10
191	13	11
192	13	12
193	13	13
194	13	14
195	13	15
196	14	1
197	14	2
198	14	3
199	14	4
200	14	5
201	14	6
202	14	7
203	14	8
204	14	9
205	14	10
206	14	11
207	14	12
208	14	13
209	14	14
210	14	15
211	15	1
212	15	2
213	15	3
214	15	4
215	15	5
216	15	6
217	15	7
218	15	8
219	15	9
220	15	10
221	15	11
222	15	12
223	15	13
224	15	14
225	15	15
226	16	1
227	16	2
228	16	3
229	16	4
230	16	5
231	16	6
232	16	7
233	16	8
234	16	9
235	16	10
236	16	11
237	16	12
238	16	13
239	16	14
240	16	15
241	17	1
242	17	2
243	17	3
244	17	4
245	17	5
246	17	6
247	17	7
248	17	8
249	17	9
250	17	10
251	17	11
252	17	12
253	17	13
254	17	14
255	17	15
256	18	1
257	18	2
258	18	3
259	18	4
260	18	5
261	18	6
262	18	7
263	18	8
264	18	9
265	18	10
266	18	11
267	18	12
268	18	13
269	18	14
270	18	15
\.

ALTER TABLE ONLY "BancoPreguntas"
    ADD CONSTRAINT "BancoPreguntas_pkey" PRIMARY KEY ("idBancoPregunta");

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "Cantones_pkey" PRIMARY KEY ("idCanton");

ALTER TABLE ONLY "Cuestionarios"
    ADD CONSTRAINT "Cuestionario_pkey" PRIMARY KEY ("idEncuesta");

ALTER TABLE ONLY "Entidades"
    ADD CONSTRAINT "EntidadEstablecimiento_pkey" PRIMARY KEY ("idEntidad");

ALTER TABLE ONLY "Establecimientos"
    ADD CONSTRAINT "Establecimientos_pkey" PRIMARY KEY ("idEstablecimiento");

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "Parroquias_pkey" PRIMARY KEY ("idParroquias");

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "Provincias_pkey" PRIMARY KEY ("idProvincia");

ALTER TABLE ONLY "Regiones"
    ADD CONSTRAINT "Regiones_pkey" PRIMARY KEY ("idRegion");

ALTER TABLE ONLY "Respuesta"
    ADD CONSTRAINT "Respuesta_pkey" PRIMARY KEY ("idRespuesta");

ALTER TABLE ONLY "Sectores"
    ADD CONSTRAINT "SectorEstablecimiento_pkey" PRIMARY KEY ("idSector");

ALTER TABLE ONLY "Tipos"
    ADD CONSTRAINT "TipoEstablecimiento_pkey" PRIMARY KEY ("idTipo");

ALTER TABLE ONLY "cuestPregunta"
    ADD CONSTRAINT "cuestPregunta_pkey" PRIMARY KEY ("idcuestPregunta");

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "cantonParroquia" FOREIGN KEY ("idCanton") REFERENCES "Cantones"("idCanton");

ALTER TABLE ONLY "Establecimientos"
    ADD CONSTRAINT "entidadEstablecimiento" FOREIGN KEY ("idEntidad") REFERENCES "Entidades"("idEntidad");

ALTER TABLE ONLY "Establecimientos"
    ADD CONSTRAINT "parroquiasEstablecimiento" FOREIGN KEY ("idParroquias") REFERENCES "Parroquias"("idParroquias");

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "provinciCanton" FOREIGN KEY ("idProvincia") REFERENCES "Provincias"("idProvincia");

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "regionProvincia" FOREIGN KEY ("idRegion") REFERENCES "Regiones"("idRegion");

ALTER TABLE ONLY "Respuesta"
    ADD CONSTRAINT "respuestaPregunta" FOREIGN KEY ("idPregunta") REFERENCES "BancoPreguntas"("idBancoPregunta");

ALTER TABLE ONLY "Establecimientos"
    ADD CONSTRAINT "sectorEstablecimiento" FOREIGN KEY ("idSector") REFERENCES "Sectores"("idSector");

ALTER TABLE ONLY "Establecimientos"
    ADD CONSTRAINT "tipoEstablecimiento" FOREIGN KEY ("idTipo") REFERENCES "Tipos"("idTipo");
