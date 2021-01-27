@echo off


CALL LOG_ENTER \%DIR_TMPL%\env\init

xcopy /q /y .\%DIR_TMPL%\env\win\pENV.cmd .\bin >NUL

if not exist project\env\win\pENV_MOD.cmd (
  xcopy /q /y ^
       %DIR_TMPL%\env\win\pENV_MOD.sample.cmd ^
       project\env\win\pENV_MOD.cmd
)

CALL LOG_EXIT \%DIR_TMPL%\env\init