import Foundation

public func numberOfDigits(_ input: Int) -> Int {
    if(input > -10 && input < 10) {
      return 1
    } else {
      return 1 + numberOfDigits(input / 10)
    }
}
