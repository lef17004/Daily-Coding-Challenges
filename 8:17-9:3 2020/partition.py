###############################################################################
"""
Partition
8/21/2021

Time Complexity: O(n)

Description: This function takes last element as pivot, places
   the pivot element at its correct position in sorted
    array, and places all smaller (smaller than pivot)
   to left of pivot and all greater elements to right
   of pivot.
"""
###############################################################################

from swap import swap

def partition(list, low, high):
    if high == None:
        high = len(list) - 1

    # The element that will be placed in the left position. 
    pivot = list[high]

    # Index of the smaller element 
    i = low - 1

    for j in range(low, high):
        # If the current element is smaller than the pivot. 
        if list[j] <= pivot:
            i += 1
            swap(list, i, j)

    swap(list, i + 1, high)
    return i + 1