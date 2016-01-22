#!/bin/bash

number=0
while [ $number -lt 10 ]; do
    echo "Number = $number"
    number=$((number + 1))
done

number=0
until [ $number -ge 10 ]; do
    echo "Number = $number"
    number=$((number + 1))
done

number=0
for i in $@; do
    number=$((number + 1))
    echo "argument $number is $i"
done
