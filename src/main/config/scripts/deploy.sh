#!/bin/bash

# kill any running java instance
echo Killing any other java process
pid = ps -a | grep java | awk '{print $1}'
kill -9 $pid
echo Step completed

#start application
java -jar /home/ubuntu/installables/TestAWSCodePipeline-1.0-SNAPSHOT.jar