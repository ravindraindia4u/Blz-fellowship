#!/usr/bin/python3

def findTriplets(arr, n):
    count = 0
    print("Triplets are : ",end=" ")
    for i in range(0,n-2):
        for j in range(i+1,n-1):
            for k in range(j+1,n):
                if(arr[i] + arr[j] + arr[k] == 0 ):
                    print(arr[i], arr[j], arr[k],",",end=" ")
                    count += 1
    return count

n = int(input("Enter the size of Array : "))
array = []
print("Enter",n,"Element into the array : ")
for i in range(0,n):
    x = int(input())
    array.append(x)

x = len(array)
count = findTriplets(array,n)
if(count == 0):
    print("Not exist")
else:
    print("\nTotal Number of distinct triplet :",count)
