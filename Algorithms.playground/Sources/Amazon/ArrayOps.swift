import Foundation


public func performOperations(arr: [Int], operations: [[Int]]) -> [Int] {
    var result = arr
    // Write your code here
    
    for index in (0..<operations.count) {
        let operation = operations[index]
        result = reverseArrayBetween(arr: result, startIndex: operation[0], endIndex: operation[1])
    }
    
    return result
}

public func reverseArrayBetween(arr: [Int], startIndex: Int, endIndex: Int) -> [Int] {
    var result: [Int] = []
    
    //Append start of array
    for index in (0..<startIndex) {
        result.append(arr[index])
    }
    
    print("Start is: \(result)")
    //Reverse middle
    //Find size of new array
    //let size = endIndex - startIndex + 1
    for index in (0..<(endIndex - startIndex) + 1) {
        print("Appending \(arr[endIndex - index])")
        result.append(arr[endIndex - index])
    }
    
    //Append end
    for index in (endIndex+1..<arr.count) {
        print("Appending \(arr[index])")
        result.append(arr[index])
    }
    
    
    return result
}

