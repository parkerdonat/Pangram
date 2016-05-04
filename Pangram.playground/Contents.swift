//: Playground - noun: a place where people can play

///////////// PANGRAM CHALLENGE //////////////////////

/*
 Roy wanted to increase his typing speed for programming contests. So, his friend advised him to type the sentence "The quick brown fox jumps over the lazy dog" repeatedly, because it is a pangram. (Pangrams are sentences constructed by using every letter of the alphabet at least once.)

After typing the sentence several times, Roy became bored with it. So he started to look for other pangrams.
    
Given a sentence, tell Roy if it is a pangram or not.
 */
import Foundation

func isPangram(phrase: String) -> Bool {
    let modifiedString = phrase.stringByReplacingOccurrencesOfString(" ", withString: "")
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let alphabetSet = Set(alphabet.characters)
    let phraseSet = Set(modifiedString.lowercaseString.characters)
    
    let resultSet = alphabetSet.subtract(phraseSet)
    let resultArray = Array(resultSet)
    let sortedArray = resultArray.sort {String($0) < String($1)}
    
    if sortedArray.count == 0 {
        print("pangram")
        return true
    } else {
        print("not pangram")
        return false
    }
    
    //return sortedArray.count == 0 ? true : false
}
var pangram1 = ["We promptly judged antique ivory buckles for the next prize"]
    
var pangram2 = ["We promptly judged antique ivory buckles for the prize"]

isPangram(pangram1[0])
isPangram(pangram2[0])




/// Another way
func isAPangram(str: String) -> Bool {
    let (char, alph) = (Set(str.characters), "abcdefghijklmnopqrstuvwxyz".characters)
    return !alph.contains {!char.contains($0)}
}

