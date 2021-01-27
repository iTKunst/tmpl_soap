#!/bin/bash
# shellcheck disable=SC2086


log_enter /$DIR_TMPL/env/init

cp ./$DIR_TMPL/env/linux/pENV.sh ./bin

if [ ! -f project/env/linux/pENV_MOD.sh ]; then
  xcopy /q /y \
     $DIR_TMPL/env/linux/pENV.sh \
     project/env/linux/pENV_MOD.sh
fi

log_exit /$DIR_TMPL/env/init