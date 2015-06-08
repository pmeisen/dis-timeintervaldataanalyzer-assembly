#!/bin/sh

# Filename of the java executable.
JAVA_EXEC=java

# Get the path to the java executable.
if [ -x "jre/bin/$JAVA_EXEC" ]; then
  echo "Found JRE at the current folder:"
  JAVA_DIR=jre/bin/$JAVA_EXEC
elif [ -x "jre/linux/bin/$JAVA_EXEC" ]; then
  echo "Found JRE at the current folder:"
  JAVA_DIR=jre/linux/bin/$JAVA_EXEC
elif [ -x "../jre/linux/bin/$JAVA_EXEC" ]; then
  echo "Found JRE one folder up:"
  JAVA_DIR=../jre/linux/bin/$JAVA_EXEC
elif [ -x "../../jre/linux/bin/$JAVA_EXEC" ]; then
  echo "Found JRE two folders up:"
  JAVA_DIR=../../jre/linux/bin/$JAVA_EXEC
elif [ -x "../../../jre/linux/bin/$JAVA_EXEC" ]; then
  echo "Found JRE three folders up:"
  JAVA_DIR=../../../jre/linux/bin/$JAVA_EXEC
elif [ -x "../../../../jre/linux/bin/$JAVA_EXEC" ]; then
  echo "Found JRE four folders up:"
  JAVA_DIR=../../../../jre/linux/bin/$JAVA_EXEC  
else
  echo "Using java from path:"
  JAVA_DIR=$JAVA_EXEC
fi  
  
echo $JAVA_DIR

echo $@
  
# Run command.
$JAVA_DIR -XX:MaxPermSize=32M -Xmx128M -cp "lib/*" net.meisen.general.server.control.ServerController localhost ${project.settings.control.port} SHUTDOWN $@