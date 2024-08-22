#!make
include .env
export

DOCKER_COMPOSE=docker-compose -p $(APP_NAME) -f src/$(SERV_VERS)/docker-compose.run.yaml

.DEFAULT_GOAL := help

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

build:
	@docker-compose -f src/$(SERV_VERS)/docker-compose.build.yaml build

up:
	@${DOCKER_COMPOSE} up

down:
	@${DOCKER_COMPOSE} down