
if get_option('tests')
    test_sources = [
        'UnitTests.vala'
    ]

    test_dependencies = [
        shared_deps,
        solid_shelf_lib_dep,
    ]

    test_executable = executable(
        'solid-shelf-tests', 
        test_sources,
        dependencies: test_dependencies,
    )

    test('solid-shelf-tests', test_executable)

endif
