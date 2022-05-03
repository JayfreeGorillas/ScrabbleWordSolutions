//
//  wordsWithB&X.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func wordsWithBorX(searchCharOne: String, searchCharTwo: String) {
    var wordsWithNoBorX = [String]()
    for word in allWords where word.contains(searchCharOne) && word.contains(searchCharTwo) && word.count < 5 {
        wordsWithNoBorX.append(word)
    }
    print(wordsWithNoBorX)
}
