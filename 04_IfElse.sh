#!/bin/bash

echo Enter Your Age:
read age

if [ $age -ge 18 ]
then 
	echo You can vote!
else 
	echo Sorry you can not vote!
fi

# some rules for conditional statements:

# Types of Operator

# Equal -> -eq/==
# GreaterThanOrEqualTo -> -ge
# LessThanOrEqualTo -> -le
# NotEqual -> -ne/!=
# GreaterThan -> -gt
# LessThan -> -lt
