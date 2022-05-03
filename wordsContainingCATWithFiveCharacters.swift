//
//  wordsContainingCATWithFiveCharacters.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation

var wordsWithCat = [String]()

func wordsContainingCATWithFiveCharacters(searchCharOne: String) {
    for word in allWords where word.contains(searchCharOne) && word.count == 5 {
        wordsWithCat.append(word)
    }
    print(wordsWithCat)
}
