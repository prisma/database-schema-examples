# sonarqube

- version: 8.1 community beta
- website: https://www.sonarqube.org/
- source: https://hub.docker.com/_/sonarqube/?tab=description

## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online
- data.sql not adapted 

- remove statements containing word OWNER because not recognized by sql server
- remove word ONLY because not recognized by sql server
- remove statements creating binary trees with word USING because not recognized by sql server

- replace boolean with bit
- replace false with 0
- replace true with 1
- replace bytea with VARBINARY(100)