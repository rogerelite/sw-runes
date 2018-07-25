# -*- coding: utf-8 -*-
# Generated by Django 1.11.14 on 2018-07-25 16:50
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import djangocms_text_ckeditor.fields


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('cms', '0020_old_tree_cleanup'),
    ]

    operations = [
        migrations.CreateModel(
            name='AtributoRuna',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='swrunesadmin_atributoruna', serialize=False, to='cms.CMSPlugin')),
                ('atribute', models.CharField(blank=True, choices=[('atk', 'Atk'), ('hp', 'Hp')], max_length=5, null=True, verbose_name='Atributo')),
                ('active', models.BooleanField(default=True, verbose_name='Com %')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.CreateModel(
            name='CatalogoMonstro',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='swrunesadmin_catalogomonstro', serialize=False, to='cms.CMSPlugin')),
                ('title', models.CharField(max_length=150, verbose_name='Nome')),
                ('description', djangocms_text_ckeditor.fields.HTMLField(blank=True, null=True, verbose_name='Descrição')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.CreateModel(
            name='Runa',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='swrunesadmin_runa', serialize=False, to='cms.CMSPlugin')),
                ('typerune', models.CharField(blank=True, choices=[('despair', 'Despair'), ('revenge', 'Revenge')], max_length=5, null=True, verbose_name='Tipo')),
                ('pos', models.CharField(blank=True, choices=[('1', '1'), ('2', '2'), ('3', '3')], max_length=20, null=True, verbose_name='Posição')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
    ]