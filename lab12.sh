#!/bin/sh
echo "Enter a number n"
read n

sum=0
for((i=1;i<=n;i++))
do
sum=`expr $sum + $i`
done
echo "Sum of natural numbers upto $n is $sum"

