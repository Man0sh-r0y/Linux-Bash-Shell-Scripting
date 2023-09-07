#!/bin/bash

echo Enter the value of the n:
read n

count=1
sum=0
i=1

while [ $count -le $n ]
do 
    if [ $count -eq $n ]; then
        echo -n "$i"
    else
        echo -n "$i + "
    fi
    sum=$((sum + i))
    i=$((i + 2))
    count=$((count + 1))
done

echo 
echo "The sum of the series is $sum"