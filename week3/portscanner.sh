#!/bin/bash

PROGNAME=$(basename $0)
function error_exit
{
# Function for exit due to program error

  echo "${PROGNAME}: ${1:-'Unknown Error'}" 1>&2
  exit 1
}



hostfile=$1
portfile=$2
if [ "${hostfile}" = "" ] || [ "${portfile}" = "" ]
then
  error_exit "Make sure you hav both a host and port target file."
fi
echo "host,port" >> file.csv
for host in $(cat $hostfile) 
do
  for port in $(cat $portfile) 
  do
    timeout .1 bash -c "echo >/dev/tcp/$host/$port" 2>/dev/null && echo "$host,$port"
    printf '%s\n' $host $port | paste -sd ',' >> file.csv
  done
done
