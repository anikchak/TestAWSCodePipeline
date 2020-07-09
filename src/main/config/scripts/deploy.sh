#!/bin/bash

# kill any running java instance
echo Killing any other java process
pid = ps -a | grep java | awk '{print $1}'
kill -9 $pid
echo Step completed

# Updating system.service file
sudo cp /home/ubuntu/installables/test-app.service /etc/systemd/system/

# Update the system-daemon
sudo systemctl daemon-reload

# Stop the gofit-server service
sudo service test-app.service stop


#start application
#nohup java -jar test-app.jar > /dev/null 2> /dev/null < /dev/null &
sudo service test-app.service start