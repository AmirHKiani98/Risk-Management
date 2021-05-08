my_string = "string1 is string1. string2 is string2. but strinsg3 is not string3!!!"
if "string1" in my_string:
    print("string1 is in my_string")
if ("string1" in my_string and "string4" in my_string):
    print("string1 and string4 is in my_string")
else:
    print("string1 or string4 so not in my_string")