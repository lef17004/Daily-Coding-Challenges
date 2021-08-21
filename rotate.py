###############################################################################
"""
Rotate
8/20/2021

Time Complexity: O(n)

Description: Write a function rotate(ar[], n) that rotates arr[] of n elements. 
The first n elements will be sent to the back. 
Example: n=2 [1, 2, 3, 4, 5] -> [3, 4, 5, 1, 2]
"""
###############################################################################

# This solution requires reversing a list. I can use the reverse_list function 
# from a previous challenge. 
from reverse_list import reverse_list

def rotate(list, n):
    
    # The first step is reversing the first n elements.
    # Ex. [1, 2, 3, 4, 5] -> [2, 1, 3, 4, 5]
    reverse_list(list, stop=n)


    # The second step is reversing n to the end.
    # Ex. [2, 1, 3, 4, 5] -> [2, 1, 5, 4, 3] 
    reverse_list(list, start=n)

    
    # The third step is reversing the whole list. 
    #Ex. [2, 1, 5, 4, 3] -> [3, 4, 5, 1, 2]
    reverse_list(list)
    
    
    
    


