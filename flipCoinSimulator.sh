#!/bin/bash -x

HEAD=0;
TAIL=1;

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


if [ $count_H -gt 21 ]
then
    echo "HEAD WIN";
    diff=$(($count_H-$count_T));
    echo "HEAD WIN by $diff ";

elif [ $count_T -gt 21 ]
then
    echo "TAIL WIN";
    diff=$(($count_T-$count_H));
    echo "TAIL WIN by $diff";

elif [ $count_H -eq 21 ] && [ $count_T -eq 21 ]
then
    echo "TIE";
    break;

fi


if [ $count_H -eq $count_T ]
then
        echo "TIE";
else
       echo "There is no TIE"
fi

