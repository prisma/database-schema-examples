# Sonarqube

Schema only dump exported via `pg_dump`

- Version: 8.1 community beta
- Website: https://www.sonarqube.org/
- Source: https://hub.docker.com/_/sonarqube/?tab=description

## Modifications made to source

http://www.sqlines.com/online

- data not copied as it did not seem compatible
- true becomes 1
- false becomes 0
- btree indexes with USING commented out
- ONLY removed
- lines with OWNER commented out
- lines with OWNED by commented out
- replace dbo.key with KEY
- bytea becomes VARBINARY(100)