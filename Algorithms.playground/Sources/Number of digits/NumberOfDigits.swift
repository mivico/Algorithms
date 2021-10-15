import Foundation

public func numberOfDigits(_ input: Int) -> Int {
    var result = 1
    //This must be done in 3 separate cases for whether the number is positive, negative or equal to zero
    if(input < 0) {
        var checkBool = false
        var factor = 1
        var digitNumber = 1
        while checkBool == false {
            //We continually divide until we are left with a number between -1 and 0. When this stage is reached, we have the number of digits stored in the digitNumber variable
            if((input / (10 * factor)) <= -1) {
                factor = factor * 10
                digitNumber = digitNumber + 1
            } else {
                checkBool = true
            }
        }
        result = digitNumber
    } else if (input == 0) {
        //As the input is 0, we can have a baked in solution
        result = 1
    } else if (input > 0) {
        //This is essentially the same as the first case. The two cases can be combined but that will lead to more complex, less readable code
        var checkBool = false
        var factor = 1
        var digitNumber = 1
        while checkBool == false {
            if((input / (10 * factor)) >= 1) {
                factor = factor * 10
                digitNumber = digitNumber + 1
            } else {
                checkBool = true
            }
        }
        result = digitNumber
    }
    return result
}
