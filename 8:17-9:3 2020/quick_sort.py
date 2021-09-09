###############################################################################
"""
Quick Sort
8/22/2021

Time Complexity: O(n*log(n))

Description: Make the Quick Sort algorithm. The version that always picks the last element as the pivot. 
"""
###############################################################################

from partition import partition

def quick_sort(list, low, high):
    if low < high:
        pi = partition(list, low, high)

        quick_sort(list, low, pi - 1)
        quick_sort(list, pi + 1, high)
    