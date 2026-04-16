# Dart 3 Modernization

Status: done

## Goal

Modernize the package to Dart 3 standards and make CI execute correctly.

## Exit Criteria

- The package resolves, analyzes, and passes tests with `environment.sdk: ^3.7.0`.
- CI passes on Dart `3.7.0` and on the current stable Dart SDK.
- CI explicitly exercises both the VM and Node test platforms.
- CI also verifies downgraded dependency resolution and test execution.

## Context

This package currently targets Dart `>=2.12.0 <3.0.0`, uses `pedantic`, and has
an older GitHub Actions workflow. The work should modernize package metadata and
CI while preserving the public API and the VM/JS implementation split.

## Tasks

- [x] Update package metadata for Dart 3 support and refresh dev dependencies.
- [x] Replace `pedantic` with `lints` and address any compatibility changes.
- [x] Modernize the GitHub Actions workflow for current actions and CI coverage.
- [x] Validate latest and downgraded dependency flows on Dart `3.7.0` and
      stable.
- [x] Validate formatting, analysis, tests, and example execution on Dart
      `3.7.0` and stable.

## Notes / Findings

- Final SDK floor is `^3.7.0`; lower floors did not validate cleanly with the
  current test toolchain under downgraded VM resolution.
- Reliable downgraded validation requires `test: ^1.31.0` together with the
  explicit `frontend_server_client: ^4.0.0` floor.
- Explicit direct anchors for `file`, `pub_semver`, and `watcher` are not
  required; downgraded analysis and tests remain green without them.
- CI now runs on `push`, `pull_request`, and the weekly schedule, validates
  Dart `3.7.0` and `stable`, and exercises `dart test -p vm,node`.
- The `lints` migration required only small naming cleanups, and the package
  metadata now includes a `repository` field alongside the existing homepage.
