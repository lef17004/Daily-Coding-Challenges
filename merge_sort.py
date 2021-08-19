###############################################################################
"""
Merge Sort
8/18/2021

Time Complexity: O(n*log(n))

Description: 
"""
###############################################################################

def main():
    list = [4, -45, 34, 4, 8, 56, 100, -5, 0, 2]
    merge_sort(list)
    print(list)

def merge_sort(list):
    if len(list) <= 1:
        return

    mid_point = len(list) // 2

    left_list  = list[:mid_point]
    right_list = list[mid_point:]

    merge_sort(left_list)
    merge_sort(right_list)

    left_index = 0
    right_index = 0
    index = 0

    while left_index < len(left_list) and right_index < len(right_list):
        if left_list[left_index] < right_list[right_index]:
            list[index] = left_list[left_index]
            left_index += 1
        else:
            list[index] = right_list[right_index]
            right_index += 1
        index += 1

    while left_index < len(left_list):
        list[index] = left_list[left_index]
        left_index += 1
        index += 1

    while right_index < len(right_list):
        list[index] = right_list[right_index]
        right_index += 1
        index += 1


           
    



main()