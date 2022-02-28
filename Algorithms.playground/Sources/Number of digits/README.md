#  Find how many digits

Goal: Given an integer number, return the number of digits that integer contains.

This is a simple recursive algorithm achieved by continually dividing the number by 10 until a number between -10 and 10 is reached.

```swift
public func numberOfDigits(_ input: Int) -> Int {
    if(input > -10 && input < 10) {
      return 1
    } else {
      return 1 + numberOfDigits(input / 10)
    }
}
```
