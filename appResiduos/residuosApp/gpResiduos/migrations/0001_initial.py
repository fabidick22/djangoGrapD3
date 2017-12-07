# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bancopreguntas',
            fields=[
                ('idbancopregunta', models.IntegerField(serialize=False, primary_key=True, db_column='idBancoPregunta')),
                ('pregunta', models.CharField(max_length=400, db_column='Pregunta')),
            ],
            options={
                'db_table': 'BancoPreguntas',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cantones',
            fields=[
                ('idcanton', models.IntegerField(serialize=False, primary_key=True, db_column='idCanton')),
                ('canton', models.CharField(max_length=45, db_column='Canton')),
                ('codigo', models.CharField(max_length=10, db_column='Codigo')),
            ],
            options={
                'db_table': 'Cantones',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cuestestablecimiento',
            fields=[
                ('idcuestestablecimiento', models.IntegerField(serialize=False, primary_key=True, db_column='idcuestEstablecimiento')),
            ],
            options={
                'db_table': 'cuestEstablecimiento',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cuestionarios',
            fields=[
                ('idencuesta', models.IntegerField(serialize=False, primary_key=True, db_column='idEncuesta')),
                ('encuesta', models.CharField(max_length=10, db_column='Encuesta')),
                ('anio', models.IntegerField(db_column='Anio')),
                ('idestable', models.IntegerField(null=True, db_column='idEstable', blank=True)),
            ],
            options={
                'db_table': 'Cuestionarios',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Cuestpregunta',
            fields=[
                ('idcuestpregunta', models.IntegerField(serialize=False, primary_key=True, db_column='idcuestPregunta')),
            ],
            options={
                'db_table': 'cuestPregunta',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Entidades',
            fields=[
                ('identidad', models.IntegerField(serialize=False, primary_key=True, db_column='idEntidad')),
                ('entidad', models.CharField(max_length=50, db_column='Entidad')),
            ],
            options={
                'db_table': 'Entidades',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Establecimientos',
            fields=[
                ('idestablecimiento', models.IntegerField(serialize=False, primary_key=True, db_column='idEstablecimiento')),
                ('establecimiento', models.CharField(max_length=80, db_column='Establecimiento')),
                ('codigo', models.CharField(max_length=9, null=True, db_column='Codigo', blank=True)),
            ],
            options={
                'db_table': 'Establecimientos',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Parroquias',
            fields=[
                ('idparroquias', models.IntegerField(serialize=False, primary_key=True, db_column='idParroquias')),
                ('parroquia', models.CharField(max_length=70, db_column='Parroquia')),
            ],
            options={
                'db_table': 'Parroquias',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Provincias',
            fields=[
                ('idprovincia', models.IntegerField(serialize=False, primary_key=True, db_column='idProvincia')),
                ('provincia', models.CharField(max_length=45, null=True, db_column='Provincia', blank=True)),
                ('codigoprovincia', models.CharField(max_length=9, null=True, db_column='CodigoProvincia', blank=True)),
                ('longitudprovincia', models.CharField(max_length=15, db_column='LongitudProvincia')),
                ('latitudprovincia', models.CharField(max_length=15, db_column='LatitudProvincia')),
                ('codprovincia', models.CharField(max_length=9, null=True, db_column='CodProvincia', blank=True)),
            ],
            options={
                'db_table': 'Provincias',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Regiones',
            fields=[
                ('idregion', models.IntegerField(serialize=False, primary_key=True, db_column='idRegion')),
                ('region', models.CharField(max_length=30, null=True, db_column='Region', blank=True)),
            ],
            options={
                'db_table': 'Regiones',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Respuesta',
            fields=[
                ('idrespuesta', models.IntegerField(serialize=False, primary_key=True, db_column='idRespuesta')),
                ('respuesta', models.CharField(max_length=15, null=True, db_column='Respuesta', blank=True)),
            ],
            options={
                'db_table': 'Respuesta',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Sectores',
            fields=[
                ('idsector', models.IntegerField(serialize=False, primary_key=True, db_column='idSector')),
                ('sector', models.CharField(max_length=40, db_column='Sector')),
            ],
            options={
                'db_table': 'Sectores',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Tipos',
            fields=[
                ('idtipo', models.IntegerField(serialize=False, primary_key=True, db_column='idTipo')),
                ('tipo', models.CharField(max_length=40, db_column='Tipo')),
            ],
            options={
                'db_table': 'Tipos',
                'managed': False,
            },
        ),
    ]
