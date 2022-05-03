//
//  wordsContainingQNotU.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation

var wordsWithQNotU = [String]()

func wordsContainingQNotU(searchCharOne: String, seatchCharTwo: String) {
   
    
    for word in allWords where word.contains(searchCharOne) && !word.contains(seatchCharTwo) {
        wordsWithQNotU.append(word)
    }
    print(wordsWithQNotU)
}
