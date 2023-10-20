#!/bin/bash -f
source /tools/Xilinx/Vitis/2020.1/settings64.sh
export LIBRARY_PATH=/usr/lib/x86_64-linux-gnu #Ubuntu
cd Emulation-HW/
make -j4 clean
make -j4 incremental
retval=$?
cd ..
if [ "$retval" == 0 ]
then
     exit 0
else
     exit 1
fi