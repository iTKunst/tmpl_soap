#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

log_var PROJ_NAME $PROJ_NAME
log_var SYS_DIR $SYS_DIR
log_var SYS_NAME $SYS_NAME

export TARGET=../$SYS_DIR/soap/$PROJ_NAME
export SOURCE=./target/generated-sources/axis2

log_var TARGET $TARGET
log_var SOURCE $SOURCE

mkdir -p $TARGET
shopt -s dotglob
cp -r $SOURCE/* $TARGET

log_exit pINSTALL
