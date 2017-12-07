SELECT "Pregunta",
"Encuesta",
"Anio"
  FROM "residuosPeligrosos"."PreguntaCuestionario","residuosPeligrosos"."BancoPreguntas",
  "residuosPeligrosos"."Cuestionario"
  where "residuosPeligrosos"."PreguntaCuestionario"."idBancoPregunta" =
	"residuosPeligrosos"."BancoPreguntas"."idBancoPregunta"
  and "residuosPeligrosos"."PreguntaCuestionario"."idCuestionario" =
	"residuosPeligrosos"."Cuestionario"."idEncuesta";
