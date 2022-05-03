//
//  smallestWordWithAllVowels.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func shortestWordContainingVowels(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String) {
    var smallestWord = [String]()
    for word in allWords where word.contains(searchCharOne) && word.contains(searchCharTwo) && word.contains(searchCharThree) && word.contains(searchCharFour) && word.contains(searchCharFive) {
        smallestWord.append(word)
    }
    print(smallestWord.min(by: {$0.count < $1.count}))
    
}
