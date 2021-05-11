#!/bin/sh

now=`date`
echo "Running netperf, started at $now"
echo "--------------------------------------------------------------------------------" >> results/docker.log
echo "Running nerperf TCP_RR, started at $now" >> results/docker.log
netperf -l 60 -H 192.168.1.1 -t TCP_RR -- -r 100,200 >> results/docker.log
echo "Running nerperf UDP_RR, started at $now" >> results/docker.log
netperf -l 60 -H 192.168.1.1 -t UDP_RR -- -r 100,200 >> results/docker.log
echo "" >> results/docker.log
echo -n "Experiment completed at "; date
