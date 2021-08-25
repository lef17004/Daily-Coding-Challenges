
###############################################################################
"""
Missing Number
8/23/2021

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

def find_missing_element(list):
  total = functools.reduce(lambda a, b: a + b, list)
  n = len(list) + 1
  true_total = (n * n + n) // 2
  return true_total - total


print(find_missing_element([1,2,3,4,5,6,7,8,10]))