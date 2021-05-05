#!/bin/sh

sudo docker build -t netserver .

sudo service netperf stop

netperf -l 60 -H 192.168.1.1 -t TCP_RR -- -r 100,200 >> results/docker.log
netperf -l 60 -H 192.168.1.1 -t UDP_RR -- -r 100,200 >> results/docker.log

wait
echo Experiment completed
