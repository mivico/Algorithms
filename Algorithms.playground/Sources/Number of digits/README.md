#  Find how many digits

Goal: Given an integer number, return the number of digits that integer contains.

This is a simple algorithm achieved by continually dividing the number by 10 until a number less than 1 is reached. This requires separate cases based on whether the input is equal to 0 or not.

```swift
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
```
