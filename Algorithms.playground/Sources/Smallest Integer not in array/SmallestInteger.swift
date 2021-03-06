import Foundation

public func smallestIntegerNotInArray(_ A : [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    var result = 1
    var found = false
    let sorted = quicksort(A)
    let lowerBound = nonNegativeIndex(array: sorted)
    let lastIndex = A.count - 1
    if ((sorted[lastIndex] < 1) || (sorted[lowerBound] > 1)) {
        return 1
    } else {
        for integer in lowerBound..<(lastIndex) {
            if((sorted[integer] + 1) < sorted[integer + 1]) {
                found = true
                result = sorted[integer] + 1
                break
            }
        }
        if (found == true) {
        return result
        } else {
            return sorted[lastIndex] + 1
        }
    }
}

func nonNegativeIndex(array: [Int]) -> Int {
    var result = 0
    for number in 0..<array.count {
        if(array[number] > 0) {
            result = number
            break
        }
    }
    return result
}
