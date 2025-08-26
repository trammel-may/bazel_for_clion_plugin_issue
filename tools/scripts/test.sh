#!/usr/bin/env zsh

bazel build --aspects=//tools/lint:linters.bzl%eslint,//tools/lint:linters.bzl%ktlint \
    --norun_validations \
    --build_event_json_file=/var/folders/5x/c78kkzp50vb127c44dhbxjyc0000gn/T/tmp.vzalFgZQsX \
    --output_groups=rules_lint_human \
    --remote_download_regex='.*AspectRulesLint.*' \
    //tools/lint/example:ts
