#!/usr/bin/env bash
#
SCRIPT_DOCKER_COMPOSE_SETTINGS_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd )"
#
export PBU_ALERTMANAGER=192.168.1.8
export PBU_ALERTMANAGER=192.168.2.102
#
export PBU_MONITORING_DIR=${SCRIPT_DOCKER_COMPOSE_SETTINGS_DIR}
#
#set