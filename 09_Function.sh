#!/bin/bash

# Define a function named greet
function greet() {
    # Accept the name of the person as an argument
    local name=$1
    echo "Hello, $name!"
}

# Call the greet function with an argument
greet "John"
