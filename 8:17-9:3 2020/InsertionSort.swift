#!/usr/bin/swift

/**********************************************************
Insertion Sort
8/31/2021 

Time Complexity: O(n^2)
***********************************************************/
func insertionSort(array: inout[Int]) {
    let n = array.count
    
    for iPivot in stride(from: n-2, through: 0, by: -1) {
        
        let valuePivot = array[iPivot]
        var iInsert = binarySearch(array: &array, search: valuePivot, iBegin: iPivot + 1, iEnd: n - 1)
        iInsert -= 1
        
        var shift: Int = 0
        for iShift in iPivot..<iInsert {
            shift = iShift
            array[iShift] = array[iShift + 1]
        }
        array[shift + 1] = valuePivot
    }
}

func binarySearch(array: inout [Int], search: Int, iBegin: Int, iEnd: Int) -> Int {
    let iMiddle = (iBegin + iEnd) / 2
    if iBegin > iEnd { 
        return iBegin
    }
    if array[iMiddle] == search {
        return iMiddle
    }
    if search > array[iMiddle] {
        return binarySearch(array: &array, search: search, iBegin: iMiddle + 1, iEnd: iEnd)
    }
    else {
        return binarySearch(array: &array, search: search, iBegin: iBegin, iEnd: iMiddle - 1)
    }
}