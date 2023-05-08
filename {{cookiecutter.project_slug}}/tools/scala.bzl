load("@io_bazel_rules_scala//scala:scala.bzl", "setup_scala_toolchain")

setup_scala_toolchain(
    name = "project_scala",
    # configure toolchain dependecies
    parser_combinators_deps = [
        "@ext//org/scala_lang/modules:scala_parser_combinators",
    ],
    scala_compile_classpath = [
        "@ext//org/scala_lang:scala_compiler",
        "@ext//org/scala_lang:scala_library",
        "@ext//org/scala_lang:scala_reflect",
    ],
    scala_library_classpath = [
        "@ext//org/scala_lang:scala_library",
        "@ext//org/scala_lang:scala_reflect",
    ],
    scala_macro_classpath = [
        "@ext//org/scala_lang:scala_library",
        "@ext//org/scala_lang:scala_reflect",
    ],
    scala_xml_deps = [
        "@ext//org/scala_lang/modules:scala_xml",
    ],
    # example of setting attribute values
    scalacopts = ["-Ywarn-unused"],
    unused_dependency_checker_mode = "off",
    visibility = ["//visibility:public"]
)
