#!/bin/bash

sudo apt-get install nuttcp
sudo apt-get install linux-tools-common
sudo apt-get install linux-tools-generic
sudo apt-get install linux-cloud-tools-generic

sudo apt-get install linux-tools-4.15.0-137-generic

for ((i=0;i<20;i++)); do ./linux.sh; done
for ((i=0;i<20;i++)); do ./docker.sh; done
