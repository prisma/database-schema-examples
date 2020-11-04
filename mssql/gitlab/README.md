# Introduction 

From: gitlab.com
Please follow: https://gitlab.com/gitlab-org/gitlab/issues/29465
http://www.sqlines.com/online

boolean with bit
true becomes 1
false becomes 0
public becomes dbo
timestamp becomes datetime
without time zone is removed
comment out extensions and settings
ALTER SEQUENCE becomes -- ALTER SEQUENCE
comment out btree indexes with USING keyword
ALTER TABLE ONLY becomes ALTER TABLE
::character varying deleted
key keyword becomes key_base
bytea becomes VARBINARY(100)
file become file_base
external become external_base
trigger becomes trigger_base

using DECLARE infront of @variables?
-- ALTER TABLE dbo.abuse_reports ALTER COLUMN [id] SET DEFAULT NEXT VALUE FOR 'dbo.abuse_reports_id_seq'; becomes
ALTER TABLE dbo.abuse_reports ADD DEFAULT N'Gitlab_' + CAST(NEXT VALUE FOR dbo.abuse_reports_id_seq as NVARCHAR(20)) FOR id;
https://docs.microsoft.com/en-us/sql/t-sql/functions/next-value-for-transact-sql?view=sql-server-ver15

comment out USING btree indexes
ON DELETE RESTRICT becomes on delete no action
reduce insert value of migration rows as only 1000 are accepted at once
jsonb to nvarchar
may trigger CACHE set to NO CACHE 
character becomes VARCHAR(255)