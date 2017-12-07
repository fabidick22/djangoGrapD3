from django.contrib import admin
from gpResiduos.models import *


class bancoPreguntas(admin.ModelAdmin):
    list_display = ("idbancopregunta", "pregunta")


class cantones(admin.ModelAdmin):
    list_display = ("idcanton", "canton", "codigo", "idprovincia")


# class tipo(admin.ModelAdmin):
#    list_display = ("idclasetipo", "idclase", "idtipo")

class cuestionarios(admin.ModelAdmin):
    list_display = ("idencuesta", "encuesta", "anio", "idestable")


class entidades(admin.ModelAdmin):
    list_display = ("identidad", "entidad")


class establecimientos(admin.ModelAdmin):
    list_display = ("idestablecimiento", "establecimiento", "idtipo", "idsector", "identidad", "idparroquias", "codigo")


# class sector(admin.ModelAdmin):
#    list_display = ("identidadsector", "identidad", "idsector")

# class parroquiaSa(admin.ModelAdmin):
#    list_display = ("idparroquiasalud", "idparroquia", "idsalud")

class parroquias(admin.ModelAdmin):
    list_display = ("idparroquias", "parroquia", "idcanton")


# class preCuestionario(admin.ModelAdmin):
#    list_display = ("idpreguntacuestionario", "idbancopregunta", "idcuestionario")

class provincias(admin.ModelAdmin):
    list_display = (
        "idprovincia", "provincia", "codigoprovincia", "longitudprovincia", "latitudprovincia", "idregion",
        "codprovincia")


class regiones(admin.ModelAdmin):
    list_display = ("idregion", "region")


class respuesta(admin.ModelAdmin):
    list_display = ("idrespuesta", "respuesta", "idpregunta")


# class salud(admin.ModelAdmin):
#    list_display = ("idsalud", "idclasestipos", "identidadsector")

class sectores(admin.ModelAdmin):
    list_display = ("idsector", "sector")


class tipos(admin.ModelAdmin):
    list_display = ("idtipo", "tipo")


class cuestEstablecimiento(admin.ModelAdmin):
    list_display = ("idcuestestablecimiento", "idcuestionario", "idestablecimiento")


class cuestPregunta(admin.ModelAdmin):
    list_display = ("idcuestpregunta", "idcuestionario", "idpregunta")


admin.site.register(Bancopreguntas, bancoPreguntas)
admin.site.register(Cantones, cantones)
# admin.site.register(Clasesestablecimiento, establecimiento)
# admin.site.register(Clasestiposes, tipo)
# admin.site.register(Clasestiposes)
admin.site.register(Cuestionarios, cuestionarios)
admin.site.register(Entidades, entidades)
admin.site.register(Establecimientos, establecimientos)
admin.site.register(Parroquias, parroquias)
admin.site.register(Provincias, provincias)
admin.site.register(Regiones, regiones)
admin.site.register(Respuesta, respuesta)
admin.site.register(Sectores, sectores)
admin.site.register(Tipos, tipos)
admin.site.register(Cuestestablecimiento, cuestEstablecimiento)
admin.site.register(Cuestpregunta, cuestPregunta)
