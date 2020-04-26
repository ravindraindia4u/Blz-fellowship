#!/usr/bin/python3
import math
print("Quadratic Equation: a * x^2 + b * x + c")
a = int(input("Enter the value for a: "))
b = int(input("Enter the value for b: "))
c = int(input("Enter the value for c: "))

delta = pow(b,2) - 4*a*c

if delta > 0:
    print("Two roots exist, They are :",end=" ")
    x1 = (((-b) + math.sqrt(delta))/(2*a))
    x2 = (((-b) - math.sqrt(delta))/(2*a))
    print(round(x1,2),"and",round(x2,2))
elif delta == 0:
    x = (-b) / (2*a)
    print("Only one root exist,i.e :",round(x,2))
else:
    print("No root exist if discrimenant < 0")

