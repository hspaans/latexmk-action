#!/bin/bash

set -e

command_string="latexmk"

if [ -f "latexmkrc" || -f ".latexmkrc" ]
then
	echo "latexmkrc file found"
else
	case "$ACTION_FORMAT" in
		pdf)
			command_string="$command_string -pdf"
		;;
		*)
			echo "Invalid input for action argument: format (must be pdf)"
			exit 1
		;;
	esac

	if [ -n "$ACTION_OPTIONS" ]
	then
		for option in $ACTION_OPTIONS
		do
			case "$option" in
				-pdf)
					continue
					;;
				-pv)
					continue
					;;
				-pvc)
					continue
					;;
				*)
					command_string="$command_string $option"
					;;
			esac
		done
	fi
fi

if [ -n "$ACTION_FILENAME" ]
then
	command_string="$command_string $ACTION_FILENAME"
fi

echo "Command: $command_string"
eval "$command_string"
