To run the tests:
enter the command sudo bash doit.sh
This will run the native and docker versions 20 times for each CPU configuration.

If you wish to only run a specific test, you can directly run the scripts.
Either script must be followed by a number, 1 or 2.

Choose option 1 for one sockets (--physcpubind=0-7,16-23 --localalloc)
Choose option 2 for two sockets (--physcpubind=0-31 --interleave=0,1)


#Compare our run with the original. Ours generates same accuracy much quicker. Our Machine must be stronger?



 ̶S̶e̶t̶u̶p̶ ̶s̶c̶r̶i̶p̶t̶s̶ ̶t̶o̶ ̶r̶u̶n̶ ̶t̶h̶e̶ ̶b̶e̶n̶c̶h̶m̶a̶r̶k̶i̶n̶g̶ ̶c̶o̶n̶t̶a̶i̶n̶e̶r̶s̶ ̶a̶t̶ ̶l̶e̶a̶s̶t̶ ̶2̶0̶ ̶t̶i̶m̶e̶s̶ ̶a̶n̶d̶ ̶c̶o̶l̶l̶e̶c̶t̶ ̶p̶e̶r̶f̶o̶r̶m̶a̶n̶c̶e̶ ̶m̶e̶t̶r̶i̶c̶s̶

using an ubuntu 13.10 container with fixed sources.list has issue:
libgomp.so.1: version `GOMP_4.0' not found (required by /stream.exe)
this is because ubuntu 13 doesn't have acces to gomp4, which was included in gcc 4.9+
ppa:ubuntu-toolchain-r/test doesn't have anything beyond gcc 4.8 for ubuntu 13

change this to ubuntu 18.04 same as base image
