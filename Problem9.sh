#!/bin/bash
FILES=$(ls $1)
echo $FILES $1
for f in $FILES

do

#if [ "$(du -b $f)" -le 1000 ]
if [ "$(stat -c%s "$f")" -le 1000 ]

then
   echo "Processing $f file..."
   wc -m $f
   continue
else
   echo "Skipping $f"
   continue

fi

done

