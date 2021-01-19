@echo off
CALL settings


call LOG_ENTER pBUILD

CALL pENV

SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "FILE_NAME=%PROJ_FILE_NAME%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"

call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR DCKR_URI %DCKR_URI%
call LOG_VAR FILE_NAME %FILE_NAME%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%

docker  build ^
        --build-arg CONT_DIR=%CONT_DIR% ^
        --build-arg FILE_NAME=%FILE_NAME% ^
        --build-arg HOST_DIR=%HOST_DIR% ^
        -f %DCKR_URI% ^
        -t %IMG% ^
        .

call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% EQU 0 (
  call LOG_CMD "Please run pGO to create and run the container"
) else (
  call LOG_ERR "Unable to build image"
)

call LOG_EXIT pBUILD

