#  Smallest integer not in array

Goal: Given an array of integers, return the smallest positive integer which is not in the array

To create an efficient algorithm  to solve this problem, we firstly have to sort the array.

```swift
func quicksort<T: Comparable>(_ a: [T]) -> [T] {
  guard a.count > 1 else { return a }

  let pivot = a[a.count/2]
  let less = a.filter { $0 < pivot }
  let equal = a.filter { $0 == pivot }
  let greater = a.filter { $0 > pivot }

  return quicksort(less) + equal + quicksort(greater)
}
```
Credit to swift-algorithm-club for this function. Read their github to see the explaination of this algorithm and why it works.

Now that we have a sorted algorithm, we need to find the index of the sorted array for which all subsequent integers are positive. This makes our algorithm more efficient as we will not be checking negative numbers from this point.

```swift
func nonNegativeIndex(array: [Int]) -> Int {
    var result = 0
    for number in 0..<array.count {
        if(array[number] > 0) {
            result = number
            break
        }
    }
    return result
}
```

As required, this algorithm takes an array and returns the index of the first non-negative integer. For this function to work, it is required that the array inputed is already sorted.

From here, the algorithm is fairly simple.

```swift
public func smallestIntegerNotInArray(_ A : [Int]) -> Int {
    var result = 1
    var found = false
    let sorted = quicksort(A)
    let lowerBound = nonNegativeIndex(array: sorted)
    let lastIndex = A.count - 1
    if ((sorted[lastIndex] < 1) || (sorted[lowerBound] > 1)) {
        return 1
    } else {
        for integer in lowerBound..<(lastIndex) {
            if((sorted[integer] + 1) < sorted[integer + 1]) {
                found = true
                result = sorted[integer] + 1
                break
            }
        }
        if (found == true) {
        return result
        } else {
            return sorted[lastIndex] + 1
        }
    }
}
```
We added a boolean called 'found' to check if we have found the correct integer. If we have, we can return it. If not, we can return the smallest positive integer in the array + 1.
