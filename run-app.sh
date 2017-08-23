#!/bin/sh

##
## RUN pm2 app based on ecosystem.json file
##
## This script ensures that the required ports are free before running the application. In addition, it removes the application from the list of pm2 and reinstalls it, so that any changes in the ecosystem.json itself can be refreshed.
##
## Usage: /Users/gon/devel/COCHA/run-app.sh [-c <0|1>] [-e </path/to/ecosystem.json>]  
##
## -c:	when 1, open directory with code (vscode)
## -e: path to ecosystem.json file
##

usage() { echo "Usage: $0 [-c <0|1>] [-e </path/to/ecosystem.json>]" 1>&2; exit 1; }

while getopts ":c:e:" o; do
    case "${o}" in
        c)
            c=${OPTARG}
            ((c == 0 || c == 1)) || usage
            ;;
        e)
            e=${OPTARG}
            ;;
        *)
            usage
            ;;
    esac
done
shift $((OPTIND-1))

if [ -z "${c}" ] || [ -z "${e}" ]; then
    usage
fi

echo "c = ${c}"
echo "e = ${e}"

if [ ! -f ${e} ]; then
    echo "File ${e} not found!"
    exit 1
fi

ECOSYSTEM=${e}
PORT=`cat ${ECOSYSTEM} |grep \"PORT\" | awk '{print $2}' | sed 's/,//g'`
LIVERELOAD=`cat ${ECOSYSTEM} |grep \"LIVERELOAD\" | awk '{print $2}' | sed 's/,//g'`
PID_APP=
PID_LIVERELOAD=
DIR=`dirname ${ECOSYSTEM}`

echo "ECOSYSTEM: " ${ECOSYSTEM} 
echo "DIS: " ${DIR} 
echo "PORT: " ${PORT} 
echo "LIVERELOAD: " ${LIVERELOAD} 

# Echoes all commands before executing.
#set -o verbose
#set -x

pm2 delete ${ECOSYSTEM};

if [ ! -z "$PORT" ];
then
    PID_APP=`lsof -i :${PORT} |tail -1 | awk '{print $2}'`
	echo "PID APP resolved for PORT ${PORT}: " ${PID_APP}
fi

if [ ! -z "$PID_APP" ];
then
	echo "KILLING PROCESS ID: " ${PID_APP}
    kill -9 ${PID_APP}
fi

if [ ! -z "$LIVERELOAD" ];
then
	PID_LIVERELOAD=`lsof -i :${LIVERELOAD} |tail -1 | awk '{print $2}'`
	echo "PID LIVERELOAD resolved for PORT ${LIVERELOAD}: " ${PID_LIVERELOAD}
fi

if [ ! -z "$PID_LIVERELOAD" ];
then
	echo "KILLING PROCESS ID: " ${PID_LIVERELOAD}
    kill -9 ${PID_LIVERELOAD}
fi

pm2 startOrReload ${ECOSYSTEM};

if [ $c == 1 ]
then
    code ${DIR};
fi