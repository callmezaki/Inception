# Makefile for Docker Compose

# Variables
DOCKER_COMPOSE := docker-compose
DOCKER_COMPOSE_FILE := ./srcs/docker-compose.yml

# Targets
.PHONY: build up down start stop restart logs ps

# Build the Docker Compose services

# Start the Docker Compose services
up: build
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) up -d

build:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) build
# Stop the Docker Compose services
down:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) down

# Start the Docker Compose services
start:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) start

# Stop the Docker Compose services
stop:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) stop

# Restart the Docker Compose services
restart:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) restart

# View the logs of the Docker Compose services
logs:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) logs -f

# View the status of the Docker Compose services
ps:
	$(DOCKER_COMPOSE) -f $(DOCKER_COMPOSE_FILE) ps
vl:
	rm -rf ~/Desktop/volumes/db/*
	rm -rf ~/Desktop/volumes/vl/*