//
//  wordsContainingType.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func wordsContainingType(searchCharOne: String) {
    var wordsContainingType = 0
    var wordsThatHaveType = [String]()
    
    for word in allWords where word.contains(searchCharOne) {
        wordsContainingType += 1
        wordsThatHaveType.append(word)
    }
    print(wordsThatHaveType)
    print("this is how many words contain type: \(wordsContainingType)")
    
}
