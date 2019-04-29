PG_URL ?= postgres://localhost:5432
PG_SCHEMAS := $(wildcard postgres/*/schema.sql)
PG_DATAMODELS := \
	$(PG_SCHEMAS:schema.sql=datamodel-1.0.prisma) \
	$(PG_SCHEMAS:schema.sql=datamodel-1.1.prisma) \
	$(PG_SCHEMAS:schema.sql=datamodel-2.0.prisma)

render: dep $(PG_DATAMODELS)
dep: dep.psql dep.prisma-render

# psql dependency
psql := $(shell command -v psql)
dep.psql:
ifndef psql
	@echo 'Required dependency not found: psql'
	@exit 1
endif

# prisma-render dependency
# TODO: integrate with prisma-cli
prisma-render := $(shell command -v prisma-render)
dep.prisma-render:
ifndef prisma-render
	@echo 'Required dependency not found: prisma-render'
	@exit 1
endif

postgres/%/datamodel-1.0.prisma: postgres/%/schema.sql
	@ psql -c "drop database if exists tmp_prisma" $(PG_URL)
	@psql -c "create database tmp_prisma" $(PG_URL)
	@psql $(PG_URL)/tmp_prisma < $?
	@prisma-render --datamodel 1.0 $(PG_URL)/tmp_prisma > $@
	@psql -c "drop database tmp_prisma" $(PG_URL)

postgres/%/datamodel-1.1.prisma: postgres/%/schema.sql
	@ psql -c "drop database if exists tmp_prisma" $(PG_URL)
	@ psql -c "create database tmp_prisma" $(PG_URL)
	@ psql $(PG_URL)/tmp_prisma < $?
	@ prisma-render --datamodel 1.1 $(PG_URL)/tmp_prisma > $@
	@ psql -c "drop database tmp_prisma" $(PG_URL)

postgres/%/datamodel-2.0.prisma: postgres/%/schema.sql
	@ psql -c "drop database if exists tmp_prisma" $(PG_URL)
	@ psql -c "create database tmp_prisma" $(PG_URL)
	@ psql $(PG_URL)/tmp_prisma < $?
	@ prisma-render --datamodel 2.0 $(PG_URL)/tmp_prisma > $@
	@ psql -c "drop database if exists tmp_prisma" $(PG_URL)

clear.2.0:
	@ rm -rf ./postgres/*/datamodel-2.0.prisma