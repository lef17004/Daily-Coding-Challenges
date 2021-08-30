#!/usr/bin/swift

/**********************************************************
Anagram
8/28/2021 

Swap the value of two integers without using a third value. 
***********************************************************/

func intSwap (int1: inout Int, int2: inout Int) {
    int1 = int2 - int1
    int2 = int2 - int1
    int1 = int2 + int1
}