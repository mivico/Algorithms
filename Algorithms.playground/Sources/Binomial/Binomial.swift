import Foundation

//This function is called factorial. It takes an integer input and returns an integer
public func factorial(_ input: Int) -> Int {
    var result = 1
    //This checks to see if the input is greater than 0 before continuing the function. If the input is less than 0, it ends the function and returns a 0.
    if(input < 0) {
        return 0
    } else {
        //To find the factorial of a number, we begin from 1 and multiply each successive number until we reach our input
        for index in 1..<input+1 {
            result = result * index
        }
        return result
    }
}

public func nChooseK(n: Int, k: Int) -> Int{
    //This checks to see if
    if((k==0) || (k==n)) {
        return 1
    } else {
        //This is the method to find the binomial coefficient
    return factorial(n)/(factorial(k)*factorial(n - k))
    }
}

public func binomialExpansion(x: Int, y: Int, n: Int) -> Int {
    var result = 0
    
    for k in 0..<n+1 {
        result = result + nChooseK(n: n, k: k) * Int(toThePower(number: Float(x), power: n - k)) * Int(toThePower(number: Float(y), power: k))
    }
    
    return result
}
