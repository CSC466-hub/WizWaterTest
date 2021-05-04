#!/bin/sh

docker build -t nuttcp .


now=`date`
echo "client to server (Docker NAT), started at $now"
echo "--------------------------------------------------------------------------------" >> results/linux.log
echo "client to server (Docker NAT), started at $now" >> results/linux.log
sudo perf stat -a docker run nuttcp -t 192.168.1.1 >> linux.log
echo "" >> results/linux.log

# receive server->client (this matters because we only measure the client)
now=`date`
echo "server to client (Docker NAT), started at $now"
echo "--------------------------------------------------------------------------------" >> results/linux.log
echo "server to client (Docker NAT), started at $now" >> results/linux.log
sudo docker run -p 5000:5000 -p 5001:5001 nuttcp -P5000 -p5001-r 192.168.1.1 >> linux.log
echo "" >> results/linux.log

wait
echo -n "Experiment completed at "; date
