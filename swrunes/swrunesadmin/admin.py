# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.contrib import admin

from .models import Runa, AtributoRuna

# Registrar aqui caso queira que seja visivel no menu de admin, como no exemplo abaixo.

admin.site.register(Runa)
admin.site.register(AtributoRuna)