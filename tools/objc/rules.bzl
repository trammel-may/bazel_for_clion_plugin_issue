load("@rules_cc//cc:objc_library.bzl", _objc_library = "objc_library")

def objc_library(
        name,
        srcs,
        hdrs = [],
        deps = [],
        copts = [],
        data = [],
        sdk_frameworks = [],
        **kwargs):
    _objc_library(
        name = name,
        srcs = srcs,
        hdrs = hdrs,
        copts = copts,
        deps = deps,
        data = data,
        sdk_frameworks = sdk_frameworks,
        **kwargs
    )
