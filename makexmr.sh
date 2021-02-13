#!/bin/sh

#mac osx

Run from build!! folder
#from build...

# -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl  (or some local folder...)
# May need this for Catalina support!!


cmake -DHWLOC_ENABLE=OFF -DXMR-STAK_COMPILE=generic -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF -DMICROHTTPD_ENABLE=OFF -DOpenSSL_ENABLE=OFF -DCMAKE_BUILD_TYPE=Release ..
make




#sudo apt install nvidia-cuda-toolkit --fix-missing
#sudo apt-get install libmicrohttpd-dev
#sudo apt-get install hwloc
#sudo apt-get install libhwloc-dev # and perhaps hwloc as well...

#AMD Lib
#wget -q -O - http://repo.radeon.com/rocm/apt/debian/rocm.gpg.key | sudo apt-key add -
#echo 'deb [arch=amd64] http://repo.radeon.com/rocm/apt/debian/ xenial main' | sudo tee /etc/apt/sources.list.d/rocm.list
#  e85a40d1a43453fe37d63aa6899bc96e08f2817a rocm.gpg.key
# sudo apt-get update
# sudo apt install libnuma-dev
# sudo apt install rocm-dkms
# groups
# sudo usermod -a -G video $LOGNAME
#/opt/rocm/bin/rocminfo
#/opt/rocm/opencl/bin/x86_64/clinfo
#echo 'export PATH=$PATH:/opt/rocm/bin:/opt/rocm/profiler/bin:/opt/rocm/opencl/bin/x86_64' |
#  sudo tee -a /etc/profile.d/rocm.sh
# or...
#sudo apt update
#sudo apt install rocm-dev
#echo 'SUBSYSTEM=="kfd", KERNEL=="kfd", TAG+="uaccess", GROUP="video"'
#sudo tee /etc/udev/rules.d/70-kfd.rules
# https://developer.nvidia.com/cuda-downloads

#Windows follow...: https://docs.google.com/document/d/1JoplwVyVQDo4ru8prsOD_kbMxeRvaACBiww3sSj1klA/edit
#Windows 10 path
#C:\Users\JP\Desktop\FEDG_BUILD\hwloc\hwloc-win64-build-2.2.0\hwloc-win64-build-2.2.0\lib
# AMD App SDK https://www.softpedia.com/dyn-postdownload.php/4d69fa4aab5c40adc2cb2b3e80b02c66/5e83ac53/28b16/3/2
# https://developer.nvidia.com/cuda-downloads
# https://github.com/fireice-uk/xmr-stak-dep
#
# set CMAKE_PREFIX_PATH=C:\Users\JP\Desktop\FEDG_BUILD\xmr-stak-dep\hwloc;C:\Users\JP\Desktop\FEDG_BUILD\xmr-stak-dep\libmicrohttpd;C:\Users\JP\Desktop\FEDG_BUILD\xmr-stak-dep\openssl

#mkdir ~/fedoragold-xmr-stak/build
#cd build

#make clean

#CUDA does not complile on my DEBIAN for some reason - return to that later...
# windows10 --> cmake -DXMR-STAK_COMPILE=generic -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF -G "Visual Studio 15 2017 Win64" -T v141,host=x64 -DCMAKE_BUILD_TYPE=Release ..
#  ...then...  cmake --build . --config Release 
cmake .. -DXMR-STAK_COMPILE=generic -DCUDA_ENABLE=OFF
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

