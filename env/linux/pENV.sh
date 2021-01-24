#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh


export PROJ_LABEL=$SYS
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SOAP_CONT
export PROJ_CONT_DATA_DIR=$SOAP_DATA_DIR
export PROJ_CONT_DIR=$SOAP_CONT_DIR
export PROJ_CONT_HOME_DIR=$SOAP_CONT_HOME_DIR
export PROJ_HOST=$SOAP_HOST
export PROJ_HOST_DIR=$SOAP_HOST_DIR
export PROJ_IMG=$SOAP_IMG
export PROJ_PASSWORD=$SOAP_PASSWORD
export PROJ_PORT_EXT=$SOAP_PORT_EXT
export PROJ_PORT_INT=$SOAP_PORT_INT
export PROJ_USER=$SOAP_USER
export PROJ_VOL=$SOAP_VOL
export PROJ_VOL_DIR=$SOAP_VOL_DIR

export PROJ_GRP=SOAP_GRP
export PROJ_ART=SOAP_ART
export PROJ_VER=SOAP_VER

log_exit pENV