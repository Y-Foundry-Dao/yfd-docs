TOPDIR=$(shell pwd)


build: ## Build docker image
	docker build -t yfd-jekyll .
	docker run -p 4000:4000 --volume="$(TOPDIR):/workspaces/yfd-docs" -dit --name yfd-docs yfd-jekyll
##	docker-compose build

start:
#	docker-compose up --force-recreate
	docker start yfd-docs
	docker exec -d -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"

	@echo "YFD Docs service is starting... please wait 10 seconds."
	@echo "Open http://localhost:4000/ in your preferred web browser."
stop: 
##	docker-compose stop
	docker stop yfd-docs

rebuild: # run jekyll build inside container to update on the go
##	docker-compose exec jekyll jekyll build --incremental --watch
	make clean
	make build
	make start

open:
	docker exec -it yfd-docs "/bin/ash"

jekyll:
	docker exec -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"

clean: 
	docker rm -f yfd-docs
	docker image rm -f yfd-jekyll
