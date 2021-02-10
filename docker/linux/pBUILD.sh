#!/bin/bash
# shellcheck disable=SC2086
# echo pBUILD.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pBUILD


source pENV.sh

CONT_DIR=$PROJ_CONT_DIR
HOST_DIR=$PROJ_HOST_DIR
IMG=$PROJ_IMG
USER=$PROJ_USER

log_var CONT_DIR $CONT_DIR
log_var DCKR_URI $DCKR_URI
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var DIR_SYS $DIR_SYS
log_var TMPL_NAME $TMPL_NAME
log_var DIR_TMPL $DIR_TMPL

log_var MVN_REPO_IP $MVN_REPO_IP
log_var MVN_REPO_URI $MVN_REPO_URI
log_var USER $USER

DOCKER_BUILDKIT=1 \
          docker  \
          build \
          --no-cache \
          --build-arg CONT_DIR=$CONT_DIR \
          --build-arg HOST_DIR=$HOST_DIR \
          --build-arg SYS_DIR=$DIR_SYS \
          --build-arg TMPL_DIR=$DIR_TMPL \
          --add-host=$MVN_REPO_URI:$MVN_REPO_IP \
          -f $DCKR_URI \
          -t $IMG \
          .

log_var RES $?
if [ $? -ne 0 ]; then
  log_err Unable to build image
else
  log_cmd Please run pGO to create and run the container
fi

log_exit pBUILD


# echo pBUILD.sh [UNLOAD]
