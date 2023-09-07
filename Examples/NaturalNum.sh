#!/bin/bash

echo -n "Enter the nth Term:"
read n

sum=0
series=""

for ((i=1; i<=n; i++))
do
    if [ $i -eq $n ]; then
        series+="$i"
    else
        series+="$i + "
    fi
    sum=$((sum + i))
done

echo "$series"
echo "The sum of the series is $sum"

