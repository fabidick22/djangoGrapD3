# from __future__ import unicode_literals
from django.shortcuts import render, render_to_response, RequestContext
from django.http import JsonResponse, HttpResponse, Http404
from django.db.models import Count, Avg, Max, Min, Count
from django.template import RequestContext
from gpResiduos.models import *
from django.core import serializers
from . import form as forms
import random
import json
from collections import OrderedDict
import colorsys
import seaborn as sns

flatui = ["#9b59b6", "#3498db", "#95a5a6", "#e74c3c", "#34495e", "#2ecc71",
          "#ff3333", "#ff6e33", "#ff6e33", "#ff6e33", "#ff6e33", "#ff6e33",
          "#33fa81", "#33fab8", "#33fae5", "#33b8fa", "#8d33fa", "#8d33fa",
          "#d159a9", "#59d1b6", "#fa3333", "#fa3333", "#8d33fa", "#8d33fa"]
normalPa = ["#2874a6", "#138d75", "#76d7c4", "#e8f6f3", "#5f6a6a", "#34495e"]
claroPa = ["#fafafa", "#a2d5f2", "#ff7e67", "#07689f"]
azulOscuro = ["#e74c3c", "#1f618d", "#17a589", "#283747", "#b2babb", "#f2f3f4"]
azulClaro = ["#d7655d", "#66baa1", "#e8e8e8", "#40828a", "#85c668"]


def index_view(request):
    ##obtner todos los datos a trabajar ## INICIO
    allPro = Provincias.objects.all()
    sector = Sectores.objects.all()
    enti = Entidades.objects.all()
    canton = Cantones.objects.all()
    totalentidades = enti.count()
    sector2 = Sectores.objects.filter(sector__contains="Privado")
    ##obtner todos los datos a trabajar ## FIN

    i = 0
    estaRes = {}
    estaRes2 = {}
    estable = []
    estable2 = []
    suma = []
    suma2 = []

    ## paletas de colores a utilizar ## INICIO
    color = sns.color_palette("Paired", len(sector))
    colorPro = sns.color_palette("Paired", len(allPro))
    color2 = sns.color_palette(claroPa, len(sector))
    ## paletas de colores a utilizar ## FIN

    establecimientos = Establecimientos.objects.all()
    for sec in sector:
        suma.append(establecimientos.filter(idsector=sec).count())
        suma2.append(establecimientos.filter(idsector__sector__contains="Privado").count())
    totalEstablecimientos = establecimientos.count()
    res = sum(suma)
    res2 = sum(suma2)
    for sec in sector:
        estaRes = {"name": sec.sector, "y": ((Establecimientos.objects.filter(idsector=sec).count() * 100) / res),
                   "color": color.as_hex()[i]}
        i += 1
        estable.append(estaRes)
    i = 0
    for sec in sector2:
        print "####>>", Establecimientos.objects.filter(idsector__idsector=sec.idsector).count()
        estaRes2 = {"name": sec.sector,
                    "y": ((Establecimientos.objects.filter(idsector__idsector=sec.idsector).count() * 100) / res2),
                    "color": color2.as_hex()[i]}
        i += 1
        estable2.append(estaRes2)
    regiones = Regiones.objects.all()
    provincias = []
    datoSend = []
    dicProvincias = {}
    dicPro = {}
    listPromedio = []
    i = 0
    cantoCount = []
    for provi in allPro:
        numero = establecimientos.filter(idparroquias__idcanton__idprovincia=provi).count()
        for can in canton:
            cantoCount.append(establecimientos.filter(idparroquias__idcanton__canton=can.idcanton,
                                                      idparroquias__idcanton__idprovincia=provi).count())
        a = avg(cantoCount)
        dicPro = {"code": provi.codprovincia, "name": provi.provincia, "value": numero, "color": colorPro.as_hex()[i],
                  "value2": a}
        cantoCount = []
        i += 1
        datoSend.append(dicPro)
        listPromedio.append(numero)
        dicProvincias = {"region": provi.idregion_id, "provincia": provi, "valor": numero}
        # if provi.idregion_id == 3 or provi.idregion_id == 4:
        #    print "region", provi.idregion_id, "provincia", provi, "valor",numero
        provincias.append(dicProvincias)
    jsonBody = json.dumps(datoSend)
    promedio = avg(listPromedio)
    resultadoRegiones = []
    resultadoRegionesDic = {}
    for re in regiones:
        for pro in provincias:
            if re.idregion == pro.get("region"):
                numero += pro.get("valor")
                # suma=re.objects.filter(idregion=pro)
        resultadoRegionesDic = {"region": re.region, "valor": numero}
        resultadoRegiones.append(resultadoRegionesDic)
        numero = 0

    establecimientos2 = json.dumps(estable2)
    establecimientos = json.dumps(estable)

    ## obtener datos de residuos peligrsos ## INICIO
    ban_pre = Bancopreguntas.objects.all()
    ban = ban_pre.get(idbancopregunta=2)
    banCorto = ban_pre.get(idbancopregunta=8)
    banEspeci = ban_pre.get(idbancopregunta=9)
    banEncine = ban_pre.get(idbancopregunta=18)

    pre_respuestas = Respuesta.objects.all()
    resPreguntas = pre_respuestas.filter(idpregunta=ban)
    resPreguntasCorto = pre_respuestas.filter(idpregunta=banCorto)
    resPreguntasEspeci = pre_respuestas.filter(idpregunta=banEspeci)
    resPreguntasEncine = pre_respuestas.filter(idpregunta=banEncine)
    print "############"
    resduosList = []
    resduosCortoList = []
    resduosEspeciList = []
    resduosEncineList = []
    for r in resPreguntas:
        resduosList.append(int(r.respuesta))
    for r2 in resPreguntasCorto:
        resduosCortoList.append(int(r2.respuesta))
    for r3 in resPreguntasEspeci:
        resduosEspeciList.append(int(r3.respuesta))
    for r4 in resPreguntasEncine:
        resduosEncineList.append(int(r4.respuesta))
    print resduosEncineList
    encinerados = avg(resduosEncineList)
    especiales = avg(resduosEspeciList)
    corto = avg(resduosCortoList)
    residuos = avg(resduosList)
    ## obtener datos de residuos peligrsos ## FIN
    return render(request, 'index.html',
                  {"esta": establecimientos, "esta2": establecimientos2, "regiones": resultadoRegiones,
                   "total": totalEstablecimientos, "promedio": promedio, "entidades": totalentidades,
                   "pro": allPro, "jsonD": jsonBody, "resiList": residuos, "cortopulzante": corto,
                   "especiales": especiales,
                   "incinerados": encinerados})


def tem(request):
    return render(request, 'base.html', {"esta": "s"})


def datos(request):
    i = 0
    allPro = Provincias.objects.all().order_by('codprovincia')
    establecimientos = Establecimientos.objects.all()
    parroCont = []
    dicPro = OrderedDict()
    datoSend = []

    color = sns.color_palette(flatui, n_colors=len(allPro))
    for pro in allPro:
        numero = establecimientos.filter(idparroquias__idcanton__idprovincia=pro).count()
        dicPro = {"code": pro.codprovincia, "name": pro.provincia, "value": numero, "color": color.as_hex()[i]}
        i += 1
        datoSend.append(dicPro)

    jsonBody = json.dumps(datoSend)

    # if(request.method=="POST" or request.POST['anio'] != "2013"):
    anio = "0"
    form1 = forms.formDatosDetalle()
    if (request.method == "POST"):
        anio = request.POST['anio']
    if (request.method == "POST" and anio != "2013"):
        print "HE PASADOOOOOOOOOOO###"
        form1 = forms.formDatosDetalle()
        jsonBody = []
        pro = {}
    elif (request.method == "GET"):
        form1 = forms.formDatosDetalle()

    return render(request, 'datos.html',
                  {"jsonD": jsonBody, "formularioD": form1, "datosMapa": datoSend, "pro": allPro})


def info(request):
    sectoresAll = Sectores.objects.all()
    provinciasAll = Provincias.objects.all()
    estableAll = Establecimientos.objects.all()
    optionsList = ["Sector Privado Con Fines De Lucro", "Sector Publico", "Sector Privado Sin Fines De Lucro"]
    options = ["Numero Establecimientos", "Uso INEC", "R.P. Puesto en Celdas", "Numero de Nada"]
    dicSectores1 = {}
    listSectores1 = []
    dicSectores2 = {}
    listSectores2 = []
    dicSectores3 = {}
    listSectores3 = []
    listaSend = []

    ##provincias
    listaEstable = []
    for esta in sectoresAll:
        es = Establecimientos.objects.filter(idsector__idsector=esta.idsector).count()
        listaEstable.append(es)

    dd = listaEstable[0] * 100 / sum(listaEstable)
    dicSectores1 = {"axis": options[0], "value": float(dd) / 100}
    listSectores1.append(dicSectores1)

    ee = listaEstable[1] * 100 / sum(listaEstable)
    dicSectores2 = {"axis": options[0], "value": float(ee) / 100}
    listSectores2.append(dicSectores2)

    ff = listaEstable[2] * 100 / sum(listaEstable)
    dicSectores3 = {"axis": options[0], "value": float(ff) / 100}
    listSectores3.append(dicSectores3)

    inec = []
    for se in sectoresAll:
        pre1 = Respuesta.objects.filter(idestablecimiento__idsector__idsector=se.idsector, idpregunta_id=5)
        re = pre1.filter(respuesta="SI").count()
        inec.append(re)

    aa = inec[0] * 100 / sum(inec)
    dicSectores1 = {"axis": options[1], "value": float(aa) / 100}
    listSectores1.append(dicSectores1)

    bb = inec[1] * 100 / sum(inec)
    dicSectores2 = {"axis": options[1], "value": float(bb) / 100}
    listSectores2.append(dicSectores2)

    cc = inec[2] * 100 / sum(inec)
    dicSectores3 = {"axis": options[1], "value": float(cc) / 100}
    listSectores3.append(dicSectores3)

    celdas = []
    for se in sectoresAll:
        pre1 = Respuesta.objects.filter(idestablecimiento__idsector__idsector=se.idsector, idpregunta_id=15)
        re = pre1.filter(respuesta="SI").count()
        inec.append(re)

    aa = inec[0] * 100 / sum(inec)
    dicSectores1 = {"axis": options[2], "value": float(aa) / 100}
    listSectores1.append(dicSectores1)

    bb = inec[1] * 100 / sum(inec)
    dicSectores2 = {"axis": options[2], "value": float(bb) / 100}
    listSectores2.append(dicSectores2)

    cc = inec[2] * 100 / sum(inec)
    dicSectores3 = {"axis": options[2], "value": float(cc) / 100}
    listSectores3.append(dicSectores3)

    listaSend.append(listSectores1)
    listaSend.append(listSectores2)
    listaSend.append(listSectores3)

    # jsonD = serializers.serialize("json", listaSend)
    return render(request, 'informativo.html', {"jsonD": listaSend})


def instituciones(request):
    data = Entidades.objects.all()
    jsonD = serializers.serialize("json", data)
    return render(request, 'instituciones.html', {"jsonD": jsonD})


def peligros(request):
    respuesta = Respuesta.objects.all()
    esta = Establecimientos.objects.distinct("establecimiento")
    dicEsta = {}
    lisEsta = []

    for es in esta:
        res = respuesta.filter(idpregunta_id=7, idestablecimiento__idestablecimiento=es.idestablecimiento).count()
        dicEsta = {"country": es.establecimiento, "value": res}
        lisEsta.append(dicEsta)

    jsonD = json.dumps(lisEsta)
    return render(request, 'peligros.html', {"jsonD": jsonD})


def sectores(request):
    sectoresAll = Sectores.objects.all()
    establecimientos = Establecimientos.objects.all()
    entidad = Entidades.objects.all()
    tipos = Tipos.objects.all()
    color = sns.color_palette(azulOscuro, len(sectoresAll))
    color = sns.color_palette(azulClaro, len(tipos))
    i = 0
    listSectores = []
    listSectores2 = []
    dicSectores = {}
    for sec in sectoresAll:
        suma = establecimientos.filter(idsector=sec).count()
        for enti in entidad:
            esta = establecimientos.filter(identidad__entidad=enti, idsector=sec).count()
        dicSectores = {"title": sec.sector, "value": suma, "value2": esta, "color": color.as_hex()[i]}
        i += 1
        listSectores.append(dicSectores)
        listSectores2.append(sec.sector)
    jsonSectores = json.dumps(listSectores)

    dicTipos = {}
    lisTipos = []
    i = 0
    for t in tipos:
        cont = Establecimientos.objects.filter(idtipo_id=t.idtipo).count()
        dicTipos = {"country": t.tipo, "visits": cont, "colot": color.as_hex()[i]}
        i += 1
        lisTipos.append(dicTipos)
    jsonTipos = json.dumps(lisTipos)
    return render(request, 'sectores.html', {"jsonD": jsonSectores, "listSec": listSectores2, "listaTipos": jsonTipos})


def avg(l):
    return '%.0f' % (sum(l, 0) / len(l))
