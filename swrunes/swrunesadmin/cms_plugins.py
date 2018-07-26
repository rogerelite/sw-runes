from cms.plugin_base import CMSPluginBase
from cms.plugin_pool import plugin_pool
from cms.models.pluginmodel import CMSPlugin
from .models import CatalogoMonstro, Runa, AtributoRuna

@plugin_pool.register_plugin
class CatalogoMonstroPlugin(CMSPluginBase):
    model = CatalogoMonstro
    module = "Genérico"
    name = "Catálogo de monstro"
    render_template = "swrunesadmin/catalogo_monstro.html"
    allow_children = True
    child_classes = ['PicturePlugin', 'RunaPlugin']

    def render(self, context, instance, placeholder):
        context.update( {'instance':instance})
        return context 

@plugin_pool.register_plugin
class GroupCatalogoPlugin(CMSPluginBase):
    module = "Agrupadores"
    name = "Agrupador Catálogo de monstro"
    render_template = "swrunesadmin/grupo_catalogo.html"
    allow_children = True
    child_classes = ['CatalogoMonstroPlugin']

    def render(self, context, instance, placeholder):
        context.update( {'instance':instance})
        return context

@plugin_pool.register_plugin
class RunaPlugin(CMSPluginBase):
    model = Runa
    module = "Genérico"
    name = "Runa"
    render_template = "swrunesadmin/runa.html"
    allow_children = True
    child_classes = ['PicturePlugin', 'GroupAtributeRunePlugin']

    def render(self, context, instance, placeholder):
        context.update( {'instance':instance})
        return context 

@plugin_pool.register_plugin
class GroupAtributeRunePlugin(CMSPluginBase):
    module = "Agrupadores"
    name = "Agrupador de atributos de runas"
    render_template = "swrunesadmin/grupo_atributos_runa.html"
    allow_children = True
    child_classes = ['AtributoRunaPlugin']

    def render(self, context, instance, placeholder):
        context.update( {'instance':instance})
        return context

@plugin_pool.register_plugin
class AtributoRunaPlugin(CMSPluginBase):
    model = AtributoRuna
    module = "Genérico"
    name = "Atributo da runa"
    render_template = "swrunesadmin/atributo_runa.html"
    allow_children = False

    def render(self, context, instance, placeholder):
        context.update( {'instance':instance})
        return context 