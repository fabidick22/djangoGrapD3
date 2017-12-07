# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gpResiduos', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='bancopreguntas',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='cantones',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='cuestestablecimiento',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='cuestionarios',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='cuestpregunta',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='entidades',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='establecimientos',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='parroquias',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='provincias',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='regiones',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='respuesta',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='sectores',
            options={'managed': True},
        ),
        migrations.AlterModelOptions(
            name='tipos',
            options={'managed': True},
        ),
    ]
