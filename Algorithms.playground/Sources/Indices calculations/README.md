#  Integer to array conversion

Goal: Calculate any number to the power of an integer.
For performance, we will be using recursion.

To do this, we must define a case for when the power is 0. This will allow us to terminate the recursion and return an actual value. As we know, anything to the power of 0 is 1 so we can hardcode that solution in:

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
            return toThePower(number: number, power: power/2) * toThePower(number: number, power: power/2)
        } else {
            return toThePower(number: number, power: (power - 1)) * number
        }
    } else if(power <= -1){
            //End recursion
            guard power < -1 else {return 1/number}
            
            if(power%(-2) == 0) {
                return toThePower(number: number, power: power/2) * toThePower(number: number, power: power/2)
            } else {
                return toThePower(number: number, power: (power - 1)) * number
            }
    } else {
        //Power equals 0
            return 1
    }
}
```
