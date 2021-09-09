###############################################################################
"""
Merge Sort
8/18/2021

Time Complexity: O(n*log(n))

Description: This alogrithm seperates the list in half and then call itself on 
those two halves. The list is then sorted as it is merged back together. 
"""
###############################################################################


def merge_sort(list):
    # Once the list is down to one element, return so the merging can begin. 
    if len(list) <= 1:
        return

    # Find the middle of the list.
    mid_point = len(list) // 2

    # Split the list into two. 
    left_list  = list[:mid_point]
    right_list = list[mid_point:]

    # Call merge_sort on the two halfs. 
    merge_sort(left_list)
    merge_sort(right_list)

    # Begin merging the left list and the right list together. 
    left_index = 0
    right_index = 0
    index = 0

    # Loop through both lists. Place whatever element has the lowest value into 
    # list. Increment an index whenever something is placed into list. 
    while left_index < len(left_list) and right_index < len(right_list):
        if left_list[left_index] < right_list[right_index]:
            list[index] = left_list[left_index]
            left_index += 1
        else:
            list[index] = right_list[right_index]
            right_index += 1
        index += 1

    # Fills in the rest of the list if any elements are left in left list. 
    while left_index < len(left_list):
        list[index] = left_list[left_index]
        left_index += 1
        index += 1

    # Fills in the rest of the list if any elements are left in right list.
    while right_index < len(right_list):
        list[index] = right_list[right_index]
        right_index += 1
        index += 1


           
    


