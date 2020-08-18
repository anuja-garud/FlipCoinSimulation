#!/bin/bash -x

HEAD=0
TAIL=1

check=$((RANDOM%2))


if [ $check -eq 0 ]
then
   echo "HEAD is WINNER";
else
   echo "TAIL is WINNER";
fi

a=1;
count_H=0;
count_T=0;
while [ $a -le 55 ]
do
   check=$((RANDOM%2))

   if [ $check -eq 0 ]
   then
        count_H=$(($count_H+1))
   else

        count_T=$(($count_T+1))
   fi
   a=$((a+1));
done



echo "HEAD $count_H times WON "
echo "TAIL $count_T times WON"
