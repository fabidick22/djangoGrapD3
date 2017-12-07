# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals
from django.db import models
from django.utils.encoding import force_bytes

from django.db import models

anio = (('2013', '2013'), ('2014', '2014'), ('2015', '2015'),)


class Bancopreguntas(models.Model):
    idbancopregunta = models.AutoField(db_column='idBancoPregunta', primary_key=True)  # Field name made lowercase.
    pregunta = models.CharField(db_column='Pregunta', max_length=400)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'BancoPreguntas'

    def __str__(self):
        return '%s' % (self.pregunta).encode('ascii', 'ignore').decode('utf-8')


class Cantones(models.Model):
    idcanton = models.AutoField(db_column='idCanton', primary_key=True)  # Field name made lowercase.
    canton = models.CharField(db_column='Canton', max_length=45)  # Field name made lowercase.
    codigo = models.CharField(db_column='Codigo', max_length=10)  # Field name made lowercase.
    idprovincia = models.ForeignKey('Provincias', db_column='idProvincia')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Cantones'

    def __str__(self):
        return '%s' % force_bytes(self.canton)


class Cuestionarios(models.Model):
    idencuesta = models.AutoField(db_column='idEncuesta', primary_key=True)  # Field name made lowercase.
    encuesta = models.CharField(db_column='Encuesta', max_length=10)  # Field name made lowercase.
    anio = models.IntegerField(db_column='Anio')  # Field name made lowercase.
    idestable = models.IntegerField(db_column='idEstable', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Cuestionarios'

    def __str__(self):
        return '%s' % force_bytes(self.encuesta)


class Entidades(models.Model):
    identidad = models.AutoField(db_column='idEntidad', primary_key=True)  # Field name made lowercase.
    entidad = models.CharField(db_column='Entidad', max_length=50)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Entidades'

    def __str__(self):
        return '%s' % (self.entidad).encode('ascii', 'ignore').decode('utf-8')


class Establecimientos(models.Model):
    idestablecimiento = models.AutoField(db_column='idEstablecimiento', primary_key=True)  # Field name made lowercase.
    establecimiento = models.CharField(db_column='Establecimiento', max_length=80)  # Field name made lowercase.
    idtipo = models.ForeignKey('Tipos', db_column='idTipo', blank=True, null=True)  # Field name made lowercase.
    idsector = models.ForeignKey('Sectores', db_column='idSector', blank=True, null=True)  # Field name made lowercase.
    identidad = models.ForeignKey(Entidades, db_column='idEntidad', blank=True, null=True)  # Field name made lowercase.
    idparroquias = models.ForeignKey('Parroquias', db_column='idParroquias', blank=True,
                                     null=True)  # Field name made lowercase.
    codigo = models.CharField(db_column='Codigo', max_length=9, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Establecimientos'

    def __str__(self):
        return '%s | %s' % ((self.establecimiento).encode('ascii', 'ignore').decode('utf-8'), self.idparroquias)


class Parroquias(models.Model):
    idparroquias = models.AutoField(db_column='idParroquias', primary_key=True)  # Field name made lowercase.
    parroquia = models.CharField(db_column='Parroquia', max_length=70)  # Field name made lowercase.
    idcanton = models.ForeignKey(Cantones, db_column='idCanton')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Parroquias'

    def __str__(self):
        return '%s' % (self.parroquia).encode('ascii', 'ignore').decode('utf-8')


class Provincias(models.Model):
    idprovincia = models.AutoField(db_column='idProvincia', primary_key=True)  # Field name made lowercase.
    provincia = models.CharField(db_column='Provincia', max_length=45, blank=True,
                                 null=True)  # Field name made lowercase.
    codigoprovincia = models.CharField(db_column='CodigoProvincia', max_length=9, blank=True,
                                       null=True)  # Field name made lowercase.
    longitudprovincia = models.CharField(db_column='LongitudProvincia', max_length=15)  # Field name made lowercase.
    latitudprovincia = models.CharField(db_column='LatitudProvincia', max_length=15)  # Field name made lowercase.
    idregion = models.ForeignKey('Regiones', db_column='idRegion', blank=True, null=True)  # Field name made lowercase.
    codprovincia = models.CharField(db_column='CodProvincia', max_length=9, blank=True,
                                    null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Provincias'

    def __str__(self):
        return '%s' % force_bytes(self.provincia)


class Regiones(models.Model):
    idregion = models.AutoField(db_column='idRegion', primary_key=True)  # Field name made lowercase.
    region = models.CharField(db_column='Region', max_length=30, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Regiones'

    def __str__(self):
        return '%s' % force_bytes(self.region)


class Respuesta(models.Model):
    idrespuesta = models.AutoField(db_column='idRespuesta', primary_key=True)  # Field name made lowercase.
    respuesta = models.CharField(db_column='Respuesta', max_length=15, blank=True,
                                 null=True)  # Field name made lowercase.
    idpregunta = models.ForeignKey(Bancopreguntas, db_column='idPregunta', blank=True,
                                   null=True)  # Field name made lowercase.
    idestablecimiento = models.ForeignKey(Establecimientos, db_column='idEstablecimiento', blank=True,
                                          null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Respuesta'

    def __str__(self):
        return '%s' % force_bytes(self.respuesta)


class Sectores(models.Model):
    idsector = models.AutoField(db_column='idSector', primary_key=True)  # Field name made lowercase.
    sector = models.CharField(db_column='Sector', max_length=40)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Sectores'

    def __str__(self):
        return '%s' % (self.sector).encode('ascii', 'ignore').decode('utf-8')


class Tipos(models.Model):
    idtipo = models.AutoField(db_column='idTipo', primary_key=True)  # Field name made lowercase.
    tipo = models.CharField(db_column='Tipo', max_length=40)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'Tipos'

    def __str__(self):
        return '%s' % (self.tipo).encode('ascii', 'ignore').decode('utf-8')


class Cuestestablecimiento(models.Model):
    idcuestestablecimiento = models.AutoField(db_column='idcuestEstablecimiento',
                                              primary_key=True)  # Field name made lowercase.
    idcuestionario = models.ForeignKey(Cuestionarios, db_column='idCuestionario')  # Field name made lowercase.
    idestablecimiento = models.ForeignKey(Establecimientos, db_column='idEstablecimiento')  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cuestEstablecimiento'

    def __str__(self):
        return '%s' % (self.idcuestionario)


class Cuestpregunta(models.Model):
    idcuestpregunta = models.AutoField(db_column='idcuestPregunta', primary_key=True)  # Field name made lowercase.
    idcuestionario = models.ForeignKey(Cuestionarios, db_column='idCuestionario', blank=True,
                                       null=True)  # Field name made lowercase.
    idpregunta = models.ForeignKey(Bancopreguntas, db_column='idPregunta', blank=True,
                                   null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'cuestPregunta'
