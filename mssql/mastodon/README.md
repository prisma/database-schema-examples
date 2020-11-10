# mastodon

- Website: https://joinmastodon.org/
- Source: https://docs.joinmastodon.org/admin/install/

## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online
- data not adapted as it had a bunch of COPY from STDIN 

- remove extensions and settings
- remove datetime_id function
- remove unnecessary variable declarations throwing errors
- remove word ONLY because not recognized by sql server
- remove statements creating binary trees with word USING because not recognized by sql server
- remove statements setting sequential ids with next value
- remove ON DELETE CASCADE;

- replace timestamp with datetime
- replace armeta_data id with bigint
- replace database with database_base
- replace schema with schema_base
- replace jsonb, json, inet to NVARCHAR(255)
