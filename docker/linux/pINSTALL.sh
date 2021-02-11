#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

log_var DIR_SYS $DIR_SYS
log_var PROJ_NAME $PROJ_NAME

mkdir -p $DIR_SYS/$PROJ_NAME
cp target/generated-sources $DIR_SYS/$PROJ_NAME

log_exit pINSTALL
