#!/usr/bin/python3
year = input("Enter a year value : ")
while len(year) > 4 or len(year) < 4:
    print("Year should be 4 digit Number...!")
    year = input("Enter a year value : ")

def isLeap(year):
    if year % 4 == 0 and year % 100 != 0:
        return True
    if year % 400 == 0:
        return True
    return False

if isLeap(int(year)):
    print(year,"is a leap year.")
else:
    print(year,"is not a leap year.")


