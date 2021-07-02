# Symfony 5 Docker Skeleton

1. `cp .env.dev.local.dist .env.dev.local`
2. Set app name and ports in `.env.dev.local`
3. Run `make docker-start`
4. Run `make into-docker`
5. Run `composer install`   
6. Open `http://0.0.0.0:YOURPORT` in the browser