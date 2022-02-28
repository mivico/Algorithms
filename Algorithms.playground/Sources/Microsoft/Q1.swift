import Foundation
// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ S : inout String) -> String {
    // write your code in Swift 4.2.1 (Linux)
    let arr = quicksort(Array(S))
    var largest = ""
    var found = false
    for index in 0..<arr.count {
        let current = arr[index]
        if(stringToAscii(current) > 90) {
            break
        }
        if (index < arr.count - 1) {
            for inner in (index + 1)..<arr.count {
                if(stringToAscii(current) + 32 == stringToAscii(arr[inner])) {
                    largest = String(current)
                    found = true
                    break
                }
            }
        }
    }

    if(found == true) {
        return largest
    } else {
        return "NO"
    }
}

func stringToAscii(_ ch: Character) -> Int {
    let charVal = String(ch).unicodeScalars
    let asciiVal = charVal[charVal.startIndex].value
    return Int(asciiVal)
}
