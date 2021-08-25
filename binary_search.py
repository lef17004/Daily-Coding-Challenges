
###############################################################################
"""
Bubble Sort
8/24/2021

Time Complexity:

Description: Impliment a binary search algorithm that will work with any list. 
"""
###############################################################################

def binary_search(list, target, start, stop):
   

    while start <= stop:
        middle = (start + stop) // 2 
        if list[middle] == target:
            return middle
        elif list[middle] > target:
            stop = middle - 1
        else:
            start = middle + 1
    return -1

