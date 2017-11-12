#!/bin/bash
# this script collects data of user-specified index measured in a given year from all country-specific files
# usage: script.sh $inputFile $measure $year

countries=$1
Rscript CountryAvgGDP.R "$countries"