#!/bin/bash
export OMP_NUM_THREADS=1

host=${1:-localhost}
port=${2:-3100}

for i in {1..11}; do
  ./ifi -i $host -p $port -u $i -t IFI-1 -F 1 &
done
