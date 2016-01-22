#!/bin/bash
#usage - rotatelogs.sh logFileName locationToMoveNewLogfile
logfile=$1
newlocation=$2
if [ ! -f $logfile ]; then
  echo "log file not found $logfile"
  exit 1
fi
timestamp=`date +%Y%m%d`
newlogfile=$logfile.$timestamp
cp $logfile $newlogfile
#empty logfile with cat /dev/null
cat /dev/null > $logfile
gzip -f -9 $newlogfile
if [ $newlocation ]; then
  echo "moving new log file to $newlocation"
  mv $newlogfile.gz $newlocation
fi
