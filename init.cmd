@echo off


CALL LOG_ENTER \%DIR_PROJ%\init

CALL .\%DIR_PROJ%\docker\init
CALL .\%DIR_PROJ%\bin\init

CALL LOG_EXIT \%DIR_PROJ%\init