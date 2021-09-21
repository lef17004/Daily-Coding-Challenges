/********************************************************
 9/19/2021
 Remove Dups
 
 Description: Write code to remove duplicates from an unsorted linked list.
 How would you solve this problem if a temporary buffer was not allowed?
 
 Note: LinkedList needs to be in the file because of a bug in xCode. 
 ********************************************************/

extension LinkedList {
    public func removeDuplicates(target: T) {
        var foundFirst = false
        for node in self {
            if node.data! == target {
                if foundFirst == true {
                    erase(node: node)
                }
                else {
                    foundFirst = true
                }
            }
        }
    }
}




public class LinkedList<T: Comparable>: Sequence {
   
   private var pHead: Node<T>?
   private var pTail: Node<T>?
   private var numElements: Int
   
   public var front: Node<T>? {
      get {
         return pHead
      }
      set {
         pHead = newValue
      }
   }
   
   public var back: Node<T>? {
      get {
         return pTail
      }
      set {
         pTail = newValue
      }
   }
   
   public init() {
      pHead = nil
      pTail = nil
      numElements = 0
   }
   
   public init(rhs: LinkedList) {
      if let head = rhs.pHead {
         var newLinkedList = rhs.copyNode(source: head)
         pHead = newLinkedList.0
         pTail = newLinkedList.1
         numElements = rhs.numElements
      }
      else {
         pHead = nil
         pTail = nil
         numElements = 0
      }
   }
   
   
   deinit {
      
   }
   
   public func size() -> Int {
      return numElements
   }
   
   public func empty() -> Bool {
      return numElements == 0
   }
   
   public func clear() {
      pHead = nil
      pTail = nil
      numElements = 0
   }
   
   public func pushBack(element: T) {
      
      
      if pHead == nil {
         let newNode = Node<T>(data: element)
         pHead = newNode
         pTail = newNode
         numElements += 1
         return
      }
      
      if let tailNode = pTail {
         pTail = insertNode(value: element, node: tailNode, after: true)
         numElements += 1
      }
      
   }
   
   public func pushFront(element: T) {
      
      
      if let headNode = pHead {
         let newNode = insertNode(value: element, node: headNode, after: false)
         pHead = newNode
         numElements += 1
      }
      
      if pHead == nil {
         pHead = Node<T>(data: element)
         pTail = pHead
         numElements += 1
         return
      }
      
      
      
   }
   
   public func popBack() {
      
      if numElements == 1 {
         clear()
      }
      
      if numElements > 1 {
         numElements -= 1
         pTail = pTail?.pPrev
         pTail?.pNext = nil
      }
   }
   
   public func popFront() {
      
      if numElements == 1 {
         clear()
      }
      
      if numElements > 1 {
         numElements -= 1
         pHead = pHead?.pNext
         pHead?.pPrev = nil
      }
   }
   
   //front
   //back
   
   public func find(target: T) -> Node<T>? {
      if empty() {
         return nil
      }
      
      return findNode(headNode: pHead!, target: target)
   }
   
   public func erase(node: Node<T>) {
      if empty() {
         return
      }
      
      
      
   
      removeNode(node: node)
      
   }
   
   public func insert(node: Node<T>, element: T) {
      insertNode(value: element, node: node, after: true)
      numElements += 1
   }
   
   
   
   private func clearNode(pHead: Node<T>?) {
      var head:Node? = pHead
      while head != nil {
         let pDelete = pHead
         head = head!.pNext
         
         // Maybe this will delete it in Swift?
         pDelete?.pPrev = nil
         pDelete?.pNext = nil
         pDelete?.data = nil
      }
   }
   
   private func insertNode(value: T, node: Node<T>, after: Bool = true) -> Node<T> {
      let pNew = Node<T>(data: value)
      
      if after {
         pNew.pPrev = node
         
         if node.pNext != nil {
            pNew.pNext = node.pNext
            node.pNext?.pPrev = pNew
         }
         
         node.pNext = pNew
      }
      else {
         pNew.pNext = node
         
         if node.pPrev != nil {
            pNew.pPrev = node.pPrev
            node.pPrev?.pNext = pNew
         }
         
         node.pPrev = pNew
      }
      
      return pNew
      
   }
   
   private func copyNode(source: Node<T>) -> (Node<T>, Node<T>) {
      let pDestination = Node<T>(data: source.data!)
      var pSource: Node<T>? = source.pNext
      var pDes = pDestination
      
      while pSource != nil {
         pDes.pNext = Node<T>(data: pSource!.data!)
         pDes.pNext?.pPrev = pDes
         
         pSource = pSource!.pNext
         pDes = pDes.pNext!
      }
      return (pDestination, pDes)
   }
   
   private func findNode(headNode: Node<T>, target: T) -> Node<T>? {
      let pointer = headNode
      while pointer.pNext != nil {
         if pointer.data! == target {
            return pointer
         }
      }
      return nil
   }
   
   private func removeNode(node: Node<T>) -> Node<T>? {
      let pRemove = node
      
      if pRemove.pPrev != nil {
         pRemove.pPrev?.pNext = pRemove.pNext
      }
      if pRemove.pNext != nil {
         pRemove.pNext?.pPrev = pRemove.pPrev
      }
      
      if let returnNode = pRemove.pPrev {
         return returnNode
      }
      else {
         return pRemove.pNext
      }
   }
   
   public func makeIterator() -> Iterator {
      return Iterator(head: pHead ?? Node<T>())
   }
   
   public class Iterator: IteratorProtocol {
      private var currentNode: Node<T>?
      
      init(head: Node<T>) {
         currentNode = head
      }
      
      public func next() -> Node<T>? {
         if currentNode == nil {
            return nil
         }
         
         let returnNode = currentNode
         currentNode = currentNode?.pNext
         
         return returnNode
      }
   }
   
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
}



var list = LinkedList<Int>()
list.pushBack(element: 1)
list.pushBack(element: 1)
list.pushBack(element: 1)
list.removeDuplicates(target: 1)

for item in list {
   print(item.data!)
}
