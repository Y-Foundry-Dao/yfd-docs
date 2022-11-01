@echo off

SET TOPDIR=%CD%

IF /I "%1"=="build" GOTO build
IF /I "%1"=="start" GOTO start
IF /I "%1"=="start-daemon" GOTO start-daemon
IF /I "%1"=="stop" GOTO stop
IF /I "%1"=="rebuild" GOTO rebuild
IF /I "%1"=="open" GOTO open
IF /I "%1"=="jekyll" GOTO jekyll
IF /I "%1"=="jekyll-daemon" GOTO jekyll-daemon
IF /I "%1"=="prep" GOTO prep
IF /I "%1"=="clean" GOTO clean
GOTO error

:build
	docker build -t yfd-jekyll .
	docker run -p 4000:4000 --volume="%TOPDIR%:/workspaces/yfd-docs" -dit --name yfd-docs yfd-jekyll
	GOTO :EOF

:start
	docker start yfd-docs
	cls
	@echo ===============================================================================
	@echo Starting Jekyll Server...
	@echo Please wait...
	@echo ===============================================================================
	@echo.
	@echo Opening Web Browser to http://localhost:4000/
	@echo.
	@echo ===============================================================================
	@echo If you receive a message saying "This page isn't working" or "EMPTY RESPONSE"
	@echo.
	@echo Wait a few moments before trying to refresh the page
	@echo.
	@echo Initialization takes approximately 30 seconds
	@echo.
	@echo.
	start http://localhost:4000/

	make jekyll

	GOTO :EOF

:start-daemon
	docker start yfd-docs
	CALL :jekyll-daemon

	@echo ===============================================================================
	@echo Starting Jekyll Server...
	@echo Please wait...
	@echo ===============================================================================
	@echo.
	@echo Initialization takes approximately 30 seconds...
	timeout /t 30
	@echo.
	@echo.
	@echo Opening Web Browser to http://localhost:4000/
	@echo.
	@echo If you receive a message saying "Page Not Found / No Response"
	@echo Wait a few moments before trying to refresh the page
	@echo.

	start http://localhost:4000/

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

:jekyll-daemon
	docker exec -d -it -w /workspaces/yfd-docs yfd-docs sh -c "bundle exec jekyll serve --host 0.0.0.0 --config _config_local.yml"
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
