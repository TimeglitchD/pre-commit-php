#!/bin/bash

# Bash PHP Unit Task Runner
#
# Exit 0 if no errors found
# Exit 1 if errors were found
#
# Requires
# - php
#
# Arguments
# - None

# Echo Colors
msg_color_magenta='\e[1;35m'
msg_color_yellow='\e[0;33m'
msg_color_none='\e[0m' # No Color
echo -en "${msg_color_yellow}Begin PestPHP Task Runner ...${msg_color_none} \n"

phpunit_command="vendor/bin/sail pest"

files_to_check="${@:2}"
args=$1

echo "Running command $phpunit_command $args"
$phpunit_command $args
if [ $? -ne 0 ]; then
    exit 1
fi
exit 0