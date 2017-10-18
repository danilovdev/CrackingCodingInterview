//: Playground - noun: a place where people can play

// 1. Sort strings and compare sorted versions of string

func isPermutation(str1: String, str2: String) -> Bool {
    if (str1.count != str2.count) {
        return false
    }
    let sortedStr1 = String(str1.characters.sorted(by: { $0 < $1 } ))
    let sortedStr2 = String(str2.characters.sorted(by: { $0 < $1 } ))
    return (sortedStr1 == sortedStr2)
}

isPermutation(str1: "dog", str2: "god")
isPermutation(str1: "Last", str2: "First")

// 2. Check identical characters count in strings

func isPermutation2(str1: String, str2: String) -> Bool {
    if (str1.count != str2.count) {
        return false
    }
    var dict = [Character: Int]()
    for ch in str1 {
        if let count = dict[ch] {
            dict[ch] = count + 1
        } else {
            dict[ch] = 1
        }
    }
    
    for ch in str2 {
        if var count = dict[ch] {
            count = count - 1
            dict[ch] = count
            if (count < 0) {
                return false
            }
        } else {
            return false
        }
    }
    return true
}

isPermutation2(str1: "dog", str2: "god")
isPermutation2(str1: "Last", str2: "First")
isPermutation2(str1: "aaa", str2: "bbb")
