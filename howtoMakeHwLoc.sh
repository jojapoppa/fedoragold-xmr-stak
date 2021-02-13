
git clone https://github.com/open-mpi/hwloc
# then make sure there is an empty hwloc_build folder

./configure --prefix=/Users/jojapoppa/Desktop/FEDG/fedoragold-xmr-stak/hwloc_build --disable-shared --enable-static --disable-opencl "CFLAGS=-mmacosx-version-min=10.14"

make -j$(sysctl -n hw.logicalcpu)
make install

cd ../build
make clean

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/Users/jojapoppa/Desktop/FEDG/fedoragold-xmr-stak/hwloc_build/lib"
export C_INCLUDE_PATH="C_INCLUDE_PATH:/Users/jojapoppa/Desktop/FEDG/fedoragold-xmr-stak/hwloc_build/include"
export CPLUS_INCLUDE_PATH="CPLUS_INCLUDE_PATH:/Users/jojapoppa/Desktop/FEDG/fedoragold-xmr-stak/hwloc_build/include"

cmake .. -DCMAKE_LINK_STATIC=OFF -DXMR-STAK_COMPILE=generic -DOpenCL_ENABLE=OFF -DCUDA_ENABLE=OFF -DMICROHTTPD_ENABLE=OFF -DCMAKE_BUILD_TYPE=Release -DOPENSSL_ROOT_DIR=/usr/local/opt/openssl -DOpenSSL_ENABLE=OFF -DCMAKE_EXE_LINKER_FLAGS="-v /Users/jojapoppa/Desktop/FEDG/fedoragold-xmr-stak/hwloc_build/lib/libhwloc.a -lxml2 -lz -liconv" -DCMAKE_CXX_FLAGS="-mmacosx-version-min=11.1" -DCMAKE_C_FLAGS="-mmacosx-version-min=10.14"

# /Users/jojapoppa/Desktop/FEDG/fedoragold-xmr-stak/build/libxml2.a -lz -liconv"

make -j$(sysctl -n hw.logicalcpu)

