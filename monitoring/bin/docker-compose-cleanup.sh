#!/usr/bin/env bash
#
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#
source ${SCRIPT_PATH}/docker-compose-settings.sh
#
readonly EXITED_CONTAINERS=$(docker ps -q -f status=exited)
#
if ( [ -n "${EXITED_CONTAINERS}" ] ); then
  docker rm ${EXITED_CONTAINERS}
fi
