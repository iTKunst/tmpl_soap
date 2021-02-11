#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

mkdir -p $DIR_SYS/$PROJ_NAME
xcopy target/generated-sources $DIR_SYS/$PROJ_NAME

log_exit pINSTALL
