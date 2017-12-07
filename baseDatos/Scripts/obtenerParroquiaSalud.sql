SELECT "Region",
"Canton",
"Provincia",
"LongitudProvincia",
"LatitudProvincia",
"Parroquia",
"Clase", 
"Tipo", 
"Entidad", 
"Sector"
  FROM "residuosPeligrosos"."Regiones",
  "residuosPeligrosos"."Cantones",
  "residuosPeligrosos"."Provincias",
  "residuosPeligrosos"."Parroquias",
  "residuosPeligrosos"."Salud", 
  "residuosPeligrosos"."ClasesTiposEs", 
  "residuosPeligrosos"."ClasesEstablecimiento",
  "residuosPeligrosos"."TipoEstablecimiento",
  "residuosPeligrosos"."EntidadSectorEs",
  "residuosPeligrosos"."EntidadEstablecimiento",
  "residuosPeligrosos"."SectorEstablecimiento",
  "residuosPeligrosos"."ParroquiaSalud"
  where 
  "residuosPeligrosos"."ParroquiaSalud"."idParroquia" = "residuosPeligrosos"."Parroquias"."idParroquias" and
  "residuosPeligrosos"."ParroquiaSalud"."idSalud" = "residuosPeligrosos"."Salud"."idSalud" and
  "residuosPeligrosos"."Provincias"."idRegion" = "residuosPeligrosos"."Regiones"."idRegiones" and
  "residuosPeligrosos"."Cantones"."idProvincia" = "residuosPeligrosos"."Provincias"."idProvincias" and
  "residuosPeligrosos"."Cantones"."idCantones" = "residuosPeligrosos"."Parroquias"."idCanton" and
  "residuosPeligrosos"."Salud"."idClasesTipos" = "residuosPeligrosos"."ClasesTiposEs"."idClaseTipo" and
  "residuosPeligrosos"."ClasesTiposEs"."idClase" =  "residuosPeligrosos"."ClasesEstablecimiento"."idClases" and
  "residuosPeligrosos"."ClasesTiposEs"."idTipo" =  "residuosPeligrosos"."TipoEstablecimiento"."idTipo" and 
  "residuosPeligrosos"."Salud"."idEntidadSector" = "residuosPeligrosos"."EntidadSectorEs"."idEntidadSector" and
  "residuosPeligrosos"."EntidadSectorEs"."idEntidad" = "residuosPeligrosos"."EntidadEstablecimiento"."idEntidad" and
  "residuosPeligrosos"."EntidadSectorEs"."idSector" = "residuosPeligrosos"."SectorEstablecimiento"."idSector"
