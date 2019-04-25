# Database Schema Examples

This repository contains a bunch of examples for database schemas. Useful whenever we need a real world example. Each example folder contains a readme that contains the link to the original source of the example. It also mentions what changes had to be applied to the original source.

## Postgres

### Getting a database dump

Use `pg_dump` in "schema-only" mode:

```
pg_dump --dbname=$dbname --host=$host --port=$port --no-owner --no-privileges --schema-only --no-security-labels
```

Write to a file named `schema.sql`.

## Recompile the datamodels

You'll need postgres installed locally with `psql` in your `$PATH` and [prisma-render](https://github.com/prisma/prisma-render).

Then run:

```sh
git clone https://github.com/prisma/database-schema-examples
cd database-schema-examples
make
```
