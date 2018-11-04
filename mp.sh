#!/bin/bash

cd /var/lib/jenkins/workspace/log_rotation/rmp/
cp log.rmp.$Date.tar.gz /var/lib/jenkins/workspace/KLJ/.
cd /var/lib/jenkins/workspace/KLJ/
tar -xvf log.rmp.$Date.tar.gz
rm -rf log.rmp.$Date.tar.gz
cd opt/apigee/var/log/edge-message-processor/logs/
mv system.log access.log /var/lib/jenkins/workspace/KLJ/.
cd /var/lib/jenkins/workspace/KLJ/
mv system.log MP.$Date.system.log
mv access.log MP.$Date.access.log
cd /var/lib/jenkins/workspace/KLJ/.
rm -rf opt

