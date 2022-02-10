#!/bin/bash


# Performs nslookup on a network based off of a dns server target, and returns all records
PROGNAME=$(basename $0)
function error_exit
{
# Function for exit due to program error

  echo "${PROGNAME}: ${1:-'Unknown Error'}" 1>&2
  exit 1
}



network=$1
dns=$2
if [ "${network}" = "" ] || [ "${dns}" = "" ]
then
  error_exit "Make sure you have both a network and dns target."
fi
echo "dns resolution for ${network}"
for ip in $network.{1..254} 
do
  nslookup $ip $dns >>/dev/null
  if [ $? -eq 0 ]
  then
    nslookup $ip $dns
  fi
done
