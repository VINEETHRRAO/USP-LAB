#!/bin/sh
echo "Enter a number n"
read n
sum=0
for ((i=2;i<=$n;i=i+2))
do
sum=`expr $sum + $i`
done
echo "Sum of even numbers till $n is $sum"

