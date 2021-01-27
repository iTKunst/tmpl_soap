@echo off


CALL LOG_ENTER \%DIR_TMPL%\env\init

xcopy /q /y .\%DIR_TMPL%\env\win\pENV.cmd .\bin >NUL
xcopy /q /y .\%DIR_TMPL%\env\win\pENV_MOD.sample.cmd .\project >NUL

CALL LOG_EXIT \%DIR_TMPL%\env\init