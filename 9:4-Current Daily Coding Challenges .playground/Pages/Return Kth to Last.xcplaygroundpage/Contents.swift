import Darwin
/*******************************************************************************
 9/20/2020
Return Kth to Last
 
 Description: Implement an algorithm to find the kth to last element of a singly linked list.
 
 Note: LinkedList needs to be in the file because of a bug in xCode.
 
 
 Examples

 `1-> 2 -> 3 -> 4   k = 2
  1 -> 2                               k = 3
   nil
 Questions:
 * Is this a data structure of just the connected nodes?
 
 Solutions:
 Iterate through the list, but have two counters k spaces apart. Once the end point is found, return the other
 node pointer.
 
 Psuedocode:
 kIndex = k * -1
 kPointer = nil
 while node is not null
   if kIndex > 0
      kPointer = node
   else
      kIndex ++
 
   node = node.pNext
 
return kPointer
 
 
*******************************************************************************
*/

public class Node<T: Comparable>: Comparable {
   
   
   public var data:T?
   public var pNext: Node?
   public var pPrev: Node?
   
   public init() {
      data = nil
      pNext = nil
      pPrev = nil
   }
   
   public init(data: T) {
      self.data = data
      pNext = nil
      pPrev = nil
   }
   
   public static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
      if lhs.data == rhs.data {
         return true
      }
      return false
   }
   
   public static func < (lhs: Node<T>, rhs: Node<T>) -> Bool {
      if lhs.data == rhs.data {
         return true
      }
      else {
         return false
      }
   }
}


func returnKthToLast<T>(from linkedList: Node<T>?, k: Int) -> Node<T>? {
   var kCount = k * -1
   var kPointer: Node<T>? = nil
   var nodePointer: Node<T>? = linkedList
   
   while nodePointer != nil {
      if kCount >= 0 {
         if kPointer != nil {
            kPointer = kPointer?.pNext
         }
         else {
            kPointer = linkedList
         }
      }
      else {
         kCount += 1
      }
      
      nodePointer = nodePointer!.pNext
   }
   
   return kPointer
}


var head = Node<Int>(data: 1)
head.pNext = Node<Int>(data: 2)
head.pNext?.pNext = Node<Int>(data: 3)

print(returnKthToLast(from: head, k: 3)?.data)








