import Foundation

public func isPrime(_ number: Int) -> Bool {
    //We have 2 special cases, when the number is 1 or 2. 1 is special because a prime has to be divisible by 1 and itself. In this case, its only factor is 1 which isn't a distinct factor when compared to itself.
    //2 is a prime number because by definition, it has only 2 factors. Itself and 1 hence satisfying the requirements of being a prime
    if(number == 1) {
        return false
    } else if(number == 2) {
        return true
    }
    //Here, we can avoid checking all even numbers as they all have a factor of 2. This is why it was important to exclude the number 2 as it will be flagged as not being a prime number when it actually is a prime by definition
    else if (number % 2 == 0) {
        return false
    } else {
        //Here, we set an upper bound as the square root of the input so we dont check any numbers greater than its square root
        let bound = Int(sqrt(Double(number)))
        //This is a for loop starting from 3, going up by 2 and ending at the upper bound we set
        for index in stride(from: 3, through: bound, by: 2) {
            //In each iteration, we divide our input by the iteration number from the for loop
            let result = Double(number)/Double(index)
            //Here we check if the number is a whole number. The way to do this is to check if the number is equal to the floor of itself
            //The floor of a function is the largest integer number less than or equal to the number. E.g. floor(2.4) = 2, floor(2) = 2
            //Hence if the floor of a number is equal to itself, the number must be an integer
            if(Double(result) == floor(Double(result))) {
                return false
            }
        }
        return true
    }
}

public func printPrimesBetween(_ from: Int, _ to: Int) {
    for index in (from..<to+1) {
        if(isPrime(index)) {
            print(index)
        }
    }
}

public func sumOfPrimesBetween(_ from: Int, _ to: Int) -> Int{
    var result = 0
    for index in (from..<to+1) {
        if(isPrime(index)) {
            result = result + index
        }
    }
    return result
}
