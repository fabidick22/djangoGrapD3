--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.3
-- Dumped by pg_dump version 9.5.3

-- Started on 2016-11-27 01:16:34 ECT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 8 (class 2615 OID 2004562)
-- Name: ResiduosPeligrosos; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "ResiduosPeligrosos";


ALTER SCHEMA "ResiduosPeligrosos" OWNER TO postgres;

--
-- TOC entry 1 (class 3079 OID 12623)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2471 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = "ResiduosPeligrosos", pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 182 (class 1259 OID 2006329)
-- Name: BancoPreguntas; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "BancoPreguntas" (
    "idBancoPreguntas" integer NOT NULL,
    "Pregunta" text,
    "idSector" integer
);


ALTER TABLE "BancoPreguntas" OWNER TO postgres;

--
-- TOC entry 183 (class 1259 OID 2006624)
-- Name: Cantones; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "Cantones" (
    "idCantones" integer NOT NULL,
    "Canton" text,
    "Codigo" text,
    "idProvincia" integer
);


ALTER TABLE "Cantones" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 2006733)
-- Name: ClasesEstablecimiento; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "ClasesEstablecimiento" (
    "idClasesEs" integer NOT NULL,
    "ClasesEstablecimiento" text,
    "idParroquias" integer
);


ALTER TABLE "ClasesEstablecimiento" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 2006803)
-- Name: Cuestionario; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "Cuestionario" (
    "idEncuesta" integer NOT NULL,
    "Encuesta" text,
    "Anio" integer,
    "idPreguntas" integer
);


ALTER TABLE "Cuestionario" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 2007688)
-- Name: EntidadEstablecimiento; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "EntidadEstablecimiento" (
    "idEntidades" integer NOT NULL,
    "EntidadEstablecimiento" text,
    "idTipo" integer
);


ALTER TABLE "EntidadEstablecimiento" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 2007740)
-- Name: Parroquias; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "Parroquias" (
    "idParroquias" integer NOT NULL,
    "Codigo" text,
    "Parroquias" text,
    "idCantones" integer
);


ALTER TABLE "Parroquias" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 2007800)
-- Name: Provincias; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "Provincias" (
    "idProvincias" integer NOT NULL,
    "Provincia" text,
    "CodigoProvincia" text,
    "LongitudProvincia" text,
    "LatitudProvincia" text,
    "idRegion" integer
);


ALTER TABLE "Provincias" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 2007895)
-- Name: Regiones; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "Regiones" (
    "idRegiones" integer NOT NULL,
    "Region" text
);


ALTER TABLE "Regiones" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 2007962)
-- Name: Respuestas; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "Respuestas" (
    "idRespuestas" integer NOT NULL,
    "Si.No" text,
    "Kg" text,
    "idCuestionario" integer
);


ALTER TABLE "Respuestas" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 2007999)
-- Name: SectorSalud; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "SectorSalud" (
    "idSectorSalud" integer NOT NULL,
    "SectorSalud" text,
    "idEntidad" integer
);


ALTER TABLE "SectorSalud" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 2008057)
-- Name: TipoEstablecimiento; Type: TABLE; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE TABLE "TipoEstablecimiento" (
    "idTipoEs" integer NOT NULL,
    "TipoEstablecimiento" text,
    "idClases" integer
);


ALTER TABLE "TipoEstablecimiento" OWNER TO postgres;

--
-- TOC entry 2453 (class 0 OID 2006329)
-- Dependencies: 182
-- Data for Name: BancoPreguntas; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "BancoPreguntas" ("idBancoPreguntas", "Pregunta", "idSector") FROM stdin;
\.


--
-- TOC entry 2454 (class 0 OID 2006624)
-- Dependencies: 183
-- Data for Name: Cantones; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "Cantones" ("idCantones", "Canton", "Codigo", "idProvincia") FROM stdin;
\.


--
-- TOC entry 2455 (class 0 OID 2006733)
-- Dependencies: 184
-- Data for Name: ClasesEstablecimiento; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "ClasesEstablecimiento" ("idClasesEs", "ClasesEstablecimiento", "idParroquias") FROM stdin;
\.


--
-- TOC entry 2456 (class 0 OID 2006803)
-- Dependencies: 185
-- Data for Name: Cuestionario; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "Cuestionario" ("idEncuesta", "Encuesta", "Anio", "idPreguntas") FROM stdin;
\.


--
-- TOC entry 2457 (class 0 OID 2007688)
-- Dependencies: 186
-- Data for Name: EntidadEstablecimiento; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "EntidadEstablecimiento" ("idEntidades", "EntidadEstablecimiento", "idTipo") FROM stdin;
\.


--
-- TOC entry 2458 (class 0 OID 2007740)
-- Dependencies: 187
-- Data for Name: Parroquias; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "Parroquias" ("idParroquias", "Codigo", "Parroquias", "idCantones") FROM stdin;
\.


--
-- TOC entry 2459 (class 0 OID 2007800)
-- Dependencies: 188
-- Data for Name: Provincias; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "Provincias" ("idProvincias", "Provincia", "CodigoProvincia", "LongitudProvincia", "LatitudProvincia", "idRegion") FROM stdin;
\.


--
-- TOC entry 2460 (class 0 OID 2007895)
-- Dependencies: 189
-- Data for Name: Regiones; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "Regiones" ("idRegiones", "Region") FROM stdin;
\.


--
-- TOC entry 2461 (class 0 OID 2007962)
-- Dependencies: 190
-- Data for Name: Respuestas; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "Respuestas" ("idRespuestas", "Si.No", "Kg", "idCuestionario") FROM stdin;
\.


--
-- TOC entry 2462 (class 0 OID 2007999)
-- Dependencies: 191
-- Data for Name: SectorSalud; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "SectorSalud" ("idSectorSalud", "SectorSalud", "idEntidad") FROM stdin;
\.


--
-- TOC entry 2463 (class 0 OID 2008057)
-- Dependencies: 192
-- Data for Name: TipoEstablecimiento; Type: TABLE DATA; Schema: ResiduosPeligrosos; Owner: postgres
--

COPY "TipoEstablecimiento" ("idTipoEs", "TipoEstablecimiento", "idClases") FROM stdin;
\.


--
-- TOC entry 2299 (class 2606 OID 2011054)
-- Name: idBancoPreguntas; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "BancoPreguntas"
    ADD CONSTRAINT "idBancoPreguntas" PRIMARY KEY ("idBancoPreguntas");


--
-- TOC entry 2302 (class 2606 OID 2011089)
-- Name: idCantones; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "idCantones" PRIMARY KEY ("idCantones");


--
-- TOC entry 2305 (class 2606 OID 2011116)
-- Name: idClasesEs; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "ClasesEstablecimiento"
    ADD CONSTRAINT "idClasesEs" PRIMARY KEY ("idClasesEs");


--
-- TOC entry 2308 (class 2606 OID 2011148)
-- Name: idEncuesta; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Cuestionario"
    ADD CONSTRAINT "idEncuesta" PRIMARY KEY ("idEncuesta");


--
-- TOC entry 2311 (class 2606 OID 2011174)
-- Name: idEntidades; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "EntidadEstablecimiento"
    ADD CONSTRAINT "idEntidades" PRIMARY KEY ("idEntidades");


--
-- TOC entry 2314 (class 2606 OID 2011201)
-- Name: idParroquias; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "idParroquias" PRIMARY KEY ("idParroquias");


--
-- TOC entry 2317 (class 2606 OID 2011230)
-- Name: idProvincias; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "idProvincias" PRIMARY KEY ("idProvincias");


--
-- TOC entry 2319 (class 2606 OID 2011257)
-- Name: idRegiones; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Regiones"
    ADD CONSTRAINT "idRegiones" PRIMARY KEY ("idRegiones");


--
-- TOC entry 2322 (class 2606 OID 2011301)
-- Name: idRespuestas; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Respuestas"
    ADD CONSTRAINT "idRespuestas" PRIMARY KEY ("idRespuestas");


--
-- TOC entry 2325 (class 2606 OID 2011321)
-- Name: idSectorSalud; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "SectorSalud"
    ADD CONSTRAINT "idSectorSalud" PRIMARY KEY ("idSectorSalud");


--
-- TOC entry 2328 (class 2606 OID 2011342)
-- Name: idTipoEs; Type: CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "TipoEstablecimiento"
    ADD CONSTRAINT "idTipoEs" PRIMARY KEY ("idTipoEs");


--
-- TOC entry 2300 (class 1259 OID 2012087)
-- Name: fki_CantonesProvincia; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_CantonesProvincia" ON "Cantones" USING btree ("idProvincia");


--
-- TOC entry 2306 (class 1259 OID 2012178)
-- Name: fki_CuestionarioPregunta; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_CuestionarioPregunta" ON "Cuestionario" USING btree ("idPreguntas");


--
-- TOC entry 2320 (class 1259 OID 2012400)
-- Name: fki_CuestionarioRespuesta; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_CuestionarioRespuesta" ON "Respuestas" USING btree ("idCuestionario");


--
-- TOC entry 2309 (class 1259 OID 2012208)
-- Name: fki_EntidadTipo; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_EntidadTipo" ON "EntidadEstablecimiento" USING btree ("idTipo");


--
-- TOC entry 2312 (class 1259 OID 2012238)
-- Name: fki_ParroquiaCanton; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_ParroquiaCanton" ON "Parroquias" USING btree ("idCantones");


--
-- TOC entry 2303 (class 1259 OID 2012144)
-- Name: fki_ParroquiaClaseEstable; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_ParroquiaClaseEstable" ON "ClasesEstablecimiento" USING btree ("idParroquias");


--
-- TOC entry 2315 (class 1259 OID 2012266)
-- Name: fki_ProvinciasRegiones; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_ProvinciasRegiones" ON "Provincias" USING btree ("idRegion");


--
-- TOC entry 2323 (class 1259 OID 2012424)
-- Name: fki_SectorEntidad; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_SectorEntidad" ON "SectorSalud" USING btree ("idEntidad");


--
-- TOC entry 2297 (class 1259 OID 2011932)
-- Name: fki_SectorPregunta; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_SectorPregunta" ON "BancoPreguntas" USING btree ("idSector");


--
-- TOC entry 2326 (class 1259 OID 2012454)
-- Name: fki_TipoClases; Type: INDEX; Schema: ResiduosPeligrosos; Owner: postgres
--

CREATE INDEX "fki_TipoClases" ON "TipoEstablecimiento" USING btree ("idClases");


--
-- TOC entry 2330 (class 2606 OID 2012082)
-- Name: CantonesProvincia; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Cantones"
    ADD CONSTRAINT "CantonesProvincia" FOREIGN KEY ("idProvincia") REFERENCES "Provincias"("idProvincias");


--
-- TOC entry 2332 (class 2606 OID 2012173)
-- Name: CuestionarioPregunta; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Cuestionario"
    ADD CONSTRAINT "CuestionarioPregunta" FOREIGN KEY ("idPreguntas") REFERENCES "BancoPreguntas"("idBancoPreguntas");


--
-- TOC entry 2336 (class 2606 OID 2012395)
-- Name: CuestionarioRespuesta; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Respuestas"
    ADD CONSTRAINT "CuestionarioRespuesta" FOREIGN KEY ("idCuestionario") REFERENCES "Cuestionario"("idEncuesta");


--
-- TOC entry 2333 (class 2606 OID 2012203)
-- Name: EntidadTipo; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "EntidadEstablecimiento"
    ADD CONSTRAINT "EntidadTipo" FOREIGN KEY ("idTipo") REFERENCES "TipoEstablecimiento"("idTipoEs");


--
-- TOC entry 2334 (class 2606 OID 2012233)
-- Name: ParroquiaCanton; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Parroquias"
    ADD CONSTRAINT "ParroquiaCanton" FOREIGN KEY ("idCantones") REFERENCES "Cantones"("idCantones");


--
-- TOC entry 2331 (class 2606 OID 2012139)
-- Name: ParroquiaClaseEstable; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "ClasesEstablecimiento"
    ADD CONSTRAINT "ParroquiaClaseEstable" FOREIGN KEY ("idParroquias") REFERENCES "Parroquias"("idParroquias");


--
-- TOC entry 2335 (class 2606 OID 2012261)
-- Name: ProvinciasRegiones; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "Provincias"
    ADD CONSTRAINT "ProvinciasRegiones" FOREIGN KEY ("idRegion") REFERENCES "Regiones"("idRegiones");


--
-- TOC entry 2337 (class 2606 OID 2012419)
-- Name: SectorEntidad; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "SectorSalud"
    ADD CONSTRAINT "SectorEntidad" FOREIGN KEY ("idEntidad") REFERENCES "EntidadEstablecimiento"("idEntidades");


--
-- TOC entry 2329 (class 2606 OID 2011927)
-- Name: SectorPregunta; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "BancoPreguntas"
    ADD CONSTRAINT "SectorPregunta" FOREIGN KEY ("idSector") REFERENCES "SectorSalud"("idSectorSalud");


--
-- TOC entry 2338 (class 2606 OID 2012449)
-- Name: TipoClases; Type: FK CONSTRAINT; Schema: ResiduosPeligrosos; Owner: postgres
--

ALTER TABLE ONLY "TipoEstablecimiento"
    ADD CONSTRAINT "TipoClases" FOREIGN KEY ("idClases") REFERENCES "ClasesEstablecimiento"("idClasesEs");


--
-- TOC entry 2470 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2016-11-27 01:16:34 ECT

--
-- PostgreSQL database dump complete
--

