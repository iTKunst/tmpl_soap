@echo off


CALL LOG_ENTER \%DIR_TMPL%\init

CALL .\%DIR_TMPL%\docker\init
CALL .\%DIR_TMPL%\env\init

CALL LOG_EXIT \%DIR_TMPL%\init