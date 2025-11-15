# strata_sqlite

The official SQLite adapter for the [strata](https://github.com/tugorez/strata) data mapping library.

This package provides the concrete implementation of the `StrataAdapter` contract, allowing your `StrataRepo` to use SQLite as its database.

## Features

  * Implements the full `StrataAdapter` contract for all CRUD operations.
  * Handles database connection and lifecycle.
  * Includes a basic migration runner to version your database schema.

## Getting Started

To use this package, you need to add `strata`, `strata_sqlite`, and a SQLite driver (like `sqlite3`) to your `pubspec.yaml`.

```yaml
name: my_app
description: A new app using Strata and SQLite.

dependencies:
  # 1. The core Strata library
  strata: ^0.1.0 

  # 2. This SQLite adapter
  strata_sqlite: ^0.1.0

  # 3. The native SQLite driver
  sqlite3: ^2.5.0 

dev_dependencies:
  # 4. Strata's code generator
  build_runner: ^2.10.1
```