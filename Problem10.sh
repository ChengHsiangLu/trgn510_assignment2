#!/bin/bash

num1=$1
num2=$2

a=$( expr $1 \* $2 )

ans=$(echo "$a + 273.15" | bc -l)
echo "$ans"
