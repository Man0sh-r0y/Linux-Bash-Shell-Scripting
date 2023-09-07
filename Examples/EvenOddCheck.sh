#!/bin/bash

echo Enter a Number:
read num

if [ $((num%2)) -eq 0 ]
then
    echo $num is Even
else
    echo $num is Odd
fi