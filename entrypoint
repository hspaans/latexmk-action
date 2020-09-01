#!/bin/bash
set -e

command_string="latexmk"

case "$ACTION_FORMAT" in
	pdf)
		command_string="$command_string -pdf"
	;;
	*)
		echo "Invalid input for action argument: format (must be pdf)"
		exit 1
	;;
esac

if [ -n "$ACTION_FILENAME" ]
then
	command_string="$command_string $ACTION_FILENAME"
fi

echo "Command: $command_string"
eval "$command_string"
