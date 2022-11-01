@echo off

SET TOPDIR=$(shell pwd)

IF /I "%1"=="build" GOTO build
IF /I "%1"=="start" GOTO start
IF /I "%1"=="	@echo "Open http" GOTO 	@echo "Open http
IF /I "%1"=="stop" GOTO stop
IF /I "%1"=="rebuild" GOTO rebuild
IF /I "%1"=="open" GOTO open
IF /I "%1"=="jekyll" GOTO jekyll
IF /I "%1"=="prep" GOTO prep
IF /I "%1"=="clean" GOTO clean
GOTO error

:build
	docker build -t yfd-jekyll .
	docker run -p 4000:4000 --volume="%TOPDIR%:/workspaces/yfd-docs" -dit --name yfd-docs yfd-jekyll
	GOTO :EOF

:start
	docker start yfd-docs
	docker exec -d -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"
	GOTO :EOF

:	@echo "Open http
	CALL make.bat //localhost:4000/
	CALL make.bat in
	CALL make.bat your
	CALL make.bat preferred
	CALL make.bat web
	CALL make.bat browser."
	GOTO :EOF

:stop
	docker stop yfd-docs
	GOTO :EOF

:rebuild
	make clean
	make build
	make start
	GOTO :EOF

:open
	docker exec -it yfd-docs "/bin/ash"
	GOTO :EOF

:jekyll
	docker exec -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"
	GOTO :EOF

:prep
	docker exec -it -w /workspace/site github-site sh -c "find . -name "*:Zone.Identifier" -type f -delete"
	GOTO :EOF

:clean
	docker rm -f yfd-docs
	docker image rm -f yfd-jekyll
	GOTO :EOF

:error
    IF "%1"=="" (
        ECHO make: *** No targets specified and no makefile found.  Stop.
    ) ELSE (
        ECHO make: *** No rule to make target '%1%'. Stop.
    )
    GOTO :EOF
