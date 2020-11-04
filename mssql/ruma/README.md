# Ruma

Schema only dump exported via `pg_dump`

- Version: 8d0817090620f93dc9f421304154c7322f3ac6ab (Git hash)
- Website: https://www.ruma.io/
- Source: https://github.com/ruma/ruma/blob/master/migrations/001_prerelease/up.sql

## Modifications made to source

-  comment out some config
http://www.sqlines.com/online
- public to dbo
- ignore all owner and owned by statements

ALTER TABLE  dbo.access_tokens
ALTER COLUMN
  id
SET
  @DEFAULT dbo.nextval(cast('dbo.access_tokens_id_seq'  as  regclass));
   becomes
   ALTER TABLE dbo.access_tokens ADD DEFAULT N'Ruma_' + CAST(NEXT VALUE FOR dbo.access_tokens_id_seq as NVARCHAR(20)) FOR id;
