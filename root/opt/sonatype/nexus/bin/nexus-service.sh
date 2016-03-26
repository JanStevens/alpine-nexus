#!/usr/bin/env bash

SERVICE_NAME=nexus
SERVICE_HOME=/opt/sonatype/nexus 
SERVICE_WORK=/opt/sonatype-work/nexus 
export PIDDIR=${SERVICE_HOME}

function log {
        echo `date` $ME - $@
}

function serviceCheck {
    log "[ Generating ${SERVICE_NAME} configuration... ]"

    ${SERVICE_HOME}/bin/nexus.properties.sh  
    ${SERVICE_HOME}/bin/wrapper.conf.sh 
}

function serviceStart {
    log "[ Starting ${SERVICE_NAME}... ]"
    serviceCheck
    ${SERVICE_HOME}/bin/nexus start
}

function serviceStop {
    log "[ Stoping ${SERVICE_NAME}... ]"
    ${SERVICE_HOME}/bin/nexus stop
}

function serviceRestart {
    log "[ Restarting ${SERVICE_NAME}... ]"
    ${SERVICE_HOME}/bin/nexus restart
}

case "$1" in
        "start")
            serviceStart
        ;;
        "stop")
            serviceStop
        ;;
        "restart")
            serviceRestart
        ;;
        *) echo "Usage: $0 restart|start|stop"
        ;;

esac
