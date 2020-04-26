#!/usr/bin/python3
import math
temp = int(input("Enter temperature value : "))
if temp > 0 and temp <= 50:
    speed = int(input("Enter wind speed value : "))
    if speed >= 3 and speed <= 120:
        wind = 35.74 + 0.6215 * temp + (0.4275 * temp - 35.75) * (math.pow(speed,0.16))
        print("Wind Chill is :",round(wind,2))
    else:
        print("Speed value should be between 3 to 120")
else:
    print("Temperatue values should be between 0 to 50.")
