#!/bin/bash
FILES=$(ls $1)
echo $FILES $1
for f in $FILES
do
   echo "Processing $f file..."
   wc -m $f
done
