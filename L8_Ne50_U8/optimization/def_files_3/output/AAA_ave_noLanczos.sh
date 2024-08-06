#!/bin/bash

## https://stackoverflow.com/questions/18786073/compute-average-and-standard-deviation-with-awk

awk '{for(i=1;i<=NF;i++) {sum[i] += $i; sumsq[i] += ($i)^2}} END {for (i=1;i<=NF;i++) { printf "%f %f \n", sum[i]/NR, sqrt((sumsq[i]-sum[i]^2/NR)/NR)/sqrt(NR-1)} }' \
zvo_aft_out_*.dat > ave_noLanczos.dat
