
#!/usr/bin/swift

/**********************************************************
How Many of X in a String
9/3/2021 

Write a function that take a character and a string as a 
parameter. Return how many times that charcter appears in the
string. 
***********************************************************/
func howMany(of char: Character, in string: String) -> Int {
        return string.filter {$0 == char}.count
}