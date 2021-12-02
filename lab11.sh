#!/bin/sh
echo "Enter base"
read a
echo "Enter exponent"
read b
ans=1
for((i=1;i<=$b;i++))
do
ans=`echo "$ans * $a" |bc`
done
echo "$a ^ $b is $ans"

