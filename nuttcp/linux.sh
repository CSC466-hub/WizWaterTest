#!/bin/sh

now=`date`
echo "client to server (native), started at $now"
echo "--------------------------------------------------------------------------------" >> results/linux.log
echo "client to server (native), started at $now" >> results/linux.log
sudo perf stat -a -o results/linux.log --append nuttcp -t 192.168.1.1 >> results/linux.log
echo "" >> results/linux.log
echo -n "Experiment completed at "; date
