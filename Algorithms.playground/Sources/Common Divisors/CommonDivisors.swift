import Foundation

public func commonDivisors(_ first: Int, _ second: Int) -> [Int] {
    //Here, i've created an empty array to store the answers
    var result: [Int] = []
    //This logic is just to find which of the inputs are the smaller one. That way, we do the least amount of looops
    var smaller = Int(0)
    if(first < second) {
        smaller = first
    } else {
        smaller = second
    }
    
    //This for loop goes from 1 to the smaller number (inclusive)
    for index in (1..<smaller+1) {
        //The % sign gives us the remainder. 3%2 means "give me the remainder when we divide 3 by 2" so 3%2 is 1. If the remainder is 0, it is a factor as it divides perfectly
        //If both numbers have a remainder of 0 when divided by the iteration we are on, that number is a factor of both
        if ((first%index == 0) && (second%index == 0)) {
            //Here i am just adding the number to the array
            result.append(index)
        }
    }
    return result
}
