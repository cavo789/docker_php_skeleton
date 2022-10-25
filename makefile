# If you don't have yet GNU make on your system, please run
#
#     sudo apt-get update && sudo apt-get -y install make

build:
	docker compose build

up:
	docker compose up -d
	@printf "[1;33m%s[0m\n" "if everything is ok, the site is live on http://127.0.0.1:8080/"

down:
	docker compose stop && docker-compose down

bash:
	docker compose exec app_php /bin/bash
