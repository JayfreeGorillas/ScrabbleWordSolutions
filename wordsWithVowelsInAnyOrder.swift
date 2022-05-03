//
//  wordsWithVowelsInAnyOrder.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation
var wordsWithVowelsInAnyOrder = [String]()

func wordsWithVowelsInAnyOrder(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String) {
    
    for word in allWords where
    word.contains(searchCharOne) &&
    word.contains(searchCharTwo) &&
    word.contains(searchCharThree) &&
    word.contains(searchCharFour) &&
    word.contains(searchCharFive) {
        wordsWithVowelsInAnyOrder.append(word)
        
    }
    print(wordsWithVowelsInAnyOrder)
    

}
