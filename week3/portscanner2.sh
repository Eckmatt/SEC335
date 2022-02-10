#!/bin/bash


# Targets every host address on a subnetwork with a certain port
PROGNAME=$(basename $0)
function error_exit
{
# Function for exit due to program error

  echo "${PROGNAME}: ${1:-'Unknown Error'}" 1>&2
  exit 1
}



network=$1
port=$2
if [ "${network}" = "" ] || [ "${port}" = "" ]
then
  error_exit "Make sure you have both a host and port target file."
fi
echo "ip  port"
for ip in $network.{1..254} 
do
  timeout .1 bash -c "echo >/dev/tcp/$ip/$port" 2>/dev/null && echo "$ip,$port"
  
  printf '%s\n' $ip $port | paste -sd ',' >> file.csv
  
done
