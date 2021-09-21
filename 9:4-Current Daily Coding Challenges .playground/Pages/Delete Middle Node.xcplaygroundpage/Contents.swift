/********************************************************
 9/22/2021
 Delete Middle Node
 
 Description: Implement an algorithm to delete a node in the middle (any node that
 is not the first or last node) of a singly linked list, given access only to that node.
 
 Example:
 Input: the node c from the linked list a -> b -> c -> d -> e -> f
 Result: a -> b -> d -> e -> f
 
 ********************************************************/

public class Node<T: Comparable>: Comparable {
   
   
   public var data:T?
   public var pNext: Node?
   
   public init() {
      data = nil
      pNext = nil
   }
   
   public init(data: T) {
      self.data = data
      pNext = nil
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


func deleteMiddleNode<T>(node: Node<T>) {
   node.data = node.pNext?.data
   node.pNext = node.pNext?.pNext
}

var a = Node<Character>(data: "a")
var b = Node<Character>(data: "b")
var c = Node<Character>(data: "c")
var d = Node<Character>(data: "d")
var e = Node<Character>(data: "e")
var f = Node<Character>(data: "f")

a.pNext = b
b.pNext = c
c.pNext = d
d.pNext = e
e.pNext = f

deleteMiddleNode(node: c)

var node: Node<Character>? = a
while node != nil {
   print(node!.data)
   node = node?.pNext
}
