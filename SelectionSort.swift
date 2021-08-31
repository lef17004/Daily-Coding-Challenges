#!/usr/bin/swift

/**********************************************************
Selection Sort
8/30/2021 

Time Complexity: O(n^2)
***********************************************************/
func selectionSort(array: inout [Int]) {
    for iPivot in stride(from: array.count - 1, to: 0, by: -1) {
        var iLargest = 0
        for iCheck in 1...iPivot {
            if array[iLargest] <= array[iCheck] {
                iLargest = iCheck
            }
        }
        if array[iLargest] > array[iPivot] {
            let temp = array[iLargest]
            array[iLargest] = array[iPivot]
            array[iPivot] = temp
        }
    }
}