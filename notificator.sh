#!/bin/bash

##
## For MacOS
## Show a notification using Applescript and then "say" the same message 
##

# Process arguments
usage() { echo "Usage: $0 -message <commit> -title <title> -subtitle <subtitle>" 1>&2; exit 1; }

while test $# -gt 0; do
    case "$1" in
        -message)
            shift
            NOTIFICATION_MESSAGE=$1
            shift
            ;;
        -title)
            shift
            NOTIFICATION_TITLE=$1
            shift
            ;;
        -subtitle)
            shift
            NOTIFICATION_SUBTITLE=$1
            shift
            ;;
        *)
            usage;
            ;;
    esac
done


NOTIFICATION_COMMAND="display notification \"$NOTIFICATION_MESSAGE\" with title \"$NOTIFICATION_TITLE\" subtitle \"$NOTIFICATION_SUBTITLE\" sound name \"Purr\"";

#echo $NOTIFICATION_COMMAND;
osascript -e "$NOTIFICATION_COMMAND"; 
say $NOTIFICATION_MESSAGE
