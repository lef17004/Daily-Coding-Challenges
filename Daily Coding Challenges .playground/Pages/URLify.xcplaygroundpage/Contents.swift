
/*****************************************************
 URLify
 10/4/2021
 
 Description: Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the additional characters, and that you are given the "true" length of the string.
 
 Example:
 Input:  "Mr John Smith    "
 Output: "Mr%20John%20Smith"
 
 *****************************************************/
import Foundation
// My solution 
func URLify(url: inout String, length: Int) {
    // Moved all the loops into their own functions. 
    // Trying to have no raw loops. 
    removeTrailingSpaces(string: &url, length: length)
    removeExtraSpaces(string: &url, length: url.count)
    url = url.replacingOccurrences(of: " ", with: "%20")
    
}

func removeExtraSpaces(string: inout String, length: Int) {
    var foundSpace = false
    for count in 0..<length {
        // Start from the end.
        var index = length - 1 - count
        
        if string[index] == " " && !foundSpace {
            foundSpace = true
        }
        else if string[index] == " " && foundSpace {
            // If two spaces are next to each other remove one of 
            // them by shifting everything after the space to the left.
            shiftCharacters(string: &string, start: index, end: string.count - 1)
        }
        else if string[index] != " " {
            // If a character is found reset foundSpace to false. 
            foundSpace = false
        }
    }
}


func shiftCharacters(string: inout String, start: Int, end: Int) {
    // Shifts all the characters over to the left by 1. 
    // Removes the last character of the string. 
   for index in start...end - 1 {
      let left = string.index(string.startIndex, offsetBy: index)
      let right = string.index(string.startIndex, offsetBy: index + 1)
      string.replaceSubrange(left...left, with: string[right...right])

    }
    string.popLast()
}

func removeTrailingSpaces(string: inout String, length: Int) {
    // Remove spaces from the end of the string until a non-space
    // character is found. 
    for count in 0...length {
        let index = length - count - 1
        if string[index] == " " {
            string.popLast()
        }
        else {
            return
        }
    }
}

// Makes it easier to access the value by index for a string. 
extension StringProtocol {
    public subscript(position: Int) -> Character {
      
       self[index(startIndex, offsetBy: position)]
        
    }
}
