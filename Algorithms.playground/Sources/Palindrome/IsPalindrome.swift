import Foundation

public func reverseInt(_ number: Int) -> Int {
    var result = 0
    //This copy variable gives us a mutable version of the input
    var copy = number
    //We call our previous function to get the number of digits
    let digits = numberOfDigits(number)
    //This previous variable holds the previous digit. This will make sense further down the function
    var previous = 0
    //This for loop will go from 0 to the number of digits - 1
    for index in 0..<digits {
        //This divfactor gives us a power of 10 to divide the input by. Essentially, we are separating each digit one by one
        let divFactor = Int(10^(digits - index - 1))
        //We decrease our mutable copy of the input by the previous number we obtained
        copy = copy - previous
        //This divided constant gives us the first digit of the input. This will then be added to our resulting number whilst being multiplied by a power of 10 to get the correct decimal place
        let divided = Int(copy/divFactor)
        result = result + (copy/divFactor)*Int(10^index)
        //We then change the previous variable so it can be used in the next iteration of the loop
        previous = divided * divFactor
    }
    return result
}

//Simple function that checks if the reversed version of the number is the same as the original number. If it is, the number is a palindrome
public func isPalindrome(_ number: Int) -> Bool {
    return reverseInt(number) == number
}

//This function takes in two integers and prints all the palindromes between the two given integers
public func findPalindromesBetween(_ first: Int, _ second: Int) {
    for number in (first..<second+1) {
        if(isPalindrome(number)) {
            print(number)
        }
    }
}

public func isPalindrome2(_ number: Int) -> Bool {
    let array = intToArray(number)
    if (array.count == 0) {
        return true
    } else if(array.count % 2 == 0) {
        //Even number
        var result = true
        for index in (0..<(array.count/2)) {
            if (array[index] != array[array.count - 1 - index]) {
                result = false
                break
            }
        }
        return result
    } else {
        //Odd number
        var result = true
        for index in (0..<((array.count+1)/2)) {
            if (array[index] != array[array.count - 1 - index]) {
                result = false
                break
            }
        }
        return result
    }
}
