#!/bin/bash

set -eu

DOCKER_TAG=$1
echo "DOCKER_TAG: $DOCKER_TAG"

(cd docker && docker-compose up -d)

npx db-knife --template clean-load --db postgres://root:prisma@127.0.0.1:5432 --folder ./postgres | sh
npx db-knife --template before-load --db postgres://root:prisma@127.0.0.1:5432 --folder ./postgres | sh
npx db-knife --db postgres://root:prisma@127.0.0.1:5432 --folder ./postgres | sh
docker cp docker_postgres_1:/var/lib/postgresql/data ./docker/postgresql/data 
# TODO: Uncomment the docker push logic, if we want
# docker build -t postgres-with-data ./docker/postgresql
# TODO: Test before tag and push
# docker tag postgres-with-data divyenduz/postgres-with-data # TODO: tag to a specific version
# docker push divyenduz/postgres-with-data # TODO: push to a specific version and authenticate in CI

npx db-knife --template clean-load --db mysql://root:prisma@127.0.0.1:3306 --folder ./mysql | sh
npx db-knife --template before-load --db mysql://root:prisma@127.0.0.1:3306 --folder ./mysql | sh
npx db-knife --db mysql://root:prisma@127.0.0.1:3306 --folder ./mysql | sh
docker cp docker_mysql_1:/var/lib/mysql ./docker/mysql/data
# TODO: Uncomment the docker push logic, if we want
# docker build -t mysql-with-data ./docker/mysql
# TODO: Test before tag and push
# docker tag mysql-with-data divyenduz/mysql-with-data # TODO: tag to a specific version
# docker push divyenduz/mysql-with-data # TODO: push to a specific version and authenticate in CI
