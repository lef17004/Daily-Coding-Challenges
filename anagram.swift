#!/usr/bin/swift

/*************************************
Anagram
8/27/2021 

Check to see if two strings are Anagrams.
***************************************/

func isAnagram(string1: String, string2: String) -> Bool {
  if string1.count == string2.count {
    if string1 == String(string2.reversed()) {
      return true
    }
  }
  return false 
}

print(isAnagram(string1: "bike", string2: "cow"))