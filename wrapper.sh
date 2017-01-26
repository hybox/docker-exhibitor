#!/bin/bash

: ${EXHIBITOR_PORT:="8080"}
: ${PUBLIC_HOST:=`wget -qO- http://169.254.169.254/latest/meta-data/local-ipv4`}

java -jar exhibitor-1.0-jar-with-dependencies.jar --defaultconfig=exhibitor.properties --port $EXHIBITOR_PORT --hostname $PUBLIC_HOST $@