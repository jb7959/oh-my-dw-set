#!/bin/sh

i=0
echo $1 $2 $3 $4

sleep $4

while [ $i -ne $2 ]
do
  j=0
  while [ $j -ne $1 ]
  do
      echo '['$j'/'$i']Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sagittis sollicitudin purus, a se'
      j=$((j+1))
  done

  sleep $3
  i=$((i+1))
done

echo 'done'
