//
//  wordsContainingXYZ.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation

var wordsWithXYZ = [String]()

func wordsContainingXYZ(searchCharOne: String, searchCharTwo: String, searchCharThree: String) {
        
    for word in allWords where
    word.contains(searchCharOne) &&
    word.contains(searchCharTwo) &&
    word.contains(searchCharThree)
    {
        wordsWithXYZ.append(word)
    }
    print(wordsWithXYZ)
}


