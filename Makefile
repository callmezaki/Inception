DOCKER_COMPOSE_FILE := ./srcs/docker-compose.yml

.PHONY: build up down restart logs ps

up: build
	docker-compose -f $(DOCKER_COMPOSE_FILE) up -d

build:
	docker-compose -f $(DOCKER_COMPOSE_FILE) build  

down:
	docker-compose -f $(DOCKER_COMPOSE_FILE) down -v

restart:
	docker-compose -f $(DOCKER_COMPOSE_FILE) restart

logs:
	docker-compose -f $(DOCKER_COMPOSE_FILE) logs -f

ps:
	docker-compose -f $(DOCKER_COMPOSE_FILE) ps
prune:
	docker system prune --all 
vl:
	rm -rf ~/data/db/*
	rm -rf ~/data/vl/*
	rm -rf ~/data/website/*
data:
	mkdir -p ~/data/website
	mkdir ~/data/db
	mkdir ~/data/vl