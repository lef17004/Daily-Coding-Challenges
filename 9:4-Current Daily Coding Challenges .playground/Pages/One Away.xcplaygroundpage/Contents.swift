
/*****************************************************
 One Away
 10/11/2021
 
 There are three types of edits that can be performed on strings: insert a character, remove a character, or replace a character. Given two strings, write a function to check if they are one edit (or zero edits) away.
 
 EXAMPLE
 pale,  ple   -> true 
 pales, pale  -> true
 pale,  bale  -> true
 pale,  bake  -> false 
 *****************************************************/


extension String {
    
    func zeroOrOneEditAway(from s: String) -> Bool {
        let (shorter, longer) = count < s.count ? (self, s) : (s, self)
        for (i, charShorter) in shorter.indicesElements() {
            let charLonger = longer[i]
            guard charShorter != charLonger else { continue }
            var s2 = shorter
            if shorter.count == longer.count {
                s2.replaceAtIndex(i: i, c: longer[i])
                return s2 == longer
            }
            s2.insert(charLonger, at: i)
            return s2 == longer
        }
        return longer.count - shorter.count <= 1
    }
}

print(oneAway(unEdited: "pale", edited: "ple"))
