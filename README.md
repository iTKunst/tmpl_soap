# tmpl_soap

Project template for building java clients based on wsdl

## Check or Modify Environment variables for project

#### View Global Values
1. Open the **gENV.sh** or the **gENV.cmd** file located in the <proj_dir>/global/env folder.
2. Go to the GEOSERVER section to view global values.  These should never be changed
```
# SOAP

export SOAP_CONT=$SYS_CONT$SOAP_TAG
export SOAP_CONT_HOME_DIR=$OPT_DIR$APP_DIR
export SOAP_HOST_DIR=$DOT$SYS_DIR$SOAP_DIR
export SOAP_IMG=$SYS_IMG$SOAP_TAG
export SOAP_PORT_INT=80
export SOAP_VOL=$SYS_VOL$SOAP_TAG

export SOAP_CONT_DIR=$SOAP_CONT_HOME_DIR
export SOAP_CONT_DATA_DIR=$SOAP_CONT_HOME_DIR$TRGT_DIR
export SOAP_VOL_DIR=$SOAP_CONT_HOME_DIR$TRGT_DIR
```

#### View/Set System Values
1. Open the **sENV_MOD.sh** or the **sENV_MOD.cmd** file located in the <sys_proj_dir>/env folder.
2. Go to the GEOSERVER section to view default values.
3. Modify values if required.
4. Check in system changes.
```
# GEOSERVER
export GEO_DB_NAME=
export GEO_PASSWORD=GEO
export GEO_PORT_EXT=8081
export GEO_USER=pjldooley@gmail.com

```

5. Open the sENV_HOST.sh or the sENV_HOST.cmd file located in the <sys_proj_dir>/env folder.
```
# FREEIPA
export FREE_HOST=spectre
```
### Update the project with the changed settings
> Run **pUPDATE.sh** or **pUPDATE.cmd**

### Stop and delete the container and delete the image
> Run **pKILL.sh** or **pKILL.cmd**

### Build image
> Run **pBUILD.sh** or **pBUILD.cmd**

### Create and run container
> Run **pGO.sh** or **pGO.cmd** 
