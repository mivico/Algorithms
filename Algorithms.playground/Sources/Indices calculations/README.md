#  Integer to array conversion

Goal: Calculate any number to the power of an integer.
For performance, we will be using recursion.

Firstly, we define a trivial method of calculating powers. This will be the repeated multiplication of the base:

```swift
public func trivialPower(_ base: Float, _ power: Int) -> Float {
    var result = base
    if(power == 0) {
        result = 1
    } else if(power > 0){
    for _ in 1..<(power) {
        result = Float(result * base)
    }
    } else {
        for _ in 1..<(0 - power) {
            result = Float(result * base)
        }
        result = 1/result
    }
    return result
}
```

This algorithm is easy to understand but is slow for large data sets. This is due to the fact that to calculate a number raised to the power N, there will have to be N floating point calculations. This is fine for small datasets but with a large dataset, this algorithm will be very slow. To create a faster algorithm, we use recursion. To do this, we must define a case for when the power is 0. This will allow us to terminate the recursion and return an actual value. As we know, anything to the power of 0 is 1 so we can hardcode that solution in:


```swift
    public func toThePower(number: Float, power: Int) -> Float {
    if(power 0= 1) {
        //Power equals 0
            return 1
    }
}
```

We must also account for the cases where the power is a positive integer and when it is negative. Within these cases, we also need a case which terminates the recursion and returns a value:

```swift
public func toThePower(number: Float, power: Int) -> Float {
    if(power >= 1) {
        //End recursion
        guard power > 1 else {return number}
        
    } else if(power <= -1){
            //End recursion
            guard power < -1 else {return 1/number}
            
    } else {
        //Power equals 0
            return 1
    }
}
```

Now we have 2 further cases. When the power is even or odd. If the power is even, we are left with a multiplication of half of the power but if its odd, we separate the power into an even number + 1 by multiplying the original number by the power - 1. This defines our recursion and completes the function:

```swift
public func toThePower(number: Float, power: Int) -> Float {
    if(power >= 1) {
        //End recursion
        guard power > 1 else {return number}
        if(power%2 == 0) {
            let value = toThePower(number: number, power: power/2)
            return value * value
        } else {
            return toThePower(number: number, power: (power - 1)) * number
        }
    } else if(power <= -1){
            //End recursion
            guard power < -1 else {return 1/number}
            
            if(power%(-2) == 0) {
            let value = toThePower(number: number, power: power/2)
            return value * value
            } else {
                return toThePower(number: number, power: (power - 1)) * number
            }
    } else {
        //Power equals 0
            return 1
    }
}
```
Take note of the use of the 'value' constant. This allows us to calculate the recursion once then perform a simple multiplication of it rather than performing two recursions to arrive at the same answer extending the amount of time needed.

This recursive algorithm results in a runtime of O(logN) where N is the power. This is much faster than the trivial method of calculating powers.
