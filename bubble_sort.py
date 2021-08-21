
###############################################################################
"""
Bubble Sort
8/17/2021

Time Complexity: O(n^2)

Description: Starting from the beginning of the list, compare every adjacent
pair, swap their position if they are not in the right order (the latter one is 
smaller than the former one). After each iteration, one less element (the last 
one) is needed to be compared until there are no more elements left to be 
compared (Wikipedia).
"""
###############################################################################
        
def bubble_sort(list):
    # Loop through every element in the array (skip the last one).
    for pass_number in range(0, len(list) - 1):
        # Go from the beggining of the list to the end.
        # Swap elements if the item before is greater than the one after it. 
        for index in range(0, len(list) - 1 - pass_number):
            if list[index] > list[index + 1]:
                  swap(index, index + 1, list)
            
                        
def swap(index1, index2, list):
    # This swaps the elements in the list at the given idexes. 
    list[index1], list[index2] = list[index2], list[index1]
    












