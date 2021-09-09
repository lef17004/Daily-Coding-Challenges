/*****************************************************
 IsUnique
 10/3/2021
 
 Description: Implement an algorithmn to determine if a string has all unique characters. What if you cannot use additional data structures?
 
 Note: Character arrays and strings can be considered the same data structure for this problem. 
 *****************************************************/
func isUnique(string: String) -> Bool {
    var sortedString = string.sorted()
    for index in 0..<sortedString.count - 1 {
        if sortedString[index] == sortedString[index + 1] {
            return false
        }
    }
    return true
}