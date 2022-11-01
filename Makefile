TOPDIR=$(shell pwd)

build: ## Build docker image and container
	docker build -t yfd-jekyll .
	docker run -p 4000:4000 --volume="$(TOPDIR):/workspaces/yfd-docs" -dit --name yfd-docs yfd-jekyll

start: ## start the container 
	docker start yfd-docs  
	@echo ===============================================================================
	@echo Starting Jekyll Server...
	@echo Please wait...
	@echo ===============================================================================
	@echo.
	@echo Open Web Browser to http://localhost:4000/
	@echo.
	@echo ===============================================================================
	@echo If you receive a message saying "This page isn't working" or "EMPTY RESPONSE"
	@echo.
	@echo Wait a few moments before trying to refresh the page
	@echo.
	@echo Initialization takes approximately 30 seconds
	@echo.
	@echo.

	make jekyll

start-daemon: ## start the container 
	docker start yfd-docs  
	make jekyll-daemon

	@echo ===============================================================================
	@echo Starting Jekyll Server...
	@echo Please wait...
	@echo ===============================================================================
	@echo.
	@echo Open a Web Browser to http://localhost:4000/
	@echo.
	@echo ===============================================================================
	@echo If you receive a message saying "This page isn't working" or "EMPTY RESPONSE"
	@echo.
	@echo Wait a few moments before trying to refresh the page
	@echo.
	@echo Initialization takes approximately 30 seconds
	@echo.

stop: # stop the docker container
	docker stop yfd-docs

rebuild: # delete the image and container and rebuild and restart
	make clean
	make build
	make start

open: # open an interactive terminal in the docker container
	docker exec -it yfd-docs "/bin/ash"

jekyll: # start the Jekyll service in an interactive terminal winner
	docker exec -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"

jekyll-daemon: # start the Jekyll service in an interactive terminal winner
	docker exec -d -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"

prep: # delete WSL Zone.Identifier files - useful before running a github commit
	docker exec -it -w /workspace/site github-site sh -c "find . -name "*:Zone.Identifier" -type f -delete"

clean: # delete the docker container and image
	docker rm -f yfd-docs
	docker image rm -f yfd-jekyll
