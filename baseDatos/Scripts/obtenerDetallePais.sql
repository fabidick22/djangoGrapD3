SELECT "Region",
"Canton",
"Provincia",
"LongitudProvincia",
"LatitudProvincia",
"Parroquia"
  FROM "residuosPeligrosos"."Regiones",
  "residuosPeligrosos"."Cantones",
  "residuosPeligrosos"."Provincias",
  "residuosPeligrosos"."Parroquias"
  where "residuosPeligrosos"."Provincias"."idRegion" = "residuosPeligrosos"."Regiones"."idRegiones" and
  "residuosPeligrosos"."Cantones"."idProvincia" = "residuosPeligrosos"."Provincias"."idProvincias" and
  "residuosPeligrosos"."Cantones"."idCantones" = "residuosPeligrosos"."Parroquias"."idCanton"
  
