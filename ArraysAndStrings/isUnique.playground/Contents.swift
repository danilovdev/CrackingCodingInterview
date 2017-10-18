//: Playground - noun: a place where people can play

import UIKit

let str1 = "This is not unique string"
let str2 = "Special"

func isUnique(str: String) -> Bool {
    if (str.count > 256) {
        return false
    }
    var dict = [Character: Bool]()
    for i in 0..<str.count {
        let index = str.index(str.startIndex, offsetBy: i)
        let char = str[index]
        if (dict[char] != nil) {
            return false
        }
        dict[char] = true
    }
    
    return true
}

print("Is string \"\(str1)\" unique: \(isUnique(str: str1))")

print("Is string \"\(str2)\" unique: \(isUnique(str: str2))")

func isUnique2(_ str: String) -> Bool {
    if (str.count > 256) {
        return false
    }
    var dict = [Character: Bool]()
    for ch in str.characters {
        if (dict[ch] != nil) {
            return false
        }
        dict[ch] = true
    }
    return true
}

print("Is string \"\(str1)\" unique: \(isUnique(str: str1))")

print("Is string \"\(str2)\" unique: \(isUnique(str: str2))")

// Time complexity O(n) where n is length of the string

// Space complexity O(1)
