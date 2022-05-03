//
//  wordContainingUU.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 5/3/22.
//

import Foundation


let allWords = ViewController().allWords
var wordsContainigUU = [String]()

func returnWordsContainingUU(searchText: String) {
    wordsContainigUU = allWords.filter { item in
        return item.lowercased().contains(searchText.lowercased())
    }
    print(wordsContainigUU)
    print(wordsContainigUU.count)
}




