import bubble_sort
import merge_sort
import reverse_list
import rotate
import partition
import quick_sort

list = [6, 3, -10, 34, 78, 1, 6, 8, -9, 0]

quick_sort.quick_sort(list, 0, len(list) - 1)

print(list)