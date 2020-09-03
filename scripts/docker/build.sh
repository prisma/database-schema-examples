#!/bin/bash

DOCKER_HUB_USERNAME=divyenduz

if [ ! -z "$DOCKER_HUB_TOKEN" ]; then
docker login -u "$DOCKER_HUB_USERNAME" -p "$DOCKER_HUB_TOKEN"
fi

set -eu

(cd docker && docker-compose up -d)

docker run --rm -v "$PWD":/app treeder/bump --filename scripts/docker/postgresql/VERSION patch
POSTGRES_DOCKER_TAG=$(cat scripts/docker/postgresql/VERSION)
echo "POSTGRES_DOCKER_TAG: $POSTGRES_DOCKER_TAG"

POSTGRES_IMAGE_NAME=postgres-with-data
npx db-knife --template clean-load --db postgres://root:prisma@127.0.0.1:5432 --folder ./postgres | sh | true
npx db-knife --template before-load --db postgres://root:prisma@127.0.0.1:5432 --folder ./postgres | sh | true
npx db-knife --db postgres://root:prisma@127.0.0.1:5432 --folder ./postgres | sh | true
rm -rf ./scripts/docker/postgresql/data
docker cp docker_postgres_1:/var/lib/postgresql/data ./scripts/docker/postgresql/data
docker build -t $POSTGRES_IMAGE_NAME ./scripts/docker/postgresql
# TODO: Test before tag and push
# docker run -p 5432:5432 $DOCKER_HUB_USERNAME/$POSTGRES_IMAGE_NAME:$POSTGRES_DOCKER_TAG
docker tag $POSTGRES_IMAGE_NAME $DOCKER_HUB_USERNAME/$POSTGRES_IMAGE_NAME:$POSTGRES_DOCKER_TAG
docker push $DOCKER_HUB_USERNAME/$POSTGRES_IMAGE_NAME:$POSTGRES_DOCKER_TAG

docker run --rm -v "$PWD":/app treeder/bump --filename scripts/docker/mysql/VERSION patch
MYSQL_DOCKER_TAG=$(cat scripts/docker/mysql/VERSION)
echo "MYSQL_DOCKER_TAG: $MYSQL_DOCKER_TAG"

MYSQL_IMAGE_NAME=mysql-with-data
npx db-knife --template clean-load --db mysql://root:prisma@127.0.0.1:3306 --folder ./mysql | sh | true
npx db-knife --template before-load --db mysql://root:prisma@127.0.0.1:3306 --folder ./mysql | sh | true
npx db-knife --db mysql://root:prisma@127.0.0.1:3306 --folder ./mysql | sh | true
npx db-knife --db mysql://root:prisma@127.0.0.1:3306 --data-only --folder ./mysql | sh | true
rm -rf ./scripts/docker/mysql/data
docker cp docker_mysql_1:/var/lib/mysql ./scripts/docker/mysql/data
docker build -t $MYSQL_IMAGE_NAME ./scripts/docker/mysql
# TODO: Test before tag and push
# docker run -p 3306:3306 $DOCKER_HUB_USERNAME/$MYSQL_IMAGE_NAME:$MYSQL_DOCKER_TAG
docker tag $MYSQL_IMAGE_NAME $DOCKER_HUB_USERNAME/$MYSQL_IMAGE_NAME:$MYSQL_DOCKER_TAG
docker push $DOCKER_HUB_USERNAME/$MYSQL_IMAGE_NAME:$MYSQL_DOCKER_TAG

(cd docker && docker-compose down)

if [ ! -z "$CI" ]; then
git add -A
git commit -m "release: docker tag $MYSQL_DOCKER_TAG"
git tag -a "$MYSQL_DOCKER_TAG" -m "version $MYSQL_DOCKER_TAG"
git push
git push --tags
fi

