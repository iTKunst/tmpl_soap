#!/bin/bash
# shellcheck disable=SC2086


log_enter pENV

source sENV.sh
if [ -f "project/pENV_MOD.sh" ]; then
  source project/pENV_MOD.sh
fi



export PROJ_LABEL=$SYS_NAME
export PROJ_NET=$SYS_NET

export PROJ_CONT=$SOAP_CONT
export PROJ_CONT_DIR=$SOAP_CONT_DIR
export PROJ_CONT_MNT_DIR=$SOAP_CONT_MNT_DIR
export PROJ_HOST_DIR=$SOAP_HOST_DIR
export PROJ_HOST_MNT_DIR=$SOAP_HOST_MNT_DIR
export PROJ_IMG=$SOAP_IMG
export PROJ_PORT_INT=$SOAP_PORT_INT

export PROJ_CONT_CERT_DIR=$SOAP_CONT_CERT_DIR

log_exit pENV