//
//  wordsWithIghtly.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func wordsEndingWithIghtly(searchCharOne: String) {
    var wordsEndingWithIghtly = [String]()
    
    for word in allWords where word.hasSuffix(searchCharOne) {
        wordsEndingWithIghtly.append(word)
    }
    print(wordsEndingWithIghtly)
}
