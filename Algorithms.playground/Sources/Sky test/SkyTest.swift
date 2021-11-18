import Foundation

public func aBeforeB(_ S : inout String) -> Bool {
    // write your code in Swift 4.2.1 (Linux)
    var result = true
    let array = Array(S)
    var aFound = false
    var bFound = false
    var valid = true
    for character in array {
        if (character == "a") {
            aFound = true
        }
        if(character == "b") {
            bFound = true
        }

        if((character == "a") && (bFound == true)) {
            result = false
            break
        }
    }
return result
}

public func solution(_ S :  String, _ C :  [Int]) -> Int {
    // write your code in Swift 4.2.1 (Linux)
    let array = Array(S)
    var resultArray = Array(S)
    var resultCost = Array(C)
    var total = 0
    print(array)
    for outerIndex in (0..<array.count - 1) {
        print("Outerindex is \(outerIndex)")
        for index in (0..<resultArray.count - 1) {
            print("Inner Index is \(index)")
            print(resultArray.count)
        if(resultArray[index] == resultArray[index+1]) {
            if(resultCost[index] < resultCost[index + 1]) {
                total = total + resultCost[index]
                print("Total increased by \(resultCost[index])")
                print("Removing result array")
            resultArray.remove(at: index)
            print(resultArray)
                print("Removing cost array")
            resultCost.remove(at: index)
                break
            } else {
                total = total + resultCost[index + 1]
                print("Total increased by \(resultCost[index + 1])")
                print("Removing result array")
            resultArray.remove(at: index + 1)
            print(resultArray)
                print("Removing cost array")
            resultCost.remove(at: index + 1)
                break
            }
        }
            if(index == resultArray.count - 1) {
                break
            }
        }
        if(outerIndex == resultArray.count - 2) {
            break
        }
    }
    /*
    for index in 0..<(array.count - 1) {
        if(array[index] == array[index + 1]) {
            if(C[index] < C[index + 1]) {
                total = total + C[index]
            } else {
                total = total + C[index + 1]
            }
            resultArray.remove(at: index)
            resultCost.remove(at: index)
        }
    }
    */
    return total
}
