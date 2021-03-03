#!/bin/bash
# shellcheck disable=SC2086
# echo pBUILD.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pBUILD


source pSTOP.sh
source pENV.sh

CONT_DIR=$PROJ_CONT_DIR
HOST_DIR=$PROJ_HOST_DIR
IMG=$PROJ_IMG
USER=$PROJ_USER

ART=$PROJ_ART
CONT_CERT_DIR=$PROJ_CONT_CERT_DIR
FILE=$PROJ_FILE
GRP=$PROJ_GRP
REPO_HOST=$PROJ_REPO_HOST
REPO_IP=$PROJ_REPO_IP
REPO_PORT_EXT=$PROJ_REPO_PORT_EXT
VER=$PROJ_VER

log_var CONT_DIR $CONT_DIR
log_var DCKR_URI $DCKR_URI
log_var DIR_SYS $DIR_SYS
log_var DIR_TMPL $DIR_TMPL
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var TMPL_NAME $TMPL_NAME
log_var USER $USER

log_var ART $ART
log_var CONT_CERT_DIR $CONT_CERT_DIR
log_var FILE $FILE
log_var GRP $GRP
log_var REPO_HOST $REPO_HOST
log_var REPO_IP $REPO_IP
log_var REPO_PORT_EXT $REPO_PORT_EXT
log_var VER $VER


DOCKER_BUILDKIT=1 \
          docker  \
          build \
          --no-cache \
          --build-arg CONT_DIR=$CONT_DIR \
          --build-arg HOST_DIR=$HOST_DIR \
          --build-arg SYS_DIR=$DIR_SYS \
          --build-arg TMPL_DIR=$DIR_TMPL \
          --build-arg ART=$ART \
          --build-arg CONT_CERT_DIR=$CONT_CERT_DIR \
          --build-arg FILE=$FILE \
          --build-arg GRP=$GRP \
          --build-arg REPO_HOST=$REPO_HOST \
          --build-arg REPO_PORT_EXT=$REPO_PORT_EXT \
          --build-arg VER=$VER \
          --add-host=$REPO_HOST:$REPO_IP \
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
