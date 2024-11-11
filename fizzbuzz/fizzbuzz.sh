#!/bin/bash

fizzbuzz(){
    max=${1}
    for iter in $(seq 1 ${max}); do 
    if [ $((${iter} % 3)) = 0 ] ; then
        if [ $((${iter} % 5)) = 0 ] ; then
            echo "FizzBuzz"
        else
            echo "Fizz"
        fi
    else
        if [ $((${iter} % 5)) = 0 ] ; then
            echo "Buzz"
        else
            echo ${iter}
        fi
    fi
    done
}

fizzbuzz ${1}