
###############################################################################
"""
Missing Number 2
8/25/2021

Description: Given an array of size N-1 such that it only contains distinct integers in the range of 1 to N. Find the missing element.

Example 1:

Input:
N = 5
A[] = {1,2,3,5}
Output: 4
Example 2:

Input:
N = 10
A[] = {1,2,3,4,5,6,7,8,10}
Output: 9
"""
###############################################################################

import functools 

def find_missing_element(array):
    start = 0
    stop = len(array) + 2

    array.append(0)

    full_range = list(range(1, stop))

    while start <= stop:
        middle = (start + stop) // 2 

        if array[middle] == full_range[middle]:
            start = middle + 1
        else:
            stop = middle - 1

        
    return middle + 1



