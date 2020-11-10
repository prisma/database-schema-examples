# exo

- version: 6.0
- website: https://www.exoplatform.com/
- source: https://hub.docker.com/r/exoplatform/exo

## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online
- data.sql adapted from half of corresponding file in mysql folder in same repo

- remove extensions and settings
- remove statements containing word OWNER because not recognized by sql server
- remove word ONLY because not recognized by sql server
- remove statements creating binary trees with word USING because not recognized by sql server
- remove lock and unlock table statements

- replace boolean with bit
- replace false with 0
- replace true with 1
- replace bytea with VARBINARY(100)
- replace oid with character varying(100)
- replace __binary'\0' with 1 or 0
- replace '\s to ''s