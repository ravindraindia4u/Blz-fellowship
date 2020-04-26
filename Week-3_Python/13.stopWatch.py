#!/usr/bin/python3
import time
time_start_input = input("Press Enter Key to start the time.")
start = time.time()

time_start_output = input("Press Enter Key to end the time.")
end = time.time()
total_time = end - start
inSec = total_time%60
print("Total time is : ",round(inSec,2) , "sec")

