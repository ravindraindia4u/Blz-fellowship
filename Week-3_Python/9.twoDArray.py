#!/usr/bin/python3

row = int(input("Enter the size of row: "))
col = int(input("Enter the size of col: "))

element = []
print("Enter Array Elements : ")
for i in range(row):
    a = [i]
    for j in range(col):
        a.append(int(input()))
    element.append(a)

for i in range(row):
    for j in range(col):
        print(element[i][j],end=" ")
    print()
