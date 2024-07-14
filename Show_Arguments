#!/bin/bash

#In my experience, before any functions can be defined, the arguments must be handled.
#this is inconvenient, and there is likely a better way.

ARGS=$(getopt --options 'cdi' --long "configure,default,interactive" -- "$@")

set -- "$ARGS"

configure="false"
default="false"
interactive="false"


Main() {

	for i in $ARGS; do
		case "$i" in
			-c | --configure)
				configure="true"
				echo "this will configure Auto Mode"
				shift;;
			-d | --default)
				default="true"
				echo "this will return Auto Mode to default."
				shift;;
			-i | --interactive)
				interactive="true"
				echo "this will execute secure1host in interactive mode."
				shift;;
			--)
				break;;

		esac
	done
	
	if [ "$interactive" == true ]; then
		echo "executes in interactive mode"
	fi
	
	if [ "$configure" == true ]; then
		echo "configures secure1host"
	fi
	
	if [ "$default" == true ]; then
		echo "returns secure1host to default mode"
	fi

	echo "Show_Args complete. Terminating script."
	exit

}

Main

