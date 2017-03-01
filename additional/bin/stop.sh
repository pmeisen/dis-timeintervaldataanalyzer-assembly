#!/bin/sh

JAVA_OPTS="-server -Xms64M -Xmx256M -XX:+DisableExplicitGC"

cd "${0%/*}"
cd ../

java ${JAVA_OPTS} -cp "lib/*" net.meisen.general.server.control.ServerController localhost 22666 SHUTDOWN $@