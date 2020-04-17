#!/usr/bin/python3
strtemp = "Hello <<UserName>>, How are you?"
username = input("Enter User Name: ")
if len(username) < 3:
	print("User Name must have 3 characters.")
else:
	print(strtemp.replace("<<UserName>>",username))


