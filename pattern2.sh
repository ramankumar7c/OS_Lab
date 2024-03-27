#!/bin/bash

echo "Enter the number of rows:"
read rows

for ((i = 1; i <= rows; i++));
do
    # Print spaces
    for ((s = rows - i; s >= 1; s--));
    do
        echo -n "  "
    done

    # Print numbers in decreasing order
    for ((j = i; j >= 1; j--));
    do
        echo -n "$j "
    done

    echo
done
