#!/bin/bash
# shellcheck disable=SC2086
# echo pBUILD.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pBUILD


source pENV.sh

CONT_DIR=$PROJ_CONT_DIR
FILE_NAME=$PROJ_FILE_NAME
HOST_DIR=$PROJ_HOST_DIR
IMG=$PROJ_IMG

log_var CONT_DIR $CONT_DIR
log_var DCKR_URI $DCKR_URI
log_var FILE_NAME $FILE_NAME
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var DIR_SYS $DIR_SYS

DOCKER_BUILDKIT=1 \
          docker  \
          build \
          --build-arg CONT_DIR=$CONT_DIR \
          --build-arg FILE_NAME=$FILE_NAME \
          --build-arg HOST_DIR=$HOST_DIR \
          --build-arg SYS_DIR=$DIR_SYS \
          -f $DCKR_URI \
          -t $IMG \
          .

RES=$?
log_var RES $RES
if [ RES -ne 0 ]; then
  log_err Unable to build image
else
  log_cmd Please run pGO to create and run the container
fi

log_exit pBUILD


# echo pBUILD.sh [UNLOAD]