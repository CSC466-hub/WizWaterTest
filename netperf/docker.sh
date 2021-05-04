#!/bin/sh

# server and client are reversed compared to nuttcp

sudo docker build -t netserver .

sudo service netperf stop
#ssh $SERVER docker run -d -p 12865:12865 netserver

ssh $CLIENT netperf -l 60 -H 192.168.1.1 -t TCP_RR -- -r 100,200
ssh $CLIENT netperf -l 60 -H 192.168.1.1 -t UDP_RR -- -r 100,200

# clean up
#ssh $SERVER docker stop netserver

wait
echo Experiment completed
