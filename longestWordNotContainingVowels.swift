//
//  longestWordNotContainingVowels.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func longestWordNotContainingVowels(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String) {
    var longestWord = [String]()
    for word in allWords where !word.contains(searchCharOne) && !word.contains(searchCharTwo) && !word.contains(searchCharThree) && !word.contains(searchCharFour) && !word.contains(searchCharFive) {
        longestWord.append(word)
    }
    
    print(longestWord.max(by: {$1.count > $0.count}))
}
