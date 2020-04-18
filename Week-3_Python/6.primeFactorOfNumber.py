#!/usr/bin/python3
n = int(input("Enter the number to find the prime factors : "))
temp = n
def prime_Factor(n):
    i = 2
    factors = []
    while i * i <= n:
        if n % i:
            i += 1
        else:
            n //= i
            factors.append(i)
    if n > 1:
        factors.append(n)
    print("The prime factorization of ",temp,"is : ", end =" ")
    for x in range(len(factors)):
        print(factors[x], end =" ")
    print()

prime_Factor(n)


