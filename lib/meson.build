library_files = [
    'Database' / 'Helpers' / 'StatementBuilder.vala',
    'Database' / 'Interfaces' / 'DatabaseService.vala',
    'Database' / 'Interfaces' / 'Statement.vala',
    'Enums' / 'ProgressType.vala',
    'Model' / 'Book.vala',
    'Structs' / 'Progress.vala',
]

solid_shelf_lib = static_library(
    'solid_shelf_lib', 
    library_files,
    dependencies: shared_deps,
    install: false
)

solid_shelf_lib_dep = declare_dependency(
    include_directories: include_directories('.'),
    link_with: solid_shelf_lib,
)
