#!/bin/bash

#record a country with highest Infant_mortality among countries in OECD_Countries_Full.txt
#usage: script.sh $inputFile $index $year $outFile   #notice how we need to run this now

input=$1              #special variable that stores the the first argument from the command line
columns=$2            # $2, $3, $3 store values from 2-4 command line arguments
year=$3
out=$4

cut -f1,3,$columns $input | grep $year | sort -n -k3 | tail -n 1 > $out
