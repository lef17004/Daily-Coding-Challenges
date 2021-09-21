
/*****************************************************
 String Rotation
 10/15/2021
 
 Description: Assume you have a method isSubstring which checks if one word is a
 substring of another. Given two strings, s1 and s2, write code to check if s2 is a rotation
 of s1 using only one call to isSubstring(e.g., "waterbottle" is a rotation of "erbottlewat".
 
 *************************************************************/

import Foundation

func isRotation(s1: String, s2: String) -> Bool {
   let s1s1 = s1 + s1
   return isSubstring(string: s1s1, substring: s2)
}



func isSubstring(string: String, substring: String) -> Bool {
   if string.contains(substring) {
      return true
   }
   return false
}


isRotation(s1: "waterbottle", s2: "erbottlewat")
