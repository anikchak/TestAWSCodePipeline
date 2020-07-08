#!/bin/bash

# kill any running java instance
echo Killing any other java process
pid = ps -a | grep java | awk '{print $1}'
kill -9 $pid
echo Step completed

#start application
nohup java -jar test-app.jar > /dev/null 2>&1&