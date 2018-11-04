#!/bin/bash

cd /var/lib/jenkins/workspace/log_rotation/rmp/
cp log.rmp.$Date.tar.gz /var/lib/jenkins/workspace/KLJ/.
cd /var/lib/jenkins/workspace/KLJ/
tar -xvf log.rmp.$Date.tar.gz
rm -rf log.rmp.$Date.tar.gz
cd opt/apigee/var/log/edge-router/logs/
mv system.log access.log /var/lib/jenkins/workspace/KLJ/.
cd /var/lib/jenkins/workspace/KLJ/
mv system.log router.$Date.system.log
mv access.log router.$Date.access.log
cd /var/lib/jenkins/workspace/KLJ/.
rm -rf opt

