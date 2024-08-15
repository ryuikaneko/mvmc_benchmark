#!/bin/bash

awk '{print $0}' zvo_aft_ls_out_*.dat | sort -g -k 1

awk '{print $0}' zvo_aft_ls_out_*.dat | sort -g -k 1  | wc -l

awk '{print $0}' zvo_aft_ls_out_*.dat | sort -g -k 1 |  awk '{for(i=1;i<=NF;i++) {sum[i] += $i; sumsq[i] += ($i)^2}} END {for (i=1;i<=NF;i++) { printf "%f %f \n", sum[i]/NR, sqrt((sumsq[i]-sum[i]^2/NR)/NR)/sqrt(NR-1)} }'
