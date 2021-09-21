
/*****************************************************
 String Compression 
 10/12/2021
 
 Description: Implement a method to perform basic string compression using the counts of repeated characters. For example, the string aabcccccaaa would become a2b1c5a3. If the "compressed" string would not become smaller than the original string, your method should return the original string. You can assume the string only has uppercase and lowercase letters (a-z). 
 *****************************************************/
func StringCompression(string: String) -> String {
    if string.count <= 2 {
        return string
    }
    
    var lastChar: Character? = nil
    var count = 0
    
    // If the language supports it, creating a string with a larger capacity would speed up the runtime. 
    var compressedString = ""
    
    for char in string {
        if lastChar == nil {
            lastChar = char 
            count += 1
        }
        else if char == lastChar {
            count += 1
        }
        else {
            // lastChar should never be nil because of check in if statement. 
            compressedString.append(lastChar!)
            compressedString.append(String(count))
            
            count = 1
            lastChar = char
        }
    }
    
    compressedString.append(lastChar!)
    compressedString.append(String(count))
    
    return compressedString
}

print(StringCompression(string: "aa"))
