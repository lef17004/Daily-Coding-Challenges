# Write function that reverses a list, preferably in place.

list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

for left_index in range(len(list) // 2):
    right_index = len(list) - 1 - left_index
    list[left_index], list[right_index] = list[right_index], list[left_index]


print(list)
