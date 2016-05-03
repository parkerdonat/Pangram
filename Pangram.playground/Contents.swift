//: Playground - noun: a place where people can play

///////////// PANGRAM CHALLENGE //////////////////////

/*
 Roy wanted to increase his typing speed for programming contests. So, his friend advised him to type the sentence "The quick brown fox jumps over the lazy dog" repeatedly, because it is a pangram. (Pangrams are sentences constructed by using every letter of the alphabet at least once.)

After typing the sentence several times, Roy became bored with it. So he started to look for other pangrams.
    
Given a sentence, tell Roy if it is a pangram or not.
 */

func isPangram(phrase: String) -> Bool {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let alphabetSet = Set(alphabet.characters)
    let phraseSet = Set(phrase.lowercaseString.characters)
    let resultSet = alphabetSet.subtract(phraseSet)
    
    return resultSet.count == 0 ? true : false
}

isPangram("We promptly judged antique ivory buckles for the next prize")
isPangram("We judged antique ivory buckles for the next prize")