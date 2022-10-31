TOPDIR=$(shell pwd)

build: ## Build docker image
	docker build -t yfd-jekyll .
	docker run -p 4000:4000 --volume="$(TOPDIR):/workspaces/yfd-docs" -dit --name yfd-docs yfd-jekyll
##	docker-compose build

start:build
##	docker-compose up --force-recreate
	docker exec -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"

stop: 
##	docker-compose stop

rebuild: # run jekyll build inside container to update on the go
##	docker-compose exec jekyll jekyll build --incremental --watch

open:
	docker exec -it yfd-docs "/bin/ash"

jekyll:
	docker exec -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"

clean: 
	docker rm -f yfd-docs
	docker image rm -f yfd-jekyll
