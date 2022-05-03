//
//  QXZWhichAppearsMore.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func lettersQXZisLeastCommon(searchCharOne: String, searchCharTwo: String, searchCharThree: String) {
    var totalWordsWithQ = 0
    var totalWordsWithX = 0
    var totalWordsWithZ = 0
    
    for word in allWords {
        if word.contains(searchCharOne) {
            totalWordsWithQ += 1
        } else if word.contains(searchCharTwo) {
            totalWordsWithX += 1
        } else if word.contains(searchCharThree) {
            totalWordsWithZ += 1
        } else {

        }
      
        
    }
    
    if totalWordsWithQ < totalWordsWithX && totalWordsWithQ < totalWordsWithZ {
        print("Q is within less words with \(totalWordsWithQ)")
    } else if totalWordsWithX < totalWordsWithQ && totalWordsWithX < totalWordsWithZ {
        print("X is within less words with \(totalWordsWithX)")
    } else if totalWordsWithZ < totalWordsWithX && totalWordsWithZ < totalWordsWithQ {
        print("Z is within less words with \(totalWordsWithZ)")
    }
    
    
}
