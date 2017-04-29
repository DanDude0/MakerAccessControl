#!/bin/bash
cd /root/MakerAccessControl/server/AccessServer

make clean
qmake
make

service AccessServer stop
cp AccessServer /opt/AccessControl/
cp AccessServer.conf /opt/AccessControl/
service AccessServer start
