import Foundation

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
