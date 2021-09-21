
/*****************************************************
 Palidrome Permutation 
 10/10/2021
 
 Description: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome is a word or phase that is the same forwards as it is backwards. A permutation is a rearrangement of letters. The palindrome does not need to be limited to just dictionary words. You can ignore casing and non-letter characters. 
 
 EXAMPLE
 Input:   Tact Coa
 Output:  True (permutations: "taco cat", "acto cts", etc.)
 *****************************************************/
func isPalidromePermutation(string: String) -> Bool {
    var dict: [Character:Int] = getLetterCount(string: string)
    return hasAllEvenAmountsExceptOne(dict: dict)
}

/// Checks to see if every value in a [Chacater: Int] dictionary is even execpt for 1. 
func hasAllEvenAmountsExceptOne(dict: [Character: Int]) -> Bool {
    var oddCount = 0
    for (key, value) in dict {
        if value % 2 != 0 {
            oddCount += 1
            if oddCount > 1 {
                return false
            }
        }
    }
    return true
    
}

/// Gets a count of how many of each letter  is in a string.
/// Returns as [Character:Int] dictionary. 
func getLetterCount(string: String) -> [Character: Int] {
    var dict: [Character:Int] = [:]
    
    for char in string.lowercased() {
        if char.isLetter {
            
            if let value = dict[char] {
                dict[char] = value + 1
            }
            else {
                dict[char] = 1
            }
        }
    }
    return dict
    
}
    
print(isPalidromePermutation(string: "mon"))
        
