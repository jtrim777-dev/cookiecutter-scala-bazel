load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def import_bazeldist():
    http_archive(
        name = "io_bazel_rules_kotlin",
        urls = ["https://github.com/vaticle/rules_kotlin/archive/c2519b00299cff9df22267e8359784e9948dba67.zip"],
        type = "zip",
        strip_prefix = "rules_kotlin-c2519b00299cff9df22267e8359784e9948dba67",
        sha256 = "1455f2ec4bf7ea12d2c90b0dfd6402553c3bb6cbc0271023e2e01ccdefb4a49a",
    )    

    http_archive(
        name = "rules_jvm_external",
        strip_prefix = "rules_jvm_external-3.2",
        sha256 = "82262ff4223c5fda6fb7ff8bd63db8131b51b413d26eb49e3131037e79e324af",
        url = "https://github.com/bazelbuild/rules_jvm_external/archive/3.2.zip",
    )

    git_repository(
        name = "vaticle_bazel_distribution",
        remote = "https://github.com/vaticle/bazel-distribution",
        commit = "a4ff3778d65d6f4c563b70c096d150f7028800ce",
    )
    http_archive(
        name = "bazeldist",
        url = "https://maven.jtrim777.dev/releases/dev/jtrim777/bazeldist/0.1.6/bazeldist-all.tar.gz",
        #sha256 = "98c2549314d115550c697d378b4b583f2653ff82822660839a3940977aee2573",
    )

    http_archive(
        name = "rules_pkg",
        urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
            "https://github.com/bazelbuild/rules_pkg/releases/download/0.4.0/rules_pkg-0.4.0.tar.gz",
        ],
        sha256 = "038f1caa773a7e35b3663865ffb003169c6a71dc995e39bf4815792f385d837d",
        patches = [
            "@bazeldist//:bazelbuild_rules_pkg-allow-long-filenames.patch",
        ],
        patch_args = ["-p1"],
    )
