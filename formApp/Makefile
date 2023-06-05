.PHONY: setup migrate stop remove

setup:
	export UID=$(id -u)
	export GID=$(id -g)
	docker-compose build
	docker-compose run --rm app bundle install
	# docker-compose run --rm app yarn install
	UID=$(id -u) GID=$(id -g) docker-compose run --rm app rails db:create db:migrate db:seed

migrate:
	export UID=$(id -u)
	export GID=$(id -g)
	UID=$(id -u) GID=$(id -g) docker-compose run app rails db:migrate

stop:
	docker-compose stop

remove:
	docker-compose down --rmi all -v