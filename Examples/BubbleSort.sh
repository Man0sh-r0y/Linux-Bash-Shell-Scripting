#!/bin/bash

# Function to perform Bubble Sort
bubble_sort() {
  local arr=("$@")
  local n=${#arr[@]}

  for ((i = 0; i < n-1; i++)); do
    for ((j = 0; j < n-i-1; j++)); do
      if [ "${arr[j]}" -gt "${arr[j+1]}" ]; then
        # Swap elements if they are in the wrong order
        temp=${arr[j]}
        arr[j]=${arr[j+1]}
        arr[j+1]=$temp
      fi
    done
  done

  echo "Sorted array: ${arr[@]}"
}

# Example array
numbers=(5 2 8 1 4)

# Call the function with the example array
bubble_sort "${numbers[@]}"
