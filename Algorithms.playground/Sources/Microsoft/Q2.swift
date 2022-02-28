import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

public func solution(_ N : Int) -> [Int] {
    // write your code in Swift 4.2.1 (Linux)
    var result: [Int] = []
    if isEven(N) {
        let half = N/2
        for index in 1..<half+1 {
            result.append(index)
            result.append(0 - index)
        }
    } else {
        let half = (N-1)/2
        result.append(0)
        for index in 1..<half+1 {
            result.append(index)
            result.append(0 - index)
        }
    }
    return result
}

func isEven(_ input: Int) -> Bool {
    if(input%2 == 0) {
        return true
    } else {
        return false
    }
}
