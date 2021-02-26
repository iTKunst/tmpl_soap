#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source pENV.sh

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
CONT_MNT_DIR=$PROJ_CONT_MNT_DIR
HOST=$PROJ_HOST
HOST_DIR=$PWD$PROJ_HOST_DIR
HOST_MNT_DIR=$PWD$PROJ_HOST_MNT_DIR
IMG=$PROJ_IMG
LABEL=$PROJ_LABEL
MODE=$PROJ_MODE
NET=$PROJ_NET
PASSWORD=$PROJ_PASSWORD
PORT_EXT=$PROJ_PORT_EXT
PORT_INT=$PROJ_PORT_INT
USER=$PROJ_USER

REPO_HOST=$MVN_REPO_HOST
REPO_IP=$PROJ_REPO_IP

log_var CONT $CONT
log_var CONT_DIR $CONT_DIR
log_var CONT_MNT_DIR $CONT_MNT_DIR
log_var HOST $HOST
log_var HOST_DIR $HOST_DIR
log_var HOST_MNT_DIR $HOST_MNT_DIR
log_var IMG $IMG
log_var LABEL $LABEL
log_var MODE $MODE
log_var NET $NET
log_var PASSWORD $PASSWORD
log_var PORT_EXT $PORT_EXT
log_var PORT_INT $PORT_INT
log_var USER $USER

log_var REPO_HOST $REPO_HOST
log_var REPO_IP $REPO_IP

mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       --add-host=$REPO_HOST:$REPO_IP \
       --label=$LABEL \
       --mount type=bind,src=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
       --name=$CONT \
       $IMG

source pINSTALL.sh
source pKILL.sh

log_unload pGO

