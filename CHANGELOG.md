# Changelog

## Unreleased

### Added

* null safety.
* tests will be executed each Monday against stable SDK.

### Changed

* minimal supported SDK version is 2.12 (due to null safety).

### Removed

* Github actions support for SDK versions < 2.10.

## [0.1.3] - 2021-03-16

### Added

* Github action to have automated tests / analyze

### Fixed

* minimal supported SDK version was always 2.7 as extensions
  were released in 2.7.

### Changed

* homepage URL due to Github login change.

## [0.1.2] - 2020-02-21

### Fixed

* switched visibility for implementation detail so it is
no longer exposed as public.

## [0.1.1] - 2020-02-21

### Changed

* moved example from `README` to `example` directory.
* updated description to have more details.

### Fixed

* bump minimum required sdk version. Extension methods were added in `2.6.0`.

## [0.1.0] - 2020-02-21

### Added

* initial implementation with tests and benchmark
