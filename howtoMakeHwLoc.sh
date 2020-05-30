curl -O https://download.open-mpi.org/release/hwloc/v2.1/hwloc-2.1.0.tar.bz2
tar xjf hwloc-2.1.0.tar.bz2
cd hwloc-2.1.0
./configure --disable-shared --enable-static --disable-io --disable-libxml2
make -j$(sysctl -n hw.logicalcpu)
cd ../build
make clean
cmake .. -DXMR-STAK_COMPILE=generic -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF -DMICROHTTPD_ENABLE=OFF -DCMAKE_BUILD_TYPE=Release -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DOpenSSL_ENABLE=OFF -DHWLOC_INCLUDE_DIR=../hwloc-2.1.0/include -DHWLOC_LIBRARY=../hwloc-2.1.0/hwloc/.libs/libhwloc.a
make -j$(sysctl -n hw.logicalcpu)

