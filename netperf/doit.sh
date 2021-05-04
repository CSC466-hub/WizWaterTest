#!/bin/bash

sudo apt-get install netperf

for ((i=0;i<20;i++)); do ./linux.sh; done
for ((i=0;i<20;i++)); do ./docker.sh; done
