#!/bin/bash

echo "Enter the starting number of the interval:"
read num1

echo "Enter the ending number of the interval:"
read num2

echo "Strong numbers between $num1 and $num2 are:"

for ((num = num1; num <= num2; num++)); do
    temp=$num
    sum=0

    while [ $temp -gt 0 ]; do
        digit=$((temp % 10))
        fact=1

        for ((i = 1; i <= digit; i++)); do
            fact=$((fact * i))
        done

        sum=$((sum + fact))
        temp=$((temp / 10))
    done

    if [ $sum -eq $num ]; then
        echo $num
    fi
done

