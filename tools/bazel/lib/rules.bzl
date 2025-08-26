load(
    "@aspect_bazel_lib//lib:copy_to_bin.bzl",
    native_copy_to_bin = "copy_to_bin",
)

load(
    "@bazel_skylib//rules:build_test.bzl",
    native_build_test = "build_test",
)


def build_test(name, targets, **kwargs):
    native_build_test(
        name = name,
        targets = targets,
        **kwargs,
    )

def copy_to_bin(name, srcs, **kwargs):
    native_copy_to_bin(
        name = name,
        srcs = srcs,
        **kwargs,
    )
