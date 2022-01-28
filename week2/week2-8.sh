#!/bin/bash
for ip in $(seq 2 50)
do
	sudo nmap -n -vv -sn 10.0.5.$ip >/dev/null
	if [ "$?" -eq 0 ];
	then
		echo "10.0.5.$ip" >>sweep3.txt
	fi
done	