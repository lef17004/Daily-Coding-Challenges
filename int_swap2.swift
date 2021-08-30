#!/usr/bin/swift

/**********************************************************
Anagram
8/29/2021 

Swap the value of two integers without using a third value. 
This time use the XOR operator. 
***********************************************************/

func intSwap2 (int1: inout Int, int2: inout Int) {
    int1 = int1 ^ int2
    int2 = int1 ^ int2
    int1 = int1 ^ int2
}