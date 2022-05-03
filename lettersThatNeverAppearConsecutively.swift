//
//  lettersThatNeverAppearConsecutively.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation

var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]

func lettersThatAreNotConsecutive() {
    var lettersThatNeverAppearConsecutively: [String] = []
    var lettersThatAppearConsecutive: [String:String] = [:]
    
    for letter in alphabet {
        var doubleLetterWord = false
        
        for word in allWords {
            if word.contains(letter + letter) {
                doubleLetterWord = true
                lettersThatAppearConsecutive[letter] = word
                break
            }
        }
        if !doubleLetterWord {
            lettersThatNeverAppearConsecutively.append(letter)
        }
    }
    print(lettersThatAppearConsecutive)
    print(lettersThatNeverAppearConsecutively)
  
}
