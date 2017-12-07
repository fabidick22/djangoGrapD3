SELECT "Respuesta",
"Entidad",
"Pregunta",
"Encuesta",
"Anio"
  FROM "residuosPeligrosos"."RespuestaPregunta",
  "residuosPeligrosos"."PreguntaCuestionario",
  "residuosPeligrosos"."EntidadEstablecimiento",
  "residuosPeligrosos"."BancoPreguntas", 
  "residuosPeligrosos"."Cuestionario"
  where "residuosPeligrosos"."RespuestaPregunta"."idPreguntaEncuesta" = "residuosPeligrosos"."PreguntaCuestionario"."idPreguntaCuestionario" and
"residuosPeligrosos"."PreguntaCuestionario"."idBancoPregunta" = "residuosPeligrosos"."BancoPreguntas"."idBancoPregunta" and
"residuosPeligrosos"."PreguntaCuestionario"."idCuestionario" = "residuosPeligrosos"."Cuestionario"."idEncuesta" and
  "residuosPeligrosos"."RespuestaPregunta"."idSalud" = "residuosPeligrosos"."EntidadEstablecimiento"."idEntidad";
