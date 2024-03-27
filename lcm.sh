#!/bin/bash

echo "Enter the first number:"
read x

echo "Enter the second number:"
read y

r=` expr $x \* $y`
while [ $y -ne 0 ]
do
p=` expr $x % $y`
x=$y
y=$p
done
LCM=` expr $r / $x`
echo "LCM =" $LCM
