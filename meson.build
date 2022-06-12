project(
    'com.github.colinkiama.solidshelf',
    'vala',
    'c',
    version: '1.0.0'
)

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format(meson.project_name()), language: 'c')

i18n = import('i18n')
gnome = import('gnome')

shared_deps = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
]

subdir('lib')
subdir('app')
subdir('tests')
