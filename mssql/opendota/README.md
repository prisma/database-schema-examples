# opendota 

- website: https://www.opendota.com/


## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online

- remove extensions and settings
- remove statements containing word OWNER because not recognized by sql server
- remove word ONLY because not recognized by sql server
- remove statements creating binary trees with word USING because not recognized by sql server
- remove index creation statements to outside the create table statement or delete altogether

- replace boolean with bit
- replace false with 0
- replace true with 1
- replace jsbon, json[] with NVARCHAR
- replace integer[] with integer
- replace uuid with NVARCHAR
- replace timestamp to datetime
- replace text to nvarchar
- replace varchar(max) to varchar(255)
- replace key with key_base


