#!/bin/bash
# shellcheck disable=SC2086
source settings.sh
source LOG.sh


log_load pGO

source pENV.sh

CONT=$PROJ_CONT
CONT_DIR=$PROJ_CONT_DIR
HOST=$PROJ_HOST
HOST_DIR=$(pwd)$PROJ_HOST_DIR
IMG=$PROJ_IMG
LABEL=$PROJ_LABEL
NET=$PROJ_NET
PASSWORD=$PROJ_PASSWORD
PORT_EXT=$PROJ_PORT_EXT
PORT_INT=$PROJ_PORT_INT
USER=$PROJ_USER
VOL=$PROJ_VOL
VOL_DIR=$PROJ_VOL_DIR

ART=$PROJ_ART
FILE=$PROJ_FILE
GRP=$PROJ_GRP
PKG=$PROJ_PKG
VER=$PROJ_VER

log_var CONT $CONT
log_var CONT_DIR $CONT_DIR
log_var HOST $HOST
log_var HOST_DIR $HOST_DIR
log_var IMG $IMG
log_var LABEL $LABEL
log_var NET $NET
log_var PASSWORD $PASSWORD
log_var PORT_EXT $PORT_EXT
log_var PORT_INT $PORT_INT
log_var USER $USER
log_var VOL $VOL
log_var VOL_DIR $VOL_DIR

log_var ART $ART
log_var FILE $FILE
log_var GRP $GRP
log_var PKG $PKG
log_var VER $VER

docker run \
       -it \
       -v $VOL:$CONT_DIR:rw \
       -w $CONT_DIR \
       -e ART=$ART \
       -e FILE=$FILE \
       -e GRP=$GRP \
       -e PKG=$PKG \
       -e VER=$VER \
       --label=$LABEL \
       --name=$CONT \
       $IMG

log_unload pGO
