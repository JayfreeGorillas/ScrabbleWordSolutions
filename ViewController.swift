//
//  ViewController.swift
//  ScrabbleWords
//
//  Created by Josfry Barillas on 4/19/22.
//

import UIKit

class ViewController: UIViewController {
var allWords = [String]()
var wordsContainigUU = [String]()
lazy var wordsContainingXYZ: [String] = []
var wordsWithConsecutives = [String]()
var wordsWithNoVowels = [String]()
var wordsWithVowelsInAnyOrder = [String]()
var wordsWithVowelsInAlphabeticalOrder = [String]()
var wordsWithVowelsInOrder: [String] = []

var alphabet = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let scrabbleWordsURL = Bundle.main.url(forResource: "sowpods", withExtension: "txt") {
            if let scrabbleWords = try? String(contentsOf: scrabbleWordsURL) {
                allWords = scrabbleWords.components(separatedBy: "\n")
            } else {
                allWords = ["wheresMyWordsAt"]
            }
        }
   
        //returnWordsContainingUU(searchText: "UU")
        //wordsContainingXYZ(searchCharOne: "X", searchCharTwo: "Y", searchCharThree: "Z")
        //wordsContainingQNotU(searchCharOne: "Q", seatchCharTwo: "U")
        //wordsContainingCATWithFiveCharacters(searchCharOne: "CAT")
        //wordsWithNoEorA(searchCharOne: "E", searchCharTwo: "A")
        //wordsWithBorX(searchCharOne: "B", searchCharTwo: "X")
        //wordsWithFirstAndLastY(searchCharOne: "Y")
        //wordsWithNoVowels(searchCharOne: "A", searchCharTwo: "E", searchCharThree: "I", searchCharFour: "O", searchCharFive: "U", searchCharSix: "Y")
        //wordsWithVowelsInAnyOrder(searchCharOne: "A", searchCharTwo: "E", searchCharThree: "I", searchCharFour: "O", searchCharFive: "U", searchCharSix: "Y")
        //checkVowelsInAlphabeticalOrder()
        //wordsWithConsecutiveLetters()
         findLongestPalindrome()
       // lettersQXZisLeastCommon(searchCharOne: "Q", searchCharTwo: "X", searchCharThree: "Z")
        //longestWordNotContainingVowels(searchCharOne: "A", searchCharTwo: "E", searchCharThree: "I", searchCharFour: "O", searchCharFive: "U")
        //shortestWordContainingVowels(searchCharOne: "A", searchCharTwo: "E", searchCharThree: "I", searchCharFour: "O", searchCharFive: "U")
        //wordsEndingWithIghtly(searchCharOne: "GHTLY")
        // wordsContainingType(searchCharOne: "TYPE")

      
       
       
       
        
       
        
        //lettersThatAreNotConsecutive()
        
       // wordsWithVowelsInAlphabeticalOrder()
       // findWordsWithVowelsInAlphabeticalOrder()
    }

    func returnWordsContainingUU(searchText: String) {
        wordsContainigUU = allWords.filter { item in
            return item.lowercased().contains(searchText.lowercased())
        }
        print(wordsContainigUU)
        print(wordsContainigUU.count)
    }
    

    func wordsContainingXYZ(searchCharOne: String, searchCharTwo: String, searchCharThree: String) {
        var wordsWithXYZ = [String]()
        for word in allWords where
        word.contains(searchCharOne) &&
        word.contains(searchCharTwo) &&
        word.contains(searchCharThree)
        {
            wordsWithXYZ.append(word)
        }
        print(wordsWithXYZ)
    }
    
    func wordsContainingQNotU(searchCharOne: String, seatchCharTwo: String) {
        var wordsWithQNotU = [String]()
        
        for word in allWords where word.contains(searchCharOne) && !word.contains(seatchCharTwo) {
            wordsWithQNotU.append(word)
        }
        print(wordsWithQNotU)
    }
    
    func wordsContainingCATWithFiveCharacters(searchCharOne: String) {
        var wordsWithCat = [String]()
        
        for word in allWords where word.contains(searchCharOne) && word.count == 5 {
            wordsWithCat.append(word)
        }
        print(wordsWithCat)
    }
    
    func wordsWithNoEorA(searchCharOne: String, searchCharTwo: String) {
        var wordsWithNoEorA = [String]()
        for word in allWords where !word.contains(searchCharOne) && !word.contains(searchCharTwo) && word.count >= 15 {
            wordsWithNoEorA.append(word)
        }
        print(wordsWithNoEorA)
    }
    
    func wordsWithBorX(searchCharOne: String, searchCharTwo: String) {
        var wordsWithNoBorX = [String]()
        for word in allWords where word.contains(searchCharOne) && word.contains(searchCharTwo) && word.count < 5 {
            wordsWithNoBorX.append(word)
        }
        print(wordsWithNoBorX)
    }
    
    
    func wordsWithFirstAndLastY(searchCharOne: String) {
        var wordsWithFirstAndLastY = [String]()
        for word in allWords where word.starts(with: searchCharOne) && word.hasSuffix(searchCharOne) {
            wordsWithFirstAndLastY.append(word)
        }
        print(wordsWithFirstAndLastY)
    }
    
    func wordsWithNoVowels(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String, searchCharSix: String) {
        
        for word in allWords where
        !word.contains(searchCharOne) &&
        !word.contains(searchCharTwo) &&
        !word.contains(searchCharThree) &&
        !word.contains(searchCharFour) &&
        !word.contains(searchCharFive) &&
        !word.contains(searchCharSix) {
            wordsWithNoVowels.append(word)
        }
        print(wordsWithNoVowels.dropLast())
        
    }
    func wordsWithVowelsInAnyOrder(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String) {
        
        for word in allWords where
        word.contains(searchCharOne) &&
        word.contains(searchCharTwo) &&
        word.contains(searchCharThree) &&
        word.contains(searchCharFour) &&
        word.contains(searchCharFive) {
            wordsWithVowelsInAnyOrder.append(word)
            
        }
        print(wordsWithVowelsInAnyOrder)
        

    }
    
    



    func checkForVowels(string: String) -> Bool {
        var lastVowel: Character = "0"
       // var length = string.count
        
        for letter in string {
                if letter == "A" ||
                   letter == "E" ||
                   letter == "I" ||
                   letter == "O" ||
                   letter == "U"
                    {
                    if letter <= lastVowel {
                        return false
                    } else {
                        lastVowel = letter
                     }
                }
            }
        
        lastVowel = "0"
        wordsWithVowelsInOrder.append(string)

        return true
        
    }
    func checkVowelsInAlphabeticalOrder() {
        for word in allWords where word.contains("A") && word.contains("E") && word.contains("I") && word.contains("O") && word.contains("U") {
            checkForVowels(string: word)
        }
        print(wordsWithVowelsInOrder)
    }
    
    func wordsContainingType(searchCharOne: String) {
        var wordsContainingType = 0
        var wordsThatHaveType = [String]()
        
        for word in allWords where word.contains(searchCharOne) {
            wordsContainingType += 1
            wordsThatHaveType.append(word)
        }
        print(wordsThatHaveType)
        print(wordsContainingType)
        
    }
    
    func wordsEndingWithIghtly(searchCharOne: String) {
        var wordsEndingWithIghtly = [String]()
        
        for word in allWords where word.hasSuffix(searchCharOne) {
            wordsEndingWithIghtly.append(word)
        }
        print(wordsEndingWithIghtly)
    }

    func shortestWordContainingVowels(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String) {
        var smallestWord = [String]()
        for word in allWords where word.contains(searchCharOne) && word.contains(searchCharTwo) && word.contains(searchCharThree) && word.contains(searchCharFour) && word.contains(searchCharFive) {
            smallestWord.append(word)
        }
        print(smallestWord.min(by: {$0.count < $1.count}))
        
    }
    
    func longestWordNotContainingVowels(searchCharOne: String, searchCharTwo: String, searchCharThree: String, searchCharFour: String, searchCharFive: String) {
        var longestWord = [String]()
        for word in allWords where !word.contains(searchCharOne) && !word.contains(searchCharTwo) && !word.contains(searchCharThree) && !word.contains(searchCharFour) && !word.contains(searchCharFive) {
            longestWord.append(word)
        }
        
        print(longestWord.max(by: {$1.count > $0.count}))
    }
    
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
        print("words with Q \(totalWordsWithQ)")
        print("words with X \(totalWordsWithX)")
        print("words with Z \(totalWordsWithZ)")
        
        if totalWordsWithQ < totalWordsWithX && totalWordsWithQ < totalWordsWithZ {
            print("Q is within less words with \(totalWordsWithQ)")
        } else if totalWordsWithX < totalWordsWithQ && totalWordsWithX < totalWordsWithZ {
            print("X is within less words with \(totalWordsWithX)")
        } else if totalWordsWithZ < totalWordsWithX && totalWordsWithZ < totalWordsWithQ {
            print("Z is within less words with \(totalWordsWithZ)")
        }
        
        
    }
    
    func findLongestPalindrome() {
        var palindromeWords = [String]()
        for word in allWords {
            
            if word == String(word.reversed()) {
                palindromeWords.append(word)
            }
            
        }
        print(palindromeWords.max(by: {$1.count > $0.count }))
    }
    
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
    //MARK: - ToDO last question in the wordplay ask Dan to review if possible...
//    func checkForConsecutiveLetters(string: String) {
//        var previousLetter = string.first
//
//        for letter in string.dropFirst() {
//            if letter == previousLetter {
//               // print(letter,previousLetter)
//                wordsWithConsecutives.append(string)
//            }
//            previousLetter = letter
//        }
//
//    }
//    func checkForConsecutiveLetters(string: String) -> Bool {
//        let word = [Character](string)
//
//
//
//        if word.isEmpty {
//            return true
//        }
//        var startIndex = word.startIndex
//        var endIndex = word.index(before: word.endIndex)
//
//        while startIndex < endIndex {
//            if word[startIndex] != word[startIndex + 1] {
//                startIndex = word.index(after: startIndex)
//            } else {
//
////                print("letter: \(word[startIndex]) :: \(word[startIndex + 1])")
////                print(wordsWithConsecutives)
//                wordsWithConsecutives.append(string)
////                print(wordsWithConsecutives)
//
//                break
//            }
//
////            print(wordsWithConsecutives)
////            print(string)
//          print(wordsWithConsecutives)
//
//
//        }
//
//
//
//
//       return true
//
//}

}

extension StringProtocol {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
