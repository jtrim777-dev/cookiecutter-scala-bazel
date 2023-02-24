#load("@io_bazel_rules_scala//scala:scala.bzl", "setup_scala_toolchain")
#
#setup_scala_toolchain(
#    name = "scala_3",
#    # configure toolchain dependecies
##    parser_combinators_deps = [
##        "@maven//:org_scala_lang_modules_scala_parser_combinators_2_12",
##    ],
#    scala_compile_classpath = [
#        "@ext//org/scala_lang:scala_compiler",
#        "@ext//org/scala_lang:scala_library",
#        "@ext//org/scala_lang:scala_reflect",
#    ],
#    scala_library_classpath = [
#        "@ext//org/scala_lang:scala_library",
#        "@ext//org/scala_lang:scala_reflect",
#    ],
#    scala_macro_classpath = [
#        "@ext//org/scala_lang:scala_library",
#        "@ext//org/scala_lang:scala_reflect",
#    ],
#    scala_xml_deps = [
#        "@ext//org/scala_lang/modules:scala_xml",
#    ],
#    # example of setting attribute values
#    scalacopts = ["-Ywarn-unused"],
#    unused_dependency_checker_mode = "off",
#    visibility = ["//visibility:public"]
#)