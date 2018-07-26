from django.db import models
from django.utils.translation import ugettext_lazy as _
from datetime import datetime   
from cms.models import CMSPlugin, Page
from djangocms_text_ckeditor.fields import HTMLField
from djangocms_attributes_field.fields import AttributesField
from .choices import * 

# Create your models here.

class CatalogoMonstro(CMSPlugin):
    title = models.CharField(max_length = 150, verbose_name = _('Nome'))
    description = HTMLField(verbose_name = _('Descrição'), null = True, blank = True)
    
    def __unicode__(self):
        return self.title

    def get_short_description(self):
        return self.title

class Runa(CMSPlugin):
    typerune = models.CharField(max_length = 20, verbose_name = _('Tipo'), choices = TYPE_RUNAS_CHOICES, null = True, blank = True)
    pos = models.CharField(max_length = 1, verbose_name = _('Posição'), choices = POSITION_RUNAS_CHOICES, null = True, blank = True)
    
    def __unicode__(self):
        return self.typerune

    def get_short_description(self):
        return self.typerune

class AtributoRuna(CMSPlugin):
    atribute = models.CharField(max_length = 5, verbose_name = _('Atributo'), choices = ATRIBUTOS_RUNAS_CHOICES, null = True, blank = True)
    active = models.BooleanField(default=True, verbose_name = _('Com %'))
    order = models.CharField(max_length = 20, verbose_name = _('Ordem do atributo'), choices = ORDER_ATRIBUTO_CHOICES, null = True, blank = True)
    
    def __unicode__(self):
        return self.atribute

    def get_short_description(self):
        return self.atribute