#!/bin/bash

sudo apt-get install -y nuttcp
sudo apt-get install -y linux-tools-common
sudo apt-get install -y linux-tools-generic
sudo apt-get install -y linux-cloud-tools-generic

sudo apt-get install -y linux-tools-4.15.0-137-generic

for ((i=0;i<20;i++)); do sudo bash linux.sh; done
for ((i=0;i<20;i++)); do sudo bash docker.sh; done
