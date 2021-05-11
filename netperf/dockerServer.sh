#!/bin/sh

sudo docker build -t netserver .

sudo docker run --network="host" -d netserver
