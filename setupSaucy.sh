#!/bin/bash

set -x

docker build -t tutum/ubuntu-saucy -f Dockerfile .
