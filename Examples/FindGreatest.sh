#!/bin/bash

echo Enter a first Number:
read num1

echo Enter a second Number:
read num2

echo Enter a third Number:
read num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
    echo $num1 is Greatest
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
    echo $num2 is Greatest
else
    echo $num3 is Greatest
fi
