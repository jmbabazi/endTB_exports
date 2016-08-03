#!/bin/sh

YEAR=`date +%Y`
MONTH=`date +%B`
DATE=`date -d "yesterday" '+%A_%b-%d-%Y'`
#`date +%Y-%b-%d`
BAHMNI_HOME=/home/bahmni
EXP_HOME=/home/bahmni/endtb_export
COUNTRY=<COUNTRY>
COUNTRY_HOME=${BAHMNI_HOME}/${COUNTRY}_EXPORTS
REMOTE_HOME=/home/PartnersInHealth/<country>

mkdir -p ${COUNTRY_HOME}/${YEAR}/${MONTH}
FILE=$(cd ${EXP_HOME} && find -name endtbExports\*.zip | sort -n | tail -1 | cut -sd / -f 2-)
cd ${EXP_HOME}
zip -P <password> ${COUNTRY_HOME}/${YEAR}/${MONTH}/${COUNTRY}_EXPORTS_${DATE}.zip ${FILE}

#copy file to crashplan
FILE2SEND=$(cd ${COUNTRY_HOME}/${YEAR}/${MONTH} && find -name ${COUNTRY}_EXPORTS_\*.zip | sort -n | tail -1 | cut -sd / -f 2-)
scp ${COUNTRY_HOME}/${YEAR}/${MONTH}/${FILE2SEND} root@<>.<>.org:${REMOTE_HOME}/${YEAR}/${MONTH}
