#!/bin/sh
echo "Enter number of courses"
read n
c=1
while [ $n -gt 0 ] ; do
  echo "FOR SUBJECT $c"
  c=`expr $c + 1`
  n=`expr $n - 1`
  res="PASS"
  echo "Enter cie marks out of 50"
  read cie
  echo "Enter see marks out of 100"
  read see
  if [ `expr $see % 2` -eq 0 ] ; then 
     see=`expr $see \/ 2`
  else
     see=`expr $see + 1`
     see=`expr $see \/ 2`
  fi
  final=`expr $see + $cie`
  if [ $final -ge 90 ] ; then
     echo "GRADE FOR SUBJECT $c IS S"
  elif [ $final -ge 70 ] ; then
     echo "GRADE FOR SUBJECT $c IS A"
  elif [ $final -ge 60 ] ; then
     echo "GRADE FOR SUBJECT $c IS B"
  elif [ $final -ge 50 ] ; then
     echo "GRADE FOR SUBJECT $c IS C"
  elif [ $final -ge 40 ] ; then
     echo "GRADE FOR SUBJECT $c IS D"
  else 
     echo "GRADE FOR SUBJECT $c IS F"
     res="FAIL"
  fi
  echo "$res"
  echo " "
done
       
  
  
