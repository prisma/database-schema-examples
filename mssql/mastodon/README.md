# Mastodon

Schema only dump exported via `pg_dump`

- Version: 3.1.1
- Website: https://joinmastodon.org/
- Source: https://docs.joinmastodon.org/admin/install/

## Modifications made to source

- http://www.sqlines.com/online
- switch to dbo
- comment out config
- timestamp to datetime
-comment out datetime_id function
- comment out declarations
- armeta data id now bigint
<!-- - varchar(max) to varchar(255) -->
database becomes database_base
USING alters commented out
schema becomes schema_base
comment out sequential ids next value
ONLY removed
remove ON DELETE CASCADE;
jsonb and json and inet to NVARCHAR(255)
sequence may throw warning: The cache size for sequence object 'dbo.status_pins_id_seq' has been set to NO CACHE. but tables are still created
data not translated as it had a bunch of COPY from STDIN