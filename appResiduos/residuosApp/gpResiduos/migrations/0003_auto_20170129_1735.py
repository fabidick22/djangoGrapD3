# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime
from django.utils.timezone import utc


class Migration(migrations.Migration):

    dependencies = [
        ('gpResiduos', '0002_auto_20170129_1735'),
    ]

    operations = [
        #migrations.AddField(
        #    model_name='cantones',
        #    name='idprovincia',
        #    field=models.ForeignKey(db_column='idProvincia', to='gpResiduos.Provincias'),
        #    preserve_default=False,
        #),
        #migrations.AddField(
        #    model_name='cuestestablecimiento',
        #    name='idcuestionario',
        #    field=models.ForeignKey(db_column='idCuestionario', to='gpResiduos.Cuestionarios'),
        #    preserve_default=False,
        #),
        #migrations.AddField(
        #    model_name='cuestestablecimiento',
        #    name='idestablecimiento',
        #    field=models.ForeignKey(db_column='idEstablecimiento', to='gpResiduos.Establecimientos'),
        #    preserve_default=False,
        #),
        #migrations.AddField(
        #    model_name='cuestpregunta',
        #    name='idcuestionario',
        #    field=models.ForeignKey(db_column='idCuestionario', blank=True, to='gpResiduos.Cuestionarios', null=True),
        #),
        #migrations.AddField(
        #    model_name='cuestpregunta',
        #    name='idpregunta',
        #    field=models.ForeignKey(db_column='idPregunta', blank=True, to='gpResiduos.Bancopreguntas', null=True),
        #),
        #migrations.AddField(
        #    model_name='establecimientos',
        #    name='identidad',
        #    field=models.ForeignKey(db_column='idEntidad', blank=True, to='gpResiduos.Entidades', null=True),
        #),
        #migrations.AddField(
        #    model_name='establecimientos',
        #    name='idparroquias',
        #    field=models.ForeignKey(db_column='idParroquias', blank=True, to='gpResiduos.Parroquias', null=True),
        #),
        #migrations.AddField(
        #    model_name='establecimientos',
        #    name='idsector',
        #    field=models.ForeignKey(db_column='idSector', blank=True, to='gpResiduos.Sectores', null=True),
        #),
        #migrations.AddField(
        #    model_name='establecimientos',
        #    name='idtipo',
        #    field=models.ForeignKey(db_column='idTipo', blank=True, to='gpResiduos.Tipos', null=True),
        #),
        #migrations.AddField(
        #    model_name='parroquias',
        #    name='idcanton',
        #    field=models.ForeignKey(db_column='idCanton', default=1, to='gpResiduos.Cantones'),
        #    preserve_default=False,
        #),
        #migrations.AddField(
        #    model_name='provincias',
        #    name='idregion',
        #    field=models.ForeignKey(db_column='idRegion', blank=True, to='gpResiduos.Regiones', null=True),
        #),
        #migrations.AddField(
        #    model_name='respuesta',
        #    name='idestablecimiento',
        #    field=models.ForeignKey(db_column='idEstablecimiento', blank=True, to='gpResiduos.Establecimientos', null=True),
        #),
        #migrations.AddField(
        #    model_name='respuesta',
        #    name='idpregunta',
        #    field=models.ForeignKey(db_column='idPregunta', blank=True, to='gpResiduos.Bancopreguntas', null=True),
        #),
        migrations.AlterField(
            model_name='bancopreguntas',
            name='idbancopregunta',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idBancoPregunta'),
        ),
        migrations.AlterField(
            model_name='cantones',
            name='idcanton',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idCanton'),
        ),
        migrations.AlterField(
            model_name='cuestestablecimiento',
            name='idcuestestablecimiento',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idcuestEstablecimiento'),
        ),
        migrations.AlterField(
            model_name='cuestionarios',
            name='idencuesta',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idEncuesta'),
        ),
        migrations.AlterField(
            model_name='cuestpregunta',
            name='idcuestpregunta',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idcuestPregunta'),
        ),
        migrations.AlterField(
            model_name='entidades',
            name='identidad',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idEntidad'),
        ),
        migrations.AlterField(
            model_name='establecimientos',
            name='idestablecimiento',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idEstablecimiento'),
        ),
        migrations.AlterField(
            model_name='parroquias',
            name='idparroquias',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idParroquias'),
        ),
        migrations.AlterField(
            model_name='provincias',
            name='idprovincia',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idProvincia'),
        ),
        migrations.AlterField(
            model_name='regiones',
            name='idregion',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idRegion'),
        ),
        migrations.AlterField(
            model_name='respuesta',
            name='idrespuesta',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idRespuesta'),
        ),
        migrations.AlterField(
            model_name='sectores',
            name='idsector',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idSector'),
        ),
        migrations.AlterField(
            model_name='tipos',
            name='idtipo',
            field=models.AutoField(serialize=False, primary_key=True, db_column='idTipo'),
        ),
    ]
