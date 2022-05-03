//
//  wordsWithFirst&LastY.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func wordsWithFirstAndLastY(searchCharOne: String) {
    var wordsWithFirstAndLastY = [String]()
    for word in allWords where word.starts(with: searchCharOne) && word.hasSuffix(searchCharOne) {
        wordsWithFirstAndLastY.append(word)
    }
    print(wordsWithFirstAndLastY)
}
