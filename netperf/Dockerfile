# in production this should probably be busybox, but let's use ubuntu for a
# fair comparison 
FROM ourtutum

MAINTAINER Wes Felter, wmf@us.ibm.com

RUN apt-get update
RUN apt-get install -y netperf

ENTRYPOINT ["netserver", "-D", "-v", "-p", "12865"]
# CMD [] works around a bug in old versions of Docker
CMD []
