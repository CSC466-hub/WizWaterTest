#!/bin/bash

sudo apt-get install netperf

for ((i=0;i<20;i++)); do sudo bash linux.sh; done
for ((i=0;i<20;i++)); do sudo bash docker.sh; done
# $ssh sudo docker stop $(docker ps -q --filter ancestor=netserver)
