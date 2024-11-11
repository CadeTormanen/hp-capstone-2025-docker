#!/bin/bash
source docker/.env
timeout=240
time_el=0
echo -n "Waiting for backend ... "

while true; do
	http_result=$(curl -s -o /dev/null -w "%{http_code}" "${IP_BACKEND}")
	if [[ "$http_result" == "200" ]]; then
		echo "ready!"
		break
	fi
	if [[ "$timeout" == "$time_el" ]]; then
		echo "failed! (time out)"
		break
	fi
	((time_el+=1))
	sleep 1
done
