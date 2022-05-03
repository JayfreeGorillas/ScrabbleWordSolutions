//
//  wordsWithVowelsInAlphabeticalOrder.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation

var wordsWithVowelsInOrder = [String]()
func checkForVowels(string: String) -> Bool {
    var lastVowel: Character = "0"
   // var length = string.count
    
    for letter in string {
            if letter == "A" ||
               letter == "E" ||
               letter == "I" ||
               letter == "O" ||
               letter == "U"
                {
                if letter <= lastVowel {
                    return false
                } else {
                    lastVowel = letter
                 }
            }
        }
    
    lastVowel = "0"
    wordsWithVowelsInOrder.append(string)

    return true
    
}
func checkVowelsInAlphabeticalOrder() {
    for word in allWords where word.contains("A") && word.contains("E") && word.contains("I") && word.contains("O") && word.contains("U") {
        checkForVowels(string: word)
    }
    print(wordsWithVowelsInOrder)
}
