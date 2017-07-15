#!/bin/bash

mins=$((10))
reason=$1

while [ $mins -gt 0 ]; do

	/say.sh "Server is going down in $mins minutes! Reason: $reason"

	sleep 60
	: $((mins--))
done
