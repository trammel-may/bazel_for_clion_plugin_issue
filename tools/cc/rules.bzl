def cc_test(name, srcs, deps = [], copts = [], **kwargs):
    native.cc_test(
        name = name,
        srcs = srcs,
        copts = ["-Ithird_party/gtest/include"] + copts,
        deps = [
            "@googletest//:gtest",
            "@googletest//:gtest_main",
        ] + deps,
        **kwargs
    )

def cc_binary(name, srcs, deps = [], copts = [], **kwargs):
    native.cc_binary(
        name = name,
        srcs = srcs,
        copts = copts,
        deps = deps,
        **kwargs
    )

def cc_library(name, srcs, deps = [], copts = [], **kwargs):
    native.cc_library(
        name = name,
        srcs = srcs,
        copts = copts,
        deps = deps,
        **kwargs
    )

def cc_asm_impl(ctx):
    src_file = ctx.attr.src.files.to_list()[0]
    base_name = src_file.basename.split(".")[0]
    output_file = ctx.actions.declare_file("{}.s".format(base_name))
    command = "g++ -S -o {} {}".format(output_file.path, src_file.path)
    ctx.actions.run_shell(
        outputs = [output_file],
        inputs = [src_file],
        command = command,
    )
    return [DefaultInfo(files = depset([output_file]))]

cc_asm = rule(
    implementation = cc_asm_impl,
    attrs = {
        "src": attr.label(
            mandatory = True,
            allow_files = True,
            doc = "The source file to compile",
        ),
    },
    executable = False,
    doc = "Convert C++ to assembly",
)