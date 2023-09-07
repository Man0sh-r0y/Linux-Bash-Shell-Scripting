#!/bin/bash

echo Enter the value of n:
read n

for((i=1; i<=n; i++))
do
    # first loop for spaces
    for((j=1; j<=n-i+1; j++))
    do
        echo -n " "
    done

    # second loop for printing *
    for((j=1; j<=i; j++))
    do
        echo -n "* "
    done

    # move to next line
    echo
done

# Pattern:

#     * 
#    * * 
#   * * * 
#  * * * * 
# * * * * * 
