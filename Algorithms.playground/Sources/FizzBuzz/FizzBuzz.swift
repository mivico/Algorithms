import Foundation

public func fizzBuzz(_ n:Int) {
    for index in 1..<n+1 {
        if(index%15 == 0) {
            print("FizzBuzz")
        } else if(index%3 == 0) {
            print("Fizz")
        } else if(index%5 == 0) {
            print("Buzz")
        } else {
            print(index)
        }
    }
}
