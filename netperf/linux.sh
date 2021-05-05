#!/bin/sh

now=`date`
echo "Running netperf, started at $now"
echo "--------------------------------------------------------------------------------" >> results/linux.log
echo "Running nerperf TCP_RR, started at $now" >> results/linux.log
netperf -l 60 -H 192.168.1.1 -t TCP_RR -- -r 100,200 >> results/linux.log
echo "Running nerperf TCP_RR, started at $now" >> results/linux.log
netperf -l 60 -H 192.168.1.1 -t UDP_RR -- -r 100,200 >> results/linux.log
echo "" >> results/linux.log
echo -n "Experiment completed at "; date
