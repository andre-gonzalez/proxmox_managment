#!/bin/sh
set -e

status=$(qm status 103 | grep -Eo 'running|stopped')

case $status in
	"stopped")
		echo "VM Already Stopped"
		exit 0
		;;
	"running")
		echo "Stopping VM"
		qm shutdown 103
		;;
esac

echo "VM stopped"
exit 0
