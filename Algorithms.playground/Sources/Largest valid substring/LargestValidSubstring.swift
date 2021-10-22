import Foundation

public func largestValidSubstring(_ S :String) -> Int {
    var result = -1
    for mainIndex in (0..<S.count) {
        let index = S.index(S.endIndex, offsetBy: 0 - (S.count) + mainIndex)
        let mySubstring = String(S.suffix(from: index))
        for innerIndex in (0..<mySubstring.count + 1) {
            let secondIndex = mySubstring.index(mySubstring.startIndex, offsetBy: innerIndex)
            let mySubstring2 = String(mySubstring[..<secondIndex])
            if(isStringValid(mySubstring2) && mySubstring2.count > result) {
                result = mySubstring2.count
            }
        }
    }
    return result
}

public func isStringValid(_ string: String) -> Bool {
    if(!isNumberInString(string) && doesStringHaveCapitalLetter(string)) {
        return true
    } else {
        return false
    }
}

public func doesStringHaveCapitalLetter(_ string: String) -> Bool {
    if(string.contains("A") || string.contains("B") || string.contains("C") || string.contains("D") || string.contains("E") || string.contains("F") || string.contains("G") || string.contains("H") || string.contains("I") || string.contains("J") || string.contains("K") || string.contains("L") || string.contains("M") || string.contains("N") || string.contains("O") || string.contains("P") || string.contains("Q") || string.contains("R") || string.contains("S") || string.contains("T") || string.contains("U") || string.contains("V") || string.contains("W") || string.contains("X") || string.contains("Y") || string.contains("Z")) {
        return true
    } else {
        return false
    }
}

public func isNumberInString(_ string: String) -> Bool {
    if(string.contains("0") || string.contains("1") || string.contains("2") || string.contains("3") || string.contains("4") || string.contains("5") || string.contains("6") || string.contains("7") || string.contains("8") || string.contains("9")) {
        return true
    } else {
        return false
    }
}
