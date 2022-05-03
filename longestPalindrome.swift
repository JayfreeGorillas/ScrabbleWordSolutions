//
//  longestPalindrome.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


func findLongestPalindrome() {
    var palindromeWords = [String]()
    for word in allWords {
        if word == String(word.reversed()) {
            palindromeWords.append(word)
        }
    }
    print(palindromeWords.max(by: {$1.count > $0.count }))
}
