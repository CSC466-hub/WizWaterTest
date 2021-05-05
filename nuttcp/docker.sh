#!/bin/sh

docker build -t nuttcp .


now=`date`
echo "client to server (Docker NAT), started at $now"
echo "--------------------------------------------------------------------------------" >> results/docker.log
echo "client to server (Docker NAT), started at $now" >> results/docker.log
sudo perf stat -a -o results/docker.log --append docker run nuttcp -t 192.168.1.1 >> results/docker.log
echo "" >> results/docker.log

# receive server->client (this matters because we only measure the client)
now=`date`
echo "server to client (Docker NAT), started at $now"
echo "--------------------------------------------------------------------------------" >> results/docker.log
echo "server to client (Docker NAT), started at $now" >> results/docker.log
sudo docker run -p 5000:5000 -p 5001:5001 nuttcp -P5000 -p5001-r 192.168.1.1 >> results/docker.log
echo "" >> results/docker.log

wait
echo -n "Experiment completed at "; date
