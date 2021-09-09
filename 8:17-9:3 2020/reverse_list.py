###############################################################################
"""
Reverse List
8/19/2021

Time Complexity: O(n)

Description: Write function that reverses a list, preferably in place.
"""
###############################################################################

def reverse_list(list, start=0, stop=None):
    """
    Start is inclusive, stop is exclusive. 
    """
    # If stop is the default, set it to the length of the list. 
    if stop is None:
        stop = len(list)

    # The index counting backwards.
    right_index = stop
    # Only need to iterate over half of the list.
    for left_index in range(start, (stop // 2) + 1):
         
        # Deincriment the right_index by 1 every time.  
        right_index -= 1

        # Swap the element in the left_index with the one in the right_index.
        list[left_index], list[right_index] = list[right_index], list[left_index]


