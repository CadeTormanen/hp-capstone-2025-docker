#!/bin/bash
source docker/.env
timeout=240
time_el=0
echo -n "Waiting for frontend ... "
while true; do
	http_result=$(curl -s -o /dev/null -w "%{http_code}" "${IP_FRONTEND}")
	if [[ "$http_result" == "200" ]]; then
		echo "ready!"
		break
	fi

	if [[ "$time_el" == "$timeout" ]]; then
		echo "failure! (timed out)"
		break;
	fi

	sleep 1
	((time_el+=1))
done
