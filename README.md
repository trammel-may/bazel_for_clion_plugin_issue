# Bazel for CLion Plugin Issue(s)

This repository contains a minimal example to reproduce issues with the Bazel for CLion plugin. 

One note with both of these issues, you can notice that `bazel run //packages/app` works correctly indicating that this is not a problem with the Bazel build itself, but rather with the CLion integration.

## Issues

- **[Issue #1](https://github.com/bazelbuild/intellij/issues/7847)** Objective-C Files do not sync

**Steps to Reproduce**
1. Open the project in CLion with the Bazel plugin installed.
2. Run a bazel sync.
3. Observe that the Objective-C files in `/packages/lib` remain `(unsynced)`

**Expected Result**
All Objective-C files should be synced and recognized by CLion and show as synced.

**Actual Result**
All files included in the `objc_library` rule remain unsynced.

- **[Issue #2](https://github.com/bazelbuild/intellij/issues/7848)** Bazel root path not recognized for includes/imports

**Steps to Reproduce**
1. Open the project in CLion with the Bazel plugin installed.
2. Open `main.cpp` in `/packages/app/`.
3. Observe that the include for `Message.hpp` shows an error (`'packages/lib/Message.hpp' file not found clang (pp_file_not_found)`), even though the file exists in `/packages/lib/`.

**Expected Result**
The `include` statements should be recognized correctly, and no error should be shown.

**Actual Result**
The `include` statements show an error indicating that the file is not found.