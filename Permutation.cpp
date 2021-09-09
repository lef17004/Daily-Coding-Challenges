#include <iostream>
#include <string>
using namespace std;

/***************************************************************
 Check Permutation
 10/4/2021
 
 Description: Given two strings, write a method to decide if one
 is a permutation of the other.
 ***************************************************************/

bool checkPermutation(string a, string b) 
{

    if (a.length() != b.length()) {
        return false;
    }

    sort(a.begin(), a.end());
    sort(b.begin(), b.end());
    if (a == b) 
    {
        return true;
    }
    return false;
}


int main() 
{
    cout << checkPermutation("Michael", "leahcaiM") << endl;
    return 0;
}