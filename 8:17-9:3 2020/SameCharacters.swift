
#!/usr/bin/swift

/**********************************************************
Do Strings have the Same Characters?
9/2/2021 

 Write a function that accepts two string and determines if they
 contain the same characters. Return true if the characters are the same.
 Return false if they are different. 
***********************************************************/
func haveSameChars(stringA: String, stringB: String) -> Bool {
    var mySet = Set<Character>()

    for char in stringA {
        mySet.insert(char)
    }

    var numElements = mySet.count

    for char in stringB {
        mySet.insert(char)
        if mySet.count > numElements {
            return false
        }
    }
    return true
}