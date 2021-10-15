#  Integer to array conversion

Goal: Given an integer, return an array of its digits.

This niche algorithm could be used for number unorthodox number manipulation. For example, if you wanted to insert a digit into a number to maximise it, you will first need to split up the number into its digits then calculate where to place the new number.

To achieve this, we will be using two functions ive already defined in other files.

The idea behind this algorithm is simple, we work out the number of digits in the number, then by repeated divisions of powers of 10 and the subtraction of numbers we have already calculated, we can create an array with the digits in such a number

```swift
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
```

At the bottom, we have an additional step for when the integer is negative. Without this step, every entry in the array would be negative. This would affect our ability to reverse the function:

```swift
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
```

The inverse is similar to the original function but in this case, we are adding each number multiplied by a power of 10.
