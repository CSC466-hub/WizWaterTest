#!/bin/sh

now=`date`
echo "client to server (native), started at $now"
echo "--------------------------------------------------------------------------------" >> results/linux.log
echo "client to server (native), started at $now" >> results/linux.log
sudo perf stat -a nuttcp -t 192.168.1.1 >> linux.log
echo "" >> results/linux.log
echo -n "Experiment completed at "; date
