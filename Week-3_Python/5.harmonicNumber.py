#!/usr/bin/python3
n = int(input("Enter Harmonic value N : "))
while n <= 0:
    n = int(input("please enter greater than zero value : "))

sum = 0.0
i = 1
while i <= n:
    sum += 1.0/i
    i=i+1

print("Nth Harmonic value :",round(sum,2))

