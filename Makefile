TOPDIR=$(shell pwd)

build: ## Build docker image
	docker build -t yfd-jekyll .
	docker run -p 4000:4000 --volume="$(TOPDIR):/workspaces/yfd-wiki" -dit --name yfd-wiki yfd-jekyll
##	docker-compose build

start:build
##	docker-compose up --force-recreate

stop: 
##	docker-compose stop

rebuild: # run jekyll build inside container to update on the go
##	docker-compose exec jekyll jekyll build --incremental --watch

open:
	docker exec -it yfd-wiki "/bin/sh"

run:
	docker exec -it -w /workspaces/yfd-wiki yfd-wiki "bundle exec jekyll serve --config _config_local.yml"

clean: 
	docker rm -f yfd-wiki
	docker image rm -f yfd-jekyll
