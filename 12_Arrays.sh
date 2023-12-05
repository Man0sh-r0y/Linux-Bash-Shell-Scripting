#!/bin/bash

fruits=("apple" "orange" "banana" "grape")

# Accessing elements
echo ${fruits[0]}  # prints "apple"
echo ${fruits[1]}  # prints "orange"

# Array length
length=${#fruits[@]}
echo "Length of the array: $length"

# Iterating through the array
echo "Iterating through the array:"
for fruit in "${fruits[@]}"
do
  echo $fruit
done

# Adding elements
fruits+=("kiwi" "mango")

# Removing elements
unset fruits[2]  # Removes the element at index 2 (banana in this case)
echo "Array after removing an element: ${fruits[@]}"

# taking user input in an array and then printing it

# Prompt the user for input
echo "Enter array input (separated by spaces):"
read -a arrayInput

# Display user input
echo "Array elements are: ${arrayInput[@]}"

