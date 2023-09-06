#!/bin/bash

names="./nameFile.txt"

for name in $(cat $names)
do 
	echo $name
done
