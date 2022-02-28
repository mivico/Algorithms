import Foundation

public func removeDuplicatesInPlace(_ array: inout [Int]) {
    var lastSorted: Int = 1
    let largestElement = array[array.count - 1]
    
    for index in 1..<array.count {
        if(array[index] != array[lastSorted - 1]) {
            swapElements(firstIndex: lastSorted, secondIndex: index, array: &array)
            lastSorted = lastSorted + 1
        }
        if(array[lastSorted - 1] == largestElement) {
            break
        }
    }
}

func swapElements<T>(firstIndex: Int, secondIndex: Int, array: inout [T]) {
    let temp = array[firstIndex]
    array[firstIndex] = array[secondIndex]
    array[secondIndex] = temp
}
