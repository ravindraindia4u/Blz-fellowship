#!/usr/bin/python3
import math
#------------------------------------------------------------------------------
#Write a program Distance.java that takes two integer command­line arguments x
#and y and prints the Euclidean distance from the point (x, y) to the origin (0, 0). The
#formulae to calculate distance = sqrt(x*x + y*y). Use Math.power function
#------------------------------------------------------------------------------
x = int(input("Enter the value for x : "))
y = int(input("Enter the value for y : "))
x2 = pow(x,2)
y2 = pow(y,2)
distance = math.sqrt(x2 + y2)
s = x,y
print("Euclidean Distance from",s,"to Origin(0, 0) =",round(distance,2))

