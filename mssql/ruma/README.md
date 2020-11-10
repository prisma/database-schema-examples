# ruma

- version: 8d0817090620f93dc9f421304154c7322f3ac6ab (Git hash)
- website: https://www.ruma.io/
- source: https://github.com/ruma/ruma/blob/master/migrations/001_prerelease/up.sql

## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online

- remove extensions and settings
- remove statements containing word OWNER because not recognized by sql server

- replace default sequence index statements with correct syntax
   
