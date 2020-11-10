## standup-slack-bot

- source: schema from postgres folder in same repo

## Modifications to source

- schema from postgres folder in same repo
- converted using http://www.sqlines.com/online

- remove extensions and settings
- remove statements containing word OWNER because not recognized by sql server
- remove word ONLY because not recognized by sql server
- remove trigger and trigger functions
- remove occurences of []
- remove CHECK and ENUM related fields
- remove teams trial_end + 14 days cast in get dates default 
- remove nested create index statements inside model

- replace tempo and convo schema names with dbo
- replace DEFAULT dbo.timezone(cast('utc' as varchar(max)) with getdate()
- replace jsonb with NVARCHAR(255)