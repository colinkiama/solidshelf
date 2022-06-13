source_files = [
    'Application.vala',
    'MainWindow.vala',
    'Widgets' / 'HeaderBar.vala',
    'Constants' / 'Colors.vala',
    'Model' / 'Statement.vala',
    'Services' / 'SqliteDatabaseService.vala',
]

executable(
    meson.project_name(),
    gresource,
    source_files,
    config_header,
    dependencies: [
      dependency('granite', version: '>=5.2.4'),
      dependency('gtk+-3.0'),
      dependency('libhandy-1', version: '>=0.90.0'),
      meson.get_compiler('vala').find_library('posix'),
      shared_deps,
      solid_shelf_lib_dep
    ],
    install: true
)
