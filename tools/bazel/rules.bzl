load(
    "//tools/cc:rules.bzl",
    _cc_asm = "cc_asm",
    _cc_binary = "cc_binary",
    _cc_library = "cc_library",
    _cc_test = "cc_test",
)
load(
    "//tools/objc:rules.bzl",
    _objc_library = "objc_library",
)

cc_asm = _cc_asm
cc_binary = _cc_binary
cc_library = _cc_library
cc_test = _cc_test

objc_library = _objc_library
