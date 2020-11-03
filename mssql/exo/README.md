# Exo

Schema only dump exported via `pg_dump`

- Version: 6.0
- Website: https://www.exoplatform.com/
- Source: https://hub.docker.com/r/exoplatform/exo

## Modifications made to source

- Converted using http://www.sqlines.com/online
- remove owner
- boolean false is bit 0
- boolean true is bit 1
- REMOVE ONLY KEY WORD IN ALTER TABLE ONLY
- comment out create indexes using binary trees with USING statement
- @uNll become null
- replace bytea with VARBINARY(100)
- replace oid with character varying(100)

-data from mysql version
-replace __binary'\0' with 1 or 0
-removed '\s to ''s
-removed lock unlock
-only about half of data.sql was copied over