#!/bin/bash

JAVA_OPTS="-server -Xms64M -Xmx1024M -XX:+DisableExplicitGC"

cd "${0%/*}"
cd ../

mkdir -p logs

java ${JAVA_OPTS} -cp "lib/*:resources" net.meisen.dissertation.server.TidaServer >> ./logs/tida-sysout.log 2>&1 &