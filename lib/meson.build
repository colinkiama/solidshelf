library_files = [
    'Enums' / 'ProgressType.vala',
    'Model' / 'Book.vala',
    'Structs' / 'Progress.vala',
]

solid_shelf_lib = static_library(
    'solid_shelf_lib', 
    library_files,
    dependencies: shared_deps,
)

solid_shelf_lib_dep = declare_dependency(
    include_directories: include_directories('.'),
    link_with: solid_shelf_lib,
)
