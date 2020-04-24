#!/usr/bin/python3
from random import random
# ------------------------------------------------------------------------------
# a. Desc ­> Given N distinct Coupon Numbers, how many random numbers do you
# need to generate distinct coupon number? This program simulates this random
# process.
# b. I/P ­> N Distinct Coupon Number
# c. Logic ­> repeatedly choose a random number and check whether it's a new one.
# d. O/P ­> total random number needed to have all distinct numbers.
# e. Functions => Write Class Static Functions to generate random number and to
# process distinct coupons
# ------------------------------------------------------------------------------

n = int(input("Enter the Number of Distinct coupon You Want: "))
randomList = []
count = 0

def pow():
    rangeOfRandom = 10
    temp = n
    while temp != 0:
        rangeOfRandom *= 10
        temp //= 10
    return rangeOfRandom

while True:
    number = int((random() * pow()) // 10)
    count += 1
    if number not in randomList:
        randomList.append(number);
    if len(randomList) == n:
        break
print("Total Number of Random number Generated: ",count)
print("Random Numbers are :",end=" ")
for i in range(0,len(randomList)):
    print(randomList[i],end=" ")
print()


