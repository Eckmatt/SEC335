#!/bin/bash
for ip in $(seq 2 50)
do 
	ping -c 1 10.0.5.$ip >/dev/null
	if [ "$?" -eq 0 ];
	then
		echo "10.0.5.$ip" >>sweep.txt
	fi
	

done