//
//  wordsWithNoVowelsIncludingY.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation

var wordsWithNoVowels: [String] = []
func wordsWithNoVowels(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String, searchCharSix: String) {
    
    for word in allWords where
    !word.contains(searchCharOne) &&
    !word.contains(searchCharTwo) &&
    !word.contains(searchCharThree) &&
    !word.contains(searchCharFour) &&
    !word.contains(searchCharFive) &&
    !word.contains(searchCharSix) {
        wordsWithNoVowels.append(word)
    }
    print(wordsWithNoVowels.dropLast())
    
}
