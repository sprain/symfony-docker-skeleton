include .env.dev.local
export

docker-start:
	docker-compose --env-file .env.dev.local up -d
	echo "Application is running at 0.0.0.0:${DOCKER_APP_PORT}"

docker-rebuild:
	docker-compose --env-file .env.dev.local up -d --force-recreate --build
	echo "Application is running at 0.0.0.0:${DOCKER_APP_PORT}"

docker-stop:
	docker-compose --env-file .env.dev.local stop

into-docker:
	docker exec -it php-${DOCKER_APP_NAME} bash