#!/usr/bin/env bash

# set -x

# The target of codes: use the array to hold the data 
#                      and use for loop to output the content

# first step: declare the array variable

declare -a languages

# second step: initialize the array

languages=('bash' 'python' 'go') # use the whitespace as the separator

# calculate the length of array variable
echo ">>>The number of elements: "${#languages[@]}

# for loop

for item in ${languages[@]};do
    echo ">>>The language is " + $item
done
