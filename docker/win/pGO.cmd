@echo off


CALL LOG_ENTER pGO

CALL pENV

SET "CONT=%PROJ_CONT%"
SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "CONT_MNT_DIR=%PROJ_CONT_MNT_DIR%"
SET "HOST=%PROJ_HOST%"
SET "HOST_DIR=%CD%%PROJ_HOST_DIR%"
SET "HOST_MNT_DIR=%CD%%PROJ_HOST_MNT_DIR%"
SET "IMG=%PROJ_IMG%"
SET "LABEL=%PROJ_LABEL%"
SET "MODE=%PROJ_MODE%"
SET "NET=%PROJ_NET%"
SET "PASSWORD=%PROJ_PASSWORD%"
SET "PORT_EXT=%PROJ_PORT_EXT%"
SET "PORT_INT=%PROJ_PORT_INT%"
SET "USER=%PROJ_USER%"

SET "ART=%PROJ_ART%"
SET "FILE=%PROJ_FILE%"
SET "GRP=%PROJ_GRP%"
SET "PKG=%PROJ_PKG%"
SET "REPO_IP=%MVN_REPO_IP%"
SET "REPO_PORT=%MVN_REPO_PORT%"
SET "REPO_URL=%MVN_REPO_URI%"
SET "VER=%PROJ_VER%"

call LOG_VAR CONT %CONT%
call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR CONT_MNT_DIR %CONT_MNT_DIR%
call LOG_VAR HOST %HOST%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR HOST_MNT_DIR %HOST_MNT_DIR%
call LOG_VAR IMG %IMG%
call LOG_VAR LABEL %LABEL%
call LOG_VAR MODE %MODE%
call LOG_VAR NET %NET%
call LOG_VAR PASSWORD %PASSWORD%
call LOG_VAR PORT_EXT %PORT_EXT%
call LOG_VAR PORT_INT %PORT_INT%
call LOG_VAR USER %USER%

call LOG_VAR ART %ART%
call LOG_VAR FILE %FILE%
call LOG_VAR GRP %GRP%
call LOG_VAR PKG %PKG%
call LOG_VAR REPO_IP %REPO_IP%
call LOG_VAR REPO_PORT %REPO_PORT%
call LOG_VAR REPO_URL %REPO_URL%
call LOG_VAR VER cVER%

mkdir -p %HOST_MNT_DIR%

docker run ^
       -%MODE% ^
       -e ART=%ART% ^
       -e FILE=%FILE% ^
       -e GRP=%GRP% ^
       -e PKG=%PKG% ^
       -e REPO_URL=%REPO_URL% ^
       -e REPO_PORT=%REPO_PORT% ^
       -e VER=%VER% ^
       --add-host=%REPO_URL%:%REPO_IP% ^
       --label=%LABEL% ^
       --mount type=bind,src=%HOST_MNT_DIR%,target=%CONT_MNT_DIR% ^
       --name=%CONT% ^
       %IMG%

call LOG_EXIT pGO

