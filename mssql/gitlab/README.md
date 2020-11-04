# gitlab

- website: https://gitlab.com/gitlab-org/gitlab/issues/29465
- source: http://www.sqlines.com/online

## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online

- remove extensions and settings
- remove statements creating binary trees with word USING because not recognized by sql server
- remove next value indexes
- remove migration rows > 10000 in insert statemenet as sql server only accepts 1000 in one batch 

- replace boolean with bit
- replace false with 0
- replace true with 1
- replace bytea with VARBINARY(100)
- replace oid with character varying(100)
- replace timestamp with datetime
- replace ::character with character 
- replace bytea with VARBINARY(100)
- replace character with VARCHAR(255)
- replace jsonb with nvarchar
- replace ON DELETE RESTRICT with ON DELETE NO ACTION
- replace key with key_base
- replace file with file_base
- replace external with external_base
- replace trigger with trigger_base








