/*****************************************************
 IsUnique
 10/3/2021
 
 Description: Implement an algorithmn to determine if a string has all unique characters. What if you cannot use additional data structures?
 
 Note: Character arrays and strings can be considered the same data structure for this problem. 
 *****************************************************/
func isUnique(string: String) -> Bool {
    // Sort the characters in the string. 
    var sortedString = string.sorted()
    
    // Loop checks to see if any of the characters repeat. 
    for index in 0..<sortedString.count - 1 {
        if sortedString[index] == sortedString[index + 1] {
            return false
        }
    }
    return true
}







//  Write a function that accepts a String as its only parameter, and returns true if the string has
//  only unique letters, taking letter case into account.
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
