#!/bin/bash

while true; do
  thisTime=$(date +%N) #+%s.%N
  printf "u_1,%.3f\n" $thisTime
done

