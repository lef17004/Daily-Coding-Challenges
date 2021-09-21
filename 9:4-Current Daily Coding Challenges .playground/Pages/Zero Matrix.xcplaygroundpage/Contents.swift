/*****************************************************
 Zero Matrix
 10/14/2021
 
 Description: Write an algorithm such that if an element in an M x N matrix is 0, its entire row and column are set to 0.
 
 Thoughts:
   1, 2 -> 1, 0
   5, 0    0, 0
 
   This seems fairly straight forward to do in linear time. I can't think of a better way to do it at the moment,
   so I'm going to do it that way for now.
 
   Start looping through the matrix. When a 0 is found, replace all elements in the same row and column to 0.
   Does it keep going after that? If so, do all of those 0 now count? Probably not. If they did, then all the numbers would turn to 0.
   Just do all the zeros that were originally there.
 
 
   rowsToZero = []
   colsToZero = []
 
   for row in matrix
      for col in row
         if matrix[row][col] = 0
            rowsTo.Zero.add(row)
            colsToZero.add(col)
 
   for val in rowsToZero
      for index in matrix[val]
         matrix[val][index] = 0
 
   for col in colsToZero
      for row in matrix
         matrix[row][col] = 0
 
 *****************************************************/
import Foundation

func zeroMatrix(matrix: inout [[Int]]) {
   
   var rowsToZero: [Int] = []
   var colsToZero: [Int] = []
   
   for (rowIndex, rowArray) in matrix.enumerated() {
      for (colIndex, _) in rowArray.enumerated() {
         if matrix[rowIndex][colIndex] == 0 {
            rowsToZero.append(rowIndex)
            colsToZero.append(colIndex)
         }
      }
   }
   
   for rowIndex in rowsToZero {
      for (colIndex, _) in matrix[rowIndex].enumerated() {
         matrix[rowIndex][colIndex] = 0
      }
   }
   
   for colIndex in colsToZero {
      for (rowIndex, _) in matrix.enumerated() {
         matrix[rowIndex][colIndex] = 0
      }
   }
}

var matrix = [[1 ,2, 3, 0],
             [5, 6, 0, 8],
             [0, 1, 1, 1]]

zeroMatrix(matrix: &matrix)
print(matrix)
