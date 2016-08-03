#/bin/bash
#This script creates year and month directories in Ethiopia  Kazakhstan  Lesotho  Nepal  Peru directories. This is to be used by Crashplan.

YEAR=`date +%Y`
MONTH=`date +%B`
NEXT_MONTH=`date +'%B' -d 'next month'`

cd /home/PartnersInHealth
mkdir -p Ethiopia/${YEAR}/${MONTH}
mkdir -p Kazakhstan/${YEAR}/${MONTH}
mkdir -p Lesotho/${YEAR}/${MONTH}
mkdir -p Peru/${YEAR}/${MONTH}
mkdir -p Nepal/${YEAR}/${MONTH}

#mkdir -p Ethiopia/${YEAR}/${NEXT_MONTH}
#mkdir -p Kazakhstan/${YEAR}/${NEXT_MONTH}
#mkdir -p Lesotho/${YEAR}/${NEXT_MONTH}
#mkdir -p Peru/${YEAR}/${NEXT_MONTH}
#mkdir -p Nepal/${YEAR}/${NEXT_MONTH}
