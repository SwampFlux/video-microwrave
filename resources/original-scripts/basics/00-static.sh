#!/bin/bash

longNum=$(date +%s.%N)

#longNum="scale3; $longNum" | bc -l

#echo "u_1,$longNum"

printf "%.3f\n" $longNum
