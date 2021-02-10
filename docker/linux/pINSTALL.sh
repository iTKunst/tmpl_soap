#!/bin/bash
# shellcheck disable=SC2086
# echo pINSTALL.sh [LOAD]

source settings.sh
source LOG.sh


log_enter pINSTALL


source pENV.sh

mvn install:install-file \
   -Dfile=target \
   -DgroupId=$SOAP_GRP \
   -DartifactId=$SOAP_ART \
   -Dversion=$SOAP_VER \
   -Dpackaging=jar \
   -DgeneratePom=true

log_exit pINSTALL
