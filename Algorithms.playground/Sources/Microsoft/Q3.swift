import Foundation

// you can write to stdout for debugging purposes, e.g.
// print("this is a debug message")

/*
 
 A string is a proper string if it does not contain 3 consecutive characters
 
 Given 3 integers, return the largest proper string where the first integer maps to "a", second maps to "b" and third maps to "c"
 
 func(6,1,1) should return "aabaac"
 
 */

public func q3Sol(_ A : Int, _ B : Int, _ C : Int) -> String {
    // write your code in Swift 4.2.1 (Linux)
    var arr = [TempLetters("a", A),TempLetters("b", B),TempLetters("c", C)]
    arr = quicksortInverse(arr)
    var result: [String] = []
    recurse(&arr, &result, true)

    return arrayToString(result)
}

func recurse(_ input : inout [TempLetters], _ inputArr: inout [String], _ isFirst: Bool) {
    input = quicksortInverse(input)

    guard (!(input[0].count == 0 && input[1].count == 0 && input[2].count == 0)) else {
        return
    }
    
    guard(!((input[0].count > 0 && input[1].count == 0 && input[2].count == 0) && input[0].letter == inputArr[inputArr.count-1])) else {
        return
    }

    if(isFirst) {
        if(input[0].count > 1) {
            inputArr.append(input[0].letter)
            inputArr.append(input[0].letter)
            input[0].count = input[0].count - 2
        } else if (input[0].count == 1) {
            inputArr.append(input[0].letter)
            input[0].count = input[0].count - 1
        }
    } else {
        if(inputArr[inputArr.count - 1] != input[0].letter) {
            if(input[0].count > 1) {
                inputArr.append(input[0].letter)
                inputArr.append(input[0].letter)
                input[0].count = input[0].count - 2
            } else if (input[0].count == 1) {
                inputArr.append(input[0].letter)
                input[0].count = input[0].count - 1
            }
        } else if(inputArr[inputArr.count - 1] != input[1].letter) {
            if(input[1].count > 1) {
                inputArr.append(input[1].letter)
                inputArr.append(input[1].letter)
                input[1].count = input[1].count - 2
            } else if (input[1].count == 1) {
                inputArr.append(input[1].letter)
                input[1].count = input[1].count - 1
            }
        } else if(inputArr[inputArr.count - 1] != input[2].letter) {
            if(input[2].count > 1) {
                inputArr.append(input[2].letter)
                inputArr.append(input[2].letter)
                input[2].count = input[2].count - 2
            } else if (input[2].count == 1) {
                inputArr.append(input[2].letter)
                input[2].count = input[2].count - 1
            }
        } else {
            return
        }
    }
    recurse(&input, &inputArr, false)
}

public struct TempLetters: Comparable, Equatable {
    var letter: String
    var count: Int

    public init(_ letter: String, _ count: Int) {
        self.letter = letter
        self.count = count
    }
    
    public static func == (lhs: TempLetters, rhs: TempLetters) -> Bool {
        return lhs.count == rhs.count
    }

    public static func != (lhs: TempLetters, rhs: TempLetters) -> Bool {
        return lhs.count != rhs.count
    }
    
    public static func < (lhs: TempLetters, rhs: TempLetters) -> Bool {
        return lhs.count < rhs.count
    }

    public static func > (lhs: TempLetters, rhs: TempLetters) -> Bool {
        return lhs.count > rhs.count
    }
}

func arrayToString(_ arr: [String]) -> String {
    var result = ""
    for index in 0..<arr.count {
        result = result + arr[index]
    }
    return result
}
