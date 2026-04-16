# Dart 3 Modernization

Status: proposed

## Goal

Modernize the package to Dart 3 standards and make CI execute correctly.

## Exit Criteria

- The package resolves, analyzes, and passes tests with `environment.sdk: ^3.0.0`.
- CI passes on Dart `3.0.0` and on the current stable Dart SDK.
- CI explicitly exercises both the VM and Node test platforms.
- Stable CI also verifies downgraded dependency resolution and test execution.

## Context

This package currently targets Dart `>=2.12.0 <3.0.0`, uses `pedantic`, and has
an older GitHub Actions workflow. The work should modernize package metadata and
CI while preserving the public API and the VM/JS implementation split.

## Tasks

- [ ] Update package metadata for Dart 3 support and refresh dev dependencies.
- [ ] Replace `pedantic` with `lints` and address any compatibility changes.
- [ ] Modernize the GitHub Actions workflow for current actions and CI coverage.
- [ ] Validate latest and downgraded dependency flows on stable Dart.
- [ ] Validate formatting, analysis, tests, and example execution on Dart `3.0.0`
      and stable.

## Notes / Findings

- Planned SDK floor is `^3.0.0` rather than latest-stable-only.
- Dependency selections must remain compatible with Dart `3.0.0`.
