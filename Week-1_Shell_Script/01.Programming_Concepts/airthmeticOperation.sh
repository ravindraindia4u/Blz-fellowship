#!/bin/bash
read -p "Enter first Number: " a
read  -p "Enter Second Number: " b
read -p "Enter Third Number: " c

d=$(( a + b * c ))
e=$(( a % b + c ))
f=$(( c + a / c ))
g=$(( a * b + c ))

echo "a + b * c = "$d
echo "a % b + c = "$e
echo "c + a / c = "$f
echo "a * b + c = "$g

