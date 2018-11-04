#!/bin/bash

cd /var/lib/jenkins/workspace/log_rotation/rmp/nginx/
cp log.nginx.$Date.tar.gz /var/lib/jenkins/workspace/KLJ/.
cd /var/lib/jenkins/workspace/KLJ/
tar -xvf log.nginx.$Date.tar.gz
rm -rf log.nginx.$Date.tar.gz
cd var/lib/jenkins/workspace/log_rotation/rmp/nginx/
mv error.log access.log /var/lib/jenkins/workspace/KLJ/.
cd /var/lib/jenkins/workspace/KLJ/
mv error.log nginx.$Date.error.log
mv access.log nginx.$Date.access.log
cd /var/lib/jenkins/workspace/KLJ/.
rm -rf var

