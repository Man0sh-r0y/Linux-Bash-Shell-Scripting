#!/bin/bash

echo Hey Choose an option:
echo
echo a=Show Date
echo b=List files in current directory
echo c=Show current path
echo

read choice

case $choice in 
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Not a Valid Input"
esac
