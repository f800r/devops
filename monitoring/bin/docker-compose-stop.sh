#!/usr/bin/env bash
#
SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#
source ${SCRIPT_PATH}/docker-compose-settings.sh
#
docker-compose --file ${PBU_MONITORING_DIR}/docker-compose.yml stop