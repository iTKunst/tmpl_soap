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

ART=$PROJ_ART
FILE=$PROJ_FILE
GRP=$PROJ_GRP
PKG=$PROJ_PKG
REPO_URL=$PROJ_REPO_URL
REPO_PORT=$PROJ_REPO_PORT
VER=$PROJ_VER

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

log_var ART $ART
log_var FILE $FILE
log_var GRP $GRP
log_var PKG $PKG
log_var REPO_URL $REPO_URL
log_var REPO_PORT $REPO_PORT
log_var VER $VER

mkdir -p $HOST_MNT_DIR

docker run \
       -$MODE \
       -e ART=$ART \
       -e FILE=$FILE \
       -e GRP=$GRP \
       -e PKG=$PKG \
       -e REPO_URL=$REPO_URL \
       -e REPO_PORT=$REPO_PORT \
       -e VER=$VER \
       --label=$LABEL \
       --mount type=bind,src=$HOST_MNT_DIR,target=$CONT_MNT_DIR \
       --name=$CONT \
       $IMG

source pINSTALL.sh

log_unload pGO

