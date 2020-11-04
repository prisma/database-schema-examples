# helpdesk 

- website: https://www.totaljs.com/helpdesk/

## Modifications made to source

- schema from postgres folder in same repo
- schema initially exported via `pg_dump`
- converted using http://www.sqlines.com/online

- remove extensions and settings
- remove statments setting OID=false
- remove last view as there was an issue casting the dates

- replace create and alter views with begin -> execute() -> end