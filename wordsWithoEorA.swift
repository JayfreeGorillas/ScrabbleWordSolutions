//
//  wordsWithoEorA.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func wordsWithNoEorA(searchCharOne: String, searchCharTwo: String) {
    var wordsWithNoEorA = [String]()
    for word in allWords where !word.contains(searchCharOne) && !word.contains(searchCharTwo) && word.count >= 15 {
        wordsWithNoEorA.append(word)
    }
    print(wordsWithNoEorA)
}
