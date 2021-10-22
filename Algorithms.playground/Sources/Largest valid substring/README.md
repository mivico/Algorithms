#  Largest valid substring

Goal: Given a string, return the length of the largest valid substring.

In this situation, we have 2 requirements for the substring. The substring must contain an uppercase letter and it must not contain any numbers. We need to create checking functions for these two requirements.

```swift
public func isNumberInString(_ string: String) -> Bool {
    if(string.contains("0") || string.contains("1") || string.contains("2") || string.contains("3") || string.contains("4") || string.contains("5") || string.contains("6") || string.contains("7") || string.contains("8") || string.contains("9")) {
        return true
    } else {
        return false
    }
}
```

The above code block is self explanatory. It checks to see if the string contains a number and returns a boolean. 

```swift
public func doesStringHaveCapitalLetter(_ string: String) -> Bool {
    if(string.contains("A") || string.contains("B") || string.contains("C") || string.contains("D") || string.contains("E") || string.contains("F") || string.contains("G") || string.contains("H") || string.contains("I") || string.contains("J") || string.contains("K") || string.contains("L") || string.contains("M") || string.contains("N") || string.contains("O") || string.contains("P") || string.contains("Q") || string.contains("R") || string.contains("S") || string.contains("T") || string.contains("U") || string.contains("V") || string.contains("W") || string.contains("X") || string.contains("Y") || string.contains("Z")) {
        return true
    } else {
        return false
    }
}
```

This code checks to see if a capital letter is present in the string and returns a bool.

```swift
public func isStringValid(_ string: String) -> Bool {
    if(!isNumberInString(string) && doesStringHaveCapitalLetter(string)) {
        return true
    } else {
        return false
    }
}
```

This is the compound function we will be using to check if the string is valid or not. This would be where you add you custom requirements.

Now, we need to go through the string in an ordered manner, reducing it into smaller substrings to check. To do this, we will start with the first letter then slowly extend the substring until it covers the entire string. From there, we will move our starting index up and check the resulting substring. We will do this until we have checked every possible substring that can be derived fom the string.

```swift
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
```
This will return the length of the largest valid substring. This code could be tweaked to return the largest possible substring rather than the length if required.
