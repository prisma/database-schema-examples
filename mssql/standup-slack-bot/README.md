## Source
Extracted via `pg_dump`

## Datamodel

`datamodel.graphql` was exported with Prisma CLI `prisma/1.31.0-alpha.1`
- from postgres folder
- http://www.sqlines.com/online
- replace public with dbo
- remove ONLY keyword
- comment out owned by
- jsonb to NVARCHAR
- comment out configs and extensions
- mycol VARCHAR(10) NOT NULL CHECK (mycol IN('Useful', 'Useless', 'Unknown'))
- remove trigger and trigger functions
- remove []
- remove CHECK and ENUM related fields
- remove teams trial_end+ 14 days cast in get dates
- remove nested create indexes inside model
- comment out SET @DEFAULT 
- replace tempo and convo with dbo
- comment out problematic unique constraints
- replace DEFAULT dbo.timezone(cast('utc' as varchar(max)) with getdate()