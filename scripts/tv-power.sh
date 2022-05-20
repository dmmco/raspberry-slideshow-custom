#!/bin/bash
TV_POWER=`echo 'pow 0.0.0.0' | cec-client -s -d 1 | grep power | awk '{ print $3 }'`

if [ $TV_POWER !=  "ON" ]; then
	echo 'on 0.0.0.0' | cec-client -s -d 1
fi

exit
