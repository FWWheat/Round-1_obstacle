#!/bin/bash
export OMP_NUM_THREADS=1

host=${1:-localhost}
port=${2:-3100}

./ifi -i $host -p $port -u 1  -t IFI-1 -P 1 &
./ifi -i $host -p $port -u 11 -t IFI-1 -P 1 &
