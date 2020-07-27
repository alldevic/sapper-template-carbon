
#!/usr/bin/make

include .env
export

SHELL = /bin/sh
CURRENT_UID := $(shell id -u):$(shell id -g)

export CURRENT_UID

ifeq ($(DEBUG), True)
	FRONTEND_IMAGE := frontend-dev
else
	FRONTEND_IMAGE := frontend-prod
endif

export FRONTEND_IMAGE

up:
	docker-compose up -d --force-recreate --build $(FRONTEND_IMAGE)
down:
	docker-compose down
sh:
	docker exec -it ${FRONTEND_IMAGE} /bin/sh
logs:
	docker-compose logs -f
clean:
	rm -rf ./node_modules/ ./src/node_modules/ package-lock.json yarn.lock yarn-error.log ./__sapper__/