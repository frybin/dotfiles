#!/bin/bash
printf 'script started' | systemd-cat -t check-battery #write to log when script is called
BATTINFO=`acpi -b`
if [[ `echo $BATTINFO | grep Discharging` && `echo $BATTINFO | cut -f 5 -d " "` < 00:30:00 ]] ; then
        printf 'condition is true' | systemd-cat -t check-battery #write to log if condition is true
	twmnc -c "$BATTINFO" -t "Battery Power"

fi
