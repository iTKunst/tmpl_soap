#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
source pENV_MOD.sh
source pENV_MOD.sh

export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET
export PROJ_REPO=$SYS_

export PROJ_CONT=$SOAP_CONT
export PROJ_CONT_DATA_DIR=$SOAP_DATA_DIR
export PROJ_CONT_DIR=$SOAP_CONT_DIR
export PROJ_CONT_HOME_DIR=$SOAP_CONT_HOME_DIR
export PROJ_HOST_DIR=$SOAP_HOST_DIR
export PROJ_IMG=$SOAP_IMG
export PROJ_PORT_INT=$SOAP_PORT_INT
export PROJ_VOL=$SOAP_VOL
export PROJ_VOL_DIR=$SOAP_VOL_DIR

log_exit pENV