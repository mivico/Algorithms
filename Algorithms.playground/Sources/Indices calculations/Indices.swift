import Foundation

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
