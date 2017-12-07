SELECT "idSalud",
"Clase", 
"Tipo", 
"Entidad", 
"Sector"
  FROM "residuosPeligrosos"."Salud", 
  "residuosPeligrosos"."ClasesTiposEs", 
  "residuosPeligrosos"."ClasesEstablecimiento",
  "residuosPeligrosos"."TipoEstablecimiento",
  "residuosPeligrosos"."EntidadSectorEs",
  "residuosPeligrosos"."EntidadEstablecimiento",
  "residuosPeligrosos"."SectorEstablecimiento"
  where 
  "residuosPeligrosos"."Salud"."idClasesTipos" = "residuosPeligrosos"."ClasesTiposEs"."idClaseTipo" and
  "residuosPeligrosos"."ClasesTiposEs"."idClase" =  "residuosPeligrosos"."ClasesEstablecimiento"."idClases" and
  "residuosPeligrosos"."ClasesTiposEs"."idTipo" =  "residuosPeligrosos"."TipoEstablecimiento"."idTipo" and 
  "residuosPeligrosos"."Salud"."idEntidadSector" = "residuosPeligrosos"."EntidadSectorEs"."idEntidadSector" and
  "residuosPeligrosos"."EntidadSectorEs"."idEntidad" = "residuosPeligrosos"."EntidadEstablecimiento"."idEntidad" and
  "residuosPeligrosos"."EntidadSectorEs"."idSector" = "residuosPeligrosos"."SectorEstablecimiento"."idSector"
