#!/bin/sh

sudo docker build -t netserver .

sudo docker run -d -p 12865:12865 netserver
