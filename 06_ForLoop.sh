#!/bin/bash

for num in 1 2 3 4 5
do
	echo Number is $num
done

# variety of for loop

for num in {1..10}
do
	echo Number is $num
done

# variety of for loop

for task in Read Write Blog Video Sleep Eating
do 
	echo My Task is $task
done

# variety of for loop

for((i=1; i<10; i++))
do 
	echo Number is $i
done
