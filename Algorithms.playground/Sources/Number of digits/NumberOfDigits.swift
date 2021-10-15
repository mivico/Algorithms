import Foundation

public func numberOfDigits(_ input: Int) -> Int {
    var result = 1
    if(input != 0) {
        var checkBool = false
        var factor = 1
        var digitNumber = 1
        while checkBool == false {
            if(((input / (10 * factor)) <= -1) == true || ((input / (10 * factor)) >= 1) == true) {
                factor = factor * 10
                digitNumber = digitNumber + 1
            } else {
                checkBool = true
            }
        }
        result = digitNumber
    } else {
        result = 1
    }
    return result
}
