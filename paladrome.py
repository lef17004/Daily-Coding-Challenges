###############################################################################
"""
Check if string is paladrone. 
8/26/2021

Description: Check if string us a paladrone. 
"""
###############################################################################\

def is_paladrone(string):

    for char in range(0, len(string) // 2):
        if string[char] != string[len(string) - 1 - char]:
            return False
    return True


print(is_paladrone("noon"))