
#!/usr/bin/swift

/**********************************************************
Duplicate Letters
9/1/2021 

 Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account. 
***********************************************************/

func hasUniqueLetter(string: String) -> Bool {
    var characterDictionary: [Character: Bool] = [:]
    for char in string {
        if let containsCharacter = characterDictionary[char] {
            return false
        }
        else {
            characterDictionary[char] = true
        }
    }
    
    return true
}

assert(hasUniqueLetter(string: "Michael") == true)
assert(hasUniqueLetter(string: "abcdefghijklmnopqrstuvwxyz") == true)
assert(hasUniqueLetter(string: "No duplicates") == true)
assert(hasUniqueLetter(string: "AaBbCc") == true)
assert(hasUniqueLetter(string: "Hello, world") == false)