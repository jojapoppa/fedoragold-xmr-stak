#!/bin/sh

#sudo apt install nvidia-cuda-toolkit --fix-missing
#sudo apt-get install libmicrohttpd-dev
#sudo apt-get install hwloc
#sudo apt-get install libhwloc-dev # and perhaps hwloc as well...

#mkdir ~/fedoragold-xmr-stak/build
#cd build

#make clean

cmake .. -DXMR-STAK_COMPILE=generic 
make
  # optionall add install




#export CC=emcc
#export CXX=em++
#export AR="llvm-ar" 
#export NM="llvm-nm" 
#export RANLIB="llvm-ranlib" 

# source /home/jojapoppa/emsdk/emsdk_env.sh

#cmake -D CMAKE_C_COMPILER=emcc -D CMAKE_CXX_COMPILER=em++ -D --build .

#make VERBOSE=1
#make build-release

#shows cross-compiled asm
#https://idea.popcount.org/2013-07-24-ir-is-better-than-assembly/
#llc fedoragold_daemon
#gcc fedoragold_daemon.s -no-pie -o fedoragold_daemon_e

