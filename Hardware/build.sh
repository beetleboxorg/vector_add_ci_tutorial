#!/bin/bash -f
source /tools/Xilinx/Vitis/2020.1/settings64.sh
cd Hardware/
make -j4 incremental
retval=$?
cd ..
if [ "$retval" == 0 ]
then
     exit 0
else
     exit 1
fi