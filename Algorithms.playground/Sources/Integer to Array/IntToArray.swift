import Foundation

public func intToArray(_ input: Int) -> [Int] {
    var result:[Int] = []
    var copy = input
    let digits = numberOfDigits(input)
    var previous = 0
    for index in 0..<digits {
        let divFactor = Int(toThePower(number: 10, power: digits - index - 1))
        copy = copy - previous
        let divided = Int(copy/divFactor)
        result.append(copy/divFactor)
        previous = divided * divFactor
    }
    if(result[0] < 0) {
        for index in 1..<result.count {
            result[index] = result[index] * (-1)
        }
    }
    return result
}

public func arrayToInt(_ array: [Int]) -> Int {
    var result = 0
    if(array[0] > 0) {
        for index in 0..<array.count {
        let multFactor = toThePower(number: 10, power: array.count - index - 1)
            result = result + array[index] * Int(multFactor)
        }
    } else {
        for index in 0..<array.count {
        let multFactor = toThePower(number: 10, power: array.count - index - 1)
            if(index == 0) {
            result = result + array[index] * Int(multFactor)
            } else {
                result = result - array[index] * Int(multFactor)
            }
        }
    }
    return result
}
