#!/bin/bash

echo "Enter the starting number of the interval:"
read num1

echo "Enter the ending number of the interval:"
read num2

echo "Prime numbers between $num1 and $num2 are:"

while [ $num1 -le $num2 ];
do
    is_prime=1
    divisor=2

    while [ $divisor -le $((num1 / 2)) ];
    do
        if [ $((num1 % divisor)) -eq 0 ];
        then
            is_prime=0
            break
        fi
        divisor=$((divisor + 1))
    done

    if [ $is_prime -eq 1 ] && [ $num1 -gt 1 ]; then
        echo $num1
    fi

    num1=$((num1 + 1))
done

